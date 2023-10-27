#!/usr/bin/env python3

# Generate procedure signature, precondition, cuts, and postcondition.

# (* vmovshdup %ymm12,%ymm12                         #! PC = 0x555555571bcd *)
# marks the start of levels6t7

LEVELS = 8
BITS = 32
TYPE = "sint32"
NUM_ELMS = 8
OFFSET = 4
ROOT = 1753
Q = 8380417
Q_ADDR = 0x555555579de0
QINV = 58728449
ZETAS_QINV = [
        -151046689,  1830765815, -1929875198, -1927777021,  1640767044,  1477910808,  1612161320,  1640734244,
        308362795,   308362795,   308362795,   308362795, -1815525077, -1815525077, -1815525077, -1815525077,
        -1374673747, -1374673747, -1374673747, -1374673747, -1091570561, -1091570561, -1091570561, -1091570561,
        -1929495947, -1929495947, -1929495947, -1929495947,   515185417,   515185417,   515185417,   515185417,
        -285697463,  -285697463,  -285697463,  -285697463,   625853735,   625853735,   625853735,   625853735,
        1727305304,  1727305304,  2082316400,  2082316400, -1364982364, -1364982364,   858240904,   858240904,
        1806278032,  1806278032,   222489248,   222489248,  -346752664,  -346752664,   684667771,   684667771,
        1654287830,  1654287830,  -878576921,  -878576921, -1257667337, -1257667337,  -748618600,  -748618600,
        329347125,   329347125,  1837364258,  1837364258, -1443016191, -1443016191, -1170414139, -1170414139,
        -1846138265, -1631226336, -1404529459,  1838055109,  1594295555, -1076973524, -1898723372,  -594436433,
        -202001019,  -475984260,  -561427818,  1797021249, -1061813248,  2059733581, -1661512036, -1104976547,
        -1750224323,  -901666090,   418987550,  1831915353, -1925356481,   992097815,   879957084,  2024403852,
        1484874664, -1636082790,  -285388938, -1983539117, -1495136972,  -950076368, -1714807468,  -952438995,
        -1574918427,  1350681039, -2143979939,  1599739335, -1285853323,  -993005454, -1440787840,   568627424,
        -783134478,  -588790216,   289871779, -1262003603,  2135294594, -1018755525,  -889861155,  1665705315,
        1321868265,  1225434135, -1784632064,   666258756,   675310538, -1555941048, -1999506068, -1499481951,
        -695180180, -1375177022,  1777179795,   334803717,  -178766299,  -518252220,  1957047970,  1146323031,
        -654783359, -1974159335,  1651689966,   140455867, -1039411342,  1955560694,  1529189038, -2131021878,
        -247357819,  1518161567,   -86965173,  1708872713,  1787797779,  1638590967,  -120646188, -1669960606,
        -916321552,  1155548552,  2143745726,  1210558298, -1261461890,  -318346816,   628664287, -1729304568,
        1422575624,  1424130038, -1185330464,   235321234,   168022240,  1206536194,   985155484,  -894060583,
        -898413, -1363460238,  -605900043,  2027833504,    14253662,  1014493059,   863641633,  1819892093,
        2124962073, -1223601433, -1920467227, -1637785316, -1536588520,   694382729,   235104446, -1045062172,
        831969619,  -300448763,   756955444,  -260312805,  1554794072,  1339088280, -2040058690,  -853476187,
        -2047270596, -1723816713, -1591599803,  -440824168,  1119856484,  1544891539,   155290192,  -973777462,
        991903578,   912367099,   -44694137,  1176904444,  -421552614,  -818371958,  1747917558,  -325927722,
        908452108,  1851023419, -1176751719, -1354528380,   -72690498,  -314284737,   985022747,   963438279,
        -1078959975,   604552167, -1021949428,   608791570,   173440395, -2126092136, -1316619236, -1039370342,
        6087993,  -110126092,   565464272, -1758099917, -1600929361,   879867909, -1809756372,   400711272,
        1363007700,    30313375,  -326425360,  1683520342,  -517299994,  2027935492, -1372618620,   128353682,
        -1123881663,   137583815,  -635454918,  -642772911,    45766801,   671509323, -2070602178,   419615363,
        1216882040,  -270590488, -1276805128,   371462360, -1357098057,  -384158533,   827959816,  -596344473,
        702390549,  -279505433,  -260424530,   -71875110, -1208667171, -1499603926,  2036925262,  -540420426,
        746144248, -1420958686,  2032221021,  1904936414,  1257750362,  1926727420,  1931587462,  1258381762,
        885133339,  1629985060,  1967222129,     6363718, -1287922800,  1136965286,  1779436847,  1116720494,
        1042326957,  1405999311,   713994583,   940195359, -1542497137,  2061661095,  -883155599,  1726753853,
        -1547952704,   394851342,   283780712,   776003547,  1123958025,   201262505,  1934038751,   374860238
    ]
