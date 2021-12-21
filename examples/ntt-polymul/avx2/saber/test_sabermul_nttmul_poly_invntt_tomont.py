#!/usr/bin/env python3

# 1. to_zdsl.py --no-main --no-pre --no-post test_sabermul_nttmul_poly_invntt_tomont.gas 1> test_sabermul_nttmul_poly_invntt_tomont_preprocessed.cl
# 2. ./test_sabermul_nttmul_poly_invntt_tomont.py test_sabermul_nttmul_poly_invntt_tomont_preprocessed.cl > test_sabermul_nttmul_poly_invntt_tomont.cl

# Inputs:
# %rdx = 0x55555555f7c0
# L0x555555560700-L0x55555556071e (全都是_16XP = 7681, 16個)
# L0x555555560780-L0x55555556079e (全都是_16XMONT_PINV = -9, 16個)
# L0x5555555607a0-L0x5555555607be (全都是_16XMONT = -3593 = 2^16 mod 7681, 16個)
# L0x555555560800-L0x55555556093e (_ZETAS, 160個)
# L0x555555560940-L0x555555560b3e (_TWIST32, 256個, off=0)
# L0x555555560b40-L0x555555560d3e (_TWIST32, 256個, off=1, note: _TWIST32共有512個)
# L0x555555560d40-L0x555555560dbe (_TWISTS4, 64個)
# L0x7fffffffbb20-L0x7fffffffbd1e (input coefficients, 256個)
# L0x7fffffffbb20-L0x7fffffffbd1e (output coefficients, 256個)

import re, math
from argparse import ArgumentParser

ORIGINAL_N = 256
ORIGINAL_P = 8192
P = 7681
PINV = -7679   # p^-1 mod 2^16, -7679 * 7681 = 1 (mod 2^16)
MONT = -3593   # 2^16 mod p, -3593 = 4088 (mod 7681)
MONT_PINV = -9 # (MONT * p^-1) mod 2^16, -9*7681 = -3593 (mod 2^16)
ROOT = 62      # 62**256 = -1 (mod 7681)
# 2^(-16) mod 7681 = 900
_16XP_BASE = 0x555555560700
_16XP_NUM = 16
_16XMONT_PINV_BASE = 0x555555560780
_16XMONT_PINV_NUM = 16
_16XMONT_BASE = 0x5555555607a0
_16XMONT_NUM = 16
_ZETAS_BASE = 0x555555560800
_ZETAS_NUM = 160
_TWIST32_BASE = 0x555555560940
_TWIST32_NUM = 512
_TWISTS4_BASE = 0x555555560d40
_TWISTS4_NUM = 64
INPUT_BASE = 0x7fffffffbb20 # (L0x7fffffffbb20 ~ L0x7fffffffbd1e)
INPUT_NUM = 256
ANS_BASE = 0x7fffffffbb20 # (L0x7fffffffbb20 ~ L0x7fffffffbd1e)
ANS_NUM = 256
LEVEL3_TWIST = [62, 4236, 4600, 5805, 217, 7145, 738, 1115]
LEVEL7_TWIST = [1, 1213, 7154, 7098, 1366, 2648, 2132, 2446]
POLY_NAME = "inp_poly"
POLY_VAR = "x"

def join_chunks(xs, glue, n, indent=0):
    return [" " * indent + glue.join(xs[i:i + n]) for i in range(0, len(xs), n)]

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

def normalize(i, p):
    i = i % p
    return i - p if i > p//2 else i

def ntt_mod(num_ans, prime, mont, root, negacyclic, stage):
    num_rings = 2**stage
    num_coeffs = num_ans // num_rings
    n_expn = int(math.log(num_ans, 2))
    num_bits = n_expn + 1 if negacyclic else n_expn
    res = []
    for i in range (num_rings):
        if negacyclic:
            l = num_to_bits(i, stage)
            l.reverse()
            l.insert(0, 1)
            l = [0 for i in range(num_bits - stage - 1)] + l
        else:
            l = num_to_bits(i, num_bits)
            l.reverse()
        e = bits_to_num(l)
        modulo = (root**e) % prime
        modulo_mont = (modulo * mont) % prime
        modulo = modulo - prime if modulo > prime / 2 else modulo
        modulo_mont = modulo_mont - prime if modulo_mont > prime / 2 else modulo_mont
        res.append(dict(modulo = modulo, mont = modulo_mont))
    return res

