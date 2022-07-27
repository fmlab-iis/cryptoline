#!/usr/bin/env python3

# 1. to_zdsl.py --no-main --no-pre --no-post test_sabermul_nttmul_poly_crt.gas > test_sabermul_nttmul_poly_crt_preprocessed.cl
# 2. ./test_sabermul_nttmul_poly_crt.py test_sabermul_nttmul_poly_crt_preprocessed.cl > test_sabermul_nttmul_poly_crt.cl

# q1 = 7681, root1 = 62, 2^(-16)%7681 = 900
# q2 = 10753, root = 10

# Inputs:
# %rdx = 0x55555555f7c0
# L0x555555560700-L0x55555556071e (_16XP = 7681, num = 16)
# L0x555555560780-L0x55555556079e (_16XMONT_PINV = -9, _16XMONT * P^-1 mod 2^16, num = 16)
# L0x5555555607a0-L0x5555555607be (_16XMONT = -3593, 2^16 mod P, num = 16)
# L0x555555560040-L0x55555556005e (_16XP = 10753, num = 16)
# L0x555555560fe0-L0x555555560ffe (CRT_U = 3563)
# L0x555555561000-L0x55555556101e (CRT_U_PINV = 32747)
# L0x555555560ec0-L0x555555560ede (KEM_Q-1 = 8192-1)
# 8191 = 0b0001111111111111

# L0x7fffffffc080-L0x7fffffffc27e (input coefficients #1, num = 256)
# L0x7fffffffc680-L0x7fffffffc87e (input coefficients #2, num = 256)
# L0x7fffffffa280-L0x7fffffffa47e (output coefficients)

import re, math
from argparse import ArgumentParser

KEM_N = 256
KEM_Q = 8192
P_7681 = 7681
P_10753 = 10753
PINV_7681 = -7679       # p**(-1) % (2**16), -7679 * 7681 = 1 (mod 2**16)
MONT_7681 = -3593       # 2**16 mod p, -3593 = 4088 (mod 7681)
MONT_PINV_7681 = -9     # (MONT * p**(-1)) % (2**16), -9*7681 = -3593 (mod 2**16)
ROOT_7681 = 62          # 62**256 = -1 (mod 7681)
CRT_U_PINV = 32747      # (CRT_U * PINV_10753) % (2**16), 3563 * (-10751) = 32747 (mod 2**16)
CRT_U = 3563            # ((7681**(-1)) * (2**16)) % 10753

_16XP_BASE_7681 = 0x555555560700
_16XP_BASE_10753 = 0x555555560040
_16XP_NUM = 16
_16XMONT_PINV_BASE_7681 = 0x555555560780
_16XMONT_PINV_NUM = 16
_16XMONT_BASE_7681 = 0x5555555607a0
_16XMONT_NUM = 16
CRT_U_BASE = 0x555555560fe0
CRT_U_NUM = 16
CRT_U_PINV_BASE = 0x555555561000
CRT_U_PINV_NUM = 16
KEM_Q_MINUS1_BASE = 0x555555560ec0
KEM_Q_MINUS1_NUM = 16

INPUT1_BASE = 0x7fffffffc080
INPUT2_BASE = 0x7fffffffc680
INPUT_NUM = 256
ANS_BASE = 0x7fffffffa280
ANS_NUM = 256

POLY_NAME = "inp_poly"
POLY_VAR = "x"

