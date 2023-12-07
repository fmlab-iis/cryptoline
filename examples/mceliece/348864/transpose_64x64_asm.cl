(* quine: -v -isafety -jobs 42 transpose_64x64_asm.cl
Parsing Cryptoline file:                [OK]            0.182370 seconds
Checking well-formedness:               [OK]            0.543730 seconds
Transforming to SSA form:               [OK]            0.024897 seconds
Normalizing specification:              [OK]            0.000805 seconds
Rewriting assignments:                  [OK]            0.021534 seconds
Verifying program safety:               [OK]            110.653868 seconds
Verifying range specification:          [OK]            1158.156910 seconds
Rewriting value-preserved casting:      [OK]            0.001775 seconds
Verifying algebraic specification:      [OK]            0.014543 seconds
Verification result:                    [OK]            1269.629662 seconds
*)                      

(* quine: -v -isafety -jobs 48 -slicing transpose_64x64_asm.cl
Parsing Cryptoline file:                [OK]            0.179836 seconds
Checking well-formedness:               [OK]            0.552210 seconds
Transforming to SSA form:               [OK]            0.025007 seconds
Normalizing specification:              [OK]            0.000818 seconds
Rewriting assignments:                  [OK]            0.022028 seconds
Verifying program safety:               [OK]            106.758984 seconds
Verifying range specification:          [OK]            734.759161 seconds
Rewriting value-preserved casting:      [OK]            0.003461 seconds
Verifying algebraic specification:      [OK]            0.011058 seconds
Verification result:                    [OK]            842.341794 seconds
*)                      

proc main (
bit c0000, bit c0001, bit c0002, bit c0003, bit c0004, bit c0005, bit c0006,
bit c0007, bit c0008, bit c0009, bit c0010, bit c0011, bit c0012, bit c0013,
bit c0014, bit c0015, bit c0016, bit c0017, bit c0018, bit c0019, bit c0020,
bit c0021, bit c0022, bit c0023, bit c0024, bit c0025, bit c0026, bit c0027,
bit c0028, bit c0029, bit c0030, bit c0031, bit c0032, bit c0033, bit c0034,
bit c0035, bit c0036, bit c0037, bit c0038, bit c0039, bit c0040, bit c0041,
bit c0042, bit c0043, bit c0044, bit c0045, bit c0046, bit c0047, bit c0048,
bit c0049, bit c0050, bit c0051, bit c0052, bit c0053, bit c0054, bit c0055,
bit c0056, bit c0057, bit c0058, bit c0059, bit c0060, bit c0061, bit c0062,
bit c0063, bit c0100, bit c0101, bit c0102, bit c0103, bit c0104, bit c0105,
bit c0106, bit c0107, bit c0108, bit c0109, bit c0110, bit c0111, bit c0112,
bit c0113, bit c0114, bit c0115, bit c0116, bit c0117, bit c0118, bit c0119,
bit c0120, bit c0121, bit c0122, bit c0123, bit c0124, bit c0125, bit c0126,
bit c0127, bit c0128, bit c0129, bit c0130, bit c0131, bit c0132, bit c0133,
bit c0134, bit c0135, bit c0136, bit c0137, bit c0138, bit c0139, bit c0140,
bit c0141, bit c0142, bit c0143, bit c0144, bit c0145, bit c0146, bit c0147,
bit c0148, bit c0149, bit c0150, bit c0151, bit c0152, bit c0153, bit c0154,
bit c0155, bit c0156, bit c0157, bit c0158, bit c0159, bit c0160, bit c0161,
bit c0162, bit c0163, bit c0200, bit c0201, bit c0202, bit c0203, bit c0204,
bit c0205, bit c0206, bit c0207, bit c0208, bit c0209, bit c0210, bit c0211,
bit c0212, bit c0213, bit c0214, bit c0215, bit c0216, bit c0217, bit c0218,
bit c0219, bit c0220, bit c0221, bit c0222, bit c0223, bit c0224, bit c0225,
bit c0226, bit c0227, bit c0228, bit c0229, bit c0230, bit c0231, bit c0232,
bit c0233, bit c0234, bit c0235, bit c0236, bit c0237, bit c0238, bit c0239,
bit c0240, bit c0241, bit c0242, bit c0243, bit c0244, bit c0245, bit c0246,
bit c0247, bit c0248, bit c0249, bit c0250, bit c0251, bit c0252, bit c0253,
bit c0254, bit c0255, bit c0256, bit c0257, bit c0258, bit c0259, bit c0260,
bit c0261, bit c0262, bit c0263, bit c0300, bit c0301, bit c0302, bit c0303,
bit c0304, bit c0305, bit c0306, bit c0307, bit c0308, bit c0309, bit c0310,
bit c0311, bit c0312, bit c0313, bit c0314, bit c0315, bit c0316, bit c0317,
bit c0318, bit c0319, bit c0320, bit c0321, bit c0322, bit c0323, bit c0324,
bit c0325, bit c0326, bit c0327, bit c0328, bit c0329, bit c0330, bit c0331,
bit c0332, bit c0333, bit c0334, bit c0335, bit c0336, bit c0337, bit c0338,
bit c0339, bit c0340, bit c0341, bit c0342, bit c0343, bit c0344, bit c0345,
bit c0346, bit c0347, bit c0348, bit c0349, bit c0350, bit c0351, bit c0352,
bit c0353, bit c0354, bit c0355, bit c0356, bit c0357, bit c0358, bit c0359,
bit c0360, bit c0361, bit c0362, bit c0363, bit c0400, bit c0401, bit c0402,
bit c0403, bit c0404, bit c0405, bit c0406, bit c0407, bit c0408, bit c0409,
bit c0410, bit c0411, bit c0412, bit c0413, bit c0414, bit c0415, bit c0416,
bit c0417, bit c0418, bit c0419, bit c0420, bit c0421, bit c0422, bit c0423,
bit c0424, bit c0425, bit c0426, bit c0427, bit c0428, bit c0429, bit c0430,
bit c0431, bit c0432, bit c0433, bit c0434, bit c0435, bit c0436, bit c0437,
bit c0438, bit c0439, bit c0440, bit c0441, bit c0442, bit c0443, bit c0444,
bit c0445, bit c0446, bit c0447, bit c0448, bit c0449, bit c0450, bit c0451,
bit c0452, bit c0453, bit c0454, bit c0455, bit c0456, bit c0457, bit c0458,
bit c0459, bit c0460, bit c0461, bit c0462, bit c0463, bit c0500, bit c0501,
bit c0502, bit c0503, bit c0504, bit c0505, bit c0506, bit c0507, bit c0508,
bit c0509, bit c0510, bit c0511, bit c0512, bit c0513, bit c0514, bit c0515,
bit c0516, bit c0517, bit c0518, bit c0519, bit c0520, bit c0521, bit c0522,
bit c0523, bit c0524, bit c0525, bit c0526, bit c0527, bit c0528, bit c0529,
bit c0530, bit c0531, bit c0532, bit c0533, bit c0534, bit c0535, bit c0536,
bit c0537, bit c0538, bit c0539, bit c0540, bit c0541, bit c0542, bit c0543,
bit c0544, bit c0545, bit c0546, bit c0547, bit c0548, bit c0549, bit c0550,
bit c0551, bit c0552, bit c0553, bit c0554, bit c0555, bit c0556, bit c0557,
bit c0558, bit c0559, bit c0560, bit c0561, bit c0562, bit c0563, bit c0600,
bit c0601, bit c0602, bit c0603, bit c0604, bit c0605, bit c0606, bit c0607,
bit c0608, bit c0609, bit c0610, bit c0611, bit c0612, bit c0613, bit c0614,
bit c0615, bit c0616, bit c0617, bit c0618, bit c0619, bit c0620, bit c0621,
bit c0622, bit c0623, bit c0624, bit c0625, bit c0626, bit c0627, bit c0628,
bit c0629, bit c0630, bit c0631, bit c0632, bit c0633, bit c0634, bit c0635,
bit c0636, bit c0637, bit c0638, bit c0639, bit c0640, bit c0641, bit c0642,
bit c0643, bit c0644, bit c0645, bit c0646, bit c0647, bit c0648, bit c0649,
bit c0650, bit c0651, bit c0652, bit c0653, bit c0654, bit c0655, bit c0656,
bit c0657, bit c0658, bit c0659, bit c0660, bit c0661, bit c0662, bit c0663,
bit c0700, bit c0701, bit c0702, bit c0703, bit c0704, bit c0705, bit c0706,
bit c0707, bit c0708, bit c0709, bit c0710, bit c0711, bit c0712, bit c0713,
bit c0714, bit c0715, bit c0716, bit c0717, bit c0718, bit c0719, bit c0720,
bit c0721, bit c0722, bit c0723, bit c0724, bit c0725, bit c0726, bit c0727,
bit c0728, bit c0729, bit c0730, bit c0731, bit c0732, bit c0733, bit c0734,
bit c0735, bit c0736, bit c0737, bit c0738, bit c0739, bit c0740, bit c0741,
bit c0742, bit c0743, bit c0744, bit c0745, bit c0746, bit c0747, bit c0748,
bit c0749, bit c0750, bit c0751, bit c0752, bit c0753, bit c0754, bit c0755,
bit c0756, bit c0757, bit c0758, bit c0759, bit c0760, bit c0761, bit c0762,
bit c0763, bit c0800, bit c0801, bit c0802, bit c0803, bit c0804, bit c0805,
bit c0806, bit c0807, bit c0808, bit c0809, bit c0810, bit c0811, bit c0812,
bit c0813, bit c0814, bit c0815, bit c0816, bit c0817, bit c0818, bit c0819,
bit c0820, bit c0821, bit c0822, bit c0823, bit c0824, bit c0825, bit c0826,
bit c0827, bit c0828, bit c0829, bit c0830, bit c0831, bit c0832, bit c0833,
bit c0834, bit c0835, bit c0836, bit c0837, bit c0838, bit c0839, bit c0840,
bit c0841, bit c0842, bit c0843, bit c0844, bit c0845, bit c0846, bit c0847,
bit c0848, bit c0849, bit c0850, bit c0851, bit c0852, bit c0853, bit c0854,
bit c0855, bit c0856, bit c0857, bit c0858, bit c0859, bit c0860, bit c0861,
bit c0862, bit c0863, bit c0900, bit c0901, bit c0902, bit c0903, bit c0904,
bit c0905, bit c0906, bit c0907, bit c0908, bit c0909, bit c0910, bit c0911,
bit c0912, bit c0913, bit c0914, bit c0915, bit c0916, bit c0917, bit c0918,
bit c0919, bit c0920, bit c0921, bit c0922, bit c0923, bit c0924, bit c0925,
bit c0926, bit c0927, bit c0928, bit c0929, bit c0930, bit c0931, bit c0932,
bit c0933, bit c0934, bit c0935, bit c0936, bit c0937, bit c0938, bit c0939,
bit c0940, bit c0941, bit c0942, bit c0943, bit c0944, bit c0945, bit c0946,
bit c0947, bit c0948, bit c0949, bit c0950, bit c0951, bit c0952, bit c0953,
bit c0954, bit c0955, bit c0956, bit c0957, bit c0958, bit c0959, bit c0960,
bit c0961, bit c0962, bit c0963, bit c1000, bit c1001, bit c1002, bit c1003,
bit c1004, bit c1005, bit c1006, bit c1007, bit c1008, bit c1009, bit c1010,
bit c1011, bit c1012, bit c1013, bit c1014, bit c1015, bit c1016, bit c1017,
bit c1018, bit c1019, bit c1020, bit c1021, bit c1022, bit c1023, bit c1024,
bit c1025, bit c1026, bit c1027, bit c1028, bit c1029, bit c1030, bit c1031,
bit c1032, bit c1033, bit c1034, bit c1035, bit c1036, bit c1037, bit c1038,
bit c1039, bit c1040, bit c1041, bit c1042, bit c1043, bit c1044, bit c1045,
bit c1046, bit c1047, bit c1048, bit c1049, bit c1050, bit c1051, bit c1052,
bit c1053, bit c1054, bit c1055, bit c1056, bit c1057, bit c1058, bit c1059,
bit c1060, bit c1061, bit c1062, bit c1063, bit c1100, bit c1101, bit c1102,
bit c1103, bit c1104, bit c1105, bit c1106, bit c1107, bit c1108, bit c1109,
bit c1110, bit c1111, bit c1112, bit c1113, bit c1114, bit c1115, bit c1116,
bit c1117, bit c1118, bit c1119, bit c1120, bit c1121, bit c1122, bit c1123,
bit c1124, bit c1125, bit c1126, bit c1127, bit c1128, bit c1129, bit c1130,
bit c1131, bit c1132, bit c1133, bit c1134, bit c1135, bit c1136, bit c1137,
bit c1138, bit c1139, bit c1140, bit c1141, bit c1142, bit c1143, bit c1144,
bit c1145, bit c1146, bit c1147, bit c1148, bit c1149, bit c1150, bit c1151,
bit c1152, bit c1153, bit c1154, bit c1155, bit c1156, bit c1157, bit c1158,
bit c1159, bit c1160, bit c1161, bit c1162, bit c1163, bit c1200, bit c1201,
bit c1202, bit c1203, bit c1204, bit c1205, bit c1206, bit c1207, bit c1208,
bit c1209, bit c1210, bit c1211, bit c1212, bit c1213, bit c1214, bit c1215,
bit c1216, bit c1217, bit c1218, bit c1219, bit c1220, bit c1221, bit c1222,
bit c1223, bit c1224, bit c1225, bit c1226, bit c1227, bit c1228, bit c1229,
bit c1230, bit c1231, bit c1232, bit c1233, bit c1234, bit c1235, bit c1236,
bit c1237, bit c1238, bit c1239, bit c1240, bit c1241, bit c1242, bit c1243,
bit c1244, bit c1245, bit c1246, bit c1247, bit c1248, bit c1249, bit c1250,
bit c1251, bit c1252, bit c1253, bit c1254, bit c1255, bit c1256, bit c1257,
bit c1258, bit c1259, bit c1260, bit c1261, bit c1262, bit c1263, bit c1300,
bit c1301, bit c1302, bit c1303, bit c1304, bit c1305, bit c1306, bit c1307,
bit c1308, bit c1309, bit c1310, bit c1311, bit c1312, bit c1313, bit c1314,
bit c1315, bit c1316, bit c1317, bit c1318, bit c1319, bit c1320, bit c1321,
bit c1322, bit c1323, bit c1324, bit c1325, bit c1326, bit c1327, bit c1328,
bit c1329, bit c1330, bit c1331, bit c1332, bit c1333, bit c1334, bit c1335,
bit c1336, bit c1337, bit c1338, bit c1339, bit c1340, bit c1341, bit c1342,
bit c1343, bit c1344, bit c1345, bit c1346, bit c1347, bit c1348, bit c1349,
bit c1350, bit c1351, bit c1352, bit c1353, bit c1354, bit c1355, bit c1356,
bit c1357, bit c1358, bit c1359, bit c1360, bit c1361, bit c1362, bit c1363,
bit c1400, bit c1401, bit c1402, bit c1403, bit c1404, bit c1405, bit c1406,
bit c1407, bit c1408, bit c1409, bit c1410, bit c1411, bit c1412, bit c1413,
bit c1414, bit c1415, bit c1416, bit c1417, bit c1418, bit c1419, bit c1420,
bit c1421, bit c1422, bit c1423, bit c1424, bit c1425, bit c1426, bit c1427,
bit c1428, bit c1429, bit c1430, bit c1431, bit c1432, bit c1433, bit c1434,
bit c1435, bit c1436, bit c1437, bit c1438, bit c1439, bit c1440, bit c1441,
bit c1442, bit c1443, bit c1444, bit c1445, bit c1446, bit c1447, bit c1448,
bit c1449, bit c1450, bit c1451, bit c1452, bit c1453, bit c1454, bit c1455,
bit c1456, bit c1457, bit c1458, bit c1459, bit c1460, bit c1461, bit c1462,
bit c1463, bit c1500, bit c1501, bit c1502, bit c1503, bit c1504, bit c1505,
bit c1506, bit c1507, bit c1508, bit c1509, bit c1510, bit c1511, bit c1512,
bit c1513, bit c1514, bit c1515, bit c1516, bit c1517, bit c1518, bit c1519,
bit c1520, bit c1521, bit c1522, bit c1523, bit c1524, bit c1525, bit c1526,
bit c1527, bit c1528, bit c1529, bit c1530, bit c1531, bit c1532, bit c1533,
bit c1534, bit c1535, bit c1536, bit c1537, bit c1538, bit c1539, bit c1540,
bit c1541, bit c1542, bit c1543, bit c1544, bit c1545, bit c1546, bit c1547,
bit c1548, bit c1549, bit c1550, bit c1551, bit c1552, bit c1553, bit c1554,
bit c1555, bit c1556, bit c1557, bit c1558, bit c1559, bit c1560, bit c1561,
bit c1562, bit c1563, bit c1600, bit c1601, bit c1602, bit c1603, bit c1604,
bit c1605, bit c1606, bit c1607, bit c1608, bit c1609, bit c1610, bit c1611,
bit c1612, bit c1613, bit c1614, bit c1615, bit c1616, bit c1617, bit c1618,
bit c1619, bit c1620, bit c1621, bit c1622, bit c1623, bit c1624, bit c1625,
bit c1626, bit c1627, bit c1628, bit c1629, bit c1630, bit c1631, bit c1632,
bit c1633, bit c1634, bit c1635, bit c1636, bit c1637, bit c1638, bit c1639,
bit c1640, bit c1641, bit c1642, bit c1643, bit c1644, bit c1645, bit c1646,
bit c1647, bit c1648, bit c1649, bit c1650, bit c1651, bit c1652, bit c1653,
bit c1654, bit c1655, bit c1656, bit c1657, bit c1658, bit c1659, bit c1660,
bit c1661, bit c1662, bit c1663, bit c1700, bit c1701, bit c1702, bit c1703,
bit c1704, bit c1705, bit c1706, bit c1707, bit c1708, bit c1709, bit c1710,
bit c1711, bit c1712, bit c1713, bit c1714, bit c1715, bit c1716, bit c1717,
bit c1718, bit c1719, bit c1720, bit c1721, bit c1722, bit c1723, bit c1724,
bit c1725, bit c1726, bit c1727, bit c1728, bit c1729, bit c1730, bit c1731,
bit c1732, bit c1733, bit c1734, bit c1735, bit c1736, bit c1737, bit c1738,
bit c1739, bit c1740, bit c1741, bit c1742, bit c1743, bit c1744, bit c1745,
bit c1746, bit c1747, bit c1748, bit c1749, bit c1750, bit c1751, bit c1752,
bit c1753, bit c1754, bit c1755, bit c1756, bit c1757, bit c1758, bit c1759,
bit c1760, bit c1761, bit c1762, bit c1763, bit c1800, bit c1801, bit c1802,
bit c1803, bit c1804, bit c1805, bit c1806, bit c1807, bit c1808, bit c1809,
bit c1810, bit c1811, bit c1812, bit c1813, bit c1814, bit c1815, bit c1816,
bit c1817, bit c1818, bit c1819, bit c1820, bit c1821, bit c1822, bit c1823,
bit c1824, bit c1825, bit c1826, bit c1827, bit c1828, bit c1829, bit c1830,
bit c1831, bit c1832, bit c1833, bit c1834, bit c1835, bit c1836, bit c1837,
bit c1838, bit c1839, bit c1840, bit c1841, bit c1842, bit c1843, bit c1844,
bit c1845, bit c1846, bit c1847, bit c1848, bit c1849, bit c1850, bit c1851,
bit c1852, bit c1853, bit c1854, bit c1855, bit c1856, bit c1857, bit c1858,
bit c1859, bit c1860, bit c1861, bit c1862, bit c1863, bit c1900, bit c1901,
bit c1902, bit c1903, bit c1904, bit c1905, bit c1906, bit c1907, bit c1908,
bit c1909, bit c1910, bit c1911, bit c1912, bit c1913, bit c1914, bit c1915,
bit c1916, bit c1917, bit c1918, bit c1919, bit c1920, bit c1921, bit c1922,
bit c1923, bit c1924, bit c1925, bit c1926, bit c1927, bit c1928, bit c1929,
bit c1930, bit c1931, bit c1932, bit c1933, bit c1934, bit c1935, bit c1936,
bit c1937, bit c1938, bit c1939, bit c1940, bit c1941, bit c1942, bit c1943,
bit c1944, bit c1945, bit c1946, bit c1947, bit c1948, bit c1949, bit c1950,
bit c1951, bit c1952, bit c1953, bit c1954, bit c1955, bit c1956, bit c1957,
bit c1958, bit c1959, bit c1960, bit c1961, bit c1962, bit c1963, bit c2000,
bit c2001, bit c2002, bit c2003, bit c2004, bit c2005, bit c2006, bit c2007,
bit c2008, bit c2009, bit c2010, bit c2011, bit c2012, bit c2013, bit c2014,
bit c2015, bit c2016, bit c2017, bit c2018, bit c2019, bit c2020, bit c2021,
bit c2022, bit c2023, bit c2024, bit c2025, bit c2026, bit c2027, bit c2028,
bit c2029, bit c2030, bit c2031, bit c2032, bit c2033, bit c2034, bit c2035,
bit c2036, bit c2037, bit c2038, bit c2039, bit c2040, bit c2041, bit c2042,
bit c2043, bit c2044, bit c2045, bit c2046, bit c2047, bit c2048, bit c2049,
bit c2050, bit c2051, bit c2052, bit c2053, bit c2054, bit c2055, bit c2056,
bit c2057, bit c2058, bit c2059, bit c2060, bit c2061, bit c2062, bit c2063,
bit c2100, bit c2101, bit c2102, bit c2103, bit c2104, bit c2105, bit c2106,
bit c2107, bit c2108, bit c2109, bit c2110, bit c2111, bit c2112, bit c2113,
bit c2114, bit c2115, bit c2116, bit c2117, bit c2118, bit c2119, bit c2120,
bit c2121, bit c2122, bit c2123, bit c2124, bit c2125, bit c2126, bit c2127,
bit c2128, bit c2129, bit c2130, bit c2131, bit c2132, bit c2133, bit c2134,
bit c2135, bit c2136, bit c2137, bit c2138, bit c2139, bit c2140, bit c2141,
bit c2142, bit c2143, bit c2144, bit c2145, bit c2146, bit c2147, bit c2148,
bit c2149, bit c2150, bit c2151, bit c2152, bit c2153, bit c2154, bit c2155,
bit c2156, bit c2157, bit c2158, bit c2159, bit c2160, bit c2161, bit c2162,
bit c2163, bit c2200, bit c2201, bit c2202, bit c2203, bit c2204, bit c2205,
bit c2206, bit c2207, bit c2208, bit c2209, bit c2210, bit c2211, bit c2212,
bit c2213, bit c2214, bit c2215, bit c2216, bit c2217, bit c2218, bit c2219,
bit c2220, bit c2221, bit c2222, bit c2223, bit c2224, bit c2225, bit c2226,
bit c2227, bit c2228, bit c2229, bit c2230, bit c2231, bit c2232, bit c2233,
bit c2234, bit c2235, bit c2236, bit c2237, bit c2238, bit c2239, bit c2240,
bit c2241, bit c2242, bit c2243, bit c2244, bit c2245, bit c2246, bit c2247,
bit c2248, bit c2249, bit c2250, bit c2251, bit c2252, bit c2253, bit c2254,
bit c2255, bit c2256, bit c2257, bit c2258, bit c2259, bit c2260, bit c2261,
bit c2262, bit c2263, bit c2300, bit c2301, bit c2302, bit c2303, bit c2304,
bit c2305, bit c2306, bit c2307, bit c2308, bit c2309, bit c2310, bit c2311,
bit c2312, bit c2313, bit c2314, bit c2315, bit c2316, bit c2317, bit c2318,
bit c2319, bit c2320, bit c2321, bit c2322, bit c2323, bit c2324, bit c2325,
bit c2326, bit c2327, bit c2328, bit c2329, bit c2330, bit c2331, bit c2332,
bit c2333, bit c2334, bit c2335, bit c2336, bit c2337, bit c2338, bit c2339,
bit c2340, bit c2341, bit c2342, bit c2343, bit c2344, bit c2345, bit c2346,
bit c2347, bit c2348, bit c2349, bit c2350, bit c2351, bit c2352, bit c2353,
bit c2354, bit c2355, bit c2356, bit c2357, bit c2358, bit c2359, bit c2360,
bit c2361, bit c2362, bit c2363, bit c2400, bit c2401, bit c2402, bit c2403,
bit c2404, bit c2405, bit c2406, bit c2407, bit c2408, bit c2409, bit c2410,
bit c2411, bit c2412, bit c2413, bit c2414, bit c2415, bit c2416, bit c2417,
bit c2418, bit c2419, bit c2420, bit c2421, bit c2422, bit c2423, bit c2424,
bit c2425, bit c2426, bit c2427, bit c2428, bit c2429, bit c2430, bit c2431,
bit c2432, bit c2433, bit c2434, bit c2435, bit c2436, bit c2437, bit c2438,
bit c2439, bit c2440, bit c2441, bit c2442, bit c2443, bit c2444, bit c2445,
bit c2446, bit c2447, bit c2448, bit c2449, bit c2450, bit c2451, bit c2452,
bit c2453, bit c2454, bit c2455, bit c2456, bit c2457, bit c2458, bit c2459,
bit c2460, bit c2461, bit c2462, bit c2463, bit c2500, bit c2501, bit c2502,
bit c2503, bit c2504, bit c2505, bit c2506, bit c2507, bit c2508, bit c2509,
bit c2510, bit c2511, bit c2512, bit c2513, bit c2514, bit c2515, bit c2516,
bit c2517, bit c2518, bit c2519, bit c2520, bit c2521, bit c2522, bit c2523,
bit c2524, bit c2525, bit c2526, bit c2527, bit c2528, bit c2529, bit c2530,
bit c2531, bit c2532, bit c2533, bit c2534, bit c2535, bit c2536, bit c2537,
bit c2538, bit c2539, bit c2540, bit c2541, bit c2542, bit c2543, bit c2544,
bit c2545, bit c2546, bit c2547, bit c2548, bit c2549, bit c2550, bit c2551,
bit c2552, bit c2553, bit c2554, bit c2555, bit c2556, bit c2557, bit c2558,
bit c2559, bit c2560, bit c2561, bit c2562, bit c2563, bit c2600, bit c2601,
bit c2602, bit c2603, bit c2604, bit c2605, bit c2606, bit c2607, bit c2608,
bit c2609, bit c2610, bit c2611, bit c2612, bit c2613, bit c2614, bit c2615,
bit c2616, bit c2617, bit c2618, bit c2619, bit c2620, bit c2621, bit c2622,
bit c2623, bit c2624, bit c2625, bit c2626, bit c2627, bit c2628, bit c2629,
bit c2630, bit c2631, bit c2632, bit c2633, bit c2634, bit c2635, bit c2636,
bit c2637, bit c2638, bit c2639, bit c2640, bit c2641, bit c2642, bit c2643,
bit c2644, bit c2645, bit c2646, bit c2647, bit c2648, bit c2649, bit c2650,
bit c2651, bit c2652, bit c2653, bit c2654, bit c2655, bit c2656, bit c2657,
bit c2658, bit c2659, bit c2660, bit c2661, bit c2662, bit c2663, bit c2700,
bit c2701, bit c2702, bit c2703, bit c2704, bit c2705, bit c2706, bit c2707,
bit c2708, bit c2709, bit c2710, bit c2711, bit c2712, bit c2713, bit c2714,
bit c2715, bit c2716, bit c2717, bit c2718, bit c2719, bit c2720, bit c2721,
bit c2722, bit c2723, bit c2724, bit c2725, bit c2726, bit c2727, bit c2728,
bit c2729, bit c2730, bit c2731, bit c2732, bit c2733, bit c2734, bit c2735,
bit c2736, bit c2737, bit c2738, bit c2739, bit c2740, bit c2741, bit c2742,
bit c2743, bit c2744, bit c2745, bit c2746, bit c2747, bit c2748, bit c2749,
bit c2750, bit c2751, bit c2752, bit c2753, bit c2754, bit c2755, bit c2756,
bit c2757, bit c2758, bit c2759, bit c2760, bit c2761, bit c2762, bit c2763,
bit c2800, bit c2801, bit c2802, bit c2803, bit c2804, bit c2805, bit c2806,
bit c2807, bit c2808, bit c2809, bit c2810, bit c2811, bit c2812, bit c2813,
bit c2814, bit c2815, bit c2816, bit c2817, bit c2818, bit c2819, bit c2820,
bit c2821, bit c2822, bit c2823, bit c2824, bit c2825, bit c2826, bit c2827,
bit c2828, bit c2829, bit c2830, bit c2831, bit c2832, bit c2833, bit c2834,
bit c2835, bit c2836, bit c2837, bit c2838, bit c2839, bit c2840, bit c2841,
bit c2842, bit c2843, bit c2844, bit c2845, bit c2846, bit c2847, bit c2848,
bit c2849, bit c2850, bit c2851, bit c2852, bit c2853, bit c2854, bit c2855,
bit c2856, bit c2857, bit c2858, bit c2859, bit c2860, bit c2861, bit c2862,
bit c2863, bit c2900, bit c2901, bit c2902, bit c2903, bit c2904, bit c2905,
bit c2906, bit c2907, bit c2908, bit c2909, bit c2910, bit c2911, bit c2912,
bit c2913, bit c2914, bit c2915, bit c2916, bit c2917, bit c2918, bit c2919,
bit c2920, bit c2921, bit c2922, bit c2923, bit c2924, bit c2925, bit c2926,
bit c2927, bit c2928, bit c2929, bit c2930, bit c2931, bit c2932, bit c2933,
bit c2934, bit c2935, bit c2936, bit c2937, bit c2938, bit c2939, bit c2940,
bit c2941, bit c2942, bit c2943, bit c2944, bit c2945, bit c2946, bit c2947,
bit c2948, bit c2949, bit c2950, bit c2951, bit c2952, bit c2953, bit c2954,
bit c2955, bit c2956, bit c2957, bit c2958, bit c2959, bit c2960, bit c2961,
bit c2962, bit c2963, bit c3000, bit c3001, bit c3002, bit c3003, bit c3004,
bit c3005, bit c3006, bit c3007, bit c3008, bit c3009, bit c3010, bit c3011,
bit c3012, bit c3013, bit c3014, bit c3015, bit c3016, bit c3017, bit c3018,
bit c3019, bit c3020, bit c3021, bit c3022, bit c3023, bit c3024, bit c3025,
bit c3026, bit c3027, bit c3028, bit c3029, bit c3030, bit c3031, bit c3032,
bit c3033, bit c3034, bit c3035, bit c3036, bit c3037, bit c3038, bit c3039,
bit c3040, bit c3041, bit c3042, bit c3043, bit c3044, bit c3045, bit c3046,
bit c3047, bit c3048, bit c3049, bit c3050, bit c3051, bit c3052, bit c3053,
bit c3054, bit c3055, bit c3056, bit c3057, bit c3058, bit c3059, bit c3060,
bit c3061, bit c3062, bit c3063, bit c3100, bit c3101, bit c3102, bit c3103,
bit c3104, bit c3105, bit c3106, bit c3107, bit c3108, bit c3109, bit c3110,
bit c3111, bit c3112, bit c3113, bit c3114, bit c3115, bit c3116, bit c3117,
bit c3118, bit c3119, bit c3120, bit c3121, bit c3122, bit c3123, bit c3124,
bit c3125, bit c3126, bit c3127, bit c3128, bit c3129, bit c3130, bit c3131,
bit c3132, bit c3133, bit c3134, bit c3135, bit c3136, bit c3137, bit c3138,
bit c3139, bit c3140, bit c3141, bit c3142, bit c3143, bit c3144, bit c3145,
bit c3146, bit c3147, bit c3148, bit c3149, bit c3150, bit c3151, bit c3152,
bit c3153, bit c3154, bit c3155, bit c3156, bit c3157, bit c3158, bit c3159,
bit c3160, bit c3161, bit c3162, bit c3163, bit c3200, bit c3201, bit c3202,
bit c3203, bit c3204, bit c3205, bit c3206, bit c3207, bit c3208, bit c3209,
bit c3210, bit c3211, bit c3212, bit c3213, bit c3214, bit c3215, bit c3216,
bit c3217, bit c3218, bit c3219, bit c3220, bit c3221, bit c3222, bit c3223,
bit c3224, bit c3225, bit c3226, bit c3227, bit c3228, bit c3229, bit c3230,
bit c3231, bit c3232, bit c3233, bit c3234, bit c3235, bit c3236, bit c3237,
bit c3238, bit c3239, bit c3240, bit c3241, bit c3242, bit c3243, bit c3244,
bit c3245, bit c3246, bit c3247, bit c3248, bit c3249, bit c3250, bit c3251,
bit c3252, bit c3253, bit c3254, bit c3255, bit c3256, bit c3257, bit c3258,
bit c3259, bit c3260, bit c3261, bit c3262, bit c3263, bit c3300, bit c3301,
bit c3302, bit c3303, bit c3304, bit c3305, bit c3306, bit c3307, bit c3308,
bit c3309, bit c3310, bit c3311, bit c3312, bit c3313, bit c3314, bit c3315,
bit c3316, bit c3317, bit c3318, bit c3319, bit c3320, bit c3321, bit c3322,
bit c3323, bit c3324, bit c3325, bit c3326, bit c3327, bit c3328, bit c3329,
bit c3330, bit c3331, bit c3332, bit c3333, bit c3334, bit c3335, bit c3336,
bit c3337, bit c3338, bit c3339, bit c3340, bit c3341, bit c3342, bit c3343,
bit c3344, bit c3345, bit c3346, bit c3347, bit c3348, bit c3349, bit c3350,
bit c3351, bit c3352, bit c3353, bit c3354, bit c3355, bit c3356, bit c3357,
bit c3358, bit c3359, bit c3360, bit c3361, bit c3362, bit c3363, bit c3400,
bit c3401, bit c3402, bit c3403, bit c3404, bit c3405, bit c3406, bit c3407,
bit c3408, bit c3409, bit c3410, bit c3411, bit c3412, bit c3413, bit c3414,
bit c3415, bit c3416, bit c3417, bit c3418, bit c3419, bit c3420, bit c3421,
bit c3422, bit c3423, bit c3424, bit c3425, bit c3426, bit c3427, bit c3428,
bit c3429, bit c3430, bit c3431, bit c3432, bit c3433, bit c3434, bit c3435,
bit c3436, bit c3437, bit c3438, bit c3439, bit c3440, bit c3441, bit c3442,
bit c3443, bit c3444, bit c3445, bit c3446, bit c3447, bit c3448, bit c3449,
bit c3450, bit c3451, bit c3452, bit c3453, bit c3454, bit c3455, bit c3456,
bit c3457, bit c3458, bit c3459, bit c3460, bit c3461, bit c3462, bit c3463,
bit c3500, bit c3501, bit c3502, bit c3503, bit c3504, bit c3505, bit c3506,
bit c3507, bit c3508, bit c3509, bit c3510, bit c3511, bit c3512, bit c3513,
bit c3514, bit c3515, bit c3516, bit c3517, bit c3518, bit c3519, bit c3520,
bit c3521, bit c3522, bit c3523, bit c3524, bit c3525, bit c3526, bit c3527,
bit c3528, bit c3529, bit c3530, bit c3531, bit c3532, bit c3533, bit c3534,
bit c3535, bit c3536, bit c3537, bit c3538, bit c3539, bit c3540, bit c3541,
bit c3542, bit c3543, bit c3544, bit c3545, bit c3546, bit c3547, bit c3548,
bit c3549, bit c3550, bit c3551, bit c3552, bit c3553, bit c3554, bit c3555,
bit c3556, bit c3557, bit c3558, bit c3559, bit c3560, bit c3561, bit c3562,
bit c3563, bit c3600, bit c3601, bit c3602, bit c3603, bit c3604, bit c3605,
bit c3606, bit c3607, bit c3608, bit c3609, bit c3610, bit c3611, bit c3612,
bit c3613, bit c3614, bit c3615, bit c3616, bit c3617, bit c3618, bit c3619,
bit c3620, bit c3621, bit c3622, bit c3623, bit c3624, bit c3625, bit c3626,
bit c3627, bit c3628, bit c3629, bit c3630, bit c3631, bit c3632, bit c3633,
bit c3634, bit c3635, bit c3636, bit c3637, bit c3638, bit c3639, bit c3640,
bit c3641, bit c3642, bit c3643, bit c3644, bit c3645, bit c3646, bit c3647,
bit c3648, bit c3649, bit c3650, bit c3651, bit c3652, bit c3653, bit c3654,
bit c3655, bit c3656, bit c3657, bit c3658, bit c3659, bit c3660, bit c3661,
bit c3662, bit c3663, bit c3700, bit c3701, bit c3702, bit c3703, bit c3704,
bit c3705, bit c3706, bit c3707, bit c3708, bit c3709, bit c3710, bit c3711,
bit c3712, bit c3713, bit c3714, bit c3715, bit c3716, bit c3717, bit c3718,
bit c3719, bit c3720, bit c3721, bit c3722, bit c3723, bit c3724, bit c3725,
bit c3726, bit c3727, bit c3728, bit c3729, bit c3730, bit c3731, bit c3732,
bit c3733, bit c3734, bit c3735, bit c3736, bit c3737, bit c3738, bit c3739,
bit c3740, bit c3741, bit c3742, bit c3743, bit c3744, bit c3745, bit c3746,
bit c3747, bit c3748, bit c3749, bit c3750, bit c3751, bit c3752, bit c3753,
bit c3754, bit c3755, bit c3756, bit c3757, bit c3758, bit c3759, bit c3760,
bit c3761, bit c3762, bit c3763, bit c3800, bit c3801, bit c3802, bit c3803,
bit c3804, bit c3805, bit c3806, bit c3807, bit c3808, bit c3809, bit c3810,
bit c3811, bit c3812, bit c3813, bit c3814, bit c3815, bit c3816, bit c3817,
bit c3818, bit c3819, bit c3820, bit c3821, bit c3822, bit c3823, bit c3824,
bit c3825, bit c3826, bit c3827, bit c3828, bit c3829, bit c3830, bit c3831,
bit c3832, bit c3833, bit c3834, bit c3835, bit c3836, bit c3837, bit c3838,
bit c3839, bit c3840, bit c3841, bit c3842, bit c3843, bit c3844, bit c3845,
bit c3846, bit c3847, bit c3848, bit c3849, bit c3850, bit c3851, bit c3852,
bit c3853, bit c3854, bit c3855, bit c3856, bit c3857, bit c3858, bit c3859,
bit c3860, bit c3861, bit c3862, bit c3863, bit c3900, bit c3901, bit c3902,
bit c3903, bit c3904, bit c3905, bit c3906, bit c3907, bit c3908, bit c3909,
bit c3910, bit c3911, bit c3912, bit c3913, bit c3914, bit c3915, bit c3916,
bit c3917, bit c3918, bit c3919, bit c3920, bit c3921, bit c3922, bit c3923,
bit c3924, bit c3925, bit c3926, bit c3927, bit c3928, bit c3929, bit c3930,
bit c3931, bit c3932, bit c3933, bit c3934, bit c3935, bit c3936, bit c3937,
bit c3938, bit c3939, bit c3940, bit c3941, bit c3942, bit c3943, bit c3944,
bit c3945, bit c3946, bit c3947, bit c3948, bit c3949, bit c3950, bit c3951,
bit c3952, bit c3953, bit c3954, bit c3955, bit c3956, bit c3957, bit c3958,
bit c3959, bit c3960, bit c3961, bit c3962, bit c3963, bit c4000, bit c4001,
bit c4002, bit c4003, bit c4004, bit c4005, bit c4006, bit c4007, bit c4008,
bit c4009, bit c4010, bit c4011, bit c4012, bit c4013, bit c4014, bit c4015,
bit c4016, bit c4017, bit c4018, bit c4019, bit c4020, bit c4021, bit c4022,
bit c4023, bit c4024, bit c4025, bit c4026, bit c4027, bit c4028, bit c4029,
bit c4030, bit c4031, bit c4032, bit c4033, bit c4034, bit c4035, bit c4036,
bit c4037, bit c4038, bit c4039, bit c4040, bit c4041, bit c4042, bit c4043,
bit c4044, bit c4045, bit c4046, bit c4047, bit c4048, bit c4049, bit c4050,
bit c4051, bit c4052, bit c4053, bit c4054, bit c4055, bit c4056, bit c4057,
bit c4058, bit c4059, bit c4060, bit c4061, bit c4062, bit c4063, bit c4100,
bit c4101, bit c4102, bit c4103, bit c4104, bit c4105, bit c4106, bit c4107,
bit c4108, bit c4109, bit c4110, bit c4111, bit c4112, bit c4113, bit c4114,
bit c4115, bit c4116, bit c4117, bit c4118, bit c4119, bit c4120, bit c4121,
bit c4122, bit c4123, bit c4124, bit c4125, bit c4126, bit c4127, bit c4128,
bit c4129, bit c4130, bit c4131, bit c4132, bit c4133, bit c4134, bit c4135,
bit c4136, bit c4137, bit c4138, bit c4139, bit c4140, bit c4141, bit c4142,
bit c4143, bit c4144, bit c4145, bit c4146, bit c4147, bit c4148, bit c4149,
bit c4150, bit c4151, bit c4152, bit c4153, bit c4154, bit c4155, bit c4156,
bit c4157, bit c4158, bit c4159, bit c4160, bit c4161, bit c4162, bit c4163,
bit c4200, bit c4201, bit c4202, bit c4203, bit c4204, bit c4205, bit c4206,
bit c4207, bit c4208, bit c4209, bit c4210, bit c4211, bit c4212, bit c4213,
bit c4214, bit c4215, bit c4216, bit c4217, bit c4218, bit c4219, bit c4220,
bit c4221, bit c4222, bit c4223, bit c4224, bit c4225, bit c4226, bit c4227,
bit c4228, bit c4229, bit c4230, bit c4231, bit c4232, bit c4233, bit c4234,
bit c4235, bit c4236, bit c4237, bit c4238, bit c4239, bit c4240, bit c4241,
bit c4242, bit c4243, bit c4244, bit c4245, bit c4246, bit c4247, bit c4248,
bit c4249, bit c4250, bit c4251, bit c4252, bit c4253, bit c4254, bit c4255,
bit c4256, bit c4257, bit c4258, bit c4259, bit c4260, bit c4261, bit c4262,
bit c4263, bit c4300, bit c4301, bit c4302, bit c4303, bit c4304, bit c4305,
bit c4306, bit c4307, bit c4308, bit c4309, bit c4310, bit c4311, bit c4312,
bit c4313, bit c4314, bit c4315, bit c4316, bit c4317, bit c4318, bit c4319,
bit c4320, bit c4321, bit c4322, bit c4323, bit c4324, bit c4325, bit c4326,
bit c4327, bit c4328, bit c4329, bit c4330, bit c4331, bit c4332, bit c4333,
bit c4334, bit c4335, bit c4336, bit c4337, bit c4338, bit c4339, bit c4340,
bit c4341, bit c4342, bit c4343, bit c4344, bit c4345, bit c4346, bit c4347,
bit c4348, bit c4349, bit c4350, bit c4351, bit c4352, bit c4353, bit c4354,
bit c4355, bit c4356, bit c4357, bit c4358, bit c4359, bit c4360, bit c4361,
bit c4362, bit c4363, bit c4400, bit c4401, bit c4402, bit c4403, bit c4404,
bit c4405, bit c4406, bit c4407, bit c4408, bit c4409, bit c4410, bit c4411,
bit c4412, bit c4413, bit c4414, bit c4415, bit c4416, bit c4417, bit c4418,
bit c4419, bit c4420, bit c4421, bit c4422, bit c4423, bit c4424, bit c4425,
bit c4426, bit c4427, bit c4428, bit c4429, bit c4430, bit c4431, bit c4432,
bit c4433, bit c4434, bit c4435, bit c4436, bit c4437, bit c4438, bit c4439,
bit c4440, bit c4441, bit c4442, bit c4443, bit c4444, bit c4445, bit c4446,
bit c4447, bit c4448, bit c4449, bit c4450, bit c4451, bit c4452, bit c4453,
bit c4454, bit c4455, bit c4456, bit c4457, bit c4458, bit c4459, bit c4460,
bit c4461, bit c4462, bit c4463, bit c4500, bit c4501, bit c4502, bit c4503,
bit c4504, bit c4505, bit c4506, bit c4507, bit c4508, bit c4509, bit c4510,
bit c4511, bit c4512, bit c4513, bit c4514, bit c4515, bit c4516, bit c4517,
bit c4518, bit c4519, bit c4520, bit c4521, bit c4522, bit c4523, bit c4524,
bit c4525, bit c4526, bit c4527, bit c4528, bit c4529, bit c4530, bit c4531,
bit c4532, bit c4533, bit c4534, bit c4535, bit c4536, bit c4537, bit c4538,
bit c4539, bit c4540, bit c4541, bit c4542, bit c4543, bit c4544, bit c4545,
bit c4546, bit c4547, bit c4548, bit c4549, bit c4550, bit c4551, bit c4552,
bit c4553, bit c4554, bit c4555, bit c4556, bit c4557, bit c4558, bit c4559,
bit c4560, bit c4561, bit c4562, bit c4563, bit c4600, bit c4601, bit c4602,
bit c4603, bit c4604, bit c4605, bit c4606, bit c4607, bit c4608, bit c4609,
bit c4610, bit c4611, bit c4612, bit c4613, bit c4614, bit c4615, bit c4616,
bit c4617, bit c4618, bit c4619, bit c4620, bit c4621, bit c4622, bit c4623,
bit c4624, bit c4625, bit c4626, bit c4627, bit c4628, bit c4629, bit c4630,
bit c4631, bit c4632, bit c4633, bit c4634, bit c4635, bit c4636, bit c4637,
bit c4638, bit c4639, bit c4640, bit c4641, bit c4642, bit c4643, bit c4644,
bit c4645, bit c4646, bit c4647, bit c4648, bit c4649, bit c4650, bit c4651,
bit c4652, bit c4653, bit c4654, bit c4655, bit c4656, bit c4657, bit c4658,
bit c4659, bit c4660, bit c4661, bit c4662, bit c4663, bit c4700, bit c4701,
bit c4702, bit c4703, bit c4704, bit c4705, bit c4706, bit c4707, bit c4708,
bit c4709, bit c4710, bit c4711, bit c4712, bit c4713, bit c4714, bit c4715,
bit c4716, bit c4717, bit c4718, bit c4719, bit c4720, bit c4721, bit c4722,
bit c4723, bit c4724, bit c4725, bit c4726, bit c4727, bit c4728, bit c4729,
bit c4730, bit c4731, bit c4732, bit c4733, bit c4734, bit c4735, bit c4736,
bit c4737, bit c4738, bit c4739, bit c4740, bit c4741, bit c4742, bit c4743,
bit c4744, bit c4745, bit c4746, bit c4747, bit c4748, bit c4749, bit c4750,
bit c4751, bit c4752, bit c4753, bit c4754, bit c4755, bit c4756, bit c4757,
bit c4758, bit c4759, bit c4760, bit c4761, bit c4762, bit c4763, bit c4800,
bit c4801, bit c4802, bit c4803, bit c4804, bit c4805, bit c4806, bit c4807,
bit c4808, bit c4809, bit c4810, bit c4811, bit c4812, bit c4813, bit c4814,
bit c4815, bit c4816, bit c4817, bit c4818, bit c4819, bit c4820, bit c4821,
bit c4822, bit c4823, bit c4824, bit c4825, bit c4826, bit c4827, bit c4828,
bit c4829, bit c4830, bit c4831, bit c4832, bit c4833, bit c4834, bit c4835,
bit c4836, bit c4837, bit c4838, bit c4839, bit c4840, bit c4841, bit c4842,
bit c4843, bit c4844, bit c4845, bit c4846, bit c4847, bit c4848, bit c4849,
bit c4850, bit c4851, bit c4852, bit c4853, bit c4854, bit c4855, bit c4856,
bit c4857, bit c4858, bit c4859, bit c4860, bit c4861, bit c4862, bit c4863,
bit c4900, bit c4901, bit c4902, bit c4903, bit c4904, bit c4905, bit c4906,
bit c4907, bit c4908, bit c4909, bit c4910, bit c4911, bit c4912, bit c4913,
bit c4914, bit c4915, bit c4916, bit c4917, bit c4918, bit c4919, bit c4920,
bit c4921, bit c4922, bit c4923, bit c4924, bit c4925, bit c4926, bit c4927,
bit c4928, bit c4929, bit c4930, bit c4931, bit c4932, bit c4933, bit c4934,
bit c4935, bit c4936, bit c4937, bit c4938, bit c4939, bit c4940, bit c4941,
bit c4942, bit c4943, bit c4944, bit c4945, bit c4946, bit c4947, bit c4948,
bit c4949, bit c4950, bit c4951, bit c4952, bit c4953, bit c4954, bit c4955,
bit c4956, bit c4957, bit c4958, bit c4959, bit c4960, bit c4961, bit c4962,
bit c4963, bit c5000, bit c5001, bit c5002, bit c5003, bit c5004, bit c5005,
bit c5006, bit c5007, bit c5008, bit c5009, bit c5010, bit c5011, bit c5012,
bit c5013, bit c5014, bit c5015, bit c5016, bit c5017, bit c5018, bit c5019,
bit c5020, bit c5021, bit c5022, bit c5023, bit c5024, bit c5025, bit c5026,
bit c5027, bit c5028, bit c5029, bit c5030, bit c5031, bit c5032, bit c5033,
bit c5034, bit c5035, bit c5036, bit c5037, bit c5038, bit c5039, bit c5040,
bit c5041, bit c5042, bit c5043, bit c5044, bit c5045, bit c5046, bit c5047,
bit c5048, bit c5049, bit c5050, bit c5051, bit c5052, bit c5053, bit c5054,
bit c5055, bit c5056, bit c5057, bit c5058, bit c5059, bit c5060, bit c5061,
bit c5062, bit c5063, bit c5100, bit c5101, bit c5102, bit c5103, bit c5104,
bit c5105, bit c5106, bit c5107, bit c5108, bit c5109, bit c5110, bit c5111,
bit c5112, bit c5113, bit c5114, bit c5115, bit c5116, bit c5117, bit c5118,
bit c5119, bit c5120, bit c5121, bit c5122, bit c5123, bit c5124, bit c5125,
bit c5126, bit c5127, bit c5128, bit c5129, bit c5130, bit c5131, bit c5132,
bit c5133, bit c5134, bit c5135, bit c5136, bit c5137, bit c5138, bit c5139,
bit c5140, bit c5141, bit c5142, bit c5143, bit c5144, bit c5145, bit c5146,
bit c5147, bit c5148, bit c5149, bit c5150, bit c5151, bit c5152, bit c5153,
bit c5154, bit c5155, bit c5156, bit c5157, bit c5158, bit c5159, bit c5160,
bit c5161, bit c5162, bit c5163, bit c5200, bit c5201, bit c5202, bit c5203,
bit c5204, bit c5205, bit c5206, bit c5207, bit c5208, bit c5209, bit c5210,
bit c5211, bit c5212, bit c5213, bit c5214, bit c5215, bit c5216, bit c5217,
bit c5218, bit c5219, bit c5220, bit c5221, bit c5222, bit c5223, bit c5224,
bit c5225, bit c5226, bit c5227, bit c5228, bit c5229, bit c5230, bit c5231,
bit c5232, bit c5233, bit c5234, bit c5235, bit c5236, bit c5237, bit c5238,
bit c5239, bit c5240, bit c5241, bit c5242, bit c5243, bit c5244, bit c5245,
bit c5246, bit c5247, bit c5248, bit c5249, bit c5250, bit c5251, bit c5252,
bit c5253, bit c5254, bit c5255, bit c5256, bit c5257, bit c5258, bit c5259,
bit c5260, bit c5261, bit c5262, bit c5263, bit c5300, bit c5301, bit c5302,
bit c5303, bit c5304, bit c5305, bit c5306, bit c5307, bit c5308, bit c5309,
bit c5310, bit c5311, bit c5312, bit c5313, bit c5314, bit c5315, bit c5316,
bit c5317, bit c5318, bit c5319, bit c5320, bit c5321, bit c5322, bit c5323,
bit c5324, bit c5325, bit c5326, bit c5327, bit c5328, bit c5329, bit c5330,
bit c5331, bit c5332, bit c5333, bit c5334, bit c5335, bit c5336, bit c5337,
bit c5338, bit c5339, bit c5340, bit c5341, bit c5342, bit c5343, bit c5344,
bit c5345, bit c5346, bit c5347, bit c5348, bit c5349, bit c5350, bit c5351,
bit c5352, bit c5353, bit c5354, bit c5355, bit c5356, bit c5357, bit c5358,
bit c5359, bit c5360, bit c5361, bit c5362, bit c5363, bit c5400, bit c5401,
bit c5402, bit c5403, bit c5404, bit c5405, bit c5406, bit c5407, bit c5408,
bit c5409, bit c5410, bit c5411, bit c5412, bit c5413, bit c5414, bit c5415,
bit c5416, bit c5417, bit c5418, bit c5419, bit c5420, bit c5421, bit c5422,
bit c5423, bit c5424, bit c5425, bit c5426, bit c5427, bit c5428, bit c5429,
bit c5430, bit c5431, bit c5432, bit c5433, bit c5434, bit c5435, bit c5436,
bit c5437, bit c5438, bit c5439, bit c5440, bit c5441, bit c5442, bit c5443,
bit c5444, bit c5445, bit c5446, bit c5447, bit c5448, bit c5449, bit c5450,
bit c5451, bit c5452, bit c5453, bit c5454, bit c5455, bit c5456, bit c5457,
bit c5458, bit c5459, bit c5460, bit c5461, bit c5462, bit c5463, bit c5500,
bit c5501, bit c5502, bit c5503, bit c5504, bit c5505, bit c5506, bit c5507,
bit c5508, bit c5509, bit c5510, bit c5511, bit c5512, bit c5513, bit c5514,
bit c5515, bit c5516, bit c5517, bit c5518, bit c5519, bit c5520, bit c5521,
bit c5522, bit c5523, bit c5524, bit c5525, bit c5526, bit c5527, bit c5528,
bit c5529, bit c5530, bit c5531, bit c5532, bit c5533, bit c5534, bit c5535,
bit c5536, bit c5537, bit c5538, bit c5539, bit c5540, bit c5541, bit c5542,
bit c5543, bit c5544, bit c5545, bit c5546, bit c5547, bit c5548, bit c5549,
bit c5550, bit c5551, bit c5552, bit c5553, bit c5554, bit c5555, bit c5556,
bit c5557, bit c5558, bit c5559, bit c5560, bit c5561, bit c5562, bit c5563,
bit c5600, bit c5601, bit c5602, bit c5603, bit c5604, bit c5605, bit c5606,
bit c5607, bit c5608, bit c5609, bit c5610, bit c5611, bit c5612, bit c5613,
bit c5614, bit c5615, bit c5616, bit c5617, bit c5618, bit c5619, bit c5620,
bit c5621, bit c5622, bit c5623, bit c5624, bit c5625, bit c5626, bit c5627,
bit c5628, bit c5629, bit c5630, bit c5631, bit c5632, bit c5633, bit c5634,
bit c5635, bit c5636, bit c5637, bit c5638, bit c5639, bit c5640, bit c5641,
bit c5642, bit c5643, bit c5644, bit c5645, bit c5646, bit c5647, bit c5648,
bit c5649, bit c5650, bit c5651, bit c5652, bit c5653, bit c5654, bit c5655,
bit c5656, bit c5657, bit c5658, bit c5659, bit c5660, bit c5661, bit c5662,
bit c5663, bit c5700, bit c5701, bit c5702, bit c5703, bit c5704, bit c5705,
bit c5706, bit c5707, bit c5708, bit c5709, bit c5710, bit c5711, bit c5712,
bit c5713, bit c5714, bit c5715, bit c5716, bit c5717, bit c5718, bit c5719,
bit c5720, bit c5721, bit c5722, bit c5723, bit c5724, bit c5725, bit c5726,
bit c5727, bit c5728, bit c5729, bit c5730, bit c5731, bit c5732, bit c5733,
bit c5734, bit c5735, bit c5736, bit c5737, bit c5738, bit c5739, bit c5740,
bit c5741, bit c5742, bit c5743, bit c5744, bit c5745, bit c5746, bit c5747,
bit c5748, bit c5749, bit c5750, bit c5751, bit c5752, bit c5753, bit c5754,
bit c5755, bit c5756, bit c5757, bit c5758, bit c5759, bit c5760, bit c5761,
bit c5762, bit c5763, bit c5800, bit c5801, bit c5802, bit c5803, bit c5804,
bit c5805, bit c5806, bit c5807, bit c5808, bit c5809, bit c5810, bit c5811,
bit c5812, bit c5813, bit c5814, bit c5815, bit c5816, bit c5817, bit c5818,
bit c5819, bit c5820, bit c5821, bit c5822, bit c5823, bit c5824, bit c5825,
bit c5826, bit c5827, bit c5828, bit c5829, bit c5830, bit c5831, bit c5832,
bit c5833, bit c5834, bit c5835, bit c5836, bit c5837, bit c5838, bit c5839,
bit c5840, bit c5841, bit c5842, bit c5843, bit c5844, bit c5845, bit c5846,
bit c5847, bit c5848, bit c5849, bit c5850, bit c5851, bit c5852, bit c5853,
bit c5854, bit c5855, bit c5856, bit c5857, bit c5858, bit c5859, bit c5860,
bit c5861, bit c5862, bit c5863, bit c5900, bit c5901, bit c5902, bit c5903,
bit c5904, bit c5905, bit c5906, bit c5907, bit c5908, bit c5909, bit c5910,
bit c5911, bit c5912, bit c5913, bit c5914, bit c5915, bit c5916, bit c5917,
bit c5918, bit c5919, bit c5920, bit c5921, bit c5922, bit c5923, bit c5924,
bit c5925, bit c5926, bit c5927, bit c5928, bit c5929, bit c5930, bit c5931,
bit c5932, bit c5933, bit c5934, bit c5935, bit c5936, bit c5937, bit c5938,
bit c5939, bit c5940, bit c5941, bit c5942, bit c5943, bit c5944, bit c5945,
bit c5946, bit c5947, bit c5948, bit c5949, bit c5950, bit c5951, bit c5952,
bit c5953, bit c5954, bit c5955, bit c5956, bit c5957, bit c5958, bit c5959,
bit c5960, bit c5961, bit c5962, bit c5963, bit c6000, bit c6001, bit c6002,
bit c6003, bit c6004, bit c6005, bit c6006, bit c6007, bit c6008, bit c6009,
bit c6010, bit c6011, bit c6012, bit c6013, bit c6014, bit c6015, bit c6016,
bit c6017, bit c6018, bit c6019, bit c6020, bit c6021, bit c6022, bit c6023,
bit c6024, bit c6025, bit c6026, bit c6027, bit c6028, bit c6029, bit c6030,
bit c6031, bit c6032, bit c6033, bit c6034, bit c6035, bit c6036, bit c6037,
bit c6038, bit c6039, bit c6040, bit c6041, bit c6042, bit c6043, bit c6044,
bit c6045, bit c6046, bit c6047, bit c6048, bit c6049, bit c6050, bit c6051,
bit c6052, bit c6053, bit c6054, bit c6055, bit c6056, bit c6057, bit c6058,
bit c6059, bit c6060, bit c6061, bit c6062, bit c6063, bit c6100, bit c6101,
bit c6102, bit c6103, bit c6104, bit c6105, bit c6106, bit c6107, bit c6108,
bit c6109, bit c6110, bit c6111, bit c6112, bit c6113, bit c6114, bit c6115,
bit c6116, bit c6117, bit c6118, bit c6119, bit c6120, bit c6121, bit c6122,
bit c6123, bit c6124, bit c6125, bit c6126, bit c6127, bit c6128, bit c6129,
bit c6130, bit c6131, bit c6132, bit c6133, bit c6134, bit c6135, bit c6136,
bit c6137, bit c6138, bit c6139, bit c6140, bit c6141, bit c6142, bit c6143,
bit c6144, bit c6145, bit c6146, bit c6147, bit c6148, bit c6149, bit c6150,
bit c6151, bit c6152, bit c6153, bit c6154, bit c6155, bit c6156, bit c6157,
bit c6158, bit c6159, bit c6160, bit c6161, bit c6162, bit c6163, bit c6200,
bit c6201, bit c6202, bit c6203, bit c6204, bit c6205, bit c6206, bit c6207,
bit c6208, bit c6209, bit c6210, bit c6211, bit c6212, bit c6213, bit c6214,
bit c6215, bit c6216, bit c6217, bit c6218, bit c6219, bit c6220, bit c6221,
bit c6222, bit c6223, bit c6224, bit c6225, bit c6226, bit c6227, bit c6228,
bit c6229, bit c6230, bit c6231, bit c6232, bit c6233, bit c6234, bit c6235,
bit c6236, bit c6237, bit c6238, bit c6239, bit c6240, bit c6241, bit c6242,
bit c6243, bit c6244, bit c6245, bit c6246, bit c6247, bit c6248, bit c6249,
bit c6250, bit c6251, bit c6252, bit c6253, bit c6254, bit c6255, bit c6256,
bit c6257, bit c6258, bit c6259, bit c6260, bit c6261, bit c6262, bit c6263,
bit c6300, bit c6301, bit c6302, bit c6303, bit c6304, bit c6305, bit c6306,
bit c6307, bit c6308, bit c6309, bit c6310, bit c6311, bit c6312, bit c6313,
bit c6314, bit c6315, bit c6316, bit c6317, bit c6318, bit c6319, bit c6320,
bit c6321, bit c6322, bit c6323, bit c6324, bit c6325, bit c6326, bit c6327,
bit c6328, bit c6329, bit c6330, bit c6331, bit c6332, bit c6333, bit c6334,
bit c6335, bit c6336, bit c6337, bit c6338, bit c6339, bit c6340, bit c6341,
bit c6342, bit c6343, bit c6344, bit c6345, bit c6346, bit c6347, bit c6348,
bit c6349, bit c6350, bit c6351, bit c6352, bit c6353, bit c6354, bit c6355,
bit c6356, bit c6357, bit c6358, bit c6359, bit c6360, bit c6361, bit c6362,
bit c6363
) =
{
  true
  &&
  true
}

(**************** initialization *****************)

mov t600 c0000; mov t601 c0001; mov t602 c0002;
mov t603 c0003; mov t604 c0004; mov t605 c0005;
mov t606 c0006; mov t607 c0007; mov t608 c0008;
mov t609 c0009; mov t610 c0010; mov t611 c0011;
mov t612 c0012; mov t613 c0013; mov t614 c0014;
mov t615 c0015; mov t616 c0016; mov t617 c0017;
mov t618 c0018; mov t619 c0019; mov t620 c0020;
mov t621 c0021; mov t622 c0022; mov t623 c0023;
mov t624 c0024; mov t625 c0025; mov t626 c0026;
mov t627 c0027; mov t628 c0028; mov t629 c0029;
mov t630 c0030; mov t631 c0031; mov t632 c0032;
mov t633 c0033; mov t634 c0034; mov t635 c0035;
mov t636 c0036; mov t637 c0037; mov t638 c0038;
mov t639 c0039; mov t640 c0040; mov t641 c0041;
mov t642 c0042; mov t643 c0043; mov t644 c0044;
mov t645 c0045; mov t646 c0046; mov t647 c0047;
mov t648 c0048; mov t649 c0049; mov t650 c0050;
mov t651 c0051; mov t652 c0052; mov t653 c0053;
mov t654 c0054; mov t655 c0055; mov t656 c0056;
mov t657 c0057; mov t658 c0058; mov t659 c0059;
mov t660 c0060; mov t661 c0061; mov t662 c0062;
mov t663 c0063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05b0 t101 t100;
mov t600 c0100; mov t601 c0101; mov t602 c0102;
mov t603 c0103; mov t604 c0104; mov t605 c0105;
mov t606 c0106; mov t607 c0107; mov t608 c0108;
mov t609 c0109; mov t610 c0110; mov t611 c0111;
mov t612 c0112; mov t613 c0113; mov t614 c0114;
mov t615 c0115; mov t616 c0116; mov t617 c0117;
mov t618 c0118; mov t619 c0119; mov t620 c0120;
mov t621 c0121; mov t622 c0122; mov t623 c0123;
mov t624 c0124; mov t625 c0125; mov t626 c0126;
mov t627 c0127; mov t628 c0128; mov t629 c0129;
mov t630 c0130; mov t631 c0131; mov t632 c0132;
mov t633 c0133; mov t634 c0134; mov t635 c0135;
mov t636 c0136; mov t637 c0137; mov t638 c0138;
mov t639 c0139; mov t640 c0140; mov t641 c0141;
mov t642 c0142; mov t643 c0143; mov t644 c0144;
mov t645 c0145; mov t646 c0146; mov t647 c0147;
mov t648 c0148; mov t649 c0149; mov t650 c0150;
mov t651 c0151; mov t652 c0152; mov t653 c0153;
mov t654 c0154; mov t655 c0155; mov t656 c0156;
mov t657 c0157; mov t658 c0158; mov t659 c0159;
mov t660 c0160; mov t661 c0161; mov t662 c0162;
mov t663 c0163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05b8 t101 t100;
mov t600 c0200; mov t601 c0201; mov t602 c0202;
mov t603 c0203; mov t604 c0204; mov t605 c0205;
mov t606 c0206; mov t607 c0207; mov t608 c0208;
mov t609 c0209; mov t610 c0210; mov t611 c0211;
mov t612 c0212; mov t613 c0213; mov t614 c0214;
mov t615 c0215; mov t616 c0216; mov t617 c0217;
mov t618 c0218; mov t619 c0219; mov t620 c0220;
mov t621 c0221; mov t622 c0222; mov t623 c0223;
mov t624 c0224; mov t625 c0225; mov t626 c0226;
mov t627 c0227; mov t628 c0228; mov t629 c0229;
mov t630 c0230; mov t631 c0231; mov t632 c0232;
mov t633 c0233; mov t634 c0234; mov t635 c0235;
mov t636 c0236; mov t637 c0237; mov t638 c0238;
mov t639 c0239; mov t640 c0240; mov t641 c0241;
mov t642 c0242; mov t643 c0243; mov t644 c0244;
mov t645 c0245; mov t646 c0246; mov t647 c0247;
mov t648 c0248; mov t649 c0249; mov t650 c0250;
mov t651 c0251; mov t652 c0252; mov t653 c0253;
mov t654 c0254; mov t655 c0255; mov t656 c0256;
mov t657 c0257; mov t658 c0258; mov t659 c0259;
mov t660 c0260; mov t661 c0261; mov t662 c0262;
mov t663 c0263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05c0 t101 t100;
mov t600 c0300; mov t601 c0301; mov t602 c0302;
mov t603 c0303; mov t604 c0304; mov t605 c0305;
mov t606 c0306; mov t607 c0307; mov t608 c0308;
mov t609 c0309; mov t610 c0310; mov t611 c0311;
mov t612 c0312; mov t613 c0313; mov t614 c0314;
mov t615 c0315; mov t616 c0316; mov t617 c0317;
mov t618 c0318; mov t619 c0319; mov t620 c0320;
mov t621 c0321; mov t622 c0322; mov t623 c0323;
mov t624 c0324; mov t625 c0325; mov t626 c0326;
mov t627 c0327; mov t628 c0328; mov t629 c0329;
mov t630 c0330; mov t631 c0331; mov t632 c0332;
mov t633 c0333; mov t634 c0334; mov t635 c0335;
mov t636 c0336; mov t637 c0337; mov t638 c0338;
mov t639 c0339; mov t640 c0340; mov t641 c0341;
mov t642 c0342; mov t643 c0343; mov t644 c0344;
mov t645 c0345; mov t646 c0346; mov t647 c0347;
mov t648 c0348; mov t649 c0349; mov t650 c0350;
mov t651 c0351; mov t652 c0352; mov t653 c0353;
mov t654 c0354; mov t655 c0355; mov t656 c0356;
mov t657 c0357; mov t658 c0358; mov t659 c0359;
mov t660 c0360; mov t661 c0361; mov t662 c0362;
mov t663 c0363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05c8 t101 t100;
mov t600 c0400; mov t601 c0401; mov t602 c0402;
mov t603 c0403; mov t604 c0404; mov t605 c0405;
mov t606 c0406; mov t607 c0407; mov t608 c0408;
mov t609 c0409; mov t610 c0410; mov t611 c0411;
mov t612 c0412; mov t613 c0413; mov t614 c0414;
mov t615 c0415; mov t616 c0416; mov t617 c0417;
mov t618 c0418; mov t619 c0419; mov t620 c0420;
mov t621 c0421; mov t622 c0422; mov t623 c0423;
mov t624 c0424; mov t625 c0425; mov t626 c0426;
mov t627 c0427; mov t628 c0428; mov t629 c0429;
mov t630 c0430; mov t631 c0431; mov t632 c0432;
mov t633 c0433; mov t634 c0434; mov t635 c0435;
mov t636 c0436; mov t637 c0437; mov t638 c0438;
mov t639 c0439; mov t640 c0440; mov t641 c0441;
mov t642 c0442; mov t643 c0443; mov t644 c0444;
mov t645 c0445; mov t646 c0446; mov t647 c0447;
mov t648 c0448; mov t649 c0449; mov t650 c0450;
mov t651 c0451; mov t652 c0452; mov t653 c0453;
mov t654 c0454; mov t655 c0455; mov t656 c0456;
mov t657 c0457; mov t658 c0458; mov t659 c0459;
mov t660 c0460; mov t661 c0461; mov t662 c0462;
mov t663 c0463;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05d0 t101 t100;
mov t600 c0500; mov t601 c0501; mov t602 c0502;
mov t603 c0503; mov t604 c0504; mov t605 c0505;
mov t606 c0506; mov t607 c0507; mov t608 c0508;
mov t609 c0509; mov t610 c0510; mov t611 c0511;
mov t612 c0512; mov t613 c0513; mov t614 c0514;
mov t615 c0515; mov t616 c0516; mov t617 c0517;
mov t618 c0518; mov t619 c0519; mov t620 c0520;
mov t621 c0521; mov t622 c0522; mov t623 c0523;
mov t624 c0524; mov t625 c0525; mov t626 c0526;
mov t627 c0527; mov t628 c0528; mov t629 c0529;
mov t630 c0530; mov t631 c0531; mov t632 c0532;
mov t633 c0533; mov t634 c0534; mov t635 c0535;
mov t636 c0536; mov t637 c0537; mov t638 c0538;
mov t639 c0539; mov t640 c0540; mov t641 c0541;
mov t642 c0542; mov t643 c0543; mov t644 c0544;
mov t645 c0545; mov t646 c0546; mov t647 c0547;
mov t648 c0548; mov t649 c0549; mov t650 c0550;
mov t651 c0551; mov t652 c0552; mov t653 c0553;
mov t654 c0554; mov t655 c0555; mov t656 c0556;
mov t657 c0557; mov t658 c0558; mov t659 c0559;
mov t660 c0560; mov t661 c0561; mov t662 c0562;
mov t663 c0563;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05d8 t101 t100;
mov t600 c0600; mov t601 c0601; mov t602 c0602;
mov t603 c0603; mov t604 c0604; mov t605 c0605;
mov t606 c0606; mov t607 c0607; mov t608 c0608;
mov t609 c0609; mov t610 c0610; mov t611 c0611;
mov t612 c0612; mov t613 c0613; mov t614 c0614;
mov t615 c0615; mov t616 c0616; mov t617 c0617;
mov t618 c0618; mov t619 c0619; mov t620 c0620;
mov t621 c0621; mov t622 c0622; mov t623 c0623;
mov t624 c0624; mov t625 c0625; mov t626 c0626;
mov t627 c0627; mov t628 c0628; mov t629 c0629;
mov t630 c0630; mov t631 c0631; mov t632 c0632;
mov t633 c0633; mov t634 c0634; mov t635 c0635;
mov t636 c0636; mov t637 c0637; mov t638 c0638;
mov t639 c0639; mov t640 c0640; mov t641 c0641;
mov t642 c0642; mov t643 c0643; mov t644 c0644;
mov t645 c0645; mov t646 c0646; mov t647 c0647;
mov t648 c0648; mov t649 c0649; mov t650 c0650;
mov t651 c0651; mov t652 c0652; mov t653 c0653;
mov t654 c0654; mov t655 c0655; mov t656 c0656;
mov t657 c0657; mov t658 c0658; mov t659 c0659;
mov t660 c0660; mov t661 c0661; mov t662 c0662;
mov t663 c0663;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05e0 t101 t100;
mov t600 c0700; mov t601 c0701; mov t602 c0702;
mov t603 c0703; mov t604 c0704; mov t605 c0705;
mov t606 c0706; mov t607 c0707; mov t608 c0708;
mov t609 c0709; mov t610 c0710; mov t611 c0711;
mov t612 c0712; mov t613 c0713; mov t614 c0714;
mov t615 c0715; mov t616 c0716; mov t617 c0717;
mov t618 c0718; mov t619 c0719; mov t620 c0720;
mov t621 c0721; mov t622 c0722; mov t623 c0723;
mov t624 c0724; mov t625 c0725; mov t626 c0726;
mov t627 c0727; mov t628 c0728; mov t629 c0729;
mov t630 c0730; mov t631 c0731; mov t632 c0732;
mov t633 c0733; mov t634 c0734; mov t635 c0735;
mov t636 c0736; mov t637 c0737; mov t638 c0738;
mov t639 c0739; mov t640 c0740; mov t641 c0741;
mov t642 c0742; mov t643 c0743; mov t644 c0744;
mov t645 c0745; mov t646 c0746; mov t647 c0747;
mov t648 c0748; mov t649 c0749; mov t650 c0750;
mov t651 c0751; mov t652 c0752; mov t653 c0753;
mov t654 c0754; mov t655 c0755; mov t656 c0756;
mov t657 c0757; mov t658 c0758; mov t659 c0759;
mov t660 c0760; mov t661 c0761; mov t662 c0762;
mov t663 c0763;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05e8 t101 t100;
mov t600 c0800; mov t601 c0801; mov t602 c0802;
mov t603 c0803; mov t604 c0804; mov t605 c0805;
mov t606 c0806; mov t607 c0807; mov t608 c0808;
mov t609 c0809; mov t610 c0810; mov t611 c0811;
mov t612 c0812; mov t613 c0813; mov t614 c0814;
mov t615 c0815; mov t616 c0816; mov t617 c0817;
mov t618 c0818; mov t619 c0819; mov t620 c0820;
mov t621 c0821; mov t622 c0822; mov t623 c0823;
mov t624 c0824; mov t625 c0825; mov t626 c0826;
mov t627 c0827; mov t628 c0828; mov t629 c0829;
mov t630 c0830; mov t631 c0831; mov t632 c0832;
mov t633 c0833; mov t634 c0834; mov t635 c0835;
mov t636 c0836; mov t637 c0837; mov t638 c0838;
mov t639 c0839; mov t640 c0840; mov t641 c0841;
mov t642 c0842; mov t643 c0843; mov t644 c0844;
mov t645 c0845; mov t646 c0846; mov t647 c0847;
mov t648 c0848; mov t649 c0849; mov t650 c0850;
mov t651 c0851; mov t652 c0852; mov t653 c0853;
mov t654 c0854; mov t655 c0855; mov t656 c0856;
mov t657 c0857; mov t658 c0858; mov t659 c0859;
mov t660 c0860; mov t661 c0861; mov t662 c0862;
mov t663 c0863;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05f0 t101 t100;
mov t600 c0900; mov t601 c0901; mov t602 c0902;
mov t603 c0903; mov t604 c0904; mov t605 c0905;
mov t606 c0906; mov t607 c0907; mov t608 c0908;
mov t609 c0909; mov t610 c0910; mov t611 c0911;
mov t612 c0912; mov t613 c0913; mov t614 c0914;
mov t615 c0915; mov t616 c0916; mov t617 c0917;
mov t618 c0918; mov t619 c0919; mov t620 c0920;
mov t621 c0921; mov t622 c0922; mov t623 c0923;
mov t624 c0924; mov t625 c0925; mov t626 c0926;
mov t627 c0927; mov t628 c0928; mov t629 c0929;
mov t630 c0930; mov t631 c0931; mov t632 c0932;
mov t633 c0933; mov t634 c0934; mov t635 c0935;
mov t636 c0936; mov t637 c0937; mov t638 c0938;
mov t639 c0939; mov t640 c0940; mov t641 c0941;
mov t642 c0942; mov t643 c0943; mov t644 c0944;
mov t645 c0945; mov t646 c0946; mov t647 c0947;
mov t648 c0948; mov t649 c0949; mov t650 c0950;
mov t651 c0951; mov t652 c0952; mov t653 c0953;
mov t654 c0954; mov t655 c0955; mov t656 c0956;
mov t657 c0957; mov t658 c0958; mov t659 c0959;
mov t660 c0960; mov t661 c0961; mov t662 c0962;
mov t663 c0963;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff05f8 t101 t100;
mov t600 c1000; mov t601 c1001; mov t602 c1002;
mov t603 c1003; mov t604 c1004; mov t605 c1005;
mov t606 c1006; mov t607 c1007; mov t608 c1008;
mov t609 c1009; mov t610 c1010; mov t611 c1011;
mov t612 c1012; mov t613 c1013; mov t614 c1014;
mov t615 c1015; mov t616 c1016; mov t617 c1017;
mov t618 c1018; mov t619 c1019; mov t620 c1020;
mov t621 c1021; mov t622 c1022; mov t623 c1023;
mov t624 c1024; mov t625 c1025; mov t626 c1026;
mov t627 c1027; mov t628 c1028; mov t629 c1029;
mov t630 c1030; mov t631 c1031; mov t632 c1032;
mov t633 c1033; mov t634 c1034; mov t635 c1035;
mov t636 c1036; mov t637 c1037; mov t638 c1038;
mov t639 c1039; mov t640 c1040; mov t641 c1041;
mov t642 c1042; mov t643 c1043; mov t644 c1044;
mov t645 c1045; mov t646 c1046; mov t647 c1047;
mov t648 c1048; mov t649 c1049; mov t650 c1050;
mov t651 c1051; mov t652 c1052; mov t653 c1053;
mov t654 c1054; mov t655 c1055; mov t656 c1056;
mov t657 c1057; mov t658 c1058; mov t659 c1059;
mov t660 c1060; mov t661 c1061; mov t662 c1062;
mov t663 c1063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0600 t101 t100;
mov t600 c1100; mov t601 c1101; mov t602 c1102;
mov t603 c1103; mov t604 c1104; mov t605 c1105;
mov t606 c1106; mov t607 c1107; mov t608 c1108;
mov t609 c1109; mov t610 c1110; mov t611 c1111;
mov t612 c1112; mov t613 c1113; mov t614 c1114;
mov t615 c1115; mov t616 c1116; mov t617 c1117;
mov t618 c1118; mov t619 c1119; mov t620 c1120;
mov t621 c1121; mov t622 c1122; mov t623 c1123;
mov t624 c1124; mov t625 c1125; mov t626 c1126;
mov t627 c1127; mov t628 c1128; mov t629 c1129;
mov t630 c1130; mov t631 c1131; mov t632 c1132;
mov t633 c1133; mov t634 c1134; mov t635 c1135;
mov t636 c1136; mov t637 c1137; mov t638 c1138;
mov t639 c1139; mov t640 c1140; mov t641 c1141;
mov t642 c1142; mov t643 c1143; mov t644 c1144;
mov t645 c1145; mov t646 c1146; mov t647 c1147;
mov t648 c1148; mov t649 c1149; mov t650 c1150;
mov t651 c1151; mov t652 c1152; mov t653 c1153;
mov t654 c1154; mov t655 c1155; mov t656 c1156;
mov t657 c1157; mov t658 c1158; mov t659 c1159;
mov t660 c1160; mov t661 c1161; mov t662 c1162;
mov t663 c1163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0608 t101 t100;
mov t600 c1200; mov t601 c1201; mov t602 c1202;
mov t603 c1203; mov t604 c1204; mov t605 c1205;
mov t606 c1206; mov t607 c1207; mov t608 c1208;
mov t609 c1209; mov t610 c1210; mov t611 c1211;
mov t612 c1212; mov t613 c1213; mov t614 c1214;
mov t615 c1215; mov t616 c1216; mov t617 c1217;
mov t618 c1218; mov t619 c1219; mov t620 c1220;
mov t621 c1221; mov t622 c1222; mov t623 c1223;
mov t624 c1224; mov t625 c1225; mov t626 c1226;
mov t627 c1227; mov t628 c1228; mov t629 c1229;
mov t630 c1230; mov t631 c1231; mov t632 c1232;
mov t633 c1233; mov t634 c1234; mov t635 c1235;
mov t636 c1236; mov t637 c1237; mov t638 c1238;
mov t639 c1239; mov t640 c1240; mov t641 c1241;
mov t642 c1242; mov t643 c1243; mov t644 c1244;
mov t645 c1245; mov t646 c1246; mov t647 c1247;
mov t648 c1248; mov t649 c1249; mov t650 c1250;
mov t651 c1251; mov t652 c1252; mov t653 c1253;
mov t654 c1254; mov t655 c1255; mov t656 c1256;
mov t657 c1257; mov t658 c1258; mov t659 c1259;
mov t660 c1260; mov t661 c1261; mov t662 c1262;
mov t663 c1263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0610 t101 t100;
mov t600 c1300; mov t601 c1301; mov t602 c1302;
mov t603 c1303; mov t604 c1304; mov t605 c1305;
mov t606 c1306; mov t607 c1307; mov t608 c1308;
mov t609 c1309; mov t610 c1310; mov t611 c1311;
mov t612 c1312; mov t613 c1313; mov t614 c1314;
mov t615 c1315; mov t616 c1316; mov t617 c1317;
mov t618 c1318; mov t619 c1319; mov t620 c1320;
mov t621 c1321; mov t622 c1322; mov t623 c1323;
mov t624 c1324; mov t625 c1325; mov t626 c1326;
mov t627 c1327; mov t628 c1328; mov t629 c1329;
mov t630 c1330; mov t631 c1331; mov t632 c1332;
mov t633 c1333; mov t634 c1334; mov t635 c1335;
mov t636 c1336; mov t637 c1337; mov t638 c1338;
mov t639 c1339; mov t640 c1340; mov t641 c1341;
mov t642 c1342; mov t643 c1343; mov t644 c1344;
mov t645 c1345; mov t646 c1346; mov t647 c1347;
mov t648 c1348; mov t649 c1349; mov t650 c1350;
mov t651 c1351; mov t652 c1352; mov t653 c1353;
mov t654 c1354; mov t655 c1355; mov t656 c1356;
mov t657 c1357; mov t658 c1358; mov t659 c1359;
mov t660 c1360; mov t661 c1361; mov t662 c1362;
mov t663 c1363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0618 t101 t100;
mov t600 c1400; mov t601 c1401; mov t602 c1402;
mov t603 c1403; mov t604 c1404; mov t605 c1405;
mov t606 c1406; mov t607 c1407; mov t608 c1408;
mov t609 c1409; mov t610 c1410; mov t611 c1411;
mov t612 c1412; mov t613 c1413; mov t614 c1414;
mov t615 c1415; mov t616 c1416; mov t617 c1417;
mov t618 c1418; mov t619 c1419; mov t620 c1420;
mov t621 c1421; mov t622 c1422; mov t623 c1423;
mov t624 c1424; mov t625 c1425; mov t626 c1426;
mov t627 c1427; mov t628 c1428; mov t629 c1429;
mov t630 c1430; mov t631 c1431; mov t632 c1432;
mov t633 c1433; mov t634 c1434; mov t635 c1435;
mov t636 c1436; mov t637 c1437; mov t638 c1438;
mov t639 c1439; mov t640 c1440; mov t641 c1441;
mov t642 c1442; mov t643 c1443; mov t644 c1444;
mov t645 c1445; mov t646 c1446; mov t647 c1447;
mov t648 c1448; mov t649 c1449; mov t650 c1450;
mov t651 c1451; mov t652 c1452; mov t653 c1453;
mov t654 c1454; mov t655 c1455; mov t656 c1456;
mov t657 c1457; mov t658 c1458; mov t659 c1459;
mov t660 c1460; mov t661 c1461; mov t662 c1462;
mov t663 c1463;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0620 t101 t100;
mov t600 c1500; mov t601 c1501; mov t602 c1502;
mov t603 c1503; mov t604 c1504; mov t605 c1505;
mov t606 c1506; mov t607 c1507; mov t608 c1508;
mov t609 c1509; mov t610 c1510; mov t611 c1511;
mov t612 c1512; mov t613 c1513; mov t614 c1514;
mov t615 c1515; mov t616 c1516; mov t617 c1517;
mov t618 c1518; mov t619 c1519; mov t620 c1520;
mov t621 c1521; mov t622 c1522; mov t623 c1523;
mov t624 c1524; mov t625 c1525; mov t626 c1526;
mov t627 c1527; mov t628 c1528; mov t629 c1529;
mov t630 c1530; mov t631 c1531; mov t632 c1532;
mov t633 c1533; mov t634 c1534; mov t635 c1535;
mov t636 c1536; mov t637 c1537; mov t638 c1538;
mov t639 c1539; mov t640 c1540; mov t641 c1541;
mov t642 c1542; mov t643 c1543; mov t644 c1544;
mov t645 c1545; mov t646 c1546; mov t647 c1547;
mov t648 c1548; mov t649 c1549; mov t650 c1550;
mov t651 c1551; mov t652 c1552; mov t653 c1553;
mov t654 c1554; mov t655 c1555; mov t656 c1556;
mov t657 c1557; mov t658 c1558; mov t659 c1559;
mov t660 c1560; mov t661 c1561; mov t662 c1562;
mov t663 c1563;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0628 t101 t100;
mov t600 c1600; mov t601 c1601; mov t602 c1602;
mov t603 c1603; mov t604 c1604; mov t605 c1605;
mov t606 c1606; mov t607 c1607; mov t608 c1608;
mov t609 c1609; mov t610 c1610; mov t611 c1611;
mov t612 c1612; mov t613 c1613; mov t614 c1614;
mov t615 c1615; mov t616 c1616; mov t617 c1617;
mov t618 c1618; mov t619 c1619; mov t620 c1620;
mov t621 c1621; mov t622 c1622; mov t623 c1623;
mov t624 c1624; mov t625 c1625; mov t626 c1626;
mov t627 c1627; mov t628 c1628; mov t629 c1629;
mov t630 c1630; mov t631 c1631; mov t632 c1632;
mov t633 c1633; mov t634 c1634; mov t635 c1635;
mov t636 c1636; mov t637 c1637; mov t638 c1638;
mov t639 c1639; mov t640 c1640; mov t641 c1641;
mov t642 c1642; mov t643 c1643; mov t644 c1644;
mov t645 c1645; mov t646 c1646; mov t647 c1647;
mov t648 c1648; mov t649 c1649; mov t650 c1650;
mov t651 c1651; mov t652 c1652; mov t653 c1653;
mov t654 c1654; mov t655 c1655; mov t656 c1656;
mov t657 c1657; mov t658 c1658; mov t659 c1659;
mov t660 c1660; mov t661 c1661; mov t662 c1662;
mov t663 c1663;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0630 t101 t100;
mov t600 c1700; mov t601 c1701; mov t602 c1702;
mov t603 c1703; mov t604 c1704; mov t605 c1705;
mov t606 c1706; mov t607 c1707; mov t608 c1708;
mov t609 c1709; mov t610 c1710; mov t611 c1711;
mov t612 c1712; mov t613 c1713; mov t614 c1714;
mov t615 c1715; mov t616 c1716; mov t617 c1717;
mov t618 c1718; mov t619 c1719; mov t620 c1720;
mov t621 c1721; mov t622 c1722; mov t623 c1723;
mov t624 c1724; mov t625 c1725; mov t626 c1726;
mov t627 c1727; mov t628 c1728; mov t629 c1729;
mov t630 c1730; mov t631 c1731; mov t632 c1732;
mov t633 c1733; mov t634 c1734; mov t635 c1735;
mov t636 c1736; mov t637 c1737; mov t638 c1738;
mov t639 c1739; mov t640 c1740; mov t641 c1741;
mov t642 c1742; mov t643 c1743; mov t644 c1744;
mov t645 c1745; mov t646 c1746; mov t647 c1747;
mov t648 c1748; mov t649 c1749; mov t650 c1750;
mov t651 c1751; mov t652 c1752; mov t653 c1753;
mov t654 c1754; mov t655 c1755; mov t656 c1756;
mov t657 c1757; mov t658 c1758; mov t659 c1759;
mov t660 c1760; mov t661 c1761; mov t662 c1762;
mov t663 c1763;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0638 t101 t100;
mov t600 c1800; mov t601 c1801; mov t602 c1802;
mov t603 c1803; mov t604 c1804; mov t605 c1805;
mov t606 c1806; mov t607 c1807; mov t608 c1808;
mov t609 c1809; mov t610 c1810; mov t611 c1811;
mov t612 c1812; mov t613 c1813; mov t614 c1814;
mov t615 c1815; mov t616 c1816; mov t617 c1817;
mov t618 c1818; mov t619 c1819; mov t620 c1820;
mov t621 c1821; mov t622 c1822; mov t623 c1823;
mov t624 c1824; mov t625 c1825; mov t626 c1826;
mov t627 c1827; mov t628 c1828; mov t629 c1829;
mov t630 c1830; mov t631 c1831; mov t632 c1832;
mov t633 c1833; mov t634 c1834; mov t635 c1835;
mov t636 c1836; mov t637 c1837; mov t638 c1838;
mov t639 c1839; mov t640 c1840; mov t641 c1841;
mov t642 c1842; mov t643 c1843; mov t644 c1844;
mov t645 c1845; mov t646 c1846; mov t647 c1847;
mov t648 c1848; mov t649 c1849; mov t650 c1850;
mov t651 c1851; mov t652 c1852; mov t653 c1853;
mov t654 c1854; mov t655 c1855; mov t656 c1856;
mov t657 c1857; mov t658 c1858; mov t659 c1859;
mov t660 c1860; mov t661 c1861; mov t662 c1862;
mov t663 c1863;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0640 t101 t100;
mov t600 c1900; mov t601 c1901; mov t602 c1902;
mov t603 c1903; mov t604 c1904; mov t605 c1905;
mov t606 c1906; mov t607 c1907; mov t608 c1908;
mov t609 c1909; mov t610 c1910; mov t611 c1911;
mov t612 c1912; mov t613 c1913; mov t614 c1914;
mov t615 c1915; mov t616 c1916; mov t617 c1917;
mov t618 c1918; mov t619 c1919; mov t620 c1920;
mov t621 c1921; mov t622 c1922; mov t623 c1923;
mov t624 c1924; mov t625 c1925; mov t626 c1926;
mov t627 c1927; mov t628 c1928; mov t629 c1929;
mov t630 c1930; mov t631 c1931; mov t632 c1932;
mov t633 c1933; mov t634 c1934; mov t635 c1935;
mov t636 c1936; mov t637 c1937; mov t638 c1938;
mov t639 c1939; mov t640 c1940; mov t641 c1941;
mov t642 c1942; mov t643 c1943; mov t644 c1944;
mov t645 c1945; mov t646 c1946; mov t647 c1947;
mov t648 c1948; mov t649 c1949; mov t650 c1950;
mov t651 c1951; mov t652 c1952; mov t653 c1953;
mov t654 c1954; mov t655 c1955; mov t656 c1956;
mov t657 c1957; mov t658 c1958; mov t659 c1959;
mov t660 c1960; mov t661 c1961; mov t662 c1962;
mov t663 c1963;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0648 t101 t100;
mov t600 c2000; mov t601 c2001; mov t602 c2002;
mov t603 c2003; mov t604 c2004; mov t605 c2005;
mov t606 c2006; mov t607 c2007; mov t608 c2008;
mov t609 c2009; mov t610 c2010; mov t611 c2011;
mov t612 c2012; mov t613 c2013; mov t614 c2014;
mov t615 c2015; mov t616 c2016; mov t617 c2017;
mov t618 c2018; mov t619 c2019; mov t620 c2020;
mov t621 c2021; mov t622 c2022; mov t623 c2023;
mov t624 c2024; mov t625 c2025; mov t626 c2026;
mov t627 c2027; mov t628 c2028; mov t629 c2029;
mov t630 c2030; mov t631 c2031; mov t632 c2032;
mov t633 c2033; mov t634 c2034; mov t635 c2035;
mov t636 c2036; mov t637 c2037; mov t638 c2038;
mov t639 c2039; mov t640 c2040; mov t641 c2041;
mov t642 c2042; mov t643 c2043; mov t644 c2044;
mov t645 c2045; mov t646 c2046; mov t647 c2047;
mov t648 c2048; mov t649 c2049; mov t650 c2050;
mov t651 c2051; mov t652 c2052; mov t653 c2053;
mov t654 c2054; mov t655 c2055; mov t656 c2056;
mov t657 c2057; mov t658 c2058; mov t659 c2059;
mov t660 c2060; mov t661 c2061; mov t662 c2062;
mov t663 c2063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0650 t101 t100;
mov t600 c2100; mov t601 c2101; mov t602 c2102;
mov t603 c2103; mov t604 c2104; mov t605 c2105;
mov t606 c2106; mov t607 c2107; mov t608 c2108;
mov t609 c2109; mov t610 c2110; mov t611 c2111;
mov t612 c2112; mov t613 c2113; mov t614 c2114;
mov t615 c2115; mov t616 c2116; mov t617 c2117;
mov t618 c2118; mov t619 c2119; mov t620 c2120;
mov t621 c2121; mov t622 c2122; mov t623 c2123;
mov t624 c2124; mov t625 c2125; mov t626 c2126;
mov t627 c2127; mov t628 c2128; mov t629 c2129;
mov t630 c2130; mov t631 c2131; mov t632 c2132;
mov t633 c2133; mov t634 c2134; mov t635 c2135;
mov t636 c2136; mov t637 c2137; mov t638 c2138;
mov t639 c2139; mov t640 c2140; mov t641 c2141;
mov t642 c2142; mov t643 c2143; mov t644 c2144;
mov t645 c2145; mov t646 c2146; mov t647 c2147;
mov t648 c2148; mov t649 c2149; mov t650 c2150;
mov t651 c2151; mov t652 c2152; mov t653 c2153;
mov t654 c2154; mov t655 c2155; mov t656 c2156;
mov t657 c2157; mov t658 c2158; mov t659 c2159;
mov t660 c2160; mov t661 c2161; mov t662 c2162;
mov t663 c2163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0658 t101 t100;
mov t600 c2200; mov t601 c2201; mov t602 c2202;
mov t603 c2203; mov t604 c2204; mov t605 c2205;
mov t606 c2206; mov t607 c2207; mov t608 c2208;
mov t609 c2209; mov t610 c2210; mov t611 c2211;
mov t612 c2212; mov t613 c2213; mov t614 c2214;
mov t615 c2215; mov t616 c2216; mov t617 c2217;
mov t618 c2218; mov t619 c2219; mov t620 c2220;
mov t621 c2221; mov t622 c2222; mov t623 c2223;
mov t624 c2224; mov t625 c2225; mov t626 c2226;
mov t627 c2227; mov t628 c2228; mov t629 c2229;
mov t630 c2230; mov t631 c2231; mov t632 c2232;
mov t633 c2233; mov t634 c2234; mov t635 c2235;
mov t636 c2236; mov t637 c2237; mov t638 c2238;
mov t639 c2239; mov t640 c2240; mov t641 c2241;
mov t642 c2242; mov t643 c2243; mov t644 c2244;
mov t645 c2245; mov t646 c2246; mov t647 c2247;
mov t648 c2248; mov t649 c2249; mov t650 c2250;
mov t651 c2251; mov t652 c2252; mov t653 c2253;
mov t654 c2254; mov t655 c2255; mov t656 c2256;
mov t657 c2257; mov t658 c2258; mov t659 c2259;
mov t660 c2260; mov t661 c2261; mov t662 c2262;
mov t663 c2263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0660 t101 t100;
mov t600 c2300; mov t601 c2301; mov t602 c2302;
mov t603 c2303; mov t604 c2304; mov t605 c2305;
mov t606 c2306; mov t607 c2307; mov t608 c2308;
mov t609 c2309; mov t610 c2310; mov t611 c2311;
mov t612 c2312; mov t613 c2313; mov t614 c2314;
mov t615 c2315; mov t616 c2316; mov t617 c2317;
mov t618 c2318; mov t619 c2319; mov t620 c2320;
mov t621 c2321; mov t622 c2322; mov t623 c2323;
mov t624 c2324; mov t625 c2325; mov t626 c2326;
mov t627 c2327; mov t628 c2328; mov t629 c2329;
mov t630 c2330; mov t631 c2331; mov t632 c2332;
mov t633 c2333; mov t634 c2334; mov t635 c2335;
mov t636 c2336; mov t637 c2337; mov t638 c2338;
mov t639 c2339; mov t640 c2340; mov t641 c2341;
mov t642 c2342; mov t643 c2343; mov t644 c2344;
mov t645 c2345; mov t646 c2346; mov t647 c2347;
mov t648 c2348; mov t649 c2349; mov t650 c2350;
mov t651 c2351; mov t652 c2352; mov t653 c2353;
mov t654 c2354; mov t655 c2355; mov t656 c2356;
mov t657 c2357; mov t658 c2358; mov t659 c2359;
mov t660 c2360; mov t661 c2361; mov t662 c2362;
mov t663 c2363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0668 t101 t100;
mov t600 c2400; mov t601 c2401; mov t602 c2402;
mov t603 c2403; mov t604 c2404; mov t605 c2405;
mov t606 c2406; mov t607 c2407; mov t608 c2408;
mov t609 c2409; mov t610 c2410; mov t611 c2411;
mov t612 c2412; mov t613 c2413; mov t614 c2414;
mov t615 c2415; mov t616 c2416; mov t617 c2417;
mov t618 c2418; mov t619 c2419; mov t620 c2420;
mov t621 c2421; mov t622 c2422; mov t623 c2423;
mov t624 c2424; mov t625 c2425; mov t626 c2426;
mov t627 c2427; mov t628 c2428; mov t629 c2429;
mov t630 c2430; mov t631 c2431; mov t632 c2432;
mov t633 c2433; mov t634 c2434; mov t635 c2435;
mov t636 c2436; mov t637 c2437; mov t638 c2438;
mov t639 c2439; mov t640 c2440; mov t641 c2441;
mov t642 c2442; mov t643 c2443; mov t644 c2444;
mov t645 c2445; mov t646 c2446; mov t647 c2447;
mov t648 c2448; mov t649 c2449; mov t650 c2450;
mov t651 c2451; mov t652 c2452; mov t653 c2453;
mov t654 c2454; mov t655 c2455; mov t656 c2456;
mov t657 c2457; mov t658 c2458; mov t659 c2459;
mov t660 c2460; mov t661 c2461; mov t662 c2462;
mov t663 c2463;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0670 t101 t100;
mov t600 c2500; mov t601 c2501; mov t602 c2502;
mov t603 c2503; mov t604 c2504; mov t605 c2505;
mov t606 c2506; mov t607 c2507; mov t608 c2508;
mov t609 c2509; mov t610 c2510; mov t611 c2511;
mov t612 c2512; mov t613 c2513; mov t614 c2514;
mov t615 c2515; mov t616 c2516; mov t617 c2517;
mov t618 c2518; mov t619 c2519; mov t620 c2520;
mov t621 c2521; mov t622 c2522; mov t623 c2523;
mov t624 c2524; mov t625 c2525; mov t626 c2526;
mov t627 c2527; mov t628 c2528; mov t629 c2529;
mov t630 c2530; mov t631 c2531; mov t632 c2532;
mov t633 c2533; mov t634 c2534; mov t635 c2535;
mov t636 c2536; mov t637 c2537; mov t638 c2538;
mov t639 c2539; mov t640 c2540; mov t641 c2541;
mov t642 c2542; mov t643 c2543; mov t644 c2544;
mov t645 c2545; mov t646 c2546; mov t647 c2547;
mov t648 c2548; mov t649 c2549; mov t650 c2550;
mov t651 c2551; mov t652 c2552; mov t653 c2553;
mov t654 c2554; mov t655 c2555; mov t656 c2556;
mov t657 c2557; mov t658 c2558; mov t659 c2559;
mov t660 c2560; mov t661 c2561; mov t662 c2562;
mov t663 c2563;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0678 t101 t100;
mov t600 c2600; mov t601 c2601; mov t602 c2602;
mov t603 c2603; mov t604 c2604; mov t605 c2605;
mov t606 c2606; mov t607 c2607; mov t608 c2608;
mov t609 c2609; mov t610 c2610; mov t611 c2611;
mov t612 c2612; mov t613 c2613; mov t614 c2614;
mov t615 c2615; mov t616 c2616; mov t617 c2617;
mov t618 c2618; mov t619 c2619; mov t620 c2620;
mov t621 c2621; mov t622 c2622; mov t623 c2623;
mov t624 c2624; mov t625 c2625; mov t626 c2626;
mov t627 c2627; mov t628 c2628; mov t629 c2629;
mov t630 c2630; mov t631 c2631; mov t632 c2632;
mov t633 c2633; mov t634 c2634; mov t635 c2635;
mov t636 c2636; mov t637 c2637; mov t638 c2638;
mov t639 c2639; mov t640 c2640; mov t641 c2641;
mov t642 c2642; mov t643 c2643; mov t644 c2644;
mov t645 c2645; mov t646 c2646; mov t647 c2647;
mov t648 c2648; mov t649 c2649; mov t650 c2650;
mov t651 c2651; mov t652 c2652; mov t653 c2653;
mov t654 c2654; mov t655 c2655; mov t656 c2656;
mov t657 c2657; mov t658 c2658; mov t659 c2659;
mov t660 c2660; mov t661 c2661; mov t662 c2662;
mov t663 c2663;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0680 t101 t100;
mov t600 c2700; mov t601 c2701; mov t602 c2702;
mov t603 c2703; mov t604 c2704; mov t605 c2705;
mov t606 c2706; mov t607 c2707; mov t608 c2708;
mov t609 c2709; mov t610 c2710; mov t611 c2711;
mov t612 c2712; mov t613 c2713; mov t614 c2714;
mov t615 c2715; mov t616 c2716; mov t617 c2717;
mov t618 c2718; mov t619 c2719; mov t620 c2720;
mov t621 c2721; mov t622 c2722; mov t623 c2723;
mov t624 c2724; mov t625 c2725; mov t626 c2726;
mov t627 c2727; mov t628 c2728; mov t629 c2729;
mov t630 c2730; mov t631 c2731; mov t632 c2732;
mov t633 c2733; mov t634 c2734; mov t635 c2735;
mov t636 c2736; mov t637 c2737; mov t638 c2738;
mov t639 c2739; mov t640 c2740; mov t641 c2741;
mov t642 c2742; mov t643 c2743; mov t644 c2744;
mov t645 c2745; mov t646 c2746; mov t647 c2747;
mov t648 c2748; mov t649 c2749; mov t650 c2750;
mov t651 c2751; mov t652 c2752; mov t653 c2753;
mov t654 c2754; mov t655 c2755; mov t656 c2756;
mov t657 c2757; mov t658 c2758; mov t659 c2759;
mov t660 c2760; mov t661 c2761; mov t662 c2762;
mov t663 c2763;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0688 t101 t100;
mov t600 c2800; mov t601 c2801; mov t602 c2802;
mov t603 c2803; mov t604 c2804; mov t605 c2805;
mov t606 c2806; mov t607 c2807; mov t608 c2808;
mov t609 c2809; mov t610 c2810; mov t611 c2811;
mov t612 c2812; mov t613 c2813; mov t614 c2814;
mov t615 c2815; mov t616 c2816; mov t617 c2817;
mov t618 c2818; mov t619 c2819; mov t620 c2820;
mov t621 c2821; mov t622 c2822; mov t623 c2823;
mov t624 c2824; mov t625 c2825; mov t626 c2826;
mov t627 c2827; mov t628 c2828; mov t629 c2829;
mov t630 c2830; mov t631 c2831; mov t632 c2832;
mov t633 c2833; mov t634 c2834; mov t635 c2835;
mov t636 c2836; mov t637 c2837; mov t638 c2838;
mov t639 c2839; mov t640 c2840; mov t641 c2841;
mov t642 c2842; mov t643 c2843; mov t644 c2844;
mov t645 c2845; mov t646 c2846; mov t647 c2847;
mov t648 c2848; mov t649 c2849; mov t650 c2850;
mov t651 c2851; mov t652 c2852; mov t653 c2853;
mov t654 c2854; mov t655 c2855; mov t656 c2856;
mov t657 c2857; mov t658 c2858; mov t659 c2859;
mov t660 c2860; mov t661 c2861; mov t662 c2862;
mov t663 c2863;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0690 t101 t100;
mov t600 c2900; mov t601 c2901; mov t602 c2902;
mov t603 c2903; mov t604 c2904; mov t605 c2905;
mov t606 c2906; mov t607 c2907; mov t608 c2908;
mov t609 c2909; mov t610 c2910; mov t611 c2911;
mov t612 c2912; mov t613 c2913; mov t614 c2914;
mov t615 c2915; mov t616 c2916; mov t617 c2917;
mov t618 c2918; mov t619 c2919; mov t620 c2920;
mov t621 c2921; mov t622 c2922; mov t623 c2923;
mov t624 c2924; mov t625 c2925; mov t626 c2926;
mov t627 c2927; mov t628 c2928; mov t629 c2929;
mov t630 c2930; mov t631 c2931; mov t632 c2932;
mov t633 c2933; mov t634 c2934; mov t635 c2935;
mov t636 c2936; mov t637 c2937; mov t638 c2938;
mov t639 c2939; mov t640 c2940; mov t641 c2941;
mov t642 c2942; mov t643 c2943; mov t644 c2944;
mov t645 c2945; mov t646 c2946; mov t647 c2947;
mov t648 c2948; mov t649 c2949; mov t650 c2950;
mov t651 c2951; mov t652 c2952; mov t653 c2953;
mov t654 c2954; mov t655 c2955; mov t656 c2956;
mov t657 c2957; mov t658 c2958; mov t659 c2959;
mov t660 c2960; mov t661 c2961; mov t662 c2962;
mov t663 c2963;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0698 t101 t100;
mov t600 c3000; mov t601 c3001; mov t602 c3002;
mov t603 c3003; mov t604 c3004; mov t605 c3005;
mov t606 c3006; mov t607 c3007; mov t608 c3008;
mov t609 c3009; mov t610 c3010; mov t611 c3011;
mov t612 c3012; mov t613 c3013; mov t614 c3014;
mov t615 c3015; mov t616 c3016; mov t617 c3017;
mov t618 c3018; mov t619 c3019; mov t620 c3020;
mov t621 c3021; mov t622 c3022; mov t623 c3023;
mov t624 c3024; mov t625 c3025; mov t626 c3026;
mov t627 c3027; mov t628 c3028; mov t629 c3029;
mov t630 c3030; mov t631 c3031; mov t632 c3032;
mov t633 c3033; mov t634 c3034; mov t635 c3035;
mov t636 c3036; mov t637 c3037; mov t638 c3038;
mov t639 c3039; mov t640 c3040; mov t641 c3041;
mov t642 c3042; mov t643 c3043; mov t644 c3044;
mov t645 c3045; mov t646 c3046; mov t647 c3047;
mov t648 c3048; mov t649 c3049; mov t650 c3050;
mov t651 c3051; mov t652 c3052; mov t653 c3053;
mov t654 c3054; mov t655 c3055; mov t656 c3056;
mov t657 c3057; mov t658 c3058; mov t659 c3059;
mov t660 c3060; mov t661 c3061; mov t662 c3062;
mov t663 c3063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06a0 t101 t100;
mov t600 c3100; mov t601 c3101; mov t602 c3102;
mov t603 c3103; mov t604 c3104; mov t605 c3105;
mov t606 c3106; mov t607 c3107; mov t608 c3108;
mov t609 c3109; mov t610 c3110; mov t611 c3111;
mov t612 c3112; mov t613 c3113; mov t614 c3114;
mov t615 c3115; mov t616 c3116; mov t617 c3117;
mov t618 c3118; mov t619 c3119; mov t620 c3120;
mov t621 c3121; mov t622 c3122; mov t623 c3123;
mov t624 c3124; mov t625 c3125; mov t626 c3126;
mov t627 c3127; mov t628 c3128; mov t629 c3129;
mov t630 c3130; mov t631 c3131; mov t632 c3132;
mov t633 c3133; mov t634 c3134; mov t635 c3135;
mov t636 c3136; mov t637 c3137; mov t638 c3138;
mov t639 c3139; mov t640 c3140; mov t641 c3141;
mov t642 c3142; mov t643 c3143; mov t644 c3144;
mov t645 c3145; mov t646 c3146; mov t647 c3147;
mov t648 c3148; mov t649 c3149; mov t650 c3150;
mov t651 c3151; mov t652 c3152; mov t653 c3153;
mov t654 c3154; mov t655 c3155; mov t656 c3156;
mov t657 c3157; mov t658 c3158; mov t659 c3159;
mov t660 c3160; mov t661 c3161; mov t662 c3162;
mov t663 c3163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06a8 t101 t100;
mov t600 c3200; mov t601 c3201; mov t602 c3202;
mov t603 c3203; mov t604 c3204; mov t605 c3205;
mov t606 c3206; mov t607 c3207; mov t608 c3208;
mov t609 c3209; mov t610 c3210; mov t611 c3211;
mov t612 c3212; mov t613 c3213; mov t614 c3214;
mov t615 c3215; mov t616 c3216; mov t617 c3217;
mov t618 c3218; mov t619 c3219; mov t620 c3220;
mov t621 c3221; mov t622 c3222; mov t623 c3223;
mov t624 c3224; mov t625 c3225; mov t626 c3226;
mov t627 c3227; mov t628 c3228; mov t629 c3229;
mov t630 c3230; mov t631 c3231; mov t632 c3232;
mov t633 c3233; mov t634 c3234; mov t635 c3235;
mov t636 c3236; mov t637 c3237; mov t638 c3238;
mov t639 c3239; mov t640 c3240; mov t641 c3241;
mov t642 c3242; mov t643 c3243; mov t644 c3244;
mov t645 c3245; mov t646 c3246; mov t647 c3247;
mov t648 c3248; mov t649 c3249; mov t650 c3250;
mov t651 c3251; mov t652 c3252; mov t653 c3253;
mov t654 c3254; mov t655 c3255; mov t656 c3256;
mov t657 c3257; mov t658 c3258; mov t659 c3259;
mov t660 c3260; mov t661 c3261; mov t662 c3262;
mov t663 c3263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06b0 t101 t100;
mov t600 c3300; mov t601 c3301; mov t602 c3302;
mov t603 c3303; mov t604 c3304; mov t605 c3305;
mov t606 c3306; mov t607 c3307; mov t608 c3308;
mov t609 c3309; mov t610 c3310; mov t611 c3311;
mov t612 c3312; mov t613 c3313; mov t614 c3314;
mov t615 c3315; mov t616 c3316; mov t617 c3317;
mov t618 c3318; mov t619 c3319; mov t620 c3320;
mov t621 c3321; mov t622 c3322; mov t623 c3323;
mov t624 c3324; mov t625 c3325; mov t626 c3326;
mov t627 c3327; mov t628 c3328; mov t629 c3329;
mov t630 c3330; mov t631 c3331; mov t632 c3332;
mov t633 c3333; mov t634 c3334; mov t635 c3335;
mov t636 c3336; mov t637 c3337; mov t638 c3338;
mov t639 c3339; mov t640 c3340; mov t641 c3341;
mov t642 c3342; mov t643 c3343; mov t644 c3344;
mov t645 c3345; mov t646 c3346; mov t647 c3347;
mov t648 c3348; mov t649 c3349; mov t650 c3350;
mov t651 c3351; mov t652 c3352; mov t653 c3353;
mov t654 c3354; mov t655 c3355; mov t656 c3356;
mov t657 c3357; mov t658 c3358; mov t659 c3359;
mov t660 c3360; mov t661 c3361; mov t662 c3362;
mov t663 c3363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06b8 t101 t100;
mov t600 c3400; mov t601 c3401; mov t602 c3402;
mov t603 c3403; mov t604 c3404; mov t605 c3405;
mov t606 c3406; mov t607 c3407; mov t608 c3408;
mov t609 c3409; mov t610 c3410; mov t611 c3411;
mov t612 c3412; mov t613 c3413; mov t614 c3414;
mov t615 c3415; mov t616 c3416; mov t617 c3417;
mov t618 c3418; mov t619 c3419; mov t620 c3420;
mov t621 c3421; mov t622 c3422; mov t623 c3423;
mov t624 c3424; mov t625 c3425; mov t626 c3426;
mov t627 c3427; mov t628 c3428; mov t629 c3429;
mov t630 c3430; mov t631 c3431; mov t632 c3432;
mov t633 c3433; mov t634 c3434; mov t635 c3435;
mov t636 c3436; mov t637 c3437; mov t638 c3438;
mov t639 c3439; mov t640 c3440; mov t641 c3441;
mov t642 c3442; mov t643 c3443; mov t644 c3444;
mov t645 c3445; mov t646 c3446; mov t647 c3447;
mov t648 c3448; mov t649 c3449; mov t650 c3450;
mov t651 c3451; mov t652 c3452; mov t653 c3453;
mov t654 c3454; mov t655 c3455; mov t656 c3456;
mov t657 c3457; mov t658 c3458; mov t659 c3459;
mov t660 c3460; mov t661 c3461; mov t662 c3462;
mov t663 c3463;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06c0 t101 t100;
mov t600 c3500; mov t601 c3501; mov t602 c3502;
mov t603 c3503; mov t604 c3504; mov t605 c3505;
mov t606 c3506; mov t607 c3507; mov t608 c3508;
mov t609 c3509; mov t610 c3510; mov t611 c3511;
mov t612 c3512; mov t613 c3513; mov t614 c3514;
mov t615 c3515; mov t616 c3516; mov t617 c3517;
mov t618 c3518; mov t619 c3519; mov t620 c3520;
mov t621 c3521; mov t622 c3522; mov t623 c3523;
mov t624 c3524; mov t625 c3525; mov t626 c3526;
mov t627 c3527; mov t628 c3528; mov t629 c3529;
mov t630 c3530; mov t631 c3531; mov t632 c3532;
mov t633 c3533; mov t634 c3534; mov t635 c3535;
mov t636 c3536; mov t637 c3537; mov t638 c3538;
mov t639 c3539; mov t640 c3540; mov t641 c3541;
mov t642 c3542; mov t643 c3543; mov t644 c3544;
mov t645 c3545; mov t646 c3546; mov t647 c3547;
mov t648 c3548; mov t649 c3549; mov t650 c3550;
mov t651 c3551; mov t652 c3552; mov t653 c3553;
mov t654 c3554; mov t655 c3555; mov t656 c3556;
mov t657 c3557; mov t658 c3558; mov t659 c3559;
mov t660 c3560; mov t661 c3561; mov t662 c3562;
mov t663 c3563;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06c8 t101 t100;
mov t600 c3600; mov t601 c3601; mov t602 c3602;
mov t603 c3603; mov t604 c3604; mov t605 c3605;
mov t606 c3606; mov t607 c3607; mov t608 c3608;
mov t609 c3609; mov t610 c3610; mov t611 c3611;
mov t612 c3612; mov t613 c3613; mov t614 c3614;
mov t615 c3615; mov t616 c3616; mov t617 c3617;
mov t618 c3618; mov t619 c3619; mov t620 c3620;
mov t621 c3621; mov t622 c3622; mov t623 c3623;
mov t624 c3624; mov t625 c3625; mov t626 c3626;
mov t627 c3627; mov t628 c3628; mov t629 c3629;
mov t630 c3630; mov t631 c3631; mov t632 c3632;
mov t633 c3633; mov t634 c3634; mov t635 c3635;
mov t636 c3636; mov t637 c3637; mov t638 c3638;
mov t639 c3639; mov t640 c3640; mov t641 c3641;
mov t642 c3642; mov t643 c3643; mov t644 c3644;
mov t645 c3645; mov t646 c3646; mov t647 c3647;
mov t648 c3648; mov t649 c3649; mov t650 c3650;
mov t651 c3651; mov t652 c3652; mov t653 c3653;
mov t654 c3654; mov t655 c3655; mov t656 c3656;
mov t657 c3657; mov t658 c3658; mov t659 c3659;
mov t660 c3660; mov t661 c3661; mov t662 c3662;
mov t663 c3663;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06d0 t101 t100;
mov t600 c3700; mov t601 c3701; mov t602 c3702;
mov t603 c3703; mov t604 c3704; mov t605 c3705;
mov t606 c3706; mov t607 c3707; mov t608 c3708;
mov t609 c3709; mov t610 c3710; mov t611 c3711;
mov t612 c3712; mov t613 c3713; mov t614 c3714;
mov t615 c3715; mov t616 c3716; mov t617 c3717;
mov t618 c3718; mov t619 c3719; mov t620 c3720;
mov t621 c3721; mov t622 c3722; mov t623 c3723;
mov t624 c3724; mov t625 c3725; mov t626 c3726;
mov t627 c3727; mov t628 c3728; mov t629 c3729;
mov t630 c3730; mov t631 c3731; mov t632 c3732;
mov t633 c3733; mov t634 c3734; mov t635 c3735;
mov t636 c3736; mov t637 c3737; mov t638 c3738;
mov t639 c3739; mov t640 c3740; mov t641 c3741;
mov t642 c3742; mov t643 c3743; mov t644 c3744;
mov t645 c3745; mov t646 c3746; mov t647 c3747;
mov t648 c3748; mov t649 c3749; mov t650 c3750;
mov t651 c3751; mov t652 c3752; mov t653 c3753;
mov t654 c3754; mov t655 c3755; mov t656 c3756;
mov t657 c3757; mov t658 c3758; mov t659 c3759;
mov t660 c3760; mov t661 c3761; mov t662 c3762;
mov t663 c3763;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06d8 t101 t100;
mov t600 c3800; mov t601 c3801; mov t602 c3802;
mov t603 c3803; mov t604 c3804; mov t605 c3805;
mov t606 c3806; mov t607 c3807; mov t608 c3808;
mov t609 c3809; mov t610 c3810; mov t611 c3811;
mov t612 c3812; mov t613 c3813; mov t614 c3814;
mov t615 c3815; mov t616 c3816; mov t617 c3817;
mov t618 c3818; mov t619 c3819; mov t620 c3820;
mov t621 c3821; mov t622 c3822; mov t623 c3823;
mov t624 c3824; mov t625 c3825; mov t626 c3826;
mov t627 c3827; mov t628 c3828; mov t629 c3829;
mov t630 c3830; mov t631 c3831; mov t632 c3832;
mov t633 c3833; mov t634 c3834; mov t635 c3835;
mov t636 c3836; mov t637 c3837; mov t638 c3838;
mov t639 c3839; mov t640 c3840; mov t641 c3841;
mov t642 c3842; mov t643 c3843; mov t644 c3844;
mov t645 c3845; mov t646 c3846; mov t647 c3847;
mov t648 c3848; mov t649 c3849; mov t650 c3850;
mov t651 c3851; mov t652 c3852; mov t653 c3853;
mov t654 c3854; mov t655 c3855; mov t656 c3856;
mov t657 c3857; mov t658 c3858; mov t659 c3859;
mov t660 c3860; mov t661 c3861; mov t662 c3862;
mov t663 c3863;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06e0 t101 t100;
mov t600 c3900; mov t601 c3901; mov t602 c3902;
mov t603 c3903; mov t604 c3904; mov t605 c3905;
mov t606 c3906; mov t607 c3907; mov t608 c3908;
mov t609 c3909; mov t610 c3910; mov t611 c3911;
mov t612 c3912; mov t613 c3913; mov t614 c3914;
mov t615 c3915; mov t616 c3916; mov t617 c3917;
mov t618 c3918; mov t619 c3919; mov t620 c3920;
mov t621 c3921; mov t622 c3922; mov t623 c3923;
mov t624 c3924; mov t625 c3925; mov t626 c3926;
mov t627 c3927; mov t628 c3928; mov t629 c3929;
mov t630 c3930; mov t631 c3931; mov t632 c3932;
mov t633 c3933; mov t634 c3934; mov t635 c3935;
mov t636 c3936; mov t637 c3937; mov t638 c3938;
mov t639 c3939; mov t640 c3940; mov t641 c3941;
mov t642 c3942; mov t643 c3943; mov t644 c3944;
mov t645 c3945; mov t646 c3946; mov t647 c3947;
mov t648 c3948; mov t649 c3949; mov t650 c3950;
mov t651 c3951; mov t652 c3952; mov t653 c3953;
mov t654 c3954; mov t655 c3955; mov t656 c3956;
mov t657 c3957; mov t658 c3958; mov t659 c3959;
mov t660 c3960; mov t661 c3961; mov t662 c3962;
mov t663 c3963;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06e8 t101 t100;
mov t600 c4000; mov t601 c4001; mov t602 c4002;
mov t603 c4003; mov t604 c4004; mov t605 c4005;
mov t606 c4006; mov t607 c4007; mov t608 c4008;
mov t609 c4009; mov t610 c4010; mov t611 c4011;
mov t612 c4012; mov t613 c4013; mov t614 c4014;
mov t615 c4015; mov t616 c4016; mov t617 c4017;
mov t618 c4018; mov t619 c4019; mov t620 c4020;
mov t621 c4021; mov t622 c4022; mov t623 c4023;
mov t624 c4024; mov t625 c4025; mov t626 c4026;
mov t627 c4027; mov t628 c4028; mov t629 c4029;
mov t630 c4030; mov t631 c4031; mov t632 c4032;
mov t633 c4033; mov t634 c4034; mov t635 c4035;
mov t636 c4036; mov t637 c4037; mov t638 c4038;
mov t639 c4039; mov t640 c4040; mov t641 c4041;
mov t642 c4042; mov t643 c4043; mov t644 c4044;
mov t645 c4045; mov t646 c4046; mov t647 c4047;
mov t648 c4048; mov t649 c4049; mov t650 c4050;
mov t651 c4051; mov t652 c4052; mov t653 c4053;
mov t654 c4054; mov t655 c4055; mov t656 c4056;
mov t657 c4057; mov t658 c4058; mov t659 c4059;
mov t660 c4060; mov t661 c4061; mov t662 c4062;
mov t663 c4063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06f0 t101 t100;
mov t600 c4100; mov t601 c4101; mov t602 c4102;
mov t603 c4103; mov t604 c4104; mov t605 c4105;
mov t606 c4106; mov t607 c4107; mov t608 c4108;
mov t609 c4109; mov t610 c4110; mov t611 c4111;
mov t612 c4112; mov t613 c4113; mov t614 c4114;
mov t615 c4115; mov t616 c4116; mov t617 c4117;
mov t618 c4118; mov t619 c4119; mov t620 c4120;
mov t621 c4121; mov t622 c4122; mov t623 c4123;
mov t624 c4124; mov t625 c4125; mov t626 c4126;
mov t627 c4127; mov t628 c4128; mov t629 c4129;
mov t630 c4130; mov t631 c4131; mov t632 c4132;
mov t633 c4133; mov t634 c4134; mov t635 c4135;
mov t636 c4136; mov t637 c4137; mov t638 c4138;
mov t639 c4139; mov t640 c4140; mov t641 c4141;
mov t642 c4142; mov t643 c4143; mov t644 c4144;
mov t645 c4145; mov t646 c4146; mov t647 c4147;
mov t648 c4148; mov t649 c4149; mov t650 c4150;
mov t651 c4151; mov t652 c4152; mov t653 c4153;
mov t654 c4154; mov t655 c4155; mov t656 c4156;
mov t657 c4157; mov t658 c4158; mov t659 c4159;
mov t660 c4160; mov t661 c4161; mov t662 c4162;
mov t663 c4163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff06f8 t101 t100;
mov t600 c4200; mov t601 c4201; mov t602 c4202;
mov t603 c4203; mov t604 c4204; mov t605 c4205;
mov t606 c4206; mov t607 c4207; mov t608 c4208;
mov t609 c4209; mov t610 c4210; mov t611 c4211;
mov t612 c4212; mov t613 c4213; mov t614 c4214;
mov t615 c4215; mov t616 c4216; mov t617 c4217;
mov t618 c4218; mov t619 c4219; mov t620 c4220;
mov t621 c4221; mov t622 c4222; mov t623 c4223;
mov t624 c4224; mov t625 c4225; mov t626 c4226;
mov t627 c4227; mov t628 c4228; mov t629 c4229;
mov t630 c4230; mov t631 c4231; mov t632 c4232;
mov t633 c4233; mov t634 c4234; mov t635 c4235;
mov t636 c4236; mov t637 c4237; mov t638 c4238;
mov t639 c4239; mov t640 c4240; mov t641 c4241;
mov t642 c4242; mov t643 c4243; mov t644 c4244;
mov t645 c4245; mov t646 c4246; mov t647 c4247;
mov t648 c4248; mov t649 c4249; mov t650 c4250;
mov t651 c4251; mov t652 c4252; mov t653 c4253;
mov t654 c4254; mov t655 c4255; mov t656 c4256;
mov t657 c4257; mov t658 c4258; mov t659 c4259;
mov t660 c4260; mov t661 c4261; mov t662 c4262;
mov t663 c4263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0700 t101 t100;
mov t600 c4300; mov t601 c4301; mov t602 c4302;
mov t603 c4303; mov t604 c4304; mov t605 c4305;
mov t606 c4306; mov t607 c4307; mov t608 c4308;
mov t609 c4309; mov t610 c4310; mov t611 c4311;
mov t612 c4312; mov t613 c4313; mov t614 c4314;
mov t615 c4315; mov t616 c4316; mov t617 c4317;
mov t618 c4318; mov t619 c4319; mov t620 c4320;
mov t621 c4321; mov t622 c4322; mov t623 c4323;
mov t624 c4324; mov t625 c4325; mov t626 c4326;
mov t627 c4327; mov t628 c4328; mov t629 c4329;
mov t630 c4330; mov t631 c4331; mov t632 c4332;
mov t633 c4333; mov t634 c4334; mov t635 c4335;
mov t636 c4336; mov t637 c4337; mov t638 c4338;
mov t639 c4339; mov t640 c4340; mov t641 c4341;
mov t642 c4342; mov t643 c4343; mov t644 c4344;
mov t645 c4345; mov t646 c4346; mov t647 c4347;
mov t648 c4348; mov t649 c4349; mov t650 c4350;
mov t651 c4351; mov t652 c4352; mov t653 c4353;
mov t654 c4354; mov t655 c4355; mov t656 c4356;
mov t657 c4357; mov t658 c4358; mov t659 c4359;
mov t660 c4360; mov t661 c4361; mov t662 c4362;
mov t663 c4363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0708 t101 t100;
mov t600 c4400; mov t601 c4401; mov t602 c4402;
mov t603 c4403; mov t604 c4404; mov t605 c4405;
mov t606 c4406; mov t607 c4407; mov t608 c4408;
mov t609 c4409; mov t610 c4410; mov t611 c4411;
mov t612 c4412; mov t613 c4413; mov t614 c4414;
mov t615 c4415; mov t616 c4416; mov t617 c4417;
mov t618 c4418; mov t619 c4419; mov t620 c4420;
mov t621 c4421; mov t622 c4422; mov t623 c4423;
mov t624 c4424; mov t625 c4425; mov t626 c4426;
mov t627 c4427; mov t628 c4428; mov t629 c4429;
mov t630 c4430; mov t631 c4431; mov t632 c4432;
mov t633 c4433; mov t634 c4434; mov t635 c4435;
mov t636 c4436; mov t637 c4437; mov t638 c4438;
mov t639 c4439; mov t640 c4440; mov t641 c4441;
mov t642 c4442; mov t643 c4443; mov t644 c4444;
mov t645 c4445; mov t646 c4446; mov t647 c4447;
mov t648 c4448; mov t649 c4449; mov t650 c4450;
mov t651 c4451; mov t652 c4452; mov t653 c4453;
mov t654 c4454; mov t655 c4455; mov t656 c4456;
mov t657 c4457; mov t658 c4458; mov t659 c4459;
mov t660 c4460; mov t661 c4461; mov t662 c4462;
mov t663 c4463;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0710 t101 t100;
mov t600 c4500; mov t601 c4501; mov t602 c4502;
mov t603 c4503; mov t604 c4504; mov t605 c4505;
mov t606 c4506; mov t607 c4507; mov t608 c4508;
mov t609 c4509; mov t610 c4510; mov t611 c4511;
mov t612 c4512; mov t613 c4513; mov t614 c4514;
mov t615 c4515; mov t616 c4516; mov t617 c4517;
mov t618 c4518; mov t619 c4519; mov t620 c4520;
mov t621 c4521; mov t622 c4522; mov t623 c4523;
mov t624 c4524; mov t625 c4525; mov t626 c4526;
mov t627 c4527; mov t628 c4528; mov t629 c4529;
mov t630 c4530; mov t631 c4531; mov t632 c4532;
mov t633 c4533; mov t634 c4534; mov t635 c4535;
mov t636 c4536; mov t637 c4537; mov t638 c4538;
mov t639 c4539; mov t640 c4540; mov t641 c4541;
mov t642 c4542; mov t643 c4543; mov t644 c4544;
mov t645 c4545; mov t646 c4546; mov t647 c4547;
mov t648 c4548; mov t649 c4549; mov t650 c4550;
mov t651 c4551; mov t652 c4552; mov t653 c4553;
mov t654 c4554; mov t655 c4555; mov t656 c4556;
mov t657 c4557; mov t658 c4558; mov t659 c4559;
mov t660 c4560; mov t661 c4561; mov t662 c4562;
mov t663 c4563;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0718 t101 t100;
mov t600 c4600; mov t601 c4601; mov t602 c4602;
mov t603 c4603; mov t604 c4604; mov t605 c4605;
mov t606 c4606; mov t607 c4607; mov t608 c4608;
mov t609 c4609; mov t610 c4610; mov t611 c4611;
mov t612 c4612; mov t613 c4613; mov t614 c4614;
mov t615 c4615; mov t616 c4616; mov t617 c4617;
mov t618 c4618; mov t619 c4619; mov t620 c4620;
mov t621 c4621; mov t622 c4622; mov t623 c4623;
mov t624 c4624; mov t625 c4625; mov t626 c4626;
mov t627 c4627; mov t628 c4628; mov t629 c4629;
mov t630 c4630; mov t631 c4631; mov t632 c4632;
mov t633 c4633; mov t634 c4634; mov t635 c4635;
mov t636 c4636; mov t637 c4637; mov t638 c4638;
mov t639 c4639; mov t640 c4640; mov t641 c4641;
mov t642 c4642; mov t643 c4643; mov t644 c4644;
mov t645 c4645; mov t646 c4646; mov t647 c4647;
mov t648 c4648; mov t649 c4649; mov t650 c4650;
mov t651 c4651; mov t652 c4652; mov t653 c4653;
mov t654 c4654; mov t655 c4655; mov t656 c4656;
mov t657 c4657; mov t658 c4658; mov t659 c4659;
mov t660 c4660; mov t661 c4661; mov t662 c4662;
mov t663 c4663;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0720 t101 t100;
mov t600 c4700; mov t601 c4701; mov t602 c4702;
mov t603 c4703; mov t604 c4704; mov t605 c4705;
mov t606 c4706; mov t607 c4707; mov t608 c4708;
mov t609 c4709; mov t610 c4710; mov t611 c4711;
mov t612 c4712; mov t613 c4713; mov t614 c4714;
mov t615 c4715; mov t616 c4716; mov t617 c4717;
mov t618 c4718; mov t619 c4719; mov t620 c4720;
mov t621 c4721; mov t622 c4722; mov t623 c4723;
mov t624 c4724; mov t625 c4725; mov t626 c4726;
mov t627 c4727; mov t628 c4728; mov t629 c4729;
mov t630 c4730; mov t631 c4731; mov t632 c4732;
mov t633 c4733; mov t634 c4734; mov t635 c4735;
mov t636 c4736; mov t637 c4737; mov t638 c4738;
mov t639 c4739; mov t640 c4740; mov t641 c4741;
mov t642 c4742; mov t643 c4743; mov t644 c4744;
mov t645 c4745; mov t646 c4746; mov t647 c4747;
mov t648 c4748; mov t649 c4749; mov t650 c4750;
mov t651 c4751; mov t652 c4752; mov t653 c4753;
mov t654 c4754; mov t655 c4755; mov t656 c4756;
mov t657 c4757; mov t658 c4758; mov t659 c4759;
mov t660 c4760; mov t661 c4761; mov t662 c4762;
mov t663 c4763;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0728 t101 t100;
mov t600 c4800; mov t601 c4801; mov t602 c4802;
mov t603 c4803; mov t604 c4804; mov t605 c4805;
mov t606 c4806; mov t607 c4807; mov t608 c4808;
mov t609 c4809; mov t610 c4810; mov t611 c4811;
mov t612 c4812; mov t613 c4813; mov t614 c4814;
mov t615 c4815; mov t616 c4816; mov t617 c4817;
mov t618 c4818; mov t619 c4819; mov t620 c4820;
mov t621 c4821; mov t622 c4822; mov t623 c4823;
mov t624 c4824; mov t625 c4825; mov t626 c4826;
mov t627 c4827; mov t628 c4828; mov t629 c4829;
mov t630 c4830; mov t631 c4831; mov t632 c4832;
mov t633 c4833; mov t634 c4834; mov t635 c4835;
mov t636 c4836; mov t637 c4837; mov t638 c4838;
mov t639 c4839; mov t640 c4840; mov t641 c4841;
mov t642 c4842; mov t643 c4843; mov t644 c4844;
mov t645 c4845; mov t646 c4846; mov t647 c4847;
mov t648 c4848; mov t649 c4849; mov t650 c4850;
mov t651 c4851; mov t652 c4852; mov t653 c4853;
mov t654 c4854; mov t655 c4855; mov t656 c4856;
mov t657 c4857; mov t658 c4858; mov t659 c4859;
mov t660 c4860; mov t661 c4861; mov t662 c4862;
mov t663 c4863;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0730 t101 t100;
mov t600 c4900; mov t601 c4901; mov t602 c4902;
mov t603 c4903; mov t604 c4904; mov t605 c4905;
mov t606 c4906; mov t607 c4907; mov t608 c4908;
mov t609 c4909; mov t610 c4910; mov t611 c4911;
mov t612 c4912; mov t613 c4913; mov t614 c4914;
mov t615 c4915; mov t616 c4916; mov t617 c4917;
mov t618 c4918; mov t619 c4919; mov t620 c4920;
mov t621 c4921; mov t622 c4922; mov t623 c4923;
mov t624 c4924; mov t625 c4925; mov t626 c4926;
mov t627 c4927; mov t628 c4928; mov t629 c4929;
mov t630 c4930; mov t631 c4931; mov t632 c4932;
mov t633 c4933; mov t634 c4934; mov t635 c4935;
mov t636 c4936; mov t637 c4937; mov t638 c4938;
mov t639 c4939; mov t640 c4940; mov t641 c4941;
mov t642 c4942; mov t643 c4943; mov t644 c4944;
mov t645 c4945; mov t646 c4946; mov t647 c4947;
mov t648 c4948; mov t649 c4949; mov t650 c4950;
mov t651 c4951; mov t652 c4952; mov t653 c4953;
mov t654 c4954; mov t655 c4955; mov t656 c4956;
mov t657 c4957; mov t658 c4958; mov t659 c4959;
mov t660 c4960; mov t661 c4961; mov t662 c4962;
mov t663 c4963;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0738 t101 t100;
mov t600 c5000; mov t601 c5001; mov t602 c5002;
mov t603 c5003; mov t604 c5004; mov t605 c5005;
mov t606 c5006; mov t607 c5007; mov t608 c5008;
mov t609 c5009; mov t610 c5010; mov t611 c5011;
mov t612 c5012; mov t613 c5013; mov t614 c5014;
mov t615 c5015; mov t616 c5016; mov t617 c5017;
mov t618 c5018; mov t619 c5019; mov t620 c5020;
mov t621 c5021; mov t622 c5022; mov t623 c5023;
mov t624 c5024; mov t625 c5025; mov t626 c5026;
mov t627 c5027; mov t628 c5028; mov t629 c5029;
mov t630 c5030; mov t631 c5031; mov t632 c5032;
mov t633 c5033; mov t634 c5034; mov t635 c5035;
mov t636 c5036; mov t637 c5037; mov t638 c5038;
mov t639 c5039; mov t640 c5040; mov t641 c5041;
mov t642 c5042; mov t643 c5043; mov t644 c5044;
mov t645 c5045; mov t646 c5046; mov t647 c5047;
mov t648 c5048; mov t649 c5049; mov t650 c5050;
mov t651 c5051; mov t652 c5052; mov t653 c5053;
mov t654 c5054; mov t655 c5055; mov t656 c5056;
mov t657 c5057; mov t658 c5058; mov t659 c5059;
mov t660 c5060; mov t661 c5061; mov t662 c5062;
mov t663 c5063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0740 t101 t100;
mov t600 c5100; mov t601 c5101; mov t602 c5102;
mov t603 c5103; mov t604 c5104; mov t605 c5105;
mov t606 c5106; mov t607 c5107; mov t608 c5108;
mov t609 c5109; mov t610 c5110; mov t611 c5111;
mov t612 c5112; mov t613 c5113; mov t614 c5114;
mov t615 c5115; mov t616 c5116; mov t617 c5117;
mov t618 c5118; mov t619 c5119; mov t620 c5120;
mov t621 c5121; mov t622 c5122; mov t623 c5123;
mov t624 c5124; mov t625 c5125; mov t626 c5126;
mov t627 c5127; mov t628 c5128; mov t629 c5129;
mov t630 c5130; mov t631 c5131; mov t632 c5132;
mov t633 c5133; mov t634 c5134; mov t635 c5135;
mov t636 c5136; mov t637 c5137; mov t638 c5138;
mov t639 c5139; mov t640 c5140; mov t641 c5141;
mov t642 c5142; mov t643 c5143; mov t644 c5144;
mov t645 c5145; mov t646 c5146; mov t647 c5147;
mov t648 c5148; mov t649 c5149; mov t650 c5150;
mov t651 c5151; mov t652 c5152; mov t653 c5153;
mov t654 c5154; mov t655 c5155; mov t656 c5156;
mov t657 c5157; mov t658 c5158; mov t659 c5159;
mov t660 c5160; mov t661 c5161; mov t662 c5162;
mov t663 c5163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0748 t101 t100;
mov t600 c5200; mov t601 c5201; mov t602 c5202;
mov t603 c5203; mov t604 c5204; mov t605 c5205;
mov t606 c5206; mov t607 c5207; mov t608 c5208;
mov t609 c5209; mov t610 c5210; mov t611 c5211;
mov t612 c5212; mov t613 c5213; mov t614 c5214;
mov t615 c5215; mov t616 c5216; mov t617 c5217;
mov t618 c5218; mov t619 c5219; mov t620 c5220;
mov t621 c5221; mov t622 c5222; mov t623 c5223;
mov t624 c5224; mov t625 c5225; mov t626 c5226;
mov t627 c5227; mov t628 c5228; mov t629 c5229;
mov t630 c5230; mov t631 c5231; mov t632 c5232;
mov t633 c5233; mov t634 c5234; mov t635 c5235;
mov t636 c5236; mov t637 c5237; mov t638 c5238;
mov t639 c5239; mov t640 c5240; mov t641 c5241;
mov t642 c5242; mov t643 c5243; mov t644 c5244;
mov t645 c5245; mov t646 c5246; mov t647 c5247;
mov t648 c5248; mov t649 c5249; mov t650 c5250;
mov t651 c5251; mov t652 c5252; mov t653 c5253;
mov t654 c5254; mov t655 c5255; mov t656 c5256;
mov t657 c5257; mov t658 c5258; mov t659 c5259;
mov t660 c5260; mov t661 c5261; mov t662 c5262;
mov t663 c5263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0750 t101 t100;
mov t600 c5300; mov t601 c5301; mov t602 c5302;
mov t603 c5303; mov t604 c5304; mov t605 c5305;
mov t606 c5306; mov t607 c5307; mov t608 c5308;
mov t609 c5309; mov t610 c5310; mov t611 c5311;
mov t612 c5312; mov t613 c5313; mov t614 c5314;
mov t615 c5315; mov t616 c5316; mov t617 c5317;
mov t618 c5318; mov t619 c5319; mov t620 c5320;
mov t621 c5321; mov t622 c5322; mov t623 c5323;
mov t624 c5324; mov t625 c5325; mov t626 c5326;
mov t627 c5327; mov t628 c5328; mov t629 c5329;
mov t630 c5330; mov t631 c5331; mov t632 c5332;
mov t633 c5333; mov t634 c5334; mov t635 c5335;
mov t636 c5336; mov t637 c5337; mov t638 c5338;
mov t639 c5339; mov t640 c5340; mov t641 c5341;
mov t642 c5342; mov t643 c5343; mov t644 c5344;
mov t645 c5345; mov t646 c5346; mov t647 c5347;
mov t648 c5348; mov t649 c5349; mov t650 c5350;
mov t651 c5351; mov t652 c5352; mov t653 c5353;
mov t654 c5354; mov t655 c5355; mov t656 c5356;
mov t657 c5357; mov t658 c5358; mov t659 c5359;
mov t660 c5360; mov t661 c5361; mov t662 c5362;
mov t663 c5363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0758 t101 t100;
mov t600 c5400; mov t601 c5401; mov t602 c5402;
mov t603 c5403; mov t604 c5404; mov t605 c5405;
mov t606 c5406; mov t607 c5407; mov t608 c5408;
mov t609 c5409; mov t610 c5410; mov t611 c5411;
mov t612 c5412; mov t613 c5413; mov t614 c5414;
mov t615 c5415; mov t616 c5416; mov t617 c5417;
mov t618 c5418; mov t619 c5419; mov t620 c5420;
mov t621 c5421; mov t622 c5422; mov t623 c5423;
mov t624 c5424; mov t625 c5425; mov t626 c5426;
mov t627 c5427; mov t628 c5428; mov t629 c5429;
mov t630 c5430; mov t631 c5431; mov t632 c5432;
mov t633 c5433; mov t634 c5434; mov t635 c5435;
mov t636 c5436; mov t637 c5437; mov t638 c5438;
mov t639 c5439; mov t640 c5440; mov t641 c5441;
mov t642 c5442; mov t643 c5443; mov t644 c5444;
mov t645 c5445; mov t646 c5446; mov t647 c5447;
mov t648 c5448; mov t649 c5449; mov t650 c5450;
mov t651 c5451; mov t652 c5452; mov t653 c5453;
mov t654 c5454; mov t655 c5455; mov t656 c5456;
mov t657 c5457; mov t658 c5458; mov t659 c5459;
mov t660 c5460; mov t661 c5461; mov t662 c5462;
mov t663 c5463;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0760 t101 t100;
mov t600 c5500; mov t601 c5501; mov t602 c5502;
mov t603 c5503; mov t604 c5504; mov t605 c5505;
mov t606 c5506; mov t607 c5507; mov t608 c5508;
mov t609 c5509; mov t610 c5510; mov t611 c5511;
mov t612 c5512; mov t613 c5513; mov t614 c5514;
mov t615 c5515; mov t616 c5516; mov t617 c5517;
mov t618 c5518; mov t619 c5519; mov t620 c5520;
mov t621 c5521; mov t622 c5522; mov t623 c5523;
mov t624 c5524; mov t625 c5525; mov t626 c5526;
mov t627 c5527; mov t628 c5528; mov t629 c5529;
mov t630 c5530; mov t631 c5531; mov t632 c5532;
mov t633 c5533; mov t634 c5534; mov t635 c5535;
mov t636 c5536; mov t637 c5537; mov t638 c5538;
mov t639 c5539; mov t640 c5540; mov t641 c5541;
mov t642 c5542; mov t643 c5543; mov t644 c5544;
mov t645 c5545; mov t646 c5546; mov t647 c5547;
mov t648 c5548; mov t649 c5549; mov t650 c5550;
mov t651 c5551; mov t652 c5552; mov t653 c5553;
mov t654 c5554; mov t655 c5555; mov t656 c5556;
mov t657 c5557; mov t658 c5558; mov t659 c5559;
mov t660 c5560; mov t661 c5561; mov t662 c5562;
mov t663 c5563;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0768 t101 t100;
mov t600 c5600; mov t601 c5601; mov t602 c5602;
mov t603 c5603; mov t604 c5604; mov t605 c5605;
mov t606 c5606; mov t607 c5607; mov t608 c5608;
mov t609 c5609; mov t610 c5610; mov t611 c5611;
mov t612 c5612; mov t613 c5613; mov t614 c5614;
mov t615 c5615; mov t616 c5616; mov t617 c5617;
mov t618 c5618; mov t619 c5619; mov t620 c5620;
mov t621 c5621; mov t622 c5622; mov t623 c5623;
mov t624 c5624; mov t625 c5625; mov t626 c5626;
mov t627 c5627; mov t628 c5628; mov t629 c5629;
mov t630 c5630; mov t631 c5631; mov t632 c5632;
mov t633 c5633; mov t634 c5634; mov t635 c5635;
mov t636 c5636; mov t637 c5637; mov t638 c5638;
mov t639 c5639; mov t640 c5640; mov t641 c5641;
mov t642 c5642; mov t643 c5643; mov t644 c5644;
mov t645 c5645; mov t646 c5646; mov t647 c5647;
mov t648 c5648; mov t649 c5649; mov t650 c5650;
mov t651 c5651; mov t652 c5652; mov t653 c5653;
mov t654 c5654; mov t655 c5655; mov t656 c5656;
mov t657 c5657; mov t658 c5658; mov t659 c5659;
mov t660 c5660; mov t661 c5661; mov t662 c5662;
mov t663 c5663;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0770 t101 t100;
mov t600 c5700; mov t601 c5701; mov t602 c5702;
mov t603 c5703; mov t604 c5704; mov t605 c5705;
mov t606 c5706; mov t607 c5707; mov t608 c5708;
mov t609 c5709; mov t610 c5710; mov t611 c5711;
mov t612 c5712; mov t613 c5713; mov t614 c5714;
mov t615 c5715; mov t616 c5716; mov t617 c5717;
mov t618 c5718; mov t619 c5719; mov t620 c5720;
mov t621 c5721; mov t622 c5722; mov t623 c5723;
mov t624 c5724; mov t625 c5725; mov t626 c5726;
mov t627 c5727; mov t628 c5728; mov t629 c5729;
mov t630 c5730; mov t631 c5731; mov t632 c5732;
mov t633 c5733; mov t634 c5734; mov t635 c5735;
mov t636 c5736; mov t637 c5737; mov t638 c5738;
mov t639 c5739; mov t640 c5740; mov t641 c5741;
mov t642 c5742; mov t643 c5743; mov t644 c5744;
mov t645 c5745; mov t646 c5746; mov t647 c5747;
mov t648 c5748; mov t649 c5749; mov t650 c5750;
mov t651 c5751; mov t652 c5752; mov t653 c5753;
mov t654 c5754; mov t655 c5755; mov t656 c5756;
mov t657 c5757; mov t658 c5758; mov t659 c5759;
mov t660 c5760; mov t661 c5761; mov t662 c5762;
mov t663 c5763;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0778 t101 t100;
mov t600 c5800; mov t601 c5801; mov t602 c5802;
mov t603 c5803; mov t604 c5804; mov t605 c5805;
mov t606 c5806; mov t607 c5807; mov t608 c5808;
mov t609 c5809; mov t610 c5810; mov t611 c5811;
mov t612 c5812; mov t613 c5813; mov t614 c5814;
mov t615 c5815; mov t616 c5816; mov t617 c5817;
mov t618 c5818; mov t619 c5819; mov t620 c5820;
mov t621 c5821; mov t622 c5822; mov t623 c5823;
mov t624 c5824; mov t625 c5825; mov t626 c5826;
mov t627 c5827; mov t628 c5828; mov t629 c5829;
mov t630 c5830; mov t631 c5831; mov t632 c5832;
mov t633 c5833; mov t634 c5834; mov t635 c5835;
mov t636 c5836; mov t637 c5837; mov t638 c5838;
mov t639 c5839; mov t640 c5840; mov t641 c5841;
mov t642 c5842; mov t643 c5843; mov t644 c5844;
mov t645 c5845; mov t646 c5846; mov t647 c5847;
mov t648 c5848; mov t649 c5849; mov t650 c5850;
mov t651 c5851; mov t652 c5852; mov t653 c5853;
mov t654 c5854; mov t655 c5855; mov t656 c5856;
mov t657 c5857; mov t658 c5858; mov t659 c5859;
mov t660 c5860; mov t661 c5861; mov t662 c5862;
mov t663 c5863;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0780 t101 t100;
mov t600 c5900; mov t601 c5901; mov t602 c5902;
mov t603 c5903; mov t604 c5904; mov t605 c5905;
mov t606 c5906; mov t607 c5907; mov t608 c5908;
mov t609 c5909; mov t610 c5910; mov t611 c5911;
mov t612 c5912; mov t613 c5913; mov t614 c5914;
mov t615 c5915; mov t616 c5916; mov t617 c5917;
mov t618 c5918; mov t619 c5919; mov t620 c5920;
mov t621 c5921; mov t622 c5922; mov t623 c5923;
mov t624 c5924; mov t625 c5925; mov t626 c5926;
mov t627 c5927; mov t628 c5928; mov t629 c5929;
mov t630 c5930; mov t631 c5931; mov t632 c5932;
mov t633 c5933; mov t634 c5934; mov t635 c5935;
mov t636 c5936; mov t637 c5937; mov t638 c5938;
mov t639 c5939; mov t640 c5940; mov t641 c5941;
mov t642 c5942; mov t643 c5943; mov t644 c5944;
mov t645 c5945; mov t646 c5946; mov t647 c5947;
mov t648 c5948; mov t649 c5949; mov t650 c5950;
mov t651 c5951; mov t652 c5952; mov t653 c5953;
mov t654 c5954; mov t655 c5955; mov t656 c5956;
mov t657 c5957; mov t658 c5958; mov t659 c5959;
mov t660 c5960; mov t661 c5961; mov t662 c5962;
mov t663 c5963;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0788 t101 t100;
mov t600 c6000; mov t601 c6001; mov t602 c6002;
mov t603 c6003; mov t604 c6004; mov t605 c6005;
mov t606 c6006; mov t607 c6007; mov t608 c6008;
mov t609 c6009; mov t610 c6010; mov t611 c6011;
mov t612 c6012; mov t613 c6013; mov t614 c6014;
mov t615 c6015; mov t616 c6016; mov t617 c6017;
mov t618 c6018; mov t619 c6019; mov t620 c6020;
mov t621 c6021; mov t622 c6022; mov t623 c6023;
mov t624 c6024; mov t625 c6025; mov t626 c6026;
mov t627 c6027; mov t628 c6028; mov t629 c6029;
mov t630 c6030; mov t631 c6031; mov t632 c6032;
mov t633 c6033; mov t634 c6034; mov t635 c6035;
mov t636 c6036; mov t637 c6037; mov t638 c6038;
mov t639 c6039; mov t640 c6040; mov t641 c6041;
mov t642 c6042; mov t643 c6043; mov t644 c6044;
mov t645 c6045; mov t646 c6046; mov t647 c6047;
mov t648 c6048; mov t649 c6049; mov t650 c6050;
mov t651 c6051; mov t652 c6052; mov t653 c6053;
mov t654 c6054; mov t655 c6055; mov t656 c6056;
mov t657 c6057; mov t658 c6058; mov t659 c6059;
mov t660 c6060; mov t661 c6061; mov t662 c6062;
mov t663 c6063;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0790 t101 t100;
mov t600 c6100; mov t601 c6101; mov t602 c6102;
mov t603 c6103; mov t604 c6104; mov t605 c6105;
mov t606 c6106; mov t607 c6107; mov t608 c6108;
mov t609 c6109; mov t610 c6110; mov t611 c6111;
mov t612 c6112; mov t613 c6113; mov t614 c6114;
mov t615 c6115; mov t616 c6116; mov t617 c6117;
mov t618 c6118; mov t619 c6119; mov t620 c6120;
mov t621 c6121; mov t622 c6122; mov t623 c6123;
mov t624 c6124; mov t625 c6125; mov t626 c6126;
mov t627 c6127; mov t628 c6128; mov t629 c6129;
mov t630 c6130; mov t631 c6131; mov t632 c6132;
mov t633 c6133; mov t634 c6134; mov t635 c6135;
mov t636 c6136; mov t637 c6137; mov t638 c6138;
mov t639 c6139; mov t640 c6140; mov t641 c6141;
mov t642 c6142; mov t643 c6143; mov t644 c6144;
mov t645 c6145; mov t646 c6146; mov t647 c6147;
mov t648 c6148; mov t649 c6149; mov t650 c6150;
mov t651 c6151; mov t652 c6152; mov t653 c6153;
mov t654 c6154; mov t655 c6155; mov t656 c6156;
mov t657 c6157; mov t658 c6158; mov t659 c6159;
mov t660 c6160; mov t661 c6161; mov t662 c6162;
mov t663 c6163;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff0798 t101 t100;
mov t600 c6200; mov t601 c6201; mov t602 c6202;
mov t603 c6203; mov t604 c6204; mov t605 c6205;
mov t606 c6206; mov t607 c6207; mov t608 c6208;
mov t609 c6209; mov t610 c6210; mov t611 c6211;
mov t612 c6212; mov t613 c6213; mov t614 c6214;
mov t615 c6215; mov t616 c6216; mov t617 c6217;
mov t618 c6218; mov t619 c6219; mov t620 c6220;
mov t621 c6221; mov t622 c6222; mov t623 c6223;
mov t624 c6224; mov t625 c6225; mov t626 c6226;
mov t627 c6227; mov t628 c6228; mov t629 c6229;
mov t630 c6230; mov t631 c6231; mov t632 c6232;
mov t633 c6233; mov t634 c6234; mov t635 c6235;
mov t636 c6236; mov t637 c6237; mov t638 c6238;
mov t639 c6239; mov t640 c6240; mov t641 c6241;
mov t642 c6242; mov t643 c6243; mov t644 c6244;
mov t645 c6245; mov t646 c6246; mov t647 c6247;
mov t648 c6248; mov t649 c6249; mov t650 c6250;
mov t651 c6251; mov t652 c6252; mov t653 c6253;
mov t654 c6254; mov t655 c6255; mov t656 c6256;
mov t657 c6257; mov t658 c6258; mov t659 c6259;
mov t660 c6260; mov t661 c6261; mov t662 c6262;
mov t663 c6263;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff07a0 t101 t100;
mov t600 c6300; mov t601 c6301; mov t602 c6302;
mov t603 c6303; mov t604 c6304; mov t605 c6305;
mov t606 c6306; mov t607 c6307; mov t608 c6308;
mov t609 c6309; mov t610 c6310; mov t611 c6311;
mov t612 c6312; mov t613 c6313; mov t614 c6314;
mov t615 c6315; mov t616 c6316; mov t617 c6317;
mov t618 c6318; mov t619 c6319; mov t620 c6320;
mov t621 c6321; mov t622 c6322; mov t623 c6323;
mov t624 c6324; mov t625 c6325; mov t626 c6326;
mov t627 c6327; mov t628 c6328; mov t629 c6329;
mov t630 c6330; mov t631 c6331; mov t632 c6332;
mov t633 c6333; mov t634 c6334; mov t635 c6335;
mov t636 c6336; mov t637 c6337; mov t638 c6338;
mov t639 c6339; mov t640 c6340; mov t641 c6341;
mov t642 c6342; mov t643 c6343; mov t644 c6344;
mov t645 c6345; mov t646 c6346; mov t647 c6347;
mov t648 c6348; mov t649 c6349; mov t650 c6350;
mov t651 c6351; mov t652 c6352; mov t653 c6353;
mov t654 c6354; mov t655 c6355; mov t656 c6356;
mov t657 c6357; mov t658 c6358; mov t659 c6359;
mov t660 c6360; mov t661 c6361; mov t662 c6362;
mov t663 c6363;
join t500 t601 t600; join t501 t603 t602; join t502 t605 t604;
join t503 t607 t606; join t504 t609 t608; join t505 t611 t610;
join t506 t613 t612; join t507 t615 t614; join t508 t617 t616;
join t509 t619 t618; join t510 t621 t620; join t511 t623 t622;
join t512 t625 t624; join t513 t627 t626; join t514 t629 t628;
join t515 t631 t630; join t516 t633 t632; join t517 t635 t634;
join t518 t637 t636; join t519 t639 t638; join t520 t641 t640;
join t521 t643 t642; join t522 t645 t644; join t523 t647 t646;
join t524 t649 t648; join t525 t651 t650; join t526 t653 t652;
join t527 t655 t654; join t528 t657 t656; join t529 t659 t658;
join t530 t661 t660; join t531 t663 t662;
join t400 t501 t500; join t401 t503 t502; join t402 t505 t504;
join t403 t507 t506; join t404 t509 t508; join t405 t511 t510;
join t406 t513 t512; join t407 t515 t514; join t408 t517 t516;
join t409 t519 t518; join t410 t521 t520; join t411 t523 t522;
join t412 t525 t524; join t413 t527 t526; join t414 t529 t528;
join t415 t531 t530;
join t300 t401 t400; join t301 t403 t402; join t302 t405 t404;
join t303 t407 t406; join t304 t409 t408; join t305 t411 t410;
join t306 t413 t412; join t307 t415 t414;
join t200 t301 t300; join t201 t303 t302; join t202 t305 t304;
join t203 t307 t306;
join t100 t201 t200; join t101 t203 t202;
join L0x7fffffff07a8 t101 t100;



(**************** constants *****************)

mov L0x55555558c760 0x5555555555555555@uint64;
mov L0x55555558c768 0x5555555555555555@uint64;
mov L0x55555558c770 0x5555555555555555@uint64;
mov L0x55555558c778 0x5555555555555555@uint64;
mov L0x55555558c780 0xaaaaaaaaaaaaaaaa@uint64;
mov L0x55555558c788 0xaaaaaaaaaaaaaaaa@uint64;
mov L0x55555558c790 0xaaaaaaaaaaaaaaaa@uint64;
mov L0x55555558c798 0xaaaaaaaaaaaaaaaa@uint64;
mov L0x55555558c7a0 0x3333333333333333@uint64;
mov L0x55555558c7a8 0x3333333333333333@uint64;
mov L0x55555558c7b0 0x3333333333333333@uint64;
mov L0x55555558c7b8 0x3333333333333333@uint64;
mov L0x55555558c7c0 0xcccccccccccccccc@uint64;
mov L0x55555558c7c8 0xcccccccccccccccc@uint64;
mov L0x55555558c7d0 0xcccccccccccccccc@uint64;
mov L0x55555558c7d8 0xcccccccccccccccc@uint64;
mov L0x55555558c7e0 0x0f0f0f0f0f0f0f0f@uint64;
mov L0x55555558c7e8 0x0f0f0f0f0f0f0f0f@uint64;
mov L0x55555558c7f0 0x0f0f0f0f0f0f0f0f@uint64;
mov L0x55555558c7f8 0x0f0f0f0f0f0f0f0f@uint64;
mov L0x55555558c800 0xf0f0f0f0f0f0f0f0@uint64;
mov L0x55555558c808 0xf0f0f0f0f0f0f0f0@uint64;
mov L0x55555558c810 0xf0f0f0f0f0f0f0f0@uint64;
mov L0x55555558c818 0xf0f0f0f0f0f0f0f0@uint64;
mov L0x55555558c820 0x00ff00ff00ff00ff@uint64;
mov L0x55555558c828 0x00ff00ff00ff00ff@uint64;
mov L0x55555558c830 0x00ff00ff00ff00ff@uint64;
mov L0x55555558c838 0x00ff00ff00ff00ff@uint64;
mov L0x55555558c840 0xff00ff00ff00ff00@uint64;
mov L0x55555558c848 0xff00ff00ff00ff00@uint64;
mov L0x55555558c850 0xff00ff00ff00ff00@uint64;
mov L0x55555558c858 0xff00ff00ff00ff00@uint64;
mov L0x55555558c860 0x0000ffff0000ffff@uint64;
mov L0x55555558c868 0x0000ffff0000ffff@uint64;
mov L0x55555558c870 0x0000ffff0000ffff@uint64;
mov L0x55555558c878 0x0000ffff0000ffff@uint64;
mov L0x55555558c880 0xffff0000ffff0000@uint64;
mov L0x55555558c888 0xffff0000ffff0000@uint64;
mov L0x55555558c890 0xffff0000ffff0000@uint64;
mov L0x55555558c898 0xffff0000ffff0000@uint64;
mov L0x55555558c8a0 0x00000000ffffffff@uint64;
mov L0x55555558c8a8 0x00000000ffffffff@uint64;
mov L0x55555558c8b0 0x00000000ffffffff@uint64;
mov L0x55555558c8b8 0x00000000ffffffff@uint64;
mov L0x55555558c8c0 0xffffffff00000000@uint64;
mov L0x55555558c8c8 0xffffffff00000000@uint64;
mov L0x55555558c8d0 0xffffffff00000000@uint64;
mov L0x55555558c8d8 0xffffffff00000000@uint64;



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
join xmm0 L0x55555558c8a8 L0x55555558c8a0;
(* movdqa 0x10022(%rip),%xmm1        # 0x55555558c8c0#! EA = L0x55555558c8c0; Value = 0xffffffff00000000; PC = 0x55555557c896 *)
join xmm1 L0x55555558c8c8 L0x55555558c8c0;
(* movdqa 0xffba(%rip),%xmm2        # 0x55555558c860#! EA = L0x55555558c860; Value = 0x0000ffff0000ffff; PC = 0x55555557c89e *)
join xmm2 L0x55555558c868 L0x55555558c860;
(* movdqa 0xffd2(%rip),%xmm3        # 0x55555558c880#! EA = L0x55555558c880; Value = 0xffff0000ffff0000; PC = 0x55555557c8a6 *)
join xmm3 L0x55555558c888 L0x55555558c880;
(* movdqa 0xff6a(%rip),%xmm4        # 0x55555558c820#! EA = L0x55555558c820; Value = 0x00ff00ff00ff00ff; PC = 0x55555557c8ae *)
join xmm4 L0x55555558c828 L0x55555558c820;
(* movdqa 0xff82(%rip),%xmm5        # 0x55555558c840#! EA = L0x55555558c840; Value = 0xff00ff00ff00ff00; PC = 0x55555557c8b6 *)
join xmm5 L0x55555558c848 L0x55555558c840;
(* movddup (%rdi),%xmm6                            #! EA = L0x7fffffff05b0; Value = 0x0000000000000001; PC = 0x55555557c8be *)
join xmm6 L0x7fffffff05b0 L0x7fffffff05b0;
(* movddup 0x40(%rdi),%xmm7                        #! EA = L0x7fffffff05f0; Value = 0x6fe2ad7f9b95b32d; PC = 0x55555557c8c2 *)
join xmm7 L0x7fffffff05f0 L0x7fffffff05f0;
(* movddup 0x80(%rdi),%xmm8                        #! EA = L0x7fffffff0630; Value = 0xd32a8990142a0e66; PC = 0x55555557c8c7 *)
join xmm8 L0x7fffffff0630 L0x7fffffff0630;
(* movddup 0xc0(%rdi),%xmm9                        #! EA = L0x7fffffff0670; Value = 0x824c5184036ea71f; PC = 0x55555557c8d0 *)
join xmm9 L0x7fffffff0670 L0x7fffffff0670;
(* movddup 0x100(%rdi),%xmm10                      #! EA = L0x7fffffff06b0; Value = 0xcc88f6b6c499bdda; PC = 0x55555557c8d9 *)
join xmm10 L0x7fffffff06b0 L0x7fffffff06b0;
(* movddup 0x140(%rdi),%xmm11                      #! EA = L0x7fffffff06f0; Value = 0xa5023d76b39e2b51; PC = 0x55555557c8e2 *)
join xmm11 L0x7fffffff06f0 L0x7fffffff06f0;
(* movddup 0x180(%rdi),%xmm12                      #! EA = L0x7fffffff0730; Value = 0x570db3dc21d4c201; PC = 0x55555557c8eb *)
join xmm12 L0x7fffffff0730 L0x7fffffff0730;
(* movddup 0x1c0(%rdi),%xmm13                      #! EA = L0x7fffffff0770; Value = 0xa7256f2097b52aef; PC = 0x55555557c8f4 *)
join xmm13 L0x7fffffff0770 L0x7fffffff0770;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557c8fd *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557c901 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557c907 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557c90c *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557c910 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557c915 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557c91a *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557c91e *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557c924 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557c929 *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557c92d *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557c932 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557c937 *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557c93b *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557c941 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557c947 *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557c94b *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557c950 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557c955 *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557c959 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557c95f *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557c965 *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557c969 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557c96e *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557c973 *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557c977 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557c97d *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557c983 *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557c987 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557c98c *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557c991 *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557c995 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557c99b *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557c9a1 *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557c9a5 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557c9aa *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557c9af *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557c9b3 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557c9b9 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557c9be *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557c9c2 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557c9c7 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557c9cc *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557c9d0 *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557c9d6 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557c9db *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557c9df *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557c9e4 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557c9e9 *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557c9ed *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557c9f3 *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557c9f9 *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557c9fd *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557ca02 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557ca07 *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557ca0b *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557ca11 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557ca17 *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557ca1b *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557ca20 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557ca25 *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557ca29 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557ca2f *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557ca35 *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557ca39 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557ca3e *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557ca43 *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557ca47 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557ca4c *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557ca51 *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557ca55 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557ca5a *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557ca5e *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,(%rdi)                              #! EA = L0x7fffffff05b0; PC = 0x55555557ca65 *)
mov L0x7fffffff05b0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557ca68 *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x40(%rdi)                          #! EA = L0x7fffffff05f0; PC = 0x55555557ca6f *)
mov L0x7fffffff05f0 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557ca73 *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0x80(%rdi)                          #! EA = L0x7fffffff0630; PC = 0x55555557ca7a *)
mov L0x7fffffff0630 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557ca81 *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xc0(%rdi)                          #! EA = L0x7fffffff0670; PC = 0x55555557ca88 *)
mov L0x7fffffff0670 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557ca8f *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x100(%rdi)                         #! EA = L0x7fffffff06b0; PC = 0x55555557ca96 *)
mov L0x7fffffff06b0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557ca9d *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x140(%rdi)                         #! EA = L0x7fffffff06f0; PC = 0x55555557caa4 *)
mov L0x7fffffff06f0 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557caab *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x180(%rdi)                         #! EA = L0x7fffffff0730; PC = 0x55555557cab2 *)
mov L0x7fffffff0730 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557cab9 *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1c0(%rdi)                         #! EA = L0x7fffffff0770; PC = 0x55555557cac0 *)
mov L0x7fffffff0770 rsi;
(* movddup 0x8(%rdi),%xmm6                         #! EA = L0x7fffffff05b8; Value = 0x97edff5d0a8f8505; PC = 0x55555557cac7 *)
join xmm6 L0x7fffffff05b8 L0x7fffffff05b8;
(* movddup 0x48(%rdi),%xmm7                        #! EA = L0x7fffffff05f8; Value = 0x8a9e3853b7e61d82; PC = 0x55555557cacc *)
join xmm7 L0x7fffffff05f8 L0x7fffffff05f8;
(* movddup 0x88(%rdi),%xmm8                        #! EA = L0x7fffffff0638; Value = 0x3771dd1aade3d3db; PC = 0x55555557cad1 *)
join xmm8 L0x7fffffff0638 L0x7fffffff0638;
(* movddup 0xc8(%rdi),%xmm9                        #! EA = L0x7fffffff0678; Value = 0x48ed76b9984055d7; PC = 0x55555557cada *)
join xmm9 L0x7fffffff0678 L0x7fffffff0678;
(* movddup 0x108(%rdi),%xmm10                      #! EA = L0x7fffffff06b8; Value = 0x0d65c6c0275884cb; PC = 0x55555557cae3 *)
join xmm10 L0x7fffffff06b8 L0x7fffffff06b8;
(* movddup 0x148(%rdi),%xmm11                      #! EA = L0x7fffffff06f8; Value = 0xd493acabc17ddea5; PC = 0x55555557caec *)
join xmm11 L0x7fffffff06f8 L0x7fffffff06f8;
(* movddup 0x188(%rdi),%xmm12                      #! EA = L0x7fffffff0738; Value = 0xb9000a616d7be932; PC = 0x55555557caf5 *)
join xmm12 L0x7fffffff0738 L0x7fffffff0738;
(* movddup 0x1c8(%rdi),%xmm13                      #! EA = L0x7fffffff0778; Value = 0x29d1fecbed2ebd0b; PC = 0x55555557cafe *)
join xmm13 L0x7fffffff0778 L0x7fffffff0778;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557cb07 *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557cb0b *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557cb11 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557cb16 *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cb1a *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557cb1f *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557cb24 *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557cb28 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557cb2e *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557cb33 *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557cb37 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557cb3c *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557cb41 *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557cb45 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557cb4b *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557cb51 *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cb55 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557cb5a *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557cb5f *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557cb63 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557cb69 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557cb6f *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cb73 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557cb78 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557cb7d *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557cb81 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557cb87 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557cb8d *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557cb91 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557cb96 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557cb9b *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557cb9f *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557cba5 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557cbab *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cbaf *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557cbb4 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557cbb9 *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557cbbd *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557cbc3 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557cbc8 *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cbcc *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557cbd1 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557cbd6 *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557cbda *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557cbe0 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557cbe5 *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557cbe9 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557cbee *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557cbf3 *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557cbf7 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557cbfd *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557cc03 *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557cc07 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557cc0c *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557cc11 *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557cc15 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557cc1b *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557cc21 *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cc25 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557cc2a *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557cc2f *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557cc33 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557cc39 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557cc3f *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cc43 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557cc48 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557cc4d *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557cc51 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557cc56 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557cc5b *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cc5f *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557cc64 *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557cc68 *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x8(%rdi)                           #! EA = L0x7fffffff05b8; PC = 0x55555557cc6f *)
mov L0x7fffffff05b8 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557cc73 *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x48(%rdi)                          #! EA = L0x7fffffff05f8; PC = 0x55555557cc7a *)
mov L0x7fffffff05f8 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557cc7e *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0x88(%rdi)                          #! EA = L0x7fffffff0638; PC = 0x55555557cc85 *)
mov L0x7fffffff0638 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557cc8c *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xc8(%rdi)                          #! EA = L0x7fffffff0678; PC = 0x55555557cc93 *)
mov L0x7fffffff0678 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557cc9a *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x108(%rdi)                         #! EA = L0x7fffffff06b8; PC = 0x55555557cca1 *)
mov L0x7fffffff06b8 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557cca8 *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x148(%rdi)                         #! EA = L0x7fffffff06f8; PC = 0x55555557ccaf *)
mov L0x7fffffff06f8 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557ccb6 *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x188(%rdi)                         #! EA = L0x7fffffff0738; PC = 0x55555557ccbd *)
mov L0x7fffffff0738 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557ccc4 *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1c8(%rdi)                         #! EA = L0x7fffffff0778; PC = 0x55555557cccb *)
mov L0x7fffffff0778 rsi;
(* movddup 0x10(%rdi),%xmm6                        #! EA = L0x7fffffff05c0; Value = 0x771481155609930c; PC = 0x55555557ccd2 *)
join xmm6 L0x7fffffff05c0 L0x7fffffff05c0;
(* movddup 0x50(%rdi),%xmm7                        #! EA = L0x7fffffff0600; Value = 0x8e09c7efa534f0ef; PC = 0x55555557ccd7 *)
join xmm7 L0x7fffffff0600 L0x7fffffff0600;
(* movddup 0x90(%rdi),%xmm8                        #! EA = L0x7fffffff0640; Value = 0x8c810ce36aeb22f8; PC = 0x55555557ccdc *)
join xmm8 L0x7fffffff0640 L0x7fffffff0640;
(* movddup 0xd0(%rdi),%xmm9                        #! EA = L0x7fffffff0680; Value = 0x2f18a55767e9a7de; PC = 0x55555557cce5 *)
join xmm9 L0x7fffffff0680 L0x7fffffff0680;
(* movddup 0x110(%rdi),%xmm10                      #! EA = L0x7fffffff06c0; Value = 0x107a85d3d9812f5d; PC = 0x55555557ccee *)
join xmm10 L0x7fffffff06c0 L0x7fffffff06c0;
(* movddup 0x150(%rdi),%xmm11                      #! EA = L0x7fffffff0700; Value = 0xed2281ed835bb601; PC = 0x55555557ccf7 *)
join xmm11 L0x7fffffff0700 L0x7fffffff0700;
(* movddup 0x190(%rdi),%xmm12                      #! EA = L0x7fffffff0740; Value = 0xed721fcb367b754c; PC = 0x55555557cd00 *)
join xmm12 L0x7fffffff0740 L0x7fffffff0740;
(* movddup 0x1d0(%rdi),%xmm13                      #! EA = L0x7fffffff0780; Value = 0x22e62113e84893e2; PC = 0x55555557cd09 *)
join xmm13 L0x7fffffff0780 L0x7fffffff0780;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557cd12 *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557cd16 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557cd1c *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557cd21 *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cd25 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557cd2a *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557cd2f *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557cd33 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557cd39 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557cd3e *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557cd42 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557cd47 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557cd4c *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557cd50 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557cd56 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557cd5c *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cd60 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557cd65 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557cd6a *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557cd6e *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557cd74 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557cd7a *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cd7e *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557cd83 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557cd88 *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557cd8c *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557cd92 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557cd98 *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557cd9c *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557cda1 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557cda6 *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557cdaa *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557cdb0 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557cdb6 *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cdba *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557cdbf *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557cdc4 *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557cdc8 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557cdce *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557cdd3 *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cdd7 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557cddc *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557cde1 *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557cde5 *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557cdeb *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557cdf0 *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557cdf4 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557cdf9 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557cdfe *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557ce02 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557ce08 *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557ce0e *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557ce12 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557ce17 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557ce1c *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557ce20 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557ce26 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557ce2c *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557ce30 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557ce35 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557ce3a *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557ce3e *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557ce44 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557ce4a *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557ce4e *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557ce53 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557ce58 *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557ce5c *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557ce61 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557ce66 *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557ce6a *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557ce6f *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557ce73 *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x10(%rdi)                          #! EA = L0x7fffffff05c0; PC = 0x55555557ce7a *)
mov L0x7fffffff05c0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557ce7e *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7fffffff0600; PC = 0x55555557ce85 *)
mov L0x7fffffff0600 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557ce89 *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0x90(%rdi)                          #! EA = L0x7fffffff0640; PC = 0x55555557ce90 *)
mov L0x7fffffff0640 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557ce97 *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xd0(%rdi)                          #! EA = L0x7fffffff0680; PC = 0x55555557ce9e *)
mov L0x7fffffff0680 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557cea5 *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x110(%rdi)                         #! EA = L0x7fffffff06c0; PC = 0x55555557ceac *)
mov L0x7fffffff06c0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557ceb3 *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x150(%rdi)                         #! EA = L0x7fffffff0700; PC = 0x55555557ceba *)
mov L0x7fffffff0700 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557cec1 *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x190(%rdi)                         #! EA = L0x7fffffff0740; PC = 0x55555557cec8 *)
mov L0x7fffffff0740 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557cecf *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1d0(%rdi)                         #! EA = L0x7fffffff0780; PC = 0x55555557ced6 *)
mov L0x7fffffff0780 rsi;
(* movddup 0x18(%rdi),%xmm6                        #! EA = L0x7fffffff05c8; Value = 0x58f1f33b05f3eed0; PC = 0x55555557cedd *)
join xmm6 L0x7fffffff05c8 L0x7fffffff05c8;
(* movddup 0x58(%rdi),%xmm7                        #! EA = L0x7fffffff0608; Value = 0x4e21476ecdc1598b; PC = 0x55555557cee2 *)
join xmm7 L0x7fffffff0608 L0x7fffffff0608;
(* movddup 0x98(%rdi),%xmm8                        #! EA = L0x7fffffff0648; Value = 0x68b2638ec320bcaf; PC = 0x55555557cee7 *)
join xmm8 L0x7fffffff0648 L0x7fffffff0648;
(* movddup 0xd8(%rdi),%xmm9                        #! EA = L0x7fffffff0688; Value = 0x951914b9f87a9ad4; PC = 0x55555557cef0 *)
join xmm9 L0x7fffffff0688 L0x7fffffff0688;
(* movddup 0x118(%rdi),%xmm10                      #! EA = L0x7fffffff06c8; Value = 0x681500b2aaa2ea1f; PC = 0x55555557cef9 *)
join xmm10 L0x7fffffff06c8 L0x7fffffff06c8;
(* movddup 0x158(%rdi),%xmm11                      #! EA = L0x7fffffff0708; Value = 0x715afc2babcf71e3; PC = 0x55555557cf02 *)
join xmm11 L0x7fffffff0708 L0x7fffffff0708;
(* movddup 0x198(%rdi),%xmm12                      #! EA = L0x7fffffff0748; Value = 0x8493da0a84124a72; PC = 0x55555557cf0b *)
join xmm12 L0x7fffffff0748 L0x7fffffff0748;
(* movddup 0x1d8(%rdi),%xmm13                      #! EA = L0x7fffffff0788; Value = 0x5a09bd91c4d724ff; PC = 0x55555557cf14 *)
join xmm13 L0x7fffffff0788 L0x7fffffff0788;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557cf1d *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557cf21 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557cf27 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557cf2c *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cf30 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557cf35 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557cf3a *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557cf3e *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557cf44 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557cf49 *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557cf4d *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557cf52 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557cf57 *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557cf5b *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557cf61 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557cf67 *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557cf6b *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557cf70 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557cf75 *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557cf79 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557cf7f *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557cf85 *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cf89 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557cf8e *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557cf93 *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557cf97 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557cf9d *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557cfa3 *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557cfa7 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557cfac *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557cfb1 *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557cfb5 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557cfbb *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557cfc1 *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557cfc5 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557cfca *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557cfcf *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557cfd3 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557cfd9 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557cfde *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557cfe2 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557cfe7 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557cfec *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557cff0 *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557cff6 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557cffb *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557cfff *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d004 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d009 *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d00d *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d013 *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d019 *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d01d *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d022 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d027 *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d02b *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d031 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d037 *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d03b *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d040 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d045 *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d049 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d04f *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d055 *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d059 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d05e *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d063 *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d067 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d06c *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d071 *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d075 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d07a *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d07e *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffff05c8; PC = 0x55555557d085 *)
mov L0x7fffffff05c8 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d089 *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x58(%rdi)                          #! EA = L0x7fffffff0608; PC = 0x55555557d090 *)
mov L0x7fffffff0608 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d094 *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0x98(%rdi)                          #! EA = L0x7fffffff0648; PC = 0x55555557d09b *)
mov L0x7fffffff0648 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d0a2 *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xd8(%rdi)                          #! EA = L0x7fffffff0688; PC = 0x55555557d0a9 *)
mov L0x7fffffff0688 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d0b0 *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x118(%rdi)                         #! EA = L0x7fffffff06c8; PC = 0x55555557d0b7 *)
mov L0x7fffffff06c8 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d0be *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x158(%rdi)                         #! EA = L0x7fffffff0708; PC = 0x55555557d0c5 *)
mov L0x7fffffff0708 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d0cc *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x198(%rdi)                         #! EA = L0x7fffffff0748; PC = 0x55555557d0d3 *)
mov L0x7fffffff0748 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d0da *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1d8(%rdi)                         #! EA = L0x7fffffff0788; PC = 0x55555557d0e1 *)
mov L0x7fffffff0788 rsi;
(* movddup 0x20(%rdi),%xmm6                        #! EA = L0x7fffffff05d0; Value = 0x166046321f05d367; PC = 0x55555557d0e8 *)
join xmm6 L0x7fffffff05d0 L0x7fffffff05d0;
(* movddup 0x60(%rdi),%xmm7                        #! EA = L0x7fffffff0610; Value = 0x437963d4cda24a63; PC = 0x55555557d0ed *)
join xmm7 L0x7fffffff0610 L0x7fffffff0610;
(* movddup 0xa0(%rdi),%xmm8                        #! EA = L0x7fffffff0650; Value = 0x6d45a02cbf5b89fe; PC = 0x55555557d0f2 *)
join xmm8 L0x7fffffff0650 L0x7fffffff0650;
(* movddup 0xe0(%rdi),%xmm9                        #! EA = L0x7fffffff0690; Value = 0x34c70151762de917; PC = 0x55555557d0fb *)
join xmm9 L0x7fffffff0690 L0x7fffffff0690;
(* movddup 0x120(%rdi),%xmm10                      #! EA = L0x7fffffff06d0; Value = 0xdd2f69cda7836f14; PC = 0x55555557d104 *)
join xmm10 L0x7fffffff06d0 L0x7fffffff06d0;
(* movddup 0x160(%rdi),%xmm11                      #! EA = L0x7fffffff0710; Value = 0x16e15be263bd7510; PC = 0x55555557d10d *)
join xmm11 L0x7fffffff0710 L0x7fffffff0710;
(* movddup 0x1a0(%rdi),%xmm12                      #! EA = L0x7fffffff0750; Value = 0xa77a3103fb41a32a; PC = 0x55555557d116 *)
join xmm12 L0x7fffffff0750 L0x7fffffff0750;
(* movddup 0x1e0(%rdi),%xmm13                      #! EA = L0x7fffffff0790; Value = 0x2373a8fb88c48b39; PC = 0x55555557d11f *)
join xmm13 L0x7fffffff0790 L0x7fffffff0790;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d128 *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d12c *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d132 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d137 *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d13b *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d140 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d145 *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d149 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d14f *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d154 *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d158 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d15d *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d162 *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d166 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d16c *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d172 *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d176 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d17b *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d180 *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557d184 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d18a *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d190 *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d194 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d199 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d19e *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557d1a2 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557d1a8 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d1ae *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557d1b2 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557d1b7 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557d1bc *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557d1c0 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d1c6 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557d1cc *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d1d0 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557d1d5 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557d1da *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557d1de *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d1e4 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d1e9 *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d1ed *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d1f2 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557d1f7 *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557d1fb *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d201 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557d206 *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557d20a *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d20f *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d214 *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d218 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d21e *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d224 *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d228 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d22d *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d232 *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d236 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d23c *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d242 *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d246 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d24b *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d250 *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d254 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d25a *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d260 *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d264 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d269 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d26e *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d272 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d277 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d27c *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d280 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d285 *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d289 *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x20(%rdi)                          #! EA = L0x7fffffff05d0; PC = 0x55555557d290 *)
mov L0x7fffffff05d0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d294 *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x60(%rdi)                          #! EA = L0x7fffffff0610; PC = 0x55555557d29b *)
mov L0x7fffffff0610 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d29f *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0xa0(%rdi)                          #! EA = L0x7fffffff0650; PC = 0x55555557d2a6 *)
mov L0x7fffffff0650 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d2ad *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xe0(%rdi)                          #! EA = L0x7fffffff0690; PC = 0x55555557d2b4 *)
mov L0x7fffffff0690 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d2bb *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x120(%rdi)                         #! EA = L0x7fffffff06d0; PC = 0x55555557d2c2 *)
mov L0x7fffffff06d0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d2c9 *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x160(%rdi)                         #! EA = L0x7fffffff0710; PC = 0x55555557d2d0 *)
mov L0x7fffffff0710 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d2d7 *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x1a0(%rdi)                         #! EA = L0x7fffffff0750; PC = 0x55555557d2de *)
mov L0x7fffffff0750 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d2e5 *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1e0(%rdi)                         #! EA = L0x7fffffff0790; PC = 0x55555557d2ec *)
mov L0x7fffffff0790 rsi;
(* movddup 0x28(%rdi),%xmm6                        #! EA = L0x7fffffff05d8; Value = 0x72028865288c6d30; PC = 0x55555557d2f3 *)
join xmm6 L0x7fffffff05d8 L0x7fffffff05d8;
(* movddup 0x68(%rdi),%xmm7                        #! EA = L0x7fffffff0618; Value = 0x3b0f41892cb6ce1b; PC = 0x55555557d2f8 *)
join xmm7 L0x7fffffff0618 L0x7fffffff0618;
(* movddup 0xa8(%rdi),%xmm8                        #! EA = L0x7fffffff0658; Value = 0x18eec1188796ba05; PC = 0x55555557d2fd *)
join xmm8 L0x7fffffff0658 L0x7fffffff0658;
(* movddup 0xe8(%rdi),%xmm9                        #! EA = L0x7fffffff0698; Value = 0x2754853fe6f32b59; PC = 0x55555557d306 *)
join xmm9 L0x7fffffff0698 L0x7fffffff0698;
(* movddup 0x128(%rdi),%xmm10                      #! EA = L0x7fffffff06d8; Value = 0x099ac7742f1edc16; PC = 0x55555557d30f *)
join xmm10 L0x7fffffff06d8 L0x7fffffff06d8;
(* movddup 0x168(%rdi),%xmm11                      #! EA = L0x7fffffff0718; Value = 0x94a767f98fe3378e; PC = 0x55555557d318 *)
join xmm11 L0x7fffffff0718 L0x7fffffff0718;
(* movddup 0x1a8(%rdi),%xmm12                      #! EA = L0x7fffffff0758; Value = 0xdee53499aa6616c0; PC = 0x55555557d321 *)
join xmm12 L0x7fffffff0758 L0x7fffffff0758;
(* movddup 0x1e8(%rdi),%xmm13                      #! EA = L0x7fffffff0798; Value = 0xbb8475ab906c9ac5; PC = 0x55555557d32a *)
join xmm13 L0x7fffffff0798 L0x7fffffff0798;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d333 *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d337 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d33d *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d342 *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d346 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d34b *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d350 *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d354 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d35a *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d35f *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d363 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d368 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d36d *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d371 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d377 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d37d *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d381 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d386 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d38b *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557d38f *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d395 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d39b *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d39f *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d3a4 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d3a9 *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557d3ad *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557d3b3 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d3b9 *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557d3bd *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557d3c2 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557d3c7 *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557d3cb *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d3d1 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557d3d7 *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d3db *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557d3e0 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557d3e5 *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557d3e9 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d3ef *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d3f4 *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d3f8 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d3fd *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557d402 *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557d406 *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d40c *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557d411 *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557d415 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d41a *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d41f *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d423 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d429 *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d42f *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d433 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d438 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d43d *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d441 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d447 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d44d *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d451 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d456 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d45b *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d45f *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d465 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d46b *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d46f *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d474 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d479 *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d47d *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d482 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d487 *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d48b *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d490 *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d494 *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x28(%rdi)                          #! EA = L0x7fffffff05d8; PC = 0x55555557d49b *)
mov L0x7fffffff05d8 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d49f *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x68(%rdi)                          #! EA = L0x7fffffff0618; PC = 0x55555557d4a6 *)
mov L0x7fffffff0618 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d4aa *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0xa8(%rdi)                          #! EA = L0x7fffffff0658; PC = 0x55555557d4b1 *)
mov L0x7fffffff0658 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d4b8 *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xe8(%rdi)                          #! EA = L0x7fffffff0698; PC = 0x55555557d4bf *)
mov L0x7fffffff0698 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d4c6 *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x128(%rdi)                         #! EA = L0x7fffffff06d8; PC = 0x55555557d4cd *)
mov L0x7fffffff06d8 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d4d4 *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x168(%rdi)                         #! EA = L0x7fffffff0718; PC = 0x55555557d4db *)
mov L0x7fffffff0718 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d4e2 *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x1a8(%rdi)                         #! EA = L0x7fffffff0758; PC = 0x55555557d4e9 *)
mov L0x7fffffff0758 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d4f0 *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1e8(%rdi)                         #! EA = L0x7fffffff0798; PC = 0x55555557d4f7 *)
mov L0x7fffffff0798 rsi;
(* movddup 0x30(%rdi),%xmm6                        #! EA = L0x7fffffff05e0; Value = 0x1c1c26b2bba82861; PC = 0x55555557d4fe *)
join xmm6 L0x7fffffff05e0 L0x7fffffff05e0;
(* movddup 0x70(%rdi),%xmm7                        #! EA = L0x7fffffff0620; Value = 0x6ff8877ccd9dce66; PC = 0x55555557d503 *)
join xmm7 L0x7fffffff0620 L0x7fffffff0620;
(* movddup 0xb0(%rdi),%xmm8                        #! EA = L0x7fffffff0660; Value = 0xc970375357bad11f; PC = 0x55555557d508 *)
join xmm8 L0x7fffffff0660 L0x7fffffff0660;
(* movddup 0xf0(%rdi),%xmm9                        #! EA = L0x7fffffff06a0; Value = 0x376d4ce4fd423dfd; PC = 0x55555557d511 *)
join xmm9 L0x7fffffff06a0 L0x7fffffff06a0;
(* movddup 0x130(%rdi),%xmm10                      #! EA = L0x7fffffff06e0; Value = 0x0d4e2e0e0d0e9efe; PC = 0x55555557d51a *)
join xmm10 L0x7fffffff06e0 L0x7fffffff06e0;
(* movddup 0x170(%rdi),%xmm11                      #! EA = L0x7fffffff0720; Value = 0x86877c5e28daefe0; PC = 0x55555557d523 *)
join xmm11 L0x7fffffff0720 L0x7fffffff0720;
(* movddup 0x1b0(%rdi),%xmm12                      #! EA = L0x7fffffff0760; Value = 0xf4507250b9a1a698; PC = 0x55555557d52c *)
join xmm12 L0x7fffffff0760 L0x7fffffff0760;
(* movddup 0x1f0(%rdi),%xmm13                      #! EA = L0x7fffffff07a0; Value = 0x33cb8ce7226b758c; PC = 0x55555557d535 *)
join xmm13 L0x7fffffff07a0 L0x7fffffff07a0;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d53e *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d542 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d548 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d54d *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d551 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d556 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d55b *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d55f *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d565 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d56a *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d56e *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d573 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d578 *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d57c *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d582 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d588 *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d58c *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d591 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d596 *)
and xmm12@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm15                      #! PC = 0x55555557d59a *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm15H xmm13H 32;
shl xmm15L xmm13L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d5a0 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d5a6 *)
and xmm13@uint128 xmm13 xmm1;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d5aa *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d5af *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d5b4 *)
and xmm13@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm15                      #! PC = 0x55555557d5b8 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm15H xmm11HH xmm11HL;
join xmm15L xmm11LH xmm11LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm14,%xmm14                      #! PC = 0x55555557d5be *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm14H xmm14HH xmm14HL;
join xmm14L xmm14LH xmm14LL;
join xmm14 xmm14H xmm14L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d5c4 *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557d5c8 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557d5cd *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557d5d2 *)
and xmm14@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm12,%xmm15                      #! PC = 0x55555557d5d6 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
cast xmm12HH@uint32 xmm12HH;
cast xmm12HL@uint32 xmm12HL;
cast xmm12LH@uint32 xmm12LH;
cast xmm12LL@uint32 xmm12LL;
split slldcHH xmm12HH xmm12HH 16;
split slldcHL xmm12HL xmm12HL 16;
split slldcLH xmm12LH xmm12LH 16;
split slldcLL xmm12LL xmm12LL 16;
shl xmm12HH xmm12HH 16;
shl xmm12HL xmm12HL 16;
shl xmm12LH xmm12LH 16;
shl xmm12LL xmm12LL 16;
join xmm15H xmm12HH xmm12HL;
join xmm15L xmm12LH xmm12LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d5dc *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557d5e2 *)
and xmm12@uint128 xmm12 xmm3;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d5e6 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557d5eb *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557d5f0 *)
and xmm12@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm15                       #! PC = 0x55555557d5f4 *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm15H xmm8HH xmm8HL;
join xmm15L xmm8LH xmm8LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d5fa *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d5ff *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d603 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d608 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557d60d *)
and xmm8@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm9,%xmm15                       #! PC = 0x55555557d611 *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
cast xmm9HH@uint32 xmm9HH;
cast xmm9HL@uint32 xmm9HL;
cast xmm9LH@uint32 xmm9LH;
cast xmm9LL@uint32 xmm9LL;
split slldcHH xmm9HH xmm9HH 16;
split slldcHL xmm9HL xmm9HL 16;
split slldcLH xmm9LH xmm9LH 16;
split slldcLL xmm9LL xmm9LL 16;
shl xmm9HH xmm9HH 16;
shl xmm9HL xmm9HL 16;
shl xmm9LH xmm9LH 16;
shl xmm9LL xmm9LL 16;
join xmm15H xmm9HH xmm9HL;
join xmm15L xmm9LH xmm9LL;
join xmm15 xmm15H xmm15L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d617 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557d61c *)
and xmm9@uint128 xmm9 xmm3;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557d620 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557d625 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557d62a *)
and xmm9@uint128 xmm13 xmm4;
(* vpsllw $0x8,%xmm14,%xmm15                       #! PC = 0x55555557d62e *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
split xmm14HHH xmm14HHL xmm14HH 16;
split xmm14HLH xmm14HLL xmm14HL 16;
split xmm14LHH xmm14LHL xmm14LH 16;
split xmm14LLH xmm14LLL xmm14LL 16;
cast xmm14HHH@uint16 xmm14HHH;
cast xmm14HHL@uint16 xmm14HHL;
cast xmm14HLH@uint16 xmm14HLH;
cast xmm14HLL@uint16 xmm14HLL;
cast xmm14LHH@uint16 xmm14LHH;
cast xmm14LHL@uint16 xmm14LHL;
cast xmm14LLH@uint16 xmm14LLH;
cast xmm14LLL@uint16 xmm14LLL;
split slldcHHH xmm14HHH xmm14HHH 8;
split slldcHHL xmm14HHL xmm14HHL 8;
split slldcHLH xmm14HLH xmm14HLH 8;
split slldcHLL xmm14HLL xmm14HLL 8;
split slldcLHH xmm14LHH xmm14LHH 8;
split slldcLHL xmm14LHL xmm14LHL 8;
split slldcLLH xmm14LLH xmm14LLH 8;
split slldcLLL xmm14LLL xmm14LLL 8;
shl xmm14HHH xmm14HHH 8;
shl xmm14HHL xmm14HHL 8;
shl xmm14HLH xmm14HLH 8;
shl xmm14HLL xmm14HLL 8;
shl xmm14LHH xmm14LHH 8;
shl xmm14LHL xmm14LHL 8;
shl xmm14LLH xmm14LLH 8;
shl xmm14LLL xmm14LLL 8;
join xmm15HH xmm14HHH xmm14HHL;
join xmm15HL xmm14HLH xmm14HLL;
join xmm15LH xmm14LHH xmm14LHL;
join xmm15LL xmm14LLH xmm14LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm13,%xmm13                       #! PC = 0x55555557d634 *)
split xmm13H xmm13L xmm13 64;
split xmm13HH xmm13HL xmm13H 32;
split xmm13LH xmm13LL xmm13L 32;
split xmm13HHH xmm13HHL xmm13HH 16;
split xmm13HLH xmm13HLL xmm13HL 16;
split xmm13LHH xmm13LHL xmm13LH 16;
split xmm13LLH xmm13LLL xmm13LL 16;
cast xmm13HHH@uint16 xmm13HHH;
cast xmm13HHL@uint16 xmm13HHL;
cast xmm13HLH@uint16 xmm13HLH;
cast xmm13HLL@uint16 xmm13HLL;
cast xmm13LHH@uint16 xmm13LHH;
cast xmm13LHL@uint16 xmm13LHL;
cast xmm13LLH@uint16 xmm13LLH;
cast xmm13LLL@uint16 xmm13LLL;
split xmm13HHH srldcHHH xmm13HHH 8;
split xmm13HHL srldcHHL xmm13HHL 8;
split xmm13HLH srldcHLH xmm13HLH 8;
split xmm13HLL srldcHLL xmm13HLL 8;
split xmm13LHH srldcLHH xmm13LHH 8;
split xmm13LHL srldcLHL xmm13LHL 8;
split xmm13LLH srldcLLH xmm13LLH 8;
split xmm13LLL srldcLLL xmm13LLL 8;
join xmm13HH xmm13HHH xmm13HHL;
join xmm13HL xmm13HLH xmm13HLL;
join xmm13LH xmm13LHH xmm13LHL;
join xmm13LL xmm13LLH xmm13LLL;
join xmm13H xmm13HH xmm13HL;
join xmm13L xmm13LH xmm13LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557d63a *)
and xmm14@uint128 xmm14 xmm5;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557d63e *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557d643 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557d648 *)
and xmm14@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm10,%xmm15                       #! PC = 0x55555557d64c *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split slldcHHH xmm10HHH xmm10HHH 8;
split slldcHHL xmm10HHL xmm10HHL 8;
split slldcHLH xmm10HLH xmm10HLH 8;
split slldcHLL xmm10HLL xmm10HLL 8;
split slldcLHH xmm10LHH xmm10LHH 8;
split slldcLHL xmm10LHL xmm10LHL 8;
split slldcLLH xmm10LLH xmm10LLH 8;
split slldcLLL xmm10LLL xmm10LLL 8;
shl xmm10HHH xmm10HHH 8;
shl xmm10HHL xmm10HHL 8;
shl xmm10HLH xmm10HLH 8;
shl xmm10HLL xmm10HLL 8;
shl xmm10LHH xmm10LHH 8;
shl xmm10LHL xmm10LHL 8;
shl xmm10LLH xmm10LLH 8;
shl xmm10LLL xmm10LLL 8;
join xmm15HH xmm10HHH xmm10HHL;
join xmm15HL xmm10HLH xmm10HLL;
join xmm15LH xmm10LHH xmm10LHL;
join xmm15LL xmm10LLH xmm10LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d652 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557d658 *)
and xmm10@uint128 xmm10 xmm5;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d65c *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557d661 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557d666 *)
and xmm11@uint128 xmm12 xmm4;
(* vpsllw $0x8,%xmm8,%xmm15                        #! PC = 0x55555557d66a *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
split xmm8HHH xmm8HHL xmm8HH 16;
split xmm8HLH xmm8HLL xmm8HL 16;
split xmm8LHH xmm8LHL xmm8LH 16;
split xmm8LLH xmm8LLL xmm8LL 16;
cast xmm8HHH@uint16 xmm8HHH;
cast xmm8HHL@uint16 xmm8HHL;
cast xmm8HLH@uint16 xmm8HLH;
cast xmm8HLL@uint16 xmm8HLL;
cast xmm8LHH@uint16 xmm8LHH;
cast xmm8LHL@uint16 xmm8LHL;
cast xmm8LLH@uint16 xmm8LLH;
cast xmm8LLL@uint16 xmm8LLL;
split slldcHHH xmm8HHH xmm8HHH 8;
split slldcHHL xmm8HHL xmm8HHL 8;
split slldcHLH xmm8HLH xmm8HLH 8;
split slldcHLL xmm8HLL xmm8HLL 8;
split slldcLHH xmm8LHH xmm8LHH 8;
split slldcLHL xmm8LHL xmm8LHL 8;
split slldcLLH xmm8LLH xmm8LLH 8;
split slldcLLL xmm8LLL xmm8LLL 8;
shl xmm8HHH xmm8HHH 8;
shl xmm8HHL xmm8HHL 8;
shl xmm8HLH xmm8HLH 8;
shl xmm8HLL xmm8HLL 8;
shl xmm8LHH xmm8LHH 8;
shl xmm8LHL xmm8LHL 8;
shl xmm8LLH xmm8LLH 8;
shl xmm8LLL xmm8LLL 8;
join xmm15HH xmm8HHH xmm8HHL;
join xmm15HL xmm8HLH xmm8HLL;
join xmm15LH xmm8LHH xmm8LHL;
join xmm15LL xmm8LLH xmm8LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm12,%xmm12                       #! PC = 0x55555557d670 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split xmm12HHH srldcHHH xmm12HHH 8;
split xmm12HHL srldcHHL xmm12HHL 8;
split xmm12HLH srldcHLH xmm12HLH 8;
split xmm12HLL srldcHLL xmm12HLL 8;
split xmm12LHH srldcLHH xmm12LHH 8;
split xmm12LHL srldcLHL xmm12LHL 8;
split xmm12LLH srldcLLH xmm12LLH 8;
split xmm12LLL srldcLLL xmm12LLL 8;
join xmm12HH xmm12HHH xmm12HHL;
join xmm12HL xmm12HLH xmm12HLL;
join xmm12LH xmm12LHH xmm12LHL;
join xmm12LL xmm12LLH xmm12LLL;
join xmm12H xmm12HH xmm12HL;
join xmm12L xmm12LH xmm12LL;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557d676 *)
and xmm8@uint128 xmm8 xmm5;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d67a *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557d67f *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557d684 *)
and xmm12@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm7,%xmm15                        #! PC = 0x55555557d688 *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
split xmm7HHH xmm7HHL xmm7HH 16;
split xmm7HLH xmm7HLL xmm7HL 16;
split xmm7LHH xmm7LHL xmm7LH 16;
split xmm7LLH xmm7LLL xmm7LL 16;
cast xmm7HHH@uint16 xmm7HHH;
cast xmm7HHL@uint16 xmm7HHL;
cast xmm7HLH@uint16 xmm7HLH;
cast xmm7HLL@uint16 xmm7HLL;
cast xmm7LHH@uint16 xmm7LHH;
cast xmm7LHL@uint16 xmm7LHL;
cast xmm7LLH@uint16 xmm7LLH;
cast xmm7LLL@uint16 xmm7LLL;
split slldcHHH xmm7HHH xmm7HHH 8;
split slldcHHL xmm7HHL xmm7HHL 8;
split slldcHLH xmm7HLH xmm7HLH 8;
split slldcHLL xmm7HLL xmm7HLL 8;
split slldcLHH xmm7LHH xmm7LHH 8;
split slldcLHL xmm7LHL xmm7LHL 8;
split slldcLLH xmm7LLH xmm7LLH 8;
split slldcLLL xmm7LLL xmm7LLL 8;
shl xmm7HHH xmm7HHH 8;
shl xmm7HHL xmm7HHL 8;
shl xmm7HLH xmm7HLH 8;
shl xmm7HLL xmm7HLL 8;
shl xmm7LHH xmm7LHH 8;
shl xmm7LHL xmm7LHL 8;
shl xmm7LLH xmm7LLH 8;
shl xmm7LLL xmm7LLL 8;
join xmm15HH xmm7HHH xmm7HHL;
join xmm15HL xmm7HLH xmm7HLL;
join xmm15LH xmm7LHH xmm7LHL;
join xmm15LL xmm7LLH xmm7LLL;
join xmm15H xmm15HH xmm15HL;
join xmm15L xmm15LH xmm15LL;
join xmm15 xmm15H xmm15L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d68d *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557d692 *)
and xmm7@uint128 xmm7 xmm5;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d696 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557d69b *)
or xmm6@uint128 xmm6 xmm7;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d69f *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x30(%rdi)                          #! EA = L0x7fffffff05e0; PC = 0x55555557d6a6 *)
mov L0x7fffffff05e0 rsi;
(* pextrq $0x0,%xmm13,%rsi                         #! PC = 0x55555557d6aa *)
split extdc xmm13L xmm13 64;
cast rsi@uint64 xmm13L;
(* mov    %rsi,0x70(%rdi)                          #! EA = L0x7fffffff0620; PC = 0x55555557d6b1 *)
mov L0x7fffffff0620 rsi;
(* pextrq $0x0,%xmm14,%rsi                         #! PC = 0x55555557d6b5 *)
split extdc xmm14L xmm14 64;
cast rsi@uint64 xmm14L;
(* mov    %rsi,0xb0(%rdi)                          #! EA = L0x7fffffff0660; PC = 0x55555557d6bc *)
mov L0x7fffffff0660 rsi;
(* pextrq $0x0,%xmm10,%rsi                         #! PC = 0x55555557d6c3 *)
split extdc xmm10L xmm10 64;
cast rsi@uint64 xmm10L;
(* mov    %rsi,0xf0(%rdi)                          #! EA = L0x7fffffff06a0; PC = 0x55555557d6ca *)
mov L0x7fffffff06a0 rsi;
(* pextrq $0x0,%xmm11,%rsi                         #! PC = 0x55555557d6d1 *)
split extdc xmm11L xmm11 64;
cast rsi@uint64 xmm11L;
(* mov    %rsi,0x130(%rdi)                         #! EA = L0x7fffffff06e0; PC = 0x55555557d6d8 *)
mov L0x7fffffff06e0 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d6df *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0x170(%rdi)                         #! EA = L0x7fffffff0720; PC = 0x55555557d6e6 *)
mov L0x7fffffff0720 rsi;
(* pextrq $0x0,%xmm12,%rsi                         #! PC = 0x55555557d6ed *)
split extdc xmm12L xmm12 64;
cast rsi@uint64 xmm12L;
(* mov    %rsi,0x1b0(%rdi)                         #! EA = L0x7fffffff0760; PC = 0x55555557d6f4 *)
mov L0x7fffffff0760 rsi;
(* pextrq $0x0,%xmm6,%rsi                          #! PC = 0x55555557d6fb *)
split extdc xmm6L xmm6 64;
cast rsi@uint64 xmm6L;
(* mov    %rsi,0x1f0(%rdi)                         #! EA = L0x7fffffff07a0; PC = 0x55555557d702 *)
mov L0x7fffffff07a0 rsi;
(* movddup 0x38(%rdi),%xmm6                        #! EA = L0x7fffffff05e8; Value = 0x7c9beb1784c9c162; PC = 0x55555557d709 *)
join xmm6 L0x7fffffff05e8 L0x7fffffff05e8;
(* movddup 0x78(%rdi),%xmm7                        #! EA = L0x7fffffff0628; Value = 0x8b8a71fc29019986; PC = 0x55555557d70e *)
join xmm7 L0x7fffffff0628 L0x7fffffff0628;
(* movddup 0xb8(%rdi),%xmm8                        #! EA = L0x7fffffff0668; Value = 0x3ece13d99c449cce; PC = 0x55555557d713 *)
join xmm8 L0x7fffffff0668 L0x7fffffff0668;
(* movddup 0xf8(%rdi),%xmm9                        #! EA = L0x7fffffff06a8; Value = 0xc20feb5c25fbb480; PC = 0x55555557d71c *)
join xmm9 L0x7fffffff06a8 L0x7fffffff06a8;
(* movddup 0x138(%rdi),%xmm10                      #! EA = L0x7fffffff06e8; Value = 0x880f6d75a1cad4cf; PC = 0x55555557d725 *)
join xmm10 L0x7fffffff06e8 L0x7fffffff06e8;
(* movddup 0x178(%rdi),%xmm11                      #! EA = L0x7fffffff0728; Value = 0x3c0f89ca354ad081; PC = 0x55555557d72e *)
join xmm11 L0x7fffffff0728 L0x7fffffff0728;
(* movddup 0x1b8(%rdi),%xmm12                      #! EA = L0x7fffffff0768; Value = 0x27e8db82e39a1af5; PC = 0x55555557d737 *)
join xmm12 L0x7fffffff0768 L0x7fffffff0768;
(* movddup 0x1f8(%rdi),%xmm13                      #! EA = L0x7fffffff07a8; Value = 0xf9578e6c67a140de; PC = 0x55555557d740 *)
join xmm13 L0x7fffffff07a8 L0x7fffffff07a8;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d749 *)
and xmm14@uint128 xmm6 xmm0;
(* vpsllq $0x20,%xmm10,%xmm15                      #! PC = 0x55555557d74d *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split slldcH xmm10H xmm10H 32;
split slldcL xmm10L xmm10L 32;
shl xmm15H xmm10H 32;
shl xmm15L xmm10L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm6,%xmm6                        #! PC = 0x55555557d753 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 32;
split xmm6L srldcL xmm6L 32;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d758 *)
and xmm10@uint128 xmm10 xmm1;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d75c *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d761 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d766 *)
and xmm10@uint128 xmm7 xmm0;
(* vpsllq $0x20,%xmm11,%xmm15                      #! PC = 0x55555557d76a *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 32;
split slldcL xmm11L xmm11L 32;
shl xmm15H xmm11H 32;
shl xmm15L xmm11L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm7,%xmm7                        #! PC = 0x55555557d770 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 32;
split xmm7L srldcL xmm7L 32;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d775 *)
and xmm11@uint128 xmm11 xmm1;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d779 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d77e *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d783 *)
and xmm11@uint128 xmm8 xmm0;
(* vpsllq $0x20,%xmm12,%xmm15                      #! PC = 0x55555557d787 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 32;
split slldcL xmm12L xmm12L 32;
shl xmm15H xmm12H 32;
shl xmm15L xmm12L 32;
join xmm15 xmm15H xmm15L;
(* vpsrlq $0x20,%xmm8,%xmm8                        #! PC = 0x55555557d78d *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 32;
split xmm8L srldcL xmm8L 32;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d793 *)
and xmm12@uint128 xmm12 xmm1;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d797 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d79c *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm0                        #! PC = 0x55555557d7a1 *)
and xmm0@uint128 xmm9 xmm0;
(* vpsllq $0x20,%xmm13,%xmm12                      #! PC = 0x55555557d7a5 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 32;
split slldcL xmm13L xmm13L 32;
shl xmm12H xmm13H 32;
shl xmm12L xmm13L 32;
join xmm12 xmm12H xmm12L;
(* vpsrlq $0x20,%xmm9,%xmm9                        #! PC = 0x55555557d7ab *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 32;
split xmm9L srldcL xmm9L 32;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm1,%xmm13,%xmm1                       #! PC = 0x55555557d7b1 *)
and xmm1@uint128 xmm13 xmm1;
(* vpor   %xmm12,%xmm0,%xmm0                       #! PC = 0x55555557d7b5 *)
or xmm0@uint128 xmm0 xmm12;
(* vpor   %xmm1,%xmm9,%xmm1                        #! PC = 0x55555557d7ba *)
or xmm1@uint128 xmm9 xmm1;
(* vpand  %xmm2,%xmm14,%xmm9                       #! PC = 0x55555557d7be *)
and xmm9@uint128 xmm14 xmm2;
(* vpslld $0x10,%xmm11,%xmm12                      #! PC = 0x55555557d7c2 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
cast xmm11HH@uint32 xmm11HH;
cast xmm11HL@uint32 xmm11HL;
cast xmm11LH@uint32 xmm11LH;
cast xmm11LL@uint32 xmm11LL;
split slldcHH xmm11HH xmm11HH 16;
split slldcHL xmm11HL xmm11HL 16;
split slldcLH xmm11LH xmm11LH 16;
split slldcLL xmm11LL xmm11LL 16;
shl xmm11HH xmm11HH 16;
shl xmm11HL xmm11HL 16;
shl xmm11LH xmm11LH 16;
shl xmm11LL xmm11LL 16;
join xmm12H xmm11HH xmm11HL;
join xmm12L xmm11LH xmm11LL;
join xmm12 xmm12H xmm12L;
(* vpsrld $0x10,%xmm14,%xmm13                      #! PC = 0x55555557d7c8 *)
split xmm14H xmm14L xmm14 64;
split xmm14HH xmm14HL xmm14H 32;
split xmm14LH xmm14LL xmm14L 32;
cast xmm14HH@uint32 xmm14HH;
cast xmm14HL@uint32 xmm14HL;
cast xmm14LH@uint32 xmm14LH;
cast xmm14LL@uint32 xmm14LL;
split xmm14HH srldcHH xmm14HH 16;
split xmm14HL srldcHL xmm14HL 16;
split xmm14LH srldcLH xmm14LH 16;
split xmm14LL srldcLL xmm14LL 16;
join xmm13H xmm14HH xmm14HL;
join xmm13L xmm14LH xmm14LL;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557d7ce *)
and xmm11@uint128 xmm11 xmm3;
(* vpor   %xmm12,%xmm9,%xmm9                       #! PC = 0x55555557d7d2 *)
or xmm9@uint128 xmm9 xmm12;
(* vpor   %xmm11,%xmm13,%xmm11                     #! PC = 0x55555557d7d7 *)
or xmm11@uint128 xmm13 xmm11;
(* vpand  %xmm2,%xmm10,%xmm12                      #! PC = 0x55555557d7dc *)
and xmm12@uint128 xmm10 xmm2;
(* vpslld $0x10,%xmm0,%xmm13                       #! PC = 0x55555557d7e0 *)
split xmm0H xmm0L xmm0 64;
split xmm0HH xmm0HL xmm0H 32;
split xmm0LH xmm0LL xmm0L 32;
cast xmm0HH@uint32 xmm0HH;
cast xmm0HL@uint32 xmm0HL;
cast xmm0LH@uint32 xmm0LH;
cast xmm0LL@uint32 xmm0LL;
split slldcHH xmm0HH xmm0HH 16;
split slldcHL xmm0HL xmm0HL 16;
split slldcLH xmm0LH xmm0LH 16;
split slldcLL xmm0LL xmm0LL 16;
shl xmm0HH xmm0HH 16;
shl xmm0HL xmm0HL 16;
shl xmm0LH xmm0LH 16;
shl xmm0LL xmm0LL 16;
join xmm13H xmm0HH xmm0HL;
join xmm13L xmm0LH xmm0LL;
join xmm13 xmm13H xmm13L;
(* vpsrld $0x10,%xmm10,%xmm10                      #! PC = 0x55555557d7e5 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
cast xmm10HH@uint32 xmm10HH;
cast xmm10HL@uint32 xmm10HL;
cast xmm10LH@uint32 xmm10LH;
cast xmm10LL@uint32 xmm10LL;
split xmm10HH srldcHH xmm10HH 16;
split xmm10HL srldcHL xmm10HL 16;
split xmm10LH srldcLH xmm10LH 16;
split xmm10LL srldcLL xmm10LL 16;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555557d7eb *)
and xmm0@uint128 xmm0 xmm3;
(* vpor   %xmm13,%xmm12,%xmm12                     #! PC = 0x55555557d7ef *)
or xmm12@uint128 xmm12 xmm13;
(* vpor   %xmm0,%xmm10,%xmm0                       #! PC = 0x55555557d7f4 *)
or xmm0@uint128 xmm10 xmm0;
(* vpand  %xmm2,%xmm6,%xmm10                       #! PC = 0x55555557d7f8 *)
and xmm10@uint128 xmm6 xmm2;
(* vpslld $0x10,%xmm8,%xmm13                       #! PC = 0x55555557d7fc *)
split xmm8H xmm8L xmm8 64;
split xmm8HH xmm8HL xmm8H 32;
split xmm8LH xmm8LL xmm8L 32;
cast xmm8HH@uint32 xmm8HH;
cast xmm8HL@uint32 xmm8HL;
cast xmm8LH@uint32 xmm8LH;
cast xmm8LL@uint32 xmm8LL;
split slldcHH xmm8HH xmm8HH 16;
split slldcHL xmm8HL xmm8HL 16;
split slldcLH xmm8LH xmm8LH 16;
split slldcLL xmm8LL xmm8LL 16;
shl xmm8HH xmm8HH 16;
shl xmm8HL xmm8HL 16;
shl xmm8LH xmm8LH 16;
shl xmm8LL xmm8LL 16;
join xmm13H xmm8HH xmm8HL;
join xmm13L xmm8LH xmm8LL;
join xmm13 xmm13H xmm13L;
(* vpsrld $0x10,%xmm6,%xmm6                        #! PC = 0x55555557d802 *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
cast xmm6HH@uint32 xmm6HH;
cast xmm6HL@uint32 xmm6HL;
cast xmm6LH@uint32 xmm6LH;
cast xmm6LL@uint32 xmm6LL;
split xmm6HH srldcHH xmm6HH 16;
split xmm6HL srldcHL xmm6HL 16;
split xmm6LH srldcLH xmm6LH 16;
split xmm6LL srldcLL xmm6LL 16;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557d807 *)
and xmm8@uint128 xmm8 xmm3;
(* vpor   %xmm13,%xmm10,%xmm10                     #! PC = 0x55555557d80b *)
or xmm10@uint128 xmm10 xmm13;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557d810 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm2                        #! PC = 0x55555557d815 *)
and xmm2@uint128 xmm7 xmm2;
(* vpslld $0x10,%xmm1,%xmm8                        #! PC = 0x55555557d819 *)
split xmm1H xmm1L xmm1 64;
split xmm1HH xmm1HL xmm1H 32;
split xmm1LH xmm1LL xmm1L 32;
cast xmm1HH@uint32 xmm1HH;
cast xmm1HL@uint32 xmm1HL;
cast xmm1LH@uint32 xmm1LH;
cast xmm1LL@uint32 xmm1LL;
split slldcHH xmm1HH xmm1HH 16;
split slldcHL xmm1HL xmm1HL 16;
split slldcLH xmm1LH xmm1LH 16;
split slldcLL xmm1LL xmm1LL 16;
shl xmm1HH xmm1HH 16;
shl xmm1HL xmm1HL 16;
shl xmm1LH xmm1LH 16;
shl xmm1LL xmm1LL 16;
join xmm8H xmm1HH xmm1HL;
join xmm8L xmm1LH xmm1LL;
join xmm8 xmm8H xmm8L;
(* vpsrld $0x10,%xmm7,%xmm7                        #! PC = 0x55555557d81e *)
split xmm7H xmm7L xmm7 64;
split xmm7HH xmm7HL xmm7H 32;
split xmm7LH xmm7LL xmm7L 32;
cast xmm7HH@uint32 xmm7HH;
cast xmm7HL@uint32 xmm7HL;
cast xmm7LH@uint32 xmm7LH;
cast xmm7LL@uint32 xmm7LL;
split xmm7HH srldcHH xmm7HH 16;
split xmm7HL srldcHL xmm7HL 16;
split xmm7LH srldcLH xmm7LH 16;
split xmm7LL srldcLL xmm7LL 16;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm3,%xmm1,%xmm1                        #! PC = 0x55555557d823 *)
and xmm1@uint128 xmm1 xmm3;
(* vpor   %xmm8,%xmm2,%xmm2                        #! PC = 0x55555557d827 *)
or xmm2@uint128 xmm2 xmm8;
(* vpor   %xmm1,%xmm7,%xmm1                        #! PC = 0x55555557d82c *)
or xmm1@uint128 xmm7 xmm1;
(* vpand  %xmm4,%xmm9,%xmm3                        #! PC = 0x55555557d830 *)
and xmm3@uint128 xmm9 xmm4;
(* vpsllw $0x8,%xmm12,%xmm7                        #! PC = 0x55555557d834 *)
split xmm12H xmm12L xmm12 64;
split xmm12HH xmm12HL xmm12H 32;
split xmm12LH xmm12LL xmm12L 32;
split xmm12HHH xmm12HHL xmm12HH 16;
split xmm12HLH xmm12HLL xmm12HL 16;
split xmm12LHH xmm12LHL xmm12LH 16;
split xmm12LLH xmm12LLL xmm12LL 16;
cast xmm12HHH@uint16 xmm12HHH;
cast xmm12HHL@uint16 xmm12HHL;
cast xmm12HLH@uint16 xmm12HLH;
cast xmm12HLL@uint16 xmm12HLL;
cast xmm12LHH@uint16 xmm12LHH;
cast xmm12LHL@uint16 xmm12LHL;
cast xmm12LLH@uint16 xmm12LLH;
cast xmm12LLL@uint16 xmm12LLL;
split slldcHHH xmm12HHH xmm12HHH 8;
split slldcHHL xmm12HHL xmm12HHL 8;
split slldcHLH xmm12HLH xmm12HLH 8;
split slldcHLL xmm12HLL xmm12HLL 8;
split slldcLHH xmm12LHH xmm12LHH 8;
split slldcLHL xmm12LHL xmm12LHL 8;
split slldcLLH xmm12LLH xmm12LLH 8;
split slldcLLL xmm12LLL xmm12LLL 8;
shl xmm12HHH xmm12HHH 8;
shl xmm12HHL xmm12HHL 8;
shl xmm12HLH xmm12HLH 8;
shl xmm12HLL xmm12HLL 8;
shl xmm12LHH xmm12LHH 8;
shl xmm12LHL xmm12LHL 8;
shl xmm12LLH xmm12LLH 8;
shl xmm12LLL xmm12LLL 8;
join xmm7HH xmm12HHH xmm12HHL;
join xmm7HL xmm12HLH xmm12HLL;
join xmm7LH xmm12LHH xmm12LHL;
join xmm7LL xmm12LLH xmm12LLL;
join xmm7H xmm7HH xmm7HL;
join xmm7L xmm7LH xmm7LL;
join xmm7 xmm7H xmm7L;
(* vpsrlw $0x8,%xmm9,%xmm8                         #! PC = 0x55555557d83a *)
split xmm9H xmm9L xmm9 64;
split xmm9HH xmm9HL xmm9H 32;
split xmm9LH xmm9LL xmm9L 32;
split xmm9HHH xmm9HHL xmm9HH 16;
split xmm9HLH xmm9HLL xmm9HL 16;
split xmm9LHH xmm9LHL xmm9LH 16;
split xmm9LLH xmm9LLL xmm9LL 16;
cast xmm9HHH@uint16 xmm9HHH;
cast xmm9HHL@uint16 xmm9HHL;
cast xmm9HLH@uint16 xmm9HLH;
cast xmm9HLL@uint16 xmm9HLL;
cast xmm9LHH@uint16 xmm9LHH;
cast xmm9LHL@uint16 xmm9LHL;
cast xmm9LLH@uint16 xmm9LLH;
cast xmm9LLL@uint16 xmm9LLL;
split xmm9HHH srldcHHH xmm9HHH 8;
split xmm9HHL srldcHHL xmm9HHL 8;
split xmm9HLH srldcHLH xmm9HLH 8;
split xmm9HLL srldcHLL xmm9HLL 8;
split xmm9LHH srldcLHH xmm9LHH 8;
split xmm9LHL srldcLHL xmm9LHL 8;
split xmm9LLH srldcLLH xmm9LLH 8;
split xmm9LLL srldcLLL xmm9LLL 8;
join xmm8HH xmm9HHH xmm9HHL;
join xmm8HL xmm9HLH xmm9HLL;
join xmm8LH xmm9LHH xmm9LHL;
join xmm8LL xmm9LLH xmm9LLL;
join xmm8H xmm8HH xmm8HL;
join xmm8L xmm8LH xmm8LL;
join xmm8 xmm8H xmm8L;
(* vpand  %xmm5,%xmm12,%xmm9                       #! PC = 0x55555557d840 *)
and xmm9@uint128 xmm12 xmm5;
(* vpor   %xmm7,%xmm3,%xmm3                        #! PC = 0x55555557d844 *)
or xmm3@uint128 xmm3 xmm7;
(* vpor   %xmm9,%xmm8,%xmm7                        #! PC = 0x55555557d848 *)
or xmm7@uint128 xmm8 xmm9;
(* vpand  %xmm4,%xmm11,%xmm8                       #! PC = 0x55555557d84d *)
and xmm8@uint128 xmm11 xmm4;
(* vpsllw $0x8,%xmm0,%xmm9                         #! PC = 0x55555557d851 *)
split xmm0H xmm0L xmm0 64;
split xmm0HH xmm0HL xmm0H 32;
split xmm0LH xmm0LL xmm0L 32;
split xmm0HHH xmm0HHL xmm0HH 16;
split xmm0HLH xmm0HLL xmm0HL 16;
split xmm0LHH xmm0LHL xmm0LH 16;
split xmm0LLH xmm0LLL xmm0LL 16;
cast xmm0HHH@uint16 xmm0HHH;
cast xmm0HHL@uint16 xmm0HHL;
cast xmm0HLH@uint16 xmm0HLH;
cast xmm0HLL@uint16 xmm0HLL;
cast xmm0LHH@uint16 xmm0LHH;
cast xmm0LHL@uint16 xmm0LHL;
cast xmm0LLH@uint16 xmm0LLH;
cast xmm0LLL@uint16 xmm0LLL;
split slldcHHH xmm0HHH xmm0HHH 8;
split slldcHHL xmm0HHL xmm0HHL 8;
split slldcHLH xmm0HLH xmm0HLH 8;
split slldcHLL xmm0HLL xmm0HLL 8;
split slldcLHH xmm0LHH xmm0LHH 8;
split slldcLHL xmm0LHL xmm0LHL 8;
split slldcLLH xmm0LLH xmm0LLH 8;
split slldcLLL xmm0LLL xmm0LLL 8;
shl xmm0HHH xmm0HHH 8;
shl xmm0HHL xmm0HHL 8;
shl xmm0HLH xmm0HLH 8;
shl xmm0HLL xmm0HLL 8;
shl xmm0LHH xmm0LHH 8;
shl xmm0LHL xmm0LHL 8;
shl xmm0LLH xmm0LLH 8;
shl xmm0LLL xmm0LLL 8;
join xmm9HH xmm0HHH xmm0HHL;
join xmm9HL xmm0HLH xmm0HLL;
join xmm9LH xmm0LHH xmm0LHL;
join xmm9LL xmm0LLH xmm0LLL;
join xmm9H xmm9HH xmm9HL;
join xmm9L xmm9LH xmm9LL;
join xmm9 xmm9H xmm9L;
(* vpsrlw $0x8,%xmm11,%xmm11                       #! PC = 0x55555557d856 *)
split xmm11H xmm11L xmm11 64;
split xmm11HH xmm11HL xmm11H 32;
split xmm11LH xmm11LL xmm11L 32;
split xmm11HHH xmm11HHL xmm11HH 16;
split xmm11HLH xmm11HLL xmm11HL 16;
split xmm11LHH xmm11LHL xmm11LH 16;
split xmm11LLH xmm11LLL xmm11LL 16;
cast xmm11HHH@uint16 xmm11HHH;
cast xmm11HHL@uint16 xmm11HHL;
cast xmm11HLH@uint16 xmm11HLH;
cast xmm11HLL@uint16 xmm11HLL;
cast xmm11LHH@uint16 xmm11LHH;
cast xmm11LHL@uint16 xmm11LHL;
cast xmm11LLH@uint16 xmm11LLH;
cast xmm11LLL@uint16 xmm11LLL;
split xmm11HHH srldcHHH xmm11HHH 8;
split xmm11HHL srldcHHL xmm11HHL 8;
split xmm11HLH srldcHLH xmm11HLH 8;
split xmm11HLL srldcHLL xmm11HLL 8;
split xmm11LHH srldcLHH xmm11LHH 8;
split xmm11LHL srldcLHL xmm11LHL 8;
split xmm11LLH srldcLLH xmm11LLH 8;
split xmm11LLL srldcLLL xmm11LLL 8;
join xmm11HH xmm11HHH xmm11HHL;
join xmm11HL xmm11HLH xmm11HLL;
join xmm11LH xmm11LHH xmm11LHL;
join xmm11LL xmm11LLH xmm11LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm0,%xmm0                        #! PC = 0x55555557d85c *)
and xmm0@uint128 xmm0 xmm5;
(* vpor   %xmm9,%xmm8,%xmm8                        #! PC = 0x55555557d860 *)
or xmm8@uint128 xmm8 xmm9;
(* vpor   %xmm0,%xmm11,%xmm0                       #! PC = 0x55555557d865 *)
or xmm0@uint128 xmm11 xmm0;
(* vpand  %xmm4,%xmm10,%xmm9                       #! PC = 0x55555557d869 *)
and xmm9@uint128 xmm10 xmm4;
(* vpsllw $0x8,%xmm2,%xmm11                        #! PC = 0x55555557d86d *)
split xmm2H xmm2L xmm2 64;
split xmm2HH xmm2HL xmm2H 32;
split xmm2LH xmm2LL xmm2L 32;
split xmm2HHH xmm2HHL xmm2HH 16;
split xmm2HLH xmm2HLL xmm2HL 16;
split xmm2LHH xmm2LHL xmm2LH 16;
split xmm2LLH xmm2LLL xmm2LL 16;
cast xmm2HHH@uint16 xmm2HHH;
cast xmm2HHL@uint16 xmm2HHL;
cast xmm2HLH@uint16 xmm2HLH;
cast xmm2HLL@uint16 xmm2HLL;
cast xmm2LHH@uint16 xmm2LHH;
cast xmm2LHL@uint16 xmm2LHL;
cast xmm2LLH@uint16 xmm2LLH;
cast xmm2LLL@uint16 xmm2LLL;
split slldcHHH xmm2HHH xmm2HHH 8;
split slldcHHL xmm2HHL xmm2HHL 8;
split slldcHLH xmm2HLH xmm2HLH 8;
split slldcHLL xmm2HLL xmm2HLL 8;
split slldcLHH xmm2LHH xmm2LHH 8;
split slldcLHL xmm2LHL xmm2LHL 8;
split slldcLLH xmm2LLH xmm2LLH 8;
split slldcLLL xmm2LLL xmm2LLL 8;
shl xmm2HHH xmm2HHH 8;
shl xmm2HHL xmm2HHL 8;
shl xmm2HLH xmm2HLH 8;
shl xmm2HLL xmm2HLL 8;
shl xmm2LHH xmm2LHH 8;
shl xmm2LHL xmm2LHL 8;
shl xmm2LLH xmm2LLH 8;
shl xmm2LLL xmm2LLL 8;
join xmm11HH xmm2HHH xmm2HHL;
join xmm11HL xmm2HLH xmm2HLL;
join xmm11LH xmm2LHH xmm2LHL;
join xmm11LL xmm2LLH xmm2LLL;
join xmm11H xmm11HH xmm11HL;
join xmm11L xmm11LH xmm11LL;
join xmm11 xmm11H xmm11L;
(* vpsrlw $0x8,%xmm10,%xmm10                       #! PC = 0x55555557d872 *)
split xmm10H xmm10L xmm10 64;
split xmm10HH xmm10HL xmm10H 32;
split xmm10LH xmm10LL xmm10L 32;
split xmm10HHH xmm10HHL xmm10HH 16;
split xmm10HLH xmm10HLL xmm10HL 16;
split xmm10LHH xmm10LHL xmm10LH 16;
split xmm10LLH xmm10LLL xmm10LL 16;
cast xmm10HHH@uint16 xmm10HHH;
cast xmm10HHL@uint16 xmm10HHL;
cast xmm10HLH@uint16 xmm10HLH;
cast xmm10HLL@uint16 xmm10HLL;
cast xmm10LHH@uint16 xmm10LHH;
cast xmm10LHL@uint16 xmm10LHL;
cast xmm10LLH@uint16 xmm10LLH;
cast xmm10LLL@uint16 xmm10LLL;
split xmm10HHH srldcHHH xmm10HHH 8;
split xmm10HHL srldcHHL xmm10HHL 8;
split xmm10HLH srldcHLH xmm10HLH 8;
split xmm10HLL srldcHLL xmm10HLL 8;
split xmm10LHH srldcLHH xmm10LHH 8;
split xmm10LHL srldcLHL xmm10LHL 8;
split xmm10LLH srldcLLH xmm10LLH 8;
split xmm10LLL srldcLLL xmm10LLL 8;
join xmm10HH xmm10HHH xmm10HHL;
join xmm10HL xmm10HLH xmm10HLL;
join xmm10LH xmm10LHH xmm10LHL;
join xmm10LL xmm10LLH xmm10LLL;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpand  %xmm5,%xmm2,%xmm2                        #! PC = 0x55555557d878 *)
and xmm2@uint128 xmm2 xmm5;
(* vpor   %xmm11,%xmm9,%xmm9                       #! PC = 0x55555557d87c *)
or xmm9@uint128 xmm9 xmm11;
(* vpor   %xmm2,%xmm10,%xmm2                       #! PC = 0x55555557d881 *)
or xmm2@uint128 xmm10 xmm2;
(* vpand  %xmm4,%xmm6,%xmm4                        #! PC = 0x55555557d885 *)
and xmm4@uint128 xmm6 xmm4;
(* vpsllw $0x8,%xmm1,%xmm10                        #! PC = 0x55555557d889 *)
split xmm1H xmm1L xmm1 64;
split xmm1HH xmm1HL xmm1H 32;
split xmm1LH xmm1LL xmm1L 32;
split xmm1HHH xmm1HHL xmm1HH 16;
split xmm1HLH xmm1HLL xmm1HL 16;
split xmm1LHH xmm1LHL xmm1LH 16;
split xmm1LLH xmm1LLL xmm1LL 16;
cast xmm1HHH@uint16 xmm1HHH;
cast xmm1HHL@uint16 xmm1HHL;
cast xmm1HLH@uint16 xmm1HLH;
cast xmm1HLL@uint16 xmm1HLL;
cast xmm1LHH@uint16 xmm1LHH;
cast xmm1LHL@uint16 xmm1LHL;
cast xmm1LLH@uint16 xmm1LLH;
cast xmm1LLL@uint16 xmm1LLL;
split slldcHHH xmm1HHH xmm1HHH 8;
split slldcHHL xmm1HHL xmm1HHL 8;
split slldcHLH xmm1HLH xmm1HLH 8;
split slldcHLL xmm1HLL xmm1HLL 8;
split slldcLHH xmm1LHH xmm1LHH 8;
split slldcLHL xmm1LHL xmm1LHL 8;
split slldcLLH xmm1LLH xmm1LLH 8;
split slldcLLL xmm1LLL xmm1LLL 8;
shl xmm1HHH xmm1HHH 8;
shl xmm1HHL xmm1HHL 8;
shl xmm1HLH xmm1HLH 8;
shl xmm1HLL xmm1HLL 8;
shl xmm1LHH xmm1LHH 8;
shl xmm1LHL xmm1LHL 8;
shl xmm1LLH xmm1LLH 8;
shl xmm1LLL xmm1LLL 8;
join xmm10HH xmm1HHH xmm1HHL;
join xmm10HL xmm1HLH xmm1HLL;
join xmm10LH xmm1LHH xmm1LHL;
join xmm10LL xmm1LLH xmm1LLL;
join xmm10H xmm10HH xmm10HL;
join xmm10L xmm10LH xmm10LL;
join xmm10 xmm10H xmm10L;
(* vpsrlw $0x8,%xmm6,%xmm6                         #! PC = 0x55555557d88e *)
split xmm6H xmm6L xmm6 64;
split xmm6HH xmm6HL xmm6H 32;
split xmm6LH xmm6LL xmm6L 32;
split xmm6HHH xmm6HHL xmm6HH 16;
split xmm6HLH xmm6HLL xmm6HL 16;
split xmm6LHH xmm6LHL xmm6LH 16;
split xmm6LLH xmm6LLL xmm6LL 16;
cast xmm6HHH@uint16 xmm6HHH;
cast xmm6HHL@uint16 xmm6HHL;
cast xmm6HLH@uint16 xmm6HLH;
cast xmm6HLL@uint16 xmm6HLL;
cast xmm6LHH@uint16 xmm6LHH;
cast xmm6LHL@uint16 xmm6LHL;
cast xmm6LLH@uint16 xmm6LLH;
cast xmm6LLL@uint16 xmm6LLL;
split xmm6HHH srldcHHH xmm6HHH 8;
split xmm6HHL srldcHHL xmm6HHL 8;
split xmm6HLH srldcHLH xmm6HLH 8;
split xmm6HLL srldcHLL xmm6HLL 8;
split xmm6LHH srldcLHH xmm6LHH 8;
split xmm6LHL srldcLHL xmm6LHL 8;
split xmm6LLH srldcLLH xmm6LLH 8;
split xmm6LLL srldcLLL xmm6LLL 8;
join xmm6HH xmm6HHH xmm6HHL;
join xmm6HL xmm6HLH xmm6HLL;
join xmm6LH xmm6LHH xmm6LHL;
join xmm6LL xmm6LLH xmm6LLL;
join xmm6H xmm6HH xmm6HL;
join xmm6L xmm6LH xmm6LL;
join xmm6 xmm6H xmm6L;
(* vpand  %xmm5,%xmm1,%xmm1                        #! PC = 0x55555557d893 *)
and xmm1@uint128 xmm1 xmm5;
(* vpor   %xmm10,%xmm4,%xmm4                       #! PC = 0x55555557d897 *)
or xmm4@uint128 xmm4 xmm10;
(* vpor   %xmm1,%xmm6,%xmm1                        #! PC = 0x55555557d89c *)
or xmm1@uint128 xmm6 xmm1;
(* pextrq $0x0,%xmm3,%rsi                          #! PC = 0x55555557d8a0 *)
split extdc xmm3L xmm3 64;
cast rsi@uint64 xmm3L;
(* mov    %rsi,0x38(%rdi)                          #! EA = L0x7fffffff05e8; PC = 0x55555557d8a7 *)
mov L0x7fffffff05e8 rsi;
(* pextrq $0x0,%xmm7,%rsi                          #! PC = 0x55555557d8ab *)
split extdc xmm7L xmm7 64;
cast rsi@uint64 xmm7L;
(* mov    %rsi,0x78(%rdi)                          #! EA = L0x7fffffff0628; PC = 0x55555557d8b2 *)
mov L0x7fffffff0628 rsi;
(* pextrq $0x0,%xmm8,%rsi                          #! PC = 0x55555557d8b6 *)
split extdc xmm8L xmm8 64;
cast rsi@uint64 xmm8L;
(* mov    %rsi,0xb8(%rdi)                          #! EA = L0x7fffffff0668; PC = 0x55555557d8bd *)
mov L0x7fffffff0668 rsi;
(* pextrq $0x0,%xmm0,%rsi                          #! PC = 0x55555557d8c4 *)
split extdc xmm0L xmm0 64;
cast rsi@uint64 xmm0L;
(* mov    %rsi,0xf8(%rdi)                          #! EA = L0x7fffffff06a8; PC = 0x55555557d8cb *)
mov L0x7fffffff06a8 rsi;
(* pextrq $0x0,%xmm9,%rsi                          #! PC = 0x55555557d8d2 *)
split extdc xmm9L xmm9 64;
cast rsi@uint64 xmm9L;
(* mov    %rsi,0x138(%rdi)                         #! EA = L0x7fffffff06e8; PC = 0x55555557d8d9 *)
mov L0x7fffffff06e8 rsi;
(* pextrq $0x0,%xmm2,%rsi                          #! PC = 0x55555557d8e0 *)
split extdc xmm2L xmm2 64;
cast rsi@uint64 xmm2L;
(* mov    %rsi,0x178(%rdi)                         #! EA = L0x7fffffff0728; PC = 0x55555557d8e7 *)
mov L0x7fffffff0728 rsi;
(* pextrq $0x0,%xmm4,%rsi                          #! PC = 0x55555557d8ee *)
split extdc xmm4L xmm4 64;
cast rsi@uint64 xmm4L;
(* mov    %rsi,0x1b8(%rdi)                         #! EA = L0x7fffffff0768; PC = 0x55555557d8f5 *)
mov L0x7fffffff0768 rsi;
(* pextrq $0x0,%xmm1,%rsi                          #! PC = 0x55555557d8fc *)
split extdc xmm1L xmm1 64;
cast rsi@uint64 xmm1L;
(* mov    %rsi,0x1f8(%rdi)                         #! EA = L0x7fffffff07a8; PC = 0x55555557d903 *)
mov L0x7fffffff07a8 rsi;
(* movdqa 0xeece(%rip),%xmm0        # 0x55555558c7e0#! EA = L0x55555558c7e0; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x55555557d90a *)
join xmm0 L0x55555558c7e8 L0x55555558c7e0;
(* movdqa 0xeee6(%rip),%xmm1        # 0x55555558c800#! EA = L0x55555558c800; Value = 0xf0f0f0f0f0f0f0f0; PC = 0x55555557d912 *)
join xmm1 L0x55555558c808 L0x55555558c800;
(* movdqa 0xee7e(%rip),%xmm2        # 0x55555558c7a0#! EA = L0x55555558c7a0; Value = 0x3333333333333333; PC = 0x55555557d91a *)
join xmm2 L0x55555558c7a8 L0x55555558c7a0;
(* movdqa 0xee96(%rip),%xmm3        # 0x55555558c7c0#! EA = L0x55555558c7c0; Value = 0xcccccccccccccccc; PC = 0x55555557d922 *)
join xmm3 L0x55555558c7c8 L0x55555558c7c0;
(* movdqa 0xee2e(%rip),%xmm4        # 0x55555558c760#! EA = L0x55555558c760; Value = 0x5555555555555555; PC = 0x55555557d92a *)
join xmm4 L0x55555558c768 L0x55555558c760;
(* movdqa 0xee46(%rip),%xmm5        # 0x55555558c780#! EA = L0x55555558c780; Value = 0xaaaaaaaaaaaaaaaa; PC = 0x55555557d932 *)
join xmm5 L0x55555558c788 L0x55555558c780;
(* movddup (%rdi),%xmm6                            #! EA = L0x7fffffff05b0; Value = 0xef0151da1f662d01; PC = 0x55555557d93a *)
join xmm6 L0x7fffffff05b0 L0x7fffffff05b0;
(* movddup 0x8(%rdi),%xmm7                         #! EA = L0x7fffffff05b8; Value = 0x0b32a5cbd7db8205; PC = 0x55555557d93e *)
join xmm7 L0x7fffffff05b8 L0x7fffffff05b8;
(* movddup 0x10(%rdi),%xmm8                        #! EA = L0x7fffffff05c0; Value = 0xe24c015ddef8ef0c; PC = 0x55555557d943 *)
join xmm8 L0x7fffffff05c0 L0x7fffffff05c0;
(* movddup 0x18(%rdi),%xmm9                        #! EA = L0x7fffffff05c8; Value = 0xff72e31fd4af8bd0; PC = 0x55555557d949 *)
join xmm9 L0x7fffffff05c8 L0x7fffffff05c8;
(* movddup 0x20(%rdi),%xmm10                       #! EA = L0x7fffffff05d0; Value = 0x392a101417fe6367; PC = 0x55555557d94f *)
join xmm10 L0x7fffffff05d0 L0x7fffffff05d0;
(* movddup 0x28(%rdi),%xmm11                       #! EA = L0x7fffffff05d8; Value = 0xc5c08e1659051b30; PC = 0x55555557d955 *)
join xmm11 L0x7fffffff05d8 L0x7fffffff05d8;
(* movddup 0x30(%rdi),%xmm12                       #! EA = L0x7fffffff05e0; Value = 0x8c98e0fefd1f6661; PC = 0x55555557d95b *)
join xmm12 L0x7fffffff05e0 L0x7fffffff05e0;
(* movddup 0x38(%rdi),%xmm13                       #! EA = L0x7fffffff05e8; Value = 0xdef581cf80ce8662; PC = 0x55555557d961 *)
join xmm13 L0x7fffffff05e8 L0x7fffffff05e8;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557d967 *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557d96b *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d96f *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557d975 *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557d979 *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557d97d *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557d982 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557d987 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557d98c *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557d990 *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d994 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557d99a *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557d99e *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557d9a2 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557d9a7 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557d9ac *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557d9b1 *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557d9b5 *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d9b9 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557d9bf *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557d9c3 *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557d9c7 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557d9cd *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557d9d2 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557d9d7 *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557d9db *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557d9df *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557d9e5 *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557d9e9 *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557d9ed *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557d9f3 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557d9f8 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557d9fd *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557da01 *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da05 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557da0b *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557da0f *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557da13 *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557da19 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557da1e *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557da23 *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557da27 *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da2b *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557da31 *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557da35 *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557da39 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557da3f *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557da44 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557da49 *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557da4d *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da51 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557da57 *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557da5b *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557da5f *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557da64 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557da69 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557da6e *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557da72 *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557da76 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557da7c *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557da80 *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557da84 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557da89 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557da8e *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557da93 *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557da97 *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557da9b *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557daa1 *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557daa5 *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557daa9 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557daaf *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557dab4 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557dab9 *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557dabd *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dac1 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557dac7 *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557dacb *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557dacf *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557dad5 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557dada *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557dadf *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557dae3 *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dae7 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557daed *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557daf1 *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557daf5 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557dafb *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557db00 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557db05 *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557db09 *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557db0d *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557db13 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557db17 *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557db1b *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557db20 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557db25 *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557db29 *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,(%rdi)                             #! EA = L0x7fffffff05b0; PC = 0x55555557db2e *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff05b0 xmm7L;
mov L0x7fffffff05b8 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557db32 *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0x10(%rdi)                         #! EA = L0x7fffffff05c0; PC = 0x55555557db37 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff05c0 xmm7L;
mov L0x7fffffff05c8 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557db3c *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0x20(%rdi)                         #! EA = L0x7fffffff05d0; PC = 0x55555557db41 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff05d0 xmm7L;
mov L0x7fffffff05d8 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557db46 *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0x30(%rdi)                         #! EA = L0x7fffffff05e0; PC = 0x55555557db4a *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff05e0 xmm6L;
mov L0x7fffffff05e8 xmm6H;
(* movddup 0x40(%rdi),%xmm6                        #! EA = L0x7fffffff05f0; Value = 0x2ac22bbda70eb300; PC = 0x55555557db4f *)
join xmm6 L0x7fffffff05f0 L0x7fffffff05f0;
(* movddup 0x48(%rdi),%xmm7                        #! EA = L0x7fffffff05f8; Value = 0xbde9de8455d31d85; PC = 0x55555557db54 *)
join xmm7 L0x7fffffff05f8 L0x7fffffff05f8;
(* movddup 0x50(%rdi),%xmm8                        #! EA = L0x7fffffff0600; Value = 0x9375b62fa722f093; PC = 0x55555557db59 *)
join xmm8 L0x7fffffff0600 L0x7fffffff0600;
(* movddup 0x58(%rdi),%xmm9                        #! EA = L0x7fffffff0608; Value = 0x244a71ea9abc59ee; PC = 0x55555557db5f *)
join xmm9 L0x7fffffff0608 L0x7fffffff0608;
(* movddup 0x60(%rdi),%xmm10                       #! EA = L0x7fffffff0610; Value = 0x8ba3756fe9894ad3; PC = 0x55555557db65 *)
join xmm10 L0x7fffffff0610 L0x7fffffff0610;
(* movddup 0x68(%rdi),%xmm11                       #! EA = L0x7fffffff0618; Value = 0x9a1637dc2bbace6d; PC = 0x55555557db6b *)
join xmm11 L0x7fffffff0618 L0x7fffffff0618;
(* movddup 0x70(%rdi),%xmm12                       #! EA = L0x7fffffff0620; Value = 0x75a6ef9e3dd1ce28; PC = 0x55555557db71 *)
join xmm12 L0x7fffffff0620 L0x7fffffff0620;
(* movddup 0x78(%rdi),%xmm13                       #! EA = L0x7fffffff0628; Value = 0x401ad0d4b49c99c1; PC = 0x55555557db77 *)
join xmm13 L0x7fffffff0628 L0x7fffffff0628;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557db7d *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557db81 *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557db85 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557db8b *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557db8f *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557db93 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557db98 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557db9d *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557dba2 *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557dba6 *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dbaa *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557dbb0 *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557dbb4 *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557dbb8 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557dbbd *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557dbc2 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557dbc7 *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557dbcb *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dbcf *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557dbd5 *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557dbd9 *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557dbdd *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557dbe3 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557dbe8 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557dbed *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557dbf1 *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dbf5 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557dbfb *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557dbff *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557dc03 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dc09 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557dc0e *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557dc13 *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557dc17 *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc1b *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557dc21 *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557dc25 *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557dc29 *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557dc2f *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557dc34 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557dc39 *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557dc3d *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc41 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557dc47 *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557dc4b *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557dc4f *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557dc55 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557dc5a *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557dc5f *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557dc63 *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc67 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557dc6d *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557dc71 *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557dc75 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dc7a *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557dc7f *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557dc84 *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557dc88 *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557dc8c *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557dc92 *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557dc96 *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557dc9a *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557dc9f *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557dca4 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557dca9 *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557dcad *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dcb1 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557dcb7 *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557dcbb *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557dcbf *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557dcc5 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557dcca *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557dccf *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557dcd3 *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dcd7 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557dcdd *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557dce1 *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557dce5 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557dceb *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557dcf0 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557dcf5 *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557dcf9 *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dcfd *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557dd03 *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557dd07 *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557dd0b *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557dd11 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557dd16 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557dd1b *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557dd1f *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dd23 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557dd29 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557dd2d *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557dd31 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dd36 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557dd3b *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557dd3f *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,0x40(%rdi)                         #! EA = L0x7fffffff05f0; PC = 0x55555557dd44 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff05f0 xmm7L;
mov L0x7fffffff05f8 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557dd49 *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0x50(%rdi)                         #! EA = L0x7fffffff0600; PC = 0x55555557dd4e *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0600 xmm7L;
mov L0x7fffffff0608 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557dd53 *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0x60(%rdi)                         #! EA = L0x7fffffff0610; PC = 0x55555557dd58 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0610 xmm7L;
mov L0x7fffffff0618 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557dd5d *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0x70(%rdi)                         #! EA = L0x7fffffff0620; PC = 0x55555557dd61 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff0620 xmm6L;
mov L0x7fffffff0628 xmm6H;
(* movddup 0x80(%rdi),%xmm6                        #! EA = L0x7fffffff0630; Value = 0xb5d49e996e2a9500; PC = 0x55555557dd66 *)
join xmm6 L0x7fffffff0630 L0x7fffffff0630;
(* movddup 0x88(%rdi),%xmm7                        #! EA = L0x7fffffff0638; Value = 0x2e7b7d5840e3e68f; PC = 0x55555557dd6e *)
join xmm7 L0x7fffffff0638 L0x7fffffff0638;
(* movddup 0x90(%rdi),%xmm8                        #! EA = L0x7fffffff0640; Value = 0x487b5b81e9eb3409; PC = 0x55555557dd76 *)
join xmm8 L0x7fffffff0640 L0x7fffffff0640;
(* movddup 0x98(%rdi),%xmm9                        #! EA = L0x7fffffff0648; Value = 0xd712cfa27a20c1f3; PC = 0x55555557dd7f *)
join xmm9 L0x7fffffff0648 L0x7fffffff0648;
(* movddup 0xa0(%rdi),%xmm10                       #! EA = L0x7fffffff0650; Value = 0xc441bd832d5ba205; PC = 0x55555557dd88 *)
join xmm10 L0x7fffffff0650 L0x7fffffff0650;
(* movddup 0xa8(%rdi),%xmm11                       #! EA = L0x7fffffff0658; Value = 0x6c66e31ef396b68c; PC = 0x55555557dd91 *)
join xmm11 L0x7fffffff0658 L0x7fffffff0658;
(* movddup 0xb0(%rdi),%xmm12                       #! EA = L0x7fffffff0660; Value = 0x6ba1da0e42ba9da8; PC = 0x55555557dd9a *)
join xmm12 L0x7fffffff0660 L0x7fffffff0660;
(* movddup 0xb8(%rdi),%xmm13                       #! EA = L0x7fffffff0668; Value = 0xa19a4acafb4401c9; PC = 0x55555557dda3 *)
join xmm13 L0x7fffffff0668 L0x7fffffff0668;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557ddac *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557ddb0 *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557ddb4 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557ddba *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557ddbe *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557ddc2 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557ddc7 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557ddcc *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557ddd1 *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557ddd5 *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557ddd9 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557dddf *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557dde3 *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557dde7 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557ddec *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557ddf1 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557ddf6 *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557ddfa *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557ddfe *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557de04 *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557de08 *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557de0c *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557de12 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557de17 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557de1c *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557de20 *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557de24 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557de2a *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557de2e *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557de32 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557de38 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557de3d *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557de42 *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557de46 *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557de4a *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557de50 *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557de54 *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557de58 *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557de5e *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557de63 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557de68 *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557de6c *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557de70 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557de76 *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557de7a *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557de7e *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557de84 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557de89 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557de8e *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557de92 *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557de96 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557de9c *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557dea0 *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557dea4 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557dea9 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557deae *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557deb3 *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557deb7 *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557debb *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557dec1 *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557dec5 *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557dec9 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557dece *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557ded3 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557ded8 *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557dedc *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557dee0 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557dee6 *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557deea *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557deee *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557def4 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557def9 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557defe *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557df02 *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557df06 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557df0c *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557df10 *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557df14 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557df1a *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557df1f *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557df24 *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557df28 *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557df2c *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557df32 *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557df36 *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557df3a *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557df40 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557df45 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557df4a *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557df4e *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557df52 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557df58 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557df5c *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557df60 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557df65 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557df6a *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557df6e *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,0x80(%rdi)                         #! EA = L0x7fffffff0630; PC = 0x55555557df73 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0630 xmm7L;
mov L0x7fffffff0638 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557df7b *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0x90(%rdi)                         #! EA = L0x7fffffff0640; PC = 0x55555557df80 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0640 xmm7L;
mov L0x7fffffff0648 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557df88 *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0xa0(%rdi)                         #! EA = L0x7fffffff0650; PC = 0x55555557df8d *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0650 xmm7L;
mov L0x7fffffff0658 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557df95 *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0xb0(%rdi)                         #! EA = L0x7fffffff0660; PC = 0x55555557df99 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff0660 xmm6L;
mov L0x7fffffff0668 xmm6H;
(* movddup 0xc0(%rdi),%xmm6                        #! EA = L0x7fffffff0670; Value = 0x9721b3c403149b00; PC = 0x55555557dfa1 *)
join xmm6 L0x7fffffff0670 L0x7fffffff0670;
(* movddup 0xc8(%rdi),%xmm7                        #! EA = L0x7fffffff0678; Value = 0xed6dc12798adb70a; PC = 0x55555557dfa9 *)
join xmm7 L0x7fffffff0678 L0x7fffffff0678;
(* movddup 0xd0(%rdi),%xmm8                        #! EA = L0x7fffffff0680; Value = 0xe83683d9676aa556; PC = 0x55555557dfb1 *)
join xmm8 L0x7fffffff0680 L0x7fffffff0680;
(* movddup 0xd8(%rdi),%xmm9                        #! EA = L0x7fffffff0688; Value = 0xc484abaaf8c3cd05; PC = 0x55555557dfba *)
join xmm9 L0x7fffffff0688 L0x7fffffff0688;
(* movddup 0xe0(%rdi),%xmm10                       #! EA = L0x7fffffff0690; Value = 0x88fb63a776bfcd1f; PC = 0x55555557dfc3 *)
join xmm10 L0x7fffffff0690 L0x7fffffff0690;
(* movddup 0xe8(%rdi),%xmm11                       #! EA = L0x7fffffff0698; Value = 0x90aa8f2fe6872c28; PC = 0x55555557dfcc *)
join xmm11 L0x7fffffff0698 L0x7fffffff0698;
(* movddup 0xf0(%rdi),%xmm12                       #! EA = L0x7fffffff06a0; Value = 0x22b9280dfd57cdbb; PC = 0x55555557dfd5 *)
join xmm12 L0x7fffffff06a0 L0x7fffffff06a0;
(* movddup 0xf8(%rdi),%xmm13                       #! EA = L0x7fffffff06a8; Value = 0x67e335a1259c2984; PC = 0x55555557dfde *)
join xmm13 L0x7fffffff06a8 L0x7fffffff06a8;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557dfe7 *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557dfeb *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557dfef *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557dff5 *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557dff9 *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557dffd *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e002 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e007 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e00c *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e010 *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e014 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e01a *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e01e *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e022 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e027 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e02c *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e031 *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e035 *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e039 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e03f *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e043 *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e047 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e04d *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e052 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e057 *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e05b *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e05f *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e065 *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e069 *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e06d *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e073 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e078 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e07d *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e081 *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e085 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e08b *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e08f *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e093 *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e099 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e09e *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e0a3 *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e0a7 *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e0ab *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e0b1 *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e0b5 *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e0b9 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e0bf *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e0c4 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e0c9 *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e0cd *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e0d1 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e0d7 *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e0db *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e0df *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e0e4 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e0e9 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e0ee *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e0f2 *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e0f6 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e0fc *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e100 *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e104 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e109 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e10e *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e113 *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e117 *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e11b *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e121 *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e125 *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e129 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e12f *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e134 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e139 *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e13d *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e141 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e147 *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e14b *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e14f *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e155 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e15a *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e15f *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e163 *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e167 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e16d *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e171 *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e175 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e17b *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e180 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e185 *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e189 *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e18d *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e193 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e197 *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e19b *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e1a0 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e1a5 *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e1a9 *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,0xc0(%rdi)                         #! EA = L0x7fffffff0670; PC = 0x55555557e1ae *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0670 xmm7L;
mov L0x7fffffff0678 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e1b6 *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0xd0(%rdi)                         #! EA = L0x7fffffff0680; PC = 0x55555557e1bb *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0680 xmm7L;
mov L0x7fffffff0688 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e1c3 *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0xe0(%rdi)                         #! EA = L0x7fffffff0690; PC = 0x55555557e1c8 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0690 xmm7L;
mov L0x7fffffff0698 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e1d0 *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0xf0(%rdi)                         #! EA = L0x7fffffff06a0; PC = 0x55555557e1d4 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff06a0 xmm6L;
mov L0x7fffffff06a8 xmm6H;
(* movddup 0x100(%rdi),%xmm6                       #! EA = L0x7fffffff06b0; Value = 0x20dc76b684907f00; PC = 0x55555557e1dc *)
join xmm6 L0x7fffffff06b0 L0x7fffffff06b0;
(* movddup 0x108(%rdi),%xmm7                       #! EA = L0x7fffffff06b8; Value = 0xcb61abc0b91a535d; PC = 0x55555557e1e4 *)
join xmm7 L0x7fffffff06b8 L0x7fffffff06b8;
(* movddup 0x110(%rdi),%xmm8                       #! EA = L0x7fffffff06c0; Value = 0x13cbedd357e3ef15; PC = 0x55555557e1ec *)
join xmm8 L0x7fffffff06c0 L0x7fffffff06c0;
(* movddup 0x118(%rdi),%xmm9                       #! EA = L0x7fffffff06c8; Value = 0x910a2bb2b98e6e3b; PC = 0x55555557e1f5 *)
join xmm9 L0x7fffffff06c8 L0x7fffffff06c8;
(* movddup 0x120(%rdi),%xmm10                      #! EA = L0x7fffffff06d0; Value = 0xfb03e2cd512cd432; PC = 0x55555557e1fe *)
join xmm10 L0x7fffffff06d0 L0x7fffffff06d0;
(* movddup 0x128(%rdi),%xmm11                      #! EA = L0x7fffffff06d8; Value = 0xab99f9743f188965; PC = 0x55555557e207 *)
join xmm11 L0x7fffffff06d8 L0x7fffffff06d8;
(* movddup 0x130(%rdi),%xmm12                      #! EA = L0x7fffffff06e0; Value = 0xe7505e0ee4537cb2; PC = 0x55555557e210 *)
join xmm12 L0x7fffffff06e0 L0x7fffffff06e0;
(* movddup 0x138(%rdi),%xmm13                      #! EA = L0x7fffffff06e8; Value = 0x6c82ca755cd9fc17; PC = 0x55555557e219 *)
join xmm13 L0x7fffffff06e8 L0x7fffffff06e8;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e222 *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e226 *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e22a *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e230 *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e234 *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e238 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e23d *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e242 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e247 *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e24b *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e24f *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e255 *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e259 *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e25d *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e262 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e267 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e26c *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e270 *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e274 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e27a *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e27e *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e282 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e288 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e28d *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e292 *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e296 *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e29a *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e2a0 *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e2a4 *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e2a8 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e2ae *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e2b3 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e2b8 *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e2bc *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e2c0 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e2c6 *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e2ca *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e2ce *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e2d4 *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e2d9 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e2de *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e2e2 *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e2e6 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e2ec *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e2f0 *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e2f4 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e2fa *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e2ff *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e304 *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e308 *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e30c *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e312 *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e316 *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e31a *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e31f *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e324 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e329 *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e32d *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e331 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e337 *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e33b *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e33f *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e344 *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e349 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e34e *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e352 *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e356 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e35c *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e360 *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e364 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e36a *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e36f *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e374 *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e378 *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e37c *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e382 *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e386 *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e38a *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e390 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e395 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e39a *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e39e *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e3a2 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e3a8 *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e3ac *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e3b0 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e3b6 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e3bb *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e3c0 *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e3c4 *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e3c8 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e3ce *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e3d2 *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e3d6 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e3db *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e3e0 *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e3e4 *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,0x100(%rdi)                        #! EA = L0x7fffffff06b0; PC = 0x55555557e3e9 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff06b0 xmm7L;
mov L0x7fffffff06b8 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e3f1 *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0x110(%rdi)                        #! EA = L0x7fffffff06c0; PC = 0x55555557e3f6 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff06c0 xmm7L;
mov L0x7fffffff06c8 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e3fe *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0x120(%rdi)                        #! EA = L0x7fffffff06d0; PC = 0x55555557e403 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff06d0 xmm7L;
mov L0x7fffffff06d8 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e40b *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0x130(%rdi)                        #! EA = L0x7fffffff06e0; PC = 0x55555557e40f *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff06e0 xmm6L;
mov L0x7fffffff06e8 xmm6H;
(* movddup 0x140(%rdi),%xmm6                       #! EA = L0x7fffffff06f0; Value = 0x6fb33df65189ad00; PC = 0x55555557e417 *)
join xmm6 L0x7fffffff06f0 L0x7fffffff06f0;
(* movddup 0x148(%rdi),%xmm7                       #! EA = L0x7fffffff06f8; Value = 0xfe0aacc676dd38ff; PC = 0x55555557e41f *)
join xmm7 L0x7fffffff06f8 L0x7fffffff06f8;
(* movddup 0x150(%rdi),%xmm8                       #! EA = L0x7fffffff0700; Value = 0x211f8185a50cc781; PC = 0x55555557e427 *)
join xmm8 L0x7fffffff0700 L0x7fffffff0700;
(* movddup 0x158(%rdi),%xmm9                       #! EA = L0x7fffffff0708; Value = 0xbddafc00146347f3; PC = 0x55555557e430 *)
join xmm9 L0x7fffffff0708 L0x7fffffff0708;
(* movddup 0x160(%rdi),%xmm10                      #! EA = L0x7fffffff0710; Value = 0xa8315b6901a06346; PC = 0x55555557e439 *)
join xmm10 L0x7fffffff0710 L0x7fffffff0710;
(* movddup 0x168(%rdi),%xmm11                      #! EA = L0x7fffffff0718; Value = 0x753467c785c14188; PC = 0x55555557e442 *)
join xmm11 L0x7fffffff0718 L0x7fffffff0718;
(* movddup 0x170(%rdi),%xmm12                      #! EA = L0x7fffffff0720; Value = 0x8c727c2e4c378726; PC = 0x55555557e44b *)
join xmm12 L0x7fffffff0720 L0x7fffffff0720;
(* movddup 0x178(%rdi),%xmm13                      #! EA = L0x7fffffff0728; Value = 0x8edb896deb1371eb; PC = 0x55555557e454 *)
join xmm13 L0x7fffffff0728 L0x7fffffff0728;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e45d *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e461 *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e465 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e46b *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e46f *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e473 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e478 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e47d *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e482 *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e486 *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e48a *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e490 *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e494 *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e498 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e49d *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e4a2 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e4a7 *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e4ab *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e4af *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e4b5 *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e4b9 *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e4bd *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e4c3 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e4c8 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e4cd *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e4d1 *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e4d5 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e4db *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e4df *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e4e3 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e4e9 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e4ee *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e4f3 *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e4f7 *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e4fb *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e501 *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e505 *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e509 *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e50f *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e514 *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e519 *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e51d *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e521 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e527 *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e52b *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e52f *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e535 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e53a *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e53f *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e543 *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e547 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e54d *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e551 *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e555 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e55a *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e55f *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e564 *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e568 *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e56c *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e572 *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e576 *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e57a *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e57f *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e584 *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e589 *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e58d *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e591 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e597 *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e59b *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e59f *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e5a5 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e5aa *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e5af *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e5b3 *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e5b7 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e5bd *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e5c1 *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e5c5 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e5cb *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e5d0 *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e5d5 *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e5d9 *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e5dd *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e5e3 *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e5e7 *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e5eb *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e5f1 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e5f6 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e5fb *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e5ff *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e603 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e609 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e60d *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e611 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e616 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e61b *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e61f *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,0x140(%rdi)                        #! EA = L0x7fffffff06f0; PC = 0x55555557e624 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff06f0 xmm7L;
mov L0x7fffffff06f8 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e62c *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0x150(%rdi)                        #! EA = L0x7fffffff0700; PC = 0x55555557e631 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0700 xmm7L;
mov L0x7fffffff0708 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e639 *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0x160(%rdi)                        #! EA = L0x7fffffff0710; PC = 0x55555557e63e *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0710 xmm7L;
mov L0x7fffffff0718 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e646 *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0x170(%rdi)                        #! EA = L0x7fffffff0720; PC = 0x55555557e64a *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff0720 xmm6L;
mov L0x7fffffff0728 xmm6H;
(* movddup 0x180(%rdi),%xmm6                       #! EA = L0x7fffffff0730; Value = 0x250d02884c2ae200; PC = 0x55555557e652 *)
join xmm6 L0x7fffffff0730 L0x7fffffff0730;
(* movddup 0x188(%rdi),%xmm7                       #! EA = L0x7fffffff0738; Value = 0xd1009365ed719eed; PC = 0x55555557e65a *)
join xmm7 L0x7fffffff0738 L0x7fffffff0738;
(* movddup 0x190(%rdi),%xmm8                       #! EA = L0x7fffffff0740; Value = 0xe672227a18810914; PC = 0x55555557e662 *)
join xmm8 L0x7fffffff0740 L0x7fffffff0740;
(* movddup 0x198(%rdi),%xmm9                       #! EA = L0x7fffffff0748; Value = 0x09935a1519b221f1; PC = 0x55555557e66b *)
join xmm9 L0x7fffffff0748 L0x7fffffff0748;
(* movddup 0x1a0(%rdi),%xmm10                      #! EA = L0x7fffffff0750; Value = 0x737ae12fc7457960; PC = 0x55555557e674 *)
join xmm10 L0x7fffffff0750 L0x7fffffff0750;
(* movddup 0x1a8(%rdi),%xmm11                      #! EA = L0x7fffffff0758; Value = 0x84e5a79a54ee0f02; PC = 0x55555557e67d *)
join xmm11 L0x7fffffff0758 L0x7fffffff0758;
(* movddup 0x1b0(%rdi),%xmm12                      #! EA = L0x7fffffff0760; Value = 0xcb50874e6d70f81c; PC = 0x55555557e686 *)
join xmm12 L0x7fffffff0760 L0x7fffffff0760;
(* movddup 0x1b8(%rdi),%xmm13                      #! EA = L0x7fffffff0768; Value = 0x57e80f0f0fce8a9b; PC = 0x55555557e68f *)
join xmm13 L0x7fffffff0768 L0x7fffffff0768;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e698 *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e69c *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e6a0 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e6a6 *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e6aa *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e6ae *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e6b3 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e6b8 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e6bd *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e6c1 *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e6c5 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e6cb *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e6cf *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e6d3 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e6d8 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e6dd *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e6e2 *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e6e6 *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e6ea *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e6f0 *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e6f4 *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e6f8 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e6fe *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e703 *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e708 *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm15                      #! PC = 0x55555557e70c *)
and xmm15@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e710 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e716 *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm13                      #! PC = 0x55555557e71a *)
and xmm13@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e71e *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e724 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm13,%xmm9,%xmm9                       #! PC = 0x55555557e729 *)
or xmm9@uint128 xmm9 xmm13;
(* vpand  %xmm2,%xmm14,%xmm13                      #! PC = 0x55555557e72e *)
and xmm13@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm15                      #! PC = 0x55555557e732 *)
and xmm15@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e736 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm14,%xmm14                      #! PC = 0x55555557e73c *)
and xmm14@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e740 *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm14                              #! PC = 0x55555557e744 *)
split xmm14H xmm14L xmm14 64;
cast xmm14H@uint64 xmm14H;
cast xmm14L@uint64 xmm14L;
split xmm14H srldcH xmm14H 2;
split xmm14L srldcL xmm14L 2;
join xmm14 xmm14H xmm14L;
(* vpor   %xmm15,%xmm13,%xmm13                     #! PC = 0x55555557e74a *)
or xmm13@uint128 xmm13 xmm15;
(* vpor   %xmm11,%xmm14,%xmm11                     #! PC = 0x55555557e74f *)
or xmm11@uint128 xmm14 xmm11;
(* vpand  %xmm2,%xmm10,%xmm14                      #! PC = 0x55555557e754 *)
and xmm14@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm12,%xmm15                      #! PC = 0x55555557e758 *)
and xmm15@uint128 xmm12 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e75c *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e762 *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm12,%xmm12                      #! PC = 0x55555557e766 *)
and xmm12@uint128 xmm12 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e76a *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e770 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm12,%xmm10,%xmm10                     #! PC = 0x55555557e775 *)
or xmm10@uint128 xmm10 xmm12;
(* vpand  %xmm2,%xmm6,%xmm12                       #! PC = 0x55555557e77a *)
and xmm12@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm15                       #! PC = 0x55555557e77e *)
and xmm15@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e782 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e788 *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e78c *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e790 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e795 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e79a *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e79f *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm9,%xmm15                       #! PC = 0x55555557e7a3 *)
and xmm15@uint128 xmm9 xmm2;
(* psllq  $0x2,%xmm15                              #! PC = 0x55555557e7a7 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 62;
split slldcL xmm15L xmm15L 62;
shl xmm15H xmm15H 2;
shl xmm15L xmm15L 2;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e7ad *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm9,%xmm9                        #! PC = 0x55555557e7b1 *)
and xmm9@uint128 xmm9 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e7b5 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm8,%xmm8                       #! PC = 0x55555557e7ba *)
or xmm8@uint128 xmm8 xmm15;
(* vpor   %xmm9,%xmm7,%xmm7                        #! PC = 0x55555557e7bf *)
or xmm7@uint128 xmm7 xmm9;
(* vpand  %xmm4,%xmm13,%xmm9                       #! PC = 0x55555557e7c4 *)
and xmm9@uint128 xmm13 xmm4;
(* vpand  %xmm4,%xmm14,%xmm15                      #! PC = 0x55555557e7c8 *)
and xmm15@uint128 xmm14 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e7cc *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm13,%xmm13                      #! PC = 0x55555557e7d2 *)
and xmm13@uint128 xmm13 xmm5;
(* vpand  %xmm5,%xmm14,%xmm14                      #! PC = 0x55555557e7d6 *)
and xmm14@uint128 xmm14 xmm5;
(* psrlq  $0x1,%xmm13                              #! PC = 0x55555557e7da *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 1;
split xmm13L srldcL xmm13L 1;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm15,%xmm9,%xmm9                       #! PC = 0x55555557e7e0 *)
or xmm9@uint128 xmm9 xmm15;
(* vpor   %xmm14,%xmm13,%xmm13                     #! PC = 0x55555557e7e5 *)
or xmm13@uint128 xmm13 xmm14;
(* vpand  %xmm4,%xmm11,%xmm14                      #! PC = 0x55555557e7ea *)
and xmm14@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm10,%xmm15                      #! PC = 0x55555557e7ee *)
and xmm15@uint128 xmm10 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e7f2 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557e7f8 *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557e7fc *)
and xmm10@uint128 xmm10 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557e800 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e806 *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm11,%xmm10                     #! PC = 0x55555557e80b *)
or xmm10@uint128 xmm11 xmm10;
(* vpand  %xmm4,%xmm12,%xmm11                      #! PC = 0x55555557e810 *)
and xmm11@uint128 xmm12 xmm4;
(* vpand  %xmm4,%xmm8,%xmm15                       #! PC = 0x55555557e814 *)
and xmm15@uint128 xmm8 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e818 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm12,%xmm12                      #! PC = 0x55555557e81e *)
and xmm12@uint128 xmm12 xmm5;
(* vpand  %xmm5,%xmm8,%xmm8                        #! PC = 0x55555557e822 *)
and xmm8@uint128 xmm8 xmm5;
(* psrlq  $0x1,%xmm12                              #! PC = 0x55555557e826 *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split xmm12H srldcH xmm12H 1;
split xmm12L srldcL xmm12L 1;
join xmm12 xmm12H xmm12L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e82c *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm8,%xmm12,%xmm8                       #! PC = 0x55555557e831 *)
or xmm8@uint128 xmm12 xmm8;
(* vpand  %xmm4,%xmm6,%xmm12                       #! PC = 0x55555557e836 *)
and xmm12@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm7,%xmm15                       #! PC = 0x55555557e83a *)
and xmm15@uint128 xmm7 xmm4;
(* psllq  $0x1,%xmm15                              #! PC = 0x55555557e83e *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 63;
split slldcL xmm15L xmm15L 63;
shl xmm15H xmm15H 1;
shl xmm15L xmm15L 1;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557e844 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm7,%xmm7                        #! PC = 0x55555557e848 *)
and xmm7@uint128 xmm7 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557e84c *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm12,%xmm12                     #! PC = 0x55555557e851 *)
or xmm12@uint128 xmm12 xmm15;
(* vpor   %xmm7,%xmm6,%xmm6                        #! PC = 0x55555557e856 *)
or xmm6@uint128 xmm6 xmm7;
(* vpunpcklqdq %xmm13,%xmm9,%xmm7                  #! PC = 0x55555557e85a *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm13L xmm13 64;
cast xmm9L@uint64 xmm9L;
cast xmm13L@uint64 xmm13L;
join xmm7 xmm13L xmm9L;
(* movdqu %xmm7,0x180(%rdi)                        #! EA = L0x7fffffff0730; PC = 0x55555557e85f *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0730 xmm7L;
mov L0x7fffffff0738 xmm7H;
(* vpunpcklqdq %xmm10,%xmm14,%xmm7                 #! PC = 0x55555557e867 *)
split unpckdcL xmm14L xmm14 64;
split unpckdcH xmm10L xmm10 64;
cast xmm14L@uint64 xmm14L;
cast xmm10L@uint64 xmm10L;
join xmm7 xmm10L xmm14L;
(* movdqu %xmm7,0x190(%rdi)                        #! EA = L0x7fffffff0740; PC = 0x55555557e86c *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0740 xmm7L;
mov L0x7fffffff0748 xmm7H;
(* vpunpcklqdq %xmm8,%xmm11,%xmm7                  #! PC = 0x55555557e874 *)
split unpckdcL xmm11L xmm11 64;
split unpckdcH xmm8L xmm8 64;
cast xmm11L@uint64 xmm11L;
cast xmm8L@uint64 xmm8L;
join xmm7 xmm8L xmm11L;
(* movdqu %xmm7,0x1a0(%rdi)                        #! EA = L0x7fffffff0750; PC = 0x55555557e879 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
mov L0x7fffffff0750 xmm7L;
mov L0x7fffffff0758 xmm7H;
(* vpunpcklqdq %xmm6,%xmm12,%xmm6                  #! PC = 0x55555557e881 *)
split unpckdcL xmm12L xmm12 64;
split unpckdcH xmm6L xmm6 64;
cast xmm12L@uint64 xmm12L;
cast xmm6L@uint64 xmm6L;
join xmm6 xmm6L xmm12L;
(* movdqu %xmm6,0x1b0(%rdi)                        #! EA = L0x7fffffff0760; PC = 0x55555557e885 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
mov L0x7fffffff0760 xmm6L;
mov L0x7fffffff0768 xmm6H;
(* movddup 0x1c0(%rdi),%xmm6                       #! EA = L0x7fffffff0770; Value = 0xa757a5cc82d36f00; PC = 0x55555557e88d *)
join xmm6 L0x7fffffff0770 L0x7fffffff0770;
(* movddup 0x1c8(%rdi),%xmm7                       #! EA = L0x7fffffff0778; Value = 0x29b9d40d48378a97; PC = 0x55555557e895 *)
join xmm7 L0x7fffffff0778 L0x7fffffff0778;
(* movddup 0x1d0(%rdi),%xmm8                       #! EA = L0x7fffffff0780; Value = 0x22eded102f8c8e77; PC = 0x55555557e89d *)
join xmm8 L0x7fffffff0780 L0x7fffffff0780;
(* movddup 0x1d8(%rdi),%xmm9                       #! EA = L0x7fffffff0788; Value = 0x5a84716895684e58; PC = 0x55555557e8a6 *)
join xmm9 L0x7fffffff0788 L0x7fffffff0788;
(* movddup 0x1e0(%rdi),%xmm10                      #! EA = L0x7fffffff0790; Value = 0x23a716dd346d4316; PC = 0x55555557e8af *)
join xmm10 L0x7fffffff0790 L0x7fffffff0790;
(* movddup 0x1e8(%rdi),%xmm11                      #! EA = L0x7fffffff0798; Value = 0xbbde940927183b72; PC = 0x55555557e8b8 *)
join xmm11 L0x7fffffff0798 L0x7fffffff0798;
(* movddup 0x1f0(%rdi),%xmm12                      #! EA = L0x7fffffff07a0; Value = 0x33f4860d37c96f1c; PC = 0x55555557e8c1 *)
join xmm12 L0x7fffffff07a0 L0x7fffffff07a0;
(* movddup 0x1f8(%rdi),%xmm13                      #! EA = L0x7fffffff07a8; Value = 0xf9273c88c23e8b7c; PC = 0x55555557e8ca *)
join xmm13 L0x7fffffff07a8 L0x7fffffff07a8;
(* vpand  %xmm0,%xmm6,%xmm14                       #! PC = 0x55555557e8d3 *)
and xmm14@uint128 xmm6 xmm0;
(* vpand  %xmm0,%xmm10,%xmm15                      #! PC = 0x55555557e8d7 *)
and xmm15@uint128 xmm10 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e8db *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm6,%xmm6                        #! PC = 0x55555557e8e1 *)
and xmm6@uint128 xmm6 xmm1;
(* vpand  %xmm1,%xmm10,%xmm10                      #! PC = 0x55555557e8e5 *)
and xmm10@uint128 xmm10 xmm1;
(* psrlq  $0x4,%xmm6                               #! PC = 0x55555557e8e9 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 4;
split xmm6L srldcL xmm6L 4;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm15,%xmm14,%xmm14                     #! PC = 0x55555557e8ee *)
or xmm14@uint128 xmm14 xmm15;
(* vpor   %xmm10,%xmm6,%xmm6                       #! PC = 0x55555557e8f3 *)
or xmm6@uint128 xmm6 xmm10;
(* vpand  %xmm0,%xmm7,%xmm10                       #! PC = 0x55555557e8f8 *)
and xmm10@uint128 xmm7 xmm0;
(* vpand  %xmm0,%xmm11,%xmm15                      #! PC = 0x55555557e8fc *)
and xmm15@uint128 xmm11 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e900 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm7,%xmm7                        #! PC = 0x55555557e906 *)
and xmm7@uint128 xmm7 xmm1;
(* vpand  %xmm1,%xmm11,%xmm11                      #! PC = 0x55555557e90a *)
and xmm11@uint128 xmm11 xmm1;
(* psrlq  $0x4,%xmm7                               #! PC = 0x55555557e90e *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 4;
split xmm7L srldcL xmm7L 4;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm15,%xmm10,%xmm10                     #! PC = 0x55555557e913 *)
or xmm10@uint128 xmm10 xmm15;
(* vpor   %xmm11,%xmm7,%xmm7                       #! PC = 0x55555557e918 *)
or xmm7@uint128 xmm7 xmm11;
(* vpand  %xmm0,%xmm8,%xmm11                       #! PC = 0x55555557e91d *)
and xmm11@uint128 xmm8 xmm0;
(* vpand  %xmm0,%xmm12,%xmm15                      #! PC = 0x55555557e921 *)
and xmm15@uint128 xmm12 xmm0;
(* psllq  $0x4,%xmm15                              #! PC = 0x55555557e925 *)
split xmm15H xmm15L xmm15 64;
cast xmm15H@uint64 xmm15H;
cast xmm15L@uint64 xmm15L;
split slldcH xmm15H xmm15H 60;
split slldcL xmm15L xmm15L 60;
shl xmm15H xmm15H 4;
shl xmm15L xmm15L 4;
join xmm15 xmm15H xmm15L;
(* vpand  %xmm1,%xmm8,%xmm8                        #! PC = 0x55555557e92b *)
and xmm8@uint128 xmm8 xmm1;
(* vpand  %xmm1,%xmm12,%xmm12                      #! PC = 0x55555557e92f *)
and xmm12@uint128 xmm12 xmm1;
(* psrlq  $0x4,%xmm8                               #! PC = 0x55555557e933 *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 4;
split xmm8L srldcL xmm8L 4;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm15,%xmm11,%xmm11                     #! PC = 0x55555557e939 *)
or xmm11@uint128 xmm11 xmm15;
(* vpor   %xmm12,%xmm8,%xmm8                       #! PC = 0x55555557e93e *)
or xmm8@uint128 xmm8 xmm12;
(* vpand  %xmm0,%xmm9,%xmm12                       #! PC = 0x55555557e943 *)
and xmm12@uint128 xmm9 xmm0;
(* vpand  %xmm0,%xmm13,%xmm0                       #! PC = 0x55555557e947 *)
and xmm0@uint128 xmm13 xmm0;
(* psllq  $0x4,%xmm0                               #! PC = 0x55555557e94b *)
split xmm0H xmm0L xmm0 64;
cast xmm0H@uint64 xmm0H;
cast xmm0L@uint64 xmm0L;
split slldcH xmm0H xmm0H 60;
split slldcL xmm0L xmm0L 60;
shl xmm0H xmm0H 4;
shl xmm0L xmm0L 4;
join xmm0 xmm0H xmm0L;
(* vpand  %xmm1,%xmm9,%xmm9                        #! PC = 0x55555557e950 *)
and xmm9@uint128 xmm9 xmm1;
(* vpand  %xmm1,%xmm13,%xmm1                       #! PC = 0x55555557e954 *)
and xmm1@uint128 xmm13 xmm1;
(* psrlq  $0x4,%xmm9                               #! PC = 0x55555557e958 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split xmm9H srldcH xmm9H 4;
split xmm9L srldcL xmm9L 4;
join xmm9 xmm9H xmm9L;
(* vpor   %xmm0,%xmm12,%xmm0                       #! PC = 0x55555557e95e *)
or xmm0@uint128 xmm12 xmm0;
(* vpor   %xmm1,%xmm9,%xmm1                        #! PC = 0x55555557e962 *)
or xmm1@uint128 xmm9 xmm1;
(* vpand  %xmm2,%xmm14,%xmm9                       #! PC = 0x55555557e966 *)
and xmm9@uint128 xmm14 xmm2;
(* vpand  %xmm2,%xmm11,%xmm12                      #! PC = 0x55555557e96a *)
and xmm12@uint128 xmm11 xmm2;
(* psllq  $0x2,%xmm12                              #! PC = 0x55555557e96e *)
split xmm12H xmm12L xmm12 64;
cast xmm12H@uint64 xmm12H;
cast xmm12L@uint64 xmm12L;
split slldcH xmm12H xmm12H 62;
split slldcL xmm12L xmm12L 62;
shl xmm12H xmm12H 2;
shl xmm12L xmm12L 2;
join xmm12 xmm12H xmm12L;
(* vpand  %xmm3,%xmm14,%xmm13                      #! PC = 0x55555557e974 *)
and xmm13@uint128 xmm14 xmm3;
(* vpand  %xmm3,%xmm11,%xmm11                      #! PC = 0x55555557e978 *)
and xmm11@uint128 xmm11 xmm3;
(* psrlq  $0x2,%xmm13                              #! PC = 0x55555557e97c *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split xmm13H srldcH xmm13H 2;
split xmm13L srldcL xmm13L 2;
join xmm13 xmm13H xmm13L;
(* vpor   %xmm12,%xmm9,%xmm9                       #! PC = 0x55555557e982 *)
or xmm9@uint128 xmm9 xmm12;
(* vpor   %xmm11,%xmm13,%xmm11                     #! PC = 0x55555557e987 *)
or xmm11@uint128 xmm13 xmm11;
(* vpand  %xmm2,%xmm10,%xmm12                      #! PC = 0x55555557e98c *)
and xmm12@uint128 xmm10 xmm2;
(* vpand  %xmm2,%xmm0,%xmm13                       #! PC = 0x55555557e990 *)
and xmm13@uint128 xmm0 xmm2;
(* psllq  $0x2,%xmm13                              #! PC = 0x55555557e994 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 62;
split slldcL xmm13L xmm13L 62;
shl xmm13H xmm13H 2;
shl xmm13L xmm13L 2;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm3,%xmm10,%xmm10                      #! PC = 0x55555557e99a *)
and xmm10@uint128 xmm10 xmm3;
(* vpand  %xmm3,%xmm0,%xmm0                        #! PC = 0x55555557e99e *)
and xmm0@uint128 xmm0 xmm3;
(* psrlq  $0x2,%xmm10                              #! PC = 0x55555557e9a2 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 2;
split xmm10L srldcL xmm10L 2;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm13,%xmm12,%xmm12                     #! PC = 0x55555557e9a8 *)
or xmm12@uint128 xmm12 xmm13;
(* vpor   %xmm0,%xmm10,%xmm0                       #! PC = 0x55555557e9ad *)
or xmm0@uint128 xmm10 xmm0;
(* vpand  %xmm2,%xmm6,%xmm10                       #! PC = 0x55555557e9b1 *)
and xmm10@uint128 xmm6 xmm2;
(* vpand  %xmm2,%xmm8,%xmm13                       #! PC = 0x55555557e9b5 *)
and xmm13@uint128 xmm8 xmm2;
(* psllq  $0x2,%xmm13                              #! PC = 0x55555557e9b9 *)
split xmm13H xmm13L xmm13 64;
cast xmm13H@uint64 xmm13H;
cast xmm13L@uint64 xmm13L;
split slldcH xmm13H xmm13H 62;
split slldcL xmm13L xmm13L 62;
shl xmm13H xmm13H 2;
shl xmm13L xmm13L 2;
join xmm13 xmm13H xmm13L;
(* vpand  %xmm3,%xmm6,%xmm6                        #! PC = 0x55555557e9bf *)
and xmm6@uint128 xmm6 xmm3;
(* vpand  %xmm3,%xmm8,%xmm8                        #! PC = 0x55555557e9c3 *)
and xmm8@uint128 xmm8 xmm3;
(* psrlq  $0x2,%xmm6                               #! PC = 0x55555557e9c7 *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 2;
split xmm6L srldcL xmm6L 2;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm13,%xmm10,%xmm10                     #! PC = 0x55555557e9cc *)
or xmm10@uint128 xmm10 xmm13;
(* vpor   %xmm8,%xmm6,%xmm6                        #! PC = 0x55555557e9d1 *)
or xmm6@uint128 xmm6 xmm8;
(* vpand  %xmm2,%xmm7,%xmm8                        #! PC = 0x55555557e9d6 *)
and xmm8@uint128 xmm7 xmm2;
(* vpand  %xmm2,%xmm1,%xmm2                        #! PC = 0x55555557e9da *)
and xmm2@uint128 xmm1 xmm2;
(* psllq  $0x2,%xmm2                               #! PC = 0x55555557e9de *)
split xmm2H xmm2L xmm2 64;
cast xmm2H@uint64 xmm2H;
cast xmm2L@uint64 xmm2L;
split slldcH xmm2H xmm2H 62;
split slldcL xmm2L xmm2L 62;
shl xmm2H xmm2H 2;
shl xmm2L xmm2L 2;
join xmm2 xmm2H xmm2L;
(* vpand  %xmm3,%xmm7,%xmm7                        #! PC = 0x55555557e9e3 *)
and xmm7@uint128 xmm7 xmm3;
(* vpand  %xmm3,%xmm1,%xmm1                        #! PC = 0x55555557e9e7 *)
and xmm1@uint128 xmm1 xmm3;
(* psrlq  $0x2,%xmm7                               #! PC = 0x55555557e9eb *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split xmm7H srldcH xmm7H 2;
split xmm7L srldcL xmm7L 2;
join xmm7 xmm7H xmm7L;
(* vpor   %xmm2,%xmm8,%xmm2                        #! PC = 0x55555557e9f0 *)
or xmm2@uint128 xmm8 xmm2;
(* vpor   %xmm1,%xmm7,%xmm1                        #! PC = 0x55555557e9f4 *)
or xmm1@uint128 xmm7 xmm1;
(* vpand  %xmm4,%xmm9,%xmm3                        #! PC = 0x55555557e9f8 *)
and xmm3@uint128 xmm9 xmm4;
(* vpand  %xmm4,%xmm12,%xmm7                       #! PC = 0x55555557e9fc *)
and xmm7@uint128 xmm12 xmm4;
(* psllq  $0x1,%xmm7                               #! PC = 0x55555557ea00 *)
split xmm7H xmm7L xmm7 64;
cast xmm7H@uint64 xmm7H;
cast xmm7L@uint64 xmm7L;
split slldcH xmm7H xmm7H 63;
split slldcL xmm7L xmm7L 63;
shl xmm7H xmm7H 1;
shl xmm7L xmm7L 1;
join xmm7 xmm7H xmm7L;
(* vpand  %xmm5,%xmm9,%xmm8                        #! PC = 0x55555557ea05 *)
and xmm8@uint128 xmm9 xmm5;
(* vpand  %xmm5,%xmm12,%xmm9                       #! PC = 0x55555557ea09 *)
and xmm9@uint128 xmm12 xmm5;
(* psrlq  $0x1,%xmm8                               #! PC = 0x55555557ea0d *)
split xmm8H xmm8L xmm8 64;
cast xmm8H@uint64 xmm8H;
cast xmm8L@uint64 xmm8L;
split xmm8H srldcH xmm8H 1;
split xmm8L srldcL xmm8L 1;
join xmm8 xmm8H xmm8L;
(* vpor   %xmm7,%xmm3,%xmm3                        #! PC = 0x55555557ea13 *)
or xmm3@uint128 xmm3 xmm7;
(* vpor   %xmm9,%xmm8,%xmm7                        #! PC = 0x55555557ea17 *)
or xmm7@uint128 xmm8 xmm9;
(* vpand  %xmm4,%xmm11,%xmm8                       #! PC = 0x55555557ea1c *)
and xmm8@uint128 xmm11 xmm4;
(* vpand  %xmm4,%xmm0,%xmm9                        #! PC = 0x55555557ea20 *)
and xmm9@uint128 xmm0 xmm4;
(* psllq  $0x1,%xmm9                               #! PC = 0x55555557ea24 *)
split xmm9H xmm9L xmm9 64;
cast xmm9H@uint64 xmm9H;
cast xmm9L@uint64 xmm9L;
split slldcH xmm9H xmm9H 63;
split slldcL xmm9L xmm9L 63;
shl xmm9H xmm9H 1;
shl xmm9L xmm9L 1;
join xmm9 xmm9H xmm9L;
(* vpand  %xmm5,%xmm11,%xmm11                      #! PC = 0x55555557ea2a *)
and xmm11@uint128 xmm11 xmm5;
(* vpand  %xmm5,%xmm0,%xmm0                        #! PC = 0x55555557ea2e *)
and xmm0@uint128 xmm0 xmm5;
(* psrlq  $0x1,%xmm11                              #! PC = 0x55555557ea32 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split xmm11H srldcH xmm11H 1;
split xmm11L srldcL xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpor   %xmm9,%xmm8,%xmm8                        #! PC = 0x55555557ea38 *)
or xmm8@uint128 xmm8 xmm9;
(* vpor   %xmm0,%xmm11,%xmm0                       #! PC = 0x55555557ea3d *)
or xmm0@uint128 xmm11 xmm0;
(* vpand  %xmm4,%xmm10,%xmm9                       #! PC = 0x55555557ea41 *)
and xmm9@uint128 xmm10 xmm4;
(* vpand  %xmm4,%xmm2,%xmm11                       #! PC = 0x55555557ea45 *)
and xmm11@uint128 xmm2 xmm4;
(* psllq  $0x1,%xmm11                              #! PC = 0x55555557ea49 *)
split xmm11H xmm11L xmm11 64;
cast xmm11H@uint64 xmm11H;
cast xmm11L@uint64 xmm11L;
split slldcH xmm11H xmm11H 63;
split slldcL xmm11L xmm11L 63;
shl xmm11H xmm11H 1;
shl xmm11L xmm11L 1;
join xmm11 xmm11H xmm11L;
(* vpand  %xmm5,%xmm10,%xmm10                      #! PC = 0x55555557ea4f *)
and xmm10@uint128 xmm10 xmm5;
(* vpand  %xmm5,%xmm2,%xmm2                        #! PC = 0x55555557ea53 *)
and xmm2@uint128 xmm2 xmm5;
(* psrlq  $0x1,%xmm10                              #! PC = 0x55555557ea57 *)
split xmm10H xmm10L xmm10 64;
cast xmm10H@uint64 xmm10H;
cast xmm10L@uint64 xmm10L;
split xmm10H srldcH xmm10H 1;
split xmm10L srldcL xmm10L 1;
join xmm10 xmm10H xmm10L;
(* vpor   %xmm11,%xmm9,%xmm9                       #! PC = 0x55555557ea5d *)
or xmm9@uint128 xmm9 xmm11;
(* vpor   %xmm2,%xmm10,%xmm2                       #! PC = 0x55555557ea62 *)
or xmm2@uint128 xmm10 xmm2;
(* vpand  %xmm4,%xmm6,%xmm10                       #! PC = 0x55555557ea66 *)
and xmm10@uint128 xmm6 xmm4;
(* vpand  %xmm4,%xmm1,%xmm4                        #! PC = 0x55555557ea6a *)
and xmm4@uint128 xmm1 xmm4;
(* psllq  $0x1,%xmm4                               #! PC = 0x55555557ea6e *)
split xmm4H xmm4L xmm4 64;
cast xmm4H@uint64 xmm4H;
cast xmm4L@uint64 xmm4L;
split slldcH xmm4H xmm4H 63;
split slldcL xmm4L xmm4L 63;
shl xmm4H xmm4H 1;
shl xmm4L xmm4L 1;
join xmm4 xmm4H xmm4L;
(* vpand  %xmm5,%xmm6,%xmm6                        #! PC = 0x55555557ea73 *)
and xmm6@uint128 xmm6 xmm5;
(* vpand  %xmm5,%xmm1,%xmm1                        #! PC = 0x55555557ea77 *)
and xmm1@uint128 xmm1 xmm5;
(* psrlq  $0x1,%xmm6                               #! PC = 0x55555557ea7b *)
split xmm6H xmm6L xmm6 64;
cast xmm6H@uint64 xmm6H;
cast xmm6L@uint64 xmm6L;
split xmm6H srldcH xmm6H 1;
split xmm6L srldcL xmm6L 1;
join xmm6 xmm6H xmm6L;
(* vpor   %xmm4,%xmm10,%xmm4                       #! PC = 0x55555557ea80 *)
or xmm4@uint128 xmm10 xmm4;
(* vpor   %xmm1,%xmm6,%xmm1                        #! PC = 0x55555557ea84 *)
or xmm1@uint128 xmm6 xmm1;
(* vpunpcklqdq %xmm7,%xmm3,%xmm3                   #! PC = 0x55555557ea88 *)
split unpckdcL xmm3L xmm3 64;
split unpckdcH xmm7L xmm7 64;
cast xmm3L@uint64 xmm3L;
cast xmm7L@uint64 xmm7L;
join xmm3 xmm7L xmm3L;
(* movdqu %xmm3,0x1c0(%rdi)                        #! EA = L0x7fffffff0770; PC = 0x55555557ea8c *)
split xmm3H xmm3L xmm3 64;
cast xmm3H@uint64 xmm3H;
cast xmm3L@uint64 xmm3L;
mov L0x7fffffff0770 xmm3L;
mov L0x7fffffff0778 xmm3H;
(* vpunpcklqdq %xmm0,%xmm8,%xmm0                   #! PC = 0x55555557ea94 *)
split unpckdcL xmm8L xmm8 64;
split unpckdcH xmm0L xmm0 64;
cast xmm8L@uint64 xmm8L;
cast xmm0L@uint64 xmm0L;
join xmm0 xmm0L xmm8L;
(* movdqu %xmm0,0x1d0(%rdi)                        #! EA = L0x7fffffff0780; PC = 0x55555557ea98 *)
split xmm0H xmm0L xmm0 64;
cast xmm0H@uint64 xmm0H;
cast xmm0L@uint64 xmm0L;
mov L0x7fffffff0780 xmm0L;
mov L0x7fffffff0788 xmm0H;
(* vpunpcklqdq %xmm2,%xmm9,%xmm0                   #! PC = 0x55555557eaa0 *)
split unpckdcL xmm9L xmm9 64;
split unpckdcH xmm2L xmm2 64;
cast xmm9L@uint64 xmm9L;
cast xmm2L@uint64 xmm2L;
join xmm0 xmm2L xmm9L;
(* movdqu %xmm0,0x1e0(%rdi)                        #! EA = L0x7fffffff0790; PC = 0x55555557eaa4 *)
split xmm0H xmm0L xmm0 64;
cast xmm0H@uint64 xmm0H;
cast xmm0L@uint64 xmm0L;
mov L0x7fffffff0790 xmm0L;
mov L0x7fffffff0798 xmm0H;
(* vpunpcklqdq %xmm1,%xmm4,%xmm0                   #! PC = 0x55555557eaac *)
split unpckdcL xmm4L xmm4 64;
split unpckdcH xmm1L xmm1 64;
cast xmm4L@uint64 xmm4L;
cast xmm1L@uint64 xmm1L;
join xmm0 xmm1L xmm4L;
(* movdqu %xmm0,0x1f0(%rdi)                        #! EA = L0x7fffffff07a0; PC = 0x55555557eab0 *)
split xmm0H xmm0L xmm0 64;
cast xmm0H@uint64 xmm0H;
cast xmm0L@uint64 xmm0L;
mov L0x7fffffff07a0 xmm0L;
mov L0x7fffffff07a8 xmm0H;
(* #add    %r11,%rsp                                #! PC = 0x55555557eab8 *)
#add    %r11,%rsp                                #! 0x55555557eab8 = 0x55555557eab8;
(* #! <- SP = 0x7fffffff0478 *)
#! 0x7fffffff0478 = 0x7fffffff0478;
(* #retq                                           #! PC = 0x55555557eabb *)
#retq                                           #! 0x55555557eabb = 0x55555557eabb;

(**************** output *****************)

mov t000 L0x7fffffff05b0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0000@bit t600; cast d0001@bit t601; cast d0002@bit t602;
cast d0003@bit t603; cast d0004@bit t604; cast d0005@bit t605;
cast d0006@bit t606; cast d0007@bit t607; cast d0008@bit t608;
cast d0009@bit t609; cast d0010@bit t610; cast d0011@bit t611;
cast d0012@bit t612; cast d0013@bit t613; cast d0014@bit t614;
cast d0015@bit t615; cast d0016@bit t616; cast d0017@bit t617;
cast d0018@bit t618; cast d0019@bit t619; cast d0020@bit t620;
cast d0021@bit t621; cast d0022@bit t622; cast d0023@bit t623;
cast d0024@bit t624; cast d0025@bit t625; cast d0026@bit t626;
cast d0027@bit t627; cast d0028@bit t628; cast d0029@bit t629;
cast d0030@bit t630; cast d0031@bit t631; cast d0032@bit t632;
cast d0033@bit t633; cast d0034@bit t634; cast d0035@bit t635;
cast d0036@bit t636; cast d0037@bit t637; cast d0038@bit t638;
cast d0039@bit t639; cast d0040@bit t640; cast d0041@bit t641;
cast d0042@bit t642; cast d0043@bit t643; cast d0044@bit t644;
cast d0045@bit t645; cast d0046@bit t646; cast d0047@bit t647;
cast d0048@bit t648; cast d0049@bit t649; cast d0050@bit t650;
cast d0051@bit t651; cast d0052@bit t652; cast d0053@bit t653;
cast d0054@bit t654; cast d0055@bit t655; cast d0056@bit t656;
cast d0057@bit t657; cast d0058@bit t658; cast d0059@bit t659;
cast d0060@bit t660; cast d0061@bit t661; cast d0062@bit t662;
cast d0063@bit t663;
mov t000 L0x7fffffff05b8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0100@bit t600; cast d0101@bit t601; cast d0102@bit t602;
cast d0103@bit t603; cast d0104@bit t604; cast d0105@bit t605;
cast d0106@bit t606; cast d0107@bit t607; cast d0108@bit t608;
cast d0109@bit t609; cast d0110@bit t610; cast d0111@bit t611;
cast d0112@bit t612; cast d0113@bit t613; cast d0114@bit t614;
cast d0115@bit t615; cast d0116@bit t616; cast d0117@bit t617;
cast d0118@bit t618; cast d0119@bit t619; cast d0120@bit t620;
cast d0121@bit t621; cast d0122@bit t622; cast d0123@bit t623;
cast d0124@bit t624; cast d0125@bit t625; cast d0126@bit t626;
cast d0127@bit t627; cast d0128@bit t628; cast d0129@bit t629;
cast d0130@bit t630; cast d0131@bit t631; cast d0132@bit t632;
cast d0133@bit t633; cast d0134@bit t634; cast d0135@bit t635;
cast d0136@bit t636; cast d0137@bit t637; cast d0138@bit t638;
cast d0139@bit t639; cast d0140@bit t640; cast d0141@bit t641;
cast d0142@bit t642; cast d0143@bit t643; cast d0144@bit t644;
cast d0145@bit t645; cast d0146@bit t646; cast d0147@bit t647;
cast d0148@bit t648; cast d0149@bit t649; cast d0150@bit t650;
cast d0151@bit t651; cast d0152@bit t652; cast d0153@bit t653;
cast d0154@bit t654; cast d0155@bit t655; cast d0156@bit t656;
cast d0157@bit t657; cast d0158@bit t658; cast d0159@bit t659;
cast d0160@bit t660; cast d0161@bit t661; cast d0162@bit t662;
cast d0163@bit t663;
mov t000 L0x7fffffff05c0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0200@bit t600; cast d0201@bit t601; cast d0202@bit t602;
cast d0203@bit t603; cast d0204@bit t604; cast d0205@bit t605;
cast d0206@bit t606; cast d0207@bit t607; cast d0208@bit t608;
cast d0209@bit t609; cast d0210@bit t610; cast d0211@bit t611;
cast d0212@bit t612; cast d0213@bit t613; cast d0214@bit t614;
cast d0215@bit t615; cast d0216@bit t616; cast d0217@bit t617;
cast d0218@bit t618; cast d0219@bit t619; cast d0220@bit t620;
cast d0221@bit t621; cast d0222@bit t622; cast d0223@bit t623;
cast d0224@bit t624; cast d0225@bit t625; cast d0226@bit t626;
cast d0227@bit t627; cast d0228@bit t628; cast d0229@bit t629;
cast d0230@bit t630; cast d0231@bit t631; cast d0232@bit t632;
cast d0233@bit t633; cast d0234@bit t634; cast d0235@bit t635;
cast d0236@bit t636; cast d0237@bit t637; cast d0238@bit t638;
cast d0239@bit t639; cast d0240@bit t640; cast d0241@bit t641;
cast d0242@bit t642; cast d0243@bit t643; cast d0244@bit t644;
cast d0245@bit t645; cast d0246@bit t646; cast d0247@bit t647;
cast d0248@bit t648; cast d0249@bit t649; cast d0250@bit t650;
cast d0251@bit t651; cast d0252@bit t652; cast d0253@bit t653;
cast d0254@bit t654; cast d0255@bit t655; cast d0256@bit t656;
cast d0257@bit t657; cast d0258@bit t658; cast d0259@bit t659;
cast d0260@bit t660; cast d0261@bit t661; cast d0262@bit t662;
cast d0263@bit t663;
mov t000 L0x7fffffff05c8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0300@bit t600; cast d0301@bit t601; cast d0302@bit t602;
cast d0303@bit t603; cast d0304@bit t604; cast d0305@bit t605;
cast d0306@bit t606; cast d0307@bit t607; cast d0308@bit t608;
cast d0309@bit t609; cast d0310@bit t610; cast d0311@bit t611;
cast d0312@bit t612; cast d0313@bit t613; cast d0314@bit t614;
cast d0315@bit t615; cast d0316@bit t616; cast d0317@bit t617;
cast d0318@bit t618; cast d0319@bit t619; cast d0320@bit t620;
cast d0321@bit t621; cast d0322@bit t622; cast d0323@bit t623;
cast d0324@bit t624; cast d0325@bit t625; cast d0326@bit t626;
cast d0327@bit t627; cast d0328@bit t628; cast d0329@bit t629;
cast d0330@bit t630; cast d0331@bit t631; cast d0332@bit t632;
cast d0333@bit t633; cast d0334@bit t634; cast d0335@bit t635;
cast d0336@bit t636; cast d0337@bit t637; cast d0338@bit t638;
cast d0339@bit t639; cast d0340@bit t640; cast d0341@bit t641;
cast d0342@bit t642; cast d0343@bit t643; cast d0344@bit t644;
cast d0345@bit t645; cast d0346@bit t646; cast d0347@bit t647;
cast d0348@bit t648; cast d0349@bit t649; cast d0350@bit t650;
cast d0351@bit t651; cast d0352@bit t652; cast d0353@bit t653;
cast d0354@bit t654; cast d0355@bit t655; cast d0356@bit t656;
cast d0357@bit t657; cast d0358@bit t658; cast d0359@bit t659;
cast d0360@bit t660; cast d0361@bit t661; cast d0362@bit t662;
cast d0363@bit t663;
mov t000 L0x7fffffff05d0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0400@bit t600; cast d0401@bit t601; cast d0402@bit t602;
cast d0403@bit t603; cast d0404@bit t604; cast d0405@bit t605;
cast d0406@bit t606; cast d0407@bit t607; cast d0408@bit t608;
cast d0409@bit t609; cast d0410@bit t610; cast d0411@bit t611;
cast d0412@bit t612; cast d0413@bit t613; cast d0414@bit t614;
cast d0415@bit t615; cast d0416@bit t616; cast d0417@bit t617;
cast d0418@bit t618; cast d0419@bit t619; cast d0420@bit t620;
cast d0421@bit t621; cast d0422@bit t622; cast d0423@bit t623;
cast d0424@bit t624; cast d0425@bit t625; cast d0426@bit t626;
cast d0427@bit t627; cast d0428@bit t628; cast d0429@bit t629;
cast d0430@bit t630; cast d0431@bit t631; cast d0432@bit t632;
cast d0433@bit t633; cast d0434@bit t634; cast d0435@bit t635;
cast d0436@bit t636; cast d0437@bit t637; cast d0438@bit t638;
cast d0439@bit t639; cast d0440@bit t640; cast d0441@bit t641;
cast d0442@bit t642; cast d0443@bit t643; cast d0444@bit t644;
cast d0445@bit t645; cast d0446@bit t646; cast d0447@bit t647;
cast d0448@bit t648; cast d0449@bit t649; cast d0450@bit t650;
cast d0451@bit t651; cast d0452@bit t652; cast d0453@bit t653;
cast d0454@bit t654; cast d0455@bit t655; cast d0456@bit t656;
cast d0457@bit t657; cast d0458@bit t658; cast d0459@bit t659;
cast d0460@bit t660; cast d0461@bit t661; cast d0462@bit t662;
cast d0463@bit t663;
mov t000 L0x7fffffff05d8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0500@bit t600; cast d0501@bit t601; cast d0502@bit t602;
cast d0503@bit t603; cast d0504@bit t604; cast d0505@bit t605;
cast d0506@bit t606; cast d0507@bit t607; cast d0508@bit t608;
cast d0509@bit t609; cast d0510@bit t610; cast d0511@bit t611;
cast d0512@bit t612; cast d0513@bit t613; cast d0514@bit t614;
cast d0515@bit t615; cast d0516@bit t616; cast d0517@bit t617;
cast d0518@bit t618; cast d0519@bit t619; cast d0520@bit t620;
cast d0521@bit t621; cast d0522@bit t622; cast d0523@bit t623;
cast d0524@bit t624; cast d0525@bit t625; cast d0526@bit t626;
cast d0527@bit t627; cast d0528@bit t628; cast d0529@bit t629;
cast d0530@bit t630; cast d0531@bit t631; cast d0532@bit t632;
cast d0533@bit t633; cast d0534@bit t634; cast d0535@bit t635;
cast d0536@bit t636; cast d0537@bit t637; cast d0538@bit t638;
cast d0539@bit t639; cast d0540@bit t640; cast d0541@bit t641;
cast d0542@bit t642; cast d0543@bit t643; cast d0544@bit t644;
cast d0545@bit t645; cast d0546@bit t646; cast d0547@bit t647;
cast d0548@bit t648; cast d0549@bit t649; cast d0550@bit t650;
cast d0551@bit t651; cast d0552@bit t652; cast d0553@bit t653;
cast d0554@bit t654; cast d0555@bit t655; cast d0556@bit t656;
cast d0557@bit t657; cast d0558@bit t658; cast d0559@bit t659;
cast d0560@bit t660; cast d0561@bit t661; cast d0562@bit t662;
cast d0563@bit t663;
mov t000 L0x7fffffff05e0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0600@bit t600; cast d0601@bit t601; cast d0602@bit t602;
cast d0603@bit t603; cast d0604@bit t604; cast d0605@bit t605;
cast d0606@bit t606; cast d0607@bit t607; cast d0608@bit t608;
cast d0609@bit t609; cast d0610@bit t610; cast d0611@bit t611;
cast d0612@bit t612; cast d0613@bit t613; cast d0614@bit t614;
cast d0615@bit t615; cast d0616@bit t616; cast d0617@bit t617;
cast d0618@bit t618; cast d0619@bit t619; cast d0620@bit t620;
cast d0621@bit t621; cast d0622@bit t622; cast d0623@bit t623;
cast d0624@bit t624; cast d0625@bit t625; cast d0626@bit t626;
cast d0627@bit t627; cast d0628@bit t628; cast d0629@bit t629;
cast d0630@bit t630; cast d0631@bit t631; cast d0632@bit t632;
cast d0633@bit t633; cast d0634@bit t634; cast d0635@bit t635;
cast d0636@bit t636; cast d0637@bit t637; cast d0638@bit t638;
cast d0639@bit t639; cast d0640@bit t640; cast d0641@bit t641;
cast d0642@bit t642; cast d0643@bit t643; cast d0644@bit t644;
cast d0645@bit t645; cast d0646@bit t646; cast d0647@bit t647;
cast d0648@bit t648; cast d0649@bit t649; cast d0650@bit t650;
cast d0651@bit t651; cast d0652@bit t652; cast d0653@bit t653;
cast d0654@bit t654; cast d0655@bit t655; cast d0656@bit t656;
cast d0657@bit t657; cast d0658@bit t658; cast d0659@bit t659;
cast d0660@bit t660; cast d0661@bit t661; cast d0662@bit t662;
cast d0663@bit t663;
mov t000 L0x7fffffff05e8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0700@bit t600; cast d0701@bit t601; cast d0702@bit t602;
cast d0703@bit t603; cast d0704@bit t604; cast d0705@bit t605;
cast d0706@bit t606; cast d0707@bit t607; cast d0708@bit t608;
cast d0709@bit t609; cast d0710@bit t610; cast d0711@bit t611;
cast d0712@bit t612; cast d0713@bit t613; cast d0714@bit t614;
cast d0715@bit t615; cast d0716@bit t616; cast d0717@bit t617;
cast d0718@bit t618; cast d0719@bit t619; cast d0720@bit t620;
cast d0721@bit t621; cast d0722@bit t622; cast d0723@bit t623;
cast d0724@bit t624; cast d0725@bit t625; cast d0726@bit t626;
cast d0727@bit t627; cast d0728@bit t628; cast d0729@bit t629;
cast d0730@bit t630; cast d0731@bit t631; cast d0732@bit t632;
cast d0733@bit t633; cast d0734@bit t634; cast d0735@bit t635;
cast d0736@bit t636; cast d0737@bit t637; cast d0738@bit t638;
cast d0739@bit t639; cast d0740@bit t640; cast d0741@bit t641;
cast d0742@bit t642; cast d0743@bit t643; cast d0744@bit t644;
cast d0745@bit t645; cast d0746@bit t646; cast d0747@bit t647;
cast d0748@bit t648; cast d0749@bit t649; cast d0750@bit t650;
cast d0751@bit t651; cast d0752@bit t652; cast d0753@bit t653;
cast d0754@bit t654; cast d0755@bit t655; cast d0756@bit t656;
cast d0757@bit t657; cast d0758@bit t658; cast d0759@bit t659;
cast d0760@bit t660; cast d0761@bit t661; cast d0762@bit t662;
cast d0763@bit t663;
mov t000 L0x7fffffff05f0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0800@bit t600; cast d0801@bit t601; cast d0802@bit t602;
cast d0803@bit t603; cast d0804@bit t604; cast d0805@bit t605;
cast d0806@bit t606; cast d0807@bit t607; cast d0808@bit t608;
cast d0809@bit t609; cast d0810@bit t610; cast d0811@bit t611;
cast d0812@bit t612; cast d0813@bit t613; cast d0814@bit t614;
cast d0815@bit t615; cast d0816@bit t616; cast d0817@bit t617;
cast d0818@bit t618; cast d0819@bit t619; cast d0820@bit t620;
cast d0821@bit t621; cast d0822@bit t622; cast d0823@bit t623;
cast d0824@bit t624; cast d0825@bit t625; cast d0826@bit t626;
cast d0827@bit t627; cast d0828@bit t628; cast d0829@bit t629;
cast d0830@bit t630; cast d0831@bit t631; cast d0832@bit t632;
cast d0833@bit t633; cast d0834@bit t634; cast d0835@bit t635;
cast d0836@bit t636; cast d0837@bit t637; cast d0838@bit t638;
cast d0839@bit t639; cast d0840@bit t640; cast d0841@bit t641;
cast d0842@bit t642; cast d0843@bit t643; cast d0844@bit t644;
cast d0845@bit t645; cast d0846@bit t646; cast d0847@bit t647;
cast d0848@bit t648; cast d0849@bit t649; cast d0850@bit t650;
cast d0851@bit t651; cast d0852@bit t652; cast d0853@bit t653;
cast d0854@bit t654; cast d0855@bit t655; cast d0856@bit t656;
cast d0857@bit t657; cast d0858@bit t658; cast d0859@bit t659;
cast d0860@bit t660; cast d0861@bit t661; cast d0862@bit t662;
cast d0863@bit t663;
mov t000 L0x7fffffff05f8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d0900@bit t600; cast d0901@bit t601; cast d0902@bit t602;
cast d0903@bit t603; cast d0904@bit t604; cast d0905@bit t605;
cast d0906@bit t606; cast d0907@bit t607; cast d0908@bit t608;
cast d0909@bit t609; cast d0910@bit t610; cast d0911@bit t611;
cast d0912@bit t612; cast d0913@bit t613; cast d0914@bit t614;
cast d0915@bit t615; cast d0916@bit t616; cast d0917@bit t617;
cast d0918@bit t618; cast d0919@bit t619; cast d0920@bit t620;
cast d0921@bit t621; cast d0922@bit t622; cast d0923@bit t623;
cast d0924@bit t624; cast d0925@bit t625; cast d0926@bit t626;
cast d0927@bit t627; cast d0928@bit t628; cast d0929@bit t629;
cast d0930@bit t630; cast d0931@bit t631; cast d0932@bit t632;
cast d0933@bit t633; cast d0934@bit t634; cast d0935@bit t635;
cast d0936@bit t636; cast d0937@bit t637; cast d0938@bit t638;
cast d0939@bit t639; cast d0940@bit t640; cast d0941@bit t641;
cast d0942@bit t642; cast d0943@bit t643; cast d0944@bit t644;
cast d0945@bit t645; cast d0946@bit t646; cast d0947@bit t647;
cast d0948@bit t648; cast d0949@bit t649; cast d0950@bit t650;
cast d0951@bit t651; cast d0952@bit t652; cast d0953@bit t653;
cast d0954@bit t654; cast d0955@bit t655; cast d0956@bit t656;
cast d0957@bit t657; cast d0958@bit t658; cast d0959@bit t659;
cast d0960@bit t660; cast d0961@bit t661; cast d0962@bit t662;
cast d0963@bit t663;
mov t000 L0x7fffffff0600;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1000@bit t600; cast d1001@bit t601; cast d1002@bit t602;
cast d1003@bit t603; cast d1004@bit t604; cast d1005@bit t605;
cast d1006@bit t606; cast d1007@bit t607; cast d1008@bit t608;
cast d1009@bit t609; cast d1010@bit t610; cast d1011@bit t611;
cast d1012@bit t612; cast d1013@bit t613; cast d1014@bit t614;
cast d1015@bit t615; cast d1016@bit t616; cast d1017@bit t617;
cast d1018@bit t618; cast d1019@bit t619; cast d1020@bit t620;
cast d1021@bit t621; cast d1022@bit t622; cast d1023@bit t623;
cast d1024@bit t624; cast d1025@bit t625; cast d1026@bit t626;
cast d1027@bit t627; cast d1028@bit t628; cast d1029@bit t629;
cast d1030@bit t630; cast d1031@bit t631; cast d1032@bit t632;
cast d1033@bit t633; cast d1034@bit t634; cast d1035@bit t635;
cast d1036@bit t636; cast d1037@bit t637; cast d1038@bit t638;
cast d1039@bit t639; cast d1040@bit t640; cast d1041@bit t641;
cast d1042@bit t642; cast d1043@bit t643; cast d1044@bit t644;
cast d1045@bit t645; cast d1046@bit t646; cast d1047@bit t647;
cast d1048@bit t648; cast d1049@bit t649; cast d1050@bit t650;
cast d1051@bit t651; cast d1052@bit t652; cast d1053@bit t653;
cast d1054@bit t654; cast d1055@bit t655; cast d1056@bit t656;
cast d1057@bit t657; cast d1058@bit t658; cast d1059@bit t659;
cast d1060@bit t660; cast d1061@bit t661; cast d1062@bit t662;
cast d1063@bit t663;
mov t000 L0x7fffffff0608;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1100@bit t600; cast d1101@bit t601; cast d1102@bit t602;
cast d1103@bit t603; cast d1104@bit t604; cast d1105@bit t605;
cast d1106@bit t606; cast d1107@bit t607; cast d1108@bit t608;
cast d1109@bit t609; cast d1110@bit t610; cast d1111@bit t611;
cast d1112@bit t612; cast d1113@bit t613; cast d1114@bit t614;
cast d1115@bit t615; cast d1116@bit t616; cast d1117@bit t617;
cast d1118@bit t618; cast d1119@bit t619; cast d1120@bit t620;
cast d1121@bit t621; cast d1122@bit t622; cast d1123@bit t623;
cast d1124@bit t624; cast d1125@bit t625; cast d1126@bit t626;
cast d1127@bit t627; cast d1128@bit t628; cast d1129@bit t629;
cast d1130@bit t630; cast d1131@bit t631; cast d1132@bit t632;
cast d1133@bit t633; cast d1134@bit t634; cast d1135@bit t635;
cast d1136@bit t636; cast d1137@bit t637; cast d1138@bit t638;
cast d1139@bit t639; cast d1140@bit t640; cast d1141@bit t641;
cast d1142@bit t642; cast d1143@bit t643; cast d1144@bit t644;
cast d1145@bit t645; cast d1146@bit t646; cast d1147@bit t647;
cast d1148@bit t648; cast d1149@bit t649; cast d1150@bit t650;
cast d1151@bit t651; cast d1152@bit t652; cast d1153@bit t653;
cast d1154@bit t654; cast d1155@bit t655; cast d1156@bit t656;
cast d1157@bit t657; cast d1158@bit t658; cast d1159@bit t659;
cast d1160@bit t660; cast d1161@bit t661; cast d1162@bit t662;
cast d1163@bit t663;
mov t000 L0x7fffffff0610;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1200@bit t600; cast d1201@bit t601; cast d1202@bit t602;
cast d1203@bit t603; cast d1204@bit t604; cast d1205@bit t605;
cast d1206@bit t606; cast d1207@bit t607; cast d1208@bit t608;
cast d1209@bit t609; cast d1210@bit t610; cast d1211@bit t611;
cast d1212@bit t612; cast d1213@bit t613; cast d1214@bit t614;
cast d1215@bit t615; cast d1216@bit t616; cast d1217@bit t617;
cast d1218@bit t618; cast d1219@bit t619; cast d1220@bit t620;
cast d1221@bit t621; cast d1222@bit t622; cast d1223@bit t623;
cast d1224@bit t624; cast d1225@bit t625; cast d1226@bit t626;
cast d1227@bit t627; cast d1228@bit t628; cast d1229@bit t629;
cast d1230@bit t630; cast d1231@bit t631; cast d1232@bit t632;
cast d1233@bit t633; cast d1234@bit t634; cast d1235@bit t635;
cast d1236@bit t636; cast d1237@bit t637; cast d1238@bit t638;
cast d1239@bit t639; cast d1240@bit t640; cast d1241@bit t641;
cast d1242@bit t642; cast d1243@bit t643; cast d1244@bit t644;
cast d1245@bit t645; cast d1246@bit t646; cast d1247@bit t647;
cast d1248@bit t648; cast d1249@bit t649; cast d1250@bit t650;
cast d1251@bit t651; cast d1252@bit t652; cast d1253@bit t653;
cast d1254@bit t654; cast d1255@bit t655; cast d1256@bit t656;
cast d1257@bit t657; cast d1258@bit t658; cast d1259@bit t659;
cast d1260@bit t660; cast d1261@bit t661; cast d1262@bit t662;
cast d1263@bit t663;
mov t000 L0x7fffffff0618;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1300@bit t600; cast d1301@bit t601; cast d1302@bit t602;
cast d1303@bit t603; cast d1304@bit t604; cast d1305@bit t605;
cast d1306@bit t606; cast d1307@bit t607; cast d1308@bit t608;
cast d1309@bit t609; cast d1310@bit t610; cast d1311@bit t611;
cast d1312@bit t612; cast d1313@bit t613; cast d1314@bit t614;
cast d1315@bit t615; cast d1316@bit t616; cast d1317@bit t617;
cast d1318@bit t618; cast d1319@bit t619; cast d1320@bit t620;
cast d1321@bit t621; cast d1322@bit t622; cast d1323@bit t623;
cast d1324@bit t624; cast d1325@bit t625; cast d1326@bit t626;
cast d1327@bit t627; cast d1328@bit t628; cast d1329@bit t629;
cast d1330@bit t630; cast d1331@bit t631; cast d1332@bit t632;
cast d1333@bit t633; cast d1334@bit t634; cast d1335@bit t635;
cast d1336@bit t636; cast d1337@bit t637; cast d1338@bit t638;
cast d1339@bit t639; cast d1340@bit t640; cast d1341@bit t641;
cast d1342@bit t642; cast d1343@bit t643; cast d1344@bit t644;
cast d1345@bit t645; cast d1346@bit t646; cast d1347@bit t647;
cast d1348@bit t648; cast d1349@bit t649; cast d1350@bit t650;
cast d1351@bit t651; cast d1352@bit t652; cast d1353@bit t653;
cast d1354@bit t654; cast d1355@bit t655; cast d1356@bit t656;
cast d1357@bit t657; cast d1358@bit t658; cast d1359@bit t659;
cast d1360@bit t660; cast d1361@bit t661; cast d1362@bit t662;
cast d1363@bit t663;
mov t000 L0x7fffffff0620;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1400@bit t600; cast d1401@bit t601; cast d1402@bit t602;
cast d1403@bit t603; cast d1404@bit t604; cast d1405@bit t605;
cast d1406@bit t606; cast d1407@bit t607; cast d1408@bit t608;
cast d1409@bit t609; cast d1410@bit t610; cast d1411@bit t611;
cast d1412@bit t612; cast d1413@bit t613; cast d1414@bit t614;
cast d1415@bit t615; cast d1416@bit t616; cast d1417@bit t617;
cast d1418@bit t618; cast d1419@bit t619; cast d1420@bit t620;
cast d1421@bit t621; cast d1422@bit t622; cast d1423@bit t623;
cast d1424@bit t624; cast d1425@bit t625; cast d1426@bit t626;
cast d1427@bit t627; cast d1428@bit t628; cast d1429@bit t629;
cast d1430@bit t630; cast d1431@bit t631; cast d1432@bit t632;
cast d1433@bit t633; cast d1434@bit t634; cast d1435@bit t635;
cast d1436@bit t636; cast d1437@bit t637; cast d1438@bit t638;
cast d1439@bit t639; cast d1440@bit t640; cast d1441@bit t641;
cast d1442@bit t642; cast d1443@bit t643; cast d1444@bit t644;
cast d1445@bit t645; cast d1446@bit t646; cast d1447@bit t647;
cast d1448@bit t648; cast d1449@bit t649; cast d1450@bit t650;
cast d1451@bit t651; cast d1452@bit t652; cast d1453@bit t653;
cast d1454@bit t654; cast d1455@bit t655; cast d1456@bit t656;
cast d1457@bit t657; cast d1458@bit t658; cast d1459@bit t659;
cast d1460@bit t660; cast d1461@bit t661; cast d1462@bit t662;
cast d1463@bit t663;
mov t000 L0x7fffffff0628;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1500@bit t600; cast d1501@bit t601; cast d1502@bit t602;
cast d1503@bit t603; cast d1504@bit t604; cast d1505@bit t605;
cast d1506@bit t606; cast d1507@bit t607; cast d1508@bit t608;
cast d1509@bit t609; cast d1510@bit t610; cast d1511@bit t611;
cast d1512@bit t612; cast d1513@bit t613; cast d1514@bit t614;
cast d1515@bit t615; cast d1516@bit t616; cast d1517@bit t617;
cast d1518@bit t618; cast d1519@bit t619; cast d1520@bit t620;
cast d1521@bit t621; cast d1522@bit t622; cast d1523@bit t623;
cast d1524@bit t624; cast d1525@bit t625; cast d1526@bit t626;
cast d1527@bit t627; cast d1528@bit t628; cast d1529@bit t629;
cast d1530@bit t630; cast d1531@bit t631; cast d1532@bit t632;
cast d1533@bit t633; cast d1534@bit t634; cast d1535@bit t635;
cast d1536@bit t636; cast d1537@bit t637; cast d1538@bit t638;
cast d1539@bit t639; cast d1540@bit t640; cast d1541@bit t641;
cast d1542@bit t642; cast d1543@bit t643; cast d1544@bit t644;
cast d1545@bit t645; cast d1546@bit t646; cast d1547@bit t647;
cast d1548@bit t648; cast d1549@bit t649; cast d1550@bit t650;
cast d1551@bit t651; cast d1552@bit t652; cast d1553@bit t653;
cast d1554@bit t654; cast d1555@bit t655; cast d1556@bit t656;
cast d1557@bit t657; cast d1558@bit t658; cast d1559@bit t659;
cast d1560@bit t660; cast d1561@bit t661; cast d1562@bit t662;
cast d1563@bit t663;
mov t000 L0x7fffffff0630;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1600@bit t600; cast d1601@bit t601; cast d1602@bit t602;
cast d1603@bit t603; cast d1604@bit t604; cast d1605@bit t605;
cast d1606@bit t606; cast d1607@bit t607; cast d1608@bit t608;
cast d1609@bit t609; cast d1610@bit t610; cast d1611@bit t611;
cast d1612@bit t612; cast d1613@bit t613; cast d1614@bit t614;
cast d1615@bit t615; cast d1616@bit t616; cast d1617@bit t617;
cast d1618@bit t618; cast d1619@bit t619; cast d1620@bit t620;
cast d1621@bit t621; cast d1622@bit t622; cast d1623@bit t623;
cast d1624@bit t624; cast d1625@bit t625; cast d1626@bit t626;
cast d1627@bit t627; cast d1628@bit t628; cast d1629@bit t629;
cast d1630@bit t630; cast d1631@bit t631; cast d1632@bit t632;
cast d1633@bit t633; cast d1634@bit t634; cast d1635@bit t635;
cast d1636@bit t636; cast d1637@bit t637; cast d1638@bit t638;
cast d1639@bit t639; cast d1640@bit t640; cast d1641@bit t641;
cast d1642@bit t642; cast d1643@bit t643; cast d1644@bit t644;
cast d1645@bit t645; cast d1646@bit t646; cast d1647@bit t647;
cast d1648@bit t648; cast d1649@bit t649; cast d1650@bit t650;
cast d1651@bit t651; cast d1652@bit t652; cast d1653@bit t653;
cast d1654@bit t654; cast d1655@bit t655; cast d1656@bit t656;
cast d1657@bit t657; cast d1658@bit t658; cast d1659@bit t659;
cast d1660@bit t660; cast d1661@bit t661; cast d1662@bit t662;
cast d1663@bit t663;
mov t000 L0x7fffffff0638;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1700@bit t600; cast d1701@bit t601; cast d1702@bit t602;
cast d1703@bit t603; cast d1704@bit t604; cast d1705@bit t605;
cast d1706@bit t606; cast d1707@bit t607; cast d1708@bit t608;
cast d1709@bit t609; cast d1710@bit t610; cast d1711@bit t611;
cast d1712@bit t612; cast d1713@bit t613; cast d1714@bit t614;
cast d1715@bit t615; cast d1716@bit t616; cast d1717@bit t617;
cast d1718@bit t618; cast d1719@bit t619; cast d1720@bit t620;
cast d1721@bit t621; cast d1722@bit t622; cast d1723@bit t623;
cast d1724@bit t624; cast d1725@bit t625; cast d1726@bit t626;
cast d1727@bit t627; cast d1728@bit t628; cast d1729@bit t629;
cast d1730@bit t630; cast d1731@bit t631; cast d1732@bit t632;
cast d1733@bit t633; cast d1734@bit t634; cast d1735@bit t635;
cast d1736@bit t636; cast d1737@bit t637; cast d1738@bit t638;
cast d1739@bit t639; cast d1740@bit t640; cast d1741@bit t641;
cast d1742@bit t642; cast d1743@bit t643; cast d1744@bit t644;
cast d1745@bit t645; cast d1746@bit t646; cast d1747@bit t647;
cast d1748@bit t648; cast d1749@bit t649; cast d1750@bit t650;
cast d1751@bit t651; cast d1752@bit t652; cast d1753@bit t653;
cast d1754@bit t654; cast d1755@bit t655; cast d1756@bit t656;
cast d1757@bit t657; cast d1758@bit t658; cast d1759@bit t659;
cast d1760@bit t660; cast d1761@bit t661; cast d1762@bit t662;
cast d1763@bit t663;
mov t000 L0x7fffffff0640;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1800@bit t600; cast d1801@bit t601; cast d1802@bit t602;
cast d1803@bit t603; cast d1804@bit t604; cast d1805@bit t605;
cast d1806@bit t606; cast d1807@bit t607; cast d1808@bit t608;
cast d1809@bit t609; cast d1810@bit t610; cast d1811@bit t611;
cast d1812@bit t612; cast d1813@bit t613; cast d1814@bit t614;
cast d1815@bit t615; cast d1816@bit t616; cast d1817@bit t617;
cast d1818@bit t618; cast d1819@bit t619; cast d1820@bit t620;
cast d1821@bit t621; cast d1822@bit t622; cast d1823@bit t623;
cast d1824@bit t624; cast d1825@bit t625; cast d1826@bit t626;
cast d1827@bit t627; cast d1828@bit t628; cast d1829@bit t629;
cast d1830@bit t630; cast d1831@bit t631; cast d1832@bit t632;
cast d1833@bit t633; cast d1834@bit t634; cast d1835@bit t635;
cast d1836@bit t636; cast d1837@bit t637; cast d1838@bit t638;
cast d1839@bit t639; cast d1840@bit t640; cast d1841@bit t641;
cast d1842@bit t642; cast d1843@bit t643; cast d1844@bit t644;
cast d1845@bit t645; cast d1846@bit t646; cast d1847@bit t647;
cast d1848@bit t648; cast d1849@bit t649; cast d1850@bit t650;
cast d1851@bit t651; cast d1852@bit t652; cast d1853@bit t653;
cast d1854@bit t654; cast d1855@bit t655; cast d1856@bit t656;
cast d1857@bit t657; cast d1858@bit t658; cast d1859@bit t659;
cast d1860@bit t660; cast d1861@bit t661; cast d1862@bit t662;
cast d1863@bit t663;
mov t000 L0x7fffffff0648;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d1900@bit t600; cast d1901@bit t601; cast d1902@bit t602;
cast d1903@bit t603; cast d1904@bit t604; cast d1905@bit t605;
cast d1906@bit t606; cast d1907@bit t607; cast d1908@bit t608;
cast d1909@bit t609; cast d1910@bit t610; cast d1911@bit t611;
cast d1912@bit t612; cast d1913@bit t613; cast d1914@bit t614;
cast d1915@bit t615; cast d1916@bit t616; cast d1917@bit t617;
cast d1918@bit t618; cast d1919@bit t619; cast d1920@bit t620;
cast d1921@bit t621; cast d1922@bit t622; cast d1923@bit t623;
cast d1924@bit t624; cast d1925@bit t625; cast d1926@bit t626;
cast d1927@bit t627; cast d1928@bit t628; cast d1929@bit t629;
cast d1930@bit t630; cast d1931@bit t631; cast d1932@bit t632;
cast d1933@bit t633; cast d1934@bit t634; cast d1935@bit t635;
cast d1936@bit t636; cast d1937@bit t637; cast d1938@bit t638;
cast d1939@bit t639; cast d1940@bit t640; cast d1941@bit t641;
cast d1942@bit t642; cast d1943@bit t643; cast d1944@bit t644;
cast d1945@bit t645; cast d1946@bit t646; cast d1947@bit t647;
cast d1948@bit t648; cast d1949@bit t649; cast d1950@bit t650;
cast d1951@bit t651; cast d1952@bit t652; cast d1953@bit t653;
cast d1954@bit t654; cast d1955@bit t655; cast d1956@bit t656;
cast d1957@bit t657; cast d1958@bit t658; cast d1959@bit t659;
cast d1960@bit t660; cast d1961@bit t661; cast d1962@bit t662;
cast d1963@bit t663;
mov t000 L0x7fffffff0650;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2000@bit t600; cast d2001@bit t601; cast d2002@bit t602;
cast d2003@bit t603; cast d2004@bit t604; cast d2005@bit t605;
cast d2006@bit t606; cast d2007@bit t607; cast d2008@bit t608;
cast d2009@bit t609; cast d2010@bit t610; cast d2011@bit t611;
cast d2012@bit t612; cast d2013@bit t613; cast d2014@bit t614;
cast d2015@bit t615; cast d2016@bit t616; cast d2017@bit t617;
cast d2018@bit t618; cast d2019@bit t619; cast d2020@bit t620;
cast d2021@bit t621; cast d2022@bit t622; cast d2023@bit t623;
cast d2024@bit t624; cast d2025@bit t625; cast d2026@bit t626;
cast d2027@bit t627; cast d2028@bit t628; cast d2029@bit t629;
cast d2030@bit t630; cast d2031@bit t631; cast d2032@bit t632;
cast d2033@bit t633; cast d2034@bit t634; cast d2035@bit t635;
cast d2036@bit t636; cast d2037@bit t637; cast d2038@bit t638;
cast d2039@bit t639; cast d2040@bit t640; cast d2041@bit t641;
cast d2042@bit t642; cast d2043@bit t643; cast d2044@bit t644;
cast d2045@bit t645; cast d2046@bit t646; cast d2047@bit t647;
cast d2048@bit t648; cast d2049@bit t649; cast d2050@bit t650;
cast d2051@bit t651; cast d2052@bit t652; cast d2053@bit t653;
cast d2054@bit t654; cast d2055@bit t655; cast d2056@bit t656;
cast d2057@bit t657; cast d2058@bit t658; cast d2059@bit t659;
cast d2060@bit t660; cast d2061@bit t661; cast d2062@bit t662;
cast d2063@bit t663;
mov t000 L0x7fffffff0658;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2100@bit t600; cast d2101@bit t601; cast d2102@bit t602;
cast d2103@bit t603; cast d2104@bit t604; cast d2105@bit t605;
cast d2106@bit t606; cast d2107@bit t607; cast d2108@bit t608;
cast d2109@bit t609; cast d2110@bit t610; cast d2111@bit t611;
cast d2112@bit t612; cast d2113@bit t613; cast d2114@bit t614;
cast d2115@bit t615; cast d2116@bit t616; cast d2117@bit t617;
cast d2118@bit t618; cast d2119@bit t619; cast d2120@bit t620;
cast d2121@bit t621; cast d2122@bit t622; cast d2123@bit t623;
cast d2124@bit t624; cast d2125@bit t625; cast d2126@bit t626;
cast d2127@bit t627; cast d2128@bit t628; cast d2129@bit t629;
cast d2130@bit t630; cast d2131@bit t631; cast d2132@bit t632;
cast d2133@bit t633; cast d2134@bit t634; cast d2135@bit t635;
cast d2136@bit t636; cast d2137@bit t637; cast d2138@bit t638;
cast d2139@bit t639; cast d2140@bit t640; cast d2141@bit t641;
cast d2142@bit t642; cast d2143@bit t643; cast d2144@bit t644;
cast d2145@bit t645; cast d2146@bit t646; cast d2147@bit t647;
cast d2148@bit t648; cast d2149@bit t649; cast d2150@bit t650;
cast d2151@bit t651; cast d2152@bit t652; cast d2153@bit t653;
cast d2154@bit t654; cast d2155@bit t655; cast d2156@bit t656;
cast d2157@bit t657; cast d2158@bit t658; cast d2159@bit t659;
cast d2160@bit t660; cast d2161@bit t661; cast d2162@bit t662;
cast d2163@bit t663;
mov t000 L0x7fffffff0660;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2200@bit t600; cast d2201@bit t601; cast d2202@bit t602;
cast d2203@bit t603; cast d2204@bit t604; cast d2205@bit t605;
cast d2206@bit t606; cast d2207@bit t607; cast d2208@bit t608;
cast d2209@bit t609; cast d2210@bit t610; cast d2211@bit t611;
cast d2212@bit t612; cast d2213@bit t613; cast d2214@bit t614;
cast d2215@bit t615; cast d2216@bit t616; cast d2217@bit t617;
cast d2218@bit t618; cast d2219@bit t619; cast d2220@bit t620;
cast d2221@bit t621; cast d2222@bit t622; cast d2223@bit t623;
cast d2224@bit t624; cast d2225@bit t625; cast d2226@bit t626;
cast d2227@bit t627; cast d2228@bit t628; cast d2229@bit t629;
cast d2230@bit t630; cast d2231@bit t631; cast d2232@bit t632;
cast d2233@bit t633; cast d2234@bit t634; cast d2235@bit t635;
cast d2236@bit t636; cast d2237@bit t637; cast d2238@bit t638;
cast d2239@bit t639; cast d2240@bit t640; cast d2241@bit t641;
cast d2242@bit t642; cast d2243@bit t643; cast d2244@bit t644;
cast d2245@bit t645; cast d2246@bit t646; cast d2247@bit t647;
cast d2248@bit t648; cast d2249@bit t649; cast d2250@bit t650;
cast d2251@bit t651; cast d2252@bit t652; cast d2253@bit t653;
cast d2254@bit t654; cast d2255@bit t655; cast d2256@bit t656;
cast d2257@bit t657; cast d2258@bit t658; cast d2259@bit t659;
cast d2260@bit t660; cast d2261@bit t661; cast d2262@bit t662;
cast d2263@bit t663;
mov t000 L0x7fffffff0668;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2300@bit t600; cast d2301@bit t601; cast d2302@bit t602;
cast d2303@bit t603; cast d2304@bit t604; cast d2305@bit t605;
cast d2306@bit t606; cast d2307@bit t607; cast d2308@bit t608;
cast d2309@bit t609; cast d2310@bit t610; cast d2311@bit t611;
cast d2312@bit t612; cast d2313@bit t613; cast d2314@bit t614;
cast d2315@bit t615; cast d2316@bit t616; cast d2317@bit t617;
cast d2318@bit t618; cast d2319@bit t619; cast d2320@bit t620;
cast d2321@bit t621; cast d2322@bit t622; cast d2323@bit t623;
cast d2324@bit t624; cast d2325@bit t625; cast d2326@bit t626;
cast d2327@bit t627; cast d2328@bit t628; cast d2329@bit t629;
cast d2330@bit t630; cast d2331@bit t631; cast d2332@bit t632;
cast d2333@bit t633; cast d2334@bit t634; cast d2335@bit t635;
cast d2336@bit t636; cast d2337@bit t637; cast d2338@bit t638;
cast d2339@bit t639; cast d2340@bit t640; cast d2341@bit t641;
cast d2342@bit t642; cast d2343@bit t643; cast d2344@bit t644;
cast d2345@bit t645; cast d2346@bit t646; cast d2347@bit t647;
cast d2348@bit t648; cast d2349@bit t649; cast d2350@bit t650;
cast d2351@bit t651; cast d2352@bit t652; cast d2353@bit t653;
cast d2354@bit t654; cast d2355@bit t655; cast d2356@bit t656;
cast d2357@bit t657; cast d2358@bit t658; cast d2359@bit t659;
cast d2360@bit t660; cast d2361@bit t661; cast d2362@bit t662;
cast d2363@bit t663;
mov t000 L0x7fffffff0670;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2400@bit t600; cast d2401@bit t601; cast d2402@bit t602;
cast d2403@bit t603; cast d2404@bit t604; cast d2405@bit t605;
cast d2406@bit t606; cast d2407@bit t607; cast d2408@bit t608;
cast d2409@bit t609; cast d2410@bit t610; cast d2411@bit t611;
cast d2412@bit t612; cast d2413@bit t613; cast d2414@bit t614;
cast d2415@bit t615; cast d2416@bit t616; cast d2417@bit t617;
cast d2418@bit t618; cast d2419@bit t619; cast d2420@bit t620;
cast d2421@bit t621; cast d2422@bit t622; cast d2423@bit t623;
cast d2424@bit t624; cast d2425@bit t625; cast d2426@bit t626;
cast d2427@bit t627; cast d2428@bit t628; cast d2429@bit t629;
cast d2430@bit t630; cast d2431@bit t631; cast d2432@bit t632;
cast d2433@bit t633; cast d2434@bit t634; cast d2435@bit t635;
cast d2436@bit t636; cast d2437@bit t637; cast d2438@bit t638;
cast d2439@bit t639; cast d2440@bit t640; cast d2441@bit t641;
cast d2442@bit t642; cast d2443@bit t643; cast d2444@bit t644;
cast d2445@bit t645; cast d2446@bit t646; cast d2447@bit t647;
cast d2448@bit t648; cast d2449@bit t649; cast d2450@bit t650;
cast d2451@bit t651; cast d2452@bit t652; cast d2453@bit t653;
cast d2454@bit t654; cast d2455@bit t655; cast d2456@bit t656;
cast d2457@bit t657; cast d2458@bit t658; cast d2459@bit t659;
cast d2460@bit t660; cast d2461@bit t661; cast d2462@bit t662;
cast d2463@bit t663;
mov t000 L0x7fffffff0678;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2500@bit t600; cast d2501@bit t601; cast d2502@bit t602;
cast d2503@bit t603; cast d2504@bit t604; cast d2505@bit t605;
cast d2506@bit t606; cast d2507@bit t607; cast d2508@bit t608;
cast d2509@bit t609; cast d2510@bit t610; cast d2511@bit t611;
cast d2512@bit t612; cast d2513@bit t613; cast d2514@bit t614;
cast d2515@bit t615; cast d2516@bit t616; cast d2517@bit t617;
cast d2518@bit t618; cast d2519@bit t619; cast d2520@bit t620;
cast d2521@bit t621; cast d2522@bit t622; cast d2523@bit t623;
cast d2524@bit t624; cast d2525@bit t625; cast d2526@bit t626;
cast d2527@bit t627; cast d2528@bit t628; cast d2529@bit t629;
cast d2530@bit t630; cast d2531@bit t631; cast d2532@bit t632;
cast d2533@bit t633; cast d2534@bit t634; cast d2535@bit t635;
cast d2536@bit t636; cast d2537@bit t637; cast d2538@bit t638;
cast d2539@bit t639; cast d2540@bit t640; cast d2541@bit t641;
cast d2542@bit t642; cast d2543@bit t643; cast d2544@bit t644;
cast d2545@bit t645; cast d2546@bit t646; cast d2547@bit t647;
cast d2548@bit t648; cast d2549@bit t649; cast d2550@bit t650;
cast d2551@bit t651; cast d2552@bit t652; cast d2553@bit t653;
cast d2554@bit t654; cast d2555@bit t655; cast d2556@bit t656;
cast d2557@bit t657; cast d2558@bit t658; cast d2559@bit t659;
cast d2560@bit t660; cast d2561@bit t661; cast d2562@bit t662;
cast d2563@bit t663;
mov t000 L0x7fffffff0680;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2600@bit t600; cast d2601@bit t601; cast d2602@bit t602;
cast d2603@bit t603; cast d2604@bit t604; cast d2605@bit t605;
cast d2606@bit t606; cast d2607@bit t607; cast d2608@bit t608;
cast d2609@bit t609; cast d2610@bit t610; cast d2611@bit t611;
cast d2612@bit t612; cast d2613@bit t613; cast d2614@bit t614;
cast d2615@bit t615; cast d2616@bit t616; cast d2617@bit t617;
cast d2618@bit t618; cast d2619@bit t619; cast d2620@bit t620;
cast d2621@bit t621; cast d2622@bit t622; cast d2623@bit t623;
cast d2624@bit t624; cast d2625@bit t625; cast d2626@bit t626;
cast d2627@bit t627; cast d2628@bit t628; cast d2629@bit t629;
cast d2630@bit t630; cast d2631@bit t631; cast d2632@bit t632;
cast d2633@bit t633; cast d2634@bit t634; cast d2635@bit t635;
cast d2636@bit t636; cast d2637@bit t637; cast d2638@bit t638;
cast d2639@bit t639; cast d2640@bit t640; cast d2641@bit t641;
cast d2642@bit t642; cast d2643@bit t643; cast d2644@bit t644;
cast d2645@bit t645; cast d2646@bit t646; cast d2647@bit t647;
cast d2648@bit t648; cast d2649@bit t649; cast d2650@bit t650;
cast d2651@bit t651; cast d2652@bit t652; cast d2653@bit t653;
cast d2654@bit t654; cast d2655@bit t655; cast d2656@bit t656;
cast d2657@bit t657; cast d2658@bit t658; cast d2659@bit t659;
cast d2660@bit t660; cast d2661@bit t661; cast d2662@bit t662;
cast d2663@bit t663;
mov t000 L0x7fffffff0688;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2700@bit t600; cast d2701@bit t601; cast d2702@bit t602;
cast d2703@bit t603; cast d2704@bit t604; cast d2705@bit t605;
cast d2706@bit t606; cast d2707@bit t607; cast d2708@bit t608;
cast d2709@bit t609; cast d2710@bit t610; cast d2711@bit t611;
cast d2712@bit t612; cast d2713@bit t613; cast d2714@bit t614;
cast d2715@bit t615; cast d2716@bit t616; cast d2717@bit t617;
cast d2718@bit t618; cast d2719@bit t619; cast d2720@bit t620;
cast d2721@bit t621; cast d2722@bit t622; cast d2723@bit t623;
cast d2724@bit t624; cast d2725@bit t625; cast d2726@bit t626;
cast d2727@bit t627; cast d2728@bit t628; cast d2729@bit t629;
cast d2730@bit t630; cast d2731@bit t631; cast d2732@bit t632;
cast d2733@bit t633; cast d2734@bit t634; cast d2735@bit t635;
cast d2736@bit t636; cast d2737@bit t637; cast d2738@bit t638;
cast d2739@bit t639; cast d2740@bit t640; cast d2741@bit t641;
cast d2742@bit t642; cast d2743@bit t643; cast d2744@bit t644;
cast d2745@bit t645; cast d2746@bit t646; cast d2747@bit t647;
cast d2748@bit t648; cast d2749@bit t649; cast d2750@bit t650;
cast d2751@bit t651; cast d2752@bit t652; cast d2753@bit t653;
cast d2754@bit t654; cast d2755@bit t655; cast d2756@bit t656;
cast d2757@bit t657; cast d2758@bit t658; cast d2759@bit t659;
cast d2760@bit t660; cast d2761@bit t661; cast d2762@bit t662;
cast d2763@bit t663;
mov t000 L0x7fffffff0690;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2800@bit t600; cast d2801@bit t601; cast d2802@bit t602;
cast d2803@bit t603; cast d2804@bit t604; cast d2805@bit t605;
cast d2806@bit t606; cast d2807@bit t607; cast d2808@bit t608;
cast d2809@bit t609; cast d2810@bit t610; cast d2811@bit t611;
cast d2812@bit t612; cast d2813@bit t613; cast d2814@bit t614;
cast d2815@bit t615; cast d2816@bit t616; cast d2817@bit t617;
cast d2818@bit t618; cast d2819@bit t619; cast d2820@bit t620;
cast d2821@bit t621; cast d2822@bit t622; cast d2823@bit t623;
cast d2824@bit t624; cast d2825@bit t625; cast d2826@bit t626;
cast d2827@bit t627; cast d2828@bit t628; cast d2829@bit t629;
cast d2830@bit t630; cast d2831@bit t631; cast d2832@bit t632;
cast d2833@bit t633; cast d2834@bit t634; cast d2835@bit t635;
cast d2836@bit t636; cast d2837@bit t637; cast d2838@bit t638;
cast d2839@bit t639; cast d2840@bit t640; cast d2841@bit t641;
cast d2842@bit t642; cast d2843@bit t643; cast d2844@bit t644;
cast d2845@bit t645; cast d2846@bit t646; cast d2847@bit t647;
cast d2848@bit t648; cast d2849@bit t649; cast d2850@bit t650;
cast d2851@bit t651; cast d2852@bit t652; cast d2853@bit t653;
cast d2854@bit t654; cast d2855@bit t655; cast d2856@bit t656;
cast d2857@bit t657; cast d2858@bit t658; cast d2859@bit t659;
cast d2860@bit t660; cast d2861@bit t661; cast d2862@bit t662;
cast d2863@bit t663;
mov t000 L0x7fffffff0698;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d2900@bit t600; cast d2901@bit t601; cast d2902@bit t602;
cast d2903@bit t603; cast d2904@bit t604; cast d2905@bit t605;
cast d2906@bit t606; cast d2907@bit t607; cast d2908@bit t608;
cast d2909@bit t609; cast d2910@bit t610; cast d2911@bit t611;
cast d2912@bit t612; cast d2913@bit t613; cast d2914@bit t614;
cast d2915@bit t615; cast d2916@bit t616; cast d2917@bit t617;
cast d2918@bit t618; cast d2919@bit t619; cast d2920@bit t620;
cast d2921@bit t621; cast d2922@bit t622; cast d2923@bit t623;
cast d2924@bit t624; cast d2925@bit t625; cast d2926@bit t626;
cast d2927@bit t627; cast d2928@bit t628; cast d2929@bit t629;
cast d2930@bit t630; cast d2931@bit t631; cast d2932@bit t632;
cast d2933@bit t633; cast d2934@bit t634; cast d2935@bit t635;
cast d2936@bit t636; cast d2937@bit t637; cast d2938@bit t638;
cast d2939@bit t639; cast d2940@bit t640; cast d2941@bit t641;
cast d2942@bit t642; cast d2943@bit t643; cast d2944@bit t644;
cast d2945@bit t645; cast d2946@bit t646; cast d2947@bit t647;
cast d2948@bit t648; cast d2949@bit t649; cast d2950@bit t650;
cast d2951@bit t651; cast d2952@bit t652; cast d2953@bit t653;
cast d2954@bit t654; cast d2955@bit t655; cast d2956@bit t656;
cast d2957@bit t657; cast d2958@bit t658; cast d2959@bit t659;
cast d2960@bit t660; cast d2961@bit t661; cast d2962@bit t662;
cast d2963@bit t663;
mov t000 L0x7fffffff06a0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3000@bit t600; cast d3001@bit t601; cast d3002@bit t602;
cast d3003@bit t603; cast d3004@bit t604; cast d3005@bit t605;
cast d3006@bit t606; cast d3007@bit t607; cast d3008@bit t608;
cast d3009@bit t609; cast d3010@bit t610; cast d3011@bit t611;
cast d3012@bit t612; cast d3013@bit t613; cast d3014@bit t614;
cast d3015@bit t615; cast d3016@bit t616; cast d3017@bit t617;
cast d3018@bit t618; cast d3019@bit t619; cast d3020@bit t620;
cast d3021@bit t621; cast d3022@bit t622; cast d3023@bit t623;
cast d3024@bit t624; cast d3025@bit t625; cast d3026@bit t626;
cast d3027@bit t627; cast d3028@bit t628; cast d3029@bit t629;
cast d3030@bit t630; cast d3031@bit t631; cast d3032@bit t632;
cast d3033@bit t633; cast d3034@bit t634; cast d3035@bit t635;
cast d3036@bit t636; cast d3037@bit t637; cast d3038@bit t638;
cast d3039@bit t639; cast d3040@bit t640; cast d3041@bit t641;
cast d3042@bit t642; cast d3043@bit t643; cast d3044@bit t644;
cast d3045@bit t645; cast d3046@bit t646; cast d3047@bit t647;
cast d3048@bit t648; cast d3049@bit t649; cast d3050@bit t650;
cast d3051@bit t651; cast d3052@bit t652; cast d3053@bit t653;
cast d3054@bit t654; cast d3055@bit t655; cast d3056@bit t656;
cast d3057@bit t657; cast d3058@bit t658; cast d3059@bit t659;
cast d3060@bit t660; cast d3061@bit t661; cast d3062@bit t662;
cast d3063@bit t663;
mov t000 L0x7fffffff06a8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3100@bit t600; cast d3101@bit t601; cast d3102@bit t602;
cast d3103@bit t603; cast d3104@bit t604; cast d3105@bit t605;
cast d3106@bit t606; cast d3107@bit t607; cast d3108@bit t608;
cast d3109@bit t609; cast d3110@bit t610; cast d3111@bit t611;
cast d3112@bit t612; cast d3113@bit t613; cast d3114@bit t614;
cast d3115@bit t615; cast d3116@bit t616; cast d3117@bit t617;
cast d3118@bit t618; cast d3119@bit t619; cast d3120@bit t620;
cast d3121@bit t621; cast d3122@bit t622; cast d3123@bit t623;
cast d3124@bit t624; cast d3125@bit t625; cast d3126@bit t626;
cast d3127@bit t627; cast d3128@bit t628; cast d3129@bit t629;
cast d3130@bit t630; cast d3131@bit t631; cast d3132@bit t632;
cast d3133@bit t633; cast d3134@bit t634; cast d3135@bit t635;
cast d3136@bit t636; cast d3137@bit t637; cast d3138@bit t638;
cast d3139@bit t639; cast d3140@bit t640; cast d3141@bit t641;
cast d3142@bit t642; cast d3143@bit t643; cast d3144@bit t644;
cast d3145@bit t645; cast d3146@bit t646; cast d3147@bit t647;
cast d3148@bit t648; cast d3149@bit t649; cast d3150@bit t650;
cast d3151@bit t651; cast d3152@bit t652; cast d3153@bit t653;
cast d3154@bit t654; cast d3155@bit t655; cast d3156@bit t656;
cast d3157@bit t657; cast d3158@bit t658; cast d3159@bit t659;
cast d3160@bit t660; cast d3161@bit t661; cast d3162@bit t662;
cast d3163@bit t663;
mov t000 L0x7fffffff06b0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3200@bit t600; cast d3201@bit t601; cast d3202@bit t602;
cast d3203@bit t603; cast d3204@bit t604; cast d3205@bit t605;
cast d3206@bit t606; cast d3207@bit t607; cast d3208@bit t608;
cast d3209@bit t609; cast d3210@bit t610; cast d3211@bit t611;
cast d3212@bit t612; cast d3213@bit t613; cast d3214@bit t614;
cast d3215@bit t615; cast d3216@bit t616; cast d3217@bit t617;
cast d3218@bit t618; cast d3219@bit t619; cast d3220@bit t620;
cast d3221@bit t621; cast d3222@bit t622; cast d3223@bit t623;
cast d3224@bit t624; cast d3225@bit t625; cast d3226@bit t626;
cast d3227@bit t627; cast d3228@bit t628; cast d3229@bit t629;
cast d3230@bit t630; cast d3231@bit t631; cast d3232@bit t632;
cast d3233@bit t633; cast d3234@bit t634; cast d3235@bit t635;
cast d3236@bit t636; cast d3237@bit t637; cast d3238@bit t638;
cast d3239@bit t639; cast d3240@bit t640; cast d3241@bit t641;
cast d3242@bit t642; cast d3243@bit t643; cast d3244@bit t644;
cast d3245@bit t645; cast d3246@bit t646; cast d3247@bit t647;
cast d3248@bit t648; cast d3249@bit t649; cast d3250@bit t650;
cast d3251@bit t651; cast d3252@bit t652; cast d3253@bit t653;
cast d3254@bit t654; cast d3255@bit t655; cast d3256@bit t656;
cast d3257@bit t657; cast d3258@bit t658; cast d3259@bit t659;
cast d3260@bit t660; cast d3261@bit t661; cast d3262@bit t662;
cast d3263@bit t663;
mov t000 L0x7fffffff06b8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3300@bit t600; cast d3301@bit t601; cast d3302@bit t602;
cast d3303@bit t603; cast d3304@bit t604; cast d3305@bit t605;
cast d3306@bit t606; cast d3307@bit t607; cast d3308@bit t608;
cast d3309@bit t609; cast d3310@bit t610; cast d3311@bit t611;
cast d3312@bit t612; cast d3313@bit t613; cast d3314@bit t614;
cast d3315@bit t615; cast d3316@bit t616; cast d3317@bit t617;
cast d3318@bit t618; cast d3319@bit t619; cast d3320@bit t620;
cast d3321@bit t621; cast d3322@bit t622; cast d3323@bit t623;
cast d3324@bit t624; cast d3325@bit t625; cast d3326@bit t626;
cast d3327@bit t627; cast d3328@bit t628; cast d3329@bit t629;
cast d3330@bit t630; cast d3331@bit t631; cast d3332@bit t632;
cast d3333@bit t633; cast d3334@bit t634; cast d3335@bit t635;
cast d3336@bit t636; cast d3337@bit t637; cast d3338@bit t638;
cast d3339@bit t639; cast d3340@bit t640; cast d3341@bit t641;
cast d3342@bit t642; cast d3343@bit t643; cast d3344@bit t644;
cast d3345@bit t645; cast d3346@bit t646; cast d3347@bit t647;
cast d3348@bit t648; cast d3349@bit t649; cast d3350@bit t650;
cast d3351@bit t651; cast d3352@bit t652; cast d3353@bit t653;
cast d3354@bit t654; cast d3355@bit t655; cast d3356@bit t656;
cast d3357@bit t657; cast d3358@bit t658; cast d3359@bit t659;
cast d3360@bit t660; cast d3361@bit t661; cast d3362@bit t662;
cast d3363@bit t663;
mov t000 L0x7fffffff06c0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3400@bit t600; cast d3401@bit t601; cast d3402@bit t602;
cast d3403@bit t603; cast d3404@bit t604; cast d3405@bit t605;
cast d3406@bit t606; cast d3407@bit t607; cast d3408@bit t608;
cast d3409@bit t609; cast d3410@bit t610; cast d3411@bit t611;
cast d3412@bit t612; cast d3413@bit t613; cast d3414@bit t614;
cast d3415@bit t615; cast d3416@bit t616; cast d3417@bit t617;
cast d3418@bit t618; cast d3419@bit t619; cast d3420@bit t620;
cast d3421@bit t621; cast d3422@bit t622; cast d3423@bit t623;
cast d3424@bit t624; cast d3425@bit t625; cast d3426@bit t626;
cast d3427@bit t627; cast d3428@bit t628; cast d3429@bit t629;
cast d3430@bit t630; cast d3431@bit t631; cast d3432@bit t632;
cast d3433@bit t633; cast d3434@bit t634; cast d3435@bit t635;
cast d3436@bit t636; cast d3437@bit t637; cast d3438@bit t638;
cast d3439@bit t639; cast d3440@bit t640; cast d3441@bit t641;
cast d3442@bit t642; cast d3443@bit t643; cast d3444@bit t644;
cast d3445@bit t645; cast d3446@bit t646; cast d3447@bit t647;
cast d3448@bit t648; cast d3449@bit t649; cast d3450@bit t650;
cast d3451@bit t651; cast d3452@bit t652; cast d3453@bit t653;
cast d3454@bit t654; cast d3455@bit t655; cast d3456@bit t656;
cast d3457@bit t657; cast d3458@bit t658; cast d3459@bit t659;
cast d3460@bit t660; cast d3461@bit t661; cast d3462@bit t662;
cast d3463@bit t663;
mov t000 L0x7fffffff06c8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3500@bit t600; cast d3501@bit t601; cast d3502@bit t602;
cast d3503@bit t603; cast d3504@bit t604; cast d3505@bit t605;
cast d3506@bit t606; cast d3507@bit t607; cast d3508@bit t608;
cast d3509@bit t609; cast d3510@bit t610; cast d3511@bit t611;
cast d3512@bit t612; cast d3513@bit t613; cast d3514@bit t614;
cast d3515@bit t615; cast d3516@bit t616; cast d3517@bit t617;
cast d3518@bit t618; cast d3519@bit t619; cast d3520@bit t620;
cast d3521@bit t621; cast d3522@bit t622; cast d3523@bit t623;
cast d3524@bit t624; cast d3525@bit t625; cast d3526@bit t626;
cast d3527@bit t627; cast d3528@bit t628; cast d3529@bit t629;
cast d3530@bit t630; cast d3531@bit t631; cast d3532@bit t632;
cast d3533@bit t633; cast d3534@bit t634; cast d3535@bit t635;
cast d3536@bit t636; cast d3537@bit t637; cast d3538@bit t638;
cast d3539@bit t639; cast d3540@bit t640; cast d3541@bit t641;
cast d3542@bit t642; cast d3543@bit t643; cast d3544@bit t644;
cast d3545@bit t645; cast d3546@bit t646; cast d3547@bit t647;
cast d3548@bit t648; cast d3549@bit t649; cast d3550@bit t650;
cast d3551@bit t651; cast d3552@bit t652; cast d3553@bit t653;
cast d3554@bit t654; cast d3555@bit t655; cast d3556@bit t656;
cast d3557@bit t657; cast d3558@bit t658; cast d3559@bit t659;
cast d3560@bit t660; cast d3561@bit t661; cast d3562@bit t662;
cast d3563@bit t663;
mov t000 L0x7fffffff06d0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3600@bit t600; cast d3601@bit t601; cast d3602@bit t602;
cast d3603@bit t603; cast d3604@bit t604; cast d3605@bit t605;
cast d3606@bit t606; cast d3607@bit t607; cast d3608@bit t608;
cast d3609@bit t609; cast d3610@bit t610; cast d3611@bit t611;
cast d3612@bit t612; cast d3613@bit t613; cast d3614@bit t614;
cast d3615@bit t615; cast d3616@bit t616; cast d3617@bit t617;
cast d3618@bit t618; cast d3619@bit t619; cast d3620@bit t620;
cast d3621@bit t621; cast d3622@bit t622; cast d3623@bit t623;
cast d3624@bit t624; cast d3625@bit t625; cast d3626@bit t626;
cast d3627@bit t627; cast d3628@bit t628; cast d3629@bit t629;
cast d3630@bit t630; cast d3631@bit t631; cast d3632@bit t632;
cast d3633@bit t633; cast d3634@bit t634; cast d3635@bit t635;
cast d3636@bit t636; cast d3637@bit t637; cast d3638@bit t638;
cast d3639@bit t639; cast d3640@bit t640; cast d3641@bit t641;
cast d3642@bit t642; cast d3643@bit t643; cast d3644@bit t644;
cast d3645@bit t645; cast d3646@bit t646; cast d3647@bit t647;
cast d3648@bit t648; cast d3649@bit t649; cast d3650@bit t650;
cast d3651@bit t651; cast d3652@bit t652; cast d3653@bit t653;
cast d3654@bit t654; cast d3655@bit t655; cast d3656@bit t656;
cast d3657@bit t657; cast d3658@bit t658; cast d3659@bit t659;
cast d3660@bit t660; cast d3661@bit t661; cast d3662@bit t662;
cast d3663@bit t663;
mov t000 L0x7fffffff06d8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3700@bit t600; cast d3701@bit t601; cast d3702@bit t602;
cast d3703@bit t603; cast d3704@bit t604; cast d3705@bit t605;
cast d3706@bit t606; cast d3707@bit t607; cast d3708@bit t608;
cast d3709@bit t609; cast d3710@bit t610; cast d3711@bit t611;
cast d3712@bit t612; cast d3713@bit t613; cast d3714@bit t614;
cast d3715@bit t615; cast d3716@bit t616; cast d3717@bit t617;
cast d3718@bit t618; cast d3719@bit t619; cast d3720@bit t620;
cast d3721@bit t621; cast d3722@bit t622; cast d3723@bit t623;
cast d3724@bit t624; cast d3725@bit t625; cast d3726@bit t626;
cast d3727@bit t627; cast d3728@bit t628; cast d3729@bit t629;
cast d3730@bit t630; cast d3731@bit t631; cast d3732@bit t632;
cast d3733@bit t633; cast d3734@bit t634; cast d3735@bit t635;
cast d3736@bit t636; cast d3737@bit t637; cast d3738@bit t638;
cast d3739@bit t639; cast d3740@bit t640; cast d3741@bit t641;
cast d3742@bit t642; cast d3743@bit t643; cast d3744@bit t644;
cast d3745@bit t645; cast d3746@bit t646; cast d3747@bit t647;
cast d3748@bit t648; cast d3749@bit t649; cast d3750@bit t650;
cast d3751@bit t651; cast d3752@bit t652; cast d3753@bit t653;
cast d3754@bit t654; cast d3755@bit t655; cast d3756@bit t656;
cast d3757@bit t657; cast d3758@bit t658; cast d3759@bit t659;
cast d3760@bit t660; cast d3761@bit t661; cast d3762@bit t662;
cast d3763@bit t663;
mov t000 L0x7fffffff06e0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3800@bit t600; cast d3801@bit t601; cast d3802@bit t602;
cast d3803@bit t603; cast d3804@bit t604; cast d3805@bit t605;
cast d3806@bit t606; cast d3807@bit t607; cast d3808@bit t608;
cast d3809@bit t609; cast d3810@bit t610; cast d3811@bit t611;
cast d3812@bit t612; cast d3813@bit t613; cast d3814@bit t614;
cast d3815@bit t615; cast d3816@bit t616; cast d3817@bit t617;
cast d3818@bit t618; cast d3819@bit t619; cast d3820@bit t620;
cast d3821@bit t621; cast d3822@bit t622; cast d3823@bit t623;
cast d3824@bit t624; cast d3825@bit t625; cast d3826@bit t626;
cast d3827@bit t627; cast d3828@bit t628; cast d3829@bit t629;
cast d3830@bit t630; cast d3831@bit t631; cast d3832@bit t632;
cast d3833@bit t633; cast d3834@bit t634; cast d3835@bit t635;
cast d3836@bit t636; cast d3837@bit t637; cast d3838@bit t638;
cast d3839@bit t639; cast d3840@bit t640; cast d3841@bit t641;
cast d3842@bit t642; cast d3843@bit t643; cast d3844@bit t644;
cast d3845@bit t645; cast d3846@bit t646; cast d3847@bit t647;
cast d3848@bit t648; cast d3849@bit t649; cast d3850@bit t650;
cast d3851@bit t651; cast d3852@bit t652; cast d3853@bit t653;
cast d3854@bit t654; cast d3855@bit t655; cast d3856@bit t656;
cast d3857@bit t657; cast d3858@bit t658; cast d3859@bit t659;
cast d3860@bit t660; cast d3861@bit t661; cast d3862@bit t662;
cast d3863@bit t663;
mov t000 L0x7fffffff06e8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d3900@bit t600; cast d3901@bit t601; cast d3902@bit t602;
cast d3903@bit t603; cast d3904@bit t604; cast d3905@bit t605;
cast d3906@bit t606; cast d3907@bit t607; cast d3908@bit t608;
cast d3909@bit t609; cast d3910@bit t610; cast d3911@bit t611;
cast d3912@bit t612; cast d3913@bit t613; cast d3914@bit t614;
cast d3915@bit t615; cast d3916@bit t616; cast d3917@bit t617;
cast d3918@bit t618; cast d3919@bit t619; cast d3920@bit t620;
cast d3921@bit t621; cast d3922@bit t622; cast d3923@bit t623;
cast d3924@bit t624; cast d3925@bit t625; cast d3926@bit t626;
cast d3927@bit t627; cast d3928@bit t628; cast d3929@bit t629;
cast d3930@bit t630; cast d3931@bit t631; cast d3932@bit t632;
cast d3933@bit t633; cast d3934@bit t634; cast d3935@bit t635;
cast d3936@bit t636; cast d3937@bit t637; cast d3938@bit t638;
cast d3939@bit t639; cast d3940@bit t640; cast d3941@bit t641;
cast d3942@bit t642; cast d3943@bit t643; cast d3944@bit t644;
cast d3945@bit t645; cast d3946@bit t646; cast d3947@bit t647;
cast d3948@bit t648; cast d3949@bit t649; cast d3950@bit t650;
cast d3951@bit t651; cast d3952@bit t652; cast d3953@bit t653;
cast d3954@bit t654; cast d3955@bit t655; cast d3956@bit t656;
cast d3957@bit t657; cast d3958@bit t658; cast d3959@bit t659;
cast d3960@bit t660; cast d3961@bit t661; cast d3962@bit t662;
cast d3963@bit t663;
mov t000 L0x7fffffff06f0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4000@bit t600; cast d4001@bit t601; cast d4002@bit t602;
cast d4003@bit t603; cast d4004@bit t604; cast d4005@bit t605;
cast d4006@bit t606; cast d4007@bit t607; cast d4008@bit t608;
cast d4009@bit t609; cast d4010@bit t610; cast d4011@bit t611;
cast d4012@bit t612; cast d4013@bit t613; cast d4014@bit t614;
cast d4015@bit t615; cast d4016@bit t616; cast d4017@bit t617;
cast d4018@bit t618; cast d4019@bit t619; cast d4020@bit t620;
cast d4021@bit t621; cast d4022@bit t622; cast d4023@bit t623;
cast d4024@bit t624; cast d4025@bit t625; cast d4026@bit t626;
cast d4027@bit t627; cast d4028@bit t628; cast d4029@bit t629;
cast d4030@bit t630; cast d4031@bit t631; cast d4032@bit t632;
cast d4033@bit t633; cast d4034@bit t634; cast d4035@bit t635;
cast d4036@bit t636; cast d4037@bit t637; cast d4038@bit t638;
cast d4039@bit t639; cast d4040@bit t640; cast d4041@bit t641;
cast d4042@bit t642; cast d4043@bit t643; cast d4044@bit t644;
cast d4045@bit t645; cast d4046@bit t646; cast d4047@bit t647;
cast d4048@bit t648; cast d4049@bit t649; cast d4050@bit t650;
cast d4051@bit t651; cast d4052@bit t652; cast d4053@bit t653;
cast d4054@bit t654; cast d4055@bit t655; cast d4056@bit t656;
cast d4057@bit t657; cast d4058@bit t658; cast d4059@bit t659;
cast d4060@bit t660; cast d4061@bit t661; cast d4062@bit t662;
cast d4063@bit t663;
mov t000 L0x7fffffff06f8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4100@bit t600; cast d4101@bit t601; cast d4102@bit t602;
cast d4103@bit t603; cast d4104@bit t604; cast d4105@bit t605;
cast d4106@bit t606; cast d4107@bit t607; cast d4108@bit t608;
cast d4109@bit t609; cast d4110@bit t610; cast d4111@bit t611;
cast d4112@bit t612; cast d4113@bit t613; cast d4114@bit t614;
cast d4115@bit t615; cast d4116@bit t616; cast d4117@bit t617;
cast d4118@bit t618; cast d4119@bit t619; cast d4120@bit t620;
cast d4121@bit t621; cast d4122@bit t622; cast d4123@bit t623;
cast d4124@bit t624; cast d4125@bit t625; cast d4126@bit t626;
cast d4127@bit t627; cast d4128@bit t628; cast d4129@bit t629;
cast d4130@bit t630; cast d4131@bit t631; cast d4132@bit t632;
cast d4133@bit t633; cast d4134@bit t634; cast d4135@bit t635;
cast d4136@bit t636; cast d4137@bit t637; cast d4138@bit t638;
cast d4139@bit t639; cast d4140@bit t640; cast d4141@bit t641;
cast d4142@bit t642; cast d4143@bit t643; cast d4144@bit t644;
cast d4145@bit t645; cast d4146@bit t646; cast d4147@bit t647;
cast d4148@bit t648; cast d4149@bit t649; cast d4150@bit t650;
cast d4151@bit t651; cast d4152@bit t652; cast d4153@bit t653;
cast d4154@bit t654; cast d4155@bit t655; cast d4156@bit t656;
cast d4157@bit t657; cast d4158@bit t658; cast d4159@bit t659;
cast d4160@bit t660; cast d4161@bit t661; cast d4162@bit t662;
cast d4163@bit t663;
mov t000 L0x7fffffff0700;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4200@bit t600; cast d4201@bit t601; cast d4202@bit t602;
cast d4203@bit t603; cast d4204@bit t604; cast d4205@bit t605;
cast d4206@bit t606; cast d4207@bit t607; cast d4208@bit t608;
cast d4209@bit t609; cast d4210@bit t610; cast d4211@bit t611;
cast d4212@bit t612; cast d4213@bit t613; cast d4214@bit t614;
cast d4215@bit t615; cast d4216@bit t616; cast d4217@bit t617;
cast d4218@bit t618; cast d4219@bit t619; cast d4220@bit t620;
cast d4221@bit t621; cast d4222@bit t622; cast d4223@bit t623;
cast d4224@bit t624; cast d4225@bit t625; cast d4226@bit t626;
cast d4227@bit t627; cast d4228@bit t628; cast d4229@bit t629;
cast d4230@bit t630; cast d4231@bit t631; cast d4232@bit t632;
cast d4233@bit t633; cast d4234@bit t634; cast d4235@bit t635;
cast d4236@bit t636; cast d4237@bit t637; cast d4238@bit t638;
cast d4239@bit t639; cast d4240@bit t640; cast d4241@bit t641;
cast d4242@bit t642; cast d4243@bit t643; cast d4244@bit t644;
cast d4245@bit t645; cast d4246@bit t646; cast d4247@bit t647;
cast d4248@bit t648; cast d4249@bit t649; cast d4250@bit t650;
cast d4251@bit t651; cast d4252@bit t652; cast d4253@bit t653;
cast d4254@bit t654; cast d4255@bit t655; cast d4256@bit t656;
cast d4257@bit t657; cast d4258@bit t658; cast d4259@bit t659;
cast d4260@bit t660; cast d4261@bit t661; cast d4262@bit t662;
cast d4263@bit t663;
mov t000 L0x7fffffff0708;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4300@bit t600; cast d4301@bit t601; cast d4302@bit t602;
cast d4303@bit t603; cast d4304@bit t604; cast d4305@bit t605;
cast d4306@bit t606; cast d4307@bit t607; cast d4308@bit t608;
cast d4309@bit t609; cast d4310@bit t610; cast d4311@bit t611;
cast d4312@bit t612; cast d4313@bit t613; cast d4314@bit t614;
cast d4315@bit t615; cast d4316@bit t616; cast d4317@bit t617;
cast d4318@bit t618; cast d4319@bit t619; cast d4320@bit t620;
cast d4321@bit t621; cast d4322@bit t622; cast d4323@bit t623;
cast d4324@bit t624; cast d4325@bit t625; cast d4326@bit t626;
cast d4327@bit t627; cast d4328@bit t628; cast d4329@bit t629;
cast d4330@bit t630; cast d4331@bit t631; cast d4332@bit t632;
cast d4333@bit t633; cast d4334@bit t634; cast d4335@bit t635;
cast d4336@bit t636; cast d4337@bit t637; cast d4338@bit t638;
cast d4339@bit t639; cast d4340@bit t640; cast d4341@bit t641;
cast d4342@bit t642; cast d4343@bit t643; cast d4344@bit t644;
cast d4345@bit t645; cast d4346@bit t646; cast d4347@bit t647;
cast d4348@bit t648; cast d4349@bit t649; cast d4350@bit t650;
cast d4351@bit t651; cast d4352@bit t652; cast d4353@bit t653;
cast d4354@bit t654; cast d4355@bit t655; cast d4356@bit t656;
cast d4357@bit t657; cast d4358@bit t658; cast d4359@bit t659;
cast d4360@bit t660; cast d4361@bit t661; cast d4362@bit t662;
cast d4363@bit t663;
mov t000 L0x7fffffff0710;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4400@bit t600; cast d4401@bit t601; cast d4402@bit t602;
cast d4403@bit t603; cast d4404@bit t604; cast d4405@bit t605;
cast d4406@bit t606; cast d4407@bit t607; cast d4408@bit t608;
cast d4409@bit t609; cast d4410@bit t610; cast d4411@bit t611;
cast d4412@bit t612; cast d4413@bit t613; cast d4414@bit t614;
cast d4415@bit t615; cast d4416@bit t616; cast d4417@bit t617;
cast d4418@bit t618; cast d4419@bit t619; cast d4420@bit t620;
cast d4421@bit t621; cast d4422@bit t622; cast d4423@bit t623;
cast d4424@bit t624; cast d4425@bit t625; cast d4426@bit t626;
cast d4427@bit t627; cast d4428@bit t628; cast d4429@bit t629;
cast d4430@bit t630; cast d4431@bit t631; cast d4432@bit t632;
cast d4433@bit t633; cast d4434@bit t634; cast d4435@bit t635;
cast d4436@bit t636; cast d4437@bit t637; cast d4438@bit t638;
cast d4439@bit t639; cast d4440@bit t640; cast d4441@bit t641;
cast d4442@bit t642; cast d4443@bit t643; cast d4444@bit t644;
cast d4445@bit t645; cast d4446@bit t646; cast d4447@bit t647;
cast d4448@bit t648; cast d4449@bit t649; cast d4450@bit t650;
cast d4451@bit t651; cast d4452@bit t652; cast d4453@bit t653;
cast d4454@bit t654; cast d4455@bit t655; cast d4456@bit t656;
cast d4457@bit t657; cast d4458@bit t658; cast d4459@bit t659;
cast d4460@bit t660; cast d4461@bit t661; cast d4462@bit t662;
cast d4463@bit t663;
mov t000 L0x7fffffff0718;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4500@bit t600; cast d4501@bit t601; cast d4502@bit t602;
cast d4503@bit t603; cast d4504@bit t604; cast d4505@bit t605;
cast d4506@bit t606; cast d4507@bit t607; cast d4508@bit t608;
cast d4509@bit t609; cast d4510@bit t610; cast d4511@bit t611;
cast d4512@bit t612; cast d4513@bit t613; cast d4514@bit t614;
cast d4515@bit t615; cast d4516@bit t616; cast d4517@bit t617;
cast d4518@bit t618; cast d4519@bit t619; cast d4520@bit t620;
cast d4521@bit t621; cast d4522@bit t622; cast d4523@bit t623;
cast d4524@bit t624; cast d4525@bit t625; cast d4526@bit t626;
cast d4527@bit t627; cast d4528@bit t628; cast d4529@bit t629;
cast d4530@bit t630; cast d4531@bit t631; cast d4532@bit t632;
cast d4533@bit t633; cast d4534@bit t634; cast d4535@bit t635;
cast d4536@bit t636; cast d4537@bit t637; cast d4538@bit t638;
cast d4539@bit t639; cast d4540@bit t640; cast d4541@bit t641;
cast d4542@bit t642; cast d4543@bit t643; cast d4544@bit t644;
cast d4545@bit t645; cast d4546@bit t646; cast d4547@bit t647;
cast d4548@bit t648; cast d4549@bit t649; cast d4550@bit t650;
cast d4551@bit t651; cast d4552@bit t652; cast d4553@bit t653;
cast d4554@bit t654; cast d4555@bit t655; cast d4556@bit t656;
cast d4557@bit t657; cast d4558@bit t658; cast d4559@bit t659;
cast d4560@bit t660; cast d4561@bit t661; cast d4562@bit t662;
cast d4563@bit t663;
mov t000 L0x7fffffff0720;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4600@bit t600; cast d4601@bit t601; cast d4602@bit t602;
cast d4603@bit t603; cast d4604@bit t604; cast d4605@bit t605;
cast d4606@bit t606; cast d4607@bit t607; cast d4608@bit t608;
cast d4609@bit t609; cast d4610@bit t610; cast d4611@bit t611;
cast d4612@bit t612; cast d4613@bit t613; cast d4614@bit t614;
cast d4615@bit t615; cast d4616@bit t616; cast d4617@bit t617;
cast d4618@bit t618; cast d4619@bit t619; cast d4620@bit t620;
cast d4621@bit t621; cast d4622@bit t622; cast d4623@bit t623;
cast d4624@bit t624; cast d4625@bit t625; cast d4626@bit t626;
cast d4627@bit t627; cast d4628@bit t628; cast d4629@bit t629;
cast d4630@bit t630; cast d4631@bit t631; cast d4632@bit t632;
cast d4633@bit t633; cast d4634@bit t634; cast d4635@bit t635;
cast d4636@bit t636; cast d4637@bit t637; cast d4638@bit t638;
cast d4639@bit t639; cast d4640@bit t640; cast d4641@bit t641;
cast d4642@bit t642; cast d4643@bit t643; cast d4644@bit t644;
cast d4645@bit t645; cast d4646@bit t646; cast d4647@bit t647;
cast d4648@bit t648; cast d4649@bit t649; cast d4650@bit t650;
cast d4651@bit t651; cast d4652@bit t652; cast d4653@bit t653;
cast d4654@bit t654; cast d4655@bit t655; cast d4656@bit t656;
cast d4657@bit t657; cast d4658@bit t658; cast d4659@bit t659;
cast d4660@bit t660; cast d4661@bit t661; cast d4662@bit t662;
cast d4663@bit t663;
mov t000 L0x7fffffff0728;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4700@bit t600; cast d4701@bit t601; cast d4702@bit t602;
cast d4703@bit t603; cast d4704@bit t604; cast d4705@bit t605;
cast d4706@bit t606; cast d4707@bit t607; cast d4708@bit t608;
cast d4709@bit t609; cast d4710@bit t610; cast d4711@bit t611;
cast d4712@bit t612; cast d4713@bit t613; cast d4714@bit t614;
cast d4715@bit t615; cast d4716@bit t616; cast d4717@bit t617;
cast d4718@bit t618; cast d4719@bit t619; cast d4720@bit t620;
cast d4721@bit t621; cast d4722@bit t622; cast d4723@bit t623;
cast d4724@bit t624; cast d4725@bit t625; cast d4726@bit t626;
cast d4727@bit t627; cast d4728@bit t628; cast d4729@bit t629;
cast d4730@bit t630; cast d4731@bit t631; cast d4732@bit t632;
cast d4733@bit t633; cast d4734@bit t634; cast d4735@bit t635;
cast d4736@bit t636; cast d4737@bit t637; cast d4738@bit t638;
cast d4739@bit t639; cast d4740@bit t640; cast d4741@bit t641;
cast d4742@bit t642; cast d4743@bit t643; cast d4744@bit t644;
cast d4745@bit t645; cast d4746@bit t646; cast d4747@bit t647;
cast d4748@bit t648; cast d4749@bit t649; cast d4750@bit t650;
cast d4751@bit t651; cast d4752@bit t652; cast d4753@bit t653;
cast d4754@bit t654; cast d4755@bit t655; cast d4756@bit t656;
cast d4757@bit t657; cast d4758@bit t658; cast d4759@bit t659;
cast d4760@bit t660; cast d4761@bit t661; cast d4762@bit t662;
cast d4763@bit t663;
mov t000 L0x7fffffff0730;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4800@bit t600; cast d4801@bit t601; cast d4802@bit t602;
cast d4803@bit t603; cast d4804@bit t604; cast d4805@bit t605;
cast d4806@bit t606; cast d4807@bit t607; cast d4808@bit t608;
cast d4809@bit t609; cast d4810@bit t610; cast d4811@bit t611;
cast d4812@bit t612; cast d4813@bit t613; cast d4814@bit t614;
cast d4815@bit t615; cast d4816@bit t616; cast d4817@bit t617;
cast d4818@bit t618; cast d4819@bit t619; cast d4820@bit t620;
cast d4821@bit t621; cast d4822@bit t622; cast d4823@bit t623;
cast d4824@bit t624; cast d4825@bit t625; cast d4826@bit t626;
cast d4827@bit t627; cast d4828@bit t628; cast d4829@bit t629;
cast d4830@bit t630; cast d4831@bit t631; cast d4832@bit t632;
cast d4833@bit t633; cast d4834@bit t634; cast d4835@bit t635;
cast d4836@bit t636; cast d4837@bit t637; cast d4838@bit t638;
cast d4839@bit t639; cast d4840@bit t640; cast d4841@bit t641;
cast d4842@bit t642; cast d4843@bit t643; cast d4844@bit t644;
cast d4845@bit t645; cast d4846@bit t646; cast d4847@bit t647;
cast d4848@bit t648; cast d4849@bit t649; cast d4850@bit t650;
cast d4851@bit t651; cast d4852@bit t652; cast d4853@bit t653;
cast d4854@bit t654; cast d4855@bit t655; cast d4856@bit t656;
cast d4857@bit t657; cast d4858@bit t658; cast d4859@bit t659;
cast d4860@bit t660; cast d4861@bit t661; cast d4862@bit t662;
cast d4863@bit t663;
mov t000 L0x7fffffff0738;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d4900@bit t600; cast d4901@bit t601; cast d4902@bit t602;
cast d4903@bit t603; cast d4904@bit t604; cast d4905@bit t605;
cast d4906@bit t606; cast d4907@bit t607; cast d4908@bit t608;
cast d4909@bit t609; cast d4910@bit t610; cast d4911@bit t611;
cast d4912@bit t612; cast d4913@bit t613; cast d4914@bit t614;
cast d4915@bit t615; cast d4916@bit t616; cast d4917@bit t617;
cast d4918@bit t618; cast d4919@bit t619; cast d4920@bit t620;
cast d4921@bit t621; cast d4922@bit t622; cast d4923@bit t623;
cast d4924@bit t624; cast d4925@bit t625; cast d4926@bit t626;
cast d4927@bit t627; cast d4928@bit t628; cast d4929@bit t629;
cast d4930@bit t630; cast d4931@bit t631; cast d4932@bit t632;
cast d4933@bit t633; cast d4934@bit t634; cast d4935@bit t635;
cast d4936@bit t636; cast d4937@bit t637; cast d4938@bit t638;
cast d4939@bit t639; cast d4940@bit t640; cast d4941@bit t641;
cast d4942@bit t642; cast d4943@bit t643; cast d4944@bit t644;
cast d4945@bit t645; cast d4946@bit t646; cast d4947@bit t647;
cast d4948@bit t648; cast d4949@bit t649; cast d4950@bit t650;
cast d4951@bit t651; cast d4952@bit t652; cast d4953@bit t653;
cast d4954@bit t654; cast d4955@bit t655; cast d4956@bit t656;
cast d4957@bit t657; cast d4958@bit t658; cast d4959@bit t659;
cast d4960@bit t660; cast d4961@bit t661; cast d4962@bit t662;
cast d4963@bit t663;
mov t000 L0x7fffffff0740;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5000@bit t600; cast d5001@bit t601; cast d5002@bit t602;
cast d5003@bit t603; cast d5004@bit t604; cast d5005@bit t605;
cast d5006@bit t606; cast d5007@bit t607; cast d5008@bit t608;
cast d5009@bit t609; cast d5010@bit t610; cast d5011@bit t611;
cast d5012@bit t612; cast d5013@bit t613; cast d5014@bit t614;
cast d5015@bit t615; cast d5016@bit t616; cast d5017@bit t617;
cast d5018@bit t618; cast d5019@bit t619; cast d5020@bit t620;
cast d5021@bit t621; cast d5022@bit t622; cast d5023@bit t623;
cast d5024@bit t624; cast d5025@bit t625; cast d5026@bit t626;
cast d5027@bit t627; cast d5028@bit t628; cast d5029@bit t629;
cast d5030@bit t630; cast d5031@bit t631; cast d5032@bit t632;
cast d5033@bit t633; cast d5034@bit t634; cast d5035@bit t635;
cast d5036@bit t636; cast d5037@bit t637; cast d5038@bit t638;
cast d5039@bit t639; cast d5040@bit t640; cast d5041@bit t641;
cast d5042@bit t642; cast d5043@bit t643; cast d5044@bit t644;
cast d5045@bit t645; cast d5046@bit t646; cast d5047@bit t647;
cast d5048@bit t648; cast d5049@bit t649; cast d5050@bit t650;
cast d5051@bit t651; cast d5052@bit t652; cast d5053@bit t653;
cast d5054@bit t654; cast d5055@bit t655; cast d5056@bit t656;
cast d5057@bit t657; cast d5058@bit t658; cast d5059@bit t659;
cast d5060@bit t660; cast d5061@bit t661; cast d5062@bit t662;
cast d5063@bit t663;
mov t000 L0x7fffffff0748;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5100@bit t600; cast d5101@bit t601; cast d5102@bit t602;
cast d5103@bit t603; cast d5104@bit t604; cast d5105@bit t605;
cast d5106@bit t606; cast d5107@bit t607; cast d5108@bit t608;
cast d5109@bit t609; cast d5110@bit t610; cast d5111@bit t611;
cast d5112@bit t612; cast d5113@bit t613; cast d5114@bit t614;
cast d5115@bit t615; cast d5116@bit t616; cast d5117@bit t617;
cast d5118@bit t618; cast d5119@bit t619; cast d5120@bit t620;
cast d5121@bit t621; cast d5122@bit t622; cast d5123@bit t623;
cast d5124@bit t624; cast d5125@bit t625; cast d5126@bit t626;
cast d5127@bit t627; cast d5128@bit t628; cast d5129@bit t629;
cast d5130@bit t630; cast d5131@bit t631; cast d5132@bit t632;
cast d5133@bit t633; cast d5134@bit t634; cast d5135@bit t635;
cast d5136@bit t636; cast d5137@bit t637; cast d5138@bit t638;
cast d5139@bit t639; cast d5140@bit t640; cast d5141@bit t641;
cast d5142@bit t642; cast d5143@bit t643; cast d5144@bit t644;
cast d5145@bit t645; cast d5146@bit t646; cast d5147@bit t647;
cast d5148@bit t648; cast d5149@bit t649; cast d5150@bit t650;
cast d5151@bit t651; cast d5152@bit t652; cast d5153@bit t653;
cast d5154@bit t654; cast d5155@bit t655; cast d5156@bit t656;
cast d5157@bit t657; cast d5158@bit t658; cast d5159@bit t659;
cast d5160@bit t660; cast d5161@bit t661; cast d5162@bit t662;
cast d5163@bit t663;
mov t000 L0x7fffffff0750;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5200@bit t600; cast d5201@bit t601; cast d5202@bit t602;
cast d5203@bit t603; cast d5204@bit t604; cast d5205@bit t605;
cast d5206@bit t606; cast d5207@bit t607; cast d5208@bit t608;
cast d5209@bit t609; cast d5210@bit t610; cast d5211@bit t611;
cast d5212@bit t612; cast d5213@bit t613; cast d5214@bit t614;
cast d5215@bit t615; cast d5216@bit t616; cast d5217@bit t617;
cast d5218@bit t618; cast d5219@bit t619; cast d5220@bit t620;
cast d5221@bit t621; cast d5222@bit t622; cast d5223@bit t623;
cast d5224@bit t624; cast d5225@bit t625; cast d5226@bit t626;
cast d5227@bit t627; cast d5228@bit t628; cast d5229@bit t629;
cast d5230@bit t630; cast d5231@bit t631; cast d5232@bit t632;
cast d5233@bit t633; cast d5234@bit t634; cast d5235@bit t635;
cast d5236@bit t636; cast d5237@bit t637; cast d5238@bit t638;
cast d5239@bit t639; cast d5240@bit t640; cast d5241@bit t641;
cast d5242@bit t642; cast d5243@bit t643; cast d5244@bit t644;
cast d5245@bit t645; cast d5246@bit t646; cast d5247@bit t647;
cast d5248@bit t648; cast d5249@bit t649; cast d5250@bit t650;
cast d5251@bit t651; cast d5252@bit t652; cast d5253@bit t653;
cast d5254@bit t654; cast d5255@bit t655; cast d5256@bit t656;
cast d5257@bit t657; cast d5258@bit t658; cast d5259@bit t659;
cast d5260@bit t660; cast d5261@bit t661; cast d5262@bit t662;
cast d5263@bit t663;
mov t000 L0x7fffffff0758;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5300@bit t600; cast d5301@bit t601; cast d5302@bit t602;
cast d5303@bit t603; cast d5304@bit t604; cast d5305@bit t605;
cast d5306@bit t606; cast d5307@bit t607; cast d5308@bit t608;
cast d5309@bit t609; cast d5310@bit t610; cast d5311@bit t611;
cast d5312@bit t612; cast d5313@bit t613; cast d5314@bit t614;
cast d5315@bit t615; cast d5316@bit t616; cast d5317@bit t617;
cast d5318@bit t618; cast d5319@bit t619; cast d5320@bit t620;
cast d5321@bit t621; cast d5322@bit t622; cast d5323@bit t623;
cast d5324@bit t624; cast d5325@bit t625; cast d5326@bit t626;
cast d5327@bit t627; cast d5328@bit t628; cast d5329@bit t629;
cast d5330@bit t630; cast d5331@bit t631; cast d5332@bit t632;
cast d5333@bit t633; cast d5334@bit t634; cast d5335@bit t635;
cast d5336@bit t636; cast d5337@bit t637; cast d5338@bit t638;
cast d5339@bit t639; cast d5340@bit t640; cast d5341@bit t641;
cast d5342@bit t642; cast d5343@bit t643; cast d5344@bit t644;
cast d5345@bit t645; cast d5346@bit t646; cast d5347@bit t647;
cast d5348@bit t648; cast d5349@bit t649; cast d5350@bit t650;
cast d5351@bit t651; cast d5352@bit t652; cast d5353@bit t653;
cast d5354@bit t654; cast d5355@bit t655; cast d5356@bit t656;
cast d5357@bit t657; cast d5358@bit t658; cast d5359@bit t659;
cast d5360@bit t660; cast d5361@bit t661; cast d5362@bit t662;
cast d5363@bit t663;
mov t000 L0x7fffffff0760;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5400@bit t600; cast d5401@bit t601; cast d5402@bit t602;
cast d5403@bit t603; cast d5404@bit t604; cast d5405@bit t605;
cast d5406@bit t606; cast d5407@bit t607; cast d5408@bit t608;
cast d5409@bit t609; cast d5410@bit t610; cast d5411@bit t611;
cast d5412@bit t612; cast d5413@bit t613; cast d5414@bit t614;
cast d5415@bit t615; cast d5416@bit t616; cast d5417@bit t617;
cast d5418@bit t618; cast d5419@bit t619; cast d5420@bit t620;
cast d5421@bit t621; cast d5422@bit t622; cast d5423@bit t623;
cast d5424@bit t624; cast d5425@bit t625; cast d5426@bit t626;
cast d5427@bit t627; cast d5428@bit t628; cast d5429@bit t629;
cast d5430@bit t630; cast d5431@bit t631; cast d5432@bit t632;
cast d5433@bit t633; cast d5434@bit t634; cast d5435@bit t635;
cast d5436@bit t636; cast d5437@bit t637; cast d5438@bit t638;
cast d5439@bit t639; cast d5440@bit t640; cast d5441@bit t641;
cast d5442@bit t642; cast d5443@bit t643; cast d5444@bit t644;
cast d5445@bit t645; cast d5446@bit t646; cast d5447@bit t647;
cast d5448@bit t648; cast d5449@bit t649; cast d5450@bit t650;
cast d5451@bit t651; cast d5452@bit t652; cast d5453@bit t653;
cast d5454@bit t654; cast d5455@bit t655; cast d5456@bit t656;
cast d5457@bit t657; cast d5458@bit t658; cast d5459@bit t659;
cast d5460@bit t660; cast d5461@bit t661; cast d5462@bit t662;
cast d5463@bit t663;
mov t000 L0x7fffffff0768;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5500@bit t600; cast d5501@bit t601; cast d5502@bit t602;
cast d5503@bit t603; cast d5504@bit t604; cast d5505@bit t605;
cast d5506@bit t606; cast d5507@bit t607; cast d5508@bit t608;
cast d5509@bit t609; cast d5510@bit t610; cast d5511@bit t611;
cast d5512@bit t612; cast d5513@bit t613; cast d5514@bit t614;
cast d5515@bit t615; cast d5516@bit t616; cast d5517@bit t617;
cast d5518@bit t618; cast d5519@bit t619; cast d5520@bit t620;
cast d5521@bit t621; cast d5522@bit t622; cast d5523@bit t623;
cast d5524@bit t624; cast d5525@bit t625; cast d5526@bit t626;
cast d5527@bit t627; cast d5528@bit t628; cast d5529@bit t629;
cast d5530@bit t630; cast d5531@bit t631; cast d5532@bit t632;
cast d5533@bit t633; cast d5534@bit t634; cast d5535@bit t635;
cast d5536@bit t636; cast d5537@bit t637; cast d5538@bit t638;
cast d5539@bit t639; cast d5540@bit t640; cast d5541@bit t641;
cast d5542@bit t642; cast d5543@bit t643; cast d5544@bit t644;
cast d5545@bit t645; cast d5546@bit t646; cast d5547@bit t647;
cast d5548@bit t648; cast d5549@bit t649; cast d5550@bit t650;
cast d5551@bit t651; cast d5552@bit t652; cast d5553@bit t653;
cast d5554@bit t654; cast d5555@bit t655; cast d5556@bit t656;
cast d5557@bit t657; cast d5558@bit t658; cast d5559@bit t659;
cast d5560@bit t660; cast d5561@bit t661; cast d5562@bit t662;
cast d5563@bit t663;
mov t000 L0x7fffffff0770;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5600@bit t600; cast d5601@bit t601; cast d5602@bit t602;
cast d5603@bit t603; cast d5604@bit t604; cast d5605@bit t605;
cast d5606@bit t606; cast d5607@bit t607; cast d5608@bit t608;
cast d5609@bit t609; cast d5610@bit t610; cast d5611@bit t611;
cast d5612@bit t612; cast d5613@bit t613; cast d5614@bit t614;
cast d5615@bit t615; cast d5616@bit t616; cast d5617@bit t617;
cast d5618@bit t618; cast d5619@bit t619; cast d5620@bit t620;
cast d5621@bit t621; cast d5622@bit t622; cast d5623@bit t623;
cast d5624@bit t624; cast d5625@bit t625; cast d5626@bit t626;
cast d5627@bit t627; cast d5628@bit t628; cast d5629@bit t629;
cast d5630@bit t630; cast d5631@bit t631; cast d5632@bit t632;
cast d5633@bit t633; cast d5634@bit t634; cast d5635@bit t635;
cast d5636@bit t636; cast d5637@bit t637; cast d5638@bit t638;
cast d5639@bit t639; cast d5640@bit t640; cast d5641@bit t641;
cast d5642@bit t642; cast d5643@bit t643; cast d5644@bit t644;
cast d5645@bit t645; cast d5646@bit t646; cast d5647@bit t647;
cast d5648@bit t648; cast d5649@bit t649; cast d5650@bit t650;
cast d5651@bit t651; cast d5652@bit t652; cast d5653@bit t653;
cast d5654@bit t654; cast d5655@bit t655; cast d5656@bit t656;
cast d5657@bit t657; cast d5658@bit t658; cast d5659@bit t659;
cast d5660@bit t660; cast d5661@bit t661; cast d5662@bit t662;
cast d5663@bit t663;
mov t000 L0x7fffffff0778;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5700@bit t600; cast d5701@bit t601; cast d5702@bit t602;
cast d5703@bit t603; cast d5704@bit t604; cast d5705@bit t605;
cast d5706@bit t606; cast d5707@bit t607; cast d5708@bit t608;
cast d5709@bit t609; cast d5710@bit t610; cast d5711@bit t611;
cast d5712@bit t612; cast d5713@bit t613; cast d5714@bit t614;
cast d5715@bit t615; cast d5716@bit t616; cast d5717@bit t617;
cast d5718@bit t618; cast d5719@bit t619; cast d5720@bit t620;
cast d5721@bit t621; cast d5722@bit t622; cast d5723@bit t623;
cast d5724@bit t624; cast d5725@bit t625; cast d5726@bit t626;
cast d5727@bit t627; cast d5728@bit t628; cast d5729@bit t629;
cast d5730@bit t630; cast d5731@bit t631; cast d5732@bit t632;
cast d5733@bit t633; cast d5734@bit t634; cast d5735@bit t635;
cast d5736@bit t636; cast d5737@bit t637; cast d5738@bit t638;
cast d5739@bit t639; cast d5740@bit t640; cast d5741@bit t641;
cast d5742@bit t642; cast d5743@bit t643; cast d5744@bit t644;
cast d5745@bit t645; cast d5746@bit t646; cast d5747@bit t647;
cast d5748@bit t648; cast d5749@bit t649; cast d5750@bit t650;
cast d5751@bit t651; cast d5752@bit t652; cast d5753@bit t653;
cast d5754@bit t654; cast d5755@bit t655; cast d5756@bit t656;
cast d5757@bit t657; cast d5758@bit t658; cast d5759@bit t659;
cast d5760@bit t660; cast d5761@bit t661; cast d5762@bit t662;
cast d5763@bit t663;
mov t000 L0x7fffffff0780;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5800@bit t600; cast d5801@bit t601; cast d5802@bit t602;
cast d5803@bit t603; cast d5804@bit t604; cast d5805@bit t605;
cast d5806@bit t606; cast d5807@bit t607; cast d5808@bit t608;
cast d5809@bit t609; cast d5810@bit t610; cast d5811@bit t611;
cast d5812@bit t612; cast d5813@bit t613; cast d5814@bit t614;
cast d5815@bit t615; cast d5816@bit t616; cast d5817@bit t617;
cast d5818@bit t618; cast d5819@bit t619; cast d5820@bit t620;
cast d5821@bit t621; cast d5822@bit t622; cast d5823@bit t623;
cast d5824@bit t624; cast d5825@bit t625; cast d5826@bit t626;
cast d5827@bit t627; cast d5828@bit t628; cast d5829@bit t629;
cast d5830@bit t630; cast d5831@bit t631; cast d5832@bit t632;
cast d5833@bit t633; cast d5834@bit t634; cast d5835@bit t635;
cast d5836@bit t636; cast d5837@bit t637; cast d5838@bit t638;
cast d5839@bit t639; cast d5840@bit t640; cast d5841@bit t641;
cast d5842@bit t642; cast d5843@bit t643; cast d5844@bit t644;
cast d5845@bit t645; cast d5846@bit t646; cast d5847@bit t647;
cast d5848@bit t648; cast d5849@bit t649; cast d5850@bit t650;
cast d5851@bit t651; cast d5852@bit t652; cast d5853@bit t653;
cast d5854@bit t654; cast d5855@bit t655; cast d5856@bit t656;
cast d5857@bit t657; cast d5858@bit t658; cast d5859@bit t659;
cast d5860@bit t660; cast d5861@bit t661; cast d5862@bit t662;
cast d5863@bit t663;
mov t000 L0x7fffffff0788;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d5900@bit t600; cast d5901@bit t601; cast d5902@bit t602;
cast d5903@bit t603; cast d5904@bit t604; cast d5905@bit t605;
cast d5906@bit t606; cast d5907@bit t607; cast d5908@bit t608;
cast d5909@bit t609; cast d5910@bit t610; cast d5911@bit t611;
cast d5912@bit t612; cast d5913@bit t613; cast d5914@bit t614;
cast d5915@bit t615; cast d5916@bit t616; cast d5917@bit t617;
cast d5918@bit t618; cast d5919@bit t619; cast d5920@bit t620;
cast d5921@bit t621; cast d5922@bit t622; cast d5923@bit t623;
cast d5924@bit t624; cast d5925@bit t625; cast d5926@bit t626;
cast d5927@bit t627; cast d5928@bit t628; cast d5929@bit t629;
cast d5930@bit t630; cast d5931@bit t631; cast d5932@bit t632;
cast d5933@bit t633; cast d5934@bit t634; cast d5935@bit t635;
cast d5936@bit t636; cast d5937@bit t637; cast d5938@bit t638;
cast d5939@bit t639; cast d5940@bit t640; cast d5941@bit t641;
cast d5942@bit t642; cast d5943@bit t643; cast d5944@bit t644;
cast d5945@bit t645; cast d5946@bit t646; cast d5947@bit t647;
cast d5948@bit t648; cast d5949@bit t649; cast d5950@bit t650;
cast d5951@bit t651; cast d5952@bit t652; cast d5953@bit t653;
cast d5954@bit t654; cast d5955@bit t655; cast d5956@bit t656;
cast d5957@bit t657; cast d5958@bit t658; cast d5959@bit t659;
cast d5960@bit t660; cast d5961@bit t661; cast d5962@bit t662;
cast d5963@bit t663;
mov t000 L0x7fffffff0790;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d6000@bit t600; cast d6001@bit t601; cast d6002@bit t602;
cast d6003@bit t603; cast d6004@bit t604; cast d6005@bit t605;
cast d6006@bit t606; cast d6007@bit t607; cast d6008@bit t608;
cast d6009@bit t609; cast d6010@bit t610; cast d6011@bit t611;
cast d6012@bit t612; cast d6013@bit t613; cast d6014@bit t614;
cast d6015@bit t615; cast d6016@bit t616; cast d6017@bit t617;
cast d6018@bit t618; cast d6019@bit t619; cast d6020@bit t620;
cast d6021@bit t621; cast d6022@bit t622; cast d6023@bit t623;
cast d6024@bit t624; cast d6025@bit t625; cast d6026@bit t626;
cast d6027@bit t627; cast d6028@bit t628; cast d6029@bit t629;
cast d6030@bit t630; cast d6031@bit t631; cast d6032@bit t632;
cast d6033@bit t633; cast d6034@bit t634; cast d6035@bit t635;
cast d6036@bit t636; cast d6037@bit t637; cast d6038@bit t638;
cast d6039@bit t639; cast d6040@bit t640; cast d6041@bit t641;
cast d6042@bit t642; cast d6043@bit t643; cast d6044@bit t644;
cast d6045@bit t645; cast d6046@bit t646; cast d6047@bit t647;
cast d6048@bit t648; cast d6049@bit t649; cast d6050@bit t650;
cast d6051@bit t651; cast d6052@bit t652; cast d6053@bit t653;
cast d6054@bit t654; cast d6055@bit t655; cast d6056@bit t656;
cast d6057@bit t657; cast d6058@bit t658; cast d6059@bit t659;
cast d6060@bit t660; cast d6061@bit t661; cast d6062@bit t662;
cast d6063@bit t663;
mov t000 L0x7fffffff0798;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d6100@bit t600; cast d6101@bit t601; cast d6102@bit t602;
cast d6103@bit t603; cast d6104@bit t604; cast d6105@bit t605;
cast d6106@bit t606; cast d6107@bit t607; cast d6108@bit t608;
cast d6109@bit t609; cast d6110@bit t610; cast d6111@bit t611;
cast d6112@bit t612; cast d6113@bit t613; cast d6114@bit t614;
cast d6115@bit t615; cast d6116@bit t616; cast d6117@bit t617;
cast d6118@bit t618; cast d6119@bit t619; cast d6120@bit t620;
cast d6121@bit t621; cast d6122@bit t622; cast d6123@bit t623;
cast d6124@bit t624; cast d6125@bit t625; cast d6126@bit t626;
cast d6127@bit t627; cast d6128@bit t628; cast d6129@bit t629;
cast d6130@bit t630; cast d6131@bit t631; cast d6132@bit t632;
cast d6133@bit t633; cast d6134@bit t634; cast d6135@bit t635;
cast d6136@bit t636; cast d6137@bit t637; cast d6138@bit t638;
cast d6139@bit t639; cast d6140@bit t640; cast d6141@bit t641;
cast d6142@bit t642; cast d6143@bit t643; cast d6144@bit t644;
cast d6145@bit t645; cast d6146@bit t646; cast d6147@bit t647;
cast d6148@bit t648; cast d6149@bit t649; cast d6150@bit t650;
cast d6151@bit t651; cast d6152@bit t652; cast d6153@bit t653;
cast d6154@bit t654; cast d6155@bit t655; cast d6156@bit t656;
cast d6157@bit t657; cast d6158@bit t658; cast d6159@bit t659;
cast d6160@bit t660; cast d6161@bit t661; cast d6162@bit t662;
cast d6163@bit t663;
mov t000 L0x7fffffff07a0;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d6200@bit t600; cast d6201@bit t601; cast d6202@bit t602;
cast d6203@bit t603; cast d6204@bit t604; cast d6205@bit t605;
cast d6206@bit t606; cast d6207@bit t607; cast d6208@bit t608;
cast d6209@bit t609; cast d6210@bit t610; cast d6211@bit t611;
cast d6212@bit t612; cast d6213@bit t613; cast d6214@bit t614;
cast d6215@bit t615; cast d6216@bit t616; cast d6217@bit t617;
cast d6218@bit t618; cast d6219@bit t619; cast d6220@bit t620;
cast d6221@bit t621; cast d6222@bit t622; cast d6223@bit t623;
cast d6224@bit t624; cast d6225@bit t625; cast d6226@bit t626;
cast d6227@bit t627; cast d6228@bit t628; cast d6229@bit t629;
cast d6230@bit t630; cast d6231@bit t631; cast d6232@bit t632;
cast d6233@bit t633; cast d6234@bit t634; cast d6235@bit t635;
cast d6236@bit t636; cast d6237@bit t637; cast d6238@bit t638;
cast d6239@bit t639; cast d6240@bit t640; cast d6241@bit t641;
cast d6242@bit t642; cast d6243@bit t643; cast d6244@bit t644;
cast d6245@bit t645; cast d6246@bit t646; cast d6247@bit t647;
cast d6248@bit t648; cast d6249@bit t649; cast d6250@bit t650;
cast d6251@bit t651; cast d6252@bit t652; cast d6253@bit t653;
cast d6254@bit t654; cast d6255@bit t655; cast d6256@bit t656;
cast d6257@bit t657; cast d6258@bit t658; cast d6259@bit t659;
cast d6260@bit t660; cast d6261@bit t661; cast d6262@bit t662;
cast d6263@bit t663;
mov t000 L0x7fffffff07a8;
split t101 t100 t000 32;
split t201 t200 t100 16; split t203 t202 t101 16;
split t301 t300 t200 8; split t303 t302 t201 8;
split t305 t304 t202 8; split t307 t306 t203 8;
split t401 t400 t300 4; split t403 t402 t301 4;
split t405 t404 t302 4; split t407 t406 t303 4;
split t409 t408 t304 4; split t411 t410 t305 4;
split t413 t412 t306 4; split t415 t414 t307 4;
split t501 t500 t400 2; split t503 t502 t401 2;
split t505 t504 t402 2; split t507 t506 t403 2;
split t509 t508 t404 2; split t511 t510 t405 2;
split t513 t512 t406 2; split t515 t514 t407 2;
split t517 t516 t408 2; split t519 t518 t409 2;
split t521 t520 t410 2; split t523 t522 t411 2;
split t525 t524 t412 2; split t527 t526 t413 2;
split t529 t528 t414 2; split t531 t530 t415 2;
split t601 t600 t500 1; split t603 t602 t501 1;
split t605 t604 t502 1; split t607 t606 t503 1;
split t609 t608 t504 1; split t611 t610 t505 1;
split t613 t612 t506 1; split t615 t614 t507 1;
split t617 t616 t508 1; split t619 t618 t509 1;
split t621 t620 t510 1; split t623 t622 t511 1;
split t625 t624 t512 1; split t627 t626 t513 1;
split t629 t628 t514 1; split t631 t630 t515 1;
split t633 t632 t516 1; split t635 t634 t517 1;
split t637 t636 t518 1; split t639 t638 t519 1;
split t641 t640 t520 1; split t643 t642 t521 1;
split t645 t644 t522 1; split t647 t646 t523 1;
split t649 t648 t524 1; split t651 t650 t525 1;
split t653 t652 t526 1; split t655 t654 t527 1;
split t657 t656 t528 1; split t659 t658 t529 1;
split t661 t660 t530 1; split t663 t662 t531 1;
cast d6300@bit t600; cast d6301@bit t601; cast d6302@bit t602;
cast d6303@bit t603; cast d6304@bit t604; cast d6305@bit t605;
cast d6306@bit t606; cast d6307@bit t607; cast d6308@bit t608;
cast d6309@bit t609; cast d6310@bit t610; cast d6311@bit t611;
cast d6312@bit t612; cast d6313@bit t613; cast d6314@bit t614;
cast d6315@bit t615; cast d6316@bit t616; cast d6317@bit t617;
cast d6318@bit t618; cast d6319@bit t619; cast d6320@bit t620;
cast d6321@bit t621; cast d6322@bit t622; cast d6323@bit t623;
cast d6324@bit t624; cast d6325@bit t625; cast d6326@bit t626;
cast d6327@bit t627; cast d6328@bit t628; cast d6329@bit t629;
cast d6330@bit t630; cast d6331@bit t631; cast d6332@bit t632;
cast d6333@bit t633; cast d6334@bit t634; cast d6335@bit t635;
cast d6336@bit t636; cast d6337@bit t637; cast d6338@bit t638;
cast d6339@bit t639; cast d6340@bit t640; cast d6341@bit t641;
cast d6342@bit t642; cast d6343@bit t643; cast d6344@bit t644;
cast d6345@bit t645; cast d6346@bit t646; cast d6347@bit t647;
cast d6348@bit t648; cast d6349@bit t649; cast d6350@bit t650;
cast d6351@bit t651; cast d6352@bit t652; cast d6353@bit t653;
cast d6354@bit t654; cast d6355@bit t655; cast d6356@bit t656;
cast d6357@bit t657; cast d6358@bit t658; cast d6359@bit t659;
cast d6360@bit t660; cast d6361@bit t661; cast d6362@bit t662;
cast d6363@bit t663;



{
(**************** postcondition *****************)

true &&
and [
c0000=d0000, c0001=d0100, c0002=d0200, c0003=d0300, c0004=d0400, c0005=d0500,
c0006=d0600, c0007=d0700, c0008=d0800, c0009=d0900, c0010=d1000, c0011=d1100,
c0012=d1200, c0013=d1300, c0014=d1400, c0015=d1500, c0016=d1600, c0017=d1700,
c0018=d1800, c0019=d1900, c0020=d2000, c0021=d2100, c0022=d2200, c0023=d2300,
c0024=d2400, c0025=d2500, c0026=d2600, c0027=d2700, c0028=d2800, c0029=d2900,
c0030=d3000, c0031=d3100, c0032=d3200, c0033=d3300, c0034=d3400, c0035=d3500,
c0036=d3600, c0037=d3700, c0038=d3800, c0039=d3900, c0040=d4000, c0041=d4100,
c0042=d4200, c0043=d4300, c0044=d4400, c0045=d4500, c0046=d4600, c0047=d4700,
c0048=d4800, c0049=d4900, c0050=d5000, c0051=d5100, c0052=d5200, c0053=d5300,
c0054=d5400, c0055=d5500, c0056=d5600, c0057=d5700, c0058=d5800, c0059=d5900,
c0060=d6000, c0061=d6100, c0062=d6200, c0063=d6300, c0100=d0001, c0101=d0101,
c0102=d0201, c0103=d0301, c0104=d0401, c0105=d0501, c0106=d0601, c0107=d0701,
c0108=d0801, c0109=d0901, c0110=d1001, c0111=d1101, c0112=d1201, c0113=d1301,
c0114=d1401, c0115=d1501, c0116=d1601, c0117=d1701, c0118=d1801, c0119=d1901,
c0120=d2001, c0121=d2101, c0122=d2201, c0123=d2301, c0124=d2401, c0125=d2501,
c0126=d2601, c0127=d2701, c0128=d2801, c0129=d2901, c0130=d3001, c0131=d3101,
c0132=d3201, c0133=d3301, c0134=d3401, c0135=d3501, c0136=d3601, c0137=d3701,
c0138=d3801, c0139=d3901, c0140=d4001, c0141=d4101, c0142=d4201, c0143=d4301,
c0144=d4401, c0145=d4501, c0146=d4601, c0147=d4701, c0148=d4801, c0149=d4901,
c0150=d5001, c0151=d5101, c0152=d5201, c0153=d5301, c0154=d5401, c0155=d5501,
c0156=d5601, c0157=d5701, c0158=d5801, c0159=d5901, c0160=d6001, c0161=d6101,
c0162=d6201, c0163=d6301, c0200=d0002, c0201=d0102, c0202=d0202, c0203=d0302,
c0204=d0402, c0205=d0502, c0206=d0602, c0207=d0702, c0208=d0802, c0209=d0902,
c0210=d1002, c0211=d1102, c0212=d1202, c0213=d1302, c0214=d1402, c0215=d1502,
c0216=d1602, c0217=d1702, c0218=d1802, c0219=d1902, c0220=d2002, c0221=d2102,
c0222=d2202, c0223=d2302, c0224=d2402, c0225=d2502, c0226=d2602, c0227=d2702,
c0228=d2802, c0229=d2902, c0230=d3002, c0231=d3102, c0232=d3202, c0233=d3302,
c0234=d3402, c0235=d3502, c0236=d3602, c0237=d3702, c0238=d3802, c0239=d3902,
c0240=d4002, c0241=d4102, c0242=d4202, c0243=d4302, c0244=d4402, c0245=d4502,
c0246=d4602, c0247=d4702, c0248=d4802, c0249=d4902, c0250=d5002, c0251=d5102,
c0252=d5202, c0253=d5302, c0254=d5402, c0255=d5502, c0256=d5602, c0257=d5702,
c0258=d5802, c0259=d5902, c0260=d6002, c0261=d6102, c0262=d6202, c0263=d6302,
c0300=d0003, c0301=d0103, c0302=d0203, c0303=d0303, c0304=d0403, c0305=d0503,
c0306=d0603, c0307=d0703, c0308=d0803, c0309=d0903, c0310=d1003, c0311=d1103,
c0312=d1203, c0313=d1303, c0314=d1403, c0315=d1503, c0316=d1603, c0317=d1703,
c0318=d1803, c0319=d1903, c0320=d2003, c0321=d2103, c0322=d2203, c0323=d2303,
c0324=d2403, c0325=d2503, c0326=d2603, c0327=d2703, c0328=d2803, c0329=d2903,
c0330=d3003, c0331=d3103, c0332=d3203, c0333=d3303, c0334=d3403, c0335=d3503,
c0336=d3603, c0337=d3703, c0338=d3803, c0339=d3903, c0340=d4003, c0341=d4103,
c0342=d4203, c0343=d4303, c0344=d4403, c0345=d4503, c0346=d4603, c0347=d4703,
c0348=d4803, c0349=d4903, c0350=d5003, c0351=d5103, c0352=d5203, c0353=d5303,
c0354=d5403, c0355=d5503, c0356=d5603, c0357=d5703, c0358=d5803, c0359=d5903,
c0360=d6003, c0361=d6103, c0362=d6203, c0363=d6303, c0400=d0004, c0401=d0104,
c0402=d0204, c0403=d0304, c0404=d0404, c0405=d0504, c0406=d0604, c0407=d0704,
c0408=d0804, c0409=d0904, c0410=d1004, c0411=d1104, c0412=d1204, c0413=d1304,
c0414=d1404, c0415=d1504, c0416=d1604, c0417=d1704, c0418=d1804, c0419=d1904,
c0420=d2004, c0421=d2104, c0422=d2204, c0423=d2304, c0424=d2404, c0425=d2504,
c0426=d2604, c0427=d2704, c0428=d2804, c0429=d2904, c0430=d3004, c0431=d3104,
c0432=d3204, c0433=d3304, c0434=d3404, c0435=d3504, c0436=d3604, c0437=d3704,
c0438=d3804, c0439=d3904, c0440=d4004, c0441=d4104, c0442=d4204, c0443=d4304,
c0444=d4404, c0445=d4504, c0446=d4604, c0447=d4704, c0448=d4804, c0449=d4904,
c0450=d5004, c0451=d5104, c0452=d5204, c0453=d5304, c0454=d5404, c0455=d5504,
c0456=d5604, c0457=d5704, c0458=d5804, c0459=d5904, c0460=d6004, c0461=d6104,
c0462=d6204, c0463=d6304, c0500=d0005, c0501=d0105, c0502=d0205, c0503=d0305,
c0504=d0405, c0505=d0505, c0506=d0605, c0507=d0705, c0508=d0805, c0509=d0905,
c0510=d1005, c0511=d1105, c0512=d1205, c0513=d1305, c0514=d1405, c0515=d1505,
c0516=d1605, c0517=d1705, c0518=d1805, c0519=d1905, c0520=d2005, c0521=d2105,
c0522=d2205, c0523=d2305, c0524=d2405, c0525=d2505, c0526=d2605, c0527=d2705,
c0528=d2805, c0529=d2905, c0530=d3005, c0531=d3105, c0532=d3205, c0533=d3305,
c0534=d3405, c0535=d3505, c0536=d3605, c0537=d3705, c0538=d3805, c0539=d3905,
c0540=d4005, c0541=d4105, c0542=d4205, c0543=d4305, c0544=d4405, c0545=d4505,
c0546=d4605, c0547=d4705, c0548=d4805, c0549=d4905, c0550=d5005, c0551=d5105,
c0552=d5205, c0553=d5305, c0554=d5405, c0555=d5505, c0556=d5605, c0557=d5705,
c0558=d5805, c0559=d5905, c0560=d6005, c0561=d6105, c0562=d6205, c0563=d6305,
c0600=d0006, c0601=d0106, c0602=d0206, c0603=d0306, c0604=d0406, c0605=d0506,
c0606=d0606, c0607=d0706, c0608=d0806, c0609=d0906, c0610=d1006, c0611=d1106,
c0612=d1206, c0613=d1306, c0614=d1406, c0615=d1506, c0616=d1606, c0617=d1706,
c0618=d1806, c0619=d1906, c0620=d2006, c0621=d2106, c0622=d2206, c0623=d2306,
c0624=d2406, c0625=d2506, c0626=d2606, c0627=d2706, c0628=d2806, c0629=d2906,
c0630=d3006, c0631=d3106, c0632=d3206, c0633=d3306, c0634=d3406, c0635=d3506,
c0636=d3606, c0637=d3706, c0638=d3806, c0639=d3906, c0640=d4006, c0641=d4106,
c0642=d4206, c0643=d4306, c0644=d4406, c0645=d4506, c0646=d4606, c0647=d4706,
c0648=d4806, c0649=d4906, c0650=d5006, c0651=d5106, c0652=d5206, c0653=d5306,
c0654=d5406, c0655=d5506, c0656=d5606, c0657=d5706, c0658=d5806, c0659=d5906,
c0660=d6006, c0661=d6106, c0662=d6206, c0663=d6306, c0700=d0007, c0701=d0107,
c0702=d0207, c0703=d0307, c0704=d0407, c0705=d0507, c0706=d0607, c0707=d0707,
c0708=d0807, c0709=d0907, c0710=d1007, c0711=d1107, c0712=d1207, c0713=d1307,
c0714=d1407, c0715=d1507, c0716=d1607, c0717=d1707, c0718=d1807, c0719=d1907,
c0720=d2007, c0721=d2107, c0722=d2207, c0723=d2307, c0724=d2407, c0725=d2507,
c0726=d2607, c0727=d2707, c0728=d2807, c0729=d2907, c0730=d3007, c0731=d3107,
c0732=d3207, c0733=d3307, c0734=d3407, c0735=d3507, c0736=d3607, c0737=d3707,
c0738=d3807, c0739=d3907, c0740=d4007, c0741=d4107, c0742=d4207, c0743=d4307,
c0744=d4407, c0745=d4507, c0746=d4607, c0747=d4707, c0748=d4807, c0749=d4907,
c0750=d5007, c0751=d5107, c0752=d5207, c0753=d5307, c0754=d5407, c0755=d5507,
c0756=d5607, c0757=d5707, c0758=d5807, c0759=d5907, c0760=d6007, c0761=d6107,
c0762=d6207, c0763=d6307, c0800=d0008, c0801=d0108, c0802=d0208, c0803=d0308,
c0804=d0408, c0805=d0508, c0806=d0608, c0807=d0708, c0808=d0808, c0809=d0908,
c0810=d1008, c0811=d1108, c0812=d1208, c0813=d1308, c0814=d1408, c0815=d1508,
c0816=d1608, c0817=d1708, c0818=d1808, c0819=d1908, c0820=d2008, c0821=d2108,
c0822=d2208, c0823=d2308, c0824=d2408, c0825=d2508, c0826=d2608, c0827=d2708,
c0828=d2808, c0829=d2908, c0830=d3008, c0831=d3108, c0832=d3208, c0833=d3308,
c0834=d3408, c0835=d3508, c0836=d3608, c0837=d3708, c0838=d3808, c0839=d3908,
c0840=d4008, c0841=d4108, c0842=d4208, c0843=d4308, c0844=d4408, c0845=d4508,
c0846=d4608, c0847=d4708, c0848=d4808, c0849=d4908, c0850=d5008, c0851=d5108,
c0852=d5208, c0853=d5308, c0854=d5408, c0855=d5508, c0856=d5608, c0857=d5708,
c0858=d5808, c0859=d5908, c0860=d6008, c0861=d6108, c0862=d6208, c0863=d6308,
c0900=d0009, c0901=d0109, c0902=d0209, c0903=d0309, c0904=d0409, c0905=d0509,
c0906=d0609, c0907=d0709, c0908=d0809, c0909=d0909, c0910=d1009, c0911=d1109,
c0912=d1209, c0913=d1309, c0914=d1409, c0915=d1509, c0916=d1609, c0917=d1709,
c0918=d1809, c0919=d1909, c0920=d2009, c0921=d2109, c0922=d2209, c0923=d2309,
c0924=d2409, c0925=d2509, c0926=d2609, c0927=d2709, c0928=d2809, c0929=d2909,
c0930=d3009, c0931=d3109, c0932=d3209, c0933=d3309, c0934=d3409, c0935=d3509,
c0936=d3609, c0937=d3709, c0938=d3809, c0939=d3909, c0940=d4009, c0941=d4109,
c0942=d4209, c0943=d4309, c0944=d4409, c0945=d4509, c0946=d4609, c0947=d4709,
c0948=d4809, c0949=d4909, c0950=d5009, c0951=d5109, c0952=d5209, c0953=d5309,
c0954=d5409, c0955=d5509, c0956=d5609, c0957=d5709, c0958=d5809, c0959=d5909,
c0960=d6009, c0961=d6109, c0962=d6209, c0963=d6309, c1000=d0010, c1001=d0110,
c1002=d0210, c1003=d0310, c1004=d0410, c1005=d0510, c1006=d0610, c1007=d0710,
c1008=d0810, c1009=d0910, c1010=d1010, c1011=d1110, c1012=d1210, c1013=d1310,
c1014=d1410, c1015=d1510, c1016=d1610, c1017=d1710, c1018=d1810, c1019=d1910,
c1020=d2010, c1021=d2110, c1022=d2210, c1023=d2310, c1024=d2410, c1025=d2510,
c1026=d2610, c1027=d2710, c1028=d2810, c1029=d2910, c1030=d3010, c1031=d3110,
c1032=d3210, c1033=d3310, c1034=d3410, c1035=d3510, c1036=d3610, c1037=d3710,
c1038=d3810, c1039=d3910, c1040=d4010, c1041=d4110, c1042=d4210, c1043=d4310,
c1044=d4410, c1045=d4510, c1046=d4610, c1047=d4710, c1048=d4810, c1049=d4910,
c1050=d5010, c1051=d5110, c1052=d5210, c1053=d5310, c1054=d5410, c1055=d5510,
c1056=d5610, c1057=d5710, c1058=d5810, c1059=d5910, c1060=d6010, c1061=d6110,
c1062=d6210, c1063=d6310, c1100=d0011, c1101=d0111, c1102=d0211, c1103=d0311,
c1104=d0411, c1105=d0511, c1106=d0611, c1107=d0711, c1108=d0811, c1109=d0911,
c1110=d1011, c1111=d1111, c1112=d1211, c1113=d1311, c1114=d1411, c1115=d1511,
c1116=d1611, c1117=d1711, c1118=d1811, c1119=d1911, c1120=d2011, c1121=d2111,
c1122=d2211, c1123=d2311, c1124=d2411, c1125=d2511, c1126=d2611, c1127=d2711,
c1128=d2811, c1129=d2911, c1130=d3011, c1131=d3111, c1132=d3211, c1133=d3311,
c1134=d3411, c1135=d3511, c1136=d3611, c1137=d3711, c1138=d3811, c1139=d3911,
c1140=d4011, c1141=d4111, c1142=d4211, c1143=d4311, c1144=d4411, c1145=d4511,
c1146=d4611, c1147=d4711, c1148=d4811, c1149=d4911, c1150=d5011, c1151=d5111,
c1152=d5211, c1153=d5311, c1154=d5411, c1155=d5511, c1156=d5611, c1157=d5711,
c1158=d5811, c1159=d5911, c1160=d6011, c1161=d6111, c1162=d6211, c1163=d6311,
c1200=d0012, c1201=d0112, c1202=d0212, c1203=d0312, c1204=d0412, c1205=d0512,
c1206=d0612, c1207=d0712, c1208=d0812, c1209=d0912, c1210=d1012, c1211=d1112,
c1212=d1212, c1213=d1312, c1214=d1412, c1215=d1512, c1216=d1612, c1217=d1712,
c1218=d1812, c1219=d1912, c1220=d2012, c1221=d2112, c1222=d2212, c1223=d2312,
c1224=d2412, c1225=d2512, c1226=d2612, c1227=d2712, c1228=d2812, c1229=d2912,
c1230=d3012, c1231=d3112, c1232=d3212, c1233=d3312, c1234=d3412, c1235=d3512,
c1236=d3612, c1237=d3712, c1238=d3812, c1239=d3912, c1240=d4012, c1241=d4112,
c1242=d4212, c1243=d4312, c1244=d4412, c1245=d4512, c1246=d4612, c1247=d4712,
c1248=d4812, c1249=d4912, c1250=d5012, c1251=d5112, c1252=d5212, c1253=d5312,
c1254=d5412, c1255=d5512, c1256=d5612, c1257=d5712, c1258=d5812, c1259=d5912,
c1260=d6012, c1261=d6112, c1262=d6212, c1263=d6312, c1300=d0013, c1301=d0113,
c1302=d0213, c1303=d0313, c1304=d0413, c1305=d0513, c1306=d0613, c1307=d0713,
c1308=d0813, c1309=d0913, c1310=d1013, c1311=d1113, c1312=d1213, c1313=d1313,
c1314=d1413, c1315=d1513, c1316=d1613, c1317=d1713, c1318=d1813, c1319=d1913,
c1320=d2013, c1321=d2113, c1322=d2213, c1323=d2313, c1324=d2413, c1325=d2513,
c1326=d2613, c1327=d2713, c1328=d2813, c1329=d2913, c1330=d3013, c1331=d3113,
c1332=d3213, c1333=d3313, c1334=d3413, c1335=d3513, c1336=d3613, c1337=d3713,
c1338=d3813, c1339=d3913, c1340=d4013, c1341=d4113, c1342=d4213, c1343=d4313,
c1344=d4413, c1345=d4513, c1346=d4613, c1347=d4713, c1348=d4813, c1349=d4913,
c1350=d5013, c1351=d5113, c1352=d5213, c1353=d5313, c1354=d5413, c1355=d5513,
c1356=d5613, c1357=d5713, c1358=d5813, c1359=d5913, c1360=d6013, c1361=d6113,
c1362=d6213, c1363=d6313, c1400=d0014, c1401=d0114, c1402=d0214, c1403=d0314,
c1404=d0414, c1405=d0514, c1406=d0614, c1407=d0714, c1408=d0814, c1409=d0914,
c1410=d1014, c1411=d1114, c1412=d1214, c1413=d1314, c1414=d1414, c1415=d1514,
c1416=d1614, c1417=d1714, c1418=d1814, c1419=d1914, c1420=d2014, c1421=d2114,
c1422=d2214, c1423=d2314, c1424=d2414, c1425=d2514, c1426=d2614, c1427=d2714,
c1428=d2814, c1429=d2914, c1430=d3014, c1431=d3114, c1432=d3214, c1433=d3314,
c1434=d3414, c1435=d3514, c1436=d3614, c1437=d3714, c1438=d3814, c1439=d3914,
c1440=d4014, c1441=d4114, c1442=d4214, c1443=d4314, c1444=d4414, c1445=d4514,
c1446=d4614, c1447=d4714, c1448=d4814, c1449=d4914, c1450=d5014, c1451=d5114,
c1452=d5214, c1453=d5314, c1454=d5414, c1455=d5514, c1456=d5614, c1457=d5714,
c1458=d5814, c1459=d5914, c1460=d6014, c1461=d6114, c1462=d6214, c1463=d6314,
c1500=d0015, c1501=d0115, c1502=d0215, c1503=d0315, c1504=d0415, c1505=d0515,
c1506=d0615, c1507=d0715, c1508=d0815, c1509=d0915, c1510=d1015, c1511=d1115,
c1512=d1215, c1513=d1315, c1514=d1415, c1515=d1515, c1516=d1615, c1517=d1715,
c1518=d1815, c1519=d1915, c1520=d2015, c1521=d2115, c1522=d2215, c1523=d2315,
c1524=d2415, c1525=d2515, c1526=d2615, c1527=d2715, c1528=d2815, c1529=d2915,
c1530=d3015, c1531=d3115, c1532=d3215, c1533=d3315, c1534=d3415, c1535=d3515,
c1536=d3615, c1537=d3715, c1538=d3815, c1539=d3915, c1540=d4015, c1541=d4115,
c1542=d4215, c1543=d4315, c1544=d4415, c1545=d4515, c1546=d4615, c1547=d4715,
c1548=d4815, c1549=d4915, c1550=d5015, c1551=d5115, c1552=d5215, c1553=d5315,
c1554=d5415, c1555=d5515, c1556=d5615, c1557=d5715, c1558=d5815, c1559=d5915,
c1560=d6015, c1561=d6115, c1562=d6215, c1563=d6315, c1600=d0016, c1601=d0116,
c1602=d0216, c1603=d0316, c1604=d0416, c1605=d0516, c1606=d0616, c1607=d0716,
c1608=d0816, c1609=d0916, c1610=d1016, c1611=d1116, c1612=d1216, c1613=d1316,
c1614=d1416, c1615=d1516, c1616=d1616, c1617=d1716, c1618=d1816, c1619=d1916,
c1620=d2016, c1621=d2116, c1622=d2216, c1623=d2316, c1624=d2416, c1625=d2516,
c1626=d2616, c1627=d2716, c1628=d2816, c1629=d2916, c1630=d3016, c1631=d3116,
c1632=d3216, c1633=d3316, c1634=d3416, c1635=d3516, c1636=d3616, c1637=d3716,
c1638=d3816, c1639=d3916, c1640=d4016, c1641=d4116, c1642=d4216, c1643=d4316,
c1644=d4416, c1645=d4516, c1646=d4616, c1647=d4716, c1648=d4816, c1649=d4916,
c1650=d5016, c1651=d5116, c1652=d5216, c1653=d5316, c1654=d5416, c1655=d5516,
c1656=d5616, c1657=d5716, c1658=d5816, c1659=d5916, c1660=d6016, c1661=d6116,
c1662=d6216, c1663=d6316, c1700=d0017, c1701=d0117, c1702=d0217, c1703=d0317,
c1704=d0417, c1705=d0517, c1706=d0617, c1707=d0717, c1708=d0817, c1709=d0917,
c1710=d1017, c1711=d1117, c1712=d1217, c1713=d1317, c1714=d1417, c1715=d1517,
c1716=d1617, c1717=d1717, c1718=d1817, c1719=d1917, c1720=d2017, c1721=d2117,
c1722=d2217, c1723=d2317, c1724=d2417, c1725=d2517, c1726=d2617, c1727=d2717,
c1728=d2817, c1729=d2917, c1730=d3017, c1731=d3117, c1732=d3217, c1733=d3317,
c1734=d3417, c1735=d3517, c1736=d3617, c1737=d3717, c1738=d3817, c1739=d3917,
c1740=d4017, c1741=d4117, c1742=d4217, c1743=d4317, c1744=d4417, c1745=d4517,
c1746=d4617, c1747=d4717, c1748=d4817, c1749=d4917, c1750=d5017, c1751=d5117,
c1752=d5217, c1753=d5317, c1754=d5417, c1755=d5517, c1756=d5617, c1757=d5717,
c1758=d5817, c1759=d5917, c1760=d6017, c1761=d6117, c1762=d6217, c1763=d6317,
c1800=d0018, c1801=d0118, c1802=d0218, c1803=d0318, c1804=d0418, c1805=d0518,
c1806=d0618, c1807=d0718, c1808=d0818, c1809=d0918, c1810=d1018, c1811=d1118,
c1812=d1218, c1813=d1318, c1814=d1418, c1815=d1518, c1816=d1618, c1817=d1718,
c1818=d1818, c1819=d1918, c1820=d2018, c1821=d2118, c1822=d2218, c1823=d2318,
c1824=d2418, c1825=d2518, c1826=d2618, c1827=d2718, c1828=d2818, c1829=d2918,
c1830=d3018, c1831=d3118, c1832=d3218, c1833=d3318, c1834=d3418, c1835=d3518,
c1836=d3618, c1837=d3718, c1838=d3818, c1839=d3918, c1840=d4018, c1841=d4118,
c1842=d4218, c1843=d4318, c1844=d4418, c1845=d4518, c1846=d4618, c1847=d4718,
c1848=d4818, c1849=d4918, c1850=d5018, c1851=d5118, c1852=d5218, c1853=d5318,
c1854=d5418, c1855=d5518, c1856=d5618, c1857=d5718, c1858=d5818, c1859=d5918,
c1860=d6018, c1861=d6118, c1862=d6218, c1863=d6318, c1900=d0019, c1901=d0119,
c1902=d0219, c1903=d0319, c1904=d0419, c1905=d0519, c1906=d0619, c1907=d0719,
c1908=d0819, c1909=d0919, c1910=d1019, c1911=d1119, c1912=d1219, c1913=d1319,
c1914=d1419, c1915=d1519, c1916=d1619, c1917=d1719, c1918=d1819, c1919=d1919,
c1920=d2019, c1921=d2119, c1922=d2219, c1923=d2319, c1924=d2419, c1925=d2519,
c1926=d2619, c1927=d2719, c1928=d2819, c1929=d2919, c1930=d3019, c1931=d3119,
c1932=d3219, c1933=d3319, c1934=d3419, c1935=d3519, c1936=d3619, c1937=d3719,
c1938=d3819, c1939=d3919, c1940=d4019, c1941=d4119, c1942=d4219, c1943=d4319,
c1944=d4419, c1945=d4519, c1946=d4619, c1947=d4719, c1948=d4819, c1949=d4919,
c1950=d5019, c1951=d5119, c1952=d5219, c1953=d5319, c1954=d5419, c1955=d5519,
c1956=d5619, c1957=d5719, c1958=d5819, c1959=d5919, c1960=d6019, c1961=d6119,
c1962=d6219, c1963=d6319, c2000=d0020, c2001=d0120, c2002=d0220, c2003=d0320,
c2004=d0420, c2005=d0520, c2006=d0620, c2007=d0720, c2008=d0820, c2009=d0920,
c2010=d1020, c2011=d1120, c2012=d1220, c2013=d1320, c2014=d1420, c2015=d1520,
c2016=d1620, c2017=d1720, c2018=d1820, c2019=d1920, c2020=d2020, c2021=d2120,
c2022=d2220, c2023=d2320, c2024=d2420, c2025=d2520, c2026=d2620, c2027=d2720,
c2028=d2820, c2029=d2920, c2030=d3020, c2031=d3120, c2032=d3220, c2033=d3320,
c2034=d3420, c2035=d3520, c2036=d3620, c2037=d3720, c2038=d3820, c2039=d3920,
c2040=d4020, c2041=d4120, c2042=d4220, c2043=d4320, c2044=d4420, c2045=d4520,
c2046=d4620, c2047=d4720, c2048=d4820, c2049=d4920, c2050=d5020, c2051=d5120,
c2052=d5220, c2053=d5320, c2054=d5420, c2055=d5520, c2056=d5620, c2057=d5720,
c2058=d5820, c2059=d5920, c2060=d6020, c2061=d6120, c2062=d6220, c2063=d6320,
c2100=d0021, c2101=d0121, c2102=d0221, c2103=d0321, c2104=d0421, c2105=d0521,
c2106=d0621, c2107=d0721, c2108=d0821, c2109=d0921, c2110=d1021, c2111=d1121,
c2112=d1221, c2113=d1321, c2114=d1421, c2115=d1521, c2116=d1621, c2117=d1721,
c2118=d1821, c2119=d1921, c2120=d2021, c2121=d2121, c2122=d2221, c2123=d2321,
c2124=d2421, c2125=d2521, c2126=d2621, c2127=d2721, c2128=d2821, c2129=d2921,
c2130=d3021, c2131=d3121, c2132=d3221, c2133=d3321, c2134=d3421, c2135=d3521,
c2136=d3621, c2137=d3721, c2138=d3821, c2139=d3921, c2140=d4021, c2141=d4121,
c2142=d4221, c2143=d4321, c2144=d4421, c2145=d4521, c2146=d4621, c2147=d4721,
c2148=d4821, c2149=d4921, c2150=d5021, c2151=d5121, c2152=d5221, c2153=d5321,
c2154=d5421, c2155=d5521, c2156=d5621, c2157=d5721, c2158=d5821, c2159=d5921,
c2160=d6021, c2161=d6121, c2162=d6221, c2163=d6321, c2200=d0022, c2201=d0122,
c2202=d0222, c2203=d0322, c2204=d0422, c2205=d0522, c2206=d0622, c2207=d0722,
c2208=d0822, c2209=d0922, c2210=d1022, c2211=d1122, c2212=d1222, c2213=d1322,
c2214=d1422, c2215=d1522, c2216=d1622, c2217=d1722, c2218=d1822, c2219=d1922,
c2220=d2022, c2221=d2122, c2222=d2222, c2223=d2322, c2224=d2422, c2225=d2522,
c2226=d2622, c2227=d2722, c2228=d2822, c2229=d2922, c2230=d3022, c2231=d3122,
c2232=d3222, c2233=d3322, c2234=d3422, c2235=d3522, c2236=d3622, c2237=d3722,
c2238=d3822, c2239=d3922, c2240=d4022, c2241=d4122, c2242=d4222, c2243=d4322,
c2244=d4422, c2245=d4522, c2246=d4622, c2247=d4722, c2248=d4822, c2249=d4922,
c2250=d5022, c2251=d5122, c2252=d5222, c2253=d5322, c2254=d5422, c2255=d5522,
c2256=d5622, c2257=d5722, c2258=d5822, c2259=d5922, c2260=d6022, c2261=d6122,
c2262=d6222, c2263=d6322, c2300=d0023, c2301=d0123, c2302=d0223, c2303=d0323,
c2304=d0423, c2305=d0523, c2306=d0623, c2307=d0723, c2308=d0823, c2309=d0923,
c2310=d1023, c2311=d1123, c2312=d1223, c2313=d1323, c2314=d1423, c2315=d1523,
c2316=d1623, c2317=d1723, c2318=d1823, c2319=d1923, c2320=d2023, c2321=d2123,
c2322=d2223, c2323=d2323, c2324=d2423, c2325=d2523, c2326=d2623, c2327=d2723,
c2328=d2823, c2329=d2923, c2330=d3023, c2331=d3123, c2332=d3223, c2333=d3323,
c2334=d3423, c2335=d3523, c2336=d3623, c2337=d3723, c2338=d3823, c2339=d3923,
c2340=d4023, c2341=d4123, c2342=d4223, c2343=d4323, c2344=d4423, c2345=d4523,
c2346=d4623, c2347=d4723, c2348=d4823, c2349=d4923, c2350=d5023, c2351=d5123,
c2352=d5223, c2353=d5323, c2354=d5423, c2355=d5523, c2356=d5623, c2357=d5723,
c2358=d5823, c2359=d5923, c2360=d6023, c2361=d6123, c2362=d6223, c2363=d6323,
c2400=d0024, c2401=d0124, c2402=d0224, c2403=d0324, c2404=d0424, c2405=d0524,
c2406=d0624, c2407=d0724, c2408=d0824, c2409=d0924, c2410=d1024, c2411=d1124,
c2412=d1224, c2413=d1324, c2414=d1424, c2415=d1524, c2416=d1624, c2417=d1724,
c2418=d1824, c2419=d1924, c2420=d2024, c2421=d2124, c2422=d2224, c2423=d2324,
c2424=d2424, c2425=d2524, c2426=d2624, c2427=d2724, c2428=d2824, c2429=d2924,
c2430=d3024, c2431=d3124, c2432=d3224, c2433=d3324, c2434=d3424, c2435=d3524,
c2436=d3624, c2437=d3724, c2438=d3824, c2439=d3924, c2440=d4024, c2441=d4124,
c2442=d4224, c2443=d4324, c2444=d4424, c2445=d4524, c2446=d4624, c2447=d4724,
c2448=d4824, c2449=d4924, c2450=d5024, c2451=d5124, c2452=d5224, c2453=d5324,
c2454=d5424, c2455=d5524, c2456=d5624, c2457=d5724, c2458=d5824, c2459=d5924,
c2460=d6024, c2461=d6124, c2462=d6224, c2463=d6324, c2500=d0025, c2501=d0125,
c2502=d0225, c2503=d0325, c2504=d0425, c2505=d0525, c2506=d0625, c2507=d0725,
c2508=d0825, c2509=d0925, c2510=d1025, c2511=d1125, c2512=d1225, c2513=d1325,
c2514=d1425, c2515=d1525, c2516=d1625, c2517=d1725, c2518=d1825, c2519=d1925,
c2520=d2025, c2521=d2125, c2522=d2225, c2523=d2325, c2524=d2425, c2525=d2525,
c2526=d2625, c2527=d2725, c2528=d2825, c2529=d2925, c2530=d3025, c2531=d3125,
c2532=d3225, c2533=d3325, c2534=d3425, c2535=d3525, c2536=d3625, c2537=d3725,
c2538=d3825, c2539=d3925, c2540=d4025, c2541=d4125, c2542=d4225, c2543=d4325,
c2544=d4425, c2545=d4525, c2546=d4625, c2547=d4725, c2548=d4825, c2549=d4925,
c2550=d5025, c2551=d5125, c2552=d5225, c2553=d5325, c2554=d5425, c2555=d5525,
c2556=d5625, c2557=d5725, c2558=d5825, c2559=d5925, c2560=d6025, c2561=d6125,
c2562=d6225, c2563=d6325, c2600=d0026, c2601=d0126, c2602=d0226, c2603=d0326,
c2604=d0426, c2605=d0526, c2606=d0626, c2607=d0726, c2608=d0826, c2609=d0926,
c2610=d1026, c2611=d1126, c2612=d1226, c2613=d1326, c2614=d1426, c2615=d1526,
c2616=d1626, c2617=d1726, c2618=d1826, c2619=d1926, c2620=d2026, c2621=d2126,
c2622=d2226, c2623=d2326, c2624=d2426, c2625=d2526, c2626=d2626, c2627=d2726,
c2628=d2826, c2629=d2926, c2630=d3026, c2631=d3126, c2632=d3226, c2633=d3326,
c2634=d3426, c2635=d3526, c2636=d3626, c2637=d3726, c2638=d3826, c2639=d3926,
c2640=d4026, c2641=d4126, c2642=d4226, c2643=d4326, c2644=d4426, c2645=d4526,
c2646=d4626, c2647=d4726, c2648=d4826, c2649=d4926, c2650=d5026, c2651=d5126,
c2652=d5226, c2653=d5326, c2654=d5426, c2655=d5526, c2656=d5626, c2657=d5726,
c2658=d5826, c2659=d5926, c2660=d6026, c2661=d6126, c2662=d6226, c2663=d6326,
c2700=d0027, c2701=d0127, c2702=d0227, c2703=d0327, c2704=d0427, c2705=d0527,
c2706=d0627, c2707=d0727, c2708=d0827, c2709=d0927, c2710=d1027, c2711=d1127,
c2712=d1227, c2713=d1327, c2714=d1427, c2715=d1527, c2716=d1627, c2717=d1727,
c2718=d1827, c2719=d1927, c2720=d2027, c2721=d2127, c2722=d2227, c2723=d2327,
c2724=d2427, c2725=d2527, c2726=d2627, c2727=d2727, c2728=d2827, c2729=d2927,
c2730=d3027, c2731=d3127, c2732=d3227, c2733=d3327, c2734=d3427, c2735=d3527,
c2736=d3627, c2737=d3727, c2738=d3827, c2739=d3927, c2740=d4027, c2741=d4127,
c2742=d4227, c2743=d4327, c2744=d4427, c2745=d4527, c2746=d4627, c2747=d4727,
c2748=d4827, c2749=d4927, c2750=d5027, c2751=d5127, c2752=d5227, c2753=d5327,
c2754=d5427, c2755=d5527, c2756=d5627, c2757=d5727, c2758=d5827, c2759=d5927,
c2760=d6027, c2761=d6127, c2762=d6227, c2763=d6327, c2800=d0028, c2801=d0128,
c2802=d0228, c2803=d0328, c2804=d0428, c2805=d0528, c2806=d0628, c2807=d0728,
c2808=d0828, c2809=d0928, c2810=d1028, c2811=d1128, c2812=d1228, c2813=d1328,
c2814=d1428, c2815=d1528, c2816=d1628, c2817=d1728, c2818=d1828, c2819=d1928,
c2820=d2028, c2821=d2128, c2822=d2228, c2823=d2328, c2824=d2428, c2825=d2528,
c2826=d2628, c2827=d2728, c2828=d2828, c2829=d2928, c2830=d3028, c2831=d3128,
c2832=d3228, c2833=d3328, c2834=d3428, c2835=d3528, c2836=d3628, c2837=d3728,
c2838=d3828, c2839=d3928, c2840=d4028, c2841=d4128, c2842=d4228, c2843=d4328,
c2844=d4428, c2845=d4528, c2846=d4628, c2847=d4728, c2848=d4828, c2849=d4928,
c2850=d5028, c2851=d5128, c2852=d5228, c2853=d5328, c2854=d5428, c2855=d5528,
c2856=d5628, c2857=d5728, c2858=d5828, c2859=d5928, c2860=d6028, c2861=d6128,
c2862=d6228, c2863=d6328, c2900=d0029, c2901=d0129, c2902=d0229, c2903=d0329,
c2904=d0429, c2905=d0529, c2906=d0629, c2907=d0729, c2908=d0829, c2909=d0929,
c2910=d1029, c2911=d1129, c2912=d1229, c2913=d1329, c2914=d1429, c2915=d1529,
c2916=d1629, c2917=d1729, c2918=d1829, c2919=d1929, c2920=d2029, c2921=d2129,
c2922=d2229, c2923=d2329, c2924=d2429, c2925=d2529, c2926=d2629, c2927=d2729,
c2928=d2829, c2929=d2929, c2930=d3029, c2931=d3129, c2932=d3229, c2933=d3329,
c2934=d3429, c2935=d3529, c2936=d3629, c2937=d3729, c2938=d3829, c2939=d3929,
c2940=d4029, c2941=d4129, c2942=d4229, c2943=d4329, c2944=d4429, c2945=d4529,
c2946=d4629, c2947=d4729, c2948=d4829, c2949=d4929, c2950=d5029, c2951=d5129,
c2952=d5229, c2953=d5329, c2954=d5429, c2955=d5529, c2956=d5629, c2957=d5729,
c2958=d5829, c2959=d5929, c2960=d6029, c2961=d6129, c2962=d6229, c2963=d6329,
c3000=d0030, c3001=d0130, c3002=d0230, c3003=d0330, c3004=d0430, c3005=d0530,
c3006=d0630, c3007=d0730, c3008=d0830, c3009=d0930, c3010=d1030, c3011=d1130,
c3012=d1230, c3013=d1330, c3014=d1430, c3015=d1530, c3016=d1630, c3017=d1730,
c3018=d1830, c3019=d1930, c3020=d2030, c3021=d2130, c3022=d2230, c3023=d2330,
c3024=d2430, c3025=d2530, c3026=d2630, c3027=d2730, c3028=d2830, c3029=d2930,
c3030=d3030, c3031=d3130, c3032=d3230, c3033=d3330, c3034=d3430, c3035=d3530,
c3036=d3630, c3037=d3730, c3038=d3830, c3039=d3930, c3040=d4030, c3041=d4130,
c3042=d4230, c3043=d4330, c3044=d4430, c3045=d4530, c3046=d4630, c3047=d4730,
c3048=d4830, c3049=d4930, c3050=d5030, c3051=d5130, c3052=d5230, c3053=d5330,
c3054=d5430, c3055=d5530, c3056=d5630, c3057=d5730, c3058=d5830, c3059=d5930,
c3060=d6030, c3061=d6130, c3062=d6230, c3063=d6330, c3100=d0031, c3101=d0131,
c3102=d0231, c3103=d0331, c3104=d0431, c3105=d0531, c3106=d0631, c3107=d0731,
c3108=d0831, c3109=d0931, c3110=d1031, c3111=d1131, c3112=d1231, c3113=d1331,
c3114=d1431, c3115=d1531, c3116=d1631, c3117=d1731, c3118=d1831, c3119=d1931,
c3120=d2031, c3121=d2131, c3122=d2231, c3123=d2331, c3124=d2431, c3125=d2531,
c3126=d2631, c3127=d2731, c3128=d2831, c3129=d2931, c3130=d3031, c3131=d3131,
c3132=d3231, c3133=d3331, c3134=d3431, c3135=d3531, c3136=d3631, c3137=d3731,
c3138=d3831, c3139=d3931, c3140=d4031, c3141=d4131, c3142=d4231, c3143=d4331,
c3144=d4431, c3145=d4531, c3146=d4631, c3147=d4731, c3148=d4831, c3149=d4931,
c3150=d5031, c3151=d5131, c3152=d5231, c3153=d5331, c3154=d5431, c3155=d5531,
c3156=d5631, c3157=d5731, c3158=d5831, c3159=d5931, c3160=d6031, c3161=d6131,
c3162=d6231, c3163=d6331, c3200=d0032, c3201=d0132, c3202=d0232, c3203=d0332,
c3204=d0432, c3205=d0532, c3206=d0632, c3207=d0732, c3208=d0832, c3209=d0932,
c3210=d1032, c3211=d1132, c3212=d1232, c3213=d1332, c3214=d1432, c3215=d1532,
c3216=d1632, c3217=d1732, c3218=d1832, c3219=d1932, c3220=d2032, c3221=d2132,
c3222=d2232, c3223=d2332, c3224=d2432, c3225=d2532, c3226=d2632, c3227=d2732,
c3228=d2832, c3229=d2932, c3230=d3032, c3231=d3132, c3232=d3232, c3233=d3332,
c3234=d3432, c3235=d3532, c3236=d3632, c3237=d3732, c3238=d3832, c3239=d3932,
c3240=d4032, c3241=d4132, c3242=d4232, c3243=d4332, c3244=d4432, c3245=d4532,
c3246=d4632, c3247=d4732, c3248=d4832, c3249=d4932, c3250=d5032, c3251=d5132,
c3252=d5232, c3253=d5332, c3254=d5432, c3255=d5532, c3256=d5632, c3257=d5732,
c3258=d5832, c3259=d5932, c3260=d6032, c3261=d6132, c3262=d6232, c3263=d6332,
c3300=d0033, c3301=d0133, c3302=d0233, c3303=d0333, c3304=d0433, c3305=d0533,
c3306=d0633, c3307=d0733, c3308=d0833, c3309=d0933, c3310=d1033, c3311=d1133,
c3312=d1233, c3313=d1333, c3314=d1433, c3315=d1533, c3316=d1633, c3317=d1733,
c3318=d1833, c3319=d1933, c3320=d2033, c3321=d2133, c3322=d2233, c3323=d2333,
c3324=d2433, c3325=d2533, c3326=d2633, c3327=d2733, c3328=d2833, c3329=d2933,
c3330=d3033, c3331=d3133, c3332=d3233, c3333=d3333, c3334=d3433, c3335=d3533,
c3336=d3633, c3337=d3733, c3338=d3833, c3339=d3933, c3340=d4033, c3341=d4133,
c3342=d4233, c3343=d4333, c3344=d4433, c3345=d4533, c3346=d4633, c3347=d4733,
c3348=d4833, c3349=d4933, c3350=d5033, c3351=d5133, c3352=d5233, c3353=d5333,
c3354=d5433, c3355=d5533, c3356=d5633, c3357=d5733, c3358=d5833, c3359=d5933,
c3360=d6033, c3361=d6133, c3362=d6233, c3363=d6333, c3400=d0034, c3401=d0134,
c3402=d0234, c3403=d0334, c3404=d0434, c3405=d0534, c3406=d0634, c3407=d0734,
c3408=d0834, c3409=d0934, c3410=d1034, c3411=d1134, c3412=d1234, c3413=d1334,
c3414=d1434, c3415=d1534, c3416=d1634, c3417=d1734, c3418=d1834, c3419=d1934,
c3420=d2034, c3421=d2134, c3422=d2234, c3423=d2334, c3424=d2434, c3425=d2534,
c3426=d2634, c3427=d2734, c3428=d2834, c3429=d2934, c3430=d3034, c3431=d3134,
c3432=d3234, c3433=d3334, c3434=d3434, c3435=d3534, c3436=d3634, c3437=d3734,
c3438=d3834, c3439=d3934, c3440=d4034, c3441=d4134, c3442=d4234, c3443=d4334,
c3444=d4434, c3445=d4534, c3446=d4634, c3447=d4734, c3448=d4834, c3449=d4934,
c3450=d5034, c3451=d5134, c3452=d5234, c3453=d5334, c3454=d5434, c3455=d5534,
c3456=d5634, c3457=d5734, c3458=d5834, c3459=d5934, c3460=d6034, c3461=d6134,
c3462=d6234, c3463=d6334, c3500=d0035, c3501=d0135, c3502=d0235, c3503=d0335,
c3504=d0435, c3505=d0535, c3506=d0635, c3507=d0735, c3508=d0835, c3509=d0935,
c3510=d1035, c3511=d1135, c3512=d1235, c3513=d1335, c3514=d1435, c3515=d1535,
c3516=d1635, c3517=d1735, c3518=d1835, c3519=d1935, c3520=d2035, c3521=d2135,
c3522=d2235, c3523=d2335, c3524=d2435, c3525=d2535, c3526=d2635, c3527=d2735,
c3528=d2835, c3529=d2935, c3530=d3035, c3531=d3135, c3532=d3235, c3533=d3335,
c3534=d3435, c3535=d3535, c3536=d3635, c3537=d3735, c3538=d3835, c3539=d3935,
c3540=d4035, c3541=d4135, c3542=d4235, c3543=d4335, c3544=d4435, c3545=d4535,
c3546=d4635, c3547=d4735, c3548=d4835, c3549=d4935, c3550=d5035, c3551=d5135,
c3552=d5235, c3553=d5335, c3554=d5435, c3555=d5535, c3556=d5635, c3557=d5735,
c3558=d5835, c3559=d5935, c3560=d6035, c3561=d6135, c3562=d6235, c3563=d6335,
c3600=d0036, c3601=d0136, c3602=d0236, c3603=d0336, c3604=d0436, c3605=d0536,
c3606=d0636, c3607=d0736, c3608=d0836, c3609=d0936, c3610=d1036, c3611=d1136,
c3612=d1236, c3613=d1336, c3614=d1436, c3615=d1536, c3616=d1636, c3617=d1736,
c3618=d1836, c3619=d1936, c3620=d2036, c3621=d2136, c3622=d2236, c3623=d2336,
c3624=d2436, c3625=d2536, c3626=d2636, c3627=d2736, c3628=d2836, c3629=d2936,
c3630=d3036, c3631=d3136, c3632=d3236, c3633=d3336, c3634=d3436, c3635=d3536,
c3636=d3636, c3637=d3736, c3638=d3836, c3639=d3936, c3640=d4036, c3641=d4136,
c3642=d4236, c3643=d4336, c3644=d4436, c3645=d4536, c3646=d4636, c3647=d4736,
c3648=d4836, c3649=d4936, c3650=d5036, c3651=d5136, c3652=d5236, c3653=d5336,
c3654=d5436, c3655=d5536, c3656=d5636, c3657=d5736, c3658=d5836, c3659=d5936,
c3660=d6036, c3661=d6136, c3662=d6236, c3663=d6336, c3700=d0037, c3701=d0137,
c3702=d0237, c3703=d0337, c3704=d0437, c3705=d0537, c3706=d0637, c3707=d0737,
c3708=d0837, c3709=d0937, c3710=d1037, c3711=d1137, c3712=d1237, c3713=d1337,
c3714=d1437, c3715=d1537, c3716=d1637, c3717=d1737, c3718=d1837, c3719=d1937,
c3720=d2037, c3721=d2137, c3722=d2237, c3723=d2337, c3724=d2437, c3725=d2537,
c3726=d2637, c3727=d2737, c3728=d2837, c3729=d2937, c3730=d3037, c3731=d3137,
c3732=d3237, c3733=d3337, c3734=d3437, c3735=d3537, c3736=d3637, c3737=d3737,
c3738=d3837, c3739=d3937, c3740=d4037, c3741=d4137, c3742=d4237, c3743=d4337,
c3744=d4437, c3745=d4537, c3746=d4637, c3747=d4737, c3748=d4837, c3749=d4937,
c3750=d5037, c3751=d5137, c3752=d5237, c3753=d5337, c3754=d5437, c3755=d5537,
c3756=d5637, c3757=d5737, c3758=d5837, c3759=d5937, c3760=d6037, c3761=d6137,
c3762=d6237, c3763=d6337, c3800=d0038, c3801=d0138, c3802=d0238, c3803=d0338,
c3804=d0438, c3805=d0538, c3806=d0638, c3807=d0738, c3808=d0838, c3809=d0938,
c3810=d1038, c3811=d1138, c3812=d1238, c3813=d1338, c3814=d1438, c3815=d1538,
c3816=d1638, c3817=d1738, c3818=d1838, c3819=d1938, c3820=d2038, c3821=d2138,
c3822=d2238, c3823=d2338, c3824=d2438, c3825=d2538, c3826=d2638, c3827=d2738,
c3828=d2838, c3829=d2938, c3830=d3038, c3831=d3138, c3832=d3238, c3833=d3338,
c3834=d3438, c3835=d3538, c3836=d3638, c3837=d3738, c3838=d3838, c3839=d3938,
c3840=d4038, c3841=d4138, c3842=d4238, c3843=d4338, c3844=d4438, c3845=d4538,
c3846=d4638, c3847=d4738, c3848=d4838, c3849=d4938, c3850=d5038, c3851=d5138,
c3852=d5238, c3853=d5338, c3854=d5438, c3855=d5538, c3856=d5638, c3857=d5738,
c3858=d5838, c3859=d5938, c3860=d6038, c3861=d6138, c3862=d6238, c3863=d6338,
c3900=d0039, c3901=d0139, c3902=d0239, c3903=d0339, c3904=d0439, c3905=d0539,
c3906=d0639, c3907=d0739, c3908=d0839, c3909=d0939, c3910=d1039, c3911=d1139,
c3912=d1239, c3913=d1339, c3914=d1439, c3915=d1539, c3916=d1639, c3917=d1739,
c3918=d1839, c3919=d1939, c3920=d2039, c3921=d2139, c3922=d2239, c3923=d2339,
c3924=d2439, c3925=d2539, c3926=d2639, c3927=d2739, c3928=d2839, c3929=d2939,
c3930=d3039, c3931=d3139, c3932=d3239, c3933=d3339, c3934=d3439, c3935=d3539,
c3936=d3639, c3937=d3739, c3938=d3839, c3939=d3939, c3940=d4039, c3941=d4139,
c3942=d4239, c3943=d4339, c3944=d4439, c3945=d4539, c3946=d4639, c3947=d4739,
c3948=d4839, c3949=d4939, c3950=d5039, c3951=d5139, c3952=d5239, c3953=d5339,
c3954=d5439, c3955=d5539, c3956=d5639, c3957=d5739, c3958=d5839, c3959=d5939,
c3960=d6039, c3961=d6139, c3962=d6239, c3963=d6339, c4000=d0040, c4001=d0140,
c4002=d0240, c4003=d0340, c4004=d0440, c4005=d0540, c4006=d0640, c4007=d0740,
c4008=d0840, c4009=d0940, c4010=d1040, c4011=d1140, c4012=d1240, c4013=d1340,
c4014=d1440, c4015=d1540, c4016=d1640, c4017=d1740, c4018=d1840, c4019=d1940,
c4020=d2040, c4021=d2140, c4022=d2240, c4023=d2340, c4024=d2440, c4025=d2540,
c4026=d2640, c4027=d2740, c4028=d2840, c4029=d2940, c4030=d3040, c4031=d3140,
c4032=d3240, c4033=d3340, c4034=d3440, c4035=d3540, c4036=d3640, c4037=d3740,
c4038=d3840, c4039=d3940, c4040=d4040, c4041=d4140, c4042=d4240, c4043=d4340,
c4044=d4440, c4045=d4540, c4046=d4640, c4047=d4740, c4048=d4840, c4049=d4940,
c4050=d5040, c4051=d5140, c4052=d5240, c4053=d5340, c4054=d5440, c4055=d5540,
c4056=d5640, c4057=d5740, c4058=d5840, c4059=d5940, c4060=d6040, c4061=d6140,
c4062=d6240, c4063=d6340, c4100=d0041, c4101=d0141, c4102=d0241, c4103=d0341,
c4104=d0441, c4105=d0541, c4106=d0641, c4107=d0741, c4108=d0841, c4109=d0941,
c4110=d1041, c4111=d1141, c4112=d1241, c4113=d1341, c4114=d1441, c4115=d1541,
c4116=d1641, c4117=d1741, c4118=d1841, c4119=d1941, c4120=d2041, c4121=d2141,
c4122=d2241, c4123=d2341, c4124=d2441, c4125=d2541, c4126=d2641, c4127=d2741,
c4128=d2841, c4129=d2941, c4130=d3041, c4131=d3141, c4132=d3241, c4133=d3341,
c4134=d3441, c4135=d3541, c4136=d3641, c4137=d3741, c4138=d3841, c4139=d3941,
c4140=d4041, c4141=d4141, c4142=d4241, c4143=d4341, c4144=d4441, c4145=d4541,
c4146=d4641, c4147=d4741, c4148=d4841, c4149=d4941, c4150=d5041, c4151=d5141,
c4152=d5241, c4153=d5341, c4154=d5441, c4155=d5541, c4156=d5641, c4157=d5741,
c4158=d5841, c4159=d5941, c4160=d6041, c4161=d6141, c4162=d6241, c4163=d6341,
c4200=d0042, c4201=d0142, c4202=d0242, c4203=d0342, c4204=d0442, c4205=d0542,
c4206=d0642, c4207=d0742, c4208=d0842, c4209=d0942, c4210=d1042, c4211=d1142,
c4212=d1242, c4213=d1342, c4214=d1442, c4215=d1542, c4216=d1642, c4217=d1742,
c4218=d1842, c4219=d1942, c4220=d2042, c4221=d2142, c4222=d2242, c4223=d2342,
c4224=d2442, c4225=d2542, c4226=d2642, c4227=d2742, c4228=d2842, c4229=d2942,
c4230=d3042, c4231=d3142, c4232=d3242, c4233=d3342, c4234=d3442, c4235=d3542,
c4236=d3642, c4237=d3742, c4238=d3842, c4239=d3942, c4240=d4042, c4241=d4142,
c4242=d4242, c4243=d4342, c4244=d4442, c4245=d4542, c4246=d4642, c4247=d4742,
c4248=d4842, c4249=d4942, c4250=d5042, c4251=d5142, c4252=d5242, c4253=d5342,
c4254=d5442, c4255=d5542, c4256=d5642, c4257=d5742, c4258=d5842, c4259=d5942,
c4260=d6042, c4261=d6142, c4262=d6242, c4263=d6342, c4300=d0043, c4301=d0143,
c4302=d0243, c4303=d0343, c4304=d0443, c4305=d0543, c4306=d0643, c4307=d0743,
c4308=d0843, c4309=d0943, c4310=d1043, c4311=d1143, c4312=d1243, c4313=d1343,
c4314=d1443, c4315=d1543, c4316=d1643, c4317=d1743, c4318=d1843, c4319=d1943,
c4320=d2043, c4321=d2143, c4322=d2243, c4323=d2343, c4324=d2443, c4325=d2543,
c4326=d2643, c4327=d2743, c4328=d2843, c4329=d2943, c4330=d3043, c4331=d3143,
c4332=d3243, c4333=d3343, c4334=d3443, c4335=d3543, c4336=d3643, c4337=d3743,
c4338=d3843, c4339=d3943, c4340=d4043, c4341=d4143, c4342=d4243, c4343=d4343,
c4344=d4443, c4345=d4543, c4346=d4643, c4347=d4743, c4348=d4843, c4349=d4943,
c4350=d5043, c4351=d5143, c4352=d5243, c4353=d5343, c4354=d5443, c4355=d5543,
c4356=d5643, c4357=d5743, c4358=d5843, c4359=d5943, c4360=d6043, c4361=d6143,
c4362=d6243, c4363=d6343, c4400=d0044, c4401=d0144, c4402=d0244, c4403=d0344,
c4404=d0444, c4405=d0544, c4406=d0644, c4407=d0744, c4408=d0844, c4409=d0944,
c4410=d1044, c4411=d1144, c4412=d1244, c4413=d1344, c4414=d1444, c4415=d1544,
c4416=d1644, c4417=d1744, c4418=d1844, c4419=d1944, c4420=d2044, c4421=d2144,
c4422=d2244, c4423=d2344, c4424=d2444, c4425=d2544, c4426=d2644, c4427=d2744,
c4428=d2844, c4429=d2944, c4430=d3044, c4431=d3144, c4432=d3244, c4433=d3344,
c4434=d3444, c4435=d3544, c4436=d3644, c4437=d3744, c4438=d3844, c4439=d3944,
c4440=d4044, c4441=d4144, c4442=d4244, c4443=d4344, c4444=d4444, c4445=d4544,
c4446=d4644, c4447=d4744, c4448=d4844, c4449=d4944, c4450=d5044, c4451=d5144,
c4452=d5244, c4453=d5344, c4454=d5444, c4455=d5544, c4456=d5644, c4457=d5744,
c4458=d5844, c4459=d5944, c4460=d6044, c4461=d6144, c4462=d6244, c4463=d6344,
c4500=d0045, c4501=d0145, c4502=d0245, c4503=d0345, c4504=d0445, c4505=d0545,
c4506=d0645, c4507=d0745, c4508=d0845, c4509=d0945, c4510=d1045, c4511=d1145,
c4512=d1245, c4513=d1345, c4514=d1445, c4515=d1545, c4516=d1645, c4517=d1745,
c4518=d1845, c4519=d1945, c4520=d2045, c4521=d2145, c4522=d2245, c4523=d2345,
c4524=d2445, c4525=d2545, c4526=d2645, c4527=d2745, c4528=d2845, c4529=d2945,
c4530=d3045, c4531=d3145, c4532=d3245, c4533=d3345, c4534=d3445, c4535=d3545,
c4536=d3645, c4537=d3745, c4538=d3845, c4539=d3945, c4540=d4045, c4541=d4145,
c4542=d4245, c4543=d4345, c4544=d4445, c4545=d4545, c4546=d4645, c4547=d4745,
c4548=d4845, c4549=d4945, c4550=d5045, c4551=d5145, c4552=d5245, c4553=d5345,
c4554=d5445, c4555=d5545, c4556=d5645, c4557=d5745, c4558=d5845, c4559=d5945,
c4560=d6045, c4561=d6145, c4562=d6245, c4563=d6345, c4600=d0046, c4601=d0146,
c4602=d0246, c4603=d0346, c4604=d0446, c4605=d0546, c4606=d0646, c4607=d0746,
c4608=d0846, c4609=d0946, c4610=d1046, c4611=d1146, c4612=d1246, c4613=d1346,
c4614=d1446, c4615=d1546, c4616=d1646, c4617=d1746, c4618=d1846, c4619=d1946,
c4620=d2046, c4621=d2146, c4622=d2246, c4623=d2346, c4624=d2446, c4625=d2546,
c4626=d2646, c4627=d2746, c4628=d2846, c4629=d2946, c4630=d3046, c4631=d3146,
c4632=d3246, c4633=d3346, c4634=d3446, c4635=d3546, c4636=d3646, c4637=d3746,
c4638=d3846, c4639=d3946, c4640=d4046, c4641=d4146, c4642=d4246, c4643=d4346,
c4644=d4446, c4645=d4546, c4646=d4646, c4647=d4746, c4648=d4846, c4649=d4946,
c4650=d5046, c4651=d5146, c4652=d5246, c4653=d5346, c4654=d5446, c4655=d5546,
c4656=d5646, c4657=d5746, c4658=d5846, c4659=d5946, c4660=d6046, c4661=d6146,
c4662=d6246, c4663=d6346, c4700=d0047, c4701=d0147, c4702=d0247, c4703=d0347,
c4704=d0447, c4705=d0547, c4706=d0647, c4707=d0747, c4708=d0847, c4709=d0947,
c4710=d1047, c4711=d1147, c4712=d1247, c4713=d1347, c4714=d1447, c4715=d1547,
c4716=d1647, c4717=d1747, c4718=d1847, c4719=d1947, c4720=d2047, c4721=d2147,
c4722=d2247, c4723=d2347, c4724=d2447, c4725=d2547, c4726=d2647, c4727=d2747,
c4728=d2847, c4729=d2947, c4730=d3047, c4731=d3147, c4732=d3247, c4733=d3347,
c4734=d3447, c4735=d3547, c4736=d3647, c4737=d3747, c4738=d3847, c4739=d3947,
c4740=d4047, c4741=d4147, c4742=d4247, c4743=d4347, c4744=d4447, c4745=d4547,
c4746=d4647, c4747=d4747, c4748=d4847, c4749=d4947, c4750=d5047, c4751=d5147,
c4752=d5247, c4753=d5347, c4754=d5447, c4755=d5547, c4756=d5647, c4757=d5747,
c4758=d5847, c4759=d5947, c4760=d6047, c4761=d6147, c4762=d6247, c4763=d6347,
c4800=d0048, c4801=d0148, c4802=d0248, c4803=d0348, c4804=d0448, c4805=d0548,
c4806=d0648, c4807=d0748, c4808=d0848, c4809=d0948, c4810=d1048, c4811=d1148,
c4812=d1248, c4813=d1348, c4814=d1448, c4815=d1548, c4816=d1648, c4817=d1748,
c4818=d1848, c4819=d1948, c4820=d2048, c4821=d2148, c4822=d2248, c4823=d2348,
c4824=d2448, c4825=d2548, c4826=d2648, c4827=d2748, c4828=d2848, c4829=d2948,
c4830=d3048, c4831=d3148, c4832=d3248, c4833=d3348, c4834=d3448, c4835=d3548,
c4836=d3648, c4837=d3748, c4838=d3848, c4839=d3948, c4840=d4048, c4841=d4148,
c4842=d4248, c4843=d4348, c4844=d4448, c4845=d4548, c4846=d4648, c4847=d4748,
c4848=d4848, c4849=d4948, c4850=d5048, c4851=d5148, c4852=d5248, c4853=d5348,
c4854=d5448, c4855=d5548, c4856=d5648, c4857=d5748, c4858=d5848, c4859=d5948,
c4860=d6048, c4861=d6148, c4862=d6248, c4863=d6348, c4900=d0049, c4901=d0149,
c4902=d0249, c4903=d0349, c4904=d0449, c4905=d0549, c4906=d0649, c4907=d0749,
c4908=d0849, c4909=d0949, c4910=d1049, c4911=d1149, c4912=d1249, c4913=d1349,
c4914=d1449, c4915=d1549, c4916=d1649, c4917=d1749, c4918=d1849, c4919=d1949,
c4920=d2049, c4921=d2149, c4922=d2249, c4923=d2349, c4924=d2449, c4925=d2549,
c4926=d2649, c4927=d2749, c4928=d2849, c4929=d2949, c4930=d3049, c4931=d3149,
c4932=d3249, c4933=d3349, c4934=d3449, c4935=d3549, c4936=d3649, c4937=d3749,
c4938=d3849, c4939=d3949, c4940=d4049, c4941=d4149, c4942=d4249, c4943=d4349,
c4944=d4449, c4945=d4549, c4946=d4649, c4947=d4749, c4948=d4849, c4949=d4949,
c4950=d5049, c4951=d5149, c4952=d5249, c4953=d5349, c4954=d5449, c4955=d5549,
c4956=d5649, c4957=d5749, c4958=d5849, c4959=d5949, c4960=d6049, c4961=d6149,
c4962=d6249, c4963=d6349, c5000=d0050, c5001=d0150, c5002=d0250, c5003=d0350,
c5004=d0450, c5005=d0550, c5006=d0650, c5007=d0750, c5008=d0850, c5009=d0950,
c5010=d1050, c5011=d1150, c5012=d1250, c5013=d1350, c5014=d1450, c5015=d1550,
c5016=d1650, c5017=d1750, c5018=d1850, c5019=d1950, c5020=d2050, c5021=d2150,
c5022=d2250, c5023=d2350, c5024=d2450, c5025=d2550, c5026=d2650, c5027=d2750,
c5028=d2850, c5029=d2950, c5030=d3050, c5031=d3150, c5032=d3250, c5033=d3350,
c5034=d3450, c5035=d3550, c5036=d3650, c5037=d3750, c5038=d3850, c5039=d3950,
c5040=d4050, c5041=d4150, c5042=d4250, c5043=d4350, c5044=d4450, c5045=d4550,
c5046=d4650, c5047=d4750, c5048=d4850, c5049=d4950, c5050=d5050, c5051=d5150,
c5052=d5250, c5053=d5350, c5054=d5450, c5055=d5550, c5056=d5650, c5057=d5750,
c5058=d5850, c5059=d5950, c5060=d6050, c5061=d6150, c5062=d6250, c5063=d6350,
c5100=d0051, c5101=d0151, c5102=d0251, c5103=d0351, c5104=d0451, c5105=d0551,
c5106=d0651, c5107=d0751, c5108=d0851, c5109=d0951, c5110=d1051, c5111=d1151,
c5112=d1251, c5113=d1351, c5114=d1451, c5115=d1551, c5116=d1651, c5117=d1751,
c5118=d1851, c5119=d1951, c5120=d2051, c5121=d2151, c5122=d2251, c5123=d2351,
c5124=d2451, c5125=d2551, c5126=d2651, c5127=d2751, c5128=d2851, c5129=d2951,
c5130=d3051, c5131=d3151, c5132=d3251, c5133=d3351, c5134=d3451, c5135=d3551,
c5136=d3651, c5137=d3751, c5138=d3851, c5139=d3951, c5140=d4051, c5141=d4151,
c5142=d4251, c5143=d4351, c5144=d4451, c5145=d4551, c5146=d4651, c5147=d4751,
c5148=d4851, c5149=d4951, c5150=d5051, c5151=d5151, c5152=d5251, c5153=d5351,
c5154=d5451, c5155=d5551, c5156=d5651, c5157=d5751, c5158=d5851, c5159=d5951,
c5160=d6051, c5161=d6151, c5162=d6251, c5163=d6351, c5200=d0052, c5201=d0152,
c5202=d0252, c5203=d0352, c5204=d0452, c5205=d0552, c5206=d0652, c5207=d0752,
c5208=d0852, c5209=d0952, c5210=d1052, c5211=d1152, c5212=d1252, c5213=d1352,
c5214=d1452, c5215=d1552, c5216=d1652, c5217=d1752, c5218=d1852, c5219=d1952,
c5220=d2052, c5221=d2152, c5222=d2252, c5223=d2352, c5224=d2452, c5225=d2552,
c5226=d2652, c5227=d2752, c5228=d2852, c5229=d2952, c5230=d3052, c5231=d3152,
c5232=d3252, c5233=d3352, c5234=d3452, c5235=d3552, c5236=d3652, c5237=d3752,
c5238=d3852, c5239=d3952, c5240=d4052, c5241=d4152, c5242=d4252, c5243=d4352,
c5244=d4452, c5245=d4552, c5246=d4652, c5247=d4752, c5248=d4852, c5249=d4952,
c5250=d5052, c5251=d5152, c5252=d5252, c5253=d5352, c5254=d5452, c5255=d5552,
c5256=d5652, c5257=d5752, c5258=d5852, c5259=d5952, c5260=d6052, c5261=d6152,
c5262=d6252, c5263=d6352, c5300=d0053, c5301=d0153, c5302=d0253, c5303=d0353,
c5304=d0453, c5305=d0553, c5306=d0653, c5307=d0753, c5308=d0853, c5309=d0953,
c5310=d1053, c5311=d1153, c5312=d1253, c5313=d1353, c5314=d1453, c5315=d1553,
c5316=d1653, c5317=d1753, c5318=d1853, c5319=d1953, c5320=d2053, c5321=d2153,
c5322=d2253, c5323=d2353, c5324=d2453, c5325=d2553, c5326=d2653, c5327=d2753,
c5328=d2853, c5329=d2953, c5330=d3053, c5331=d3153, c5332=d3253, c5333=d3353,
c5334=d3453, c5335=d3553, c5336=d3653, c5337=d3753, c5338=d3853, c5339=d3953,
c5340=d4053, c5341=d4153, c5342=d4253, c5343=d4353, c5344=d4453, c5345=d4553,
c5346=d4653, c5347=d4753, c5348=d4853, c5349=d4953, c5350=d5053, c5351=d5153,
c5352=d5253, c5353=d5353, c5354=d5453, c5355=d5553, c5356=d5653, c5357=d5753,
c5358=d5853, c5359=d5953, c5360=d6053, c5361=d6153, c5362=d6253, c5363=d6353,
c5400=d0054, c5401=d0154, c5402=d0254, c5403=d0354, c5404=d0454, c5405=d0554,
c5406=d0654, c5407=d0754, c5408=d0854, c5409=d0954, c5410=d1054, c5411=d1154,
c5412=d1254, c5413=d1354, c5414=d1454, c5415=d1554, c5416=d1654, c5417=d1754,
c5418=d1854, c5419=d1954, c5420=d2054, c5421=d2154, c5422=d2254, c5423=d2354,
c5424=d2454, c5425=d2554, c5426=d2654, c5427=d2754, c5428=d2854, c5429=d2954,
c5430=d3054, c5431=d3154, c5432=d3254, c5433=d3354, c5434=d3454, c5435=d3554,
c5436=d3654, c5437=d3754, c5438=d3854, c5439=d3954, c5440=d4054, c5441=d4154,
c5442=d4254, c5443=d4354, c5444=d4454, c5445=d4554, c5446=d4654, c5447=d4754,
c5448=d4854, c5449=d4954, c5450=d5054, c5451=d5154, c5452=d5254, c5453=d5354,
c5454=d5454, c5455=d5554, c5456=d5654, c5457=d5754, c5458=d5854, c5459=d5954,
c5460=d6054, c5461=d6154, c5462=d6254, c5463=d6354, c5500=d0055, c5501=d0155,
c5502=d0255, c5503=d0355, c5504=d0455, c5505=d0555, c5506=d0655, c5507=d0755,
c5508=d0855, c5509=d0955, c5510=d1055, c5511=d1155, c5512=d1255, c5513=d1355,
c5514=d1455, c5515=d1555, c5516=d1655, c5517=d1755, c5518=d1855, c5519=d1955,
c5520=d2055, c5521=d2155, c5522=d2255, c5523=d2355, c5524=d2455, c5525=d2555,
c5526=d2655, c5527=d2755, c5528=d2855, c5529=d2955, c5530=d3055, c5531=d3155,
c5532=d3255, c5533=d3355, c5534=d3455, c5535=d3555, c5536=d3655, c5537=d3755,
c5538=d3855, c5539=d3955, c5540=d4055, c5541=d4155, c5542=d4255, c5543=d4355,
c5544=d4455, c5545=d4555, c5546=d4655, c5547=d4755, c5548=d4855, c5549=d4955,
c5550=d5055, c5551=d5155, c5552=d5255, c5553=d5355, c5554=d5455, c5555=d5555,
c5556=d5655, c5557=d5755, c5558=d5855, c5559=d5955, c5560=d6055, c5561=d6155,
c5562=d6255, c5563=d6355, c5600=d0056, c5601=d0156, c5602=d0256, c5603=d0356,
c5604=d0456, c5605=d0556, c5606=d0656, c5607=d0756, c5608=d0856, c5609=d0956,
c5610=d1056, c5611=d1156, c5612=d1256, c5613=d1356, c5614=d1456, c5615=d1556,
c5616=d1656, c5617=d1756, c5618=d1856, c5619=d1956, c5620=d2056, c5621=d2156,
c5622=d2256, c5623=d2356, c5624=d2456, c5625=d2556, c5626=d2656, c5627=d2756,
c5628=d2856, c5629=d2956, c5630=d3056, c5631=d3156, c5632=d3256, c5633=d3356,
c5634=d3456, c5635=d3556, c5636=d3656, c5637=d3756, c5638=d3856, c5639=d3956,
c5640=d4056, c5641=d4156, c5642=d4256, c5643=d4356, c5644=d4456, c5645=d4556,
c5646=d4656, c5647=d4756, c5648=d4856, c5649=d4956, c5650=d5056, c5651=d5156,
c5652=d5256, c5653=d5356, c5654=d5456, c5655=d5556, c5656=d5656, c5657=d5756,
c5658=d5856, c5659=d5956, c5660=d6056, c5661=d6156, c5662=d6256, c5663=d6356,
c5700=d0057, c5701=d0157, c5702=d0257, c5703=d0357, c5704=d0457, c5705=d0557,
c5706=d0657, c5707=d0757, c5708=d0857, c5709=d0957, c5710=d1057, c5711=d1157,
c5712=d1257, c5713=d1357, c5714=d1457, c5715=d1557, c5716=d1657, c5717=d1757,
c5718=d1857, c5719=d1957, c5720=d2057, c5721=d2157, c5722=d2257, c5723=d2357,
c5724=d2457, c5725=d2557, c5726=d2657, c5727=d2757, c5728=d2857, c5729=d2957,
c5730=d3057, c5731=d3157, c5732=d3257, c5733=d3357, c5734=d3457, c5735=d3557,
c5736=d3657, c5737=d3757, c5738=d3857, c5739=d3957, c5740=d4057, c5741=d4157,
c5742=d4257, c5743=d4357, c5744=d4457, c5745=d4557, c5746=d4657, c5747=d4757,
c5748=d4857, c5749=d4957, c5750=d5057, c5751=d5157, c5752=d5257, c5753=d5357,
c5754=d5457, c5755=d5557, c5756=d5657, c5757=d5757, c5758=d5857, c5759=d5957,
c5760=d6057, c5761=d6157, c5762=d6257, c5763=d6357, c5800=d0058, c5801=d0158,
c5802=d0258, c5803=d0358, c5804=d0458, c5805=d0558, c5806=d0658, c5807=d0758,
c5808=d0858, c5809=d0958, c5810=d1058, c5811=d1158, c5812=d1258, c5813=d1358,
c5814=d1458, c5815=d1558, c5816=d1658, c5817=d1758, c5818=d1858, c5819=d1958,
c5820=d2058, c5821=d2158, c5822=d2258, c5823=d2358, c5824=d2458, c5825=d2558,
c5826=d2658, c5827=d2758, c5828=d2858, c5829=d2958, c5830=d3058, c5831=d3158,
c5832=d3258, c5833=d3358, c5834=d3458, c5835=d3558, c5836=d3658, c5837=d3758,
c5838=d3858, c5839=d3958, c5840=d4058, c5841=d4158, c5842=d4258, c5843=d4358,
c5844=d4458, c5845=d4558, c5846=d4658, c5847=d4758, c5848=d4858, c5849=d4958,
c5850=d5058, c5851=d5158, c5852=d5258, c5853=d5358, c5854=d5458, c5855=d5558,
c5856=d5658, c5857=d5758, c5858=d5858, c5859=d5958, c5860=d6058, c5861=d6158,
c5862=d6258, c5863=d6358, c5900=d0059, c5901=d0159, c5902=d0259, c5903=d0359,
c5904=d0459, c5905=d0559, c5906=d0659, c5907=d0759, c5908=d0859, c5909=d0959,
c5910=d1059, c5911=d1159, c5912=d1259, c5913=d1359, c5914=d1459, c5915=d1559,
c5916=d1659, c5917=d1759, c5918=d1859, c5919=d1959, c5920=d2059, c5921=d2159,
c5922=d2259, c5923=d2359, c5924=d2459, c5925=d2559, c5926=d2659, c5927=d2759,
c5928=d2859, c5929=d2959, c5930=d3059, c5931=d3159, c5932=d3259, c5933=d3359,
c5934=d3459, c5935=d3559, c5936=d3659, c5937=d3759, c5938=d3859, c5939=d3959,
c5940=d4059, c5941=d4159, c5942=d4259, c5943=d4359, c5944=d4459, c5945=d4559,
c5946=d4659, c5947=d4759, c5948=d4859, c5949=d4959, c5950=d5059, c5951=d5159,
c5952=d5259, c5953=d5359, c5954=d5459, c5955=d5559, c5956=d5659, c5957=d5759,
c5958=d5859, c5959=d5959, c5960=d6059, c5961=d6159, c5962=d6259, c5963=d6359,
c6000=d0060, c6001=d0160, c6002=d0260, c6003=d0360, c6004=d0460, c6005=d0560,
c6006=d0660, c6007=d0760, c6008=d0860, c6009=d0960, c6010=d1060, c6011=d1160,
c6012=d1260, c6013=d1360, c6014=d1460, c6015=d1560, c6016=d1660, c6017=d1760,
c6018=d1860, c6019=d1960, c6020=d2060, c6021=d2160, c6022=d2260, c6023=d2360,
c6024=d2460, c6025=d2560, c6026=d2660, c6027=d2760, c6028=d2860, c6029=d2960,
c6030=d3060, c6031=d3160, c6032=d3260, c6033=d3360, c6034=d3460, c6035=d3560,
c6036=d3660, c6037=d3760, c6038=d3860, c6039=d3960, c6040=d4060, c6041=d4160,
c6042=d4260, c6043=d4360, c6044=d4460, c6045=d4560, c6046=d4660, c6047=d4760,
c6048=d4860, c6049=d4960, c6050=d5060, c6051=d5160, c6052=d5260, c6053=d5360,
c6054=d5460, c6055=d5560, c6056=d5660, c6057=d5760, c6058=d5860, c6059=d5960,
c6060=d6060, c6061=d6160, c6062=d6260, c6063=d6360, c6100=d0061, c6101=d0161,
c6102=d0261, c6103=d0361, c6104=d0461, c6105=d0561, c6106=d0661, c6107=d0761,
c6108=d0861, c6109=d0961, c6110=d1061, c6111=d1161, c6112=d1261, c6113=d1361,
c6114=d1461, c6115=d1561, c6116=d1661, c6117=d1761, c6118=d1861, c6119=d1961,
c6120=d2061, c6121=d2161, c6122=d2261, c6123=d2361, c6124=d2461, c6125=d2561,
c6126=d2661, c6127=d2761, c6128=d2861, c6129=d2961, c6130=d3061, c6131=d3161,
c6132=d3261, c6133=d3361, c6134=d3461, c6135=d3561, c6136=d3661, c6137=d3761,
c6138=d3861, c6139=d3961, c6140=d4061, c6141=d4161, c6142=d4261, c6143=d4361,
c6144=d4461, c6145=d4561, c6146=d4661, c6147=d4761, c6148=d4861, c6149=d4961,
c6150=d5061, c6151=d5161, c6152=d5261, c6153=d5361, c6154=d5461, c6155=d5561,
c6156=d5661, c6157=d5761, c6158=d5861, c6159=d5961, c6160=d6061, c6161=d6161,
c6162=d6261, c6163=d6361, c6200=d0062, c6201=d0162, c6202=d0262, c6203=d0362,
c6204=d0462, c6205=d0562, c6206=d0662, c6207=d0762, c6208=d0862, c6209=d0962,
c6210=d1062, c6211=d1162, c6212=d1262, c6213=d1362, c6214=d1462, c6215=d1562,
c6216=d1662, c6217=d1762, c6218=d1862, c6219=d1962, c6220=d2062, c6221=d2162,
c6222=d2262, c6223=d2362, c6224=d2462, c6225=d2562, c6226=d2662, c6227=d2762,
c6228=d2862, c6229=d2962, c6230=d3062, c6231=d3162, c6232=d3262, c6233=d3362,
c6234=d3462, c6235=d3562, c6236=d3662, c6237=d3762, c6238=d3862, c6239=d3962,
c6240=d4062, c6241=d4162, c6242=d4262, c6243=d4362, c6244=d4462, c6245=d4562,
c6246=d4662, c6247=d4762, c6248=d4862, c6249=d4962, c6250=d5062, c6251=d5162,
c6252=d5262, c6253=d5362, c6254=d5462, c6255=d5562, c6256=d5662, c6257=d5762,
c6258=d5862, c6259=d5962, c6260=d6062, c6261=d6162, c6262=d6262, c6263=d6362,
c6300=d0063, c6301=d0163, c6302=d0263, c6303=d0363, c6304=d0463, c6305=d0563,
c6306=d0663, c6307=d0763, c6308=d0863, c6309=d0963, c6310=d1063, c6311=d1163,
c6312=d1263, c6313=d1363, c6314=d1463, c6315=d1563, c6316=d1663, c6317=d1763,
c6318=d1863, c6319=d1963, c6320=d2063, c6321=d2163, c6322=d2263, c6323=d2363,
c6324=d2463, c6325=d2563, c6326=d2663, c6327=d2763, c6328=d2863, c6329=d2963,
c6330=d3063, c6331=d3163, c6332=d3263, c6333=d3363, c6334=d3463, c6335=d3563,
c6336=d3663, c6337=d3763, c6338=d3863, c6339=d3963, c6340=d4063, c6341=d4163,
c6342=d4263, c6343=d4363, c6344=d4463, c6345=d4563, c6346=d4663, c6347=d4763,
c6348=d4863, c6349=d4963, c6350=d5063, c6351=d5163, c6352=d5263, c6353=d5363,
c6354=d5463, c6355=d5563, c6356=d5663, c6357=d5763, c6358=d5863, c6359=d5963,
c6360=d6063, c6361=d6163, c6362=d6263, c6363=d6363
]
}