def get_ntt_mod_level3to7(i):
    if i < 2:
        return 1 if i % 2 == 0 else -1
    else:
        s = 0
        j = 0
        n = int(math.log(ORIGINAL_N, 2))
        for k in range(2, n + 1):
            if i < math.pow(2, k):
                s = k - 1
                break
        j = i % pow(2, s)
        return ntt_mod(num_ans=ANS_NUM, prime=P, mont=MONT, root=ROOT, negacyclic=True, stage=s)[j]["modulo"]
    return 0

def make_ymms(ymms, off, num):
    return ["ymm{}_{:x}".format(ymm, off + i) for ymm in ymms for i in range(num)]

def make_eqmod(poly_name, poly_mult, ymms, coefs, mods, mon_per_line=4):
    return "\n".join([
        "eqmod",
        "  {1}({0} * {0})".format(poly_name, "" if poly_mult == 1 else (str(poly_mult) + " * ")),
        "  (",
        " +\n".join(join_chunks(["{0}*({1}**{2})".format(ymms[i], coefs[i], i) for i in range(len(ymms))], " + ", mon_per_line, indent=4)),
        "  )",
        "  [{}]".format(", ".join(mods))
    ])

def print_comment(str):
    print("(* {} *)".format(str))

def str_ghost(typed_vars, easserts, rasserts):
    return "\n".join([
             "ghost {} :".format(", ".join(["{0}@{1}".format(var, typ) for (var, typ) in typed_vars])),
             "and [",
             "  {}".format("true" if len(easserts) == 0 else ",\n  ".join(easserts)),
             "] && and [",
             "  {}".format("true" if len(rasserts) == 0 else ",\n  ".join(rasserts)),
             "];"
           ])

def str_main_args ():
    return "\n".join([
        "(* parameters *)\n",
        ",\n".join(join_chunks(["sint16 f{:03d}".format(i) for i in range(INPUT_NUM)], ", ", 4))])

def str_precondition_algebra ():
    return "\n".join([
        "(* algebraic precondition *)\n",
        "true"])

def str_precondition_range ():
    return "\n".join([
        "(* range precondition *)\n",
        "and [",
        format(",\n".join(join_chunks(["(-{0})@16 <s f{1:03d}, f{1:03d} <s {0}@16".format(7681, i) for i in range(INPUT_NUM)], ", ", 4))),
        "]"])

def str_inits ():
    return "\n".join([
        "(* inits *)\n",
        "\n".join(join_chunks(["mov L0x{:x} f{:03d};".format(INPUT_BASE + 2 * i, i) for i in range(INPUT_NUM)], " ", 4))])