INPUT1_RANGE = [9676, 9277, 9277, 9676, 9277, 9277, 8878, 9277, 8878, 8878, 9676, 9277, 8878, 8878, 8878, 8878, 8878, 9277, 9277, 9277, 8878, 9277, 8878, 8878, 8878, 9676, 9676, 8878, 8878, 8878, 8878, 8878, 16680, 16625, 16560, 16682, 16590, 16598, 16573, 16616, 16600, 16581, 16643, 16589, 16555, 16555, 16540, 16595, 16564, 16584, 16597, 16613, 16572, 16654, 16556, 16618, 16592, 16617, 16661, 16506, 16501, 16509, 16554, 16555, 9609, 9559, 9509, 9609, 9459, 9559, 9459, 9584, 9509, 9409, 9584, 9478, 9409, 9403, 9434, 9509, 9459, 9509, 9534, 9478, 9484, 9509, 9434, 9459, 9459, 9559, 9609, 9403, 9409, 9353, 9434, 9378, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 8452, 4378, 4362, 4362, 4378, 4362, 4362, 4321, 4362, 4321, 4321, 4378, 4362, 4321, 4321, 4321, 4321, 4321, 4362, 4362, 4362, 4321, 4362, 4321, 4321, 4321, 4378, 4378, 4321, 4321, 4321, 4321, 4321, 4766, 4766, 4766, 4782, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4766, 4378, 4378, 4378, 4378, 4362, 4378, 4362, 4378, 4378, 4362, 4378, 4362, 4362, 4362, 4362, 4378, 4362, 4378, 4378, 4362, 4362, 4378, 4362, 4362, 4362, 4378, 4378, 4362, 4362, 4362, 4362, 4362, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305, 4305]

INPUT2_RANGE = [11262, 11431, 11431, 11431, 11262, 11431, 11431, 11431, 11431, 11431, 11262, 11431, 11262, 11262, 11262, 11262, 11262, 11600, 11262, 11431, 11262, 11262, 11262, 11262, 11267, 11262, 11262, 11431, 11262, 11262, 11262, 11262, 22661, 22817, 22916, 22815, 22756, 22837, 22741, 22890, 22899, 22863, 22846, 22915, 22747, 22725, 22734, 22748, 22812, 22904, 22880, 22896, 22787, 22862, 22675, 22791, 22862, 22716, 22716, 22820, 22821, 22769, 22679, 22738, 13436, 13881, 13908, 13970, 13813, 13858, 13839, 13808, 13975, 13975, 13753, 14048, 13591, 13563, 13528, 13699, 13816, 14090, 13684, 13940, 13852, 13826, 13622, 13845, 13834, 13729, 13516, 13902, 13742, 13631, 13547, 13518, 12077, 12079, 12080, 12079, 12078, 12079, 12078, 12080, 12080, 12080, 12079, 12080, 12078, 12078, 12078, 12078, 12079, 12080, 12080, 12080, 12078, 12080, 12077, 12078, 12080, 12077, 12077, 12079, 12079, 12078, 12077, 12078, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5409, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5406, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5447, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5419, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409, 5409]


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

def modP(n, p):
    n = n % p
    return n - p if n > p//2 else n

def flatten(ll):
    return [i for l in ll for i in l]

def ziplist(l1, l2):
    return list(zip(l1, l2))

def str_main_args():
    return "\n".join([
        "(* parameters *)\n",
        ",\n".join(join_chunks(["sint16 f{:03d}".format(i) for i in range(INPUT_NUM)] + ["sint16 g{:03d}".format(i) for i in range(INPUT_NUM)], ", ", 4))])

def str_precondition_algebra():
    return "\n".join([
        "(* algebraic precondition *)\n",
        "true"])

def str_precondition_range():
    return "\n".join([
        "(* range precondition *)\n",
        "and [",
        format(",\n".join(join_chunks(
            ["(-{0:5d})@16 <s f{1:03d}, f{1:03d} <s {0:5d}@16".format(INPUT1_RANGE[i], i) for i in range(INPUT_NUM)] +
            ["(-{0:5d})@16 <s g{1:03d}, g{1:03d} <s {0:5d}@16".format(INPUT2_RANGE[i], i) for i in range(INPUT_NUM)], ", ", 4))
        ),
        "]"])