ZETAS_QINV_ADDR = 0x555555579e60
ZETAS = [
        -3975713,    25847, -2608894,  -518909,   237124,  -777960,  -876248,   466468,
        1826347,  1826347,  1826347,  1826347,  2353451,  2353451,  2353451,  2353451,
        -359251,  -359251,  -359251,  -359251, -2091905, -2091905, -2091905, -2091905,
        3119733,  3119733,  3119733,  3119733, -2884855, -2884855, -2884855, -2884855,
        3111497,  3111497,  3111497,  3111497,  2680103,  2680103,  2680103,  2680103,
        2725464,  2725464,  1024112,  1024112, -1079900, -1079900,  3585928,  3585928,
        -549488,  -549488, -1119584, -1119584,  2619752,  2619752, -2108549, -2108549,
        -2118186, -2118186, -3859737, -3859737, -1399561, -1399561, -3277672, -3277672,
        1757237,  1757237,   -19422,   -19422,  4010497,  4010497,   280005,   280005,
        2706023,    95776,  3077325,  3530437, -1661693, -3592148, -2537516,  3915439,
        -3861115, -3043716,  3574422, -2867647,  3539968,  -300467,  2348700,  -539299,
        -1699267, -1643818,  3505694, -3821735,  3507263, -2140649, -1600420,  3699596,
        811944,   531354,   954230,  3881043,  3900724, -2556880,  2071892, -2797779,
        -3930395, -3677745, -1452451,  2176455, -1257611, -4083598, -3190144, -3632928,
        3412210,  2147896, -2967645,  -411027,  -671102,   -22981,  -381987,  1852771,
        -3343383,   508951,    44288,   904516, -3724342,  1653064,  2389356,   759969,
        189548,  3159746, -2409325,  1315589,  1285669,  -812732, -3019102, -3628969,
        -1528703, -3041255,  3475950, -1585221,  1939314, -1000202, -3157330,   126922,
        -983419,  2715295, -3693493, -2477047, -1228525, -1308169,  1349076, -1430430,
        264944,  3097992, -1100098,  3958618,    -8578, -3249728,  -210977, -1316856,
        -3553272, -1851402,  -177440,  1341330, -1584928, -1439742, -3881060,  3839961,
        2091667, -3342478,   266997, -3520352,   900702,   495491,  -655327, -3556995,
        342297,  3437287,  2842341,  4055324, -3767016, -2994039, -1333058,  -451100,
        -1279661,  1500165,  -542412, -2584293, -2013608,  1957272, -3183426,   810149,
        -3038916,  2213111,  -426683, -1667432, -2939036,   183443,  -554416,  3937738,
        3407706,  2244091,  2434439, -3759364,  1859098, -1613174, -3122442,  -525098,
        286988, -3342277,  2691481,  1247620,  1250494,  1869119,  1237275,  1312455,
        1917081,   777191, -2831860, -3724270,  2432395,  3369112,   162844,  1652634,
        3523897,  -975884,  1723600, -1104333, -2235985,  -976891,  3919660,  1400424,
        2316500, -2446433, -1235728, -1197226,   909542,   -43260,  2031748,  -768622,
        -2437823,  1735879, -2590150,  2486353,  2635921,  1903435, -3318210,  3306115,
        -2546312,  2235880, -1671176,   594136,  2454455,   185531,  1616392, -3694233,
        3866901,  1717735, -1803090,  -260646,  -420899,  1612842,   -48306,  -846154,
        3817976, -3562462,  3513181, -3193378,   819034,  -522500,  3207046, -3595838,
        4108315,   203044,  1265009,  1595974, -3548272, -1050970, -1430225, -1962642,
        -1374803,  3406031, -1846953, -3776993,  -164721, -1207385,  3014001, -1799107,
        269760,   472078,  1910376, -3833893, -2286327, -3545687, -1362209,  1976782
    ]