def str_twiddles ():
    _16XP = [ P, P, P, P, P, P, P, P, P, P, P, P, P, P, P, P ]
    _16XMONT_PINV = [
  MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV,
  MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV
        ]
    _16XMONT = [
  MONT, MONT, MONT, MONT, MONT, MONT, MONT, MONT,
  MONT, MONT, MONT, MONT, MONT, MONT, MONT, MONT
        ]
    _ZETAS = [
   28865,  28865,  28865,  28865,  28865,  28865,  28865,  28865,
   28865,  28865,  28865,  28865,  28865,  28865,  28865,  28865,
    3777,   3777,   3777,   3777,   3777,   3777,   3777,   3777,
    3777,   3777,   3777,   3777,   3777,   3777,   3777,   3777,
  -10350, -10350, -10350, -10350, -10350, -10350, -10350, -10350,
  -10350, -10350, -10350, -10350, -10350, -10350, -10350, -10350,
   -3182,  -3182,  -3182,  -3182,  -3182,  -3182,  -3182,  -3182,
   -3182,  -3182,  -3182,  -3182,  -3182,  -3182,  -3182,  -3182,
    4496,   4496,   4496,   4496,   4496,   4496,   4496,   4496,
   -7244,  -7244,  -7244,  -7244,  -7244,  -7244,  -7244,  -7244,
   -3696,  -3696,  -3696,  -3696,  -3696,  -3696,  -3696,  -3696,
   -1100,  -1100,  -1100,  -1100,  -1100,  -1100,  -1100,  -1100,
   16425,  16425,  16425,  16425,  16425,  16425,  16425,  16425,
   16425,  16425,  16425,  16425,  16425,  16425,  16425,  16425,
    3625,   3625,   3625,   3625,   3625,   3625,   3625,   3625,
    3625,   3625,   3625,   3625,   3625,   3625,   3625,   3625,
   14744,  14744,  14744,  14744,  14744,  14744,  14744,  14744,
   -4974,  -4974,  -4974,  -4974,  -4974,  -4974,  -4974,  -4974,
    2456,   2456,   2456,   2456,   2456,   2456,   2456,   2456,
    2194,   2194,   2194,   2194,   2194,   2194,   2194,   2194
        ]
    _TWIST32 = [
      -9,   -529,  32738,  -1851,     -9,  29394,  -7508, -20435,
      -9,  26288,   9855, -19215,     -9,  16006, -12611,   -964,
   -3593,    -17,  -1054,   3781,  -3593,   3794,   2732,  -2515,
   -3593,   1712,   2175,  -3343,  -3593,  -3450,  -2883,   1084,
   16279,  26288,  -8558,  -6297,  11783, -25648,  14351, -25733,
   21066, -23882, -17440,  -7304, -26279,  16791,  22124, -20435,
   -3689,   1712,  -1390,  -1689,      7,  -1072,  -1521,   1403,
    -438,  -2378,  -1056,  -3208,   1881,  -3177,   -404,  -2515,
    2816, -22039,   9855,  21168, -19394,  30255, -27132,  17013,
   23489, -18506,   1869,  10145,  -3114,   9650, -15358, -24232,
    2816,  -2071,   2175,  -3408,  -1986,  -2001,   3588,  -1931,
   -1599,   2998,   3405,   1441,   2006,    434,      2,  -3752,
    1724, -24214,   6032, -19215, -21467,  29453, -16655,  32124,
    4505,  13686, -25946, -12790, -23668, -31518,  14351,  12449,
    3772,   3434,  -2160,  -3343,    549,  -1779,   -783,   1404,
    -103,   2422,   3750,  -1526,   2956,    226,  -1521,   3745,
  -11655,  -1715,  24743,  26766,  23754,  22943,  -2722,   4880,
   18242,  26621, -32329, -10333, -22593, -16715,  30426,   2858,
     121,   -179,  -3417,   3214,   2250,  -1121,  -1698,  -3312,
     834,   3581,  -3145,  -3677,   2495,  -2891,    730,  -2262,
   21066,  -4624, -24573, -16186,  29667, -30597,  23225,  10333,
  -15998,   6510,  -3558,  17491,  11792,  30255,  -4693,  21723,
    -438,   3568,  -1533,  -2874,   3555,  -3461,   2233,   3677,
    -638,   -658,   -486,   -429,   3600,  -2001,  -2133,   -293,
  -20469, -23882,  26663,  14718,  -9488, -16885, -26220,  17636,
  -19351, -17082,   2722,   2807,  10972,  -5990,  29871,  -5299,
   -1525,  -2378,  -1497,   -642,  -1296,   2059,  -3692,   -796,
     617,  -3770,   1698,   -777,  -3364,  -2918,  -2385,  -3763,
   -4983,  18745, -17440, -32695,  -4505, -12261, -32252,  23933,
    2073, -30938,  30136,  16083, -21467, -32414,  -8908,   -947,
   -1399,  -2247,  -1056,   3657,    103,  -1509,  -1532,    893,
   -2535,  -1242,   1464,  -1837,    549,   -670,  -2764,    589,
      -9,  -1851,  -8558, -22039,     -9,   4573, -26441,  16791,
      -9,  -6297,   6032,  -4624,     -9,  -9513,   9360,  16006,
   -3593,   3781,  -1390,  -2071,  -3593,  -2083,   2743,  -3177,
   -3593,  -1689,  -2160,   3568,  -3593,   3287,   1168,  -3450,
    1724, -19215,  24743,  -4624, -21766,   1007, -15358, -25648,
   -4983,  -7304, -16092, -13711,  21399,   4573, -12611,  29394,
    3772,  -3343,  -3417,   3568,  -2310,   1519,      2,  -1072,
   -1399,  -3208,  -1756,   2161,   1431,  -2083,  -2883,   3794,
  -20469,  14718, -17440,  16638, -15307,  12449,  12269, -22764,
  -26382,  -5452, -25946, -11996,   5759,   -964, -26441,   9087,
   -1525,   -642,  -1056,   1278,  -1483,   3745,  -2579,   -236,
   -2830,    692,   3750,   2340,  -1921,   1084,   2743,   1407,
    5930, -23933, -16092, -18506,  11792, -28805, -27132,  -5990,
   -5913,  27243, -13933,   6510, -26279,  -6766,  -7508,  16791,
     810,   -893,  -1756,   2998,   3600,  -1669,   3588,  -2918,
   -1305,  -2965,    915,   -658,   1881,    402,   2732,  -3177,
  -18191, -15221, -26262,   2739,   -828, -15145,  -8908,  -9633,
   20315, -15111, -10478,    802, -20870,  -4565,  22124,  26783,
   -2319,   3723,   1386,   1203,  -2876,  -2345,  -2764,   -929,
   -1701,  -3335,  -3310,   -222,  -1414,  -2005,   -404,   2719,
    4505,  -5452,  -3456, -28958, -14121,  32124,  17602,   2526,
    2073,  22790, -24052,   9633, -21766, -20435,  21868,   3524,
    -103,    692,  -3456,   2786,  -1321,   1404,    194,   3550,
   -2535,   3334,   2572,    929,  -2310,  -2515,   -660,   1476,
    7491, -12790, -22875,  16885,  22568,  27858,  10478,  20119,
   31177,   5299, -21860, -10495,  -3114,   1007,   8472,   9650,
   -2237,  -1526,   -859,  -2059,   2088,   2258,   3310,    151,
    1993,   3763,  -3428,  -2815,   2006,   1519,  -3816,    434,
   -5913,  27636, -32329,  -2952,  29667,  23984, -10409,   8831,
  -11792,  14138,  13541,  31518,  11783,  30844, -15358, -19274,
   -1305,   1012,  -3145,   1144,   3555,   -592,   2391,   1151,
   -3600,    826,   2789,   -226,      7,    124,      2,   2230
        ]
    _TWISTS4 = [
      -9, -16425, -28865,  10350,  -3593,  -3625,  -3777,   3182,
      -9, -10350,  28865,  16425,  -3593,  -3182,   3777,   3625,
      -9,   4496, -10350,  14744,  -3593,  -3696,  -3182,   2456,
      -9,   4974, -16425,   7244,  -3593,  -2194,  -3625,   1100,
      -9, -11655,   4496, -18191,  -3593,    121,  -3696,  -2319,
      -9, -22593,   7244, -20315,  -3593,   2495,   1100,   1701,
      -9, -18191,  14744, -23754,  -3593,  -2319,   2456,  -2250,
      -9, -20870,   4974, -22593,  -3593,  -1414,  -2194,   2495
        ]
    twiddles = [
        ("_16XP", _16XP, _16XP_BASE),
        ("_16XMONT_PINV", _16XMONT_PINV, _16XMONT_PINV_BASE),
        ("_16XMONT", _16XMONT, _16XMONT_BASE),
        ("_ZETAS", _ZETAS, _ZETAS_BASE),
        ("_TWIST32", _TWIST32, _TWIST32_BASE),
        ("_TWISTS4", _TWISTS4, _TWISTS4_BASE)
        ]
    res = []
    for (name, arr, base) in twiddles:
        res.append("\n(* {} *)\n".format(name))
        res.append("\n".join(join_chunks(["mov L0x{:x} ({:4d})@sint16;".format(base + 2*i, arr[i]) for i in range (len(arr))], " ", 4)))
    return "\n".join(res)