def str_twiddles ():
    _16XP_7681 = [ P_7681 ] * _16XP_NUM
    _16XP_10753 = [ P_10753 ] * _16XP_NUM
    _16XMONT_PINV_7681 = [ MONT_PINV_7681 ] * _16XMONT_PINV_NUM
    _16XMONT_7681 = [ MONT_7681 ] * _16XMONT_NUM
    U_PINV = [ CRT_U_PINV ] * CRT_U_PINV_NUM
    U = [ CRT_U ] * CRT_U_NUM
    KEM_Q_MINUS1 = [ KEM_Q - 1 ] * KEM_Q_MINUS1_NUM
    twiddles = [
        ("_16XP_7681", _16XP_7681, _16XP_BASE_7681),
        ("_16XP_10753", _16XP_10753, _16XP_BASE_10753),
        ("_16XMONT_PINV_7681", _16XMONT_PINV_7681, _16XMONT_PINV_BASE_7681),
        ("_16XMONT_7681", _16XMONT_7681, _16XMONT_BASE_7681),
        ("CRT_U_PINV", U_PINV, CRT_U_PINV_BASE),
        ("CRT_U", U, CRT_U_BASE),
        ("KEM_Q-1", KEM_Q_MINUS1, KEM_Q_MINUS1_BASE)
    ]
    res = []
    for (name, arr, base) in twiddles:
        res.append("\n(* {} *)\n".format(name))
        res.append("\n".join(join_chunks(["mov L0x{:x} ({:6d})@sint16;".format(base + 2*i, arr[i]) for i in range (len(arr))], " ", 4)))
    return "\n".join(res)

def ntt_mod(n_expn, prime, mont, root, negacyclic, stage):
    num_rings = 2**stage
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

def str_assertions(pairs):
    equalities = []
    for (ymm1, ymm2) in pairs:
        for i in range(0, 16):
            equalities.append("mulLymm{0}_{2:x} = mulLymm{1}_{2:x}".format(ymm1, ymm2, i))
    return "assert true && and [\n{0}\n];\nassume and [\n{0}\n] && true;".format(",\n".join(join_chunks(equalities, ", ", 2)))

def str_assert_assume(asts, asus):
    return "\n".join([
        "assert",
        "  true",
        "  &&",
        "  and [",
        ",\n".join(join_chunks(asts, ",\n    ", 4, indent=4)),
        "  ];",
        "assume",
        "  and [",
        ",\n".join(join_chunks(asus, ",\n    ", 4, indent=4)),
        "  ]",
        "  &&",
        "  true;"
        ])

def str_ghost(typed_vars, easserts, rasserts):
    return "\n".join([
             "ghost {} :".format(", ".join(["{0}@{1}".format(var, typ) for (var, typ) in typed_vars])),
             "and [",
             "  {}".format("true" if len(easserts) == 0 else ",\n  ".join(easserts)),
             "] && and [",
             "  {}".format("true" if len(rasserts) == 0 else ",\n  ".join(rasserts)),
             "];"
           ])

def str_inits ():
    return "\n".join([
        "(* inits *)\n",
        str_ghost([("x{:03d}".format(i), "sint16") for i in range(INPUT_NUM)],
                  ["eqmod {0}{2:03d} {1}{2:03d} [{3}]".format("x", v, i, p) for i in range(INPUT_NUM) for (v, p) in [("f", P_7681), ("g", P_10753)]],
                  ["eqsmod {0}{2:03d} {1}{2:03d} {3}@16".format("x", v, i, p) for i in range(INPUT_NUM) for (v, p) in [("f", P_7681), ("g", P_10753)]]),
        "\n".join(["nondet {}@uint64;".format(x) for x in ["rax", "rbx", "rdx", "r8", "r9", "r10d", "L0x7fffffffa060", "L0x7fffffffa068", "L0x7fffffffa070", "L0x7fffffffa078"]]),
        "\n".join(join_chunks(["mov L0x{:x} f{:03d};".format(INPUT1_BASE + 2 * i, i) for i in range(INPUT_NUM)], " ", 4)),
        "\n".join(join_chunks(["mov L0x{:x} g{:03d};".format(INPUT2_BASE + 2 * i, i) for i in range(INPUT_NUM)], " ", 4))])

def str_init_poly_var(poly_var):
    return ("ghost {}@sint16 : true && true;").format(poly_var)