ZETAS_ADDR = 0x55555557a300
DIV_QINV = -8395782
DIV = 41978
_8XDIV_QINV = [
    DIV_QINV, DIV_QINV, DIV_QINV, DIV_QINV, DIV_QINV, DIV_QINV, DIV_QINV, DIV_QINV
    ]
_8XDIV_QINV_ADDR = 0x555555579e20
_8XDIV = [
    DIV, DIV, DIV, DIV, DIV, DIV, DIV, DIV
    ]
_8XDIV_ADDR = 0x555555579e40
INS_ADDR = 0x7fffffff3cc0
INS_VAR_NAME = "f"
INS_NUM = 256
POLY_VAR = "X"
POLY_NAME = "inp_poly"


N_EXPN = 8
N = 2**N_EXPN
NEGACYCLIC = True
BIT_WIDTH = 32
MONT = (2**BIT_WIDTH) % Q

def num_to_bits (n, w):
    r = []
    for i in range (w):
        r.append (n % 2)
        n //= 2
    return (r)

def bits_to_num (l):
    r = 0
    for i in range (len(l) - 1, -1, -1):
        r = r * 2 + l[i]
    return (r)

def ntt_poly(level):
    res = []
    stage = level + 1
    num_rings = 2**stage
    num_coeffs = N // num_rings
    num_bits = N_EXPN + 1 if NEGACYCLIC else N_EXPN
    for i in range (num_rings):
        if NEGACYCLIC:
            l = num_to_bits(i, stage)
            l.reverse()
            l.insert(0, 1)
            l = [0 for i in range(num_bits - stage - 1)] + l
        else:
            l = num_to_bits(i, num_bits)
            l.reverse()
        e = bits_to_num(l)
        modulo = (ROOT**e) % Q
        modulo_mont = (modulo * MONT) % Q
        modulo = modulo - Q if modulo > Q / 2 else modulo
        modulo_mont = modulo_mont - Q if modulo_mont > Q / 2 else modulo_mont
        res.append(modulo)
    return res

def gen_proc():
    args = joinN([f"{TYPE} {INS_VAR_NAME}{i:03d}"for i in range(INS_NUM)], 8, ", ", ",\n  ")
    print("proc main (")
    print(f"  bit {POLY_VAR},")
    print("  " + args)
    print(") =")
    print("{")
    print("  true")
    print("  &&&")
    print("  and [")
    rngs = joinN([f"(-{Q})@{BITS} <s {INS_VAR_NAME}{i:03d}, {INS_VAR_NAME}{i:03d} <s ({Q})@{BITS}" for i in range(INS_NUM)], 4, ", ", ",\n    ")
    print("    " + rngs)
    print("  ]")
    print("}")

