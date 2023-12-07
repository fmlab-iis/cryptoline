(* quine: cv.exe -v -isafety -jobs 32 -slicing -disable_safety transpose_64x64_asm.vcl
Parsing CryptoLine file:                    [OK]            0.2010 seconds
Checking well-formedness:                   [OK]            0.5213 seconds

Procedure main
--------------
Transforming to SSA form:                   [OK]            0.0511 seconds
Normalizing specification:                  [OK]            0.0505 seconds
Rewriting assignments:                      [OK]            0.0466 seconds
Verifying range specification:              [OK]            514.5733 seconds
Rewriting value-preserved casting:          [OK]            0.0179 seconds
Verifying algebraic specification:          [OK]            0.0080 seconds
Procedure verification:                     [OK]            514.7830 seconds

Summary
-------
Verification result:                        [OK]            515.5072 seconds
*)
proc main (
bit a0000,bit a0001,bit a0002,bit a0003,bit a0004,bit a0005,bit a0006,bit a0007,
bit a0008,bit a0009,bit a000a,bit a000b,bit a000c,bit a000d,bit a000e,bit a000f,
bit a0010,bit a0011,bit a0012,bit a0013,bit a0014,bit a0015,bit a0016,bit a0017,
bit a0018,bit a0019,bit a001a,bit a001b,bit a001c,bit a001d,bit a001e,bit a001f,
bit a0020,bit a0021,bit a0022,bit a0023,bit a0024,bit a0025,bit a0026,bit a0027,
bit a0028,bit a0029,bit a002a,bit a002b,bit a002c,bit a002d,bit a002e,bit a002f,
bit a0030,bit a0031,bit a0032,bit a0033,bit a0034,bit a0035,bit a0036,bit a0037,
bit a0038,bit a0039,bit a003a,bit a003b,bit a003c,bit a003d,bit a003e,bit a003f,
bit a0100,bit a0101,bit a0102,bit a0103,bit a0104,bit a0105,bit a0106,bit a0107,
bit a0108,bit a0109,bit a010a,bit a010b,bit a010c,bit a010d,bit a010e,bit a010f,
bit a0110,bit a0111,bit a0112,bit a0113,bit a0114,bit a0115,bit a0116,bit a0117,
bit a0118,bit a0119,bit a011a,bit a011b,bit a011c,bit a011d,bit a011e,bit a011f,
bit a0120,bit a0121,bit a0122,bit a0123,bit a0124,bit a0125,bit a0126,bit a0127,
bit a0128,bit a0129,bit a012a,bit a012b,bit a012c,bit a012d,bit a012e,bit a012f,
bit a0130,bit a0131,bit a0132,bit a0133,bit a0134,bit a0135,bit a0136,bit a0137,
bit a0138,bit a0139,bit a013a,bit a013b,bit a013c,bit a013d,bit a013e,bit a013f,
bit a0200,bit a0201,bit a0202,bit a0203,bit a0204,bit a0205,bit a0206,bit a0207,
bit a0208,bit a0209,bit a020a,bit a020b,bit a020c,bit a020d,bit a020e,bit a020f,
bit a0210,bit a0211,bit a0212,bit a0213,bit a0214,bit a0215,bit a0216,bit a0217,
bit a0218,bit a0219,bit a021a,bit a021b,bit a021c,bit a021d,bit a021e,bit a021f,
bit a0220,bit a0221,bit a0222,bit a0223,bit a0224,bit a0225,bit a0226,bit a0227,
bit a0228,bit a0229,bit a022a,bit a022b,bit a022c,bit a022d,bit a022e,bit a022f,
bit a0230,bit a0231,bit a0232,bit a0233,bit a0234,bit a0235,bit a0236,bit a0237,
bit a0238,bit a0239,bit a023a,bit a023b,bit a023c,bit a023d,bit a023e,bit a023f,
bit a0300,bit a0301,bit a0302,bit a0303,bit a0304,bit a0305,bit a0306,bit a0307,
bit a0308,bit a0309,bit a030a,bit a030b,bit a030c,bit a030d,bit a030e,bit a030f,
bit a0310,bit a0311,bit a0312,bit a0313,bit a0314,bit a0315,bit a0316,bit a0317,
bit a0318,bit a0319,bit a031a,bit a031b,bit a031c,bit a031d,bit a031e,bit a031f,
bit a0320,bit a0321,bit a0322,bit a0323,bit a0324,bit a0325,bit a0326,bit a0327,
bit a0328,bit a0329,bit a032a,bit a032b,bit a032c,bit a032d,bit a032e,bit a032f,
bit a0330,bit a0331,bit a0332,bit a0333,bit a0334,bit a0335,bit a0336,bit a0337,
bit a0338,bit a0339,bit a033a,bit a033b,bit a033c,bit a033d,bit a033e,bit a033f,
bit a0400,bit a0401,bit a0402,bit a0403,bit a0404,bit a0405,bit a0406,bit a0407,
bit a0408,bit a0409,bit a040a,bit a040b,bit a040c,bit a040d,bit a040e,bit a040f,
bit a0410,bit a0411,bit a0412,bit a0413,bit a0414,bit a0415,bit a0416,bit a0417,
bit a0418,bit a0419,bit a041a,bit a041b,bit a041c,bit a041d,bit a041e,bit a041f,
bit a0420,bit a0421,bit a0422,bit a0423,bit a0424,bit a0425,bit a0426,bit a0427,
bit a0428,bit a0429,bit a042a,bit a042b,bit a042c,bit a042d,bit a042e,bit a042f,
bit a0430,bit a0431,bit a0432,bit a0433,bit a0434,bit a0435,bit a0436,bit a0437,
bit a0438,bit a0439,bit a043a,bit a043b,bit a043c,bit a043d,bit a043e,bit a043f,
bit a0500,bit a0501,bit a0502,bit a0503,bit a0504,bit a0505,bit a0506,bit a0507,
bit a0508,bit a0509,bit a050a,bit a050b,bit a050c,bit a050d,bit a050e,bit a050f,
bit a0510,bit a0511,bit a0512,bit a0513,bit a0514,bit a0515,bit a0516,bit a0517,
bit a0518,bit a0519,bit a051a,bit a051b,bit a051c,bit a051d,bit a051e,bit a051f,
bit a0520,bit a0521,bit a0522,bit a0523,bit a0524,bit a0525,bit a0526,bit a0527,
bit a0528,bit a0529,bit a052a,bit a052b,bit a052c,bit a052d,bit a052e,bit a052f,
bit a0530,bit a0531,bit a0532,bit a0533,bit a0534,bit a0535,bit a0536,bit a0537,
bit a0538,bit a0539,bit a053a,bit a053b,bit a053c,bit a053d,bit a053e,bit a053f,
bit a0600,bit a0601,bit a0602,bit a0603,bit a0604,bit a0605,bit a0606,bit a0607,
bit a0608,bit a0609,bit a060a,bit a060b,bit a060c,bit a060d,bit a060e,bit a060f,
bit a0610,bit a0611,bit a0612,bit a0613,bit a0614,bit a0615,bit a0616,bit a0617,
bit a0618,bit a0619,bit a061a,bit a061b,bit a061c,bit a061d,bit a061e,bit a061f,
bit a0620,bit a0621,bit a0622,bit a0623,bit a0624,bit a0625,bit a0626,bit a0627,
bit a0628,bit a0629,bit a062a,bit a062b,bit a062c,bit a062d,bit a062e,bit a062f,
bit a0630,bit a0631,bit a0632,bit a0633,bit a0634,bit a0635,bit a0636,bit a0637,
bit a0638,bit a0639,bit a063a,bit a063b,bit a063c,bit a063d,bit a063e,bit a063f,
bit a0700,bit a0701,bit a0702,bit a0703,bit a0704,bit a0705,bit a0706,bit a0707,
bit a0708,bit a0709,bit a070a,bit a070b,bit a070c,bit a070d,bit a070e,bit a070f,
bit a0710,bit a0711,bit a0712,bit a0713,bit a0714,bit a0715,bit a0716,bit a0717,
bit a0718,bit a0719,bit a071a,bit a071b,bit a071c,bit a071d,bit a071e,bit a071f,
bit a0720,bit a0721,bit a0722,bit a0723,bit a0724,bit a0725,bit a0726,bit a0727,
bit a0728,bit a0729,bit a072a,bit a072b,bit a072c,bit a072d,bit a072e,bit a072f,
bit a0730,bit a0731,bit a0732,bit a0733,bit a0734,bit a0735,bit a0736,bit a0737,
bit a0738,bit a0739,bit a073a,bit a073b,bit a073c,bit a073d,bit a073e,bit a073f,
bit a0800,bit a0801,bit a0802,bit a0803,bit a0804,bit a0805,bit a0806,bit a0807,
bit a0808,bit a0809,bit a080a,bit a080b,bit a080c,bit a080d,bit a080e,bit a080f,
bit a0810,bit a0811,bit a0812,bit a0813,bit a0814,bit a0815,bit a0816,bit a0817,
bit a0818,bit a0819,bit a081a,bit a081b,bit a081c,bit a081d,bit a081e,bit a081f,
bit a0820,bit a0821,bit a0822,bit a0823,bit a0824,bit a0825,bit a0826,bit a0827,
bit a0828,bit a0829,bit a082a,bit a082b,bit a082c,bit a082d,bit a082e,bit a082f,
bit a0830,bit a0831,bit a0832,bit a0833,bit a0834,bit a0835,bit a0836,bit a0837,
bit a0838,bit a0839,bit a083a,bit a083b,bit a083c,bit a083d,bit a083e,bit a083f,
bit a0900,bit a0901,bit a0902,bit a0903,bit a0904,bit a0905,bit a0906,bit a0907,
bit a0908,bit a0909,bit a090a,bit a090b,bit a090c,bit a090d,bit a090e,bit a090f,
bit a0910,bit a0911,bit a0912,bit a0913,bit a0914,bit a0915,bit a0916,bit a0917,
bit a0918,bit a0919,bit a091a,bit a091b,bit a091c,bit a091d,bit a091e,bit a091f,
bit a0920,bit a0921,bit a0922,bit a0923,bit a0924,bit a0925,bit a0926,bit a0927,
bit a0928,bit a0929,bit a092a,bit a092b,bit a092c,bit a092d,bit a092e,bit a092f,
bit a0930,bit a0931,bit a0932,bit a0933,bit a0934,bit a0935,bit a0936,bit a0937,
bit a0938,bit a0939,bit a093a,bit a093b,bit a093c,bit a093d,bit a093e,bit a093f,
bit a0a00,bit a0a01,bit a0a02,bit a0a03,bit a0a04,bit a0a05,bit a0a06,bit a0a07,
bit a0a08,bit a0a09,bit a0a0a,bit a0a0b,bit a0a0c,bit a0a0d,bit a0a0e,bit a0a0f,
bit a0a10,bit a0a11,bit a0a12,bit a0a13,bit a0a14,bit a0a15,bit a0a16,bit a0a17,
bit a0a18,bit a0a19,bit a0a1a,bit a0a1b,bit a0a1c,bit a0a1d,bit a0a1e,bit a0a1f,
bit a0a20,bit a0a21,bit a0a22,bit a0a23,bit a0a24,bit a0a25,bit a0a26,bit a0a27,
bit a0a28,bit a0a29,bit a0a2a,bit a0a2b,bit a0a2c,bit a0a2d,bit a0a2e,bit a0a2f,
bit a0a30,bit a0a31,bit a0a32,bit a0a33,bit a0a34,bit a0a35,bit a0a36,bit a0a37,
bit a0a38,bit a0a39,bit a0a3a,bit a0a3b,bit a0a3c,bit a0a3d,bit a0a3e,bit a0a3f,
bit a0b00,bit a0b01,bit a0b02,bit a0b03,bit a0b04,bit a0b05,bit a0b06,bit a0b07,
bit a0b08,bit a0b09,bit a0b0a,bit a0b0b,bit a0b0c,bit a0b0d,bit a0b0e,bit a0b0f,
bit a0b10,bit a0b11,bit a0b12,bit a0b13,bit a0b14,bit a0b15,bit a0b16,bit a0b17,
bit a0b18,bit a0b19,bit a0b1a,bit a0b1b,bit a0b1c,bit a0b1d,bit a0b1e,bit a0b1f,
bit a0b20,bit a0b21,bit a0b22,bit a0b23,bit a0b24,bit a0b25,bit a0b26,bit a0b27,
bit a0b28,bit a0b29,bit a0b2a,bit a0b2b,bit a0b2c,bit a0b2d,bit a0b2e,bit a0b2f,
bit a0b30,bit a0b31,bit a0b32,bit a0b33,bit a0b34,bit a0b35,bit a0b36,bit a0b37,
bit a0b38,bit a0b39,bit a0b3a,bit a0b3b,bit a0b3c,bit a0b3d,bit a0b3e,bit a0b3f,
bit a0c00,bit a0c01,bit a0c02,bit a0c03,bit a0c04,bit a0c05,bit a0c06,bit a0c07,
bit a0c08,bit a0c09,bit a0c0a,bit a0c0b,bit a0c0c,bit a0c0d,bit a0c0e,bit a0c0f,
bit a0c10,bit a0c11,bit a0c12,bit a0c13,bit a0c14,bit a0c15,bit a0c16,bit a0c17,
bit a0c18,bit a0c19,bit a0c1a,bit a0c1b,bit a0c1c,bit a0c1d,bit a0c1e,bit a0c1f,
bit a0c20,bit a0c21,bit a0c22,bit a0c23,bit a0c24,bit a0c25,bit a0c26,bit a0c27,
bit a0c28,bit a0c29,bit a0c2a,bit a0c2b,bit a0c2c,bit a0c2d,bit a0c2e,bit a0c2f,
bit a0c30,bit a0c31,bit a0c32,bit a0c33,bit a0c34,bit a0c35,bit a0c36,bit a0c37,
bit a0c38,bit a0c39,bit a0c3a,bit a0c3b,bit a0c3c,bit a0c3d,bit a0c3e,bit a0c3f,
bit a0d00,bit a0d01,bit a0d02,bit a0d03,bit a0d04,bit a0d05,bit a0d06,bit a0d07,
bit a0d08,bit a0d09,bit a0d0a,bit a0d0b,bit a0d0c,bit a0d0d,bit a0d0e,bit a0d0f,
bit a0d10,bit a0d11,bit a0d12,bit a0d13,bit a0d14,bit a0d15,bit a0d16,bit a0d17,
bit a0d18,bit a0d19,bit a0d1a,bit a0d1b,bit a0d1c,bit a0d1d,bit a0d1e,bit a0d1f,
bit a0d20,bit a0d21,bit a0d22,bit a0d23,bit a0d24,bit a0d25,bit a0d26,bit a0d27,
bit a0d28,bit a0d29,bit a0d2a,bit a0d2b,bit a0d2c,bit a0d2d,bit a0d2e,bit a0d2f,
bit a0d30,bit a0d31,bit a0d32,bit a0d33,bit a0d34,bit a0d35,bit a0d36,bit a0d37,
bit a0d38,bit a0d39,bit a0d3a,bit a0d3b,bit a0d3c,bit a0d3d,bit a0d3e,bit a0d3f,
bit a0e00,bit a0e01,bit a0e02,bit a0e03,bit a0e04,bit a0e05,bit a0e06,bit a0e07,
bit a0e08,bit a0e09,bit a0e0a,bit a0e0b,bit a0e0c,bit a0e0d,bit a0e0e,bit a0e0f,
bit a0e10,bit a0e11,bit a0e12,bit a0e13,bit a0e14,bit a0e15,bit a0e16,bit a0e17,
bit a0e18,bit a0e19,bit a0e1a,bit a0e1b,bit a0e1c,bit a0e1d,bit a0e1e,bit a0e1f,
bit a0e20,bit a0e21,bit a0e22,bit a0e23,bit a0e24,bit a0e25,bit a0e26,bit a0e27,
bit a0e28,bit a0e29,bit a0e2a,bit a0e2b,bit a0e2c,bit a0e2d,bit a0e2e,bit a0e2f,
bit a0e30,bit a0e31,bit a0e32,bit a0e33,bit a0e34,bit a0e35,bit a0e36,bit a0e37,
bit a0e38,bit a0e39,bit a0e3a,bit a0e3b,bit a0e3c,bit a0e3d,bit a0e3e,bit a0e3f,
bit a0f00,bit a0f01,bit a0f02,bit a0f03,bit a0f04,bit a0f05,bit a0f06,bit a0f07,
bit a0f08,bit a0f09,bit a0f0a,bit a0f0b,bit a0f0c,bit a0f0d,bit a0f0e,bit a0f0f,
bit a0f10,bit a0f11,bit a0f12,bit a0f13,bit a0f14,bit a0f15,bit a0f16,bit a0f17,
bit a0f18,bit a0f19,bit a0f1a,bit a0f1b,bit a0f1c,bit a0f1d,bit a0f1e,bit a0f1f,
bit a0f20,bit a0f21,bit a0f22,bit a0f23,bit a0f24,bit a0f25,bit a0f26,bit a0f27,
bit a0f28,bit a0f29,bit a0f2a,bit a0f2b,bit a0f2c,bit a0f2d,bit a0f2e,bit a0f2f,
bit a0f30,bit a0f31,bit a0f32,bit a0f33,bit a0f34,bit a0f35,bit a0f36,bit a0f37,
bit a0f38,bit a0f39,bit a0f3a,bit a0f3b,bit a0f3c,bit a0f3d,bit a0f3e,bit a0f3f,
bit a1000,bit a1001,bit a1002,bit a1003,bit a1004,bit a1005,bit a1006,bit a1007,
bit a1008,bit a1009,bit a100a,bit a100b,bit a100c,bit a100d,bit a100e,bit a100f,
bit a1010,bit a1011,bit a1012,bit a1013,bit a1014,bit a1015,bit a1016,bit a1017,
bit a1018,bit a1019,bit a101a,bit a101b,bit a101c,bit a101d,bit a101e,bit a101f,
bit a1020,bit a1021,bit a1022,bit a1023,bit a1024,bit a1025,bit a1026,bit a1027,
bit a1028,bit a1029,bit a102a,bit a102b,bit a102c,bit a102d,bit a102e,bit a102f,
bit a1030,bit a1031,bit a1032,bit a1033,bit a1034,bit a1035,bit a1036,bit a1037,
bit a1038,bit a1039,bit a103a,bit a103b,bit a103c,bit a103d,bit a103e,bit a103f,
bit a1100,bit a1101,bit a1102,bit a1103,bit a1104,bit a1105,bit a1106,bit a1107,
bit a1108,bit a1109,bit a110a,bit a110b,bit a110c,bit a110d,bit a110e,bit a110f,
bit a1110,bit a1111,bit a1112,bit a1113,bit a1114,bit a1115,bit a1116,bit a1117,
bit a1118,bit a1119,bit a111a,bit a111b,bit a111c,bit a111d,bit a111e,bit a111f,
bit a1120,bit a1121,bit a1122,bit a1123,bit a1124,bit a1125,bit a1126,bit a1127,
bit a1128,bit a1129,bit a112a,bit a112b,bit a112c,bit a112d,bit a112e,bit a112f,
bit a1130,bit a1131,bit a1132,bit a1133,bit a1134,bit a1135,bit a1136,bit a1137,
bit a1138,bit a1139,bit a113a,bit a113b,bit a113c,bit a113d,bit a113e,bit a113f,
bit a1200,bit a1201,bit a1202,bit a1203,bit a1204,bit a1205,bit a1206,bit a1207,
bit a1208,bit a1209,bit a120a,bit a120b,bit a120c,bit a120d,bit a120e,bit a120f,
bit a1210,bit a1211,bit a1212,bit a1213,bit a1214,bit a1215,bit a1216,bit a1217,
bit a1218,bit a1219,bit a121a,bit a121b,bit a121c,bit a121d,bit a121e,bit a121f,
bit a1220,bit a1221,bit a1222,bit a1223,bit a1224,bit a1225,bit a1226,bit a1227,
bit a1228,bit a1229,bit a122a,bit a122b,bit a122c,bit a122d,bit a122e,bit a122f,
bit a1230,bit a1231,bit a1232,bit a1233,bit a1234,bit a1235,bit a1236,bit a1237,
bit a1238,bit a1239,bit a123a,bit a123b,bit a123c,bit a123d,bit a123e,bit a123f,
bit a1300,bit a1301,bit a1302,bit a1303,bit a1304,bit a1305,bit a1306,bit a1307,
bit a1308,bit a1309,bit a130a,bit a130b,bit a130c,bit a130d,bit a130e,bit a130f,
bit a1310,bit a1311,bit a1312,bit a1313,bit a1314,bit a1315,bit a1316,bit a1317,
bit a1318,bit a1319,bit a131a,bit a131b,bit a131c,bit a131d,bit a131e,bit a131f,
bit a1320,bit a1321,bit a1322,bit a1323,bit a1324,bit a1325,bit a1326,bit a1327,
bit a1328,bit a1329,bit a132a,bit a132b,bit a132c,bit a132d,bit a132e,bit a132f,
bit a1330,bit a1331,bit a1332,bit a1333,bit a1334,bit a1335,bit a1336,bit a1337,
bit a1338,bit a1339,bit a133a,bit a133b,bit a133c,bit a133d,bit a133e,bit a133f,
bit a1400,bit a1401,bit a1402,bit a1403,bit a1404,bit a1405,bit a1406,bit a1407,
bit a1408,bit a1409,bit a140a,bit a140b,bit a140c,bit a140d,bit a140e,bit a140f,
bit a1410,bit a1411,bit a1412,bit a1413,bit a1414,bit a1415,bit a1416,bit a1417,
bit a1418,bit a1419,bit a141a,bit a141b,bit a141c,bit a141d,bit a141e,bit a141f,
bit a1420,bit a1421,bit a1422,bit a1423,bit a1424,bit a1425,bit a1426,bit a1427,
bit a1428,bit a1429,bit a142a,bit a142b,bit a142c,bit a142d,bit a142e,bit a142f,
bit a1430,bit a1431,bit a1432,bit a1433,bit a1434,bit a1435,bit a1436,bit a1437,
bit a1438,bit a1439,bit a143a,bit a143b,bit a143c,bit a143d,bit a143e,bit a143f,
bit a1500,bit a1501,bit a1502,bit a1503,bit a1504,bit a1505,bit a1506,bit a1507,
bit a1508,bit a1509,bit a150a,bit a150b,bit a150c,bit a150d,bit a150e,bit a150f,
bit a1510,bit a1511,bit a1512,bit a1513,bit a1514,bit a1515,bit a1516,bit a1517,
bit a1518,bit a1519,bit a151a,bit a151b,bit a151c,bit a151d,bit a151e,bit a151f,
bit a1520,bit a1521,bit a1522,bit a1523,bit a1524,bit a1525,bit a1526,bit a1527,
bit a1528,bit a1529,bit a152a,bit a152b,bit a152c,bit a152d,bit a152e,bit a152f,
bit a1530,bit a1531,bit a1532,bit a1533,bit a1534,bit a1535,bit a1536,bit a1537,
bit a1538,bit a1539,bit a153a,bit a153b,bit a153c,bit a153d,bit a153e,bit a153f,
bit a1600,bit a1601,bit a1602,bit a1603,bit a1604,bit a1605,bit a1606,bit a1607,
bit a1608,bit a1609,bit a160a,bit a160b,bit a160c,bit a160d,bit a160e,bit a160f,
bit a1610,bit a1611,bit a1612,bit a1613,bit a1614,bit a1615,bit a1616,bit a1617,
bit a1618,bit a1619,bit a161a,bit a161b,bit a161c,bit a161d,bit a161e,bit a161f,
bit a1620,bit a1621,bit a1622,bit a1623,bit a1624,bit a1625,bit a1626,bit a1627,
bit a1628,bit a1629,bit a162a,bit a162b,bit a162c,bit a162d,bit a162e,bit a162f,
bit a1630,bit a1631,bit a1632,bit a1633,bit a1634,bit a1635,bit a1636,bit a1637,
bit a1638,bit a1639,bit a163a,bit a163b,bit a163c,bit a163d,bit a163e,bit a163f,
bit a1700,bit a1701,bit a1702,bit a1703,bit a1704,bit a1705,bit a1706,bit a1707,
bit a1708,bit a1709,bit a170a,bit a170b,bit a170c,bit a170d,bit a170e,bit a170f,
bit a1710,bit a1711,bit a1712,bit a1713,bit a1714,bit a1715,bit a1716,bit a1717,
bit a1718,bit a1719,bit a171a,bit a171b,bit a171c,bit a171d,bit a171e,bit a171f,
bit a1720,bit a1721,bit a1722,bit a1723,bit a1724,bit a1725,bit a1726,bit a1727,
bit a1728,bit a1729,bit a172a,bit a172b,bit a172c,bit a172d,bit a172e,bit a172f,
bit a1730,bit a1731,bit a1732,bit a1733,bit a1734,bit a1735,bit a1736,bit a1737,
bit a1738,bit a1739,bit a173a,bit a173b,bit a173c,bit a173d,bit a173e,bit a173f,
bit a1800,bit a1801,bit a1802,bit a1803,bit a1804,bit a1805,bit a1806,bit a1807,
bit a1808,bit a1809,bit a180a,bit a180b,bit a180c,bit a180d,bit a180e,bit a180f,
bit a1810,bit a1811,bit a1812,bit a1813,bit a1814,bit a1815,bit a1816,bit a1817,
bit a1818,bit a1819,bit a181a,bit a181b,bit a181c,bit a181d,bit a181e,bit a181f,
bit a1820,bit a1821,bit a1822,bit a1823,bit a1824,bit a1825,bit a1826,bit a1827,
bit a1828,bit a1829,bit a182a,bit a182b,bit a182c,bit a182d,bit a182e,bit a182f,
bit a1830,bit a1831,bit a1832,bit a1833,bit a1834,bit a1835,bit a1836,bit a1837,
bit a1838,bit a1839,bit a183a,bit a183b,bit a183c,bit a183d,bit a183e,bit a183f,
bit a1900,bit a1901,bit a1902,bit a1903,bit a1904,bit a1905,bit a1906,bit a1907,
bit a1908,bit a1909,bit a190a,bit a190b,bit a190c,bit a190d,bit a190e,bit a190f,
bit a1910,bit a1911,bit a1912,bit a1913,bit a1914,bit a1915,bit a1916,bit a1917,
bit a1918,bit a1919,bit a191a,bit a191b,bit a191c,bit a191d,bit a191e,bit a191f,
bit a1920,bit a1921,bit a1922,bit a1923,bit a1924,bit a1925,bit a1926,bit a1927,
bit a1928,bit a1929,bit a192a,bit a192b,bit a192c,bit a192d,bit a192e,bit a192f,
bit a1930,bit a1931,bit a1932,bit a1933,bit a1934,bit a1935,bit a1936,bit a1937,
bit a1938,bit a1939,bit a193a,bit a193b,bit a193c,bit a193d,bit a193e,bit a193f,
bit a1a00,bit a1a01,bit a1a02,bit a1a03,bit a1a04,bit a1a05,bit a1a06,bit a1a07,
bit a1a08,bit a1a09,bit a1a0a,bit a1a0b,bit a1a0c,bit a1a0d,bit a1a0e,bit a1a0f,
bit a1a10,bit a1a11,bit a1a12,bit a1a13,bit a1a14,bit a1a15,bit a1a16,bit a1a17,
bit a1a18,bit a1a19,bit a1a1a,bit a1a1b,bit a1a1c,bit a1a1d,bit a1a1e,bit a1a1f,
bit a1a20,bit a1a21,bit a1a22,bit a1a23,bit a1a24,bit a1a25,bit a1a26,bit a1a27,
bit a1a28,bit a1a29,bit a1a2a,bit a1a2b,bit a1a2c,bit a1a2d,bit a1a2e,bit a1a2f,
bit a1a30,bit a1a31,bit a1a32,bit a1a33,bit a1a34,bit a1a35,bit a1a36,bit a1a37,
bit a1a38,bit a1a39,bit a1a3a,bit a1a3b,bit a1a3c,bit a1a3d,bit a1a3e,bit a1a3f,
bit a1b00,bit a1b01,bit a1b02,bit a1b03,bit a1b04,bit a1b05,bit a1b06,bit a1b07,
bit a1b08,bit a1b09,bit a1b0a,bit a1b0b,bit a1b0c,bit a1b0d,bit a1b0e,bit a1b0f,
bit a1b10,bit a1b11,bit a1b12,bit a1b13,bit a1b14,bit a1b15,bit a1b16,bit a1b17,
bit a1b18,bit a1b19,bit a1b1a,bit a1b1b,bit a1b1c,bit a1b1d,bit a1b1e,bit a1b1f,
bit a1b20,bit a1b21,bit a1b22,bit a1b23,bit a1b24,bit a1b25,bit a1b26,bit a1b27,
bit a1b28,bit a1b29,bit a1b2a,bit a1b2b,bit a1b2c,bit a1b2d,bit a1b2e,bit a1b2f,
bit a1b30,bit a1b31,bit a1b32,bit a1b33,bit a1b34,bit a1b35,bit a1b36,bit a1b37,
bit a1b38,bit a1b39,bit a1b3a,bit a1b3b,bit a1b3c,bit a1b3d,bit a1b3e,bit a1b3f,
bit a1c00,bit a1c01,bit a1c02,bit a1c03,bit a1c04,bit a1c05,bit a1c06,bit a1c07,
bit a1c08,bit a1c09,bit a1c0a,bit a1c0b,bit a1c0c,bit a1c0d,bit a1c0e,bit a1c0f,
bit a1c10,bit a1c11,bit a1c12,bit a1c13,bit a1c14,bit a1c15,bit a1c16,bit a1c17,
bit a1c18,bit a1c19,bit a1c1a,bit a1c1b,bit a1c1c,bit a1c1d,bit a1c1e,bit a1c1f,
bit a1c20,bit a1c21,bit a1c22,bit a1c23,bit a1c24,bit a1c25,bit a1c26,bit a1c27,
bit a1c28,bit a1c29,bit a1c2a,bit a1c2b,bit a1c2c,bit a1c2d,bit a1c2e,bit a1c2f,
bit a1c30,bit a1c31,bit a1c32,bit a1c33,bit a1c34,bit a1c35,bit a1c36,bit a1c37,
bit a1c38,bit a1c39,bit a1c3a,bit a1c3b,bit a1c3c,bit a1c3d,bit a1c3e,bit a1c3f,
bit a1d00,bit a1d01,bit a1d02,bit a1d03,bit a1d04,bit a1d05,bit a1d06,bit a1d07,
bit a1d08,bit a1d09,bit a1d0a,bit a1d0b,bit a1d0c,bit a1d0d,bit a1d0e,bit a1d0f,
bit a1d10,bit a1d11,bit a1d12,bit a1d13,bit a1d14,bit a1d15,bit a1d16,bit a1d17,
bit a1d18,bit a1d19,bit a1d1a,bit a1d1b,bit a1d1c,bit a1d1d,bit a1d1e,bit a1d1f,
bit a1d20,bit a1d21,bit a1d22,bit a1d23,bit a1d24,bit a1d25,bit a1d26,bit a1d27,
bit a1d28,bit a1d29,bit a1d2a,bit a1d2b,bit a1d2c,bit a1d2d,bit a1d2e,bit a1d2f,
bit a1d30,bit a1d31,bit a1d32,bit a1d33,bit a1d34,bit a1d35,bit a1d36,bit a1d37,
bit a1d38,bit a1d39,bit a1d3a,bit a1d3b,bit a1d3c,bit a1d3d,bit a1d3e,bit a1d3f,
bit a1e00,bit a1e01,bit a1e02,bit a1e03,bit a1e04,bit a1e05,bit a1e06,bit a1e07,
bit a1e08,bit a1e09,bit a1e0a,bit a1e0b,bit a1e0c,bit a1e0d,bit a1e0e,bit a1e0f,
bit a1e10,bit a1e11,bit a1e12,bit a1e13,bit a1e14,bit a1e15,bit a1e16,bit a1e17,
bit a1e18,bit a1e19,bit a1e1a,bit a1e1b,bit a1e1c,bit a1e1d,bit a1e1e,bit a1e1f,
bit a1e20,bit a1e21,bit a1e22,bit a1e23,bit a1e24,bit a1e25,bit a1e26,bit a1e27,
bit a1e28,bit a1e29,bit a1e2a,bit a1e2b,bit a1e2c,bit a1e2d,bit a1e2e,bit a1e2f,
bit a1e30,bit a1e31,bit a1e32,bit a1e33,bit a1e34,bit a1e35,bit a1e36,bit a1e37,
bit a1e38,bit a1e39,bit a1e3a,bit a1e3b,bit a1e3c,bit a1e3d,bit a1e3e,bit a1e3f,
bit a1f00,bit a1f01,bit a1f02,bit a1f03,bit a1f04,bit a1f05,bit a1f06,bit a1f07,
bit a1f08,bit a1f09,bit a1f0a,bit a1f0b,bit a1f0c,bit a1f0d,bit a1f0e,bit a1f0f,
bit a1f10,bit a1f11,bit a1f12,bit a1f13,bit a1f14,bit a1f15,bit a1f16,bit a1f17,
bit a1f18,bit a1f19,bit a1f1a,bit a1f1b,bit a1f1c,bit a1f1d,bit a1f1e,bit a1f1f,
bit a1f20,bit a1f21,bit a1f22,bit a1f23,bit a1f24,bit a1f25,bit a1f26,bit a1f27,
bit a1f28,bit a1f29,bit a1f2a,bit a1f2b,bit a1f2c,bit a1f2d,bit a1f2e,bit a1f2f,
bit a1f30,bit a1f31,bit a1f32,bit a1f33,bit a1f34,bit a1f35,bit a1f36,bit a1f37,
bit a1f38,bit a1f39,bit a1f3a,bit a1f3b,bit a1f3c,bit a1f3d,bit a1f3e,bit a1f3f,
bit a2000,bit a2001,bit a2002,bit a2003,bit a2004,bit a2005,bit a2006,bit a2007,
bit a2008,bit a2009,bit a200a,bit a200b,bit a200c,bit a200d,bit a200e,bit a200f,
bit a2010,bit a2011,bit a2012,bit a2013,bit a2014,bit a2015,bit a2016,bit a2017,
bit a2018,bit a2019,bit a201a,bit a201b,bit a201c,bit a201d,bit a201e,bit a201f,
bit a2020,bit a2021,bit a2022,bit a2023,bit a2024,bit a2025,bit a2026,bit a2027,
bit a2028,bit a2029,bit a202a,bit a202b,bit a202c,bit a202d,bit a202e,bit a202f,
bit a2030,bit a2031,bit a2032,bit a2033,bit a2034,bit a2035,bit a2036,bit a2037,
bit a2038,bit a2039,bit a203a,bit a203b,bit a203c,bit a203d,bit a203e,bit a203f,
bit a2100,bit a2101,bit a2102,bit a2103,bit a2104,bit a2105,bit a2106,bit a2107,
bit a2108,bit a2109,bit a210a,bit a210b,bit a210c,bit a210d,bit a210e,bit a210f,
bit a2110,bit a2111,bit a2112,bit a2113,bit a2114,bit a2115,bit a2116,bit a2117,
bit a2118,bit a2119,bit a211a,bit a211b,bit a211c,bit a211d,bit a211e,bit a211f,
bit a2120,bit a2121,bit a2122,bit a2123,bit a2124,bit a2125,bit a2126,bit a2127,
bit a2128,bit a2129,bit a212a,bit a212b,bit a212c,bit a212d,bit a212e,bit a212f,
bit a2130,bit a2131,bit a2132,bit a2133,bit a2134,bit a2135,bit a2136,bit a2137,
bit a2138,bit a2139,bit a213a,bit a213b,bit a213c,bit a213d,bit a213e,bit a213f,
bit a2200,bit a2201,bit a2202,bit a2203,bit a2204,bit a2205,bit a2206,bit a2207,
bit a2208,bit a2209,bit a220a,bit a220b,bit a220c,bit a220d,bit a220e,bit a220f,
bit a2210,bit a2211,bit a2212,bit a2213,bit a2214,bit a2215,bit a2216,bit a2217,
bit a2218,bit a2219,bit a221a,bit a221b,bit a221c,bit a221d,bit a221e,bit a221f,
bit a2220,bit a2221,bit a2222,bit a2223,bit a2224,bit a2225,bit a2226,bit a2227,
bit a2228,bit a2229,bit a222a,bit a222b,bit a222c,bit a222d,bit a222e,bit a222f,
bit a2230,bit a2231,bit a2232,bit a2233,bit a2234,bit a2235,bit a2236,bit a2237,
bit a2238,bit a2239,bit a223a,bit a223b,bit a223c,bit a223d,bit a223e,bit a223f,
bit a2300,bit a2301,bit a2302,bit a2303,bit a2304,bit a2305,bit a2306,bit a2307,
bit a2308,bit a2309,bit a230a,bit a230b,bit a230c,bit a230d,bit a230e,bit a230f,
bit a2310,bit a2311,bit a2312,bit a2313,bit a2314,bit a2315,bit a2316,bit a2317,
bit a2318,bit a2319,bit a231a,bit a231b,bit a231c,bit a231d,bit a231e,bit a231f,
bit a2320,bit a2321,bit a2322,bit a2323,bit a2324,bit a2325,bit a2326,bit a2327,
bit a2328,bit a2329,bit a232a,bit a232b,bit a232c,bit a232d,bit a232e,bit a232f,
bit a2330,bit a2331,bit a2332,bit a2333,bit a2334,bit a2335,bit a2336,bit a2337,
bit a2338,bit a2339,bit a233a,bit a233b,bit a233c,bit a233d,bit a233e,bit a233f,
bit a2400,bit a2401,bit a2402,bit a2403,bit a2404,bit a2405,bit a2406,bit a2407,
bit a2408,bit a2409,bit a240a,bit a240b,bit a240c,bit a240d,bit a240e,bit a240f,
bit a2410,bit a2411,bit a2412,bit a2413,bit a2414,bit a2415,bit a2416,bit a2417,
bit a2418,bit a2419,bit a241a,bit a241b,bit a241c,bit a241d,bit a241e,bit a241f,
bit a2420,bit a2421,bit a2422,bit a2423,bit a2424,bit a2425,bit a2426,bit a2427,
bit a2428,bit a2429,bit a242a,bit a242b,bit a242c,bit a242d,bit a242e,bit a242f,
bit a2430,bit a2431,bit a2432,bit a2433,bit a2434,bit a2435,bit a2436,bit a2437,
bit a2438,bit a2439,bit a243a,bit a243b,bit a243c,bit a243d,bit a243e,bit a243f,
bit a2500,bit a2501,bit a2502,bit a2503,bit a2504,bit a2505,bit a2506,bit a2507,
bit a2508,bit a2509,bit a250a,bit a250b,bit a250c,bit a250d,bit a250e,bit a250f,
bit a2510,bit a2511,bit a2512,bit a2513,bit a2514,bit a2515,bit a2516,bit a2517,
bit a2518,bit a2519,bit a251a,bit a251b,bit a251c,bit a251d,bit a251e,bit a251f,
bit a2520,bit a2521,bit a2522,bit a2523,bit a2524,bit a2525,bit a2526,bit a2527,
bit a2528,bit a2529,bit a252a,bit a252b,bit a252c,bit a252d,bit a252e,bit a252f,
bit a2530,bit a2531,bit a2532,bit a2533,bit a2534,bit a2535,bit a2536,bit a2537,
bit a2538,bit a2539,bit a253a,bit a253b,bit a253c,bit a253d,bit a253e,bit a253f,
bit a2600,bit a2601,bit a2602,bit a2603,bit a2604,bit a2605,bit a2606,bit a2607,
bit a2608,bit a2609,bit a260a,bit a260b,bit a260c,bit a260d,bit a260e,bit a260f,
bit a2610,bit a2611,bit a2612,bit a2613,bit a2614,bit a2615,bit a2616,bit a2617,
bit a2618,bit a2619,bit a261a,bit a261b,bit a261c,bit a261d,bit a261e,bit a261f,
bit a2620,bit a2621,bit a2622,bit a2623,bit a2624,bit a2625,bit a2626,bit a2627,
bit a2628,bit a2629,bit a262a,bit a262b,bit a262c,bit a262d,bit a262e,bit a262f,
bit a2630,bit a2631,bit a2632,bit a2633,bit a2634,bit a2635,bit a2636,bit a2637,
bit a2638,bit a2639,bit a263a,bit a263b,bit a263c,bit a263d,bit a263e,bit a263f,
bit a2700,bit a2701,bit a2702,bit a2703,bit a2704,bit a2705,bit a2706,bit a2707,
bit a2708,bit a2709,bit a270a,bit a270b,bit a270c,bit a270d,bit a270e,bit a270f,
bit a2710,bit a2711,bit a2712,bit a2713,bit a2714,bit a2715,bit a2716,bit a2717,
bit a2718,bit a2719,bit a271a,bit a271b,bit a271c,bit a271d,bit a271e,bit a271f,
bit a2720,bit a2721,bit a2722,bit a2723,bit a2724,bit a2725,bit a2726,bit a2727,
bit a2728,bit a2729,bit a272a,bit a272b,bit a272c,bit a272d,bit a272e,bit a272f,
bit a2730,bit a2731,bit a2732,bit a2733,bit a2734,bit a2735,bit a2736,bit a2737,
bit a2738,bit a2739,bit a273a,bit a273b,bit a273c,bit a273d,bit a273e,bit a273f,
bit a2800,bit a2801,bit a2802,bit a2803,bit a2804,bit a2805,bit a2806,bit a2807,
bit a2808,bit a2809,bit a280a,bit a280b,bit a280c,bit a280d,bit a280e,bit a280f,
bit a2810,bit a2811,bit a2812,bit a2813,bit a2814,bit a2815,bit a2816,bit a2817,
bit a2818,bit a2819,bit a281a,bit a281b,bit a281c,bit a281d,bit a281e,bit a281f,
bit a2820,bit a2821,bit a2822,bit a2823,bit a2824,bit a2825,bit a2826,bit a2827,
bit a2828,bit a2829,bit a282a,bit a282b,bit a282c,bit a282d,bit a282e,bit a282f,
bit a2830,bit a2831,bit a2832,bit a2833,bit a2834,bit a2835,bit a2836,bit a2837,
bit a2838,bit a2839,bit a283a,bit a283b,bit a283c,bit a283d,bit a283e,bit a283f,
bit a2900,bit a2901,bit a2902,bit a2903,bit a2904,bit a2905,bit a2906,bit a2907,
bit a2908,bit a2909,bit a290a,bit a290b,bit a290c,bit a290d,bit a290e,bit a290f,
bit a2910,bit a2911,bit a2912,bit a2913,bit a2914,bit a2915,bit a2916,bit a2917,
bit a2918,bit a2919,bit a291a,bit a291b,bit a291c,bit a291d,bit a291e,bit a291f,
bit a2920,bit a2921,bit a2922,bit a2923,bit a2924,bit a2925,bit a2926,bit a2927,
bit a2928,bit a2929,bit a292a,bit a292b,bit a292c,bit a292d,bit a292e,bit a292f,
bit a2930,bit a2931,bit a2932,bit a2933,bit a2934,bit a2935,bit a2936,bit a2937,
bit a2938,bit a2939,bit a293a,bit a293b,bit a293c,bit a293d,bit a293e,bit a293f,
bit a2a00,bit a2a01,bit a2a02,bit a2a03,bit a2a04,bit a2a05,bit a2a06,bit a2a07,
bit a2a08,bit a2a09,bit a2a0a,bit a2a0b,bit a2a0c,bit a2a0d,bit a2a0e,bit a2a0f,
bit a2a10,bit a2a11,bit a2a12,bit a2a13,bit a2a14,bit a2a15,bit a2a16,bit a2a17,
bit a2a18,bit a2a19,bit a2a1a,bit a2a1b,bit a2a1c,bit a2a1d,bit a2a1e,bit a2a1f,
bit a2a20,bit a2a21,bit a2a22,bit a2a23,bit a2a24,bit a2a25,bit a2a26,bit a2a27,
bit a2a28,bit a2a29,bit a2a2a,bit a2a2b,bit a2a2c,bit a2a2d,bit a2a2e,bit a2a2f,
bit a2a30,bit a2a31,bit a2a32,bit a2a33,bit a2a34,bit a2a35,bit a2a36,bit a2a37,
bit a2a38,bit a2a39,bit a2a3a,bit a2a3b,bit a2a3c,bit a2a3d,bit a2a3e,bit a2a3f,
bit a2b00,bit a2b01,bit a2b02,bit a2b03,bit a2b04,bit a2b05,bit a2b06,bit a2b07,
bit a2b08,bit a2b09,bit a2b0a,bit a2b0b,bit a2b0c,bit a2b0d,bit a2b0e,bit a2b0f,
bit a2b10,bit a2b11,bit a2b12,bit a2b13,bit a2b14,bit a2b15,bit a2b16,bit a2b17,
bit a2b18,bit a2b19,bit a2b1a,bit a2b1b,bit a2b1c,bit a2b1d,bit a2b1e,bit a2b1f,
bit a2b20,bit a2b21,bit a2b22,bit a2b23,bit a2b24,bit a2b25,bit a2b26,bit a2b27,
bit a2b28,bit a2b29,bit a2b2a,bit a2b2b,bit a2b2c,bit a2b2d,bit a2b2e,bit a2b2f,
bit a2b30,bit a2b31,bit a2b32,bit a2b33,bit a2b34,bit a2b35,bit a2b36,bit a2b37,
bit a2b38,bit a2b39,bit a2b3a,bit a2b3b,bit a2b3c,bit a2b3d,bit a2b3e,bit a2b3f,
bit a2c00,bit a2c01,bit a2c02,bit a2c03,bit a2c04,bit a2c05,bit a2c06,bit a2c07,
bit a2c08,bit a2c09,bit a2c0a,bit a2c0b,bit a2c0c,bit a2c0d,bit a2c0e,bit a2c0f,
bit a2c10,bit a2c11,bit a2c12,bit a2c13,bit a2c14,bit a2c15,bit a2c16,bit a2c17,
bit a2c18,bit a2c19,bit a2c1a,bit a2c1b,bit a2c1c,bit a2c1d,bit a2c1e,bit a2c1f,
bit a2c20,bit a2c21,bit a2c22,bit a2c23,bit a2c24,bit a2c25,bit a2c26,bit a2c27,
bit a2c28,bit a2c29,bit a2c2a,bit a2c2b,bit a2c2c,bit a2c2d,bit a2c2e,bit a2c2f,
bit a2c30,bit a2c31,bit a2c32,bit a2c33,bit a2c34,bit a2c35,bit a2c36,bit a2c37,
bit a2c38,bit a2c39,bit a2c3a,bit a2c3b,bit a2c3c,bit a2c3d,bit a2c3e,bit a2c3f,
bit a2d00,bit a2d01,bit a2d02,bit a2d03,bit a2d04,bit a2d05,bit a2d06,bit a2d07,
bit a2d08,bit a2d09,bit a2d0a,bit a2d0b,bit a2d0c,bit a2d0d,bit a2d0e,bit a2d0f,
bit a2d10,bit a2d11,bit a2d12,bit a2d13,bit a2d14,bit a2d15,bit a2d16,bit a2d17,
bit a2d18,bit a2d19,bit a2d1a,bit a2d1b,bit a2d1c,bit a2d1d,bit a2d1e,bit a2d1f,
bit a2d20,bit a2d21,bit a2d22,bit a2d23,bit a2d24,bit a2d25,bit a2d26,bit a2d27,
bit a2d28,bit a2d29,bit a2d2a,bit a2d2b,bit a2d2c,bit a2d2d,bit a2d2e,bit a2d2f,
bit a2d30,bit a2d31,bit a2d32,bit a2d33,bit a2d34,bit a2d35,bit a2d36,bit a2d37,
bit a2d38,bit a2d39,bit a2d3a,bit a2d3b,bit a2d3c,bit a2d3d,bit a2d3e,bit a2d3f,
bit a2e00,bit a2e01,bit a2e02,bit a2e03,bit a2e04,bit a2e05,bit a2e06,bit a2e07,
bit a2e08,bit a2e09,bit a2e0a,bit a2e0b,bit a2e0c,bit a2e0d,bit a2e0e,bit a2e0f,
bit a2e10,bit a2e11,bit a2e12,bit a2e13,bit a2e14,bit a2e15,bit a2e16,bit a2e17,
bit a2e18,bit a2e19,bit a2e1a,bit a2e1b,bit a2e1c,bit a2e1d,bit a2e1e,bit a2e1f,
bit a2e20,bit a2e21,bit a2e22,bit a2e23,bit a2e24,bit a2e25,bit a2e26,bit a2e27,
bit a2e28,bit a2e29,bit a2e2a,bit a2e2b,bit a2e2c,bit a2e2d,bit a2e2e,bit a2e2f,
bit a2e30,bit a2e31,bit a2e32,bit a2e33,bit a2e34,bit a2e35,bit a2e36,bit a2e37,
bit a2e38,bit a2e39,bit a2e3a,bit a2e3b,bit a2e3c,bit a2e3d,bit a2e3e,bit a2e3f,
bit a2f00,bit a2f01,bit a2f02,bit a2f03,bit a2f04,bit a2f05,bit a2f06,bit a2f07,
bit a2f08,bit a2f09,bit a2f0a,bit a2f0b,bit a2f0c,bit a2f0d,bit a2f0e,bit a2f0f,
bit a2f10,bit a2f11,bit a2f12,bit a2f13,bit a2f14,bit a2f15,bit a2f16,bit a2f17,
bit a2f18,bit a2f19,bit a2f1a,bit a2f1b,bit a2f1c,bit a2f1d,bit a2f1e,bit a2f1f,
bit a2f20,bit a2f21,bit a2f22,bit a2f23,bit a2f24,bit a2f25,bit a2f26,bit a2f27,
bit a2f28,bit a2f29,bit a2f2a,bit a2f2b,bit a2f2c,bit a2f2d,bit a2f2e,bit a2f2f,
bit a2f30,bit a2f31,bit a2f32,bit a2f33,bit a2f34,bit a2f35,bit a2f36,bit a2f37,
bit a2f38,bit a2f39,bit a2f3a,bit a2f3b,bit a2f3c,bit a2f3d,bit a2f3e,bit a2f3f,
bit a3000,bit a3001,bit a3002,bit a3003,bit a3004,bit a3005,bit a3006,bit a3007,
bit a3008,bit a3009,bit a300a,bit a300b,bit a300c,bit a300d,bit a300e,bit a300f,
bit a3010,bit a3011,bit a3012,bit a3013,bit a3014,bit a3015,bit a3016,bit a3017,
bit a3018,bit a3019,bit a301a,bit a301b,bit a301c,bit a301d,bit a301e,bit a301f,
bit a3020,bit a3021,bit a3022,bit a3023,bit a3024,bit a3025,bit a3026,bit a3027,
bit a3028,bit a3029,bit a302a,bit a302b,bit a302c,bit a302d,bit a302e,bit a302f,
bit a3030,bit a3031,bit a3032,bit a3033,bit a3034,bit a3035,bit a3036,bit a3037,
bit a3038,bit a3039,bit a303a,bit a303b,bit a303c,bit a303d,bit a303e,bit a303f,
bit a3100,bit a3101,bit a3102,bit a3103,bit a3104,bit a3105,bit a3106,bit a3107,
bit a3108,bit a3109,bit a310a,bit a310b,bit a310c,bit a310d,bit a310e,bit a310f,
bit a3110,bit a3111,bit a3112,bit a3113,bit a3114,bit a3115,bit a3116,bit a3117,
bit a3118,bit a3119,bit a311a,bit a311b,bit a311c,bit a311d,bit a311e,bit a311f,
bit a3120,bit a3121,bit a3122,bit a3123,bit a3124,bit a3125,bit a3126,bit a3127,
bit a3128,bit a3129,bit a312a,bit a312b,bit a312c,bit a312d,bit a312e,bit a312f,
bit a3130,bit a3131,bit a3132,bit a3133,bit a3134,bit a3135,bit a3136,bit a3137,
bit a3138,bit a3139,bit a313a,bit a313b,bit a313c,bit a313d,bit a313e,bit a313f,
bit a3200,bit a3201,bit a3202,bit a3203,bit a3204,bit a3205,bit a3206,bit a3207,
bit a3208,bit a3209,bit a320a,bit a320b,bit a320c,bit a320d,bit a320e,bit a320f,
bit a3210,bit a3211,bit a3212,bit a3213,bit a3214,bit a3215,bit a3216,bit a3217,
bit a3218,bit a3219,bit a321a,bit a321b,bit a321c,bit a321d,bit a321e,bit a321f,
bit a3220,bit a3221,bit a3222,bit a3223,bit a3224,bit a3225,bit a3226,bit a3227,
bit a3228,bit a3229,bit a322a,bit a322b,bit a322c,bit a322d,bit a322e,bit a322f,
bit a3230,bit a3231,bit a3232,bit a3233,bit a3234,bit a3235,bit a3236,bit a3237,
bit a3238,bit a3239,bit a323a,bit a323b,bit a323c,bit a323d,bit a323e,bit a323f,
bit a3300,bit a3301,bit a3302,bit a3303,bit a3304,bit a3305,bit a3306,bit a3307,
bit a3308,bit a3309,bit a330a,bit a330b,bit a330c,bit a330d,bit a330e,bit a330f,
bit a3310,bit a3311,bit a3312,bit a3313,bit a3314,bit a3315,bit a3316,bit a3317,
bit a3318,bit a3319,bit a331a,bit a331b,bit a331c,bit a331d,bit a331e,bit a331f,
bit a3320,bit a3321,bit a3322,bit a3323,bit a3324,bit a3325,bit a3326,bit a3327,
bit a3328,bit a3329,bit a332a,bit a332b,bit a332c,bit a332d,bit a332e,bit a332f,
bit a3330,bit a3331,bit a3332,bit a3333,bit a3334,bit a3335,bit a3336,bit a3337,
bit a3338,bit a3339,bit a333a,bit a333b,bit a333c,bit a333d,bit a333e,bit a333f,
bit a3400,bit a3401,bit a3402,bit a3403,bit a3404,bit a3405,bit a3406,bit a3407,
bit a3408,bit a3409,bit a340a,bit a340b,bit a340c,bit a340d,bit a340e,bit a340f,
bit a3410,bit a3411,bit a3412,bit a3413,bit a3414,bit a3415,bit a3416,bit a3417,
bit a3418,bit a3419,bit a341a,bit a341b,bit a341c,bit a341d,bit a341e,bit a341f,
bit a3420,bit a3421,bit a3422,bit a3423,bit a3424,bit a3425,bit a3426,bit a3427,
bit a3428,bit a3429,bit a342a,bit a342b,bit a342c,bit a342d,bit a342e,bit a342f,
bit a3430,bit a3431,bit a3432,bit a3433,bit a3434,bit a3435,bit a3436,bit a3437,
bit a3438,bit a3439,bit a343a,bit a343b,bit a343c,bit a343d,bit a343e,bit a343f,
bit a3500,bit a3501,bit a3502,bit a3503,bit a3504,bit a3505,bit a3506,bit a3507,
bit a3508,bit a3509,bit a350a,bit a350b,bit a350c,bit a350d,bit a350e,bit a350f,
bit a3510,bit a3511,bit a3512,bit a3513,bit a3514,bit a3515,bit a3516,bit a3517,
bit a3518,bit a3519,bit a351a,bit a351b,bit a351c,bit a351d,bit a351e,bit a351f,
bit a3520,bit a3521,bit a3522,bit a3523,bit a3524,bit a3525,bit a3526,bit a3527,
bit a3528,bit a3529,bit a352a,bit a352b,bit a352c,bit a352d,bit a352e,bit a352f,
bit a3530,bit a3531,bit a3532,bit a3533,bit a3534,bit a3535,bit a3536,bit a3537,
bit a3538,bit a3539,bit a353a,bit a353b,bit a353c,bit a353d,bit a353e,bit a353f,
bit a3600,bit a3601,bit a3602,bit a3603,bit a3604,bit a3605,bit a3606,bit a3607,
bit a3608,bit a3609,bit a360a,bit a360b,bit a360c,bit a360d,bit a360e,bit a360f,
bit a3610,bit a3611,bit a3612,bit a3613,bit a3614,bit a3615,bit a3616,bit a3617,
bit a3618,bit a3619,bit a361a,bit a361b,bit a361c,bit a361d,bit a361e,bit a361f,
bit a3620,bit a3621,bit a3622,bit a3623,bit a3624,bit a3625,bit a3626,bit a3627,
bit a3628,bit a3629,bit a362a,bit a362b,bit a362c,bit a362d,bit a362e,bit a362f,
bit a3630,bit a3631,bit a3632,bit a3633,bit a3634,bit a3635,bit a3636,bit a3637,
bit a3638,bit a3639,bit a363a,bit a363b,bit a363c,bit a363d,bit a363e,bit a363f,
bit a3700,bit a3701,bit a3702,bit a3703,bit a3704,bit a3705,bit a3706,bit a3707,
bit a3708,bit a3709,bit a370a,bit a370b,bit a370c,bit a370d,bit a370e,bit a370f,
bit a3710,bit a3711,bit a3712,bit a3713,bit a3714,bit a3715,bit a3716,bit a3717,
bit a3718,bit a3719,bit a371a,bit a371b,bit a371c,bit a371d,bit a371e,bit a371f,
bit a3720,bit a3721,bit a3722,bit a3723,bit a3724,bit a3725,bit a3726,bit a3727,
bit a3728,bit a3729,bit a372a,bit a372b,bit a372c,bit a372d,bit a372e,bit a372f,
bit a3730,bit a3731,bit a3732,bit a3733,bit a3734,bit a3735,bit a3736,bit a3737,
bit a3738,bit a3739,bit a373a,bit a373b,bit a373c,bit a373d,bit a373e,bit a373f,
bit a3800,bit a3801,bit a3802,bit a3803,bit a3804,bit a3805,bit a3806,bit a3807,
bit a3808,bit a3809,bit a380a,bit a380b,bit a380c,bit a380d,bit a380e,bit a380f,
bit a3810,bit a3811,bit a3812,bit a3813,bit a3814,bit a3815,bit a3816,bit a3817,
bit a3818,bit a3819,bit a381a,bit a381b,bit a381c,bit a381d,bit a381e,bit a381f,
bit a3820,bit a3821,bit a3822,bit a3823,bit a3824,bit a3825,bit a3826,bit a3827,
bit a3828,bit a3829,bit a382a,bit a382b,bit a382c,bit a382d,bit a382e,bit a382f,
bit a3830,bit a3831,bit a3832,bit a3833,bit a3834,bit a3835,bit a3836,bit a3837,
bit a3838,bit a3839,bit a383a,bit a383b,bit a383c,bit a383d,bit a383e,bit a383f,
bit a3900,bit a3901,bit a3902,bit a3903,bit a3904,bit a3905,bit a3906,bit a3907,
bit a3908,bit a3909,bit a390a,bit a390b,bit a390c,bit a390d,bit a390e,bit a390f,
bit a3910,bit a3911,bit a3912,bit a3913,bit a3914,bit a3915,bit a3916,bit a3917,
bit a3918,bit a3919,bit a391a,bit a391b,bit a391c,bit a391d,bit a391e,bit a391f,
bit a3920,bit a3921,bit a3922,bit a3923,bit a3924,bit a3925,bit a3926,bit a3927,
bit a3928,bit a3929,bit a392a,bit a392b,bit a392c,bit a392d,bit a392e,bit a392f,
bit a3930,bit a3931,bit a3932,bit a3933,bit a3934,bit a3935,bit a3936,bit a3937,
bit a3938,bit a3939,bit a393a,bit a393b,bit a393c,bit a393d,bit a393e,bit a393f,
bit a3a00,bit a3a01,bit a3a02,bit a3a03,bit a3a04,bit a3a05,bit a3a06,bit a3a07,
bit a3a08,bit a3a09,bit a3a0a,bit a3a0b,bit a3a0c,bit a3a0d,bit a3a0e,bit a3a0f,
bit a3a10,bit a3a11,bit a3a12,bit a3a13,bit a3a14,bit a3a15,bit a3a16,bit a3a17,
bit a3a18,bit a3a19,bit a3a1a,bit a3a1b,bit a3a1c,bit a3a1d,bit a3a1e,bit a3a1f,
bit a3a20,bit a3a21,bit a3a22,bit a3a23,bit a3a24,bit a3a25,bit a3a26,bit a3a27,
bit a3a28,bit a3a29,bit a3a2a,bit a3a2b,bit a3a2c,bit a3a2d,bit a3a2e,bit a3a2f,
bit a3a30,bit a3a31,bit a3a32,bit a3a33,bit a3a34,bit a3a35,bit a3a36,bit a3a37,
bit a3a38,bit a3a39,bit a3a3a,bit a3a3b,bit a3a3c,bit a3a3d,bit a3a3e,bit a3a3f,
bit a3b00,bit a3b01,bit a3b02,bit a3b03,bit a3b04,bit a3b05,bit a3b06,bit a3b07,
bit a3b08,bit a3b09,bit a3b0a,bit a3b0b,bit a3b0c,bit a3b0d,bit a3b0e,bit a3b0f,
bit a3b10,bit a3b11,bit a3b12,bit a3b13,bit a3b14,bit a3b15,bit a3b16,bit a3b17,
bit a3b18,bit a3b19,bit a3b1a,bit a3b1b,bit a3b1c,bit a3b1d,bit a3b1e,bit a3b1f,
bit a3b20,bit a3b21,bit a3b22,bit a3b23,bit a3b24,bit a3b25,bit a3b26,bit a3b27,
bit a3b28,bit a3b29,bit a3b2a,bit a3b2b,bit a3b2c,bit a3b2d,bit a3b2e,bit a3b2f,
bit a3b30,bit a3b31,bit a3b32,bit a3b33,bit a3b34,bit a3b35,bit a3b36,bit a3b37,
bit a3b38,bit a3b39,bit a3b3a,bit a3b3b,bit a3b3c,bit a3b3d,bit a3b3e,bit a3b3f,
bit a3c00,bit a3c01,bit a3c02,bit a3c03,bit a3c04,bit a3c05,bit a3c06,bit a3c07,
bit a3c08,bit a3c09,bit a3c0a,bit a3c0b,bit a3c0c,bit a3c0d,bit a3c0e,bit a3c0f,
bit a3c10,bit a3c11,bit a3c12,bit a3c13,bit a3c14,bit a3c15,bit a3c16,bit a3c17,
bit a3c18,bit a3c19,bit a3c1a,bit a3c1b,bit a3c1c,bit a3c1d,bit a3c1e,bit a3c1f,
bit a3c20,bit a3c21,bit a3c22,bit a3c23,bit a3c24,bit a3c25,bit a3c26,bit a3c27,
bit a3c28,bit a3c29,bit a3c2a,bit a3c2b,bit a3c2c,bit a3c2d,bit a3c2e,bit a3c2f,
bit a3c30,bit a3c31,bit a3c32,bit a3c33,bit a3c34,bit a3c35,bit a3c36,bit a3c37,
bit a3c38,bit a3c39,bit a3c3a,bit a3c3b,bit a3c3c,bit a3c3d,bit a3c3e,bit a3c3f,
bit a3d00,bit a3d01,bit a3d02,bit a3d03,bit a3d04,bit a3d05,bit a3d06,bit a3d07,
bit a3d08,bit a3d09,bit a3d0a,bit a3d0b,bit a3d0c,bit a3d0d,bit a3d0e,bit a3d0f,
bit a3d10,bit a3d11,bit a3d12,bit a3d13,bit a3d14,bit a3d15,bit a3d16,bit a3d17,
bit a3d18,bit a3d19,bit a3d1a,bit a3d1b,bit a3d1c,bit a3d1d,bit a3d1e,bit a3d1f,
bit a3d20,bit a3d21,bit a3d22,bit a3d23,bit a3d24,bit a3d25,bit a3d26,bit a3d27,
bit a3d28,bit a3d29,bit a3d2a,bit a3d2b,bit a3d2c,bit a3d2d,bit a3d2e,bit a3d2f,
bit a3d30,bit a3d31,bit a3d32,bit a3d33,bit a3d34,bit a3d35,bit a3d36,bit a3d37,
bit a3d38,bit a3d39,bit a3d3a,bit a3d3b,bit a3d3c,bit a3d3d,bit a3d3e,bit a3d3f,
bit a3e00,bit a3e01,bit a3e02,bit a3e03,bit a3e04,bit a3e05,bit a3e06,bit a3e07,
bit a3e08,bit a3e09,bit a3e0a,bit a3e0b,bit a3e0c,bit a3e0d,bit a3e0e,bit a3e0f,
bit a3e10,bit a3e11,bit a3e12,bit a3e13,bit a3e14,bit a3e15,bit a3e16,bit a3e17,
bit a3e18,bit a3e19,bit a3e1a,bit a3e1b,bit a3e1c,bit a3e1d,bit a3e1e,bit a3e1f,
bit a3e20,bit a3e21,bit a3e22,bit a3e23,bit a3e24,bit a3e25,bit a3e26,bit a3e27,
bit a3e28,bit a3e29,bit a3e2a,bit a3e2b,bit a3e2c,bit a3e2d,bit a3e2e,bit a3e2f,
bit a3e30,bit a3e31,bit a3e32,bit a3e33,bit a3e34,bit a3e35,bit a3e36,bit a3e37,
bit a3e38,bit a3e39,bit a3e3a,bit a3e3b,bit a3e3c,bit a3e3d,bit a3e3e,bit a3e3f,
bit a3f00,bit a3f01,bit a3f02,bit a3f03,bit a3f04,bit a3f05,bit a3f06,bit a3f07,
bit a3f08,bit a3f09,bit a3f0a,bit a3f0b,bit a3f0c,bit a3f0d,bit a3f0e,bit a3f0f,
bit a3f10,bit a3f11,bit a3f12,bit a3f13,bit a3f14,bit a3f15,bit a3f16,bit a3f17,
bit a3f18,bit a3f19,bit a3f1a,bit a3f1b,bit a3f1c,bit a3f1d,bit a3f1e,bit a3f1f,
bit a3f20,bit a3f21,bit a3f22,bit a3f23,bit a3f24,bit a3f25,bit a3f26,bit a3f27,
bit a3f28,bit a3f29,bit a3f2a,bit a3f2b,bit a3f2c,bit a3f2d,bit a3f2e,bit a3f2f,
bit a3f30,bit a3f31,bit a3f32,bit a3f33,bit a3f34,bit a3f35,bit a3f36,bit a3f37,
bit a3f38,bit a3f39,bit a3f3a,bit a3f3b,bit a3f3c,bit a3f3d,bit a3f3e,bit a3f3f
) =
{
  true
  &&
  true
}

mov %P [a0000,a0001,a0002,a0003,a0004,a0005,a0006,a0007,a0008,a0009,a000a,
        a000b,a000c,a000d,a000e,a000f,a0010,a0011,a0012,a0013,a0014,a0015,
        a0016,a0017,a0018,a0019,a001a,a001b,a001c,a001d,a001e,a001f,a0020,
        a0021,a0022,a0023,a0024,a0025,a0026,a0027,a0028,a0029,a002a,a002b,
        a002c,a002d,a002e,a002f,a0030,a0031,a0032,a0033,a0034,a0035,a0036,
        a0037,a0038,a0039,a003a,a003b,a003c,a003d,a003e,a003f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05b0 ] %P64;
mov %P [a0100,a0101,a0102,a0103,a0104,a0105,a0106,a0107,a0108,a0109,a010a,
        a010b,a010c,a010d,a010e,a010f,a0110,a0111,a0112,a0113,a0114,a0115,
        a0116,a0117,a0118,a0119,a011a,a011b,a011c,a011d,a011e,a011f,a0120,
        a0121,a0122,a0123,a0124,a0125,a0126,a0127,a0128,a0129,a012a,a012b,
        a012c,a012d,a012e,a012f,a0130,a0131,a0132,a0133,a0134,a0135,a0136,
        a0137,a0138,a0139,a013a,a013b,a013c,a013d,a013e,a013f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05b8 ] %P64;
mov %P [a0200,a0201,a0202,a0203,a0204,a0205,a0206,a0207,a0208,a0209,a020a,
        a020b,a020c,a020d,a020e,a020f,a0210,a0211,a0212,a0213,a0214,a0215,
        a0216,a0217,a0218,a0219,a021a,a021b,a021c,a021d,a021e,a021f,a0220,
        a0221,a0222,a0223,a0224,a0225,a0226,a0227,a0228,a0229,a022a,a022b,
        a022c,a022d,a022e,a022f,a0230,a0231,a0232,a0233,a0234,a0235,a0236,
        a0237,a0238,a0239,a023a,a023b,a023c,a023d,a023e,a023f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05c0 ] %P64;
mov %P [a0300,a0301,a0302,a0303,a0304,a0305,a0306,a0307,a0308,a0309,a030a,
        a030b,a030c,a030d,a030e,a030f,a0310,a0311,a0312,a0313,a0314,a0315,
        a0316,a0317,a0318,a0319,a031a,a031b,a031c,a031d,a031e,a031f,a0320,
        a0321,a0322,a0323,a0324,a0325,a0326,a0327,a0328,a0329,a032a,a032b,
        a032c,a032d,a032e,a032f,a0330,a0331,a0332,a0333,a0334,a0335,a0336,
        a0337,a0338,a0339,a033a,a033b,a033c,a033d,a033e,a033f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05c8 ] %P64;
mov %P [a0400,a0401,a0402,a0403,a0404,a0405,a0406,a0407,a0408,a0409,a040a,
        a040b,a040c,a040d,a040e,a040f,a0410,a0411,a0412,a0413,a0414,a0415,
        a0416,a0417,a0418,a0419,a041a,a041b,a041c,a041d,a041e,a041f,a0420,
        a0421,a0422,a0423,a0424,a0425,a0426,a0427,a0428,a0429,a042a,a042b,
        a042c,a042d,a042e,a042f,a0430,a0431,a0432,a0433,a0434,a0435,a0436,
        a0437,a0438,a0439,a043a,a043b,a043c,a043d,a043e,a043f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05d0 ] %P64;
mov %P [a0500,a0501,a0502,a0503,a0504,a0505,a0506,a0507,a0508,a0509,a050a,
        a050b,a050c,a050d,a050e,a050f,a0510,a0511,a0512,a0513,a0514,a0515,
        a0516,a0517,a0518,a0519,a051a,a051b,a051c,a051d,a051e,a051f,a0520,
        a0521,a0522,a0523,a0524,a0525,a0526,a0527,a0528,a0529,a052a,a052b,
        a052c,a052d,a052e,a052f,a0530,a0531,a0532,a0533,a0534,a0535,a0536,
        a0537,a0538,a0539,a053a,a053b,a053c,a053d,a053e,a053f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05d8 ] %P64;
mov %P [a0600,a0601,a0602,a0603,a0604,a0605,a0606,a0607,a0608,a0609,a060a,
        a060b,a060c,a060d,a060e,a060f,a0610,a0611,a0612,a0613,a0614,a0615,
        a0616,a0617,a0618,a0619,a061a,a061b,a061c,a061d,a061e,a061f,a0620,
        a0621,a0622,a0623,a0624,a0625,a0626,a0627,a0628,a0629,a062a,a062b,
        a062c,a062d,a062e,a062f,a0630,a0631,a0632,a0633,a0634,a0635,a0636,
        a0637,a0638,a0639,a063a,a063b,a063c,a063d,a063e,a063f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05e0 ] %P64;
mov %P [a0700,a0701,a0702,a0703,a0704,a0705,a0706,a0707,a0708,a0709,a070a,
        a070b,a070c,a070d,a070e,a070f,a0710,a0711,a0712,a0713,a0714,a0715,
        a0716,a0717,a0718,a0719,a071a,a071b,a071c,a071d,a071e,a071f,a0720,
        a0721,a0722,a0723,a0724,a0725,a0726,a0727,a0728,a0729,a072a,a072b,
        a072c,a072d,a072e,a072f,a0730,a0731,a0732,a0733,a0734,a0735,a0736,
        a0737,a0738,a0739,a073a,a073b,a073c,a073d,a073e,a073f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05e8 ] %P64;
mov %P [a0800,a0801,a0802,a0803,a0804,a0805,a0806,a0807,a0808,a0809,a080a,
        a080b,a080c,a080d,a080e,a080f,a0810,a0811,a0812,a0813,a0814,a0815,
        a0816,a0817,a0818,a0819,a081a,a081b,a081c,a081d,a081e,a081f,a0820,
        a0821,a0822,a0823,a0824,a0825,a0826,a0827,a0828,a0829,a082a,a082b,
        a082c,a082d,a082e,a082f,a0830,a0831,a0832,a0833,a0834,a0835,a0836,
        a0837,a0838,a0839,a083a,a083b,a083c,a083d,a083e,a083f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05f0 ] %P64;
mov %P [a0900,a0901,a0902,a0903,a0904,a0905,a0906,a0907,a0908,a0909,a090a,
        a090b,a090c,a090d,a090e,a090f,a0910,a0911,a0912,a0913,a0914,a0915,
        a0916,a0917,a0918,a0919,a091a,a091b,a091c,a091d,a091e,a091f,a0920,
        a0921,a0922,a0923,a0924,a0925,a0926,a0927,a0928,a0929,a092a,a092b,
        a092c,a092d,a092e,a092f,a0930,a0931,a0932,a0933,a0934,a0935,a0936,
        a0937,a0938,a0939,a093a,a093b,a093c,a093d,a093e,a093f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff05f8 ] %P64;
mov %P [a0a00,a0a01,a0a02,a0a03,a0a04,a0a05,a0a06,a0a07,a0a08,a0a09,a0a0a,
        a0a0b,a0a0c,a0a0d,a0a0e,a0a0f,a0a10,a0a11,a0a12,a0a13,a0a14,a0a15,
        a0a16,a0a17,a0a18,a0a19,a0a1a,a0a1b,a0a1c,a0a1d,a0a1e,a0a1f,a0a20,
        a0a21,a0a22,a0a23,a0a24,a0a25,a0a26,a0a27,a0a28,a0a29,a0a2a,a0a2b,
        a0a2c,a0a2d,a0a2e,a0a2f,a0a30,a0a31,a0a32,a0a33,a0a34,a0a35,a0a36,
        a0a37,a0a38,a0a39,a0a3a,a0a3b,a0a3c,a0a3d,a0a3e,a0a3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0600 ] %P64;
mov %P [a0b00,a0b01,a0b02,a0b03,a0b04,a0b05,a0b06,a0b07,a0b08,a0b09,a0b0a,
        a0b0b,a0b0c,a0b0d,a0b0e,a0b0f,a0b10,a0b11,a0b12,a0b13,a0b14,a0b15,
        a0b16,a0b17,a0b18,a0b19,a0b1a,a0b1b,a0b1c,a0b1d,a0b1e,a0b1f,a0b20,
        a0b21,a0b22,a0b23,a0b24,a0b25,a0b26,a0b27,a0b28,a0b29,a0b2a,a0b2b,
        a0b2c,a0b2d,a0b2e,a0b2f,a0b30,a0b31,a0b32,a0b33,a0b34,a0b35,a0b36,
        a0b37,a0b38,a0b39,a0b3a,a0b3b,a0b3c,a0b3d,a0b3e,a0b3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0608 ] %P64;
mov %P [a0c00,a0c01,a0c02,a0c03,a0c04,a0c05,a0c06,a0c07,a0c08,a0c09,a0c0a,
        a0c0b,a0c0c,a0c0d,a0c0e,a0c0f,a0c10,a0c11,a0c12,a0c13,a0c14,a0c15,
        a0c16,a0c17,a0c18,a0c19,a0c1a,a0c1b,a0c1c,a0c1d,a0c1e,a0c1f,a0c20,
        a0c21,a0c22,a0c23,a0c24,a0c25,a0c26,a0c27,a0c28,a0c29,a0c2a,a0c2b,
        a0c2c,a0c2d,a0c2e,a0c2f,a0c30,a0c31,a0c32,a0c33,a0c34,a0c35,a0c36,
        a0c37,a0c38,a0c39,a0c3a,a0c3b,a0c3c,a0c3d,a0c3e,a0c3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0610 ] %P64;
mov %P [a0d00,a0d01,a0d02,a0d03,a0d04,a0d05,a0d06,a0d07,a0d08,a0d09,a0d0a,
        a0d0b,a0d0c,a0d0d,a0d0e,a0d0f,a0d10,a0d11,a0d12,a0d13,a0d14,a0d15,
        a0d16,a0d17,a0d18,a0d19,a0d1a,a0d1b,a0d1c,a0d1d,a0d1e,a0d1f,a0d20,
        a0d21,a0d22,a0d23,a0d24,a0d25,a0d26,a0d27,a0d28,a0d29,a0d2a,a0d2b,
        a0d2c,a0d2d,a0d2e,a0d2f,a0d30,a0d31,a0d32,a0d33,a0d34,a0d35,a0d36,
        a0d37,a0d38,a0d39,a0d3a,a0d3b,a0d3c,a0d3d,a0d3e,a0d3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0618 ] %P64;
mov %P [a0e00,a0e01,a0e02,a0e03,a0e04,a0e05,a0e06,a0e07,a0e08,a0e09,a0e0a,
        a0e0b,a0e0c,a0e0d,a0e0e,a0e0f,a0e10,a0e11,a0e12,a0e13,a0e14,a0e15,
        a0e16,a0e17,a0e18,a0e19,a0e1a,a0e1b,a0e1c,a0e1d,a0e1e,a0e1f,a0e20,
        a0e21,a0e22,a0e23,a0e24,a0e25,a0e26,a0e27,a0e28,a0e29,a0e2a,a0e2b,
        a0e2c,a0e2d,a0e2e,a0e2f,a0e30,a0e31,a0e32,a0e33,a0e34,a0e35,a0e36,
        a0e37,a0e38,a0e39,a0e3a,a0e3b,a0e3c,a0e3d,a0e3e,a0e3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0620 ] %P64;
mov %P [a0f00,a0f01,a0f02,a0f03,a0f04,a0f05,a0f06,a0f07,a0f08,a0f09,a0f0a,
        a0f0b,a0f0c,a0f0d,a0f0e,a0f0f,a0f10,a0f11,a0f12,a0f13,a0f14,a0f15,
        a0f16,a0f17,a0f18,a0f19,a0f1a,a0f1b,a0f1c,a0f1d,a0f1e,a0f1f,a0f20,
        a0f21,a0f22,a0f23,a0f24,a0f25,a0f26,a0f27,a0f28,a0f29,a0f2a,a0f2b,
        a0f2c,a0f2d,a0f2e,a0f2f,a0f30,a0f31,a0f32,a0f33,a0f34,a0f35,a0f36,
        a0f37,a0f38,a0f39,a0f3a,a0f3b,a0f3c,a0f3d,a0f3e,a0f3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0628 ] %P64;
mov %P [a1000,a1001,a1002,a1003,a1004,a1005,a1006,a1007,a1008,a1009,a100a,
        a100b,a100c,a100d,a100e,a100f,a1010,a1011,a1012,a1013,a1014,a1015,
        a1016,a1017,a1018,a1019,a101a,a101b,a101c,a101d,a101e,a101f,a1020,
        a1021,a1022,a1023,a1024,a1025,a1026,a1027,a1028,a1029,a102a,a102b,
        a102c,a102d,a102e,a102f,a1030,a1031,a1032,a1033,a1034,a1035,a1036,
        a1037,a1038,a1039,a103a,a103b,a103c,a103d,a103e,a103f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0630 ] %P64;
mov %P [a1100,a1101,a1102,a1103,a1104,a1105,a1106,a1107,a1108,a1109,a110a,
        a110b,a110c,a110d,a110e,a110f,a1110,a1111,a1112,a1113,a1114,a1115,
        a1116,a1117,a1118,a1119,a111a,a111b,a111c,a111d,a111e,a111f,a1120,
        a1121,a1122,a1123,a1124,a1125,a1126,a1127,a1128,a1129,a112a,a112b,
        a112c,a112d,a112e,a112f,a1130,a1131,a1132,a1133,a1134,a1135,a1136,
        a1137,a1138,a1139,a113a,a113b,a113c,a113d,a113e,a113f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0638 ] %P64;
mov %P [a1200,a1201,a1202,a1203,a1204,a1205,a1206,a1207,a1208,a1209,a120a,
        a120b,a120c,a120d,a120e,a120f,a1210,a1211,a1212,a1213,a1214,a1215,
        a1216,a1217,a1218,a1219,a121a,a121b,a121c,a121d,a121e,a121f,a1220,
        a1221,a1222,a1223,a1224,a1225,a1226,a1227,a1228,a1229,a122a,a122b,
        a122c,a122d,a122e,a122f,a1230,a1231,a1232,a1233,a1234,a1235,a1236,
        a1237,a1238,a1239,a123a,a123b,a123c,a123d,a123e,a123f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0640 ] %P64;
mov %P [a1300,a1301,a1302,a1303,a1304,a1305,a1306,a1307,a1308,a1309,a130a,
        a130b,a130c,a130d,a130e,a130f,a1310,a1311,a1312,a1313,a1314,a1315,
        a1316,a1317,a1318,a1319,a131a,a131b,a131c,a131d,a131e,a131f,a1320,
        a1321,a1322,a1323,a1324,a1325,a1326,a1327,a1328,a1329,a132a,a132b,
        a132c,a132d,a132e,a132f,a1330,a1331,a1332,a1333,a1334,a1335,a1336,
        a1337,a1338,a1339,a133a,a133b,a133c,a133d,a133e,a133f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0648 ] %P64;
mov %P [a1400,a1401,a1402,a1403,a1404,a1405,a1406,a1407,a1408,a1409,a140a,
        a140b,a140c,a140d,a140e,a140f,a1410,a1411,a1412,a1413,a1414,a1415,
        a1416,a1417,a1418,a1419,a141a,a141b,a141c,a141d,a141e,a141f,a1420,
        a1421,a1422,a1423,a1424,a1425,a1426,a1427,a1428,a1429,a142a,a142b,
        a142c,a142d,a142e,a142f,a1430,a1431,a1432,a1433,a1434,a1435,a1436,
        a1437,a1438,a1439,a143a,a143b,a143c,a143d,a143e,a143f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0650 ] %P64;
mov %P [a1500,a1501,a1502,a1503,a1504,a1505,a1506,a1507,a1508,a1509,a150a,
        a150b,a150c,a150d,a150e,a150f,a1510,a1511,a1512,a1513,a1514,a1515,
        a1516,a1517,a1518,a1519,a151a,a151b,a151c,a151d,a151e,a151f,a1520,
        a1521,a1522,a1523,a1524,a1525,a1526,a1527,a1528,a1529,a152a,a152b,
        a152c,a152d,a152e,a152f,a1530,a1531,a1532,a1533,a1534,a1535,a1536,
        a1537,a1538,a1539,a153a,a153b,a153c,a153d,a153e,a153f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0658 ] %P64;
mov %P [a1600,a1601,a1602,a1603,a1604,a1605,a1606,a1607,a1608,a1609,a160a,
        a160b,a160c,a160d,a160e,a160f,a1610,a1611,a1612,a1613,a1614,a1615,
        a1616,a1617,a1618,a1619,a161a,a161b,a161c,a161d,a161e,a161f,a1620,
        a1621,a1622,a1623,a1624,a1625,a1626,a1627,a1628,a1629,a162a,a162b,
        a162c,a162d,a162e,a162f,a1630,a1631,a1632,a1633,a1634,a1635,a1636,
        a1637,a1638,a1639,a163a,a163b,a163c,a163d,a163e,a163f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0660 ] %P64;
mov %P [a1700,a1701,a1702,a1703,a1704,a1705,a1706,a1707,a1708,a1709,a170a,
        a170b,a170c,a170d,a170e,a170f,a1710,a1711,a1712,a1713,a1714,a1715,
        a1716,a1717,a1718,a1719,a171a,a171b,a171c,a171d,a171e,a171f,a1720,
        a1721,a1722,a1723,a1724,a1725,a1726,a1727,a1728,a1729,a172a,a172b,
        a172c,a172d,a172e,a172f,a1730,a1731,a1732,a1733,a1734,a1735,a1736,
        a1737,a1738,a1739,a173a,a173b,a173c,a173d,a173e,a173f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0668 ] %P64;
mov %P [a1800,a1801,a1802,a1803,a1804,a1805,a1806,a1807,a1808,a1809,a180a,
        a180b,a180c,a180d,a180e,a180f,a1810,a1811,a1812,a1813,a1814,a1815,
        a1816,a1817,a1818,a1819,a181a,a181b,a181c,a181d,a181e,a181f,a1820,
        a1821,a1822,a1823,a1824,a1825,a1826,a1827,a1828,a1829,a182a,a182b,
        a182c,a182d,a182e,a182f,a1830,a1831,a1832,a1833,a1834,a1835,a1836,
        a1837,a1838,a1839,a183a,a183b,a183c,a183d,a183e,a183f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0670 ] %P64;
mov %P [a1900,a1901,a1902,a1903,a1904,a1905,a1906,a1907,a1908,a1909,a190a,
        a190b,a190c,a190d,a190e,a190f,a1910,a1911,a1912,a1913,a1914,a1915,
        a1916,a1917,a1918,a1919,a191a,a191b,a191c,a191d,a191e,a191f,a1920,
        a1921,a1922,a1923,a1924,a1925,a1926,a1927,a1928,a1929,a192a,a192b,
        a192c,a192d,a192e,a192f,a1930,a1931,a1932,a1933,a1934,a1935,a1936,
        a1937,a1938,a1939,a193a,a193b,a193c,a193d,a193e,a193f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0678 ] %P64;
mov %P [a1a00,a1a01,a1a02,a1a03,a1a04,a1a05,a1a06,a1a07,a1a08,a1a09,a1a0a,
        a1a0b,a1a0c,a1a0d,a1a0e,a1a0f,a1a10,a1a11,a1a12,a1a13,a1a14,a1a15,
        a1a16,a1a17,a1a18,a1a19,a1a1a,a1a1b,a1a1c,a1a1d,a1a1e,a1a1f,a1a20,
        a1a21,a1a22,a1a23,a1a24,a1a25,a1a26,a1a27,a1a28,a1a29,a1a2a,a1a2b,
        a1a2c,a1a2d,a1a2e,a1a2f,a1a30,a1a31,a1a32,a1a33,a1a34,a1a35,a1a36,
        a1a37,a1a38,a1a39,a1a3a,a1a3b,a1a3c,a1a3d,a1a3e,a1a3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0680 ] %P64;
mov %P [a1b00,a1b01,a1b02,a1b03,a1b04,a1b05,a1b06,a1b07,a1b08,a1b09,a1b0a,
        a1b0b,a1b0c,a1b0d,a1b0e,a1b0f,a1b10,a1b11,a1b12,a1b13,a1b14,a1b15,
        a1b16,a1b17,a1b18,a1b19,a1b1a,a1b1b,a1b1c,a1b1d,a1b1e,a1b1f,a1b20,
        a1b21,a1b22,a1b23,a1b24,a1b25,a1b26,a1b27,a1b28,a1b29,a1b2a,a1b2b,
        a1b2c,a1b2d,a1b2e,a1b2f,a1b30,a1b31,a1b32,a1b33,a1b34,a1b35,a1b36,
        a1b37,a1b38,a1b39,a1b3a,a1b3b,a1b3c,a1b3d,a1b3e,a1b3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0688 ] %P64;
mov %P [a1c00,a1c01,a1c02,a1c03,a1c04,a1c05,a1c06,a1c07,a1c08,a1c09,a1c0a,
        a1c0b,a1c0c,a1c0d,a1c0e,a1c0f,a1c10,a1c11,a1c12,a1c13,a1c14,a1c15,
        a1c16,a1c17,a1c18,a1c19,a1c1a,a1c1b,a1c1c,a1c1d,a1c1e,a1c1f,a1c20,
        a1c21,a1c22,a1c23,a1c24,a1c25,a1c26,a1c27,a1c28,a1c29,a1c2a,a1c2b,
        a1c2c,a1c2d,a1c2e,a1c2f,a1c30,a1c31,a1c32,a1c33,a1c34,a1c35,a1c36,
        a1c37,a1c38,a1c39,a1c3a,a1c3b,a1c3c,a1c3d,a1c3e,a1c3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0690 ] %P64;
mov %P [a1d00,a1d01,a1d02,a1d03,a1d04,a1d05,a1d06,a1d07,a1d08,a1d09,a1d0a,
        a1d0b,a1d0c,a1d0d,a1d0e,a1d0f,a1d10,a1d11,a1d12,a1d13,a1d14,a1d15,
        a1d16,a1d17,a1d18,a1d19,a1d1a,a1d1b,a1d1c,a1d1d,a1d1e,a1d1f,a1d20,
        a1d21,a1d22,a1d23,a1d24,a1d25,a1d26,a1d27,a1d28,a1d29,a1d2a,a1d2b,
        a1d2c,a1d2d,a1d2e,a1d2f,a1d30,a1d31,a1d32,a1d33,a1d34,a1d35,a1d36,
        a1d37,a1d38,a1d39,a1d3a,a1d3b,a1d3c,a1d3d,a1d3e,a1d3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0698 ] %P64;
mov %P [a1e00,a1e01,a1e02,a1e03,a1e04,a1e05,a1e06,a1e07,a1e08,a1e09,a1e0a,
        a1e0b,a1e0c,a1e0d,a1e0e,a1e0f,a1e10,a1e11,a1e12,a1e13,a1e14,a1e15,
        a1e16,a1e17,a1e18,a1e19,a1e1a,a1e1b,a1e1c,a1e1d,a1e1e,a1e1f,a1e20,
        a1e21,a1e22,a1e23,a1e24,a1e25,a1e26,a1e27,a1e28,a1e29,a1e2a,a1e2b,
        a1e2c,a1e2d,a1e2e,a1e2f,a1e30,a1e31,a1e32,a1e33,a1e34,a1e35,a1e36,
        a1e37,a1e38,a1e39,a1e3a,a1e3b,a1e3c,a1e3d,a1e3e,a1e3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06a0 ] %P64;
mov %P [a1f00,a1f01,a1f02,a1f03,a1f04,a1f05,a1f06,a1f07,a1f08,a1f09,a1f0a,
        a1f0b,a1f0c,a1f0d,a1f0e,a1f0f,a1f10,a1f11,a1f12,a1f13,a1f14,a1f15,
        a1f16,a1f17,a1f18,a1f19,a1f1a,a1f1b,a1f1c,a1f1d,a1f1e,a1f1f,a1f20,
        a1f21,a1f22,a1f23,a1f24,a1f25,a1f26,a1f27,a1f28,a1f29,a1f2a,a1f2b,
        a1f2c,a1f2d,a1f2e,a1f2f,a1f30,a1f31,a1f32,a1f33,a1f34,a1f35,a1f36,
        a1f37,a1f38,a1f39,a1f3a,a1f3b,a1f3c,a1f3d,a1f3e,a1f3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06a8 ] %P64;
mov %P [a2000,a2001,a2002,a2003,a2004,a2005,a2006,a2007,a2008,a2009,a200a,
        a200b,a200c,a200d,a200e,a200f,a2010,a2011,a2012,a2013,a2014,a2015,
        a2016,a2017,a2018,a2019,a201a,a201b,a201c,a201d,a201e,a201f,a2020,
        a2021,a2022,a2023,a2024,a2025,a2026,a2027,a2028,a2029,a202a,a202b,
        a202c,a202d,a202e,a202f,a2030,a2031,a2032,a2033,a2034,a2035,a2036,
        a2037,a2038,a2039,a203a,a203b,a203c,a203d,a203e,a203f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06b0 ] %P64;
mov %P [a2100,a2101,a2102,a2103,a2104,a2105,a2106,a2107,a2108,a2109,a210a,
        a210b,a210c,a210d,a210e,a210f,a2110,a2111,a2112,a2113,a2114,a2115,
        a2116,a2117,a2118,a2119,a211a,a211b,a211c,a211d,a211e,a211f,a2120,
        a2121,a2122,a2123,a2124,a2125,a2126,a2127,a2128,a2129,a212a,a212b,
        a212c,a212d,a212e,a212f,a2130,a2131,a2132,a2133,a2134,a2135,a2136,
        a2137,a2138,a2139,a213a,a213b,a213c,a213d,a213e,a213f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06b8 ] %P64;
mov %P [a2200,a2201,a2202,a2203,a2204,a2205,a2206,a2207,a2208,a2209,a220a,
        a220b,a220c,a220d,a220e,a220f,a2210,a2211,a2212,a2213,a2214,a2215,
        a2216,a2217,a2218,a2219,a221a,a221b,a221c,a221d,a221e,a221f,a2220,
        a2221,a2222,a2223,a2224,a2225,a2226,a2227,a2228,a2229,a222a,a222b,
        a222c,a222d,a222e,a222f,a2230,a2231,a2232,a2233,a2234,a2235,a2236,
        a2237,a2238,a2239,a223a,a223b,a223c,a223d,a223e,a223f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06c0 ] %P64;
mov %P [a2300,a2301,a2302,a2303,a2304,a2305,a2306,a2307,a2308,a2309,a230a,
        a230b,a230c,a230d,a230e,a230f,a2310,a2311,a2312,a2313,a2314,a2315,
        a2316,a2317,a2318,a2319,a231a,a231b,a231c,a231d,a231e,a231f,a2320,
        a2321,a2322,a2323,a2324,a2325,a2326,a2327,a2328,a2329,a232a,a232b,
        a232c,a232d,a232e,a232f,a2330,a2331,a2332,a2333,a2334,a2335,a2336,
        a2337,a2338,a2339,a233a,a233b,a233c,a233d,a233e,a233f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06c8 ] %P64;
mov %P [a2400,a2401,a2402,a2403,a2404,a2405,a2406,a2407,a2408,a2409,a240a,
        a240b,a240c,a240d,a240e,a240f,a2410,a2411,a2412,a2413,a2414,a2415,
        a2416,a2417,a2418,a2419,a241a,a241b,a241c,a241d,a241e,a241f,a2420,
        a2421,a2422,a2423,a2424,a2425,a2426,a2427,a2428,a2429,a242a,a242b,
        a242c,a242d,a242e,a242f,a2430,a2431,a2432,a2433,a2434,a2435,a2436,
        a2437,a2438,a2439,a243a,a243b,a243c,a243d,a243e,a243f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06d0 ] %P64;
mov %P [a2500,a2501,a2502,a2503,a2504,a2505,a2506,a2507,a2508,a2509,a250a,
        a250b,a250c,a250d,a250e,a250f,a2510,a2511,a2512,a2513,a2514,a2515,
        a2516,a2517,a2518,a2519,a251a,a251b,a251c,a251d,a251e,a251f,a2520,
        a2521,a2522,a2523,a2524,a2525,a2526,a2527,a2528,a2529,a252a,a252b,
        a252c,a252d,a252e,a252f,a2530,a2531,a2532,a2533,a2534,a2535,a2536,
        a2537,a2538,a2539,a253a,a253b,a253c,a253d,a253e,a253f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06d8 ] %P64;
mov %P [a2600,a2601,a2602,a2603,a2604,a2605,a2606,a2607,a2608,a2609,a260a,
        a260b,a260c,a260d,a260e,a260f,a2610,a2611,a2612,a2613,a2614,a2615,
        a2616,a2617,a2618,a2619,a261a,a261b,a261c,a261d,a261e,a261f,a2620,
        a2621,a2622,a2623,a2624,a2625,a2626,a2627,a2628,a2629,a262a,a262b,
        a262c,a262d,a262e,a262f,a2630,a2631,a2632,a2633,a2634,a2635,a2636,
        a2637,a2638,a2639,a263a,a263b,a263c,a263d,a263e,a263f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06e0 ] %P64;
mov %P [a2700,a2701,a2702,a2703,a2704,a2705,a2706,a2707,a2708,a2709,a270a,
        a270b,a270c,a270d,a270e,a270f,a2710,a2711,a2712,a2713,a2714,a2715,
        a2716,a2717,a2718,a2719,a271a,a271b,a271c,a271d,a271e,a271f,a2720,
        a2721,a2722,a2723,a2724,a2725,a2726,a2727,a2728,a2729,a272a,a272b,
        a272c,a272d,a272e,a272f,a2730,a2731,a2732,a2733,a2734,a2735,a2736,
        a2737,a2738,a2739,a273a,a273b,a273c,a273d,a273e,a273f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06e8 ] %P64;
mov %P [a2800,a2801,a2802,a2803,a2804,a2805,a2806,a2807,a2808,a2809,a280a,
        a280b,a280c,a280d,a280e,a280f,a2810,a2811,a2812,a2813,a2814,a2815,
        a2816,a2817,a2818,a2819,a281a,a281b,a281c,a281d,a281e,a281f,a2820,
        a2821,a2822,a2823,a2824,a2825,a2826,a2827,a2828,a2829,a282a,a282b,
        a282c,a282d,a282e,a282f,a2830,a2831,a2832,a2833,a2834,a2835,a2836,
        a2837,a2838,a2839,a283a,a283b,a283c,a283d,a283e,a283f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06f0 ] %P64;
mov %P [a2900,a2901,a2902,a2903,a2904,a2905,a2906,a2907,a2908,a2909,a290a,
        a290b,a290c,a290d,a290e,a290f,a2910,a2911,a2912,a2913,a2914,a2915,
        a2916,a2917,a2918,a2919,a291a,a291b,a291c,a291d,a291e,a291f,a2920,
        a2921,a2922,a2923,a2924,a2925,a2926,a2927,a2928,a2929,a292a,a292b,
        a292c,a292d,a292e,a292f,a2930,a2931,a2932,a2933,a2934,a2935,a2936,
        a2937,a2938,a2939,a293a,a293b,a293c,a293d,a293e,a293f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff06f8 ] %P64;
mov %P [a2a00,a2a01,a2a02,a2a03,a2a04,a2a05,a2a06,a2a07,a2a08,a2a09,a2a0a,
        a2a0b,a2a0c,a2a0d,a2a0e,a2a0f,a2a10,a2a11,a2a12,a2a13,a2a14,a2a15,
        a2a16,a2a17,a2a18,a2a19,a2a1a,a2a1b,a2a1c,a2a1d,a2a1e,a2a1f,a2a20,
        a2a21,a2a22,a2a23,a2a24,a2a25,a2a26,a2a27,a2a28,a2a29,a2a2a,a2a2b,
        a2a2c,a2a2d,a2a2e,a2a2f,a2a30,a2a31,a2a32,a2a33,a2a34,a2a35,a2a36,
        a2a37,a2a38,a2a39,a2a3a,a2a3b,a2a3c,a2a3d,a2a3e,a2a3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0700 ] %P64;
mov %P [a2b00,a2b01,a2b02,a2b03,a2b04,a2b05,a2b06,a2b07,a2b08,a2b09,a2b0a,
        a2b0b,a2b0c,a2b0d,a2b0e,a2b0f,a2b10,a2b11,a2b12,a2b13,a2b14,a2b15,
        a2b16,a2b17,a2b18,a2b19,a2b1a,a2b1b,a2b1c,a2b1d,a2b1e,a2b1f,a2b20,
        a2b21,a2b22,a2b23,a2b24,a2b25,a2b26,a2b27,a2b28,a2b29,a2b2a,a2b2b,
        a2b2c,a2b2d,a2b2e,a2b2f,a2b30,a2b31,a2b32,a2b33,a2b34,a2b35,a2b36,
        a2b37,a2b38,a2b39,a2b3a,a2b3b,a2b3c,a2b3d,a2b3e,a2b3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0708 ] %P64;
mov %P [a2c00,a2c01,a2c02,a2c03,a2c04,a2c05,a2c06,a2c07,a2c08,a2c09,a2c0a,
        a2c0b,a2c0c,a2c0d,a2c0e,a2c0f,a2c10,a2c11,a2c12,a2c13,a2c14,a2c15,
        a2c16,a2c17,a2c18,a2c19,a2c1a,a2c1b,a2c1c,a2c1d,a2c1e,a2c1f,a2c20,
        a2c21,a2c22,a2c23,a2c24,a2c25,a2c26,a2c27,a2c28,a2c29,a2c2a,a2c2b,
        a2c2c,a2c2d,a2c2e,a2c2f,a2c30,a2c31,a2c32,a2c33,a2c34,a2c35,a2c36,
        a2c37,a2c38,a2c39,a2c3a,a2c3b,a2c3c,a2c3d,a2c3e,a2c3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0710 ] %P64;
mov %P [a2d00,a2d01,a2d02,a2d03,a2d04,a2d05,a2d06,a2d07,a2d08,a2d09,a2d0a,
        a2d0b,a2d0c,a2d0d,a2d0e,a2d0f,a2d10,a2d11,a2d12,a2d13,a2d14,a2d15,
        a2d16,a2d17,a2d18,a2d19,a2d1a,a2d1b,a2d1c,a2d1d,a2d1e,a2d1f,a2d20,
        a2d21,a2d22,a2d23,a2d24,a2d25,a2d26,a2d27,a2d28,a2d29,a2d2a,a2d2b,
        a2d2c,a2d2d,a2d2e,a2d2f,a2d30,a2d31,a2d32,a2d33,a2d34,a2d35,a2d36,
        a2d37,a2d38,a2d39,a2d3a,a2d3b,a2d3c,a2d3d,a2d3e,a2d3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0718 ] %P64;
mov %P [a2e00,a2e01,a2e02,a2e03,a2e04,a2e05,a2e06,a2e07,a2e08,a2e09,a2e0a,
        a2e0b,a2e0c,a2e0d,a2e0e,a2e0f,a2e10,a2e11,a2e12,a2e13,a2e14,a2e15,
        a2e16,a2e17,a2e18,a2e19,a2e1a,a2e1b,a2e1c,a2e1d,a2e1e,a2e1f,a2e20,
        a2e21,a2e22,a2e23,a2e24,a2e25,a2e26,a2e27,a2e28,a2e29,a2e2a,a2e2b,
        a2e2c,a2e2d,a2e2e,a2e2f,a2e30,a2e31,a2e32,a2e33,a2e34,a2e35,a2e36,
        a2e37,a2e38,a2e39,a2e3a,a2e3b,a2e3c,a2e3d,a2e3e,a2e3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0720 ] %P64;
mov %P [a2f00,a2f01,a2f02,a2f03,a2f04,a2f05,a2f06,a2f07,a2f08,a2f09,a2f0a,
        a2f0b,a2f0c,a2f0d,a2f0e,a2f0f,a2f10,a2f11,a2f12,a2f13,a2f14,a2f15,
        a2f16,a2f17,a2f18,a2f19,a2f1a,a2f1b,a2f1c,a2f1d,a2f1e,a2f1f,a2f20,
        a2f21,a2f22,a2f23,a2f24,a2f25,a2f26,a2f27,a2f28,a2f29,a2f2a,a2f2b,
        a2f2c,a2f2d,a2f2e,a2f2f,a2f30,a2f31,a2f32,a2f33,a2f34,a2f35,a2f36,
        a2f37,a2f38,a2f39,a2f3a,a2f3b,a2f3c,a2f3d,a2f3e,a2f3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0728 ] %P64;
mov %P [a3000,a3001,a3002,a3003,a3004,a3005,a3006,a3007,a3008,a3009,a300a,
        a300b,a300c,a300d,a300e,a300f,a3010,a3011,a3012,a3013,a3014,a3015,
        a3016,a3017,a3018,a3019,a301a,a301b,a301c,a301d,a301e,a301f,a3020,
        a3021,a3022,a3023,a3024,a3025,a3026,a3027,a3028,a3029,a302a,a302b,
        a302c,a302d,a302e,a302f,a3030,a3031,a3032,a3033,a3034,a3035,a3036,
        a3037,a3038,a3039,a303a,a303b,a303c,a303d,a303e,a303f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0730 ] %P64;
mov %P [a3100,a3101,a3102,a3103,a3104,a3105,a3106,a3107,a3108,a3109,a310a,
        a310b,a310c,a310d,a310e,a310f,a3110,a3111,a3112,a3113,a3114,a3115,
        a3116,a3117,a3118,a3119,a311a,a311b,a311c,a311d,a311e,a311f,a3120,
        a3121,a3122,a3123,a3124,a3125,a3126,a3127,a3128,a3129,a312a,a312b,
        a312c,a312d,a312e,a312f,a3130,a3131,a3132,a3133,a3134,a3135,a3136,
        a3137,a3138,a3139,a313a,a313b,a313c,a313d,a313e,a313f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0738 ] %P64;
mov %P [a3200,a3201,a3202,a3203,a3204,a3205,a3206,a3207,a3208,a3209,a320a,
        a320b,a320c,a320d,a320e,a320f,a3210,a3211,a3212,a3213,a3214,a3215,
        a3216,a3217,a3218,a3219,a321a,a321b,a321c,a321d,a321e,a321f,a3220,
        a3221,a3222,a3223,a3224,a3225,a3226,a3227,a3228,a3229,a322a,a322b,
        a322c,a322d,a322e,a322f,a3230,a3231,a3232,a3233,a3234,a3235,a3236,
        a3237,a3238,a3239,a323a,a323b,a323c,a323d,a323e,a323f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0740 ] %P64;
mov %P [a3300,a3301,a3302,a3303,a3304,a3305,a3306,a3307,a3308,a3309,a330a,
        a330b,a330c,a330d,a330e,a330f,a3310,a3311,a3312,a3313,a3314,a3315,
        a3316,a3317,a3318,a3319,a331a,a331b,a331c,a331d,a331e,a331f,a3320,
        a3321,a3322,a3323,a3324,a3325,a3326,a3327,a3328,a3329,a332a,a332b,
        a332c,a332d,a332e,a332f,a3330,a3331,a3332,a3333,a3334,a3335,a3336,
        a3337,a3338,a3339,a333a,a333b,a333c,a333d,a333e,a333f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0748 ] %P64;
mov %P [a3400,a3401,a3402,a3403,a3404,a3405,a3406,a3407,a3408,a3409,a340a,
        a340b,a340c,a340d,a340e,a340f,a3410,a3411,a3412,a3413,a3414,a3415,
        a3416,a3417,a3418,a3419,a341a,a341b,a341c,a341d,a341e,a341f,a3420,
        a3421,a3422,a3423,a3424,a3425,a3426,a3427,a3428,a3429,a342a,a342b,
        a342c,a342d,a342e,a342f,a3430,a3431,a3432,a3433,a3434,a3435,a3436,
        a3437,a3438,a3439,a343a,a343b,a343c,a343d,a343e,a343f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0750 ] %P64;
mov %P [a3500,a3501,a3502,a3503,a3504,a3505,a3506,a3507,a3508,a3509,a350a,
        a350b,a350c,a350d,a350e,a350f,a3510,a3511,a3512,a3513,a3514,a3515,
        a3516,a3517,a3518,a3519,a351a,a351b,a351c,a351d,a351e,a351f,a3520,
        a3521,a3522,a3523,a3524,a3525,a3526,a3527,a3528,a3529,a352a,a352b,
        a352c,a352d,a352e,a352f,a3530,a3531,a3532,a3533,a3534,a3535,a3536,
        a3537,a3538,a3539,a353a,a353b,a353c,a353d,a353e,a353f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0758 ] %P64;
mov %P [a3600,a3601,a3602,a3603,a3604,a3605,a3606,a3607,a3608,a3609,a360a,
        a360b,a360c,a360d,a360e,a360f,a3610,a3611,a3612,a3613,a3614,a3615,
        a3616,a3617,a3618,a3619,a361a,a361b,a361c,a361d,a361e,a361f,a3620,
        a3621,a3622,a3623,a3624,a3625,a3626,a3627,a3628,a3629,a362a,a362b,
        a362c,a362d,a362e,a362f,a3630,a3631,a3632,a3633,a3634,a3635,a3636,
        a3637,a3638,a3639,a363a,a363b,a363c,a363d,a363e,a363f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0760 ] %P64;
mov %P [a3700,a3701,a3702,a3703,a3704,a3705,a3706,a3707,a3708,a3709,a370a,
        a370b,a370c,a370d,a370e,a370f,a3710,a3711,a3712,a3713,a3714,a3715,
        a3716,a3717,a3718,a3719,a371a,a371b,a371c,a371d,a371e,a371f,a3720,
        a3721,a3722,a3723,a3724,a3725,a3726,a3727,a3728,a3729,a372a,a372b,
        a372c,a372d,a372e,a372f,a3730,a3731,a3732,a3733,a3734,a3735,a3736,
        a3737,a3738,a3739,a373a,a373b,a373c,a373d,a373e,a373f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0768 ] %P64;
mov %P [a3800,a3801,a3802,a3803,a3804,a3805,a3806,a3807,a3808,a3809,a380a,
        a380b,a380c,a380d,a380e,a380f,a3810,a3811,a3812,a3813,a3814,a3815,
        a3816,a3817,a3818,a3819,a381a,a381b,a381c,a381d,a381e,a381f,a3820,
        a3821,a3822,a3823,a3824,a3825,a3826,a3827,a3828,a3829,a382a,a382b,
        a382c,a382d,a382e,a382f,a3830,a3831,a3832,a3833,a3834,a3835,a3836,
        a3837,a3838,a3839,a383a,a383b,a383c,a383d,a383e,a383f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0770 ] %P64;
mov %P [a3900,a3901,a3902,a3903,a3904,a3905,a3906,a3907,a3908,a3909,a390a,
        a390b,a390c,a390d,a390e,a390f,a3910,a3911,a3912,a3913,a3914,a3915,
        a3916,a3917,a3918,a3919,a391a,a391b,a391c,a391d,a391e,a391f,a3920,
        a3921,a3922,a3923,a3924,a3925,a3926,a3927,a3928,a3929,a392a,a392b,
        a392c,a392d,a392e,a392f,a3930,a3931,a3932,a3933,a3934,a3935,a3936,
        a3937,a3938,a3939,a393a,a393b,a393c,a393d,a393e,a393f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0778 ] %P64;
mov %P [a3a00,a3a01,a3a02,a3a03,a3a04,a3a05,a3a06,a3a07,a3a08,a3a09,a3a0a,
        a3a0b,a3a0c,a3a0d,a3a0e,a3a0f,a3a10,a3a11,a3a12,a3a13,a3a14,a3a15,
        a3a16,a3a17,a3a18,a3a19,a3a1a,a3a1b,a3a1c,a3a1d,a3a1e,a3a1f,a3a20,
        a3a21,a3a22,a3a23,a3a24,a3a25,a3a26,a3a27,a3a28,a3a29,a3a2a,a3a2b,
        a3a2c,a3a2d,a3a2e,a3a2f,a3a30,a3a31,a3a32,a3a33,a3a34,a3a35,a3a36,
        a3a37,a3a38,a3a39,a3a3a,a3a3b,a3a3c,a3a3d,a3a3e,a3a3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0780 ] %P64;
mov %P [a3b00,a3b01,a3b02,a3b03,a3b04,a3b05,a3b06,a3b07,a3b08,a3b09,a3b0a,
        a3b0b,a3b0c,a3b0d,a3b0e,a3b0f,a3b10,a3b11,a3b12,a3b13,a3b14,a3b15,
        a3b16,a3b17,a3b18,a3b19,a3b1a,a3b1b,a3b1c,a3b1d,a3b1e,a3b1f,a3b20,
        a3b21,a3b22,a3b23,a3b24,a3b25,a3b26,a3b27,a3b28,a3b29,a3b2a,a3b2b,
        a3b2c,a3b2d,a3b2e,a3b2f,a3b30,a3b31,a3b32,a3b33,a3b34,a3b35,a3b36,
        a3b37,a3b38,a3b39,a3b3a,a3b3b,a3b3c,a3b3d,a3b3e,a3b3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0788 ] %P64;
mov %P [a3c00,a3c01,a3c02,a3c03,a3c04,a3c05,a3c06,a3c07,a3c08,a3c09,a3c0a,
        a3c0b,a3c0c,a3c0d,a3c0e,a3c0f,a3c10,a3c11,a3c12,a3c13,a3c14,a3c15,
        a3c16,a3c17,a3c18,a3c19,a3c1a,a3c1b,a3c1c,a3c1d,a3c1e,a3c1f,a3c20,
        a3c21,a3c22,a3c23,a3c24,a3c25,a3c26,a3c27,a3c28,a3c29,a3c2a,a3c2b,
        a3c2c,a3c2d,a3c2e,a3c2f,a3c30,a3c31,a3c32,a3c33,a3c34,a3c35,a3c36,
        a3c37,a3c38,a3c39,a3c3a,a3c3b,a3c3c,a3c3d,a3c3e,a3c3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0790 ] %P64;
mov %P [a3d00,a3d01,a3d02,a3d03,a3d04,a3d05,a3d06,a3d07,a3d08,a3d09,a3d0a,
        a3d0b,a3d0c,a3d0d,a3d0e,a3d0f,a3d10,a3d11,a3d12,a3d13,a3d14,a3d15,
        a3d16,a3d17,a3d18,a3d19,a3d1a,a3d1b,a3d1c,a3d1d,a3d1e,a3d1f,a3d20,
        a3d21,a3d22,a3d23,a3d24,a3d25,a3d26,a3d27,a3d28,a3d29,a3d2a,a3d2b,
        a3d2c,a3d2d,a3d2e,a3d2f,a3d30,a3d31,a3d32,a3d33,a3d34,a3d35,a3d36,
        a3d37,a3d38,a3d39,a3d3a,a3d3b,a3d3c,a3d3d,a3d3e,a3d3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff0798 ] %P64;
mov %P [a3e00,a3e01,a3e02,a3e03,a3e04,a3e05,a3e06,a3e07,a3e08,a3e09,a3e0a,
        a3e0b,a3e0c,a3e0d,a3e0e,a3e0f,a3e10,a3e11,a3e12,a3e13,a3e14,a3e15,
        a3e16,a3e17,a3e18,a3e19,a3e1a,a3e1b,a3e1c,a3e1d,a3e1e,a3e1f,a3e20,
        a3e21,a3e22,a3e23,a3e24,a3e25,a3e26,a3e27,a3e28,a3e29,a3e2a,a3e2b,
        a3e2c,a3e2d,a3e2e,a3e2f,a3e30,a3e31,a3e32,a3e33,a3e34,a3e35,a3e36,
        a3e37,a3e38,a3e39,a3e3a,a3e3b,a3e3c,a3e3d,a3e3e,a3e3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff07a0 ] %P64;
mov %P [a3f00,a3f01,a3f02,a3f03,a3f04,a3f05,a3f06,a3f07,a3f08,a3f09,a3f0a,
        a3f0b,a3f0c,a3f0d,a3f0e,a3f0f,a3f10,a3f11,a3f12,a3f13,a3f14,a3f15,
        a3f16,a3f17,a3f18,a3f19,a3f1a,a3f1b,a3f1c,a3f1d,a3f1e,a3f1f,a3f20,
        a3f21,a3f22,a3f23,a3f24,a3f25,a3f26,a3f27,a3f28,a3f29,a3f2a,a3f2b,
        a3f2c,a3f2d,a3f2e,a3f2f,a3f30,a3f31,a3f32,a3f33,a3f34,a3f35,a3f36,
        a3f37,a3f38,a3f39,a3f3a,a3f3b,a3f3c,a3f3d,a3f3e,a3f3f];
cast %P64@uint64[1] %P; mov [ L0x7fffffff07a8 ] %P64;
mov L0x55555558c760 0x5555555555555555@uint64;
mov L0x55555558c768 0x5555555555555555@uint64;
mov L0x55555558c780 0xaaaaaaaaaaaaaaaa@uint64;
mov L0x55555558c788 0xaaaaaaaaaaaaaaaa@uint64;
mov L0x55555558c7a0 0x3333333333333333@uint64;
mov L0x55555558c7a8 0x3333333333333333@uint64;
mov L0x55555558c7c0 0xcccccccccccccccc@uint64;
mov L0x55555558c7c8 0xcccccccccccccccc@uint64;
mov L0x55555558c7e0 0x0f0f0f0f0f0f0f0f@uint64;
mov L0x55555558c7e8 0x0f0f0f0f0f0f0f0f@uint64;
mov L0x55555558c800 0xf0f0f0f0f0f0f0f0@uint64;
mov L0x55555558c808 0xf0f0f0f0f0f0f0f0@uint64;
mov L0x55555558c820 0x00ff00ff00ff00ff@uint64;
mov L0x55555558c828 0x00ff00ff00ff00ff@uint64;
mov L0x55555558c840 0xff00ff00ff00ff00@uint64;
mov L0x55555558c848 0xff00ff00ff00ff00@uint64;
mov L0x55555558c860 0x0000ffff0000ffff@uint64;
mov L0x55555558c868 0x0000ffff0000ffff@uint64;
mov L0x55555558c880 0xffff0000ffff0000@uint64;
mov L0x55555558c888 0xffff0000ffff0000@uint64;
mov L0x55555558c8a0 0x00000000ffffffff@uint64;
mov L0x55555558c8a8 0x00000000ffffffff@uint64;
mov L0x55555558c8c0 0xffffffff00000000@uint64;
mov L0x55555558c8c8 0xffffffff00000000@uint64;

(* #! -> SP = 0x7fffffff0478 *)
#! 0x7fffffff0478 = 0x7fffffff0478;
(* #mov    %rsp,%r11                                #! PC = 0x55555557c880 *)
#mov    %rsp,%r11                                #! 0x55555557c880 = 0x55555557c880;
(* #and    $0x1f,%r11                               #! PC = 0x55555557c883 *)
#and    $0x1f,%r11                               #! 0x55555557c883 = 0x55555557c883;
(* #add    $0x0,%r11                                #! PC = 0x55555557c887 *)
#add    $0x0,%r11                                #! 0x55555557c887 = 0x55555557c887;
(* #sub    %r11,%rsp                                #! PC = 0x55555557c88b *)
#sub    %r11,%rsp                                #! 0x55555557c88b = 0x55555557c88b;
(* movdqa 0x1000a(%rip),%xmm0        # 0x55555558c8a0#! EA = L0x55555558c8a0; Value = 0x00000000ffffffff; PC = 0x55555557c88e *)
mov %xmm0 [L0x55555558c8a0, L0x55555558c8a8];
(* movdqa 0x10022(%rip),%xmm1        # 0x55555558c8c0#! EA = L0x55555558c8c0; Value = 0xffffffff00000000; PC = 0x55555557c896 *)
mov %xmm1 [L0x55555558c8c0, L0x55555558c8c8];
(* movdqa 0xffba(%rip),%xmm2        # 0x55555558c860#! EA = L0x55555558c860; Value = 0x0000ffff0000ffff; PC = 0x55555557c89e *)
mov %xmm2 [L0x55555558c860, L0x55555558c868];
(* movdqa 0xffd2(%rip),%xmm3        # 0x55555558c880#! EA = L0x55555558c880; Value = 0xffff0000ffff0000; PC = 0x55555557c8a6 *)
mov %xmm3 [L0x55555558c880, L0x55555558c888];
(* movdqa 0xff6a(%rip),%xmm4        # 0x55555558c820#! EA = L0x55555558c820; Value = 0x00ff00ff00ff00ff; PC = 0x55555557c8ae *)
mov %xmm4 [L0x55555558c820, L0x55555558c828];
(* movdqa 0xff82(%rip),%xmm5        # 0x55555558c840#! EA = L0x55555558c840; Value = 0xff00ff00ff00ff00; PC = 0x55555557c8b6 *)
mov %xmm5 [L0x55555558c840, L0x55555558c848];
(* movddup (%rdi),%xmm6                            #! EA = L0x7fffffff05b0; Value = 0x0000000000000001; PC = 0x55555557c8be *)
mov %xmm6 [ L0x7fffffff05b0, L0x7fffffff05b0 ];
(* movddup 0x40(%rdi),%xmm7                        #! EA = L0x7fffffff05f0; Value = 0x6fe2ad7f9b95b32d; PC = 0x55555557c8c2 *)
mov %xmm7 [ L0x7fffffff05f0, L0x7fffffff05f0 ];
(* movddup 0x80(%rdi),%xmm8                        #! EA = L0x7fffffff0630; Value = 0xd32a8990142a0e66; PC = 0x55555557c8c7 *)
mov %xmm8 [ L0x7fffffff0630, L0x7fffffff0630 ];
(* movddup 0xc0(%rdi),%xmm9                        #! EA = L0x7fffffff0670; Value = 0x824c5184036ea71f; PC = 0x55555557c8d0 *)
mov %xmm9 [ L0x7fffffff0670, L0x7fffffff0670 ];
(* movddup 0x100(%rdi),%xmm10                      #! EA = L0x7fffffff06b0; Value = 0xcc88f6b6c499bdda; PC = 0x55555557c8d9 *)
mov %xmm10 [ L0x7fffffff06b0, L0x7fffffff06b0 ];
(* movddup 0x140(%rdi),%xmm11                      #! EA = L0x7fffffff06f0; Value = 0xa5023d76b39e2b51; PC = 0x55555557c8e2 *)
mov %xmm11 [ L0x7fffffff06f0, L0x7fffffff06f0 ];
(* movddup 0x180(%rdi),%xmm12                      #! EA = L0x7fffffff0730; Value = 0x570db3dc21d4c201; PC = 0x55555557c8eb *)
mov %xmm12 [ L0x7fffffff0730, L0x7fffffff0730 ];
(* movddup 0x1c0(%rdi),%xmm13                      #! EA = L0x7fffffff0770; Value = 0xa7256f2097b52aef; PC = 0x55555557c8f4 *)
mov %xmm13 [ L0x7fffffff0770, L0x7fffffff0770 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557c8fd *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557c901 *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557c907 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557c90c *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557c910 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557c915 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557c91a *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557c91e *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557c924 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557c929 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557c92d *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557c932 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557c937 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557c93b *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557c941 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557c947 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557c94b *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557c950 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557c955 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557c959 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557c95f *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557c965 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557c969 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557c96e *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557c973 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557c977 *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557c97d *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557c983 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557c987 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557c98c *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557c991 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557c995 *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557c99b *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557c9a1 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557c9a5 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557c9aa *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557c9af *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557c9b3 *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557c9b9 *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557c9be *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557c9c2 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557c9c7 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557c9cc *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557c9d0 *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557c9d6 *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557c9db *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557c9df *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557c9e4 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557c9e9 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557c9ed *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557c9f3 *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557c9f9 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557c9fd *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557ca02 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557ca07 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557ca0b *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557ca11 *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557ca17 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557ca1b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557ca20 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557ca25 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557ca29 *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557ca2f *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557ca35 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557ca39 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557ca3e *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557ca43 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557ca47 *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557ca4c *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557ca51 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557ca55 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557ca5a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557ca5e *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,(%rdi)                              #! EA = L0x7fffffff05b0; PC = 0x55555557ca65 *)
mov L0x7fffffff05b0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557ca68 *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x40(%rdi)                          #! EA = L0x7fffffff05f0; PC = 0x55555557ca6f *)
mov L0x7fffffff05f0 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557ca73 *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0x80(%rdi)                          #! EA = L0x7fffffff0630; PC = 0x55555557ca7a *)
mov L0x7fffffff0630 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557ca81 *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xc0(%rdi)                          #! EA = L0x7fffffff0670; PC = 0x55555557ca88 *)
mov L0x7fffffff0670 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557ca8f *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x100(%rdi)                         #! EA = L0x7fffffff06b0; PC = 0x55555557ca96 *)
mov L0x7fffffff06b0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557ca9d *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x140(%rdi)                         #! EA = L0x7fffffff06f0; PC = 0x55555557caa4 *)
mov L0x7fffffff06f0 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557caab *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x180(%rdi)                         #! EA = L0x7fffffff0730; PC = 0x55555557cab2 *)
mov L0x7fffffff0730 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557cab9 *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1c0(%rdi)                         #! EA = L0x7fffffff0770; PC = 0x55555557cac0 *)
mov L0x7fffffff0770 rsi;
(* movddup 0x8(%rdi),%xmm6                         #! EA = L0x7fffffff05b8; Value = 0x97edff5d0a8f8505; PC = 0x55555557cac7 *)
mov %xmm6 [ L0x7fffffff05b8, L0x7fffffff05b8 ];
(* movddup 0x48(%rdi),%xmm7                        #! EA = L0x7fffffff05f8; Value = 0x8a9e3853b7e61d82; PC = 0x55555557cacc *)
mov %xmm7 [ L0x7fffffff05f8, L0x7fffffff05f8 ];
(* movddup 0x88(%rdi),%xmm8                        #! EA = L0x7fffffff0638; Value = 0x3771dd1aade3d3db; PC = 0x55555557cad1 *)
mov %xmm8 [ L0x7fffffff0638, L0x7fffffff0638 ];
(* movddup 0xc8(%rdi),%xmm9                        #! EA = L0x7fffffff0678; Value = 0x48ed76b9984055d7; PC = 0x55555557cada *)
mov %xmm9 [ L0x7fffffff0678, L0x7fffffff0678 ];
(* movddup 0x108(%rdi),%xmm10                      #! EA = L0x7fffffff06b8; Value = 0x0d65c6c0275884cb; PC = 0x55555557cae3 *)
mov %xmm10 [ L0x7fffffff06b8, L0x7fffffff06b8 ];
(* movddup 0x148(%rdi),%xmm11                      #! EA = L0x7fffffff06f8; Value = 0xd493acabc17ddea5; PC = 0x55555557caec *)
mov %xmm11 [ L0x7fffffff06f8, L0x7fffffff06f8 ];
(* movddup 0x188(%rdi),%xmm12                      #! EA = L0x7fffffff0738; Value = 0xb9000a616d7be932; PC = 0x55555557caf5 *)
mov %xmm12 [ L0x7fffffff0738, L0x7fffffff0738 ];
(* movddup 0x1c8(%rdi),%xmm13                      #! EA = L0x7fffffff0778; Value = 0x29d1fecbed2ebd0b; PC = 0x55555557cafe *)
mov %xmm13 [ L0x7fffffff0778, L0x7fffffff0778 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557cb07 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557cb0b *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557cb11 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557cb16 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cb1a *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557cb1f *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557cb24 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557cb28 *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557cb2e *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557cb33 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557cb37 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557cb3c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557cb41 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557cb45 *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557cb4b *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557cb51 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cb55 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557cb5a *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557cb5f *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557cb63 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557cb69 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557cb6f *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cb73 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557cb78 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557cb7d *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557cb81 *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557cb87 *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557cb8d *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557cb91 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557cb96 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557cb9b *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557cb9f *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557cba5 *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557cbab *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cbaf *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557cbb4 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557cbb9 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557cbbd *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557cbc3 *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557cbc8 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cbcc *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557cbd1 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557cbd6 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557cbda *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557cbe0 *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557cbe5 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557cbe9 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557cbee *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557cbf3 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557cbf7 *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557cbfd *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557cc03 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557cc07 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557cc0c *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557cc11 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557cc15 *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557cc1b *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557cc21 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cc25 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557cc2a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557cc2f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557cc33 *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557cc39 *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557cc3f *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cc43 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557cc48 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557cc4d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557cc51 *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557cc56 *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557cc5b *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cc5f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557cc64 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557cc68 *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x8(%rdi)                           #! EA = L0x7fffffff05b8; PC = 0x55555557cc6f *)
mov L0x7fffffff05b8 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557cc73 *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x48(%rdi)                          #! EA = L0x7fffffff05f8; PC = 0x55555557cc7a *)
mov L0x7fffffff05f8 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557cc7e *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0x88(%rdi)                          #! EA = L0x7fffffff0638; PC = 0x55555557cc85 *)
mov L0x7fffffff0638 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557cc8c *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xc8(%rdi)                          #! EA = L0x7fffffff0678; PC = 0x55555557cc93 *)
mov L0x7fffffff0678 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557cc9a *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x108(%rdi)                         #! EA = L0x7fffffff06b8; PC = 0x55555557cca1 *)
mov L0x7fffffff06b8 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557cca8 *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x148(%rdi)                         #! EA = L0x7fffffff06f8; PC = 0x55555557ccaf *)
mov L0x7fffffff06f8 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557ccb6 *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x188(%rdi)                         #! EA = L0x7fffffff0738; PC = 0x55555557ccbd *)
mov L0x7fffffff0738 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557ccc4 *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1c8(%rdi)                         #! EA = L0x7fffffff0778; PC = 0x55555557cccb *)
mov L0x7fffffff0778 rsi;
(* movddup 0x10(%rdi),%xmm6                        #! EA = L0x7fffffff05c0; Value = 0x771481155609930c; PC = 0x55555557ccd2 *)
mov %xmm6 [ L0x7fffffff05c0, L0x7fffffff05c0 ];
(* movddup 0x50(%rdi),%xmm7                        #! EA = L0x7fffffff0600; Value = 0x8e09c7efa534f0ef; PC = 0x55555557ccd7 *)
mov %xmm7 [ L0x7fffffff0600, L0x7fffffff0600 ];
(* movddup 0x90(%rdi),%xmm8                        #! EA = L0x7fffffff0640; Value = 0x8c810ce36aeb22f8; PC = 0x55555557ccdc *)
mov %xmm8 [ L0x7fffffff0640, L0x7fffffff0640 ];
(* movddup 0xd0(%rdi),%xmm9                        #! EA = L0x7fffffff0680; Value = 0x2f18a55767e9a7de; PC = 0x55555557cce5 *)
mov %xmm9 [ L0x7fffffff0680, L0x7fffffff0680 ];
(* movddup 0x110(%rdi),%xmm10                      #! EA = L0x7fffffff06c0; Value = 0x107a85d3d9812f5d; PC = 0x55555557ccee *)
mov %xmm10 [ L0x7fffffff06c0, L0x7fffffff06c0 ];
(* movddup 0x150(%rdi),%xmm11                      #! EA = L0x7fffffff0700; Value = 0xed2281ed835bb601; PC = 0x55555557ccf7 *)
mov %xmm11 [ L0x7fffffff0700, L0x7fffffff0700 ];
(* movddup 0x190(%rdi),%xmm12                      #! EA = L0x7fffffff0740; Value = 0xed721fcb367b754c; PC = 0x55555557cd00 *)
mov %xmm12 [ L0x7fffffff0740, L0x7fffffff0740 ];
(* movddup 0x1d0(%rdi),%xmm13                      #! EA = L0x7fffffff0780; Value = 0x22e62113e84893e2; PC = 0x55555557cd09 *)
mov %xmm13 [ L0x7fffffff0780, L0x7fffffff0780 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557cd12 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557cd16 *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557cd1c *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557cd21 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cd25 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557cd2a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557cd2f *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557cd33 *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557cd39 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557cd3e *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557cd42 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557cd47 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557cd4c *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557cd50 *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557cd56 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557cd5c *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cd60 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557cd65 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557cd6a *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557cd6e *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557cd74 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557cd7a *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cd7e *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557cd83 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557cd88 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557cd8c *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557cd92 *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557cd98 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557cd9c *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557cda1 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557cda6 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557cdaa *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557cdb0 *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557cdb6 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cdba *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557cdbf *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557cdc4 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557cdc8 *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557cdce *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557cdd3 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cdd7 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557cddc *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557cde1 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557cde5 *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557cdeb *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557cdf0 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557cdf4 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557cdf9 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557cdfe *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557ce02 *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557ce08 *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557ce0e *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557ce12 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557ce17 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557ce1c *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557ce20 *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557ce26 *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557ce2c *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557ce30 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557ce35 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557ce3a *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557ce3e *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557ce44 *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557ce4a *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557ce4e *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557ce53 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557ce58 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557ce5c *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557ce61 *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557ce66 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557ce6a *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557ce6f *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557ce73 *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x10(%rdi)                          #! EA = L0x7fffffff05c0; PC = 0x55555557ce7a *)
mov L0x7fffffff05c0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557ce7e *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7fffffff0600; PC = 0x55555557ce85 *)
mov L0x7fffffff0600 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557ce89 *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0x90(%rdi)                          #! EA = L0x7fffffff0640; PC = 0x55555557ce90 *)
mov L0x7fffffff0640 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557ce97 *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xd0(%rdi)                          #! EA = L0x7fffffff0680; PC = 0x55555557ce9e *)
mov L0x7fffffff0680 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557cea5 *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x110(%rdi)                         #! EA = L0x7fffffff06c0; PC = 0x55555557ceac *)
mov L0x7fffffff06c0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557ceb3 *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x150(%rdi)                         #! EA = L0x7fffffff0700; PC = 0x55555557ceba *)
mov L0x7fffffff0700 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557cec1 *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x190(%rdi)                         #! EA = L0x7fffffff0740; PC = 0x55555557cec8 *)
mov L0x7fffffff0740 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557cecf *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1d0(%rdi)                         #! EA = L0x7fffffff0780; PC = 0x55555557ced6 *)
mov L0x7fffffff0780 rsi;
(* movddup 0x18(%rdi),%xmm6                        #! EA = L0x7fffffff05c8; Value = 0x58f1f33b05f3eed0; PC = 0x55555557cedd *)
mov %xmm6 [ L0x7fffffff05c8, L0x7fffffff05c8 ];
(* movddup 0x58(%rdi),%xmm7                        #! EA = L0x7fffffff0608; Value = 0x4e21476ecdc1598b; PC = 0x55555557cee2 *)
mov %xmm7 [ L0x7fffffff0608, L0x7fffffff0608 ];
(* movddup 0x98(%rdi),%xmm8                        #! EA = L0x7fffffff0648; Value = 0x68b2638ec320bcaf; PC = 0x55555557cee7 *)
mov %xmm8 [ L0x7fffffff0648, L0x7fffffff0648 ];
(* movddup 0xd8(%rdi),%xmm9                        #! EA = L0x7fffffff0688; Value = 0x951914b9f87a9ad4; PC = 0x55555557cef0 *)
mov %xmm9 [ L0x7fffffff0688, L0x7fffffff0688 ];
(* movddup 0x118(%rdi),%xmm10                      #! EA = L0x7fffffff06c8; Value = 0x681500b2aaa2ea1f; PC = 0x55555557cef9 *)
mov %xmm10 [ L0x7fffffff06c8, L0x7fffffff06c8 ];
(* movddup 0x158(%rdi),%xmm11                      #! EA = L0x7fffffff0708; Value = 0x715afc2babcf71e3; PC = 0x55555557cf02 *)
mov %xmm11 [ L0x7fffffff0708, L0x7fffffff0708 ];
(* movddup 0x198(%rdi),%xmm12                      #! EA = L0x7fffffff0748; Value = 0x8493da0a84124a72; PC = 0x55555557cf0b *)
mov %xmm12 [ L0x7fffffff0748, L0x7fffffff0748 ];
(* movddup 0x1d8(%rdi),%xmm13                      #! EA = L0x7fffffff0788; Value = 0x5a09bd91c4d724ff; PC = 0x55555557cf14 *)
mov %xmm13 [ L0x7fffffff0788, L0x7fffffff0788 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557cf1d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557cf21 *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557cf27 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557cf2c *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cf30 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557cf35 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557cf3a *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557cf3e *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557cf44 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557cf49 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557cf4d *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557cf52 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557cf57 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557cf5b *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557cf61 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557cf67 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cf6b *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557cf70 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557cf75 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557cf79 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557cf7f *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557cf85 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cf89 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557cf8e *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557cf93 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557cf97 *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557cf9d *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557cfa3 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557cfa7 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557cfac *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557cfb1 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557cfb5 *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557cfbb *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557cfc1 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cfc5 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557cfca *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557cfcf *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557cfd3 *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557cfd9 *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557cfde *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cfe2 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557cfe7 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557cfec *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557cff0 *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557cff6 *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557cffb *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557cfff *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d004 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d009 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d00d *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d013 *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d019 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d01d *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d022 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d027 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d02b *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d031 *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d037 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d03b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d040 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d045 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d049 *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d04f *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d055 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d059 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d05e *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d063 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d067 *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d06c *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d071 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d075 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d07a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d07e *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffff05c8; PC = 0x55555557d085 *)
mov L0x7fffffff05c8 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d089 *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x58(%rdi)                          #! EA = L0x7fffffff0608; PC = 0x55555557d090 *)
mov L0x7fffffff0608 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d094 *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0x98(%rdi)                          #! EA = L0x7fffffff0648; PC = 0x55555557d09b *)
mov L0x7fffffff0648 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d0a2 *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xd8(%rdi)                          #! EA = L0x7fffffff0688; PC = 0x55555557d0a9 *)
mov L0x7fffffff0688 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d0b0 *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x118(%rdi)                         #! EA = L0x7fffffff06c8; PC = 0x55555557d0b7 *)
mov L0x7fffffff06c8 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d0be *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x158(%rdi)                         #! EA = L0x7fffffff0708; PC = 0x55555557d0c5 *)
mov L0x7fffffff0708 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d0cc *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x198(%rdi)                         #! EA = L0x7fffffff0748; PC = 0x55555557d0d3 *)
mov L0x7fffffff0748 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d0da *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1d8(%rdi)                         #! EA = L0x7fffffff0788; PC = 0x55555557d0e1 *)
mov L0x7fffffff0788 rsi;
(* movddup 0x20(%rdi),%xmm6                        #! EA = L0x7fffffff05d0; Value = 0x166046321f05d367; PC = 0x55555557d0e8 *)
mov %xmm6 [ L0x7fffffff05d0, L0x7fffffff05d0 ];
(* movddup 0x60(%rdi),%xmm7                        #! EA = L0x7fffffff0610; Value = 0x437963d4cda24a63; PC = 0x55555557d0ed *)
mov %xmm7 [ L0x7fffffff0610, L0x7fffffff0610 ];
(* movddup 0xa0(%rdi),%xmm8                        #! EA = L0x7fffffff0650; Value = 0x6d45a02cbf5b89fe; PC = 0x55555557d0f2 *)
mov %xmm8 [ L0x7fffffff0650, L0x7fffffff0650 ];
(* movddup 0xe0(%rdi),%xmm9                        #! EA = L0x7fffffff0690; Value = 0x34c70151762de917; PC = 0x55555557d0fb *)
mov %xmm9 [ L0x7fffffff0690, L0x7fffffff0690 ];
(* movddup 0x120(%rdi),%xmm10                      #! EA = L0x7fffffff06d0; Value = 0xdd2f69cda7836f14; PC = 0x55555557d104 *)
mov %xmm10 [ L0x7fffffff06d0, L0x7fffffff06d0 ];
(* movddup 0x160(%rdi),%xmm11                      #! EA = L0x7fffffff0710; Value = 0x16e15be263bd7510; PC = 0x55555557d10d *)
mov %xmm11 [ L0x7fffffff0710, L0x7fffffff0710 ];
(* movddup 0x1a0(%rdi),%xmm12                      #! EA = L0x7fffffff0750; Value = 0xa77a3103fb41a32a; PC = 0x55555557d116 *)
mov %xmm12 [ L0x7fffffff0750, L0x7fffffff0750 ];
(* movddup 0x1e0(%rdi),%xmm13                      #! EA = L0x7fffffff0790; Value = 0x2373a8fb88c48b39; PC = 0x55555557d11f *)
mov %xmm13 [ L0x7fffffff0790, L0x7fffffff0790 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d128 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d12c *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d132 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d137 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d13b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d140 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d145 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d149 *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d14f *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d154 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d158 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d15d *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d162 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d166 *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d16c *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d172 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d176 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d17b *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d180 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557d184 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d18a *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d190 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d194 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d199 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d19e *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557d1a2 *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557d1a8 *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d1ae *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557d1b2 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557d1b7 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557d1bc *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557d1c0 *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d1c6 *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557d1cc *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d1d0 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557d1d5 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557d1da *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557d1de *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d1e4 *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d1e9 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d1ed *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d1f2 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557d1f7 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557d1fb *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d201 *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557d206 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557d20a *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d20f *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d214 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d218 *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d21e *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d224 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d228 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d22d *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d232 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d236 *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d23c *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d242 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d246 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d24b *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d250 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d254 *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d25a *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d260 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d264 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d269 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d26e *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d272 *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d277 *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d27c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d280 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d285 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d289 *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x20(%rdi)                          #! EA = L0x7fffffff05d0; PC = 0x55555557d290 *)
mov L0x7fffffff05d0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d294 *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x60(%rdi)                          #! EA = L0x7fffffff0610; PC = 0x55555557d29b *)
mov L0x7fffffff0610 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d29f *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0xa0(%rdi)                          #! EA = L0x7fffffff0650; PC = 0x55555557d2a6 *)
mov L0x7fffffff0650 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d2ad *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xe0(%rdi)                          #! EA = L0x7fffffff0690; PC = 0x55555557d2b4 *)
mov L0x7fffffff0690 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d2bb *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x120(%rdi)                         #! EA = L0x7fffffff06d0; PC = 0x55555557d2c2 *)
mov L0x7fffffff06d0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d2c9 *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x160(%rdi)                         #! EA = L0x7fffffff0710; PC = 0x55555557d2d0 *)
mov L0x7fffffff0710 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d2d7 *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x1a0(%rdi)                         #! EA = L0x7fffffff0750; PC = 0x55555557d2de *)
mov L0x7fffffff0750 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d2e5 *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1e0(%rdi)                         #! EA = L0x7fffffff0790; PC = 0x55555557d2ec *)
mov L0x7fffffff0790 rsi;
(* movddup 0x28(%rdi),%xmm6                        #! EA = L0x7fffffff05d8; Value = 0x72028865288c6d30; PC = 0x55555557d2f3 *)
mov %xmm6 [ L0x7fffffff05d8, L0x7fffffff05d8 ];
(* movddup 0x68(%rdi),%xmm7                        #! EA = L0x7fffffff0618; Value = 0x3b0f41892cb6ce1b; PC = 0x55555557d2f8 *)
mov %xmm7 [ L0x7fffffff0618, L0x7fffffff0618 ];
(* movddup 0xa8(%rdi),%xmm8                        #! EA = L0x7fffffff0658; Value = 0x18eec1188796ba05; PC = 0x55555557d2fd *)
mov %xmm8 [ L0x7fffffff0658, L0x7fffffff0658 ];
(* movddup 0xe8(%rdi),%xmm9                        #! EA = L0x7fffffff0698; Value = 0x2754853fe6f32b59; PC = 0x55555557d306 *)
mov %xmm9 [ L0x7fffffff0698, L0x7fffffff0698 ];
(* movddup 0x128(%rdi),%xmm10                      #! EA = L0x7fffffff06d8; Value = 0x099ac7742f1edc16; PC = 0x55555557d30f *)
mov %xmm10 [ L0x7fffffff06d8, L0x7fffffff06d8 ];
(* movddup 0x168(%rdi),%xmm11                      #! EA = L0x7fffffff0718; Value = 0x94a767f98fe3378e; PC = 0x55555557d318 *)
mov %xmm11 [ L0x7fffffff0718, L0x7fffffff0718 ];
(* movddup 0x1a8(%rdi),%xmm12                      #! EA = L0x7fffffff0758; Value = 0xdee53499aa6616c0; PC = 0x55555557d321 *)
mov %xmm12 [ L0x7fffffff0758, L0x7fffffff0758 ];
(* movddup 0x1e8(%rdi),%xmm13                      #! EA = L0x7fffffff0798; Value = 0xbb8475ab906c9ac5; PC = 0x55555557d32a *)
mov %xmm13 [ L0x7fffffff0798, L0x7fffffff0798 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d333 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d337 *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d33d *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d342 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d346 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d34b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d350 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d354 *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d35a *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d35f *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d363 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d368 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d36d *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d371 *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d377 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d37d *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d381 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d386 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d38b *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557d38f *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d395 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d39b *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d39f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d3a4 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d3a9 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557d3ad *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557d3b3 *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d3b9 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557d3bd *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557d3c2 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557d3c7 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557d3cb *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d3d1 *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557d3d7 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d3db *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557d3e0 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557d3e5 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557d3e9 *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d3ef *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d3f4 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d3f8 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d3fd *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557d402 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557d406 *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d40c *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557d411 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557d415 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d41a *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d41f *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d423 *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d429 *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d42f *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d433 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d438 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d43d *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d441 *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d447 *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d44d *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d451 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d456 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d45b *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d45f *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d465 *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d46b *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d46f *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d474 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d479 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d47d *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d482 *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d487 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d48b *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d490 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d494 *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x28(%rdi)                          #! EA = L0x7fffffff05d8; PC = 0x55555557d49b *)
mov L0x7fffffff05d8 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d49f *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x68(%rdi)                          #! EA = L0x7fffffff0618; PC = 0x55555557d4a6 *)
mov L0x7fffffff0618 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d4aa *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0xa8(%rdi)                          #! EA = L0x7fffffff0658; PC = 0x55555557d4b1 *)
mov L0x7fffffff0658 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d4b8 *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xe8(%rdi)                          #! EA = L0x7fffffff0698; PC = 0x55555557d4bf *)
mov L0x7fffffff0698 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d4c6 *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x128(%rdi)                         #! EA = L0x7fffffff06d8; PC = 0x55555557d4cd *)
mov L0x7fffffff06d8 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d4d4 *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x168(%rdi)                         #! EA = L0x7fffffff0718; PC = 0x55555557d4db *)
mov L0x7fffffff0718 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d4e2 *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x1a8(%rdi)                         #! EA = L0x7fffffff0758; PC = 0x55555557d4e9 *)
mov L0x7fffffff0758 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d4f0 *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1e8(%rdi)                         #! EA = L0x7fffffff0798; PC = 0x55555557d4f7 *)
mov L0x7fffffff0798 rsi;
(* movddup 0x30(%rdi),%xmm6                        #! EA = L0x7fffffff05e0; Value = 0x1c1c26b2bba82861; PC = 0x55555557d4fe *)
mov %xmm6 [ L0x7fffffff05e0, L0x7fffffff05e0 ];
(* movddup 0x70(%rdi),%xmm7                        #! EA = L0x7fffffff0620; Value = 0x6ff8877ccd9dce66; PC = 0x55555557d503 *)
mov %xmm7 [ L0x7fffffff0620, L0x7fffffff0620 ];
(* movddup 0xb0(%rdi),%xmm8                        #! EA = L0x7fffffff0660; Value = 0xc970375357bad11f; PC = 0x55555557d508 *)
mov %xmm8 [ L0x7fffffff0660, L0x7fffffff0660 ];
(* movddup 0xf0(%rdi),%xmm9                        #! EA = L0x7fffffff06a0; Value = 0x376d4ce4fd423dfd; PC = 0x55555557d511 *)
mov %xmm9 [ L0x7fffffff06a0, L0x7fffffff06a0 ];
(* movddup 0x130(%rdi),%xmm10                      #! EA = L0x7fffffff06e0; Value = 0x0d4e2e0e0d0e9efe; PC = 0x55555557d51a *)
mov %xmm10 [ L0x7fffffff06e0, L0x7fffffff06e0 ];
(* movddup 0x170(%rdi),%xmm11                      #! EA = L0x7fffffff0720; Value = 0x86877c5e28daefe0; PC = 0x55555557d523 *)
mov %xmm11 [ L0x7fffffff0720, L0x7fffffff0720 ];
(* movddup 0x1b0(%rdi),%xmm12                      #! EA = L0x7fffffff0760; Value = 0xf4507250b9a1a698; PC = 0x55555557d52c *)
mov %xmm12 [ L0x7fffffff0760, L0x7fffffff0760 ];
(* movddup 0x1f0(%rdi),%xmm13                      #! EA = L0x7fffffff07a0; Value = 0x33cb8ce7226b758c; PC = 0x55555557d535 *)
mov %xmm13 [ L0x7fffffff07a0, L0x7fffffff07a0 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d53e *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d542 *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d548 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d54d *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d551 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d556 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d55b *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d55f *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d565 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d56a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d56e *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d573 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d578 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d57c *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d582 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d588 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d58c *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d591 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d596 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557d59a *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d5a0 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d5a6 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d5aa *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d5af *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d5b4 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557d5b8 *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557d5be *)
cast %xmm14d@uint32[4] %xmm14; split %xmm14 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d5c4 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557d5c8 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557d5cd *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557d5d2 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557d5d6 *)
cast %xmm12d@uint32[4] %xmm12; split %dc %xmm12dL %xmm12d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm12dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d5dc *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557d5e2 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d5e6 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557d5eb *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557d5f0 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557d5f4 *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d5fa *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d5ff *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d603 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d608 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557d60d *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557d611 *)
cast %xmm9d@uint32[4] %xmm9; split %dc %xmm9dL %xmm9d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm15 %xmm9dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d617 *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557d61c *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557d620 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d625 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d62a *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d62e *)
cast %xmm14w@uint16[8] %xmm14; split %dc %xmm14wL %xmm14w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm14wL %off;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d634 *)
cast %xmm13w@uint16[8] %xmm13; split %xmm13 %dc %xmm13w 0x8;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d63a *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d63e *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d643 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d648 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d64c *)
cast %xmm10w@uint16[8] %xmm10; split %dc %xmm10wL %xmm10w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm10wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d652 *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d658 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d65c *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d661 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d666 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d66a *)
cast %xmm8w@uint16[8] %xmm8; split %dc %xmm8wL %xmm8w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm8wL %off;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d670 *)
cast %xmm12w@uint16[8] %xmm12; split %xmm12 %dc %xmm12w 0x8;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d676 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d67a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d67f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d684 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d688 *)
cast %xmm7w@uint16[8] %xmm7; split %dc %xmm7wL %xmm7w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm15 %xmm7wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d68d *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d692 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d696 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d69b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d69f *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x30(%rdi)                          #! EA = L0x7fffffff05e0; PC = 0x55555557d6a6 *)
mov L0x7fffffff05e0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d6aa *)
cast %xmm13q@uint64[2] %xmm13; mov [ rsi, _ ] %xmm13q;
(* mov    %rsi,0x70(%rdi)                          #! EA = L0x7fffffff0620; PC = 0x55555557d6b1 *)
mov L0x7fffffff0620 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d6b5 *)
cast %xmm14q@uint64[2] %xmm14; mov [ rsi, _ ] %xmm14q;
(* mov    %rsi,0xb0(%rdi)                          #! EA = L0x7fffffff0660; PC = 0x55555557d6bc *)
mov L0x7fffffff0660 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d6c3 *)
cast %xmm10q@uint64[2] %xmm10; mov [ rsi, _ ] %xmm10q;
(* mov    %rsi,0xf0(%rdi)                          #! EA = L0x7fffffff06a0; PC = 0x55555557d6ca *)
mov L0x7fffffff06a0 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d6d1 *)
cast %xmm11q@uint64[2] %xmm11; mov [ rsi, _ ] %xmm11q;
(* mov    %rsi,0x130(%rdi)                         #! EA = L0x7fffffff06e0; PC = 0x55555557d6d8 *)
mov L0x7fffffff06e0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d6df *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0x170(%rdi)                         #! EA = L0x7fffffff0720; PC = 0x55555557d6e6 *)
mov L0x7fffffff0720 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d6ed *)
cast %xmm12q@uint64[2] %xmm12; mov [ rsi, _ ] %xmm12q;
(* mov    %rsi,0x1b0(%rdi)                         #! EA = L0x7fffffff0760; PC = 0x55555557d6f4 *)
mov L0x7fffffff0760 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d6fb *)
cast %xmm6q@uint64[2] %xmm6; mov [ rsi, _ ] %xmm6q;
(* mov    %rsi,0x1f0(%rdi)                         #! EA = L0x7fffffff07a0; PC = 0x55555557d702 *)
mov L0x7fffffff07a0 rsi;
(* movddup 0x38(%rdi),%xmm6                        #! EA = L0x7fffffff05e8; Value = 0x7c9beb1784c9c162; PC = 0x55555557d709 *)
mov %xmm6 [ L0x7fffffff05e8, L0x7fffffff05e8 ];
(* movddup 0x78(%rdi),%xmm7                        #! EA = L0x7fffffff0628; Value = 0x8b8a71fc29019986; PC = 0x55555557d70e *)
mov %xmm7 [ L0x7fffffff0628, L0x7fffffff0628 ];
(* movddup 0xb8(%rdi),%xmm8                        #! EA = L0x7fffffff0668; Value = 0x3ece13d99c449cce; PC = 0x55555557d713 *)
mov %xmm8 [ L0x7fffffff0668, L0x7fffffff0668 ];
(* movddup 0xf8(%rdi),%xmm9                        #! EA = L0x7fffffff06a8; Value = 0xc20feb5c25fbb480; PC = 0x55555557d71c *)
mov %xmm9 [ L0x7fffffff06a8, L0x7fffffff06a8 ];
(* movddup 0x138(%rdi),%xmm10                      #! EA = L0x7fffffff06e8; Value = 0x880f6d75a1cad4cf; PC = 0x55555557d725 *)
mov %xmm10 [ L0x7fffffff06e8, L0x7fffffff06e8 ];
(* movddup 0x178(%rdi),%xmm11                      #! EA = L0x7fffffff0728; Value = 0x3c0f89ca354ad081; PC = 0x55555557d72e *)
mov %xmm11 [ L0x7fffffff0728, L0x7fffffff0728 ];
(* movddup 0x1b8(%rdi),%xmm12                      #! EA = L0x7fffffff0768; Value = 0x27e8db82e39a1af5; PC = 0x55555557d737 *)
mov %xmm12 [ L0x7fffffff0768, L0x7fffffff0768 ];
(* movddup 0x1f8(%rdi),%xmm13                      #! EA = L0x7fffffff07a8; Value = 0xf9578e6c67a140de; PC = 0x55555557d740 *)
mov %xmm13 [ L0x7fffffff07a8, L0x7fffffff07a8 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d749 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d74d *)
cast %xmm10q@uint64[2] %xmm10; split %dc %xmm10qL %xmm10q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm10qL %off;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d753 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x20;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d758 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d75c *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d761 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d766 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d76a *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm11qL %off;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d770 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x20;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d775 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d779 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d77e *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d783 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d787 *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm15 %xmm12qL %off;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d78d *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x20;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d793 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d797 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d79c *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm0                        #! PC = 0x55555557d7a1 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm0@uint64[2] %xmm9q %xmm0q;
(* vpsllq $0x20,%xmm13,%xmm12                      #! PC = 0x55555557d7a5 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 32;
broadcast %off 2 [ 0x20@uint64 ]; shl %xmm12 %xmm13qL %off;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d7ab *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x20;
(* vpand  %xmm1,%xmm13,%xmm1                       #! PC = 0x55555557d7b1 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm1@uint64[2] %xmm13q %xmm1q;
(* vpor   %xmm12,%xmm0,%xmm0                       #! PC = 0x55555557d7b5 *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm12q@uint64[2] %xmm12;
or %xmm0@uint64[2] %xmm0q %xmm12q;
(* vpor   %xmm1,%xmm9,%xmm1                        #! PC = 0x55555557d7ba *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
or %xmm1@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm2,%xmm14,%xmm9                       #! PC = 0x55555557d7be *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm9@uint64[2] %xmm14q %xmm2q;
(* vpslld $0x10,%xmm11,%xmm12                      #! PC = 0x55555557d7c2 *)
cast %xmm11d@uint32[4] %xmm11; split %dc %xmm11dL %xmm11d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm12 %xmm11dL %off;
(* vpsrld $0x10,%xmm14,%xmm13                      #! PC = 0x55555557d7c8 *)
cast %xmm14d@uint32[4] %xmm14; split %xmm13 %dc %xmm14d 0x10;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d7ce *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* vpor   %xmm12,%xmm9,%xmm9                       #! PC = 0x55555557d7d2 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm12q@uint64[2] %xmm12;
or %xmm9@uint64[2] %xmm9q %xmm12q;
(* vpor   %xmm11,%xmm13,%xmm11                     #! PC = 0x55555557d7d7 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm13q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm12                      #! PC = 0x55555557d7dc *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm10q %xmm2q;
(* vpslld $0x10,%xmm0,%xmm13                       #! PC = 0x55555557d7e0 *)
cast %xmm0d@uint32[4] %xmm0; split %dc %xmm0dL %xmm0d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm13 %xmm0dL %off;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d7e5 *)
cast %xmm10d@uint32[4] %xmm10; split %xmm10 %dc %xmm10d 0x10;
(* vpand  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555557d7eb *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm3q@uint64[2] %xmm3;
and %xmm0@uint64[2] %xmm0q %xmm3q;
(* vpor   %xmm13,%xmm12,%xmm12                     #! PC = 0x55555557d7ef *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm13q@uint64[2] %xmm13;
or %xmm12@uint64[2] %xmm12q %xmm13q;
(* vpor   %xmm0,%xmm10,%xmm0                       #! PC = 0x55555557d7f4 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
or %xmm0@uint64[2] %xmm10q %xmm0q;
(* vpand  %xmm2,%xmm6,%xmm10                       #! PC = 0x55555557d7f8 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm10@uint64[2] %xmm6q %xmm2q;
(* vpslld $0x10,%xmm8,%xmm13                       #! PC = 0x55555557d7fc *)
cast %xmm8d@uint32[4] %xmm8; split %dc %xmm8dL %xmm8d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm13 %xmm8dL %off;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d802 *)
cast %xmm6d@uint32[4] %xmm6; split %xmm6 %dc %xmm6d 0x10;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d807 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* vpor   %xmm13,%xmm10,%xmm10                     #! PC = 0x55555557d80b *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm13q@uint64[2] %xmm13;
or %xmm10@uint64[2] %xmm10q %xmm13q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d810 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm2                        #! PC = 0x55555557d815 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm2@uint64[2] %xmm7q %xmm2q;
(* vpslld $0x10,%xmm1,%xmm8                        #! PC = 0x55555557d819 *)
cast %xmm1d@uint32[4] %xmm1; split %dc %xmm1dL %xmm1d 16;
broadcast %off 4 [ 0x10@uint32 ]; shl %xmm8 %xmm1dL %off;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d81e *)
cast %xmm7d@uint32[4] %xmm7; split %xmm7 %dc %xmm7d 0x10;
(* vpand  %xmm3,%xmm1,%xmm1                        #! PC = 0x55555557d823 *)
cast %xmm1q@uint64[2] %xmm1; cast %xmm3q@uint64[2] %xmm3;
and %xmm1@uint64[2] %xmm1q %xmm3q;
(* vpor   %xmm8,%xmm2,%xmm2                        #! PC = 0x55555557d827 *)
cast %xmm2q@uint64[2] %xmm2; cast %xmm8q@uint64[2] %xmm8;
or %xmm2@uint64[2] %xmm2q %xmm8q;
(* vpor   %xmm1,%xmm7,%xmm1                        #! PC = 0x55555557d82c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
or %xmm1@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm4,%xmm9,%xmm3                        #! PC = 0x55555557d830 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm4q@uint64[2] %xmm4;
and %xmm3@uint64[2] %xmm9q %xmm4q;
(* vpsllw $0x8,%xmm12,%xmm7                        #! PC = 0x55555557d834 *)
cast %xmm12w@uint16[8] %xmm12; split %dc %xmm12wL %xmm12w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm7 %xmm12wL %off;
(* vpsrlw $0x8,%xmm9,%xmm8                         #! PC = 0x55555557d83a *)
cast %xmm9w@uint16[8] %xmm9; split %xmm8 %dc %xmm9w 0x8;
(* vpand  %xmm5,%xmm12,%xmm9                       #! PC = 0x55555557d840 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm9@uint64[2] %xmm12q %xmm5q;
(* vpor   %xmm7,%xmm3,%xmm3                        #! PC = 0x55555557d844 *)
cast %xmm3q@uint64[2] %xmm3; cast %xmm7q@uint64[2] %xmm7;
or %xmm3@uint64[2] %xmm3q %xmm7q;
(* vpor   %xmm9,%xmm8,%xmm7                        #! PC = 0x55555557d848 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm8q %xmm9q;
(* vpand  %xmm4,%xmm11,%xmm8                       #! PC = 0x55555557d84d *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm8@uint64[2] %xmm11q %xmm4q;
(* vpsllw $0x8,%xmm0,%xmm9                         #! PC = 0x55555557d851 *)
cast %xmm0w@uint16[8] %xmm0; split %dc %xmm0wL %xmm0w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm9 %xmm0wL %off;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d856 *)
cast %xmm11w@uint16[8] %xmm11; split %xmm11 %dc %xmm11w 0x8;
(* vpand  %xmm5,%xmm0,%xmm0                        #! PC = 0x55555557d85c *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm5q@uint64[2] %xmm5;
and %xmm0@uint64[2] %xmm0q %xmm5q;
(* vpor   %xmm9,%xmm8,%xmm8                        #! PC = 0x55555557d860 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm9q@uint64[2] %xmm9;
or %xmm8@uint64[2] %xmm8q %xmm9q;
(* vpor   %xmm0,%xmm11,%xmm0                       #! PC = 0x55555557d865 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
or %xmm0@uint64[2] %xmm11q %xmm0q;
(* vpand  %xmm4,%xmm10,%xmm9                       #! PC = 0x55555557d869 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm10q %xmm4q;
(* vpsllw $0x8,%xmm2,%xmm11                        #! PC = 0x55555557d86d *)
cast %xmm2w@uint16[8] %xmm2; split %dc %xmm2wL %xmm2w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm11 %xmm2wL %off;
(* vpsrlw $0x8,%xmm10,%xmm10                       #! PC = 0x55555557d872 *)
cast %xmm10w@uint16[8] %xmm10; split %xmm10 %dc %xmm10w 0x8;
(* vpand  %xmm5,%xmm2,%xmm2                        #! PC = 0x55555557d878 *)
cast %xmm2q@uint64[2] %xmm2; cast %xmm5q@uint64[2] %xmm5;
and %xmm2@uint64[2] %xmm2q %xmm5q;
(* vpor   %xmm11,%xmm9,%xmm9                       #! PC = 0x55555557d87c *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm11q@uint64[2] %xmm11;
or %xmm9@uint64[2] %xmm9q %xmm11q;
(* vpor   %xmm2,%xmm10,%xmm2                       #! PC = 0x55555557d881 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
or %xmm2@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555557d885 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm4@uint64[2] %xmm6q %xmm4q;
(* vpsllw $0x8,%xmm1,%xmm10                        #! PC = 0x55555557d889 *)
cast %xmm1w@uint16[8] %xmm1; split %dc %xmm1wL %xmm1w 8;
broadcast %off 8 [ 0x8@uint16 ]; shl %xmm10 %xmm1wL %off;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d88e *)
cast %xmm6w@uint16[8] %xmm6; split %xmm6 %dc %xmm6w 0x8;
(* vpand  %xmm5,%xmm1,%xmm1                        #! PC = 0x55555557d893 *)
cast %xmm1q@uint64[2] %xmm1; cast %xmm5q@uint64[2] %xmm5;
and %xmm1@uint64[2] %xmm1q %xmm5q;
(* vpor   %xmm10,%xmm4,%xmm4                       #! PC = 0x55555557d897 *)
cast %xmm4q@uint64[2] %xmm4; cast %xmm10q@uint64[2] %xmm10;
or %xmm4@uint64[2] %xmm4q %xmm10q;
(* vpor   %xmm1,%xmm6,%xmm1                        #! PC = 0x55555557d89c *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
or %xmm1@uint64[2] %xmm6q %xmm1q;
(* pextrq $0x0,%xmm3,%rsi                          #! PC = 0x55555557d8a0 *)
cast %xmm3q@uint64[2] %xmm3; mov [ rsi, _ ] %xmm3q;
(* mov    %rsi,0x38(%rdi)                          #! EA = L0x7fffffff05e8; PC = 0x55555557d8a7 *)
mov L0x7fffffff05e8 rsi;
(* pextrq $0x0,%xmm7,%rsi                          #! PC = 0x55555557d8ab *)
cast %xmm7q@uint64[2] %xmm7; mov [ rsi, _ ] %xmm7q;
(* mov    %rsi,0x78(%rdi)                          #! EA = L0x7fffffff0628; PC = 0x55555557d8b2 *)
mov L0x7fffffff0628 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d8b6 *)
cast %xmm8q@uint64[2] %xmm8; mov [ rsi, _ ] %xmm8q;
(* mov    %rsi,0xb8(%rdi)                          #! EA = L0x7fffffff0668; PC = 0x55555557d8bd *)
mov L0x7fffffff0668 rsi;
(* pextrq $0x0,%xmm0,%rsi                          #! PC = 0x55555557d8c4 *)
cast %xmm0q@uint64[2] %xmm0; mov [ rsi, _ ] %xmm0q;
(* mov    %rsi,0xf8(%rdi)                          #! EA = L0x7fffffff06a8; PC = 0x55555557d8cb *)
mov L0x7fffffff06a8 rsi;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d8d2 *)
cast %xmm9q@uint64[2] %xmm9; mov [ rsi, _ ] %xmm9q;
(* mov    %rsi,0x138(%rdi)                         #! EA = L0x7fffffff06e8; PC = 0x55555557d8d9 *)
mov L0x7fffffff06e8 rsi;
(* pextrq $0x0,%xmm2,%rsi                          #! PC = 0x55555557d8e0 *)
cast %xmm2q@uint64[2] %xmm2; mov [ rsi, _ ] %xmm2q;
(* mov    %rsi,0x178(%rdi)                         #! EA = L0x7fffffff0728; PC = 0x55555557d8e7 *)
mov L0x7fffffff0728 rsi;
(* pextrq $0x0,%xmm4,%rsi                          #! PC = 0x55555557d8ee *)
cast %xmm4q@uint64[2] %xmm4; mov [ rsi, _ ] %xmm4q;
(* mov    %rsi,0x1b8(%rdi)                         #! EA = L0x7fffffff0768; PC = 0x55555557d8f5 *)
mov L0x7fffffff0768 rsi;
(* pextrq $0x0,%xmm1,%rsi                          #! PC = 0x55555557d8fc *)
cast %xmm1q@uint64[2] %xmm1; mov [ rsi, _ ] %xmm1q;
(* mov    %rsi,0x1f8(%rdi)                         #! EA = L0x7fffffff07a8; PC = 0x55555557d903 *)
mov L0x7fffffff07a8 rsi;
(* movdqa 0xeece(%rip),%xmm0        # 0x55555558c7e0#! EA = L0x55555558c7e0; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x55555557d90a *)
mov %xmm0 [L0x55555558c7e0, L0x55555558c7e8];
(* movdqa 0xeee6(%rip),%xmm1        # 0x55555558c800#! EA = L0x55555558c800; Value = 0xf0f0f0f0f0f0f0f0; PC = 0x55555557d912 *)
mov %xmm1 [L0x55555558c800, L0x55555558c808];
(* movdqa 0xee7e(%rip),%xmm2        # 0x55555558c7a0#! EA = L0x55555558c7a0; Value = 0x3333333333333333; PC = 0x55555557d91a *)
mov %xmm2 [L0x55555558c7a0, L0x55555558c7a8];
(* movdqa 0xee96(%rip),%xmm3        # 0x55555558c7c0#! EA = L0x55555558c7c0; Value = 0xcccccccccccccccc; PC = 0x55555557d922 *)
mov %xmm3 [L0x55555558c7c0, L0x55555558c7c8];
(* movdqa 0xee2e(%rip),%xmm4        # 0x55555558c760#! EA = L0x55555558c760; Value = 0x5555555555555555; PC = 0x55555557d92a *)
mov %xmm4 [L0x55555558c760, L0x55555558c768];
(* movdqa 0xee46(%rip),%xmm5        # 0x55555558c780#! EA = L0x55555558c780; Value = 0xaaaaaaaaaaaaaaaa; PC = 0x55555557d932 *)
mov %xmm5 [L0x55555558c780, L0x55555558c788];
(* movddup (%rdi),%xmm6                            #! EA = L0x7fffffff05b0; Value = 0xef0151da1f662d01; PC = 0x55555557d93a *)
mov %xmm6 [ L0x7fffffff05b0, L0x7fffffff05b0 ];
(* movddup 0x8(%rdi),%xmm7                         #! EA = L0x7fffffff05b8; Value = 0x0b32a5cbd7db8205; PC = 0x55555557d93e *)
mov %xmm7 [ L0x7fffffff05b8, L0x7fffffff05b8 ];
(* movddup 0x10(%rdi),%xmm8                        #! EA = L0x7fffffff05c0; Value = 0xe24c015ddef8ef0c; PC = 0x55555557d943 *)
mov %xmm8 [ L0x7fffffff05c0, L0x7fffffff05c0 ];
(* movddup 0x18(%rdi),%xmm9                        #! EA = L0x7fffffff05c8; Value = 0xff72e31fd4af8bd0; PC = 0x55555557d949 *)
mov %xmm9 [ L0x7fffffff05c8, L0x7fffffff05c8 ];
(* movddup 0x20(%rdi),%xmm10                       #! EA = L0x7fffffff05d0; Value = 0x392a101417fe6367; PC = 0x55555557d94f *)
mov %xmm10 [ L0x7fffffff05d0, L0x7fffffff05d0 ];
(* movddup 0x28(%rdi),%xmm11                       #! EA = L0x7fffffff05d8; Value = 0xc5c08e1659051b30; PC = 0x55555557d955 *)
mov %xmm11 [ L0x7fffffff05d8, L0x7fffffff05d8 ];
(* movddup 0x30(%rdi),%xmm12                       #! EA = L0x7fffffff05e0; Value = 0x8c98e0fefd1f6661; PC = 0x55555557d95b *)
mov %xmm12 [ L0x7fffffff05e0, L0x7fffffff05e0 ];
(* movddup 0x38(%rdi),%xmm13                       #! EA = L0x7fffffff05e8; Value = 0xdef581cf80ce8662; PC = 0x55555557d961 *)
mov %xmm13 [ L0x7fffffff05e8, L0x7fffffff05e8 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d967 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557d96b *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d96f *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557d975 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d979 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557d97d *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d982 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d987 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d98c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557d990 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d994 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557d99a *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d99e *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557d9a2 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d9a7 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d9ac *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d9b1 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557d9b5 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d9b9 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557d9bf *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d9c3 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557d9c7 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d9cd *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d9d2 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d9d7 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557d9db *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d9df *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557d9e5 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d9e9 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557d9ed *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d9f3 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d9f8 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d9fd *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557da01 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da05 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557da0b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557da0f *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557da13 *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557da19 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557da1e *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557da23 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557da27 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da2b *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557da31 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557da35 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557da39 *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557da3f *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557da44 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557da49 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557da4d *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da51 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557da57 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557da5b *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557da5f *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557da64 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557da69 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557da6e *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557da72 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da76 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557da7c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557da80 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557da84 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557da89 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557da8e *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557da93 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557da97 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557da9b *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557daa1 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557daa5 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557daa9 *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557daaf *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557dab4 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557dab9 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557dabd *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dac1 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557dac7 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557dacb *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557dacf *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557dad5 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557dada *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557dadf *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557dae3 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dae7 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557daed *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557daf1 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557daf5 *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557dafb *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557db00 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557db05 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557db09 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557db0d *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557db13 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557db17 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557db1b *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557db20 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557db25 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557db29 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,(%rdi)                             #! EA = L0x7fffffff05b0; PC = 0x55555557db2e *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff05b0, L0x7fffffff05b8] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557db32 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0x10(%rdi)                         #! EA = L0x7fffffff05c0; PC = 0x55555557db37 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff05c0, L0x7fffffff05c8] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557db3c *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0x20(%rdi)                         #! EA = L0x7fffffff05d0; PC = 0x55555557db41 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff05d0, L0x7fffffff05d8] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557db46 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0x30(%rdi)                         #! EA = L0x7fffffff05e0; PC = 0x55555557db4a *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff05e0, L0x7fffffff05e8] %xmm6q;
(* movddup 0x40(%rdi),%xmm6                        #! EA = L0x7fffffff05f0; Value = 0x2ac22bbda70eb300; PC = 0x55555557db4f *)
mov %xmm6 [ L0x7fffffff05f0, L0x7fffffff05f0 ];
(* movddup 0x48(%rdi),%xmm7                        #! EA = L0x7fffffff05f8; Value = 0xbde9de8455d31d85; PC = 0x55555557db54 *)
mov %xmm7 [ L0x7fffffff05f8, L0x7fffffff05f8 ];
(* movddup 0x50(%rdi),%xmm8                        #! EA = L0x7fffffff0600; Value = 0x9375b62fa722f093; PC = 0x55555557db59 *)
mov %xmm8 [ L0x7fffffff0600, L0x7fffffff0600 ];
(* movddup 0x58(%rdi),%xmm9                        #! EA = L0x7fffffff0608; Value = 0x244a71ea9abc59ee; PC = 0x55555557db5f *)
mov %xmm9 [ L0x7fffffff0608, L0x7fffffff0608 ];
(* movddup 0x60(%rdi),%xmm10                       #! EA = L0x7fffffff0610; Value = 0x8ba3756fe9894ad3; PC = 0x55555557db65 *)
mov %xmm10 [ L0x7fffffff0610, L0x7fffffff0610 ];
(* movddup 0x68(%rdi),%xmm11                       #! EA = L0x7fffffff0618; Value = 0x9a1637dc2bbace6d; PC = 0x55555557db6b *)
mov %xmm11 [ L0x7fffffff0618, L0x7fffffff0618 ];
(* movddup 0x70(%rdi),%xmm12                       #! EA = L0x7fffffff0620; Value = 0x75a6ef9e3dd1ce28; PC = 0x55555557db71 *)
mov %xmm12 [ L0x7fffffff0620, L0x7fffffff0620 ];
(* movddup 0x78(%rdi),%xmm13                       #! EA = L0x7fffffff0628; Value = 0x401ad0d4b49c99c1; PC = 0x55555557db77 *)
mov %xmm13 [ L0x7fffffff0628, L0x7fffffff0628 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557db7d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557db81 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557db85 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557db8b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557db8f *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557db93 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557db98 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557db9d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557dba2 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557dba6 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dbaa *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557dbb0 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557dbb4 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557dbb8 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557dbbd *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557dbc2 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557dbc7 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557dbcb *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dbcf *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557dbd5 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557dbd9 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557dbdd *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557dbe3 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557dbe8 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557dbed *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557dbf1 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dbf5 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557dbfb *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557dbff *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557dc03 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dc09 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557dc0e *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557dc13 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557dc17 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc1b *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557dc21 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557dc25 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557dc29 *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557dc2f *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557dc34 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557dc39 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557dc3d *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc41 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557dc47 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557dc4b *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557dc4f *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557dc55 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557dc5a *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557dc5f *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557dc63 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc67 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557dc6d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557dc71 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557dc75 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dc7a *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557dc7f *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557dc84 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557dc88 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc8c *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557dc92 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557dc96 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557dc9a *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557dc9f *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557dca4 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557dca9 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557dcad *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dcb1 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557dcb7 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557dcbb *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557dcbf *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557dcc5 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557dcca *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557dccf *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557dcd3 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dcd7 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557dcdd *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557dce1 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557dce5 *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557dceb *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557dcf0 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557dcf5 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557dcf9 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dcfd *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557dd03 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557dd07 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557dd0b *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557dd11 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557dd16 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557dd1b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557dd1f *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dd23 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557dd29 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557dd2d *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557dd31 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dd36 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557dd3b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557dd3f *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,0x40(%rdi)                         #! EA = L0x7fffffff05f0; PC = 0x55555557dd44 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff05f0, L0x7fffffff05f8] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557dd49 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0x50(%rdi)                         #! EA = L0x7fffffff0600; PC = 0x55555557dd4e *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0600, L0x7fffffff0608] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557dd53 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0x60(%rdi)                         #! EA = L0x7fffffff0610; PC = 0x55555557dd58 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0610, L0x7fffffff0618] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557dd5d *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0x70(%rdi)                         #! EA = L0x7fffffff0620; PC = 0x55555557dd61 *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff0620, L0x7fffffff0628] %xmm6q;
(* movddup 0x80(%rdi),%xmm6                        #! EA = L0x7fffffff0630; Value = 0xb5d49e996e2a9500; PC = 0x55555557dd66 *)
mov %xmm6 [ L0x7fffffff0630, L0x7fffffff0630 ];
(* movddup 0x88(%rdi),%xmm7                        #! EA = L0x7fffffff0638; Value = 0x2e7b7d5840e3e68f; PC = 0x55555557dd6e *)
mov %xmm7 [ L0x7fffffff0638, L0x7fffffff0638 ];
(* movddup 0x90(%rdi),%xmm8                        #! EA = L0x7fffffff0640; Value = 0x487b5b81e9eb3409; PC = 0x55555557dd76 *)
mov %xmm8 [ L0x7fffffff0640, L0x7fffffff0640 ];
(* movddup 0x98(%rdi),%xmm9                        #! EA = L0x7fffffff0648; Value = 0xd712cfa27a20c1f3; PC = 0x55555557dd7f *)
mov %xmm9 [ L0x7fffffff0648, L0x7fffffff0648 ];
(* movddup 0xa0(%rdi),%xmm10                       #! EA = L0x7fffffff0650; Value = 0xc441bd832d5ba205; PC = 0x55555557dd88 *)
mov %xmm10 [ L0x7fffffff0650, L0x7fffffff0650 ];
(* movddup 0xa8(%rdi),%xmm11                       #! EA = L0x7fffffff0658; Value = 0x6c66e31ef396b68c; PC = 0x55555557dd91 *)
mov %xmm11 [ L0x7fffffff0658, L0x7fffffff0658 ];
(* movddup 0xb0(%rdi),%xmm12                       #! EA = L0x7fffffff0660; Value = 0x6ba1da0e42ba9da8; PC = 0x55555557dd9a *)
mov %xmm12 [ L0x7fffffff0660, L0x7fffffff0660 ];
(* movddup 0xb8(%rdi),%xmm13                       #! EA = L0x7fffffff0668; Value = 0xa19a4acafb4401c9; PC = 0x55555557dda3 *)
mov %xmm13 [ L0x7fffffff0668, L0x7fffffff0668 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557ddac *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557ddb0 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557ddb4 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557ddba *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557ddbe *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557ddc2 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557ddc7 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557ddcc *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557ddd1 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557ddd5 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557ddd9 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557dddf *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557dde3 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557dde7 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557ddec *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557ddf1 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557ddf6 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557ddfa *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557ddfe *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557de04 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557de08 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557de0c *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557de12 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557de17 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557de1c *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557de20 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557de24 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557de2a *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557de2e *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557de32 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557de38 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557de3d *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557de42 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557de46 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557de4a *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557de50 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557de54 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557de58 *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557de5e *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557de63 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557de68 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557de6c *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557de70 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557de76 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557de7a *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557de7e *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557de84 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557de89 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557de8e *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557de92 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557de96 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557de9c *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557dea0 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557dea4 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dea9 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557deae *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557deb3 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557deb7 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557debb *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557dec1 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557dec5 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557dec9 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557dece *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557ded3 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557ded8 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557dedc *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dee0 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557dee6 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557deea *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557deee *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557def4 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557def9 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557defe *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557df02 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557df06 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557df0c *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557df10 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557df14 *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557df1a *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557df1f *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557df24 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557df28 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557df2c *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557df32 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557df36 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557df3a *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557df40 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557df45 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557df4a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557df4e *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557df52 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557df58 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557df5c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557df60 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557df65 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557df6a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557df6e *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,0x80(%rdi)                         #! EA = L0x7fffffff0630; PC = 0x55555557df73 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0630, L0x7fffffff0638] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557df7b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0x90(%rdi)                         #! EA = L0x7fffffff0640; PC = 0x55555557df80 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0640, L0x7fffffff0648] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557df88 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0xa0(%rdi)                         #! EA = L0x7fffffff0650; PC = 0x55555557df8d *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0650, L0x7fffffff0658] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557df95 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0xb0(%rdi)                         #! EA = L0x7fffffff0660; PC = 0x55555557df99 *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff0660, L0x7fffffff0668] %xmm6q;
(* movddup 0xc0(%rdi),%xmm6                        #! EA = L0x7fffffff0670; Value = 0x9721b3c403149b00; PC = 0x55555557dfa1 *)
mov %xmm6 [ L0x7fffffff0670, L0x7fffffff0670 ];
(* movddup 0xc8(%rdi),%xmm7                        #! EA = L0x7fffffff0678; Value = 0xed6dc12798adb70a; PC = 0x55555557dfa9 *)
mov %xmm7 [ L0x7fffffff0678, L0x7fffffff0678 ];
(* movddup 0xd0(%rdi),%xmm8                        #! EA = L0x7fffffff0680; Value = 0xe83683d9676aa556; PC = 0x55555557dfb1 *)
mov %xmm8 [ L0x7fffffff0680, L0x7fffffff0680 ];
(* movddup 0xd8(%rdi),%xmm9                        #! EA = L0x7fffffff0688; Value = 0xc484abaaf8c3cd05; PC = 0x55555557dfba *)
mov %xmm9 [ L0x7fffffff0688, L0x7fffffff0688 ];
(* movddup 0xe0(%rdi),%xmm10                       #! EA = L0x7fffffff0690; Value = 0x88fb63a776bfcd1f; PC = 0x55555557dfc3 *)
mov %xmm10 [ L0x7fffffff0690, L0x7fffffff0690 ];
(* movddup 0xe8(%rdi),%xmm11                       #! EA = L0x7fffffff0698; Value = 0x90aa8f2fe6872c28; PC = 0x55555557dfcc *)
mov %xmm11 [ L0x7fffffff0698, L0x7fffffff0698 ];
(* movddup 0xf0(%rdi),%xmm12                       #! EA = L0x7fffffff06a0; Value = 0x22b9280dfd57cdbb; PC = 0x55555557dfd5 *)
mov %xmm12 [ L0x7fffffff06a0, L0x7fffffff06a0 ];
(* movddup 0xf8(%rdi),%xmm13                       #! EA = L0x7fffffff06a8; Value = 0x67e335a1259c2984; PC = 0x55555557dfde *)
mov %xmm13 [ L0x7fffffff06a8, L0x7fffffff06a8 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557dfe7 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557dfeb *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dfef *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557dff5 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557dff9 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557dffd *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e002 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e007 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e00c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e010 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e014 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e01a *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e01e *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e022 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e027 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e02c *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e031 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e035 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e039 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e03f *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e043 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e047 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e04d *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e052 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e057 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e05b *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e05f *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e065 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e069 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e06d *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e073 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e078 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e07d *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e081 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e085 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e08b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e08f *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e093 *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e099 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e09e *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e0a3 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e0a7 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e0ab *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e0b1 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e0b5 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e0b9 *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e0bf *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e0c4 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e0c9 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e0cd *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e0d1 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e0d7 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e0db *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e0df *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e0e4 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e0e9 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e0ee *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e0f2 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e0f6 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e0fc *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e100 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e104 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e109 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e10e *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e113 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e117 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e11b *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e121 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e125 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e129 *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e12f *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e134 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e139 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e13d *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e141 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e147 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e14b *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e14f *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e155 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e15a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e15f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e163 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e167 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e16d *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e171 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e175 *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e17b *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e180 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e185 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e189 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e18d *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e193 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e197 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e19b *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e1a0 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e1a5 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e1a9 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,0xc0(%rdi)                         #! EA = L0x7fffffff0670; PC = 0x55555557e1ae *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0670, L0x7fffffff0678] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e1b6 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0xd0(%rdi)                         #! EA = L0x7fffffff0680; PC = 0x55555557e1bb *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0680, L0x7fffffff0688] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e1c3 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0xe0(%rdi)                         #! EA = L0x7fffffff0690; PC = 0x55555557e1c8 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0690, L0x7fffffff0698] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e1d0 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0xf0(%rdi)                         #! EA = L0x7fffffff06a0; PC = 0x55555557e1d4 *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff06a0, L0x7fffffff06a8] %xmm6q;
(* movddup 0x100(%rdi),%xmm6                       #! EA = L0x7fffffff06b0; Value = 0x20dc76b684907f00; PC = 0x55555557e1dc *)
mov %xmm6 [ L0x7fffffff06b0, L0x7fffffff06b0 ];
(* movddup 0x108(%rdi),%xmm7                       #! EA = L0x7fffffff06b8; Value = 0xcb61abc0b91a535d; PC = 0x55555557e1e4 *)
mov %xmm7 [ L0x7fffffff06b8, L0x7fffffff06b8 ];
(* movddup 0x110(%rdi),%xmm8                       #! EA = L0x7fffffff06c0; Value = 0x13cbedd357e3ef15; PC = 0x55555557e1ec *)
mov %xmm8 [ L0x7fffffff06c0, L0x7fffffff06c0 ];
(* movddup 0x118(%rdi),%xmm9                       #! EA = L0x7fffffff06c8; Value = 0x910a2bb2b98e6e3b; PC = 0x55555557e1f5 *)
mov %xmm9 [ L0x7fffffff06c8, L0x7fffffff06c8 ];
(* movddup 0x120(%rdi),%xmm10                      #! EA = L0x7fffffff06d0; Value = 0xfb03e2cd512cd432; PC = 0x55555557e1fe *)
mov %xmm10 [ L0x7fffffff06d0, L0x7fffffff06d0 ];
(* movddup 0x128(%rdi),%xmm11                      #! EA = L0x7fffffff06d8; Value = 0xab99f9743f188965; PC = 0x55555557e207 *)
mov %xmm11 [ L0x7fffffff06d8, L0x7fffffff06d8 ];
(* movddup 0x130(%rdi),%xmm12                      #! EA = L0x7fffffff06e0; Value = 0xe7505e0ee4537cb2; PC = 0x55555557e210 *)
mov %xmm12 [ L0x7fffffff06e0, L0x7fffffff06e0 ];
(* movddup 0x138(%rdi),%xmm13                      #! EA = L0x7fffffff06e8; Value = 0x6c82ca755cd9fc17; PC = 0x55555557e219 *)
mov %xmm13 [ L0x7fffffff06e8, L0x7fffffff06e8 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e222 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e226 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e22a *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e230 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e234 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e238 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e23d *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e242 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e247 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e24b *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e24f *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e255 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e259 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e25d *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e262 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e267 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e26c *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e270 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e274 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e27a *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e27e *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e282 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e288 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e28d *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e292 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e296 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e29a *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e2a0 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e2a4 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e2a8 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e2ae *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e2b3 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e2b8 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e2bc *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e2c0 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e2c6 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e2ca *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e2ce *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e2d4 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e2d9 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e2de *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e2e2 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e2e6 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e2ec *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e2f0 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e2f4 *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e2fa *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e2ff *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e304 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e308 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e30c *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e312 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e316 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e31a *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e31f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e324 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e329 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e32d *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e331 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e337 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e33b *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e33f *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e344 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e349 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e34e *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e352 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e356 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e35c *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e360 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e364 *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e36a *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e36f *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e374 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e378 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e37c *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e382 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e386 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e38a *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e390 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e395 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e39a *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e39e *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e3a2 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e3a8 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e3ac *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e3b0 *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e3b6 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e3bb *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e3c0 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e3c4 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e3c8 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e3ce *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e3d2 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e3d6 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e3db *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e3e0 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e3e4 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,0x100(%rdi)                        #! EA = L0x7fffffff06b0; PC = 0x55555557e3e9 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff06b0, L0x7fffffff06b8] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e3f1 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0x110(%rdi)                        #! EA = L0x7fffffff06c0; PC = 0x55555557e3f6 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff06c0, L0x7fffffff06c8] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e3fe *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0x120(%rdi)                        #! EA = L0x7fffffff06d0; PC = 0x55555557e403 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff06d0, L0x7fffffff06d8] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e40b *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0x130(%rdi)                        #! EA = L0x7fffffff06e0; PC = 0x55555557e40f *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff06e0, L0x7fffffff06e8] %xmm6q;
(* movddup 0x140(%rdi),%xmm6                       #! EA = L0x7fffffff06f0; Value = 0x6fb33df65189ad00; PC = 0x55555557e417 *)
mov %xmm6 [ L0x7fffffff06f0, L0x7fffffff06f0 ];
(* movddup 0x148(%rdi),%xmm7                       #! EA = L0x7fffffff06f8; Value = 0xfe0aacc676dd38ff; PC = 0x55555557e41f *)
mov %xmm7 [ L0x7fffffff06f8, L0x7fffffff06f8 ];
(* movddup 0x150(%rdi),%xmm8                       #! EA = L0x7fffffff0700; Value = 0x211f8185a50cc781; PC = 0x55555557e427 *)
mov %xmm8 [ L0x7fffffff0700, L0x7fffffff0700 ];
(* movddup 0x158(%rdi),%xmm9                       #! EA = L0x7fffffff0708; Value = 0xbddafc00146347f3; PC = 0x55555557e430 *)
mov %xmm9 [ L0x7fffffff0708, L0x7fffffff0708 ];
(* movddup 0x160(%rdi),%xmm10                      #! EA = L0x7fffffff0710; Value = 0xa8315b6901a06346; PC = 0x55555557e439 *)
mov %xmm10 [ L0x7fffffff0710, L0x7fffffff0710 ];
(* movddup 0x168(%rdi),%xmm11                      #! EA = L0x7fffffff0718; Value = 0x753467c785c14188; PC = 0x55555557e442 *)
mov %xmm11 [ L0x7fffffff0718, L0x7fffffff0718 ];
(* movddup 0x170(%rdi),%xmm12                      #! EA = L0x7fffffff0720; Value = 0x8c727c2e4c378726; PC = 0x55555557e44b *)
mov %xmm12 [ L0x7fffffff0720, L0x7fffffff0720 ];
(* movddup 0x178(%rdi),%xmm13                      #! EA = L0x7fffffff0728; Value = 0x8edb896deb1371eb; PC = 0x55555557e454 *)
mov %xmm13 [ L0x7fffffff0728, L0x7fffffff0728 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e45d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e461 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e465 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e46b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e46f *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e473 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e478 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e47d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e482 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e486 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e48a *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e490 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e494 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e498 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e49d *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e4a2 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e4a7 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e4ab *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e4af *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e4b5 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e4b9 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e4bd *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e4c3 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e4c8 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e4cd *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e4d1 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e4d5 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e4db *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e4df *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e4e3 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e4e9 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e4ee *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e4f3 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e4f7 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e4fb *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e501 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e505 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e509 *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e50f *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e514 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e519 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e51d *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e521 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e527 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e52b *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e52f *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e535 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e53a *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e53f *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e543 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e547 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e54d *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e551 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e555 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e55a *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e55f *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e564 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e568 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e56c *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e572 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e576 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e57a *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e57f *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e584 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e589 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e58d *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e591 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e597 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e59b *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e59f *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e5a5 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e5aa *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e5af *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e5b3 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e5b7 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e5bd *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e5c1 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e5c5 *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e5cb *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e5d0 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e5d5 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e5d9 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e5dd *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e5e3 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e5e7 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e5eb *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e5f1 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e5f6 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e5fb *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e5ff *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e603 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e609 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e60d *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e611 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e616 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e61b *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e61f *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,0x140(%rdi)                        #! EA = L0x7fffffff06f0; PC = 0x55555557e624 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff06f0, L0x7fffffff06f8] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e62c *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0x150(%rdi)                        #! EA = L0x7fffffff0700; PC = 0x55555557e631 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0700, L0x7fffffff0708] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e639 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0x160(%rdi)                        #! EA = L0x7fffffff0710; PC = 0x55555557e63e *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0710, L0x7fffffff0718] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e646 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0x170(%rdi)                        #! EA = L0x7fffffff0720; PC = 0x55555557e64a *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff0720, L0x7fffffff0728] %xmm6q;
(* movddup 0x180(%rdi),%xmm6                       #! EA = L0x7fffffff0730; Value = 0x250d02884c2ae200; PC = 0x55555557e652 *)
mov %xmm6 [ L0x7fffffff0730, L0x7fffffff0730 ];
(* movddup 0x188(%rdi),%xmm7                       #! EA = L0x7fffffff0738; Value = 0xd1009365ed719eed; PC = 0x55555557e65a *)
mov %xmm7 [ L0x7fffffff0738, L0x7fffffff0738 ];
(* movddup 0x190(%rdi),%xmm8                       #! EA = L0x7fffffff0740; Value = 0xe672227a18810914; PC = 0x55555557e662 *)
mov %xmm8 [ L0x7fffffff0740, L0x7fffffff0740 ];
(* movddup 0x198(%rdi),%xmm9                       #! EA = L0x7fffffff0748; Value = 0x09935a1519b221f1; PC = 0x55555557e66b *)
mov %xmm9 [ L0x7fffffff0748, L0x7fffffff0748 ];
(* movddup 0x1a0(%rdi),%xmm10                      #! EA = L0x7fffffff0750; Value = 0x737ae12fc7457960; PC = 0x55555557e674 *)
mov %xmm10 [ L0x7fffffff0750, L0x7fffffff0750 ];
(* movddup 0x1a8(%rdi),%xmm11                      #! EA = L0x7fffffff0758; Value = 0x84e5a79a54ee0f02; PC = 0x55555557e67d *)
mov %xmm11 [ L0x7fffffff0758, L0x7fffffff0758 ];
(* movddup 0x1b0(%rdi),%xmm12                      #! EA = L0x7fffffff0760; Value = 0xcb50874e6d70f81c; PC = 0x55555557e686 *)
mov %xmm12 [ L0x7fffffff0760, L0x7fffffff0760 ];
(* movddup 0x1b8(%rdi),%xmm13                      #! EA = L0x7fffffff0768; Value = 0x57e80f0f0fce8a9b; PC = 0x55555557e68f *)
mov %xmm13 [ L0x7fffffff0768, L0x7fffffff0768 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e698 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e69c *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e6a0 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e6a6 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e6aa *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e6ae *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e6b3 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e6b8 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e6bd *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e6c1 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e6c5 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e6cb *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e6cf *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e6d3 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e6d8 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e6dd *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e6e2 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e6e6 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e6ea *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e6f0 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e6f4 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e6f8 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e6fe *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e703 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e708 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e70c *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e710 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e716 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e71a *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm13@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e71e *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e724 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e729 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
or %xmm9@uint64[2] %xmm9q %xmm13q;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e72e *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e732 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e736 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e73c *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm14@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e740 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e744 *)
cast %xmm14q@uint64[2] %xmm14; split %xmm14 %dc %xmm14q 0x2;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e74a *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm15q@uint64[2] %xmm15;
or %xmm13@uint64[2] %xmm13q %xmm15q;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e74f *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm14q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e754 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm14@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e758 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm12q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e75c *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e762 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e766 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm3q@uint64[2] %xmm3;
and %xmm12@uint64[2] %xmm12q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e76a *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e770 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e775 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm12q@uint64[2] %xmm12;
or %xmm10@uint64[2] %xmm10q %xmm12q;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e77a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e77e *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e782 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e788 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e78c *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e790 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e795 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e79a *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e79f *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e7a3 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
and %xmm15@uint64[2] %xmm9q %xmm2q;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e7a7 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e7ad *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e7b1 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm3q@uint64[2] %xmm3;
and %xmm9@uint64[2] %xmm9q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e7b5 *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e7ba *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm15q@uint64[2] %xmm15;
or %xmm8@uint64[2] %xmm8q %xmm15q;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e7bf *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm7q %xmm9q;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e7c4 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm13q %xmm4q;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e7c8 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm14q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e7cc *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e7d2 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm5q@uint64[2] %xmm5;
and %xmm13@uint64[2] %xmm13q %xmm5q;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e7d6 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm5q@uint64[2] %xmm5;
and %xmm14@uint64[2] %xmm14q %xmm5q;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e7da *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x1;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e7e0 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm15q@uint64[2] %xmm15;
or %xmm9@uint64[2] %xmm9q %xmm15q;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e7e5 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm14q@uint64[2] %xmm14;
or %xmm13@uint64[2] %xmm13q %xmm14q;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e7ea *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm14@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e7ee *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm10q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e7f2 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e7f8 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e7fc *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e800 *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e806 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e80b *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm10q@uint64[2] %xmm10;
or %xmm10@uint64[2] %xmm11q %xmm10q;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e810 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm12q %xmm4q;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e814 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm8q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e818 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e81e *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm12@uint64[2] %xmm12q %xmm5q;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e822 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm8q %xmm5q;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e826 *)
cast %xmm12q@uint64[2] %xmm12; split %xmm12 %dc %xmm12q 0x1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e82c *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e831 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm8q@uint64[2] %xmm8;
or %xmm8@uint64[2] %xmm12q %xmm8q;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e836 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm12@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e83a *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm4q@uint64[2] %xmm4;
and %xmm15@uint64[2] %xmm7q %xmm4q;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e83e *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e844 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e848 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm5q@uint64[2] %xmm5;
and %xmm7@uint64[2] %xmm7q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e84c *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e851 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm15q@uint64[2] %xmm15;
or %xmm12@uint64[2] %xmm12q %xmm15q;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e856 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm7q@uint64[2] %xmm7;
or %xmm6@uint64[2] %xmm6q %xmm7q;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e85a *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm13q@uint64[2] %xmm13;
mov %xmm7 [ %xmm9q[0], %xmm13q[0] ];
(* movdqu %xmm7,0x180(%rdi)                        #! EA = L0x7fffffff0730; PC = 0x55555557e85f *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0730, L0x7fffffff0738] %xmm7q;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e867 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm10q@uint64[2] %xmm10;
mov %xmm7 [ %xmm14q[0], %xmm10q[0] ];
(* movdqu %xmm7,0x190(%rdi)                        #! EA = L0x7fffffff0740; PC = 0x55555557e86c *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0740, L0x7fffffff0748] %xmm7q;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e874 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm8q@uint64[2] %xmm8;
mov %xmm7 [ %xmm11q[0], %xmm8q[0] ];
(* movdqu %xmm7,0x1a0(%rdi)                        #! EA = L0x7fffffff0750; PC = 0x55555557e879 *)
cast %xmm7q@uint64[2] %xmm7; mov [L0x7fffffff0750, L0x7fffffff0758] %xmm7q;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e881 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm6q@uint64[2] %xmm6;
mov %xmm6 [ %xmm12q[0], %xmm6q[0] ];
(* movdqu %xmm6,0x1b0(%rdi)                        #! EA = L0x7fffffff0760; PC = 0x55555557e885 *)
cast %xmm6q@uint64[2] %xmm6; mov [L0x7fffffff0760, L0x7fffffff0768] %xmm6q;
(* movddup 0x1c0(%rdi),%xmm6                       #! EA = L0x7fffffff0770; Value = 0xa757a5cc82d36f00; PC = 0x55555557e88d *)
mov %xmm6 [ L0x7fffffff0770, L0x7fffffff0770 ];
(* movddup 0x1c8(%rdi),%xmm7                       #! EA = L0x7fffffff0778; Value = 0x29b9d40d48378a97; PC = 0x55555557e895 *)
mov %xmm7 [ L0x7fffffff0778, L0x7fffffff0778 ];
(* movddup 0x1d0(%rdi),%xmm8                       #! EA = L0x7fffffff0780; Value = 0x22eded102f8c8e77; PC = 0x55555557e89d *)
mov %xmm8 [ L0x7fffffff0780, L0x7fffffff0780 ];
(* movddup 0x1d8(%rdi),%xmm9                       #! EA = L0x7fffffff0788; Value = 0x5a84716895684e58; PC = 0x55555557e8a6 *)
mov %xmm9 [ L0x7fffffff0788, L0x7fffffff0788 ];
(* movddup 0x1e0(%rdi),%xmm10                      #! EA = L0x7fffffff0790; Value = 0x23a716dd346d4316; PC = 0x55555557e8af *)
mov %xmm10 [ L0x7fffffff0790, L0x7fffffff0790 ];
(* movddup 0x1e8(%rdi),%xmm11                      #! EA = L0x7fffffff0798; Value = 0xbbde940927183b72; PC = 0x55555557e8b8 *)
mov %xmm11 [ L0x7fffffff0798, L0x7fffffff0798 ];
(* movddup 0x1f0(%rdi),%xmm12                      #! EA = L0x7fffffff07a0; Value = 0x33f4860d37c96f1c; PC = 0x55555557e8c1 *)
mov %xmm12 [ L0x7fffffff07a0, L0x7fffffff07a0 ];
(* movddup 0x1f8(%rdi),%xmm13                      #! EA = L0x7fffffff07a8; Value = 0xf9273c88c23e8b7c; PC = 0x55555557e8ca *)
mov %xmm13 [ L0x7fffffff07a8, L0x7fffffff07a8 ];
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e8d3 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm0q@uint64[2] %xmm0;
and %xmm14@uint64[2] %xmm6q %xmm0q;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e8d7 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm10q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e8db *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e8e1 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
and %xmm6@uint64[2] %xmm6q %xmm1q;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e8e5 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm1q@uint64[2] %xmm1;
and %xmm10@uint64[2] %xmm10q %xmm1q;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e8e9 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x4;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e8ee *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm15q@uint64[2] %xmm15;
or %xmm14@uint64[2] %xmm14q %xmm15q;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e8f3 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm10q@uint64[2] %xmm10;
or %xmm6@uint64[2] %xmm6q %xmm10q;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e8f8 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm0q@uint64[2] %xmm0;
and %xmm10@uint64[2] %xmm7q %xmm0q;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e8fc *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm11q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e900 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e906 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
and %xmm7@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e90a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm1q@uint64[2] %xmm1;
and %xmm11@uint64[2] %xmm11q %xmm1q;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e90e *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x4;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e913 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm15q@uint64[2] %xmm15;
or %xmm10@uint64[2] %xmm10q %xmm15q;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e918 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm11q@uint64[2] %xmm11;
or %xmm7@uint64[2] %xmm7q %xmm11q;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e91d *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
and %xmm11@uint64[2] %xmm8q %xmm0q;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e921 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
and %xmm15@uint64[2] %xmm12q %xmm0q;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e925 *)
cast %xmm15q@uint64[2] %xmm15; split %dc %xmm15qL %xmm15q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm15 %xmm15qL %off;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e92b *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm1q@uint64[2] %xmm1;
and %xmm8@uint64[2] %xmm8q %xmm1q;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e92f *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm1q@uint64[2] %xmm1;
and %xmm12@uint64[2] %xmm12q %xmm1q;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e933 *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x4;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e939 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm15q@uint64[2] %xmm15;
or %xmm11@uint64[2] %xmm11q %xmm15q;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e93e *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm12q@uint64[2] %xmm12;
or %xmm8@uint64[2] %xmm8q %xmm12q;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e943 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm0q@uint64[2] %xmm0;
and %xmm12@uint64[2] %xmm9q %xmm0q;
(* vpand  %xmm0,%xmm13,%xmm0                       #! PC = 0x55555557e947 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm0q@uint64[2] %xmm0;
and %xmm0@uint64[2] %xmm13q %xmm0q;
(* psllq  $0x4,%xmm0                               #! PC = 0x55555557e94b *)
cast %xmm0q@uint64[2] %xmm0; split %dc %xmm0qL %xmm0q 60;
broadcast %off 2 [ 0x4@uint64 ]; shl %xmm0 %xmm0qL %off;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e950 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
and %xmm9@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm1,%xmm13,%xmm1                       #! PC = 0x55555557e954 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm1q@uint64[2] %xmm1;
and %xmm1@uint64[2] %xmm13q %xmm1q;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e958 *)
cast %xmm9q@uint64[2] %xmm9; split %xmm9 %dc %xmm9q 0x4;
(* vpor   %xmm0,%xmm12,%xmm0                       #! PC = 0x55555557e95e *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm0q@uint64[2] %xmm0;
or %xmm0@uint64[2] %xmm12q %xmm0q;
(* vpor   %xmm1,%xmm9,%xmm1                        #! PC = 0x55555557e962 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm1q@uint64[2] %xmm1;
or %xmm1@uint64[2] %xmm9q %xmm1q;
(* vpand  %xmm2,%xmm14,%xmm9                       #! PC = 0x55555557e966 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm2q@uint64[2] %xmm2;
and %xmm9@uint64[2] %xmm14q %xmm2q;
(* vpand  %xmm2,%xmm11,%xmm12                      #! PC = 0x55555557e96a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm11q %xmm2q;
(* psllq  $0x2,%xmm12                              #! PC = 0x55555557e96e *)
cast %xmm12q@uint64[2] %xmm12; split %dc %xmm12qL %xmm12q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm12 %xmm12qL %off;
(* vpand  %xmm3,%xmm14,%xmm13                      #! PC = 0x55555557e974 *)
cast %xmm14q@uint64[2] %xmm14; cast %xmm3q@uint64[2] %xmm3;
and %xmm13@uint64[2] %xmm14q %xmm3q;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e978 *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm3q@uint64[2] %xmm3;
and %xmm11@uint64[2] %xmm11q %xmm3q;
(* psrlq  $0x2,%xmm13                              #! PC = 0x55555557e97c *)
cast %xmm13q@uint64[2] %xmm13; split %xmm13 %dc %xmm13q 0x2;
(* vpor   %xmm12,%xmm9,%xmm9                       #! PC = 0x55555557e982 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm12q@uint64[2] %xmm12;
or %xmm9@uint64[2] %xmm9q %xmm12q;
(* vpor   %xmm11,%xmm13,%xmm11                     #! PC = 0x55555557e987 *)
cast %xmm13q@uint64[2] %xmm13; cast %xmm11q@uint64[2] %xmm11;
or %xmm11@uint64[2] %xmm13q %xmm11q;
(* vpand  %xmm2,%xmm10,%xmm12                      #! PC = 0x55555557e98c *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
and %xmm12@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm2,%xmm0,%xmm13                       #! PC = 0x55555557e990 *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm0q %xmm2q;
(* psllq  $0x2,%xmm13                              #! PC = 0x55555557e994 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm13 %xmm13qL %off;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e99a *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm3q@uint64[2] %xmm3;
and %xmm10@uint64[2] %xmm10q %xmm3q;
(* vpand  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555557e99e *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm3q@uint64[2] %xmm3;
and %xmm0@uint64[2] %xmm0q %xmm3q;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e9a2 *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x2;
(* vpor   %xmm13,%xmm12,%xmm12                     #! PC = 0x55555557e9a8 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm13q@uint64[2] %xmm13;
or %xmm12@uint64[2] %xmm12q %xmm13q;
(* vpor   %xmm0,%xmm10,%xmm0                       #! PC = 0x55555557e9ad *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm0q@uint64[2] %xmm0;
or %xmm0@uint64[2] %xmm10q %xmm0q;
(* vpand  %xmm2,%xmm6,%xmm10                       #! PC = 0x55555557e9b1 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm2q@uint64[2] %xmm2;
and %xmm10@uint64[2] %xmm6q %xmm2q;
(* vpand  %xmm2,%xmm8,%xmm13                       #! PC = 0x55555557e9b5 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
and %xmm13@uint64[2] %xmm8q %xmm2q;
(* psllq  $0x2,%xmm13                              #! PC = 0x55555557e9b9 *)
cast %xmm13q@uint64[2] %xmm13; split %dc %xmm13qL %xmm13q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm13 %xmm13qL %off;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e9bf *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm3q@uint64[2] %xmm3;
and %xmm6@uint64[2] %xmm6q %xmm3q;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e9c3 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm3q@uint64[2] %xmm3;
and %xmm8@uint64[2] %xmm8q %xmm3q;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e9c7 *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x2;
(* vpor   %xmm13,%xmm10,%xmm10                     #! PC = 0x55555557e9cc *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm13q@uint64[2] %xmm13;
or %xmm10@uint64[2] %xmm10q %xmm13q;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e9d1 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm8q@uint64[2] %xmm8;
or %xmm6@uint64[2] %xmm6q %xmm8q;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e9d6 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm2q@uint64[2] %xmm2;
and %xmm8@uint64[2] %xmm7q %xmm2q;
(* vpand  %xmm2,%xmm1,%xmm2                        #! PC = 0x55555557e9da *)
cast %xmm1q@uint64[2] %xmm1; cast %xmm2q@uint64[2] %xmm2;
and %xmm2@uint64[2] %xmm1q %xmm2q;
(* psllq  $0x2,%xmm2                               #! PC = 0x55555557e9de *)
cast %xmm2q@uint64[2] %xmm2; split %dc %xmm2qL %xmm2q 62;
broadcast %off 2 [ 0x2@uint64 ]; shl %xmm2 %xmm2qL %off;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e9e3 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm3q@uint64[2] %xmm3;
and %xmm7@uint64[2] %xmm7q %xmm3q;
(* vpand  %xmm3,%xmm1,%xmm1                        #! PC = 0x55555557e9e7 *)
cast %xmm1q@uint64[2] %xmm1; cast %xmm3q@uint64[2] %xmm3;
and %xmm1@uint64[2] %xmm1q %xmm3q;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e9eb *)
cast %xmm7q@uint64[2] %xmm7; split %xmm7 %dc %xmm7q 0x2;
(* vpor   %xmm2,%xmm8,%xmm2                        #! PC = 0x55555557e9f0 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm2q@uint64[2] %xmm2;
or %xmm2@uint64[2] %xmm8q %xmm2q;
(* vpor   %xmm1,%xmm7,%xmm1                        #! PC = 0x55555557e9f4 *)
cast %xmm7q@uint64[2] %xmm7; cast %xmm1q@uint64[2] %xmm1;
or %xmm1@uint64[2] %xmm7q %xmm1q;
(* vpand  %xmm4,%xmm9,%xmm3                        #! PC = 0x55555557e9f8 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm4q@uint64[2] %xmm4;
and %xmm3@uint64[2] %xmm9q %xmm4q;
(* vpand  %xmm4,%xmm12,%xmm7                       #! PC = 0x55555557e9fc *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm4q@uint64[2] %xmm4;
and %xmm7@uint64[2] %xmm12q %xmm4q;
(* psllq  $0x1,%xmm7                               #! PC = 0x55555557ea00 *)
cast %xmm7q@uint64[2] %xmm7; split %dc %xmm7qL %xmm7q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm7 %xmm7qL %off;
(* vpand  %xmm5,%xmm9,%xmm8                        #! PC = 0x55555557ea05 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm5q@uint64[2] %xmm5;
and %xmm8@uint64[2] %xmm9q %xmm5q;
(* vpand  %xmm5,%xmm12,%xmm9                       #! PC = 0x55555557ea09 *)
cast %xmm12q@uint64[2] %xmm12; cast %xmm5q@uint64[2] %xmm5;
and %xmm9@uint64[2] %xmm12q %xmm5q;
(* psrlq  $0x1,%xmm8                               #! PC = 0x55555557ea0d *)
cast %xmm8q@uint64[2] %xmm8; split %xmm8 %dc %xmm8q 0x1;
(* vpor   %xmm7,%xmm3,%xmm3                        #! PC = 0x55555557ea13 *)
cast %xmm3q@uint64[2] %xmm3; cast %xmm7q@uint64[2] %xmm7;
or %xmm3@uint64[2] %xmm3q %xmm7q;
(* vpor   %xmm9,%xmm8,%xmm7                        #! PC = 0x55555557ea17 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm9q@uint64[2] %xmm9;
or %xmm7@uint64[2] %xmm8q %xmm9q;
(* vpand  %xmm4,%xmm11,%xmm8                       #! PC = 0x55555557ea1c *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm4q@uint64[2] %xmm4;
and %xmm8@uint64[2] %xmm11q %xmm4q;
(* vpand  %xmm4,%xmm0,%xmm9                        #! PC = 0x55555557ea20 *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm0q %xmm4q;
(* psllq  $0x1,%xmm9                               #! PC = 0x55555557ea24 *)
cast %xmm9q@uint64[2] %xmm9; split %dc %xmm9qL %xmm9q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm9 %xmm9qL %off;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557ea2a *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm5q@uint64[2] %xmm5;
and %xmm11@uint64[2] %xmm11q %xmm5q;
(* vpand  %xmm5,%xmm0,%xmm0                        #! PC = 0x55555557ea2e *)
cast %xmm0q@uint64[2] %xmm0; cast %xmm5q@uint64[2] %xmm5;
and %xmm0@uint64[2] %xmm0q %xmm5q;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557ea32 *)
cast %xmm11q@uint64[2] %xmm11; split %xmm11 %dc %xmm11q 0x1;
(* vpor   %xmm9,%xmm8,%xmm8                        #! PC = 0x55555557ea38 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm9q@uint64[2] %xmm9;
or %xmm8@uint64[2] %xmm8q %xmm9q;
(* vpor   %xmm0,%xmm11,%xmm0                       #! PC = 0x55555557ea3d *)
cast %xmm11q@uint64[2] %xmm11; cast %xmm0q@uint64[2] %xmm0;
or %xmm0@uint64[2] %xmm11q %xmm0q;
(* vpand  %xmm4,%xmm10,%xmm9                       #! PC = 0x55555557ea41 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
and %xmm9@uint64[2] %xmm10q %xmm4q;
(* vpand  %xmm4,%xmm2,%xmm11                       #! PC = 0x55555557ea45 *)
cast %xmm2q@uint64[2] %xmm2; cast %xmm4q@uint64[2] %xmm4;
and %xmm11@uint64[2] %xmm2q %xmm4q;
(* psllq  $0x1,%xmm11                              #! PC = 0x55555557ea49 *)
cast %xmm11q@uint64[2] %xmm11; split %dc %xmm11qL %xmm11q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm11 %xmm11qL %off;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557ea4f *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm5q@uint64[2] %xmm5;
and %xmm10@uint64[2] %xmm10q %xmm5q;
(* vpand  %xmm5,%xmm2,%xmm2                        #! PC = 0x55555557ea53 *)
cast %xmm2q@uint64[2] %xmm2; cast %xmm5q@uint64[2] %xmm5;
and %xmm2@uint64[2] %xmm2q %xmm5q;
(* psrlq  $0x1,%xmm10                              #! PC = 0x55555557ea57 *)
cast %xmm10q@uint64[2] %xmm10; split %xmm10 %dc %xmm10q 0x1;
(* vpor   %xmm11,%xmm9,%xmm9                       #! PC = 0x55555557ea5d *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm11q@uint64[2] %xmm11;
or %xmm9@uint64[2] %xmm9q %xmm11q;
(* vpor   %xmm2,%xmm10,%xmm2                       #! PC = 0x55555557ea62 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm2q@uint64[2] %xmm2;
or %xmm2@uint64[2] %xmm10q %xmm2q;
(* vpand  %xmm4,%xmm6,%xmm10                       #! PC = 0x55555557ea66 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm4q@uint64[2] %xmm4;
and %xmm10@uint64[2] %xmm6q %xmm4q;
(* vpand  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555557ea6a *)
cast %xmm1q@uint64[2] %xmm1; cast %xmm4q@uint64[2] %xmm4;
and %xmm4@uint64[2] %xmm1q %xmm4q;
(* psllq  $0x1,%xmm4                               #! PC = 0x55555557ea6e *)
cast %xmm4q@uint64[2] %xmm4; split %dc %xmm4qL %xmm4q 63;
broadcast %off 2 [ 0x1@uint64 ]; shl %xmm4 %xmm4qL %off;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557ea73 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm5q@uint64[2] %xmm5;
and %xmm6@uint64[2] %xmm6q %xmm5q;
(* vpand  %xmm5,%xmm1,%xmm1                        #! PC = 0x55555557ea77 *)
cast %xmm1q@uint64[2] %xmm1; cast %xmm5q@uint64[2] %xmm5;
and %xmm1@uint64[2] %xmm1q %xmm5q;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557ea7b *)
cast %xmm6q@uint64[2] %xmm6; split %xmm6 %dc %xmm6q 0x1;
(* vpor   %xmm4,%xmm10,%xmm4                       #! PC = 0x55555557ea80 *)
cast %xmm10q@uint64[2] %xmm10; cast %xmm4q@uint64[2] %xmm4;
or %xmm4@uint64[2] %xmm10q %xmm4q;
(* vpor   %xmm1,%xmm6,%xmm1                        #! PC = 0x55555557ea84 *)
cast %xmm6q@uint64[2] %xmm6; cast %xmm1q@uint64[2] %xmm1;
or %xmm1@uint64[2] %xmm6q %xmm1q;
(* vpunpcklqdq %xmm7,%xmm3,%xmm3                   #! PC = 0x55555557ea88 *)
cast %xmm3q@uint64[2] %xmm3; cast %xmm7q@uint64[2] %xmm7;
mov %xmm3 [ %xmm3q[0], %xmm7q[0] ];
(* movdqu %xmm3,0x1c0(%rdi)                        #! EA = L0x7fffffff0770; PC = 0x55555557ea8c *)
cast %xmm3q@uint64[2] %xmm3; mov [L0x7fffffff0770, L0x7fffffff0778] %xmm3q;
(* vpunpcklqdq %xmm0,%xmm8,%xmm0                   #! PC = 0x55555557ea94 *)
cast %xmm8q@uint64[2] %xmm8; cast %xmm0q@uint64[2] %xmm0;
mov %xmm0 [ %xmm8q[0], %xmm0q[0] ];
(* movdqu %xmm0,0x1d0(%rdi)                        #! EA = L0x7fffffff0780; PC = 0x55555557ea98 *)
cast %xmm0q@uint64[2] %xmm0; mov [L0x7fffffff0780, L0x7fffffff0788] %xmm0q;
(* vpunpcklqdq %xmm2,%xmm9,%xmm0                   #! PC = 0x55555557eaa0 *)
cast %xmm9q@uint64[2] %xmm9; cast %xmm2q@uint64[2] %xmm2;
mov %xmm0 [ %xmm9q[0], %xmm2q[0] ];
(* movdqu %xmm0,0x1e0(%rdi)                        #! EA = L0x7fffffff0790; PC = 0x55555557eaa4 *)
cast %xmm0q@uint64[2] %xmm0; mov [L0x7fffffff0790, L0x7fffffff0798] %xmm0q;
(* vpunpcklqdq %xmm1,%xmm4,%xmm0                   #! PC = 0x55555557eaac *)
cast %xmm4q@uint64[2] %xmm4; cast %xmm1q@uint64[2] %xmm1;
mov %xmm0 [ %xmm4q[0], %xmm1q[0] ];
(* movdqu %xmm0,0x1f0(%rdi)                        #! EA = L0x7fffffff07a0; PC = 0x55555557eab0 *)
cast %xmm0q@uint64[2] %xmm0; mov [L0x7fffffff07a0, L0x7fffffff07a8] %xmm0q;
(* #add    %r11,%rsp                                #! PC = 0x55555557eab8 *)
#add    %r11,%rsp                                #! 0x55555557eab8 = 0x55555557eab8;
(* #! <- SP = 0x7fffffff0478 *)
#! 0x7fffffff0478 = 0x7fffffff0478;
(* #retq                                           #! PC = 0x55555557eabb *)
#retq                                           #! 0x55555557eabb = 0x55555557eabb;

mov %U64 [ L0x7fffffff05b0 ]; cast %U@bit[64] %U64;
mov [b0000,b0001,b0002,b0003,b0004,b0005,b0006,b0007,b0008,b0009,b000a,
     b000b,b000c,b000d,b000e,b000f,b0010,b0011,b0012,b0013,b0014,b0015,
     b0016,b0017,b0018,b0019,b001a,b001b,b001c,b001d,b001e,b001f,b0020,
     b0021,b0022,b0023,b0024,b0025,b0026,b0027,b0028,b0029,b002a,b002b,
     b002c,b002d,b002e,b002f,b0030,b0031,b0032,b0033,b0034,b0035,b0036,
     b0037,b0038,b0039,b003a,b003b,b003c,b003d,b003e,b003f] %U;
mov %U64 [ L0x7fffffff05b8 ]; cast %U@bit[64] %U64;
mov [b0100,b0101,b0102,b0103,b0104,b0105,b0106,b0107,b0108,b0109,b010a,
     b010b,b010c,b010d,b010e,b010f,b0110,b0111,b0112,b0113,b0114,b0115,
     b0116,b0117,b0118,b0119,b011a,b011b,b011c,b011d,b011e,b011f,b0120,
     b0121,b0122,b0123,b0124,b0125,b0126,b0127,b0128,b0129,b012a,b012b,
     b012c,b012d,b012e,b012f,b0130,b0131,b0132,b0133,b0134,b0135,b0136,
     b0137,b0138,b0139,b013a,b013b,b013c,b013d,b013e,b013f] %U;
mov %U64 [ L0x7fffffff05c0 ]; cast %U@bit[64] %U64;
mov [b0200,b0201,b0202,b0203,b0204,b0205,b0206,b0207,b0208,b0209,b020a,
     b020b,b020c,b020d,b020e,b020f,b0210,b0211,b0212,b0213,b0214,b0215,
     b0216,b0217,b0218,b0219,b021a,b021b,b021c,b021d,b021e,b021f,b0220,
     b0221,b0222,b0223,b0224,b0225,b0226,b0227,b0228,b0229,b022a,b022b,
     b022c,b022d,b022e,b022f,b0230,b0231,b0232,b0233,b0234,b0235,b0236,
     b0237,b0238,b0239,b023a,b023b,b023c,b023d,b023e,b023f] %U;
mov %U64 [ L0x7fffffff05c8 ]; cast %U@bit[64] %U64;
mov [b0300,b0301,b0302,b0303,b0304,b0305,b0306,b0307,b0308,b0309,b030a,
     b030b,b030c,b030d,b030e,b030f,b0310,b0311,b0312,b0313,b0314,b0315,
     b0316,b0317,b0318,b0319,b031a,b031b,b031c,b031d,b031e,b031f,b0320,
     b0321,b0322,b0323,b0324,b0325,b0326,b0327,b0328,b0329,b032a,b032b,
     b032c,b032d,b032e,b032f,b0330,b0331,b0332,b0333,b0334,b0335,b0336,
     b0337,b0338,b0339,b033a,b033b,b033c,b033d,b033e,b033f] %U;
mov %U64 [ L0x7fffffff05d0 ]; cast %U@bit[64] %U64;
mov [b0400,b0401,b0402,b0403,b0404,b0405,b0406,b0407,b0408,b0409,b040a,
     b040b,b040c,b040d,b040e,b040f,b0410,b0411,b0412,b0413,b0414,b0415,
     b0416,b0417,b0418,b0419,b041a,b041b,b041c,b041d,b041e,b041f,b0420,
     b0421,b0422,b0423,b0424,b0425,b0426,b0427,b0428,b0429,b042a,b042b,
     b042c,b042d,b042e,b042f,b0430,b0431,b0432,b0433,b0434,b0435,b0436,
     b0437,b0438,b0439,b043a,b043b,b043c,b043d,b043e,b043f] %U;
mov %U64 [ L0x7fffffff05d8 ]; cast %U@bit[64] %U64;
mov [b0500,b0501,b0502,b0503,b0504,b0505,b0506,b0507,b0508,b0509,b050a,
     b050b,b050c,b050d,b050e,b050f,b0510,b0511,b0512,b0513,b0514,b0515,
     b0516,b0517,b0518,b0519,b051a,b051b,b051c,b051d,b051e,b051f,b0520,
     b0521,b0522,b0523,b0524,b0525,b0526,b0527,b0528,b0529,b052a,b052b,
     b052c,b052d,b052e,b052f,b0530,b0531,b0532,b0533,b0534,b0535,b0536,
     b0537,b0538,b0539,b053a,b053b,b053c,b053d,b053e,b053f] %U;
mov %U64 [ L0x7fffffff05e0 ]; cast %U@bit[64] %U64;
mov [b0600,b0601,b0602,b0603,b0604,b0605,b0606,b0607,b0608,b0609,b060a,
     b060b,b060c,b060d,b060e,b060f,b0610,b0611,b0612,b0613,b0614,b0615,
     b0616,b0617,b0618,b0619,b061a,b061b,b061c,b061d,b061e,b061f,b0620,
     b0621,b0622,b0623,b0624,b0625,b0626,b0627,b0628,b0629,b062a,b062b,
     b062c,b062d,b062e,b062f,b0630,b0631,b0632,b0633,b0634,b0635,b0636,
     b0637,b0638,b0639,b063a,b063b,b063c,b063d,b063e,b063f] %U;
mov %U64 [ L0x7fffffff05e8 ]; cast %U@bit[64] %U64;
mov [b0700,b0701,b0702,b0703,b0704,b0705,b0706,b0707,b0708,b0709,b070a,
     b070b,b070c,b070d,b070e,b070f,b0710,b0711,b0712,b0713,b0714,b0715,
     b0716,b0717,b0718,b0719,b071a,b071b,b071c,b071d,b071e,b071f,b0720,
     b0721,b0722,b0723,b0724,b0725,b0726,b0727,b0728,b0729,b072a,b072b,
     b072c,b072d,b072e,b072f,b0730,b0731,b0732,b0733,b0734,b0735,b0736,
     b0737,b0738,b0739,b073a,b073b,b073c,b073d,b073e,b073f] %U;
mov %U64 [ L0x7fffffff05f0 ]; cast %U@bit[64] %U64;
mov [b0800,b0801,b0802,b0803,b0804,b0805,b0806,b0807,b0808,b0809,b080a,
     b080b,b080c,b080d,b080e,b080f,b0810,b0811,b0812,b0813,b0814,b0815,
     b0816,b0817,b0818,b0819,b081a,b081b,b081c,b081d,b081e,b081f,b0820,
     b0821,b0822,b0823,b0824,b0825,b0826,b0827,b0828,b0829,b082a,b082b,
     b082c,b082d,b082e,b082f,b0830,b0831,b0832,b0833,b0834,b0835,b0836,
     b0837,b0838,b0839,b083a,b083b,b083c,b083d,b083e,b083f] %U;
mov %U64 [ L0x7fffffff05f8 ]; cast %U@bit[64] %U64;
mov [b0900,b0901,b0902,b0903,b0904,b0905,b0906,b0907,b0908,b0909,b090a,
     b090b,b090c,b090d,b090e,b090f,b0910,b0911,b0912,b0913,b0914,b0915,
     b0916,b0917,b0918,b0919,b091a,b091b,b091c,b091d,b091e,b091f,b0920,
     b0921,b0922,b0923,b0924,b0925,b0926,b0927,b0928,b0929,b092a,b092b,
     b092c,b092d,b092e,b092f,b0930,b0931,b0932,b0933,b0934,b0935,b0936,
     b0937,b0938,b0939,b093a,b093b,b093c,b093d,b093e,b093f] %U;
mov %U64 [ L0x7fffffff0600 ]; cast %U@bit[64] %U64;
mov [b0a00,b0a01,b0a02,b0a03,b0a04,b0a05,b0a06,b0a07,b0a08,b0a09,b0a0a,
     b0a0b,b0a0c,b0a0d,b0a0e,b0a0f,b0a10,b0a11,b0a12,b0a13,b0a14,b0a15,
     b0a16,b0a17,b0a18,b0a19,b0a1a,b0a1b,b0a1c,b0a1d,b0a1e,b0a1f,b0a20,
     b0a21,b0a22,b0a23,b0a24,b0a25,b0a26,b0a27,b0a28,b0a29,b0a2a,b0a2b,
     b0a2c,b0a2d,b0a2e,b0a2f,b0a30,b0a31,b0a32,b0a33,b0a34,b0a35,b0a36,
     b0a37,b0a38,b0a39,b0a3a,b0a3b,b0a3c,b0a3d,b0a3e,b0a3f] %U;
mov %U64 [ L0x7fffffff0608 ]; cast %U@bit[64] %U64;
mov [b0b00,b0b01,b0b02,b0b03,b0b04,b0b05,b0b06,b0b07,b0b08,b0b09,b0b0a,
     b0b0b,b0b0c,b0b0d,b0b0e,b0b0f,b0b10,b0b11,b0b12,b0b13,b0b14,b0b15,
     b0b16,b0b17,b0b18,b0b19,b0b1a,b0b1b,b0b1c,b0b1d,b0b1e,b0b1f,b0b20,
     b0b21,b0b22,b0b23,b0b24,b0b25,b0b26,b0b27,b0b28,b0b29,b0b2a,b0b2b,
     b0b2c,b0b2d,b0b2e,b0b2f,b0b30,b0b31,b0b32,b0b33,b0b34,b0b35,b0b36,
     b0b37,b0b38,b0b39,b0b3a,b0b3b,b0b3c,b0b3d,b0b3e,b0b3f] %U;
mov %U64 [ L0x7fffffff0610 ]; cast %U@bit[64] %U64;
mov [b0c00,b0c01,b0c02,b0c03,b0c04,b0c05,b0c06,b0c07,b0c08,b0c09,b0c0a,
     b0c0b,b0c0c,b0c0d,b0c0e,b0c0f,b0c10,b0c11,b0c12,b0c13,b0c14,b0c15,
     b0c16,b0c17,b0c18,b0c19,b0c1a,b0c1b,b0c1c,b0c1d,b0c1e,b0c1f,b0c20,
     b0c21,b0c22,b0c23,b0c24,b0c25,b0c26,b0c27,b0c28,b0c29,b0c2a,b0c2b,
     b0c2c,b0c2d,b0c2e,b0c2f,b0c30,b0c31,b0c32,b0c33,b0c34,b0c35,b0c36,
     b0c37,b0c38,b0c39,b0c3a,b0c3b,b0c3c,b0c3d,b0c3e,b0c3f] %U;
mov %U64 [ L0x7fffffff0618 ]; cast %U@bit[64] %U64;
mov [b0d00,b0d01,b0d02,b0d03,b0d04,b0d05,b0d06,b0d07,b0d08,b0d09,b0d0a,
     b0d0b,b0d0c,b0d0d,b0d0e,b0d0f,b0d10,b0d11,b0d12,b0d13,b0d14,b0d15,
     b0d16,b0d17,b0d18,b0d19,b0d1a,b0d1b,b0d1c,b0d1d,b0d1e,b0d1f,b0d20,
     b0d21,b0d22,b0d23,b0d24,b0d25,b0d26,b0d27,b0d28,b0d29,b0d2a,b0d2b,
     b0d2c,b0d2d,b0d2e,b0d2f,b0d30,b0d31,b0d32,b0d33,b0d34,b0d35,b0d36,
     b0d37,b0d38,b0d39,b0d3a,b0d3b,b0d3c,b0d3d,b0d3e,b0d3f] %U;
mov %U64 [ L0x7fffffff0620 ]; cast %U@bit[64] %U64;
mov [b0e00,b0e01,b0e02,b0e03,b0e04,b0e05,b0e06,b0e07,b0e08,b0e09,b0e0a,
     b0e0b,b0e0c,b0e0d,b0e0e,b0e0f,b0e10,b0e11,b0e12,b0e13,b0e14,b0e15,
     b0e16,b0e17,b0e18,b0e19,b0e1a,b0e1b,b0e1c,b0e1d,b0e1e,b0e1f,b0e20,
     b0e21,b0e22,b0e23,b0e24,b0e25,b0e26,b0e27,b0e28,b0e29,b0e2a,b0e2b,
     b0e2c,b0e2d,b0e2e,b0e2f,b0e30,b0e31,b0e32,b0e33,b0e34,b0e35,b0e36,
     b0e37,b0e38,b0e39,b0e3a,b0e3b,b0e3c,b0e3d,b0e3e,b0e3f] %U;
mov %U64 [ L0x7fffffff0628 ]; cast %U@bit[64] %U64;
mov [b0f00,b0f01,b0f02,b0f03,b0f04,b0f05,b0f06,b0f07,b0f08,b0f09,b0f0a,
     b0f0b,b0f0c,b0f0d,b0f0e,b0f0f,b0f10,b0f11,b0f12,b0f13,b0f14,b0f15,
     b0f16,b0f17,b0f18,b0f19,b0f1a,b0f1b,b0f1c,b0f1d,b0f1e,b0f1f,b0f20,
     b0f21,b0f22,b0f23,b0f24,b0f25,b0f26,b0f27,b0f28,b0f29,b0f2a,b0f2b,
     b0f2c,b0f2d,b0f2e,b0f2f,b0f30,b0f31,b0f32,b0f33,b0f34,b0f35,b0f36,
     b0f37,b0f38,b0f39,b0f3a,b0f3b,b0f3c,b0f3d,b0f3e,b0f3f] %U;
mov %U64 [ L0x7fffffff0630 ]; cast %U@bit[64] %U64;
mov [b1000,b1001,b1002,b1003,b1004,b1005,b1006,b1007,b1008,b1009,b100a,
     b100b,b100c,b100d,b100e,b100f,b1010,b1011,b1012,b1013,b1014,b1015,
     b1016,b1017,b1018,b1019,b101a,b101b,b101c,b101d,b101e,b101f,b1020,
     b1021,b1022,b1023,b1024,b1025,b1026,b1027,b1028,b1029,b102a,b102b,
     b102c,b102d,b102e,b102f,b1030,b1031,b1032,b1033,b1034,b1035,b1036,
     b1037,b1038,b1039,b103a,b103b,b103c,b103d,b103e,b103f] %U;
mov %U64 [ L0x7fffffff0638 ]; cast %U@bit[64] %U64;
mov [b1100,b1101,b1102,b1103,b1104,b1105,b1106,b1107,b1108,b1109,b110a,
     b110b,b110c,b110d,b110e,b110f,b1110,b1111,b1112,b1113,b1114,b1115,
     b1116,b1117,b1118,b1119,b111a,b111b,b111c,b111d,b111e,b111f,b1120,
     b1121,b1122,b1123,b1124,b1125,b1126,b1127,b1128,b1129,b112a,b112b,
     b112c,b112d,b112e,b112f,b1130,b1131,b1132,b1133,b1134,b1135,b1136,
     b1137,b1138,b1139,b113a,b113b,b113c,b113d,b113e,b113f] %U;
mov %U64 [ L0x7fffffff0640 ]; cast %U@bit[64] %U64;
mov [b1200,b1201,b1202,b1203,b1204,b1205,b1206,b1207,b1208,b1209,b120a,
     b120b,b120c,b120d,b120e,b120f,b1210,b1211,b1212,b1213,b1214,b1215,
     b1216,b1217,b1218,b1219,b121a,b121b,b121c,b121d,b121e,b121f,b1220,
     b1221,b1222,b1223,b1224,b1225,b1226,b1227,b1228,b1229,b122a,b122b,
     b122c,b122d,b122e,b122f,b1230,b1231,b1232,b1233,b1234,b1235,b1236,
     b1237,b1238,b1239,b123a,b123b,b123c,b123d,b123e,b123f] %U;
mov %U64 [ L0x7fffffff0648 ]; cast %U@bit[64] %U64;
mov [b1300,b1301,b1302,b1303,b1304,b1305,b1306,b1307,b1308,b1309,b130a,
     b130b,b130c,b130d,b130e,b130f,b1310,b1311,b1312,b1313,b1314,b1315,
     b1316,b1317,b1318,b1319,b131a,b131b,b131c,b131d,b131e,b131f,b1320,
     b1321,b1322,b1323,b1324,b1325,b1326,b1327,b1328,b1329,b132a,b132b,
     b132c,b132d,b132e,b132f,b1330,b1331,b1332,b1333,b1334,b1335,b1336,
     b1337,b1338,b1339,b133a,b133b,b133c,b133d,b133e,b133f] %U;
mov %U64 [ L0x7fffffff0650 ]; cast %U@bit[64] %U64;
mov [b1400,b1401,b1402,b1403,b1404,b1405,b1406,b1407,b1408,b1409,b140a,
     b140b,b140c,b140d,b140e,b140f,b1410,b1411,b1412,b1413,b1414,b1415,
     b1416,b1417,b1418,b1419,b141a,b141b,b141c,b141d,b141e,b141f,b1420,
     b1421,b1422,b1423,b1424,b1425,b1426,b1427,b1428,b1429,b142a,b142b,
     b142c,b142d,b142e,b142f,b1430,b1431,b1432,b1433,b1434,b1435,b1436,
     b1437,b1438,b1439,b143a,b143b,b143c,b143d,b143e,b143f] %U;
mov %U64 [ L0x7fffffff0658 ]; cast %U@bit[64] %U64;
mov [b1500,b1501,b1502,b1503,b1504,b1505,b1506,b1507,b1508,b1509,b150a,
     b150b,b150c,b150d,b150e,b150f,b1510,b1511,b1512,b1513,b1514,b1515,
     b1516,b1517,b1518,b1519,b151a,b151b,b151c,b151d,b151e,b151f,b1520,
     b1521,b1522,b1523,b1524,b1525,b1526,b1527,b1528,b1529,b152a,b152b,
     b152c,b152d,b152e,b152f,b1530,b1531,b1532,b1533,b1534,b1535,b1536,
     b1537,b1538,b1539,b153a,b153b,b153c,b153d,b153e,b153f] %U;
mov %U64 [ L0x7fffffff0660 ]; cast %U@bit[64] %U64;
mov [b1600,b1601,b1602,b1603,b1604,b1605,b1606,b1607,b1608,b1609,b160a,
     b160b,b160c,b160d,b160e,b160f,b1610,b1611,b1612,b1613,b1614,b1615,
     b1616,b1617,b1618,b1619,b161a,b161b,b161c,b161d,b161e,b161f,b1620,
     b1621,b1622,b1623,b1624,b1625,b1626,b1627,b1628,b1629,b162a,b162b,
     b162c,b162d,b162e,b162f,b1630,b1631,b1632,b1633,b1634,b1635,b1636,
     b1637,b1638,b1639,b163a,b163b,b163c,b163d,b163e,b163f] %U;
mov %U64 [ L0x7fffffff0668 ]; cast %U@bit[64] %U64;
mov [b1700,b1701,b1702,b1703,b1704,b1705,b1706,b1707,b1708,b1709,b170a,
     b170b,b170c,b170d,b170e,b170f,b1710,b1711,b1712,b1713,b1714,b1715,
     b1716,b1717,b1718,b1719,b171a,b171b,b171c,b171d,b171e,b171f,b1720,
     b1721,b1722,b1723,b1724,b1725,b1726,b1727,b1728,b1729,b172a,b172b,
     b172c,b172d,b172e,b172f,b1730,b1731,b1732,b1733,b1734,b1735,b1736,
     b1737,b1738,b1739,b173a,b173b,b173c,b173d,b173e,b173f] %U;
mov %U64 [ L0x7fffffff0670 ]; cast %U@bit[64] %U64;
mov [b1800,b1801,b1802,b1803,b1804,b1805,b1806,b1807,b1808,b1809,b180a,
     b180b,b180c,b180d,b180e,b180f,b1810,b1811,b1812,b1813,b1814,b1815,
     b1816,b1817,b1818,b1819,b181a,b181b,b181c,b181d,b181e,b181f,b1820,
     b1821,b1822,b1823,b1824,b1825,b1826,b1827,b1828,b1829,b182a,b182b,
     b182c,b182d,b182e,b182f,b1830,b1831,b1832,b1833,b1834,b1835,b1836,
     b1837,b1838,b1839,b183a,b183b,b183c,b183d,b183e,b183f] %U;
mov %U64 [ L0x7fffffff0678 ]; cast %U@bit[64] %U64;
mov [b1900,b1901,b1902,b1903,b1904,b1905,b1906,b1907,b1908,b1909,b190a,
     b190b,b190c,b190d,b190e,b190f,b1910,b1911,b1912,b1913,b1914,b1915,
     b1916,b1917,b1918,b1919,b191a,b191b,b191c,b191d,b191e,b191f,b1920,
     b1921,b1922,b1923,b1924,b1925,b1926,b1927,b1928,b1929,b192a,b192b,
     b192c,b192d,b192e,b192f,b1930,b1931,b1932,b1933,b1934,b1935,b1936,
     b1937,b1938,b1939,b193a,b193b,b193c,b193d,b193e,b193f] %U;
mov %U64 [ L0x7fffffff0680 ]; cast %U@bit[64] %U64;
mov [b1a00,b1a01,b1a02,b1a03,b1a04,b1a05,b1a06,b1a07,b1a08,b1a09,b1a0a,
     b1a0b,b1a0c,b1a0d,b1a0e,b1a0f,b1a10,b1a11,b1a12,b1a13,b1a14,b1a15,
     b1a16,b1a17,b1a18,b1a19,b1a1a,b1a1b,b1a1c,b1a1d,b1a1e,b1a1f,b1a20,
     b1a21,b1a22,b1a23,b1a24,b1a25,b1a26,b1a27,b1a28,b1a29,b1a2a,b1a2b,
     b1a2c,b1a2d,b1a2e,b1a2f,b1a30,b1a31,b1a32,b1a33,b1a34,b1a35,b1a36,
     b1a37,b1a38,b1a39,b1a3a,b1a3b,b1a3c,b1a3d,b1a3e,b1a3f] %U;
mov %U64 [ L0x7fffffff0688 ]; cast %U@bit[64] %U64;
mov [b1b00,b1b01,b1b02,b1b03,b1b04,b1b05,b1b06,b1b07,b1b08,b1b09,b1b0a,
     b1b0b,b1b0c,b1b0d,b1b0e,b1b0f,b1b10,b1b11,b1b12,b1b13,b1b14,b1b15,
     b1b16,b1b17,b1b18,b1b19,b1b1a,b1b1b,b1b1c,b1b1d,b1b1e,b1b1f,b1b20,
     b1b21,b1b22,b1b23,b1b24,b1b25,b1b26,b1b27,b1b28,b1b29,b1b2a,b1b2b,
     b1b2c,b1b2d,b1b2e,b1b2f,b1b30,b1b31,b1b32,b1b33,b1b34,b1b35,b1b36,
     b1b37,b1b38,b1b39,b1b3a,b1b3b,b1b3c,b1b3d,b1b3e,b1b3f] %U;
mov %U64 [ L0x7fffffff0690 ]; cast %U@bit[64] %U64;
mov [b1c00,b1c01,b1c02,b1c03,b1c04,b1c05,b1c06,b1c07,b1c08,b1c09,b1c0a,
     b1c0b,b1c0c,b1c0d,b1c0e,b1c0f,b1c10,b1c11,b1c12,b1c13,b1c14,b1c15,
     b1c16,b1c17,b1c18,b1c19,b1c1a,b1c1b,b1c1c,b1c1d,b1c1e,b1c1f,b1c20,
     b1c21,b1c22,b1c23,b1c24,b1c25,b1c26,b1c27,b1c28,b1c29,b1c2a,b1c2b,
     b1c2c,b1c2d,b1c2e,b1c2f,b1c30,b1c31,b1c32,b1c33,b1c34,b1c35,b1c36,
     b1c37,b1c38,b1c39,b1c3a,b1c3b,b1c3c,b1c3d,b1c3e,b1c3f] %U;
mov %U64 [ L0x7fffffff0698 ]; cast %U@bit[64] %U64;
mov [b1d00,b1d01,b1d02,b1d03,b1d04,b1d05,b1d06,b1d07,b1d08,b1d09,b1d0a,
     b1d0b,b1d0c,b1d0d,b1d0e,b1d0f,b1d10,b1d11,b1d12,b1d13,b1d14,b1d15,
     b1d16,b1d17,b1d18,b1d19,b1d1a,b1d1b,b1d1c,b1d1d,b1d1e,b1d1f,b1d20,
     b1d21,b1d22,b1d23,b1d24,b1d25,b1d26,b1d27,b1d28,b1d29,b1d2a,b1d2b,
     b1d2c,b1d2d,b1d2e,b1d2f,b1d30,b1d31,b1d32,b1d33,b1d34,b1d35,b1d36,
     b1d37,b1d38,b1d39,b1d3a,b1d3b,b1d3c,b1d3d,b1d3e,b1d3f] %U;
mov %U64 [ L0x7fffffff06a0 ]; cast %U@bit[64] %U64;
mov [b1e00,b1e01,b1e02,b1e03,b1e04,b1e05,b1e06,b1e07,b1e08,b1e09,b1e0a,
     b1e0b,b1e0c,b1e0d,b1e0e,b1e0f,b1e10,b1e11,b1e12,b1e13,b1e14,b1e15,
     b1e16,b1e17,b1e18,b1e19,b1e1a,b1e1b,b1e1c,b1e1d,b1e1e,b1e1f,b1e20,
     b1e21,b1e22,b1e23,b1e24,b1e25,b1e26,b1e27,b1e28,b1e29,b1e2a,b1e2b,
     b1e2c,b1e2d,b1e2e,b1e2f,b1e30,b1e31,b1e32,b1e33,b1e34,b1e35,b1e36,
     b1e37,b1e38,b1e39,b1e3a,b1e3b,b1e3c,b1e3d,b1e3e,b1e3f] %U;
mov %U64 [ L0x7fffffff06a8 ]; cast %U@bit[64] %U64;
mov [b1f00,b1f01,b1f02,b1f03,b1f04,b1f05,b1f06,b1f07,b1f08,b1f09,b1f0a,
     b1f0b,b1f0c,b1f0d,b1f0e,b1f0f,b1f10,b1f11,b1f12,b1f13,b1f14,b1f15,
     b1f16,b1f17,b1f18,b1f19,b1f1a,b1f1b,b1f1c,b1f1d,b1f1e,b1f1f,b1f20,
     b1f21,b1f22,b1f23,b1f24,b1f25,b1f26,b1f27,b1f28,b1f29,b1f2a,b1f2b,
     b1f2c,b1f2d,b1f2e,b1f2f,b1f30,b1f31,b1f32,b1f33,b1f34,b1f35,b1f36,
     b1f37,b1f38,b1f39,b1f3a,b1f3b,b1f3c,b1f3d,b1f3e,b1f3f] %U;
mov %U64 [ L0x7fffffff06b0 ]; cast %U@bit[64] %U64;
mov [b2000,b2001,b2002,b2003,b2004,b2005,b2006,b2007,b2008,b2009,b200a,
     b200b,b200c,b200d,b200e,b200f,b2010,b2011,b2012,b2013,b2014,b2015,
     b2016,b2017,b2018,b2019,b201a,b201b,b201c,b201d,b201e,b201f,b2020,
     b2021,b2022,b2023,b2024,b2025,b2026,b2027,b2028,b2029,b202a,b202b,
     b202c,b202d,b202e,b202f,b2030,b2031,b2032,b2033,b2034,b2035,b2036,
     b2037,b2038,b2039,b203a,b203b,b203c,b203d,b203e,b203f] %U;
mov %U64 [ L0x7fffffff06b8 ]; cast %U@bit[64] %U64;
mov [b2100,b2101,b2102,b2103,b2104,b2105,b2106,b2107,b2108,b2109,b210a,
     b210b,b210c,b210d,b210e,b210f,b2110,b2111,b2112,b2113,b2114,b2115,
     b2116,b2117,b2118,b2119,b211a,b211b,b211c,b211d,b211e,b211f,b2120,
     b2121,b2122,b2123,b2124,b2125,b2126,b2127,b2128,b2129,b212a,b212b,
     b212c,b212d,b212e,b212f,b2130,b2131,b2132,b2133,b2134,b2135,b2136,
     b2137,b2138,b2139,b213a,b213b,b213c,b213d,b213e,b213f] %U;
mov %U64 [ L0x7fffffff06c0 ]; cast %U@bit[64] %U64;
mov [b2200,b2201,b2202,b2203,b2204,b2205,b2206,b2207,b2208,b2209,b220a,
     b220b,b220c,b220d,b220e,b220f,b2210,b2211,b2212,b2213,b2214,b2215,
     b2216,b2217,b2218,b2219,b221a,b221b,b221c,b221d,b221e,b221f,b2220,
     b2221,b2222,b2223,b2224,b2225,b2226,b2227,b2228,b2229,b222a,b222b,
     b222c,b222d,b222e,b222f,b2230,b2231,b2232,b2233,b2234,b2235,b2236,
     b2237,b2238,b2239,b223a,b223b,b223c,b223d,b223e,b223f] %U;
mov %U64 [ L0x7fffffff06c8 ]; cast %U@bit[64] %U64;
mov [b2300,b2301,b2302,b2303,b2304,b2305,b2306,b2307,b2308,b2309,b230a,
     b230b,b230c,b230d,b230e,b230f,b2310,b2311,b2312,b2313,b2314,b2315,
     b2316,b2317,b2318,b2319,b231a,b231b,b231c,b231d,b231e,b231f,b2320,
     b2321,b2322,b2323,b2324,b2325,b2326,b2327,b2328,b2329,b232a,b232b,
     b232c,b232d,b232e,b232f,b2330,b2331,b2332,b2333,b2334,b2335,b2336,
     b2337,b2338,b2339,b233a,b233b,b233c,b233d,b233e,b233f] %U;
mov %U64 [ L0x7fffffff06d0 ]; cast %U@bit[64] %U64;
mov [b2400,b2401,b2402,b2403,b2404,b2405,b2406,b2407,b2408,b2409,b240a,
     b240b,b240c,b240d,b240e,b240f,b2410,b2411,b2412,b2413,b2414,b2415,
     b2416,b2417,b2418,b2419,b241a,b241b,b241c,b241d,b241e,b241f,b2420,
     b2421,b2422,b2423,b2424,b2425,b2426,b2427,b2428,b2429,b242a,b242b,
     b242c,b242d,b242e,b242f,b2430,b2431,b2432,b2433,b2434,b2435,b2436,
     b2437,b2438,b2439,b243a,b243b,b243c,b243d,b243e,b243f] %U;
mov %U64 [ L0x7fffffff06d8 ]; cast %U@bit[64] %U64;
mov [b2500,b2501,b2502,b2503,b2504,b2505,b2506,b2507,b2508,b2509,b250a,
     b250b,b250c,b250d,b250e,b250f,b2510,b2511,b2512,b2513,b2514,b2515,
     b2516,b2517,b2518,b2519,b251a,b251b,b251c,b251d,b251e,b251f,b2520,
     b2521,b2522,b2523,b2524,b2525,b2526,b2527,b2528,b2529,b252a,b252b,
     b252c,b252d,b252e,b252f,b2530,b2531,b2532,b2533,b2534,b2535,b2536,
     b2537,b2538,b2539,b253a,b253b,b253c,b253d,b253e,b253f] %U;
mov %U64 [ L0x7fffffff06e0 ]; cast %U@bit[64] %U64;
mov [b2600,b2601,b2602,b2603,b2604,b2605,b2606,b2607,b2608,b2609,b260a,
     b260b,b260c,b260d,b260e,b260f,b2610,b2611,b2612,b2613,b2614,b2615,
     b2616,b2617,b2618,b2619,b261a,b261b,b261c,b261d,b261e,b261f,b2620,
     b2621,b2622,b2623,b2624,b2625,b2626,b2627,b2628,b2629,b262a,b262b,
     b262c,b262d,b262e,b262f,b2630,b2631,b2632,b2633,b2634,b2635,b2636,
     b2637,b2638,b2639,b263a,b263b,b263c,b263d,b263e,b263f] %U;
mov %U64 [ L0x7fffffff06e8 ]; cast %U@bit[64] %U64;
mov [b2700,b2701,b2702,b2703,b2704,b2705,b2706,b2707,b2708,b2709,b270a,
     b270b,b270c,b270d,b270e,b270f,b2710,b2711,b2712,b2713,b2714,b2715,
     b2716,b2717,b2718,b2719,b271a,b271b,b271c,b271d,b271e,b271f,b2720,
     b2721,b2722,b2723,b2724,b2725,b2726,b2727,b2728,b2729,b272a,b272b,
     b272c,b272d,b272e,b272f,b2730,b2731,b2732,b2733,b2734,b2735,b2736,
     b2737,b2738,b2739,b273a,b273b,b273c,b273d,b273e,b273f] %U;
mov %U64 [ L0x7fffffff06f0 ]; cast %U@bit[64] %U64;
mov [b2800,b2801,b2802,b2803,b2804,b2805,b2806,b2807,b2808,b2809,b280a,
     b280b,b280c,b280d,b280e,b280f,b2810,b2811,b2812,b2813,b2814,b2815,
     b2816,b2817,b2818,b2819,b281a,b281b,b281c,b281d,b281e,b281f,b2820,
     b2821,b2822,b2823,b2824,b2825,b2826,b2827,b2828,b2829,b282a,b282b,
     b282c,b282d,b282e,b282f,b2830,b2831,b2832,b2833,b2834,b2835,b2836,
     b2837,b2838,b2839,b283a,b283b,b283c,b283d,b283e,b283f] %U;
mov %U64 [ L0x7fffffff06f8 ]; cast %U@bit[64] %U64;
mov [b2900,b2901,b2902,b2903,b2904,b2905,b2906,b2907,b2908,b2909,b290a,
     b290b,b290c,b290d,b290e,b290f,b2910,b2911,b2912,b2913,b2914,b2915,
     b2916,b2917,b2918,b2919,b291a,b291b,b291c,b291d,b291e,b291f,b2920,
     b2921,b2922,b2923,b2924,b2925,b2926,b2927,b2928,b2929,b292a,b292b,
     b292c,b292d,b292e,b292f,b2930,b2931,b2932,b2933,b2934,b2935,b2936,
     b2937,b2938,b2939,b293a,b293b,b293c,b293d,b293e,b293f] %U;
mov %U64 [ L0x7fffffff0700 ]; cast %U@bit[64] %U64;
mov [b2a00,b2a01,b2a02,b2a03,b2a04,b2a05,b2a06,b2a07,b2a08,b2a09,b2a0a,
     b2a0b,b2a0c,b2a0d,b2a0e,b2a0f,b2a10,b2a11,b2a12,b2a13,b2a14,b2a15,
     b2a16,b2a17,b2a18,b2a19,b2a1a,b2a1b,b2a1c,b2a1d,b2a1e,b2a1f,b2a20,
     b2a21,b2a22,b2a23,b2a24,b2a25,b2a26,b2a27,b2a28,b2a29,b2a2a,b2a2b,
     b2a2c,b2a2d,b2a2e,b2a2f,b2a30,b2a31,b2a32,b2a33,b2a34,b2a35,b2a36,
     b2a37,b2a38,b2a39,b2a3a,b2a3b,b2a3c,b2a3d,b2a3e,b2a3f] %U;
mov %U64 [ L0x7fffffff0708 ]; cast %U@bit[64] %U64;
mov [b2b00,b2b01,b2b02,b2b03,b2b04,b2b05,b2b06,b2b07,b2b08,b2b09,b2b0a,
     b2b0b,b2b0c,b2b0d,b2b0e,b2b0f,b2b10,b2b11,b2b12,b2b13,b2b14,b2b15,
     b2b16,b2b17,b2b18,b2b19,b2b1a,b2b1b,b2b1c,b2b1d,b2b1e,b2b1f,b2b20,
     b2b21,b2b22,b2b23,b2b24,b2b25,b2b26,b2b27,b2b28,b2b29,b2b2a,b2b2b,
     b2b2c,b2b2d,b2b2e,b2b2f,b2b30,b2b31,b2b32,b2b33,b2b34,b2b35,b2b36,
     b2b37,b2b38,b2b39,b2b3a,b2b3b,b2b3c,b2b3d,b2b3e,b2b3f] %U;
mov %U64 [ L0x7fffffff0710 ]; cast %U@bit[64] %U64;
mov [b2c00,b2c01,b2c02,b2c03,b2c04,b2c05,b2c06,b2c07,b2c08,b2c09,b2c0a,
     b2c0b,b2c0c,b2c0d,b2c0e,b2c0f,b2c10,b2c11,b2c12,b2c13,b2c14,b2c15,
     b2c16,b2c17,b2c18,b2c19,b2c1a,b2c1b,b2c1c,b2c1d,b2c1e,b2c1f,b2c20,
     b2c21,b2c22,b2c23,b2c24,b2c25,b2c26,b2c27,b2c28,b2c29,b2c2a,b2c2b,
     b2c2c,b2c2d,b2c2e,b2c2f,b2c30,b2c31,b2c32,b2c33,b2c34,b2c35,b2c36,
     b2c37,b2c38,b2c39,b2c3a,b2c3b,b2c3c,b2c3d,b2c3e,b2c3f] %U;
mov %U64 [ L0x7fffffff0718 ]; cast %U@bit[64] %U64;
mov [b2d00,b2d01,b2d02,b2d03,b2d04,b2d05,b2d06,b2d07,b2d08,b2d09,b2d0a,
     b2d0b,b2d0c,b2d0d,b2d0e,b2d0f,b2d10,b2d11,b2d12,b2d13,b2d14,b2d15,
     b2d16,b2d17,b2d18,b2d19,b2d1a,b2d1b,b2d1c,b2d1d,b2d1e,b2d1f,b2d20,
     b2d21,b2d22,b2d23,b2d24,b2d25,b2d26,b2d27,b2d28,b2d29,b2d2a,b2d2b,
     b2d2c,b2d2d,b2d2e,b2d2f,b2d30,b2d31,b2d32,b2d33,b2d34,b2d35,b2d36,
     b2d37,b2d38,b2d39,b2d3a,b2d3b,b2d3c,b2d3d,b2d3e,b2d3f] %U;
mov %U64 [ L0x7fffffff0720 ]; cast %U@bit[64] %U64;
mov [b2e00,b2e01,b2e02,b2e03,b2e04,b2e05,b2e06,b2e07,b2e08,b2e09,b2e0a,
     b2e0b,b2e0c,b2e0d,b2e0e,b2e0f,b2e10,b2e11,b2e12,b2e13,b2e14,b2e15,
     b2e16,b2e17,b2e18,b2e19,b2e1a,b2e1b,b2e1c,b2e1d,b2e1e,b2e1f,b2e20,
     b2e21,b2e22,b2e23,b2e24,b2e25,b2e26,b2e27,b2e28,b2e29,b2e2a,b2e2b,
     b2e2c,b2e2d,b2e2e,b2e2f,b2e30,b2e31,b2e32,b2e33,b2e34,b2e35,b2e36,
     b2e37,b2e38,b2e39,b2e3a,b2e3b,b2e3c,b2e3d,b2e3e,b2e3f] %U;
mov %U64 [ L0x7fffffff0728 ]; cast %U@bit[64] %U64;
mov [b2f00,b2f01,b2f02,b2f03,b2f04,b2f05,b2f06,b2f07,b2f08,b2f09,b2f0a,
     b2f0b,b2f0c,b2f0d,b2f0e,b2f0f,b2f10,b2f11,b2f12,b2f13,b2f14,b2f15,
     b2f16,b2f17,b2f18,b2f19,b2f1a,b2f1b,b2f1c,b2f1d,b2f1e,b2f1f,b2f20,
     b2f21,b2f22,b2f23,b2f24,b2f25,b2f26,b2f27,b2f28,b2f29,b2f2a,b2f2b,
     b2f2c,b2f2d,b2f2e,b2f2f,b2f30,b2f31,b2f32,b2f33,b2f34,b2f35,b2f36,
     b2f37,b2f38,b2f39,b2f3a,b2f3b,b2f3c,b2f3d,b2f3e,b2f3f] %U;
mov %U64 [ L0x7fffffff0730 ]; cast %U@bit[64] %U64;
mov [b3000,b3001,b3002,b3003,b3004,b3005,b3006,b3007,b3008,b3009,b300a,
     b300b,b300c,b300d,b300e,b300f,b3010,b3011,b3012,b3013,b3014,b3015,
     b3016,b3017,b3018,b3019,b301a,b301b,b301c,b301d,b301e,b301f,b3020,
     b3021,b3022,b3023,b3024,b3025,b3026,b3027,b3028,b3029,b302a,b302b,
     b302c,b302d,b302e,b302f,b3030,b3031,b3032,b3033,b3034,b3035,b3036,
     b3037,b3038,b3039,b303a,b303b,b303c,b303d,b303e,b303f] %U;
mov %U64 [ L0x7fffffff0738 ]; cast %U@bit[64] %U64;
mov [b3100,b3101,b3102,b3103,b3104,b3105,b3106,b3107,b3108,b3109,b310a,
     b310b,b310c,b310d,b310e,b310f,b3110,b3111,b3112,b3113,b3114,b3115,
     b3116,b3117,b3118,b3119,b311a,b311b,b311c,b311d,b311e,b311f,b3120,
     b3121,b3122,b3123,b3124,b3125,b3126,b3127,b3128,b3129,b312a,b312b,
     b312c,b312d,b312e,b312f,b3130,b3131,b3132,b3133,b3134,b3135,b3136,
     b3137,b3138,b3139,b313a,b313b,b313c,b313d,b313e,b313f] %U;
mov %U64 [ L0x7fffffff0740 ]; cast %U@bit[64] %U64;
mov [b3200,b3201,b3202,b3203,b3204,b3205,b3206,b3207,b3208,b3209,b320a,
     b320b,b320c,b320d,b320e,b320f,b3210,b3211,b3212,b3213,b3214,b3215,
     b3216,b3217,b3218,b3219,b321a,b321b,b321c,b321d,b321e,b321f,b3220,
     b3221,b3222,b3223,b3224,b3225,b3226,b3227,b3228,b3229,b322a,b322b,
     b322c,b322d,b322e,b322f,b3230,b3231,b3232,b3233,b3234,b3235,b3236,
     b3237,b3238,b3239,b323a,b323b,b323c,b323d,b323e,b323f] %U;
mov %U64 [ L0x7fffffff0748 ]; cast %U@bit[64] %U64;
mov [b3300,b3301,b3302,b3303,b3304,b3305,b3306,b3307,b3308,b3309,b330a,
     b330b,b330c,b330d,b330e,b330f,b3310,b3311,b3312,b3313,b3314,b3315,
     b3316,b3317,b3318,b3319,b331a,b331b,b331c,b331d,b331e,b331f,b3320,
     b3321,b3322,b3323,b3324,b3325,b3326,b3327,b3328,b3329,b332a,b332b,
     b332c,b332d,b332e,b332f,b3330,b3331,b3332,b3333,b3334,b3335,b3336,
     b3337,b3338,b3339,b333a,b333b,b333c,b333d,b333e,b333f] %U;
mov %U64 [ L0x7fffffff0750 ]; cast %U@bit[64] %U64;
mov [b3400,b3401,b3402,b3403,b3404,b3405,b3406,b3407,b3408,b3409,b340a,
     b340b,b340c,b340d,b340e,b340f,b3410,b3411,b3412,b3413,b3414,b3415,
     b3416,b3417,b3418,b3419,b341a,b341b,b341c,b341d,b341e,b341f,b3420,
     b3421,b3422,b3423,b3424,b3425,b3426,b3427,b3428,b3429,b342a,b342b,
     b342c,b342d,b342e,b342f,b3430,b3431,b3432,b3433,b3434,b3435,b3436,
     b3437,b3438,b3439,b343a,b343b,b343c,b343d,b343e,b343f] %U;
mov %U64 [ L0x7fffffff0758 ]; cast %U@bit[64] %U64;
mov [b3500,b3501,b3502,b3503,b3504,b3505,b3506,b3507,b3508,b3509,b350a,
     b350b,b350c,b350d,b350e,b350f,b3510,b3511,b3512,b3513,b3514,b3515,
     b3516,b3517,b3518,b3519,b351a,b351b,b351c,b351d,b351e,b351f,b3520,
     b3521,b3522,b3523,b3524,b3525,b3526,b3527,b3528,b3529,b352a,b352b,
     b352c,b352d,b352e,b352f,b3530,b3531,b3532,b3533,b3534,b3535,b3536,
     b3537,b3538,b3539,b353a,b353b,b353c,b353d,b353e,b353f] %U;
mov %U64 [ L0x7fffffff0760 ]; cast %U@bit[64] %U64;
mov [b3600,b3601,b3602,b3603,b3604,b3605,b3606,b3607,b3608,b3609,b360a,
     b360b,b360c,b360d,b360e,b360f,b3610,b3611,b3612,b3613,b3614,b3615,
     b3616,b3617,b3618,b3619,b361a,b361b,b361c,b361d,b361e,b361f,b3620,
     b3621,b3622,b3623,b3624,b3625,b3626,b3627,b3628,b3629,b362a,b362b,
     b362c,b362d,b362e,b362f,b3630,b3631,b3632,b3633,b3634,b3635,b3636,
     b3637,b3638,b3639,b363a,b363b,b363c,b363d,b363e,b363f] %U;
mov %U64 [ L0x7fffffff0768 ]; cast %U@bit[64] %U64;
mov [b3700,b3701,b3702,b3703,b3704,b3705,b3706,b3707,b3708,b3709,b370a,
     b370b,b370c,b370d,b370e,b370f,b3710,b3711,b3712,b3713,b3714,b3715,
     b3716,b3717,b3718,b3719,b371a,b371b,b371c,b371d,b371e,b371f,b3720,
     b3721,b3722,b3723,b3724,b3725,b3726,b3727,b3728,b3729,b372a,b372b,
     b372c,b372d,b372e,b372f,b3730,b3731,b3732,b3733,b3734,b3735,b3736,
     b3737,b3738,b3739,b373a,b373b,b373c,b373d,b373e,b373f] %U;
mov %U64 [ L0x7fffffff0770 ]; cast %U@bit[64] %U64;
mov [b3800,b3801,b3802,b3803,b3804,b3805,b3806,b3807,b3808,b3809,b380a,
     b380b,b380c,b380d,b380e,b380f,b3810,b3811,b3812,b3813,b3814,b3815,
     b3816,b3817,b3818,b3819,b381a,b381b,b381c,b381d,b381e,b381f,b3820,
     b3821,b3822,b3823,b3824,b3825,b3826,b3827,b3828,b3829,b382a,b382b,
     b382c,b382d,b382e,b382f,b3830,b3831,b3832,b3833,b3834,b3835,b3836,
     b3837,b3838,b3839,b383a,b383b,b383c,b383d,b383e,b383f] %U;
mov %U64 [ L0x7fffffff0778 ]; cast %U@bit[64] %U64;
mov [b3900,b3901,b3902,b3903,b3904,b3905,b3906,b3907,b3908,b3909,b390a,
     b390b,b390c,b390d,b390e,b390f,b3910,b3911,b3912,b3913,b3914,b3915,
     b3916,b3917,b3918,b3919,b391a,b391b,b391c,b391d,b391e,b391f,b3920,
     b3921,b3922,b3923,b3924,b3925,b3926,b3927,b3928,b3929,b392a,b392b,
     b392c,b392d,b392e,b392f,b3930,b3931,b3932,b3933,b3934,b3935,b3936,
     b3937,b3938,b3939,b393a,b393b,b393c,b393d,b393e,b393f] %U;
mov %U64 [ L0x7fffffff0780 ]; cast %U@bit[64] %U64;
mov [b3a00,b3a01,b3a02,b3a03,b3a04,b3a05,b3a06,b3a07,b3a08,b3a09,b3a0a,
     b3a0b,b3a0c,b3a0d,b3a0e,b3a0f,b3a10,b3a11,b3a12,b3a13,b3a14,b3a15,
     b3a16,b3a17,b3a18,b3a19,b3a1a,b3a1b,b3a1c,b3a1d,b3a1e,b3a1f,b3a20,
     b3a21,b3a22,b3a23,b3a24,b3a25,b3a26,b3a27,b3a28,b3a29,b3a2a,b3a2b,
     b3a2c,b3a2d,b3a2e,b3a2f,b3a30,b3a31,b3a32,b3a33,b3a34,b3a35,b3a36,
     b3a37,b3a38,b3a39,b3a3a,b3a3b,b3a3c,b3a3d,b3a3e,b3a3f] %U;
mov %U64 [ L0x7fffffff0788 ]; cast %U@bit[64] %U64;
mov [b3b00,b3b01,b3b02,b3b03,b3b04,b3b05,b3b06,b3b07,b3b08,b3b09,b3b0a,
     b3b0b,b3b0c,b3b0d,b3b0e,b3b0f,b3b10,b3b11,b3b12,b3b13,b3b14,b3b15,
     b3b16,b3b17,b3b18,b3b19,b3b1a,b3b1b,b3b1c,b3b1d,b3b1e,b3b1f,b3b20,
     b3b21,b3b22,b3b23,b3b24,b3b25,b3b26,b3b27,b3b28,b3b29,b3b2a,b3b2b,
     b3b2c,b3b2d,b3b2e,b3b2f,b3b30,b3b31,b3b32,b3b33,b3b34,b3b35,b3b36,
     b3b37,b3b38,b3b39,b3b3a,b3b3b,b3b3c,b3b3d,b3b3e,b3b3f] %U;
mov %U64 [ L0x7fffffff0790 ]; cast %U@bit[64] %U64;
mov [b3c00,b3c01,b3c02,b3c03,b3c04,b3c05,b3c06,b3c07,b3c08,b3c09,b3c0a,
     b3c0b,b3c0c,b3c0d,b3c0e,b3c0f,b3c10,b3c11,b3c12,b3c13,b3c14,b3c15,
     b3c16,b3c17,b3c18,b3c19,b3c1a,b3c1b,b3c1c,b3c1d,b3c1e,b3c1f,b3c20,
     b3c21,b3c22,b3c23,b3c24,b3c25,b3c26,b3c27,b3c28,b3c29,b3c2a,b3c2b,
     b3c2c,b3c2d,b3c2e,b3c2f,b3c30,b3c31,b3c32,b3c33,b3c34,b3c35,b3c36,
     b3c37,b3c38,b3c39,b3c3a,b3c3b,b3c3c,b3c3d,b3c3e,b3c3f] %U;
mov %U64 [ L0x7fffffff0798 ]; cast %U@bit[64] %U64;
mov [b3d00,b3d01,b3d02,b3d03,b3d04,b3d05,b3d06,b3d07,b3d08,b3d09,b3d0a,
     b3d0b,b3d0c,b3d0d,b3d0e,b3d0f,b3d10,b3d11,b3d12,b3d13,b3d14,b3d15,
     b3d16,b3d17,b3d18,b3d19,b3d1a,b3d1b,b3d1c,b3d1d,b3d1e,b3d1f,b3d20,
     b3d21,b3d22,b3d23,b3d24,b3d25,b3d26,b3d27,b3d28,b3d29,b3d2a,b3d2b,
     b3d2c,b3d2d,b3d2e,b3d2f,b3d30,b3d31,b3d32,b3d33,b3d34,b3d35,b3d36,
     b3d37,b3d38,b3d39,b3d3a,b3d3b,b3d3c,b3d3d,b3d3e,b3d3f] %U;
mov %U64 [ L0x7fffffff07a0 ]; cast %U@bit[64] %U64;
mov [b3e00,b3e01,b3e02,b3e03,b3e04,b3e05,b3e06,b3e07,b3e08,b3e09,b3e0a,
     b3e0b,b3e0c,b3e0d,b3e0e,b3e0f,b3e10,b3e11,b3e12,b3e13,b3e14,b3e15,
     b3e16,b3e17,b3e18,b3e19,b3e1a,b3e1b,b3e1c,b3e1d,b3e1e,b3e1f,b3e20,
     b3e21,b3e22,b3e23,b3e24,b3e25,b3e26,b3e27,b3e28,b3e29,b3e2a,b3e2b,
     b3e2c,b3e2d,b3e2e,b3e2f,b3e30,b3e31,b3e32,b3e33,b3e34,b3e35,b3e36,
     b3e37,b3e38,b3e39,b3e3a,b3e3b,b3e3c,b3e3d,b3e3e,b3e3f] %U;
mov %U64 [ L0x7fffffff07a8 ]; cast %U@bit[64] %U64;
mov [b3f00,b3f01,b3f02,b3f03,b3f04,b3f05,b3f06,b3f07,b3f08,b3f09,b3f0a,
     b3f0b,b3f0c,b3f0d,b3f0e,b3f0f,b3f10,b3f11,b3f12,b3f13,b3f14,b3f15,
     b3f16,b3f17,b3f18,b3f19,b3f1a,b3f1b,b3f1c,b3f1d,b3f1e,b3f1f,b3f20,
     b3f21,b3f22,b3f23,b3f24,b3f25,b3f26,b3f27,b3f28,b3f29,b3f2a,b3f2b,
     b3f2c,b3f2d,b3f2e,b3f2f,b3f30,b3f31,b3f32,b3f33,b3f34,b3f35,b3f36,
     b3f37,b3f38,b3f39,b3f3a,b3f3b,b3f3c,b3f3d,b3f3e,b3f3f] %U;

{
  true
  &&
and [a0000=b0000,a0001=b0100,a0002=b0200,a0003=b0300,a0004=b0400,a0005=b0500,
     a0006=b0600,a0007=b0700,a0008=b0800,a0009=b0900,a000a=b0a00,a000b=b0b00,
     a000c=b0c00,a000d=b0d00,a000e=b0e00,a000f=b0f00,a0010=b1000,a0011=b1100,
     a0012=b1200,a0013=b1300,a0014=b1400,a0015=b1500,a0016=b1600,a0017=b1700,
     a0018=b1800,a0019=b1900,a001a=b1a00,a001b=b1b00,a001c=b1c00,a001d=b1d00,
     a001e=b1e00,a001f=b1f00,a0020=b2000,a0021=b2100,a0022=b2200,a0023=b2300,
     a0024=b2400,a0025=b2500,a0026=b2600,a0027=b2700,a0028=b2800,a0029=b2900,
     a002a=b2a00,a002b=b2b00,a002c=b2c00,a002d=b2d00,a002e=b2e00,a002f=b2f00,
     a0030=b3000,a0031=b3100,a0032=b3200,a0033=b3300,a0034=b3400,a0035=b3500,
     a0036=b3600,a0037=b3700,a0038=b3800,a0039=b3900,a003a=b3a00,a003b=b3b00,
     a003c=b3c00,a003d=b3d00,a003e=b3e00,a003f=b3f00,a0100=b0001,a0101=b0101,
     a0102=b0201,a0103=b0301,a0104=b0401,a0105=b0501,a0106=b0601,a0107=b0701,
     a0108=b0801,a0109=b0901,a010a=b0a01,a010b=b0b01,a010c=b0c01,a010d=b0d01,
     a010e=b0e01,a010f=b0f01,a0110=b1001,a0111=b1101,a0112=b1201,a0113=b1301,
     a0114=b1401,a0115=b1501,a0116=b1601,a0117=b1701,a0118=b1801,a0119=b1901,
     a011a=b1a01,a011b=b1b01,a011c=b1c01,a011d=b1d01,a011e=b1e01,a011f=b1f01,
     a0120=b2001,a0121=b2101,a0122=b2201,a0123=b2301,a0124=b2401,a0125=b2501,
     a0126=b2601,a0127=b2701,a0128=b2801,a0129=b2901,a012a=b2a01,a012b=b2b01,
     a012c=b2c01,a012d=b2d01,a012e=b2e01,a012f=b2f01,a0130=b3001,a0131=b3101,
     a0132=b3201,a0133=b3301,a0134=b3401,a0135=b3501,a0136=b3601,a0137=b3701,
     a0138=b3801,a0139=b3901,a013a=b3a01,a013b=b3b01,a013c=b3c01,a013d=b3d01,
     a013e=b3e01,a013f=b3f01,a0200=b0002,a0201=b0102,a0202=b0202,a0203=b0302,
     a0204=b0402,a0205=b0502,a0206=b0602,a0207=b0702,a0208=b0802,a0209=b0902,
     a020a=b0a02,a020b=b0b02,a020c=b0c02,a020d=b0d02,a020e=b0e02,a020f=b0f02,
     a0210=b1002,a0211=b1102,a0212=b1202,a0213=b1302,a0214=b1402,a0215=b1502,
     a0216=b1602,a0217=b1702,a0218=b1802,a0219=b1902,a021a=b1a02,a021b=b1b02,
     a021c=b1c02,a021d=b1d02,a021e=b1e02,a021f=b1f02,a0220=b2002,a0221=b2102,
     a0222=b2202,a0223=b2302,a0224=b2402,a0225=b2502,a0226=b2602,a0227=b2702,
     a0228=b2802,a0229=b2902,a022a=b2a02,a022b=b2b02,a022c=b2c02,a022d=b2d02,
     a022e=b2e02,a022f=b2f02,a0230=b3002,a0231=b3102,a0232=b3202,a0233=b3302,
     a0234=b3402,a0235=b3502,a0236=b3602,a0237=b3702,a0238=b3802,a0239=b3902,
     a023a=b3a02,a023b=b3b02,a023c=b3c02,a023d=b3d02,a023e=b3e02,a023f=b3f02,
     a0300=b0003,a0301=b0103,a0302=b0203,a0303=b0303,a0304=b0403,a0305=b0503,
     a0306=b0603,a0307=b0703,a0308=b0803,a0309=b0903,a030a=b0a03,a030b=b0b03,
     a030c=b0c03,a030d=b0d03,a030e=b0e03,a030f=b0f03,a0310=b1003,a0311=b1103,
     a0312=b1203,a0313=b1303,a0314=b1403,a0315=b1503,a0316=b1603,a0317=b1703,
     a0318=b1803,a0319=b1903,a031a=b1a03,a031b=b1b03,a031c=b1c03,a031d=b1d03,
     a031e=b1e03,a031f=b1f03,a0320=b2003,a0321=b2103,a0322=b2203,a0323=b2303,
     a0324=b2403,a0325=b2503,a0326=b2603,a0327=b2703,a0328=b2803,a0329=b2903,
     a032a=b2a03,a032b=b2b03,a032c=b2c03,a032d=b2d03,a032e=b2e03,a032f=b2f03,
     a0330=b3003,a0331=b3103,a0332=b3203,a0333=b3303,a0334=b3403,a0335=b3503,
     a0336=b3603,a0337=b3703,a0338=b3803,a0339=b3903,a033a=b3a03,a033b=b3b03,
     a033c=b3c03,a033d=b3d03,a033e=b3e03,a033f=b3f03,a0400=b0004,a0401=b0104,
     a0402=b0204,a0403=b0304,a0404=b0404,a0405=b0504,a0406=b0604,a0407=b0704,
     a0408=b0804,a0409=b0904,a040a=b0a04,a040b=b0b04,a040c=b0c04,a040d=b0d04,
     a040e=b0e04,a040f=b0f04,a0410=b1004,a0411=b1104,a0412=b1204,a0413=b1304,
     a0414=b1404,a0415=b1504,a0416=b1604,a0417=b1704,a0418=b1804,a0419=b1904,
     a041a=b1a04,a041b=b1b04,a041c=b1c04,a041d=b1d04,a041e=b1e04,a041f=b1f04,
     a0420=b2004,a0421=b2104,a0422=b2204,a0423=b2304,a0424=b2404,a0425=b2504,
     a0426=b2604,a0427=b2704,a0428=b2804,a0429=b2904,a042a=b2a04,a042b=b2b04,
     a042c=b2c04,a042d=b2d04,a042e=b2e04,a042f=b2f04,a0430=b3004,a0431=b3104,
     a0432=b3204,a0433=b3304,a0434=b3404,a0435=b3504,a0436=b3604,a0437=b3704,
     a0438=b3804,a0439=b3904,a043a=b3a04,a043b=b3b04,a043c=b3c04,a043d=b3d04,
     a043e=b3e04,a043f=b3f04,a0500=b0005,a0501=b0105,a0502=b0205,a0503=b0305,
     a0504=b0405,a0505=b0505,a0506=b0605,a0507=b0705,a0508=b0805,a0509=b0905,
     a050a=b0a05,a050b=b0b05,a050c=b0c05,a050d=b0d05,a050e=b0e05,a050f=b0f05,
     a0510=b1005,a0511=b1105,a0512=b1205,a0513=b1305,a0514=b1405,a0515=b1505,
     a0516=b1605,a0517=b1705,a0518=b1805,a0519=b1905,a051a=b1a05,a051b=b1b05,
     a051c=b1c05,a051d=b1d05,a051e=b1e05,a051f=b1f05,a0520=b2005,a0521=b2105,
     a0522=b2205,a0523=b2305,a0524=b2405,a0525=b2505,a0526=b2605,a0527=b2705,
     a0528=b2805,a0529=b2905,a052a=b2a05,a052b=b2b05,a052c=b2c05,a052d=b2d05,
     a052e=b2e05,a052f=b2f05,a0530=b3005,a0531=b3105,a0532=b3205,a0533=b3305,
     a0534=b3405,a0535=b3505,a0536=b3605,a0537=b3705,a0538=b3805,a0539=b3905,
     a053a=b3a05,a053b=b3b05,a053c=b3c05,a053d=b3d05,a053e=b3e05,a053f=b3f05,
     a0600=b0006,a0601=b0106,a0602=b0206,a0603=b0306,a0604=b0406,a0605=b0506,
     a0606=b0606,a0607=b0706,a0608=b0806,a0609=b0906,a060a=b0a06,a060b=b0b06,
     a060c=b0c06,a060d=b0d06,a060e=b0e06,a060f=b0f06,a0610=b1006,a0611=b1106,
     a0612=b1206,a0613=b1306,a0614=b1406,a0615=b1506,a0616=b1606,a0617=b1706,
     a0618=b1806,a0619=b1906,a061a=b1a06,a061b=b1b06,a061c=b1c06,a061d=b1d06,
     a061e=b1e06,a061f=b1f06,a0620=b2006,a0621=b2106,a0622=b2206,a0623=b2306,
     a0624=b2406,a0625=b2506,a0626=b2606,a0627=b2706,a0628=b2806,a0629=b2906,
     a062a=b2a06,a062b=b2b06,a062c=b2c06,a062d=b2d06,a062e=b2e06,a062f=b2f06,
     a0630=b3006,a0631=b3106,a0632=b3206,a0633=b3306,a0634=b3406,a0635=b3506,
     a0636=b3606,a0637=b3706,a0638=b3806,a0639=b3906,a063a=b3a06,a063b=b3b06,
     a063c=b3c06,a063d=b3d06,a063e=b3e06,a063f=b3f06,a0700=b0007,a0701=b0107,
     a0702=b0207,a0703=b0307,a0704=b0407,a0705=b0507,a0706=b0607,a0707=b0707,
     a0708=b0807,a0709=b0907,a070a=b0a07,a070b=b0b07,a070c=b0c07,a070d=b0d07,
     a070e=b0e07,a070f=b0f07,a0710=b1007,a0711=b1107,a0712=b1207,a0713=b1307,
     a0714=b1407,a0715=b1507,a0716=b1607,a0717=b1707,a0718=b1807,a0719=b1907,
     a071a=b1a07,a071b=b1b07,a071c=b1c07,a071d=b1d07,a071e=b1e07,a071f=b1f07,
     a0720=b2007,a0721=b2107,a0722=b2207,a0723=b2307,a0724=b2407,a0725=b2507,
     a0726=b2607,a0727=b2707,a0728=b2807,a0729=b2907,a072a=b2a07,a072b=b2b07,
     a072c=b2c07,a072d=b2d07,a072e=b2e07,a072f=b2f07,a0730=b3007,a0731=b3107,
     a0732=b3207,a0733=b3307,a0734=b3407,a0735=b3507,a0736=b3607,a0737=b3707,
     a0738=b3807,a0739=b3907,a073a=b3a07,a073b=b3b07,a073c=b3c07,a073d=b3d07,
     a073e=b3e07,a073f=b3f07,a0800=b0008,a0801=b0108,a0802=b0208,a0803=b0308,
     a0804=b0408,a0805=b0508,a0806=b0608,a0807=b0708,a0808=b0808,a0809=b0908,
     a080a=b0a08,a080b=b0b08,a080c=b0c08,a080d=b0d08,a080e=b0e08,a080f=b0f08,
     a0810=b1008,a0811=b1108,a0812=b1208,a0813=b1308,a0814=b1408,a0815=b1508,
     a0816=b1608,a0817=b1708,a0818=b1808,a0819=b1908,a081a=b1a08,a081b=b1b08,
     a081c=b1c08,a081d=b1d08,a081e=b1e08,a081f=b1f08,a0820=b2008,a0821=b2108,
     a0822=b2208,a0823=b2308,a0824=b2408,a0825=b2508,a0826=b2608,a0827=b2708,
     a0828=b2808,a0829=b2908,a082a=b2a08,a082b=b2b08,a082c=b2c08,a082d=b2d08,
     a082e=b2e08,a082f=b2f08,a0830=b3008,a0831=b3108,a0832=b3208,a0833=b3308,
     a0834=b3408,a0835=b3508,a0836=b3608,a0837=b3708,a0838=b3808,a0839=b3908,
     a083a=b3a08,a083b=b3b08,a083c=b3c08,a083d=b3d08,a083e=b3e08,a083f=b3f08,
     a0900=b0009,a0901=b0109,a0902=b0209,a0903=b0309,a0904=b0409,a0905=b0509,
     a0906=b0609,a0907=b0709,a0908=b0809,a0909=b0909,a090a=b0a09,a090b=b0b09,
     a090c=b0c09,a090d=b0d09,a090e=b0e09,a090f=b0f09,a0910=b1009,a0911=b1109,
     a0912=b1209,a0913=b1309,a0914=b1409,a0915=b1509,a0916=b1609,a0917=b1709,
     a0918=b1809,a0919=b1909,a091a=b1a09,a091b=b1b09,a091c=b1c09,a091d=b1d09,
     a091e=b1e09,a091f=b1f09,a0920=b2009,a0921=b2109,a0922=b2209,a0923=b2309,
     a0924=b2409,a0925=b2509,a0926=b2609,a0927=b2709,a0928=b2809,a0929=b2909,
     a092a=b2a09,a092b=b2b09,a092c=b2c09,a092d=b2d09,a092e=b2e09,a092f=b2f09,
     a0930=b3009,a0931=b3109,a0932=b3209,a0933=b3309,a0934=b3409,a0935=b3509,
     a0936=b3609,a0937=b3709,a0938=b3809,a0939=b3909,a093a=b3a09,a093b=b3b09,
     a093c=b3c09,a093d=b3d09,a093e=b3e09,a093f=b3f09,a0a00=b000a,a0a01=b010a,
     a0a02=b020a,a0a03=b030a,a0a04=b040a,a0a05=b050a,a0a06=b060a,a0a07=b070a,
     a0a08=b080a,a0a09=b090a,a0a0a=b0a0a,a0a0b=b0b0a,a0a0c=b0c0a,a0a0d=b0d0a,
     a0a0e=b0e0a,a0a0f=b0f0a,a0a10=b100a,a0a11=b110a,a0a12=b120a,a0a13=b130a,
     a0a14=b140a,a0a15=b150a,a0a16=b160a,a0a17=b170a,a0a18=b180a,a0a19=b190a,
     a0a1a=b1a0a,a0a1b=b1b0a,a0a1c=b1c0a,a0a1d=b1d0a,a0a1e=b1e0a,a0a1f=b1f0a,
     a0a20=b200a,a0a21=b210a,a0a22=b220a,a0a23=b230a,a0a24=b240a,a0a25=b250a,
     a0a26=b260a,a0a27=b270a,a0a28=b280a,a0a29=b290a,a0a2a=b2a0a,a0a2b=b2b0a,
     a0a2c=b2c0a,a0a2d=b2d0a,a0a2e=b2e0a,a0a2f=b2f0a,a0a30=b300a,a0a31=b310a,
     a0a32=b320a,a0a33=b330a,a0a34=b340a,a0a35=b350a,a0a36=b360a,a0a37=b370a,
     a0a38=b380a,a0a39=b390a,a0a3a=b3a0a,a0a3b=b3b0a,a0a3c=b3c0a,a0a3d=b3d0a,
     a0a3e=b3e0a,a0a3f=b3f0a,a0b00=b000b,a0b01=b010b,a0b02=b020b,a0b03=b030b,
     a0b04=b040b,a0b05=b050b,a0b06=b060b,a0b07=b070b,a0b08=b080b,a0b09=b090b,
     a0b0a=b0a0b,a0b0b=b0b0b,a0b0c=b0c0b,a0b0d=b0d0b,a0b0e=b0e0b,a0b0f=b0f0b,
     a0b10=b100b,a0b11=b110b,a0b12=b120b,a0b13=b130b,a0b14=b140b,a0b15=b150b,
     a0b16=b160b,a0b17=b170b,a0b18=b180b,a0b19=b190b,a0b1a=b1a0b,a0b1b=b1b0b,
     a0b1c=b1c0b,a0b1d=b1d0b,a0b1e=b1e0b,a0b1f=b1f0b,a0b20=b200b,a0b21=b210b,
     a0b22=b220b,a0b23=b230b,a0b24=b240b,a0b25=b250b,a0b26=b260b,a0b27=b270b,
     a0b28=b280b,a0b29=b290b,a0b2a=b2a0b,a0b2b=b2b0b,a0b2c=b2c0b,a0b2d=b2d0b,
     a0b2e=b2e0b,a0b2f=b2f0b,a0b30=b300b,a0b31=b310b,a0b32=b320b,a0b33=b330b,
     a0b34=b340b,a0b35=b350b,a0b36=b360b,a0b37=b370b,a0b38=b380b,a0b39=b390b,
     a0b3a=b3a0b,a0b3b=b3b0b,a0b3c=b3c0b,a0b3d=b3d0b,a0b3e=b3e0b,a0b3f=b3f0b,
     a0c00=b000c,a0c01=b010c,a0c02=b020c,a0c03=b030c,a0c04=b040c,a0c05=b050c,
     a0c06=b060c,a0c07=b070c,a0c08=b080c,a0c09=b090c,a0c0a=b0a0c,a0c0b=b0b0c,
     a0c0c=b0c0c,a0c0d=b0d0c,a0c0e=b0e0c,a0c0f=b0f0c,a0c10=b100c,a0c11=b110c,
     a0c12=b120c,a0c13=b130c,a0c14=b140c,a0c15=b150c,a0c16=b160c,a0c17=b170c,
     a0c18=b180c,a0c19=b190c,a0c1a=b1a0c,a0c1b=b1b0c,a0c1c=b1c0c,a0c1d=b1d0c,
     a0c1e=b1e0c,a0c1f=b1f0c,a0c20=b200c,a0c21=b210c,a0c22=b220c,a0c23=b230c,
     a0c24=b240c,a0c25=b250c,a0c26=b260c,a0c27=b270c,a0c28=b280c,a0c29=b290c,
     a0c2a=b2a0c,a0c2b=b2b0c,a0c2c=b2c0c,a0c2d=b2d0c,a0c2e=b2e0c,a0c2f=b2f0c,
     a0c30=b300c,a0c31=b310c,a0c32=b320c,a0c33=b330c,a0c34=b340c,a0c35=b350c,
     a0c36=b360c,a0c37=b370c,a0c38=b380c,a0c39=b390c,a0c3a=b3a0c,a0c3b=b3b0c,
     a0c3c=b3c0c,a0c3d=b3d0c,a0c3e=b3e0c,a0c3f=b3f0c,a0d00=b000d,a0d01=b010d,
     a0d02=b020d,a0d03=b030d,a0d04=b040d,a0d05=b050d,a0d06=b060d,a0d07=b070d,
     a0d08=b080d,a0d09=b090d,a0d0a=b0a0d,a0d0b=b0b0d,a0d0c=b0c0d,a0d0d=b0d0d,
     a0d0e=b0e0d,a0d0f=b0f0d,a0d10=b100d,a0d11=b110d,a0d12=b120d,a0d13=b130d,
     a0d14=b140d,a0d15=b150d,a0d16=b160d,a0d17=b170d,a0d18=b180d,a0d19=b190d,
     a0d1a=b1a0d,a0d1b=b1b0d,a0d1c=b1c0d,a0d1d=b1d0d,a0d1e=b1e0d,a0d1f=b1f0d,
     a0d20=b200d,a0d21=b210d,a0d22=b220d,a0d23=b230d,a0d24=b240d,a0d25=b250d,
     a0d26=b260d,a0d27=b270d,a0d28=b280d,a0d29=b290d,a0d2a=b2a0d,a0d2b=b2b0d,
     a0d2c=b2c0d,a0d2d=b2d0d,a0d2e=b2e0d,a0d2f=b2f0d,a0d30=b300d,a0d31=b310d,
     a0d32=b320d,a0d33=b330d,a0d34=b340d,a0d35=b350d,a0d36=b360d,a0d37=b370d,
     a0d38=b380d,a0d39=b390d,a0d3a=b3a0d,a0d3b=b3b0d,a0d3c=b3c0d,a0d3d=b3d0d,
     a0d3e=b3e0d,a0d3f=b3f0d,a0e00=b000e,a0e01=b010e,a0e02=b020e,a0e03=b030e,
     a0e04=b040e,a0e05=b050e,a0e06=b060e,a0e07=b070e,a0e08=b080e,a0e09=b090e,
     a0e0a=b0a0e,a0e0b=b0b0e,a0e0c=b0c0e,a0e0d=b0d0e,a0e0e=b0e0e,a0e0f=b0f0e,
     a0e10=b100e,a0e11=b110e,a0e12=b120e,a0e13=b130e,a0e14=b140e,a0e15=b150e,
     a0e16=b160e,a0e17=b170e,a0e18=b180e,a0e19=b190e,a0e1a=b1a0e,a0e1b=b1b0e,
     a0e1c=b1c0e,a0e1d=b1d0e,a0e1e=b1e0e,a0e1f=b1f0e,a0e20=b200e,a0e21=b210e,
     a0e22=b220e,a0e23=b230e,a0e24=b240e,a0e25=b250e,a0e26=b260e,a0e27=b270e,
     a0e28=b280e,a0e29=b290e,a0e2a=b2a0e,a0e2b=b2b0e,a0e2c=b2c0e,a0e2d=b2d0e,
     a0e2e=b2e0e,a0e2f=b2f0e,a0e30=b300e,a0e31=b310e,a0e32=b320e,a0e33=b330e,
     a0e34=b340e,a0e35=b350e,a0e36=b360e,a0e37=b370e,a0e38=b380e,a0e39=b390e,
     a0e3a=b3a0e,a0e3b=b3b0e,a0e3c=b3c0e,a0e3d=b3d0e,a0e3e=b3e0e,a0e3f=b3f0e,
     a0f00=b000f,a0f01=b010f,a0f02=b020f,a0f03=b030f,a0f04=b040f,a0f05=b050f,
     a0f06=b060f,a0f07=b070f,a0f08=b080f,a0f09=b090f,a0f0a=b0a0f,a0f0b=b0b0f,
     a0f0c=b0c0f,a0f0d=b0d0f,a0f0e=b0e0f,a0f0f=b0f0f,a0f10=b100f,a0f11=b110f,
     a0f12=b120f,a0f13=b130f,a0f14=b140f,a0f15=b150f,a0f16=b160f,a0f17=b170f,
     a0f18=b180f,a0f19=b190f,a0f1a=b1a0f,a0f1b=b1b0f,a0f1c=b1c0f,a0f1d=b1d0f,
     a0f1e=b1e0f,a0f1f=b1f0f,a0f20=b200f,a0f21=b210f,a0f22=b220f,a0f23=b230f,
     a0f24=b240f,a0f25=b250f,a0f26=b260f,a0f27=b270f,a0f28=b280f,a0f29=b290f,
     a0f2a=b2a0f,a0f2b=b2b0f,a0f2c=b2c0f,a0f2d=b2d0f,a0f2e=b2e0f,a0f2f=b2f0f,
     a0f30=b300f,a0f31=b310f,a0f32=b320f,a0f33=b330f,a0f34=b340f,a0f35=b350f,
     a0f36=b360f,a0f37=b370f,a0f38=b380f,a0f39=b390f,a0f3a=b3a0f,a0f3b=b3b0f,
     a0f3c=b3c0f,a0f3d=b3d0f,a0f3e=b3e0f,a0f3f=b3f0f,a1000=b0010,a1001=b0110,
     a1002=b0210,a1003=b0310,a1004=b0410,a1005=b0510,a1006=b0610,a1007=b0710,
     a1008=b0810,a1009=b0910,a100a=b0a10,a100b=b0b10,a100c=b0c10,a100d=b0d10,
     a100e=b0e10,a100f=b0f10,a1010=b1010,a1011=b1110,a1012=b1210,a1013=b1310,
     a1014=b1410,a1015=b1510,a1016=b1610,a1017=b1710,a1018=b1810,a1019=b1910,
     a101a=b1a10,a101b=b1b10,a101c=b1c10,a101d=b1d10,a101e=b1e10,a101f=b1f10,
     a1020=b2010,a1021=b2110,a1022=b2210,a1023=b2310,a1024=b2410,a1025=b2510,
     a1026=b2610,a1027=b2710,a1028=b2810,a1029=b2910,a102a=b2a10,a102b=b2b10,
     a102c=b2c10,a102d=b2d10,a102e=b2e10,a102f=b2f10,a1030=b3010,a1031=b3110,
     a1032=b3210,a1033=b3310,a1034=b3410,a1035=b3510,a1036=b3610,a1037=b3710,
     a1038=b3810,a1039=b3910,a103a=b3a10,a103b=b3b10,a103c=b3c10,a103d=b3d10,
     a103e=b3e10,a103f=b3f10,a1100=b0011,a1101=b0111,a1102=b0211,a1103=b0311,
     a1104=b0411,a1105=b0511,a1106=b0611,a1107=b0711,a1108=b0811,a1109=b0911,
     a110a=b0a11,a110b=b0b11,a110c=b0c11,a110d=b0d11,a110e=b0e11,a110f=b0f11,
     a1110=b1011,a1111=b1111,a1112=b1211,a1113=b1311,a1114=b1411,a1115=b1511,
     a1116=b1611,a1117=b1711,a1118=b1811,a1119=b1911,a111a=b1a11,a111b=b1b11,
     a111c=b1c11,a111d=b1d11,a111e=b1e11,a111f=b1f11,a1120=b2011,a1121=b2111,
     a1122=b2211,a1123=b2311,a1124=b2411,a1125=b2511,a1126=b2611,a1127=b2711,
     a1128=b2811,a1129=b2911,a112a=b2a11,a112b=b2b11,a112c=b2c11,a112d=b2d11,
     a112e=b2e11,a112f=b2f11,a1130=b3011,a1131=b3111,a1132=b3211,a1133=b3311,
     a1134=b3411,a1135=b3511,a1136=b3611,a1137=b3711,a1138=b3811,a1139=b3911,
     a113a=b3a11,a113b=b3b11,a113c=b3c11,a113d=b3d11,a113e=b3e11,a113f=b3f11,
     a1200=b0012,a1201=b0112,a1202=b0212,a1203=b0312,a1204=b0412,a1205=b0512,
     a1206=b0612,a1207=b0712,a1208=b0812,a1209=b0912,a120a=b0a12,a120b=b0b12,
     a120c=b0c12,a120d=b0d12,a120e=b0e12,a120f=b0f12,a1210=b1012,a1211=b1112,
     a1212=b1212,a1213=b1312,a1214=b1412,a1215=b1512,a1216=b1612,a1217=b1712,
     a1218=b1812,a1219=b1912,a121a=b1a12,a121b=b1b12,a121c=b1c12,a121d=b1d12,
     a121e=b1e12,a121f=b1f12,a1220=b2012,a1221=b2112,a1222=b2212,a1223=b2312,
     a1224=b2412,a1225=b2512,a1226=b2612,a1227=b2712,a1228=b2812,a1229=b2912,
     a122a=b2a12,a122b=b2b12,a122c=b2c12,a122d=b2d12,a122e=b2e12,a122f=b2f12,
     a1230=b3012,a1231=b3112,a1232=b3212,a1233=b3312,a1234=b3412,a1235=b3512,
     a1236=b3612,a1237=b3712,a1238=b3812,a1239=b3912,a123a=b3a12,a123b=b3b12,
     a123c=b3c12,a123d=b3d12,a123e=b3e12,a123f=b3f12,a1300=b0013,a1301=b0113,
     a1302=b0213,a1303=b0313,a1304=b0413,a1305=b0513,a1306=b0613,a1307=b0713,
     a1308=b0813,a1309=b0913,a130a=b0a13,a130b=b0b13,a130c=b0c13,a130d=b0d13,
     a130e=b0e13,a130f=b0f13,a1310=b1013,a1311=b1113,a1312=b1213,a1313=b1313,
     a1314=b1413,a1315=b1513,a1316=b1613,a1317=b1713,a1318=b1813,a1319=b1913,
     a131a=b1a13,a131b=b1b13,a131c=b1c13,a131d=b1d13,a131e=b1e13,a131f=b1f13,
     a1320=b2013,a1321=b2113,a1322=b2213,a1323=b2313,a1324=b2413,a1325=b2513,
     a1326=b2613,a1327=b2713,a1328=b2813,a1329=b2913,a132a=b2a13,a132b=b2b13,
     a132c=b2c13,a132d=b2d13,a132e=b2e13,a132f=b2f13,a1330=b3013,a1331=b3113,
     a1332=b3213,a1333=b3313,a1334=b3413,a1335=b3513,a1336=b3613,a1337=b3713,
     a1338=b3813,a1339=b3913,a133a=b3a13,a133b=b3b13,a133c=b3c13,a133d=b3d13,
     a133e=b3e13,a133f=b3f13,a1400=b0014,a1401=b0114,a1402=b0214,a1403=b0314,
     a1404=b0414,a1405=b0514,a1406=b0614,a1407=b0714,a1408=b0814,a1409=b0914,
     a140a=b0a14,a140b=b0b14,a140c=b0c14,a140d=b0d14,a140e=b0e14,a140f=b0f14,
     a1410=b1014,a1411=b1114,a1412=b1214,a1413=b1314,a1414=b1414,a1415=b1514,
     a1416=b1614,a1417=b1714,a1418=b1814,a1419=b1914,a141a=b1a14,a141b=b1b14,
     a141c=b1c14,a141d=b1d14,a141e=b1e14,a141f=b1f14,a1420=b2014,a1421=b2114,
     a1422=b2214,a1423=b2314,a1424=b2414,a1425=b2514,a1426=b2614,a1427=b2714,
     a1428=b2814,a1429=b2914,a142a=b2a14,a142b=b2b14,a142c=b2c14,a142d=b2d14,
     a142e=b2e14,a142f=b2f14,a1430=b3014,a1431=b3114,a1432=b3214,a1433=b3314,
     a1434=b3414,a1435=b3514,a1436=b3614,a1437=b3714,a1438=b3814,a1439=b3914,
     a143a=b3a14,a143b=b3b14,a143c=b3c14,a143d=b3d14,a143e=b3e14,a143f=b3f14,
     a1500=b0015,a1501=b0115,a1502=b0215,a1503=b0315,a1504=b0415,a1505=b0515,
     a1506=b0615,a1507=b0715,a1508=b0815,a1509=b0915,a150a=b0a15,a150b=b0b15,
     a150c=b0c15,a150d=b0d15,a150e=b0e15,a150f=b0f15,a1510=b1015,a1511=b1115,
     a1512=b1215,a1513=b1315,a1514=b1415,a1515=b1515,a1516=b1615,a1517=b1715,
     a1518=b1815,a1519=b1915,a151a=b1a15,a151b=b1b15,a151c=b1c15,a151d=b1d15,
     a151e=b1e15,a151f=b1f15,a1520=b2015,a1521=b2115,a1522=b2215,a1523=b2315,
     a1524=b2415,a1525=b2515,a1526=b2615,a1527=b2715,a1528=b2815,a1529=b2915,
     a152a=b2a15,a152b=b2b15,a152c=b2c15,a152d=b2d15,a152e=b2e15,a152f=b2f15,
     a1530=b3015,a1531=b3115,a1532=b3215,a1533=b3315,a1534=b3415,a1535=b3515,
     a1536=b3615,a1537=b3715,a1538=b3815,a1539=b3915,a153a=b3a15,a153b=b3b15,
     a153c=b3c15,a153d=b3d15,a153e=b3e15,a153f=b3f15,a1600=b0016,a1601=b0116,
     a1602=b0216,a1603=b0316,a1604=b0416,a1605=b0516,a1606=b0616,a1607=b0716,
     a1608=b0816,a1609=b0916,a160a=b0a16,a160b=b0b16,a160c=b0c16,a160d=b0d16,
     a160e=b0e16,a160f=b0f16,a1610=b1016,a1611=b1116,a1612=b1216,a1613=b1316,
     a1614=b1416,a1615=b1516,a1616=b1616,a1617=b1716,a1618=b1816,a1619=b1916,
     a161a=b1a16,a161b=b1b16,a161c=b1c16,a161d=b1d16,a161e=b1e16,a161f=b1f16,
     a1620=b2016,a1621=b2116,a1622=b2216,a1623=b2316,a1624=b2416,a1625=b2516,
     a1626=b2616,a1627=b2716,a1628=b2816,a1629=b2916,a162a=b2a16,a162b=b2b16,
     a162c=b2c16,a162d=b2d16,a162e=b2e16,a162f=b2f16,a1630=b3016,a1631=b3116,
     a1632=b3216,a1633=b3316,a1634=b3416,a1635=b3516,a1636=b3616,a1637=b3716,
     a1638=b3816,a1639=b3916,a163a=b3a16,a163b=b3b16,a163c=b3c16,a163d=b3d16,
     a163e=b3e16,a163f=b3f16,a1700=b0017,a1701=b0117,a1702=b0217,a1703=b0317,
     a1704=b0417,a1705=b0517,a1706=b0617,a1707=b0717,a1708=b0817,a1709=b0917,
     a170a=b0a17,a170b=b0b17,a170c=b0c17,a170d=b0d17,a170e=b0e17,a170f=b0f17,
     a1710=b1017,a1711=b1117,a1712=b1217,a1713=b1317,a1714=b1417,a1715=b1517,
     a1716=b1617,a1717=b1717,a1718=b1817,a1719=b1917,a171a=b1a17,a171b=b1b17,
     a171c=b1c17,a171d=b1d17,a171e=b1e17,a171f=b1f17,a1720=b2017,a1721=b2117,
     a1722=b2217,a1723=b2317,a1724=b2417,a1725=b2517,a1726=b2617,a1727=b2717,
     a1728=b2817,a1729=b2917,a172a=b2a17,a172b=b2b17,a172c=b2c17,a172d=b2d17,
     a172e=b2e17,a172f=b2f17,a1730=b3017,a1731=b3117,a1732=b3217,a1733=b3317,
     a1734=b3417,a1735=b3517,a1736=b3617,a1737=b3717,a1738=b3817,a1739=b3917,
     a173a=b3a17,a173b=b3b17,a173c=b3c17,a173d=b3d17,a173e=b3e17,a173f=b3f17,
     a1800=b0018,a1801=b0118,a1802=b0218,a1803=b0318,a1804=b0418,a1805=b0518,
     a1806=b0618,a1807=b0718,a1808=b0818,a1809=b0918,a180a=b0a18,a180b=b0b18,
     a180c=b0c18,a180d=b0d18,a180e=b0e18,a180f=b0f18,a1810=b1018,a1811=b1118,
     a1812=b1218,a1813=b1318,a1814=b1418,a1815=b1518,a1816=b1618,a1817=b1718,
     a1818=b1818,a1819=b1918,a181a=b1a18,a181b=b1b18,a181c=b1c18,a181d=b1d18,
     a181e=b1e18,a181f=b1f18,a1820=b2018,a1821=b2118,a1822=b2218,a1823=b2318,
     a1824=b2418,a1825=b2518,a1826=b2618,a1827=b2718,a1828=b2818,a1829=b2918,
     a182a=b2a18,a182b=b2b18,a182c=b2c18,a182d=b2d18,a182e=b2e18,a182f=b2f18,
     a1830=b3018,a1831=b3118,a1832=b3218,a1833=b3318,a1834=b3418,a1835=b3518,
     a1836=b3618,a1837=b3718,a1838=b3818,a1839=b3918,a183a=b3a18,a183b=b3b18,
     a183c=b3c18,a183d=b3d18,a183e=b3e18,a183f=b3f18,a1900=b0019,a1901=b0119,
     a1902=b0219,a1903=b0319,a1904=b0419,a1905=b0519,a1906=b0619,a1907=b0719,
     a1908=b0819,a1909=b0919,a190a=b0a19,a190b=b0b19,a190c=b0c19,a190d=b0d19,
     a190e=b0e19,a190f=b0f19,a1910=b1019,a1911=b1119,a1912=b1219,a1913=b1319,
     a1914=b1419,a1915=b1519,a1916=b1619,a1917=b1719,a1918=b1819,a1919=b1919,
     a191a=b1a19,a191b=b1b19,a191c=b1c19,a191d=b1d19,a191e=b1e19,a191f=b1f19,
     a1920=b2019,a1921=b2119,a1922=b2219,a1923=b2319,a1924=b2419,a1925=b2519,
     a1926=b2619,a1927=b2719,a1928=b2819,a1929=b2919,a192a=b2a19,a192b=b2b19,
     a192c=b2c19,a192d=b2d19,a192e=b2e19,a192f=b2f19,a1930=b3019,a1931=b3119,
     a1932=b3219,a1933=b3319,a1934=b3419,a1935=b3519,a1936=b3619,a1937=b3719,
     a1938=b3819,a1939=b3919,a193a=b3a19,a193b=b3b19,a193c=b3c19,a193d=b3d19,
     a193e=b3e19,a193f=b3f19,a1a00=b001a,a1a01=b011a,a1a02=b021a,a1a03=b031a,
     a1a04=b041a,a1a05=b051a,a1a06=b061a,a1a07=b071a,a1a08=b081a,a1a09=b091a,
     a1a0a=b0a1a,a1a0b=b0b1a,a1a0c=b0c1a,a1a0d=b0d1a,a1a0e=b0e1a,a1a0f=b0f1a,
     a1a10=b101a,a1a11=b111a,a1a12=b121a,a1a13=b131a,a1a14=b141a,a1a15=b151a,
     a1a16=b161a,a1a17=b171a,a1a18=b181a,a1a19=b191a,a1a1a=b1a1a,a1a1b=b1b1a,
     a1a1c=b1c1a,a1a1d=b1d1a,a1a1e=b1e1a,a1a1f=b1f1a,a1a20=b201a,a1a21=b211a,
     a1a22=b221a,a1a23=b231a,a1a24=b241a,a1a25=b251a,a1a26=b261a,a1a27=b271a,
     a1a28=b281a,a1a29=b291a,a1a2a=b2a1a,a1a2b=b2b1a,a1a2c=b2c1a,a1a2d=b2d1a,
     a1a2e=b2e1a,a1a2f=b2f1a,a1a30=b301a,a1a31=b311a,a1a32=b321a,a1a33=b331a,
     a1a34=b341a,a1a35=b351a,a1a36=b361a,a1a37=b371a,a1a38=b381a,a1a39=b391a,
     a1a3a=b3a1a,a1a3b=b3b1a,a1a3c=b3c1a,a1a3d=b3d1a,a1a3e=b3e1a,a1a3f=b3f1a,
     a1b00=b001b,a1b01=b011b,a1b02=b021b,a1b03=b031b,a1b04=b041b,a1b05=b051b,
     a1b06=b061b,a1b07=b071b,a1b08=b081b,a1b09=b091b,a1b0a=b0a1b,a1b0b=b0b1b,
     a1b0c=b0c1b,a1b0d=b0d1b,a1b0e=b0e1b,a1b0f=b0f1b,a1b10=b101b,a1b11=b111b,
     a1b12=b121b,a1b13=b131b,a1b14=b141b,a1b15=b151b,a1b16=b161b,a1b17=b171b,
     a1b18=b181b,a1b19=b191b,a1b1a=b1a1b,a1b1b=b1b1b,a1b1c=b1c1b,a1b1d=b1d1b,
     a1b1e=b1e1b,a1b1f=b1f1b,a1b20=b201b,a1b21=b211b,a1b22=b221b,a1b23=b231b,
     a1b24=b241b,a1b25=b251b,a1b26=b261b,a1b27=b271b,a1b28=b281b,a1b29=b291b,
     a1b2a=b2a1b,a1b2b=b2b1b,a1b2c=b2c1b,a1b2d=b2d1b,a1b2e=b2e1b,a1b2f=b2f1b,
     a1b30=b301b,a1b31=b311b,a1b32=b321b,a1b33=b331b,a1b34=b341b,a1b35=b351b,
     a1b36=b361b,a1b37=b371b,a1b38=b381b,a1b39=b391b,a1b3a=b3a1b,a1b3b=b3b1b,
     a1b3c=b3c1b,a1b3d=b3d1b,a1b3e=b3e1b,a1b3f=b3f1b,a1c00=b001c,a1c01=b011c,
     a1c02=b021c,a1c03=b031c,a1c04=b041c,a1c05=b051c,a1c06=b061c,a1c07=b071c,
     a1c08=b081c,a1c09=b091c,a1c0a=b0a1c,a1c0b=b0b1c,a1c0c=b0c1c,a1c0d=b0d1c,
     a1c0e=b0e1c,a1c0f=b0f1c,a1c10=b101c,a1c11=b111c,a1c12=b121c,a1c13=b131c,
     a1c14=b141c,a1c15=b151c,a1c16=b161c,a1c17=b171c,a1c18=b181c,a1c19=b191c,
     a1c1a=b1a1c,a1c1b=b1b1c,a1c1c=b1c1c,a1c1d=b1d1c,a1c1e=b1e1c,a1c1f=b1f1c,
     a1c20=b201c,a1c21=b211c,a1c22=b221c,a1c23=b231c,a1c24=b241c,a1c25=b251c,
     a1c26=b261c,a1c27=b271c,a1c28=b281c,a1c29=b291c,a1c2a=b2a1c,a1c2b=b2b1c,
     a1c2c=b2c1c,a1c2d=b2d1c,a1c2e=b2e1c,a1c2f=b2f1c,a1c30=b301c,a1c31=b311c,
     a1c32=b321c,a1c33=b331c,a1c34=b341c,a1c35=b351c,a1c36=b361c,a1c37=b371c,
     a1c38=b381c,a1c39=b391c,a1c3a=b3a1c,a1c3b=b3b1c,a1c3c=b3c1c,a1c3d=b3d1c,
     a1c3e=b3e1c,a1c3f=b3f1c,a1d00=b001d,a1d01=b011d,a1d02=b021d,a1d03=b031d,
     a1d04=b041d,a1d05=b051d,a1d06=b061d,a1d07=b071d,a1d08=b081d,a1d09=b091d,
     a1d0a=b0a1d,a1d0b=b0b1d,a1d0c=b0c1d,a1d0d=b0d1d,a1d0e=b0e1d,a1d0f=b0f1d,
     a1d10=b101d,a1d11=b111d,a1d12=b121d,a1d13=b131d,a1d14=b141d,a1d15=b151d,
     a1d16=b161d,a1d17=b171d,a1d18=b181d,a1d19=b191d,a1d1a=b1a1d,a1d1b=b1b1d,
     a1d1c=b1c1d,a1d1d=b1d1d,a1d1e=b1e1d,a1d1f=b1f1d,a1d20=b201d,a1d21=b211d,
     a1d22=b221d,a1d23=b231d,a1d24=b241d,a1d25=b251d,a1d26=b261d,a1d27=b271d,
     a1d28=b281d,a1d29=b291d,a1d2a=b2a1d,a1d2b=b2b1d,a1d2c=b2c1d,a1d2d=b2d1d,
     a1d2e=b2e1d,a1d2f=b2f1d,a1d30=b301d,a1d31=b311d,a1d32=b321d,a1d33=b331d,
     a1d34=b341d,a1d35=b351d,a1d36=b361d,a1d37=b371d,a1d38=b381d,a1d39=b391d,
     a1d3a=b3a1d,a1d3b=b3b1d,a1d3c=b3c1d,a1d3d=b3d1d,a1d3e=b3e1d,a1d3f=b3f1d,
     a1e00=b001e,a1e01=b011e,a1e02=b021e,a1e03=b031e,a1e04=b041e,a1e05=b051e,
     a1e06=b061e,a1e07=b071e,a1e08=b081e,a1e09=b091e,a1e0a=b0a1e,a1e0b=b0b1e,
     a1e0c=b0c1e,a1e0d=b0d1e,a1e0e=b0e1e,a1e0f=b0f1e,a1e10=b101e,a1e11=b111e,
     a1e12=b121e,a1e13=b131e,a1e14=b141e,a1e15=b151e,a1e16=b161e,a1e17=b171e,
     a1e18=b181e,a1e19=b191e,a1e1a=b1a1e,a1e1b=b1b1e,a1e1c=b1c1e,a1e1d=b1d1e,
     a1e1e=b1e1e,a1e1f=b1f1e,a1e20=b201e,a1e21=b211e,a1e22=b221e,a1e23=b231e,
     a1e24=b241e,a1e25=b251e,a1e26=b261e,a1e27=b271e,a1e28=b281e,a1e29=b291e,
     a1e2a=b2a1e,a1e2b=b2b1e,a1e2c=b2c1e,a1e2d=b2d1e,a1e2e=b2e1e,a1e2f=b2f1e,
     a1e30=b301e,a1e31=b311e,a1e32=b321e,a1e33=b331e,a1e34=b341e,a1e35=b351e,
     a1e36=b361e,a1e37=b371e,a1e38=b381e,a1e39=b391e,a1e3a=b3a1e,a1e3b=b3b1e,
     a1e3c=b3c1e,a1e3d=b3d1e,a1e3e=b3e1e,a1e3f=b3f1e,a1f00=b001f,a1f01=b011f,
     a1f02=b021f,a1f03=b031f,a1f04=b041f,a1f05=b051f,a1f06=b061f,a1f07=b071f,
     a1f08=b081f,a1f09=b091f,a1f0a=b0a1f,a1f0b=b0b1f,a1f0c=b0c1f,a1f0d=b0d1f,
     a1f0e=b0e1f,a1f0f=b0f1f,a1f10=b101f,a1f11=b111f,a1f12=b121f,a1f13=b131f,
     a1f14=b141f,a1f15=b151f,a1f16=b161f,a1f17=b171f,a1f18=b181f,a1f19=b191f,
     a1f1a=b1a1f,a1f1b=b1b1f,a1f1c=b1c1f,a1f1d=b1d1f,a1f1e=b1e1f,a1f1f=b1f1f,
     a1f20=b201f,a1f21=b211f,a1f22=b221f,a1f23=b231f,a1f24=b241f,a1f25=b251f,
     a1f26=b261f,a1f27=b271f,a1f28=b281f,a1f29=b291f,a1f2a=b2a1f,a1f2b=b2b1f,
     a1f2c=b2c1f,a1f2d=b2d1f,a1f2e=b2e1f,a1f2f=b2f1f,a1f30=b301f,a1f31=b311f,
     a1f32=b321f,a1f33=b331f,a1f34=b341f,a1f35=b351f,a1f36=b361f,a1f37=b371f,
     a1f38=b381f,a1f39=b391f,a1f3a=b3a1f,a1f3b=b3b1f,a1f3c=b3c1f,a1f3d=b3d1f,
     a1f3e=b3e1f,a1f3f=b3f1f,a2000=b0020,a2001=b0120,a2002=b0220,a2003=b0320,
     a2004=b0420,a2005=b0520,a2006=b0620,a2007=b0720,a2008=b0820,a2009=b0920,
     a200a=b0a20,a200b=b0b20,a200c=b0c20,a200d=b0d20,a200e=b0e20,a200f=b0f20,
     a2010=b1020,a2011=b1120,a2012=b1220,a2013=b1320,a2014=b1420,a2015=b1520,
     a2016=b1620,a2017=b1720,a2018=b1820,a2019=b1920,a201a=b1a20,a201b=b1b20,
     a201c=b1c20,a201d=b1d20,a201e=b1e20,a201f=b1f20,a2020=b2020,a2021=b2120,
     a2022=b2220,a2023=b2320,a2024=b2420,a2025=b2520,a2026=b2620,a2027=b2720,
     a2028=b2820,a2029=b2920,a202a=b2a20,a202b=b2b20,a202c=b2c20,a202d=b2d20,
     a202e=b2e20,a202f=b2f20,a2030=b3020,a2031=b3120,a2032=b3220,a2033=b3320,
     a2034=b3420,a2035=b3520,a2036=b3620,a2037=b3720,a2038=b3820,a2039=b3920,
     a203a=b3a20,a203b=b3b20,a203c=b3c20,a203d=b3d20,a203e=b3e20,a203f=b3f20,
     a2100=b0021,a2101=b0121,a2102=b0221,a2103=b0321,a2104=b0421,a2105=b0521,
     a2106=b0621,a2107=b0721,a2108=b0821,a2109=b0921,a210a=b0a21,a210b=b0b21,
     a210c=b0c21,a210d=b0d21,a210e=b0e21,a210f=b0f21,a2110=b1021,a2111=b1121,
     a2112=b1221,a2113=b1321,a2114=b1421,a2115=b1521,a2116=b1621,a2117=b1721,
     a2118=b1821,a2119=b1921,a211a=b1a21,a211b=b1b21,a211c=b1c21,a211d=b1d21,
     a211e=b1e21,a211f=b1f21,a2120=b2021,a2121=b2121,a2122=b2221,a2123=b2321,
     a2124=b2421,a2125=b2521,a2126=b2621,a2127=b2721,a2128=b2821,a2129=b2921,
     a212a=b2a21,a212b=b2b21,a212c=b2c21,a212d=b2d21,a212e=b2e21,a212f=b2f21,
     a2130=b3021,a2131=b3121,a2132=b3221,a2133=b3321,a2134=b3421,a2135=b3521,
     a2136=b3621,a2137=b3721,a2138=b3821,a2139=b3921,a213a=b3a21,a213b=b3b21,
     a213c=b3c21,a213d=b3d21,a213e=b3e21,a213f=b3f21,a2200=b0022,a2201=b0122,
     a2202=b0222,a2203=b0322,a2204=b0422,a2205=b0522,a2206=b0622,a2207=b0722,
     a2208=b0822,a2209=b0922,a220a=b0a22,a220b=b0b22,a220c=b0c22,a220d=b0d22,
     a220e=b0e22,a220f=b0f22,a2210=b1022,a2211=b1122,a2212=b1222,a2213=b1322,
     a2214=b1422,a2215=b1522,a2216=b1622,a2217=b1722,a2218=b1822,a2219=b1922,
     a221a=b1a22,a221b=b1b22,a221c=b1c22,a221d=b1d22,a221e=b1e22,a221f=b1f22,
     a2220=b2022,a2221=b2122,a2222=b2222,a2223=b2322,a2224=b2422,a2225=b2522,
     a2226=b2622,a2227=b2722,a2228=b2822,a2229=b2922,a222a=b2a22,a222b=b2b22,
     a222c=b2c22,a222d=b2d22,a222e=b2e22,a222f=b2f22,a2230=b3022,a2231=b3122,
     a2232=b3222,a2233=b3322,a2234=b3422,a2235=b3522,a2236=b3622,a2237=b3722,
     a2238=b3822,a2239=b3922,a223a=b3a22,a223b=b3b22,a223c=b3c22,a223d=b3d22,
     a223e=b3e22,a223f=b3f22,a2300=b0023,a2301=b0123,a2302=b0223,a2303=b0323,
     a2304=b0423,a2305=b0523,a2306=b0623,a2307=b0723,a2308=b0823,a2309=b0923,
     a230a=b0a23,a230b=b0b23,a230c=b0c23,a230d=b0d23,a230e=b0e23,a230f=b0f23,
     a2310=b1023,a2311=b1123,a2312=b1223,a2313=b1323,a2314=b1423,a2315=b1523,
     a2316=b1623,a2317=b1723,a2318=b1823,a2319=b1923,a231a=b1a23,a231b=b1b23,
     a231c=b1c23,a231d=b1d23,a231e=b1e23,a231f=b1f23,a2320=b2023,a2321=b2123,
     a2322=b2223,a2323=b2323,a2324=b2423,a2325=b2523,a2326=b2623,a2327=b2723,
     a2328=b2823,a2329=b2923,a232a=b2a23,a232b=b2b23,a232c=b2c23,a232d=b2d23,
     a232e=b2e23,a232f=b2f23,a2330=b3023,a2331=b3123,a2332=b3223,a2333=b3323,
     a2334=b3423,a2335=b3523,a2336=b3623,a2337=b3723,a2338=b3823,a2339=b3923,
     a233a=b3a23,a233b=b3b23,a233c=b3c23,a233d=b3d23,a233e=b3e23,a233f=b3f23,
     a2400=b0024,a2401=b0124,a2402=b0224,a2403=b0324,a2404=b0424,a2405=b0524,
     a2406=b0624,a2407=b0724,a2408=b0824,a2409=b0924,a240a=b0a24,a240b=b0b24,
     a240c=b0c24,a240d=b0d24,a240e=b0e24,a240f=b0f24,a2410=b1024,a2411=b1124,
     a2412=b1224,a2413=b1324,a2414=b1424,a2415=b1524,a2416=b1624,a2417=b1724,
     a2418=b1824,a2419=b1924,a241a=b1a24,a241b=b1b24,a241c=b1c24,a241d=b1d24,
     a241e=b1e24,a241f=b1f24,a2420=b2024,a2421=b2124,a2422=b2224,a2423=b2324,
     a2424=b2424,a2425=b2524,a2426=b2624,a2427=b2724,a2428=b2824,a2429=b2924,
     a242a=b2a24,a242b=b2b24,a242c=b2c24,a242d=b2d24,a242e=b2e24,a242f=b2f24,
     a2430=b3024,a2431=b3124,a2432=b3224,a2433=b3324,a2434=b3424,a2435=b3524,
     a2436=b3624,a2437=b3724,a2438=b3824,a2439=b3924,a243a=b3a24,a243b=b3b24,
     a243c=b3c24,a243d=b3d24,a243e=b3e24,a243f=b3f24,a2500=b0025,a2501=b0125,
     a2502=b0225,a2503=b0325,a2504=b0425,a2505=b0525,a2506=b0625,a2507=b0725,
     a2508=b0825,a2509=b0925,a250a=b0a25,a250b=b0b25,a250c=b0c25,a250d=b0d25,
     a250e=b0e25,a250f=b0f25,a2510=b1025,a2511=b1125,a2512=b1225,a2513=b1325,
     a2514=b1425,a2515=b1525,a2516=b1625,a2517=b1725,a2518=b1825,a2519=b1925,
     a251a=b1a25,a251b=b1b25,a251c=b1c25,a251d=b1d25,a251e=b1e25,a251f=b1f25,
     a2520=b2025,a2521=b2125,a2522=b2225,a2523=b2325,a2524=b2425,a2525=b2525,
     a2526=b2625,a2527=b2725,a2528=b2825,a2529=b2925,a252a=b2a25,a252b=b2b25,
     a252c=b2c25,a252d=b2d25,a252e=b2e25,a252f=b2f25,a2530=b3025,a2531=b3125,
     a2532=b3225,a2533=b3325,a2534=b3425,a2535=b3525,a2536=b3625,a2537=b3725,
     a2538=b3825,a2539=b3925,a253a=b3a25,a253b=b3b25,a253c=b3c25,a253d=b3d25,
     a253e=b3e25,a253f=b3f25,a2600=b0026,a2601=b0126,a2602=b0226,a2603=b0326,
     a2604=b0426,a2605=b0526,a2606=b0626,a2607=b0726,a2608=b0826,a2609=b0926,
     a260a=b0a26,a260b=b0b26,a260c=b0c26,a260d=b0d26,a260e=b0e26,a260f=b0f26,
     a2610=b1026,a2611=b1126,a2612=b1226,a2613=b1326,a2614=b1426,a2615=b1526,
     a2616=b1626,a2617=b1726,a2618=b1826,a2619=b1926,a261a=b1a26,a261b=b1b26,
     a261c=b1c26,a261d=b1d26,a261e=b1e26,a261f=b1f26,a2620=b2026,a2621=b2126,
     a2622=b2226,a2623=b2326,a2624=b2426,a2625=b2526,a2626=b2626,a2627=b2726,
     a2628=b2826,a2629=b2926,a262a=b2a26,a262b=b2b26,a262c=b2c26,a262d=b2d26,
     a262e=b2e26,a262f=b2f26,a2630=b3026,a2631=b3126,a2632=b3226,a2633=b3326,
     a2634=b3426,a2635=b3526,a2636=b3626,a2637=b3726,a2638=b3826,a2639=b3926,
     a263a=b3a26,a263b=b3b26,a263c=b3c26,a263d=b3d26,a263e=b3e26,a263f=b3f26,
     a2700=b0027,a2701=b0127,a2702=b0227,a2703=b0327,a2704=b0427,a2705=b0527,
     a2706=b0627,a2707=b0727,a2708=b0827,a2709=b0927,a270a=b0a27,a270b=b0b27,
     a270c=b0c27,a270d=b0d27,a270e=b0e27,a270f=b0f27,a2710=b1027,a2711=b1127,
     a2712=b1227,a2713=b1327,a2714=b1427,a2715=b1527,a2716=b1627,a2717=b1727,
     a2718=b1827,a2719=b1927,a271a=b1a27,a271b=b1b27,a271c=b1c27,a271d=b1d27,
     a271e=b1e27,a271f=b1f27,a2720=b2027,a2721=b2127,a2722=b2227,a2723=b2327,
     a2724=b2427,a2725=b2527,a2726=b2627,a2727=b2727,a2728=b2827,a2729=b2927,
     a272a=b2a27,a272b=b2b27,a272c=b2c27,a272d=b2d27,a272e=b2e27,a272f=b2f27,
     a2730=b3027,a2731=b3127,a2732=b3227,a2733=b3327,a2734=b3427,a2735=b3527,
     a2736=b3627,a2737=b3727,a2738=b3827,a2739=b3927,a273a=b3a27,a273b=b3b27,
     a273c=b3c27,a273d=b3d27,a273e=b3e27,a273f=b3f27,a2800=b0028,a2801=b0128,
     a2802=b0228,a2803=b0328,a2804=b0428,a2805=b0528,a2806=b0628,a2807=b0728,
     a2808=b0828,a2809=b0928,a280a=b0a28,a280b=b0b28,a280c=b0c28,a280d=b0d28,
     a280e=b0e28,a280f=b0f28,a2810=b1028,a2811=b1128,a2812=b1228,a2813=b1328,
     a2814=b1428,a2815=b1528,a2816=b1628,a2817=b1728,a2818=b1828,a2819=b1928,
     a281a=b1a28,a281b=b1b28,a281c=b1c28,a281d=b1d28,a281e=b1e28,a281f=b1f28,
     a2820=b2028,a2821=b2128,a2822=b2228,a2823=b2328,a2824=b2428,a2825=b2528,
     a2826=b2628,a2827=b2728,a2828=b2828,a2829=b2928,a282a=b2a28,a282b=b2b28,
     a282c=b2c28,a282d=b2d28,a282e=b2e28,a282f=b2f28,a2830=b3028,a2831=b3128,
     a2832=b3228,a2833=b3328,a2834=b3428,a2835=b3528,a2836=b3628,a2837=b3728,
     a2838=b3828,a2839=b3928,a283a=b3a28,a283b=b3b28,a283c=b3c28,a283d=b3d28,
     a283e=b3e28,a283f=b3f28,a2900=b0029,a2901=b0129,a2902=b0229,a2903=b0329,
     a2904=b0429,a2905=b0529,a2906=b0629,a2907=b0729,a2908=b0829,a2909=b0929,
     a290a=b0a29,a290b=b0b29,a290c=b0c29,a290d=b0d29,a290e=b0e29,a290f=b0f29,
     a2910=b1029,a2911=b1129,a2912=b1229,a2913=b1329,a2914=b1429,a2915=b1529,
     a2916=b1629,a2917=b1729,a2918=b1829,a2919=b1929,a291a=b1a29,a291b=b1b29,
     a291c=b1c29,a291d=b1d29,a291e=b1e29,a291f=b1f29,a2920=b2029,a2921=b2129,
     a2922=b2229,a2923=b2329,a2924=b2429,a2925=b2529,a2926=b2629,a2927=b2729,
     a2928=b2829,a2929=b2929,a292a=b2a29,a292b=b2b29,a292c=b2c29,a292d=b2d29,
     a292e=b2e29,a292f=b2f29,a2930=b3029,a2931=b3129,a2932=b3229,a2933=b3329,
     a2934=b3429,a2935=b3529,a2936=b3629,a2937=b3729,a2938=b3829,a2939=b3929,
     a293a=b3a29,a293b=b3b29,a293c=b3c29,a293d=b3d29,a293e=b3e29,a293f=b3f29,
     a2a00=b002a,a2a01=b012a,a2a02=b022a,a2a03=b032a,a2a04=b042a,a2a05=b052a,
     a2a06=b062a,a2a07=b072a,a2a08=b082a,a2a09=b092a,a2a0a=b0a2a,a2a0b=b0b2a,
     a2a0c=b0c2a,a2a0d=b0d2a,a2a0e=b0e2a,a2a0f=b0f2a,a2a10=b102a,a2a11=b112a,
     a2a12=b122a,a2a13=b132a,a2a14=b142a,a2a15=b152a,a2a16=b162a,a2a17=b172a,
     a2a18=b182a,a2a19=b192a,a2a1a=b1a2a,a2a1b=b1b2a,a2a1c=b1c2a,a2a1d=b1d2a,
     a2a1e=b1e2a,a2a1f=b1f2a,a2a20=b202a,a2a21=b212a,a2a22=b222a,a2a23=b232a,
     a2a24=b242a,a2a25=b252a,a2a26=b262a,a2a27=b272a,a2a28=b282a,a2a29=b292a,
     a2a2a=b2a2a,a2a2b=b2b2a,a2a2c=b2c2a,a2a2d=b2d2a,a2a2e=b2e2a,a2a2f=b2f2a,
     a2a30=b302a,a2a31=b312a,a2a32=b322a,a2a33=b332a,a2a34=b342a,a2a35=b352a,
     a2a36=b362a,a2a37=b372a,a2a38=b382a,a2a39=b392a,a2a3a=b3a2a,a2a3b=b3b2a,
     a2a3c=b3c2a,a2a3d=b3d2a,a2a3e=b3e2a,a2a3f=b3f2a,a2b00=b002b,a2b01=b012b,
     a2b02=b022b,a2b03=b032b,a2b04=b042b,a2b05=b052b,a2b06=b062b,a2b07=b072b,
     a2b08=b082b,a2b09=b092b,a2b0a=b0a2b,a2b0b=b0b2b,a2b0c=b0c2b,a2b0d=b0d2b,
     a2b0e=b0e2b,a2b0f=b0f2b,a2b10=b102b,a2b11=b112b,a2b12=b122b,a2b13=b132b,
     a2b14=b142b,a2b15=b152b,a2b16=b162b,a2b17=b172b,a2b18=b182b,a2b19=b192b,
     a2b1a=b1a2b,a2b1b=b1b2b,a2b1c=b1c2b,a2b1d=b1d2b,a2b1e=b1e2b,a2b1f=b1f2b,
     a2b20=b202b,a2b21=b212b,a2b22=b222b,a2b23=b232b,a2b24=b242b,a2b25=b252b,
     a2b26=b262b,a2b27=b272b,a2b28=b282b,a2b29=b292b,a2b2a=b2a2b,a2b2b=b2b2b,
     a2b2c=b2c2b,a2b2d=b2d2b,a2b2e=b2e2b,a2b2f=b2f2b,a2b30=b302b,a2b31=b312b,
     a2b32=b322b,a2b33=b332b,a2b34=b342b,a2b35=b352b,a2b36=b362b,a2b37=b372b,
     a2b38=b382b,a2b39=b392b,a2b3a=b3a2b,a2b3b=b3b2b,a2b3c=b3c2b,a2b3d=b3d2b,
     a2b3e=b3e2b,a2b3f=b3f2b,a2c00=b002c,a2c01=b012c,a2c02=b022c,a2c03=b032c,
     a2c04=b042c,a2c05=b052c,a2c06=b062c,a2c07=b072c,a2c08=b082c,a2c09=b092c,
     a2c0a=b0a2c,a2c0b=b0b2c,a2c0c=b0c2c,a2c0d=b0d2c,a2c0e=b0e2c,a2c0f=b0f2c,
     a2c10=b102c,a2c11=b112c,a2c12=b122c,a2c13=b132c,a2c14=b142c,a2c15=b152c,
     a2c16=b162c,a2c17=b172c,a2c18=b182c,a2c19=b192c,a2c1a=b1a2c,a2c1b=b1b2c,
     a2c1c=b1c2c,a2c1d=b1d2c,a2c1e=b1e2c,a2c1f=b1f2c,a2c20=b202c,a2c21=b212c,
     a2c22=b222c,a2c23=b232c,a2c24=b242c,a2c25=b252c,a2c26=b262c,a2c27=b272c,
     a2c28=b282c,a2c29=b292c,a2c2a=b2a2c,a2c2b=b2b2c,a2c2c=b2c2c,a2c2d=b2d2c,
     a2c2e=b2e2c,a2c2f=b2f2c,a2c30=b302c,a2c31=b312c,a2c32=b322c,a2c33=b332c,
     a2c34=b342c,a2c35=b352c,a2c36=b362c,a2c37=b372c,a2c38=b382c,a2c39=b392c,
     a2c3a=b3a2c,a2c3b=b3b2c,a2c3c=b3c2c,a2c3d=b3d2c,a2c3e=b3e2c,a2c3f=b3f2c,
     a2d00=b002d,a2d01=b012d,a2d02=b022d,a2d03=b032d,a2d04=b042d,a2d05=b052d,
     a2d06=b062d,a2d07=b072d,a2d08=b082d,a2d09=b092d,a2d0a=b0a2d,a2d0b=b0b2d,
     a2d0c=b0c2d,a2d0d=b0d2d,a2d0e=b0e2d,a2d0f=b0f2d,a2d10=b102d,a2d11=b112d,
     a2d12=b122d,a2d13=b132d,a2d14=b142d,a2d15=b152d,a2d16=b162d,a2d17=b172d,
     a2d18=b182d,a2d19=b192d,a2d1a=b1a2d,a2d1b=b1b2d,a2d1c=b1c2d,a2d1d=b1d2d,
     a2d1e=b1e2d,a2d1f=b1f2d,a2d20=b202d,a2d21=b212d,a2d22=b222d,a2d23=b232d,
     a2d24=b242d,a2d25=b252d,a2d26=b262d,a2d27=b272d,a2d28=b282d,a2d29=b292d,
     a2d2a=b2a2d,a2d2b=b2b2d,a2d2c=b2c2d,a2d2d=b2d2d,a2d2e=b2e2d,a2d2f=b2f2d,
     a2d30=b302d,a2d31=b312d,a2d32=b322d,a2d33=b332d,a2d34=b342d,a2d35=b352d,
     a2d36=b362d,a2d37=b372d,a2d38=b382d,a2d39=b392d,a2d3a=b3a2d,a2d3b=b3b2d,
     a2d3c=b3c2d,a2d3d=b3d2d,a2d3e=b3e2d,a2d3f=b3f2d,a2e00=b002e,a2e01=b012e,
     a2e02=b022e,a2e03=b032e,a2e04=b042e,a2e05=b052e,a2e06=b062e,a2e07=b072e,
     a2e08=b082e,a2e09=b092e,a2e0a=b0a2e,a2e0b=b0b2e,a2e0c=b0c2e,a2e0d=b0d2e,
     a2e0e=b0e2e,a2e0f=b0f2e,a2e10=b102e,a2e11=b112e,a2e12=b122e,a2e13=b132e,
     a2e14=b142e,a2e15=b152e,a2e16=b162e,a2e17=b172e,a2e18=b182e,a2e19=b192e,
     a2e1a=b1a2e,a2e1b=b1b2e,a2e1c=b1c2e,a2e1d=b1d2e,a2e1e=b1e2e,a2e1f=b1f2e,
     a2e20=b202e,a2e21=b212e,a2e22=b222e,a2e23=b232e,a2e24=b242e,a2e25=b252e,
     a2e26=b262e,a2e27=b272e,a2e28=b282e,a2e29=b292e,a2e2a=b2a2e,a2e2b=b2b2e,
     a2e2c=b2c2e,a2e2d=b2d2e,a2e2e=b2e2e,a2e2f=b2f2e,a2e30=b302e,a2e31=b312e,
     a2e32=b322e,a2e33=b332e,a2e34=b342e,a2e35=b352e,a2e36=b362e,a2e37=b372e,
     a2e38=b382e,a2e39=b392e,a2e3a=b3a2e,a2e3b=b3b2e,a2e3c=b3c2e,a2e3d=b3d2e,
     a2e3e=b3e2e,a2e3f=b3f2e,a2f00=b002f,a2f01=b012f,a2f02=b022f,a2f03=b032f,
     a2f04=b042f,a2f05=b052f,a2f06=b062f,a2f07=b072f,a2f08=b082f,a2f09=b092f,
     a2f0a=b0a2f,a2f0b=b0b2f,a2f0c=b0c2f,a2f0d=b0d2f,a2f0e=b0e2f,a2f0f=b0f2f,
     a2f10=b102f,a2f11=b112f,a2f12=b122f,a2f13=b132f,a2f14=b142f,a2f15=b152f,
     a2f16=b162f,a2f17=b172f,a2f18=b182f,a2f19=b192f,a2f1a=b1a2f,a2f1b=b1b2f,
     a2f1c=b1c2f,a2f1d=b1d2f,a2f1e=b1e2f,a2f1f=b1f2f,a2f20=b202f,a2f21=b212f,
     a2f22=b222f,a2f23=b232f,a2f24=b242f,a2f25=b252f,a2f26=b262f,a2f27=b272f,
     a2f28=b282f,a2f29=b292f,a2f2a=b2a2f,a2f2b=b2b2f,a2f2c=b2c2f,a2f2d=b2d2f,
     a2f2e=b2e2f,a2f2f=b2f2f,a2f30=b302f,a2f31=b312f,a2f32=b322f,a2f33=b332f,
     a2f34=b342f,a2f35=b352f,a2f36=b362f,a2f37=b372f,a2f38=b382f,a2f39=b392f,
     a2f3a=b3a2f,a2f3b=b3b2f,a2f3c=b3c2f,a2f3d=b3d2f,a2f3e=b3e2f,a2f3f=b3f2f,
     a3000=b0030,a3001=b0130,a3002=b0230,a3003=b0330,a3004=b0430,a3005=b0530,
     a3006=b0630,a3007=b0730,a3008=b0830,a3009=b0930,a300a=b0a30,a300b=b0b30,
     a300c=b0c30,a300d=b0d30,a300e=b0e30,a300f=b0f30,a3010=b1030,a3011=b1130,
     a3012=b1230,a3013=b1330,a3014=b1430,a3015=b1530,a3016=b1630,a3017=b1730,
     a3018=b1830,a3019=b1930,a301a=b1a30,a301b=b1b30,a301c=b1c30,a301d=b1d30,
     a301e=b1e30,a301f=b1f30,a3020=b2030,a3021=b2130,a3022=b2230,a3023=b2330,
     a3024=b2430,a3025=b2530,a3026=b2630,a3027=b2730,a3028=b2830,a3029=b2930,
     a302a=b2a30,a302b=b2b30,a302c=b2c30,a302d=b2d30,a302e=b2e30,a302f=b2f30,
     a3030=b3030,a3031=b3130,a3032=b3230,a3033=b3330,a3034=b3430,a3035=b3530,
     a3036=b3630,a3037=b3730,a3038=b3830,a3039=b3930,a303a=b3a30,a303b=b3b30,
     a303c=b3c30,a303d=b3d30,a303e=b3e30,a303f=b3f30,a3100=b0031,a3101=b0131,
     a3102=b0231,a3103=b0331,a3104=b0431,a3105=b0531,a3106=b0631,a3107=b0731,
     a3108=b0831,a3109=b0931,a310a=b0a31,a310b=b0b31,a310c=b0c31,a310d=b0d31,
     a310e=b0e31,a310f=b0f31,a3110=b1031,a3111=b1131,a3112=b1231,a3113=b1331,
     a3114=b1431,a3115=b1531,a3116=b1631,a3117=b1731,a3118=b1831,a3119=b1931,
     a311a=b1a31,a311b=b1b31,a311c=b1c31,a311d=b1d31,a311e=b1e31,a311f=b1f31,
     a3120=b2031,a3121=b2131,a3122=b2231,a3123=b2331,a3124=b2431,a3125=b2531,
     a3126=b2631,a3127=b2731,a3128=b2831,a3129=b2931,a312a=b2a31,a312b=b2b31,
     a312c=b2c31,a312d=b2d31,a312e=b2e31,a312f=b2f31,a3130=b3031,a3131=b3131,
     a3132=b3231,a3133=b3331,a3134=b3431,a3135=b3531,a3136=b3631,a3137=b3731,
     a3138=b3831,a3139=b3931,a313a=b3a31,a313b=b3b31,a313c=b3c31,a313d=b3d31,
     a313e=b3e31,a313f=b3f31,a3200=b0032,a3201=b0132,a3202=b0232,a3203=b0332,
     a3204=b0432,a3205=b0532,a3206=b0632,a3207=b0732,a3208=b0832,a3209=b0932,
     a320a=b0a32,a320b=b0b32,a320c=b0c32,a320d=b0d32,a320e=b0e32,a320f=b0f32,
     a3210=b1032,a3211=b1132,a3212=b1232,a3213=b1332,a3214=b1432,a3215=b1532,
     a3216=b1632,a3217=b1732,a3218=b1832,a3219=b1932,a321a=b1a32,a321b=b1b32,
     a321c=b1c32,a321d=b1d32,a321e=b1e32,a321f=b1f32,a3220=b2032,a3221=b2132,
     a3222=b2232,a3223=b2332,a3224=b2432,a3225=b2532,a3226=b2632,a3227=b2732,
     a3228=b2832,a3229=b2932,a322a=b2a32,a322b=b2b32,a322c=b2c32,a322d=b2d32,
     a322e=b2e32,a322f=b2f32,a3230=b3032,a3231=b3132,a3232=b3232,a3233=b3332,
     a3234=b3432,a3235=b3532,a3236=b3632,a3237=b3732,a3238=b3832,a3239=b3932,
     a323a=b3a32,a323b=b3b32,a323c=b3c32,a323d=b3d32,a323e=b3e32,a323f=b3f32,
     a3300=b0033,a3301=b0133,a3302=b0233,a3303=b0333,a3304=b0433,a3305=b0533,
     a3306=b0633,a3307=b0733,a3308=b0833,a3309=b0933,a330a=b0a33,a330b=b0b33,
     a330c=b0c33,a330d=b0d33,a330e=b0e33,a330f=b0f33,a3310=b1033,a3311=b1133,
     a3312=b1233,a3313=b1333,a3314=b1433,a3315=b1533,a3316=b1633,a3317=b1733,
     a3318=b1833,a3319=b1933,a331a=b1a33,a331b=b1b33,a331c=b1c33,a331d=b1d33,
     a331e=b1e33,a331f=b1f33,a3320=b2033,a3321=b2133,a3322=b2233,a3323=b2333,
     a3324=b2433,a3325=b2533,a3326=b2633,a3327=b2733,a3328=b2833,a3329=b2933,
     a332a=b2a33,a332b=b2b33,a332c=b2c33,a332d=b2d33,a332e=b2e33,a332f=b2f33,
     a3330=b3033,a3331=b3133,a3332=b3233,a3333=b3333,a3334=b3433,a3335=b3533,
     a3336=b3633,a3337=b3733,a3338=b3833,a3339=b3933,a333a=b3a33,a333b=b3b33,
     a333c=b3c33,a333d=b3d33,a333e=b3e33,a333f=b3f33,a3400=b0034,a3401=b0134,
     a3402=b0234,a3403=b0334,a3404=b0434,a3405=b0534,a3406=b0634,a3407=b0734,
     a3408=b0834,a3409=b0934,a340a=b0a34,a340b=b0b34,a340c=b0c34,a340d=b0d34,
     a340e=b0e34,a340f=b0f34,a3410=b1034,a3411=b1134,a3412=b1234,a3413=b1334,
     a3414=b1434,a3415=b1534,a3416=b1634,a3417=b1734,a3418=b1834,a3419=b1934,
     a341a=b1a34,a341b=b1b34,a341c=b1c34,a341d=b1d34,a341e=b1e34,a341f=b1f34,
     a3420=b2034,a3421=b2134,a3422=b2234,a3423=b2334,a3424=b2434,a3425=b2534,
     a3426=b2634,a3427=b2734,a3428=b2834,a3429=b2934,a342a=b2a34,a342b=b2b34,
     a342c=b2c34,a342d=b2d34,a342e=b2e34,a342f=b2f34,a3430=b3034,a3431=b3134,
     a3432=b3234,a3433=b3334,a3434=b3434,a3435=b3534,a3436=b3634,a3437=b3734,
     a3438=b3834,a3439=b3934,a343a=b3a34,a343b=b3b34,a343c=b3c34,a343d=b3d34,
     a343e=b3e34,a343f=b3f34,a3500=b0035,a3501=b0135,a3502=b0235,a3503=b0335,
     a3504=b0435,a3505=b0535,a3506=b0635,a3507=b0735,a3508=b0835,a3509=b0935,
     a350a=b0a35,a350b=b0b35,a350c=b0c35,a350d=b0d35,a350e=b0e35,a350f=b0f35,
     a3510=b1035,a3511=b1135,a3512=b1235,a3513=b1335,a3514=b1435,a3515=b1535,
     a3516=b1635,a3517=b1735,a3518=b1835,a3519=b1935,a351a=b1a35,a351b=b1b35,
     a351c=b1c35,a351d=b1d35,a351e=b1e35,a351f=b1f35,a3520=b2035,a3521=b2135,
     a3522=b2235,a3523=b2335,a3524=b2435,a3525=b2535,a3526=b2635,a3527=b2735,
     a3528=b2835,a3529=b2935,a352a=b2a35,a352b=b2b35,a352c=b2c35,a352d=b2d35,
     a352e=b2e35,a352f=b2f35,a3530=b3035,a3531=b3135,a3532=b3235,a3533=b3335,
     a3534=b3435,a3535=b3535,a3536=b3635,a3537=b3735,a3538=b3835,a3539=b3935,
     a353a=b3a35,a353b=b3b35,a353c=b3c35,a353d=b3d35,a353e=b3e35,a353f=b3f35,
     a3600=b0036,a3601=b0136,a3602=b0236,a3603=b0336,a3604=b0436,a3605=b0536,
     a3606=b0636,a3607=b0736,a3608=b0836,a3609=b0936,a360a=b0a36,a360b=b0b36,
     a360c=b0c36,a360d=b0d36,a360e=b0e36,a360f=b0f36,a3610=b1036,a3611=b1136,
     a3612=b1236,a3613=b1336,a3614=b1436,a3615=b1536,a3616=b1636,a3617=b1736,
     a3618=b1836,a3619=b1936,a361a=b1a36,a361b=b1b36,a361c=b1c36,a361d=b1d36,
     a361e=b1e36,a361f=b1f36,a3620=b2036,a3621=b2136,a3622=b2236,a3623=b2336,
     a3624=b2436,a3625=b2536,a3626=b2636,a3627=b2736,a3628=b2836,a3629=b2936,
     a362a=b2a36,a362b=b2b36,a362c=b2c36,a362d=b2d36,a362e=b2e36,a362f=b2f36,
     a3630=b3036,a3631=b3136,a3632=b3236,a3633=b3336,a3634=b3436,a3635=b3536,
     a3636=b3636,a3637=b3736,a3638=b3836,a3639=b3936,a363a=b3a36,a363b=b3b36,
     a363c=b3c36,a363d=b3d36,a363e=b3e36,a363f=b3f36,a3700=b0037,a3701=b0137,
     a3702=b0237,a3703=b0337,a3704=b0437,a3705=b0537,a3706=b0637,a3707=b0737,
     a3708=b0837,a3709=b0937,a370a=b0a37,a370b=b0b37,a370c=b0c37,a370d=b0d37,
     a370e=b0e37,a370f=b0f37,a3710=b1037,a3711=b1137,a3712=b1237,a3713=b1337,
     a3714=b1437,a3715=b1537,a3716=b1637,a3717=b1737,a3718=b1837,a3719=b1937,
     a371a=b1a37,a371b=b1b37,a371c=b1c37,a371d=b1d37,a371e=b1e37,a371f=b1f37,
     a3720=b2037,a3721=b2137,a3722=b2237,a3723=b2337,a3724=b2437,a3725=b2537,
     a3726=b2637,a3727=b2737,a3728=b2837,a3729=b2937,a372a=b2a37,a372b=b2b37,
     a372c=b2c37,a372d=b2d37,a372e=b2e37,a372f=b2f37,a3730=b3037,a3731=b3137,
     a3732=b3237,a3733=b3337,a3734=b3437,a3735=b3537,a3736=b3637,a3737=b3737,
     a3738=b3837,a3739=b3937,a373a=b3a37,a373b=b3b37,a373c=b3c37,a373d=b3d37,
     a373e=b3e37,a373f=b3f37,a3800=b0038,a3801=b0138,a3802=b0238,a3803=b0338,
     a3804=b0438,a3805=b0538,a3806=b0638,a3807=b0738,a3808=b0838,a3809=b0938,
     a380a=b0a38,a380b=b0b38,a380c=b0c38,a380d=b0d38,a380e=b0e38,a380f=b0f38,
     a3810=b1038,a3811=b1138,a3812=b1238,a3813=b1338,a3814=b1438,a3815=b1538,
     a3816=b1638,a3817=b1738,a3818=b1838,a3819=b1938,a381a=b1a38,a381b=b1b38,
     a381c=b1c38,a381d=b1d38,a381e=b1e38,a381f=b1f38,a3820=b2038,a3821=b2138,
     a3822=b2238,a3823=b2338,a3824=b2438,a3825=b2538,a3826=b2638,a3827=b2738,
     a3828=b2838,a3829=b2938,a382a=b2a38,a382b=b2b38,a382c=b2c38,a382d=b2d38,
     a382e=b2e38,a382f=b2f38,a3830=b3038,a3831=b3138,a3832=b3238,a3833=b3338,
     a3834=b3438,a3835=b3538,a3836=b3638,a3837=b3738,a3838=b3838,a3839=b3938,
     a383a=b3a38,a383b=b3b38,a383c=b3c38,a383d=b3d38,a383e=b3e38,a383f=b3f38,
     a3900=b0039,a3901=b0139,a3902=b0239,a3903=b0339,a3904=b0439,a3905=b0539,
     a3906=b0639,a3907=b0739,a3908=b0839,a3909=b0939,a390a=b0a39,a390b=b0b39,
     a390c=b0c39,a390d=b0d39,a390e=b0e39,a390f=b0f39,a3910=b1039,a3911=b1139,
     a3912=b1239,a3913=b1339,a3914=b1439,a3915=b1539,a3916=b1639,a3917=b1739,
     a3918=b1839,a3919=b1939,a391a=b1a39,a391b=b1b39,a391c=b1c39,a391d=b1d39,
     a391e=b1e39,a391f=b1f39,a3920=b2039,a3921=b2139,a3922=b2239,a3923=b2339,
     a3924=b2439,a3925=b2539,a3926=b2639,a3927=b2739,a3928=b2839,a3929=b2939,
     a392a=b2a39,a392b=b2b39,a392c=b2c39,a392d=b2d39,a392e=b2e39,a392f=b2f39,
     a3930=b3039,a3931=b3139,a3932=b3239,a3933=b3339,a3934=b3439,a3935=b3539,
     a3936=b3639,a3937=b3739,a3938=b3839,a3939=b3939,a393a=b3a39,a393b=b3b39,
     a393c=b3c39,a393d=b3d39,a393e=b3e39,a393f=b3f39,a3a00=b003a,a3a01=b013a,
     a3a02=b023a,a3a03=b033a,a3a04=b043a,a3a05=b053a,a3a06=b063a,a3a07=b073a,
     a3a08=b083a,a3a09=b093a,a3a0a=b0a3a,a3a0b=b0b3a,a3a0c=b0c3a,a3a0d=b0d3a,
     a3a0e=b0e3a,a3a0f=b0f3a,a3a10=b103a,a3a11=b113a,a3a12=b123a,a3a13=b133a,
     a3a14=b143a,a3a15=b153a,a3a16=b163a,a3a17=b173a,a3a18=b183a,a3a19=b193a,
     a3a1a=b1a3a,a3a1b=b1b3a,a3a1c=b1c3a,a3a1d=b1d3a,a3a1e=b1e3a,a3a1f=b1f3a,
     a3a20=b203a,a3a21=b213a,a3a22=b223a,a3a23=b233a,a3a24=b243a,a3a25=b253a,
     a3a26=b263a,a3a27=b273a,a3a28=b283a,a3a29=b293a,a3a2a=b2a3a,a3a2b=b2b3a,
     a3a2c=b2c3a,a3a2d=b2d3a,a3a2e=b2e3a,a3a2f=b2f3a,a3a30=b303a,a3a31=b313a,
     a3a32=b323a,a3a33=b333a,a3a34=b343a,a3a35=b353a,a3a36=b363a,a3a37=b373a,
     a3a38=b383a,a3a39=b393a,a3a3a=b3a3a,a3a3b=b3b3a,a3a3c=b3c3a,a3a3d=b3d3a,
     a3a3e=b3e3a,a3a3f=b3f3a,a3b00=b003b,a3b01=b013b,a3b02=b023b,a3b03=b033b,
     a3b04=b043b,a3b05=b053b,a3b06=b063b,a3b07=b073b,a3b08=b083b,a3b09=b093b,
     a3b0a=b0a3b,a3b0b=b0b3b,a3b0c=b0c3b,a3b0d=b0d3b,a3b0e=b0e3b,a3b0f=b0f3b,
     a3b10=b103b,a3b11=b113b,a3b12=b123b,a3b13=b133b,a3b14=b143b,a3b15=b153b,
     a3b16=b163b,a3b17=b173b,a3b18=b183b,a3b19=b193b,a3b1a=b1a3b,a3b1b=b1b3b,
     a3b1c=b1c3b,a3b1d=b1d3b,a3b1e=b1e3b,a3b1f=b1f3b,a3b20=b203b,a3b21=b213b,
     a3b22=b223b,a3b23=b233b,a3b24=b243b,a3b25=b253b,a3b26=b263b,a3b27=b273b,
     a3b28=b283b,a3b29=b293b,a3b2a=b2a3b,a3b2b=b2b3b,a3b2c=b2c3b,a3b2d=b2d3b,
     a3b2e=b2e3b,a3b2f=b2f3b,a3b30=b303b,a3b31=b313b,a3b32=b323b,a3b33=b333b,
     a3b34=b343b,a3b35=b353b,a3b36=b363b,a3b37=b373b,a3b38=b383b,a3b39=b393b,
     a3b3a=b3a3b,a3b3b=b3b3b,a3b3c=b3c3b,a3b3d=b3d3b,a3b3e=b3e3b,a3b3f=b3f3b,
     a3c00=b003c,a3c01=b013c,a3c02=b023c,a3c03=b033c,a3c04=b043c,a3c05=b053c,
     a3c06=b063c,a3c07=b073c,a3c08=b083c,a3c09=b093c,a3c0a=b0a3c,a3c0b=b0b3c,
     a3c0c=b0c3c,a3c0d=b0d3c,a3c0e=b0e3c,a3c0f=b0f3c,a3c10=b103c,a3c11=b113c,
     a3c12=b123c,a3c13=b133c,a3c14=b143c,a3c15=b153c,a3c16=b163c,a3c17=b173c,
     a3c18=b183c,a3c19=b193c,a3c1a=b1a3c,a3c1b=b1b3c,a3c1c=b1c3c,a3c1d=b1d3c,
     a3c1e=b1e3c,a3c1f=b1f3c,a3c20=b203c,a3c21=b213c,a3c22=b223c,a3c23=b233c,
     a3c24=b243c,a3c25=b253c,a3c26=b263c,a3c27=b273c,a3c28=b283c,a3c29=b293c,
     a3c2a=b2a3c,a3c2b=b2b3c,a3c2c=b2c3c,a3c2d=b2d3c,a3c2e=b2e3c,a3c2f=b2f3c,
     a3c30=b303c,a3c31=b313c,a3c32=b323c,a3c33=b333c,a3c34=b343c,a3c35=b353c,
     a3c36=b363c,a3c37=b373c,a3c38=b383c,a3c39=b393c,a3c3a=b3a3c,a3c3b=b3b3c,
     a3c3c=b3c3c,a3c3d=b3d3c,a3c3e=b3e3c,a3c3f=b3f3c,a3d00=b003d,a3d01=b013d,
     a3d02=b023d,a3d03=b033d,a3d04=b043d,a3d05=b053d,a3d06=b063d,a3d07=b073d,
     a3d08=b083d,a3d09=b093d,a3d0a=b0a3d,a3d0b=b0b3d,a3d0c=b0c3d,a3d0d=b0d3d,
     a3d0e=b0e3d,a3d0f=b0f3d,a3d10=b103d,a3d11=b113d,a3d12=b123d,a3d13=b133d,
     a3d14=b143d,a3d15=b153d,a3d16=b163d,a3d17=b173d,a3d18=b183d,a3d19=b193d,
     a3d1a=b1a3d,a3d1b=b1b3d,a3d1c=b1c3d,a3d1d=b1d3d,a3d1e=b1e3d,a3d1f=b1f3d,
     a3d20=b203d,a3d21=b213d,a3d22=b223d,a3d23=b233d,a3d24=b243d,a3d25=b253d,
     a3d26=b263d,a3d27=b273d,a3d28=b283d,a3d29=b293d,a3d2a=b2a3d,a3d2b=b2b3d,
     a3d2c=b2c3d,a3d2d=b2d3d,a3d2e=b2e3d,a3d2f=b2f3d,a3d30=b303d,a3d31=b313d,
     a3d32=b323d,a3d33=b333d,a3d34=b343d,a3d35=b353d,a3d36=b363d,a3d37=b373d,
     a3d38=b383d,a3d39=b393d,a3d3a=b3a3d,a3d3b=b3b3d,a3d3c=b3c3d,a3d3d=b3d3d,
     a3d3e=b3e3d,a3d3f=b3f3d,a3e00=b003e,a3e01=b013e,a3e02=b023e,a3e03=b033e,
     a3e04=b043e,a3e05=b053e,a3e06=b063e,a3e07=b073e,a3e08=b083e,a3e09=b093e,
     a3e0a=b0a3e,a3e0b=b0b3e,a3e0c=b0c3e,a3e0d=b0d3e,a3e0e=b0e3e,a3e0f=b0f3e,
     a3e10=b103e,a3e11=b113e,a3e12=b123e,a3e13=b133e,a3e14=b143e,a3e15=b153e,
     a3e16=b163e,a3e17=b173e,a3e18=b183e,a3e19=b193e,a3e1a=b1a3e,a3e1b=b1b3e,
     a3e1c=b1c3e,a3e1d=b1d3e,a3e1e=b1e3e,a3e1f=b1f3e,a3e20=b203e,a3e21=b213e,
     a3e22=b223e,a3e23=b233e,a3e24=b243e,a3e25=b253e,a3e26=b263e,a3e27=b273e,
     a3e28=b283e,a3e29=b293e,a3e2a=b2a3e,a3e2b=b2b3e,a3e2c=b2c3e,a3e2d=b2d3e,
     a3e2e=b2e3e,a3e2f=b2f3e,a3e30=b303e,a3e31=b313e,a3e32=b323e,a3e33=b333e,
     a3e34=b343e,a3e35=b353e,a3e36=b363e,a3e37=b373e,a3e38=b383e,a3e39=b393e,
     a3e3a=b3a3e,a3e3b=b3b3e,a3e3c=b3c3e,a3e3d=b3d3e,a3e3e=b3e3e,a3e3f=b3f3e,
     a3f00=b003f,a3f01=b013f,a3f02=b023f,a3f03=b033f,a3f04=b043f,a3f05=b053f,
     a3f06=b063f,a3f07=b073f,a3f08=b083f,a3f09=b093f,a3f0a=b0a3f,a3f0b=b0b3f,
     a3f0c=b0c3f,a3f0d=b0d3f,a3f0e=b0e3f,a3f0f=b0f3f,a3f10=b103f,a3f11=b113f,
     a3f12=b123f,a3f13=b133f,a3f14=b143f,a3f15=b153f,a3f16=b163f,a3f17=b173f,
     a3f18=b183f,a3f19=b193f,a3f1a=b1a3f,a3f1b=b1b3f,a3f1c=b1c3f,a3f1d=b1d3f,
     a3f1e=b1e3f,a3f1f=b1f3f,a3f20=b203f,a3f21=b213f,a3f22=b223f,a3f23=b233f,
     a3f24=b243f,a3f25=b253f,a3f26=b263f,a3f27=b273f,a3f28=b283f,a3f29=b293f,
     a3f2a=b2a3f,a3f2b=b2b3f,a3f2c=b2c3f,a3f2d=b2d3f,a3f2e=b2e3f,a3f2f=b2f3f,
     a3f30=b303f,a3f31=b313f,a3f32=b323f,a3f33=b333f,a3f34=b343f,a3f35=b353f,
     a3f36=b363f,a3f37=b373f,a3f38=b383f,a3f39=b393f,a3f3a=b3a3f,a3f3b=b3b3f,
     a3f3c=b3c3f,a3f3d=b3d3f,a3f3e=b3e3f,a3f3f=b3f3f]
}