def str_init_poly (poly, poly_var, prefix, num):
    return "\n".join([
        "(* {} *)\n".format(poly),
        "ghost {}@bit :".format(poly),
        "{0} * {0} =".format(poly),
        "{} && true;".format(" +\n".join(join_chunks(["{0}{1:03d}*({2}**{1})".format (prefix, i, poly_var) for i in range(num)], " + ", 4)))])

def str_range_condition(args, left_rel, right_rel):
    return "  " + ",\n  ".join(join_chunks(["(-({1}))@16 {2} {0}, {0} {3} ({1})@16".format(ymm, r, left_rel, right_rel) for (ymm, r) in args], ", ", 2))

def make_ymms(ymms, off, num):
    return ["ymm{}_{:x}".format(ymm, off + i) for ymm in ymms for i in range(num)]

def make_eqmod(poly_name, ymms, coefs, mods, mon_per_line=4):
    return "\n".join([
        "eqmod",
        "  ({0} * {0})".format(poly_name),
        "  (",
        " +\n".join(join_chunks([ymms[i] if i == 0 else "{0}*({1}**{2})".format(ymms[i], coefs[i], i) for i in range(len(ymms))], " + ", mon_per_line, indent=4)),
        "  )",
        "  [{}]".format(", ".join(mods))
    ])

def get_algebra(args, expn, mon_per_line=4):
    return [
        make_eqmod(poly_name, ymms, [POLY_VAR if poly_var_mult == 1 else "({0}*{1})".format(poly_var_mult, POLY_VAR)] * len(ymms),
                       [str(P), "{0} - ({1})".format(POLY_VAR, m) if expn == 1 else "{0}**{2} - ({1})".format(POLY_VAR, m, expn)],
                       mon_per_line) for (poly_name, poly_var_mult, ymms, m) in args
    ]

def str_algebra(args, expn, mon_per_line=4):
    return ",\n".join(get_algebra(args, expn, mon_per_line))

def get_ntt_mod_level0to2(stage, i):
    return ntt_mod(n_expn=8, prime=P, mont=MONT, root=ROOT, negacyclic=True, stage=stage)[i]["modulo"]

def get_ntt_mod_level3to7(stage, i):
    return ntt_mod(n_expn=9, prime=P, mont=MONT, root=ROOT, negacyclic=False, stage=stage)[i]["modulo"]

def print_comment(str):
    print("(* {} *)".format(str))

idx = 0
gv = "gv"

def get_gvars(start, num):
    return [f"{gv}_{start + i}" for i in range(num)]

def print_instr(instr):
    global idx
    if instr.startswith("(* vpsubw %ymm11,%ymm10,%ymm9"):
        print(str_assertions([(10, 11)]))
    elif instr.startswith("and ymm8_0@sint16 ymm1_0 ymm8_0"):
        gvs = get_gvars(idx, 16)
        print(str_ghost([(v, "sint16") for v in gvs], [f"ymm8_{i:x} = {gvs[i]}" for i in range(16)], [f"ymm8_{i:x} = {gvs[i]}" for i in range(16)]))
    elif instr.startswith("(* vmovdqa64 %ymm8,"):
        gvs = get_gvars(idx, 16)
        print(str_assert_assume(
            [f"eqsmod ymm8_{i:x} {gvs[i]} {KEM_Q}@16" for i in range(16)],
            [f"eqmod ymm8_{i:x} {gvs[i]} {KEM_Q}" for i in range(16)]
        ))
        idx = idx + 16
#    elif instr.startswith("(* vpsubw %ymm9,%ymm8,%ymm8"):
#        print(str_assertions([(8, 9)]))

    print(instr)

def str_post():
    return "{ true && true }"

def main():
    parser = ArgumentParser()
    parser.add_argument("cl_file", help="the nttmul_poly_crt cl file to be processed")
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
        #print(str_init_poly_var(POLY_VAR))
        #print(str_init_poly(poly=POLY_NAME, poly_var=POLY_VAR, prefix='f', num=INPUT_NUM))
        # ========== program ==========
        print("\n\n#===== program start =====\n\n")
        for line in f.readlines():
            print_instr(line.strip())
        # ========== post-condition ==========
        print(str_post())


if __name__ == "__main__":
  main()