def joinN(xs, n, delimN, delim):
    res = []
    for i in range((len(xs) + n - 1) // n):
      tmp = []
      for j in range(n):
        if i*n+j < len(xs): tmp.append(xs[i*n+j])
      res.append(delimN.join(tmp))
    return delim.join(res)

def gen_q():
    str = joinN([f"mov L0x{Q_ADDR + i * OFFSET:12x} {Q}@{TYPE};" for i in range(NUM_ELMS)], 4, " ", "\n")
    print("(* Q *)")
    print(str)

def gen_zetas_qinv():
    str = joinN([f"mov L0x{ZETAS_QINV_ADDR + i * OFFSET:12x} ({ZETAS_QINV[i]:11d})@{TYPE};" for i in range(len(ZETAS_QINV))], 4, " ", "\n")
    print("(* ZETAS_QINV *)")
    print(str)

def gen_zetas():
    str = joinN([f"mov L0x{ZETAS_ADDR + i * OFFSET:12x} ({ZETAS[i]:8d})@{TYPE};" for i in range(len(ZETAS))], 4, " ", "\n")
    print("(* ZETAS *)")
    print(str)

def gen_8xdiv_qinv():
    str = joinN([f"mov L0x{_8XDIV_QINV_ADDR + i * OFFSET:12x} ({_8XDIV_QINV[i]:8d})@{TYPE};" for i in range(len(_8XDIV_QINV))], 4, " ", "\n")
    print("(* _8XDIV_QINV *)")
    print(str)

def gen_8xdiv():
    str = joinN([f"mov L0x{_8XDIV_ADDR + i * OFFSET:12x} ({_8XDIV[i]:8d})@{TYPE};" for i in range(len(_8XDIV))], 4, " ", "\n")
    print("(* _8XDIV *)")
    print(str)

def gen_ins():
    # The order of the invNTT inputs should match the order of the NTT outputs
    str = joinN([f"mov L0x{INS_ADDR + OFFSET*(i%8*8 + i//8 + off*64):12x} {INS_VAR_NAME}{i + off * 64:03d};" for off in range(4) for i in range(64)], 4, " ", "\n")
    print("(* INPUTS *)")
    print(str)

def gen_poly():
    poly_names = joinN([f"{POLY_NAME}{i:03d}@bit" for i in range(INS_NUM)], 8, ", ", ",\n      ")
    moduli = ntt_poly(7)
    eqs = joinN([f"{POLY_NAME}{i + 64 * off:03d}**2 = f{i + 64 * off:03d}" for off in range(4) for i in range(64)], 4, ", ", ",\n    ")
    strs = ["(* INP_POLY *)",
            f"ghost {poly_names} :",
            "  and [",
            f"    {eqs}",
            "  ] &&& true;"
        ]
    print("\n".join(strs))

def mk_poly(coefs):
    vars = ", ".join([c for c in coefs])
    return f"poly {POLY_VAR} [{vars}]"

def out_poly(num, nth):
    vars = ", ".join([f"L0x{INS_ADDR + (nth * num + i) * OFFSET:12x}" for i in range(num)])
    return f"poly {POLY_VAR} [{vars}]"

def gen_cut(block, level, ymms, lvrngs):
    # ymms[0], ymms[1], ymms[2], ymms[3], ymms[4], ymms[5], ymms[6], ymms[7]
    # butterfly ymms[0] ymms[4]
    # butterfly ymms[1] ymms[5]
    # butterfly ymms[2] ymms[6]
    # butterfly ymms[3] ymms[7]
    moduli = ntt_poly(7)
    vsize = len(ymms)              # number of ymm vectors
    npoly = 256 // 4               # number of polynomials in this block
    ncoef = 2**(level + 1)         # number of coefficients per polynomial
    factor = level + 2
    coefs = [] # polynomial coefficients
    rngs = []
    if level == 0:
        # poly[0] = ymms[0][0] ymms[4][0]
        # poly[2] = ymms[1][0] ymms[5][0]
        # poly[4] = ymms[2][0] ymms[6][0]
        # poly[8] = ymms[3][0] ymms[7][0]
        # poly[16] = ymms[0][1] ymms[4][1]
        # ...
        # poly[62] = ymms[3][7] ymms[7][7]
        for i in range(npoly):
            coefs.append([f"{ymms[(i % 8) // 2]:>6s}[{i // 8}]", f"{ymms[(i % 8) // 2 + 4]:>6s}[{i // 8}]"])
        for i in range(len(ymms)):
            start = [0, 2, 4, 6, 1, 3, 5, 7][i]
            rngs.append([lvrngs[level][block * npoly + start + j * 8] for j in range(8)])
    elif level == 1:
        # poly[0] = ymms[0][0] ymms[1][0] ymms[4][0] ymms[5][0]
        # poly[4] = ymms[2][0] ymms[3][0] ymms[6][0] ymms[7][0]
        # poly[8] = ymms[0][1] ymms[1][1] ymms[4][1] ymms[5][1]
        # poly[12] = ymms[2][1] ymms[3][1] ymms[6][1] ymms[7][1]
        # ...
        # poly[60] = ymms[2][7] ymms[3][7] ymms[6][7] ymms[7][7]
        for i in range(npoly):
            coefs.append([f"{ymms[(i % 8) // 4 * 2]:>6s}[{i // 8}]", f"{ymms[(i % 8) // 4 * 2 + 1]:>6s}[{i // 8}]", f"{ymms[(i % 8) // 4 * 2 + 4]:>6s}[{i // 8}]", f"{ymms[(i % 8) // 4 * 2 + 5]:>6s}[{i // 8}]"])
        for i in range(len(ymms)):
            start = [0, 1, 4, 5, 2, 3, 6, 7][i]
            rngs.append([lvrngs[level][block * npoly + start + j * 8] for j in range(8)])
    elif level == 2:
        # poly[0] = ymms[0][0] ymms[1][0] ymms[2][0] ymms[3][0] ymms[4][0] ymms[5][0] ymms[6][0] ymms[7][0]
        # poly[8] = ymms[0][1] ymms[1][1] ymms[2][1] ymms[3][1] ymms[4][1] ymms[5][1] ymms[6][1] ymms[7][1]
        # ...
        # poly[56] = ymms[0][7] ymms[1][7] ymms[2][7] ymms[3][7] ymms[4][7] ymms[5][7] ymms[6][7] ymms[7][7]
        for i in range(npoly):
            coefs.append([f"{ymm}[{i // 8}]" for ymm in ymms])
        for i in range(len(ymms)):
            start = i
            rngs.append([lvrngs[level][block * npoly + start + j * 8] for j in range(8)])
    elif level == 3:
        # poly[0] = ymms[0][0] ymms[0][1] ymms[1][0] ymms[1][1] ymms[2][0] ymms[2][1] ymms[3][0] ymms[3][1] ymms[4][0] ymms[4][1] ymms[5][0] ymms[5][1] ymms[6][0] ymms[6][1] ymms[7][0] ymms[7][1]
        # ...
        for i in range(npoly):
            coefs.append([f"{ymms[0]}[{i // 16 * 2}]", f"{ymms[0]}[{i // 16 * 2 + 1}]",
                          f"{ymms[1]}[{i // 16 * 2}]", f"{ymms[1]}[{i // 16 * 2 + 1}]",
                          f"{ymms[2]}[{i // 16 * 2}]", f"{ymms[2]}[{i // 16 * 2 + 1}]",
                          f"{ymms[3]}[{i // 16 * 2}]", f"{ymms[3]}[{i // 16 * 2 + 1}]",
                          f"{ymms[4]}[{i // 16 * 2}]", f"{ymms[4]}[{i // 16 * 2 + 1}]",
                          f"{ymms[5]}[{i // 16 * 2}]", f"{ymms[5]}[{i // 16 * 2 + 1}]",
                          f"{ymms[6]}[{i // 16 * 2}]", f"{ymms[6]}[{i // 16 * 2 + 1}]",
                          f"{ymms[7]}[{i // 16 * 2}]", f"{ymms[7]}[{i // 16 * 2 + 1}]"
                        ])
        for i in range(len(ymms)):
            start = i * 2
            rngs.append([lvrngs[level][block * npoly + start + (j // 2) * 16 + j % 2] for j in range(8)])
    elif level == 4:
        # poly[0] = ymms[0][0:4] ymms[1][0:4] ymms[2][0:4] ymms[3][0:4] ymms[4][0:4] ymms[5][0:4] ymms[6][0:4] ymms[7][0:4]
        # ...
        for i in range(npoly):
            coefs.append([f"{ymms[0]}[{i // 32 * 4}]", f"{ymms[0]}[{i // 32 * 4 + 1}]", f"{ymms[0]}[{i // 32 * 4 + 2}]", f"{ymms[0]}[{i // 32 * 4 + 3}]",
                          f"{ymms[1]}[{i // 32 * 4}]", f"{ymms[1]}[{i // 32 * 4 + 1}]", f"{ymms[1]}[{i // 32 * 4 + 2}]", f"{ymms[1]}[{i // 32 * 4 + 3}]",
                          f"{ymms[2]}[{i // 32 * 4}]", f"{ymms[2]}[{i // 32 * 4 + 1}]", f"{ymms[2]}[{i // 32 * 4 + 2}]", f"{ymms[2]}[{i // 32 * 4 + 3}]",
                          f"{ymms[3]}[{i // 32 * 4}]", f"{ymms[3]}[{i // 32 * 4 + 1}]", f"{ymms[3]}[{i // 32 * 4 + 2}]", f"{ymms[3]}[{i // 32 * 4 + 3}]",
                          f"{ymms[4]}[{i // 32 * 4}]", f"{ymms[4]}[{i // 32 * 4 + 1}]", f"{ymms[4]}[{i // 32 * 4 + 2}]", f"{ymms[4]}[{i // 32 * 4 + 3}]",
                          f"{ymms[5]}[{i // 32 * 4}]", f"{ymms[5]}[{i // 32 * 4 + 1}]", f"{ymms[5]}[{i // 32 * 4 + 2}]", f"{ymms[5]}[{i // 32 * 4 + 3}]",
                          f"{ymms[6]}[{i // 32 * 4}]", f"{ymms[6]}[{i // 32 * 4 + 1}]", f"{ymms[6]}[{i // 32 * 4 + 2}]", f"{ymms[6]}[{i // 32 * 4 + 3}]",
                          f"{ymms[7]}[{i // 32 * 4}]", f"{ymms[7]}[{i // 32 * 4 + 1}]", f"{ymms[7]}[{i // 32 * 4 + 2}]", f"{ymms[7]}[{i // 32 * 4 + 3}]"
                        ])
        for i in range(len(ymms)):
            start = i * 4
            rngs.append([lvrngs[level][block * npoly + start + (j // 4) * 32 + j % 4] for j in range(8)])
    print("cut")
    print("  and [")
    estr = ",\n    ".join([f"eqmod ({2**(level+1)}*{POLY_NAME}{block * npoly + i:03d}**2) ({mk_poly(coefs[i])}) [{Q}, {POLY_VAR} - ({moduli[i + block * npoly]:8d})]" for i in range(npoly)])
    print("    " + estr)
    eprove_with = " prove with [precondition, all ghosts]" if block != 0 and level == 0 else ""
    print(f"  ]{eprove_with}")
    print("  &&&")
    print("  and [")
    pos = lambda i : ', '.join([f"({r})@{BITS}" for r in rngs[i]])
    neg = lambda i : ', '.join([f"({-r})@{BITS}" for r in rngs[i]])
    rstr = joinN([f"[{neg(i)}] <s {ymms[i]}, {ymms[i]} <s [{pos(i)}]" for i in range(len(ymms))], 2, ", ", ",\n    ")
    print("    " + rstr)
    rprove_with = " prove with [precondition]" if block != 0 and level == 0 else ""
    print(f"  ]{rprove_with};")

def print_cut_level0t5(block, lvrngs):
    num_blocks = 4
    factor = 7
    num = 64
    level = 5
    moduli = ntt_poly(7)
    print("cut")
    print("  and [")
    print(",\n".join([f"    eqmod ({2**(level+1)}*{POLY_NAME}{i + block * num:03d}**2) ({out_poly(num, block)}) [{Q}, X - ({moduli[i + block * num]:8d})]" for i in range(num)]))
    print("  ]")
    print("  &&")
    print("  and [")
    rng_f = lambda i : lvrngs[level][block * num + i]
    rngs = joinN([f"(-{rng_f(i)})@{BITS} <s L0x{INS_ADDR + (block * num + i) * OFFSET:12x}, L0x{INS_ADDR + (block * num + i) * OFFSET:12x} <s ({rng_f(i)})@{BITS}" for i in range(num)], 4, ", ", ",\n    ")
    print("    " + rngs)
    print("  ];")

def print_rcut_level6(block, lvrngs, rcuts_level5):
    ymms = ["%ymm4", "%ymm5", "%ymm6", "%ymm7", "%ymm8", "%ymm9", "%ymm10", "%ymm11"]
    rngs = []
    for i in range(len(ymms)):
        start = i * 32
        rngs.append([lvrngs[6][start + block * 8 + j] for j in range(8)])
    print("rcut")
    print("  and [")
    pos = lambda i : ', '.join([f"({r})@{BITS}" for r in rngs[i]])
    neg = lambda i : ', '.join([f"({-r})@{BITS}" for r in rngs[i]])
    rstr = joinN([f"[{neg(i)}] <s {ymms[i]}, {ymms[i]} <s [{pos(i)}]" for i in range(len(ymms))], 2, ", ", ",\n    ")
    print("    " + rstr)
    rcuts = ", ".join([str(c) for c in rcuts_level5])
    print(f"  ] prove with [cuts [{rcuts}]];")

def print_rcut_level7(block, lvrngs):
    print("rcut")
    print("  and [")
    rngs = joinN([f"(-{Q})@{BITS} <s L0x{INS_ADDR + (i * 32 + block * 8 + j) * OFFSET:12x}, L0x{INS_ADDR + (i * 32 + block * 8 + j) * OFFSET:12x} <s ({Q})@{BITS}" for i in range(8) for j in range(8)], 4, ", ", ",\n    ")
    print("    " + rngs)
    print("  ];")

def gen_post(eblock_finals, rblock_finals):
    moduli = ntt_poly(7)
    poly_vars = ", ".join([f"L0x{INS_ADDR + OFFSET * i:12x}" for i in range(INS_NUM)])
    poly = f"poly {POLY_VAR} [{poly_vars}]"
    print("{")
    print("  and [")
    print(",\n".join([f"    eqmod ((2**32)*({POLY_NAME}{i + 64 * off:03d}**2)) ({poly}) [{Q}, {POLY_VAR} - ({moduli[i + 64 * off]:8d})]" for off in range(4) for i in range(64)]))
    eprove_with = ", ".join([str(i) for i in eblock_finals[0:-1]])
    print(f"  ] prove with [precondition, all ghosts, cuts [{eprove_with}]]")
    print("  &&&")
    print("  and [")
    rngs = joinN([f"(-{Q})@{BITS} <s L0x{INS_ADDR + i * OFFSET:12x}, L0x{INS_ADDR + i * OFFSET:12x} <s ({Q})@{BITS}" for i in range(INS_NUM)], 4, ", ", ",\n    ")
    print("    " + rngs)
    rprove_with = ", ".join([str(i) for i in rblock_finals[0:-1]])
    print(f"  ] prove with [cuts [{rprove_with}]]")
    print("}")

def calc_ranges():
    rngs = [[Q for i in range(INS_NUM)]]
    for level in range(LEVELS):
        rng = [0 for i in range(INS_NUM)]
        skip = 2**level
        w = 2**(level+1)
        for start in range(INS_NUM // (2**(level+1))):
            for i in range(skip):
                i0 = start * w + i
                i1 = i0 + skip
                rng[i0] = rngs[level][i0] + rngs[level][i1]
                rng[i1] = Q
        rngs.append(rng)
    rngs = rngs[1:]
    return rngs

def main():
    print("# ----- Proc, Initialization -----")
    gen_proc()
    gen_q()
    gen_zetas_qinv()
    gen_zetas()
    gen_8xdiv_qinv()
    gen_8xdiv()
    gen_ins()
    gen_poly()
    rcut = 0
    ecut = 0
    eblock_finals = []
    rblock_finals = []
    lvrngs = calc_ranges()
    # Insert rcut before loading ZETAS_QINV such as:
    # vpermq		$0x1B,(_ZETAS_QINV+168-8*\off-8)*4(%rsi),%ymm3
    ymms = [
        ["%ymm4", "%ymm6", "%ymm8", "%ymm10", "%ymm5", "%ymm7", "%ymm9", "%ymm11"], # level 0
        ["%ymm4", "%ymm5", "%ymm8", "%ymm9", "%ymm6", "%ymm7", "%ymm10", "%ymm11"], # level 1
        ["%ymm4", "%ymm5", "%ymm6", "%ymm7", "%ymm8", "%ymm9", "%ymm10", "%ymm11"], # level 2
        ["%ymm3", "%ymm4", "%ymm6", "%ymm8", "%ymm5", "%ymm7", "%ymm9", "%ymm11"],  # level 3
        ["%ymm10", "%ymm3", "%ymm6", "%ymm5", "%ymm4", "%ymm8", "%ymm7", "%ymm11"], # level 4: before vperm2i128
        None                                                                        # level 5: ["%ymm9", "%ymm10", "%ymm6", "%ymm4", "%ymm3", "%ymm5", "%ymm8", "%ymm11"]
        ]
    for block in range(4):
        for level in range(5):
            print(f"# ----- Block {block}, iNTT Level {level}, ecut #{ecut}, rcut #{rcut} -----")
            gen_cut(block, level, ymms[level], lvrngs)
            ecut = ecut + 1
            rcut = rcut + 1
        print(f"# ----- Cut Block {block}, Cut Level 5, ecut #{ecut}, rcut #{rcut} -----")
        print_cut_level0t5(block, lvrngs)
        eblock_finals.append(ecut)
        rblock_finals.append(rcut)
        ecut = ecut + 1
        rcut = rcut + 1
    rblock_level7 = []
    for block in range(4):
        print(f"# ----- Block {block}, iNTT Level 6, rcut #{rcut} -----")
        print_rcut_level6(block, lvrngs, rblock_finals)
        rcut = rcut + 1
        print(f"# ----- Block {block}, iNTT Level 7, rcut #{rcut} -----")
        print_rcut_level7(block, lvrngs)
        rblock_level7.append(rcut)
        rcut = rcut + 1
    print("# ----- Postcondition -----")
    gen_post(eblock_finals, rblock_level7)


if __name__ == "__main__":
    main()