def str_init_poly_var():
    return ("ghost {}@sint16 : true && true;").format(POLY_VAR)

def str_init_poly(off):
    return str_ghost([("{0}{1}".format(POLY_NAME, i + off*128), "sint16") for i in range(128)],
                     ["{0}{1} * {0}{1} = {2}".format(POLY_NAME, i + off*128, "L0x{:x}".format(INPUT_BASE + (i%8*16 + i//8 + off*128)*2)) for i in range(128)],
                     [])

def get_algebra(args, expn, mon_per_line=4):
    return [
        make_eqmod(poly_name, poly_mult, ymms, [POLY_VAR] * len(ymms), [str(P), "{0}**{2} - ({1})".format(POLY_VAR, m, expn)], mon_per_line) for (poly_name, poly_mult, ymms, m) in args
    ]

def str_algebra(args, expn, mon_per_line=4):
    return ",\n".join(get_algebra(args, expn, mon_per_line))

def str_assertions(pairs):
    equalities = []
    for (ymm1, ymm2) in pairs:
        for i in range(0, 16):
            equalities.append("mulLymm{0}_{2:x} = mulLymm{1}_{2:x}".format(ymm1, ymm2, i))
    return "assert true && and [\n{0}\n];\nassume and [\n{0}\n] && true;".format(",\n".join(join_chunks(equalities, ", ", 2)))

level = 0
off = 0
ecut_id = 0
rcut_id = 0
level5_ecut_ids = [[], []]
level6_ecut_ids = [[], []]

def print_instr(instr):
    global level, off, ecut_id, rcut_id, level5_ecut_ids, level6_ecut_ids

    # ========== Level 0 ==========
    if instr.startswith("(* vmovdqa 0x40(%rsi),%ymm6"):
        print_comment("===== Start of Level {}, off {} =====".format(level, off))
    elif instr.startswith("(* vpaddw %ymm5,%ymm4,%ymm14") and level == 0:
        print(str_assertions([(7, 12), (11, 13)]))
    elif instr.startswith("(* vpaddw %ymm6,%ymm14,%ymm4") and level == 0:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        # # Verified
        # print("assert")
        # print("and [")
        # print(str_algebra(
        #     args=[("{0}{1}".format(POLY_NAME, i + off*128),
        #            2**(level+1),
        #            make_ymms([[14, 5], [6, 7], [15, 9], [10, 11]][(i%8)//2], i//8, 1),
        #            get_ntt_mod_level3to7(i%4)) for i in range(128)],
        #     expn=1))
        # print("] && true;\n")
        level = level + 1
        print_comment("===== Start of level {}, off {} =====".format(level, off))

    # ========== Level 1 ==========
    elif instr.startswith("(* vpsubw %ymm14,%ymm4,%ymm4") and level == 1:
        print(str_assertions([(4, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm5,%ymm5") and level == 1:
        print(str_assertions([(5, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm6,%ymm6") and level == 1:
        print(str_assertions([(6, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm7,%ymm7") and level == 1:
        print(str_assertions([(7, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm8,%ymm8") and level == 1:
        print(str_assertions([(8, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm13,%ymm13") and level == 1:
        print(str_assertions([(13, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm10,%ymm10") and level == 1:
        print(str_assertions([(10, 14)]))
    elif instr.startswith("(* vpsubw %ymm14,%ymm11,%ymm11") and level == 1:
        print(str_assertions([(11, 14)]))
    elif instr.startswith("(* vpsubw %ymm6,%ymm7,%ymm12") and level == 1:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        # # Verified
        # level1_algebras = str_algebra(
        #     args=[("{0}{1}".format(POLY_NAME, i + off*128),
        #                2**(level+1),
        #                make_ymms([[4], [5], [6], [7], [8], [13], [10], [11]][((i//4)%8)], i//32 * 4, 4),
        #                normalize(LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for i in range(128)],
        #     expn=1)
        # print("assert")
        # print("and [")
        # print(level1_algebras)
        # print("] && true;\n")
        level = level + 1
        print_comment("===== Start of level {}, off {} =====".format(level, off))

    # ========== Level 2 ==========
    elif instr.startswith("(* vpaddw %ymm5,%ymm4,%ymm15") and level == 2:
        print(str_assertions([(7, 12), (13, 9), (11, 14)]))
    elif instr.startswith("(* vpsubw %ymm8,%ymm10,%ymm12") and level == 2:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        # # Verified
        # level2_algebras = str_algebra(
        #     args=[("{0}{1}".format(POLY_NAME, i + off*128),
        #                2**(level+1),
        #                make_ymms([[15, 5], [6, 7], [8, 9], [10, 11]][((i//8)%4)], i//32 * 4, 4),
        #                normalize(LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for i in range(128)],
        #     expn=1)
        # print("assert")
        # print("and [")
        # print(level2_algebras)
        # print("] && true;\n")
        level = level + 1
        print_comment("===== Start of level {}, off {} =====".format(level, off))

    # ========== Level 3 ==========
    elif instr.startswith("(* vpaddw %ymm6,%ymm15,%ymm4") and level == 3:
        print(str_assertions([(10, 12), (11, 13)]))
    elif instr.startswith("(* vmovdqa 0x80(%rdx),%ymm13") and level == 3:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        # # Verified
        # level3_algebras = str_algebra(
        #     args=[("{0}{1}".format(POLY_NAME, i + off*128),
        #                2**(level+1),
        #                make_ymms([[4, 15, 6, 7], [8, 9, 10, 11]][((i//16)%2)], i//32 * 4, 4),
        #                normalize(LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for i in range(128)],
        #     expn=1)
        # print("assert and [")
        # print(level3_algebras)
        # print("] && true;\n")
        level = level + 1
        print_comment("===== Start of level {}, off {} =====".format(level, off))

    # ========== Level 4 ==========
    elif instr.startswith("(* vpsubw %ymm12,%ymm4,%ymm4") and level == 4:
        print(str_assertions([(4, 12)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm12,%ymm12") and level == 4:
        print(str_assertions([(12, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm5,%ymm5") and level == 4:
        print(str_assertions([(5, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm13,%ymm13") and level == 4:
        print(str_assertions([(13, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm14,%ymm14") and level == 4:
        print(str_assertions([(14, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm8,%ymm8") and level == 4:
        print(str_assertions([(8, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm9,%ymm9") and level == 4:
        print(str_assertions([(9, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm10,%ymm10") and level == 4:
        print(str_assertions([(10, 7)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm11,%ymm11") and level == 4:
        print(str_assertions([(11, 7)]))
    elif (instr.startswith("(* vpermq $0x4e,0x200(%rdx),%ymm2") or instr.startswith("(* vpermq $0x4e,0x180(%rdx),%ymm2")) and level == 4:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        # # Verified
        # level4_algebras = str_algebra(
        #     args=[("{0}{1}".format(POLY_NAME, i + off*128),
        #                2**(level+1),
        #                make_ymms([[3, 5, 7, 9], [4, 6, 8, 10]][((i//32)%2)], i//64 * 8, 8),
        #                normalize(LEVEL3_TWIST[i//32 + off*4] * LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for i in range(128)],
        #     expn=1,
        #     mon_per_line=8)
        # print("assert and [")
        # print(level4_algebras)
        # print("] && true;\n")
        level = level + 1
        print_comment("===== Start of level {}, off {} =====".format(level, off))

    # ========== Level 5 ==========
    elif instr.startswith("(* vpsubw %ymm4,%ymm12,%ymm4") and level == 5:
        print(str_assertions([(4, 12), (6, 13), (8, 14), (10, 15)]))
    elif (instr.startswith("(* vmovdqa 0x1c0(%rdx),%ymm2") or instr.startswith("(* vmovdqa 0x140(%rdx),%ymm2")) and level == 5:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        print("\n(* ecut {0}, rcut {1} *)\n".format(ecut_id, rcut_id))
        level5_summary_ecut_id = ecut_id
        level5_algebras = get_algebra(
            args=[("{0}{1}".format(POLY_NAME, i + off*128),
                       2**(level+1),
                       make_ymms([[11, 3, 7, 4], [5, 9, 6, 10]][i//64], 0, 16),
                       normalize(LEVEL3_TWIST[i//32 + off*4] * LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for i in range(128)],
            expn=1,
            mon_per_line=16)
        print("ecut and [")
        print(",\n".join(level5_algebras))
        print("];\n")
        ecut_id = ecut_id + 1
        for i in range(128):
            print("\n(* ecut {0} *)\n".format(ecut_id))
            print("ecut")
            print(level5_algebras[i])
            print("prove with [cuts [{0}]];\n".format(level5_summary_ecut_id))
            level5_ecut_ids[off].append(ecut_id)
            ecut_id = ecut_id + 1
        level = level + 1
        print_comment("===== Start of level {}, off {} =====".format(level, off))

    # ========== Level 6 ==========
    elif instr.startswith("(* vpsubw %ymm5,%ymm12,%ymm5") and level == 6:
        print(str_assertions([(5, 12), (9, 13), (6, 14), (10, 15)]))
    elif instr.startswith("(* vpsubw %ymm13,%ymm11,%ymm11") and level == 6:
        print(str_assertions([(13, 11)]))
    elif instr.startswith("(* vpsubw %ymm13,%ymm3,%ymm3") and level == 6:
        print(str_assertions([(13, 3)]))
    elif (instr.startswith("(* vmovdqa 0x140(%rsi),%ymm6") or instr.startswith("(* vmovdqa (%rdi),%ymm4")) and level == 6:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        print("\n(* ecut {0}, rcut {1} *)\n".format(ecut_id, rcut_id))
        level6_summary_ecut_id = ecut_id
        level6_algebras = get_algebra(
            args=[("{0}{1}".format(POLY_NAME, i + off*128),
                       2**(level+1),
                       ["L0x{:x}".format(ANS_BASE + 2 * (j + off*128)) for j in range(128)],
                       normalize(LEVEL3_TWIST[i//32 + off*4] * LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for i in range(128)],
            expn=1,
            mon_per_line=32)
        print("ecut")
        print(",\n".join(["{0} prove with [cuts [{1}]]".format(level6_algebras[i], level5_ecut_ids[off][i]) for i in range(128)]))
        print(";\n")
        ecut_id = ecut_id + 1
        for i in range(128):
            print("\n(* ecut {0} *)\n".format(ecut_id))
            print("ecut")
            print(level6_algebras[i])
            print("prove with [cuts [{0}]];\n".format(level6_summary_ecut_id))
            level6_ecut_ids[off].append(ecut_id)
            ecut_id = ecut_id + 1
        if off == 0:
            print("\n(* ecut {0}, rcut {1} *)\n".format(ecut_id, rcut_id))
            print("ecut true;")
            print(str_init_poly(off=1))
            ecut_id = ecut_id + 1
        (level, off) = (0, 1) if off == 0 else (7, 0)
        print_comment("===== Start of Level {}, off {} =====".format(level, off))

    # ========== Level 7 ==========
    elif instr.startswith("(* vpsubw %ymm8,%ymm12,%ymm8") and level == 7:
        print(str_assertions([(8, 12), (9, 13), (10, 14), (11, 15)]))
    elif (instr.startswith("(* vmovdqa 0x80(%rdi),%ymm4") or instr.startswith("(* #! <- SP = 0x7fffffff9a78 *)")) and level == 7:
        print_comment("===== End of Level {}, off {} =====".format(level, off))
        off = off + 1
        if off == 1:
            print_comment("===== Start of Level {}, off {} =====".format(level, off))
        elif off == 2:
            print("\n(* ecut {0}, rcut {1} *)\n".format(ecut_id, rcut_id))
            level7_algebras = get_algebra(
                args=[("{0}{1}".format(POLY_NAME, i + off*128),
                           2**(level+1),
                           ["L0x{:x}".format(ANS_BASE + 2 * j) for j in range(256)],
                           normalize(LEVEL3_TWIST[i//32 + off*4] * LEVEL7_TWIST[(i//4)%8] * get_ntt_mod_level3to7(i%4), P)) for off in range(2) for i in range(128)],
                           expn=1,
                mon_per_line=64)
            print("ecut")
            print(",\n".join(["{0} prove with [cuts [{1}]]".format(level7_algebras[i+off*128], level6_ecut_ids[off][i]) for off in range(2) for i in range(128)]))
            print(";\n")
            ecut_id = ecut_id + 1

    print(instr)

def str_post():
    return "\n".join([
        "{",
        "true",
        "&&",
        "true",
        "}"
    ])

def main():
    parser = ArgumentParser()
    parser.add_argument("cl_file", help="the nttmul_poly_ntt cl file to be processed")
    args = parser.parse_args()
    with open(args.cl_file) as f:
        # ========== proc main ==========
        print('proc main(\n')
        print(str_main_args())
        print('\n) =\n')
        # ========== pre-condition ==========
        print('{\n')
        print(str_precondition_algebra())
        print("\n&&\n")
        print(str_precondition_range())
        print('\n}\n')
        # ========== inits ==========
        print(str_inits())
        print(str_twiddles())
        print()
        print(str_init_poly_var())
        print(str_init_poly(off=0))
        # ========== program ==========
        print("\n\n#===== program start =====\n\n")
        for line in f.readlines():
            print_instr(line.strip())
        # ========== post-condition ==========
        print(str_post())


if __name__ == "__main__":
  main()
