#!/usr/bin/env python3

# 1. to_zdsl.py --no-main --no-pre --no-post test_speed256nx3_nttmul_poly_basemul_montgomery.gas > test_speed256nx3_nttmul_poly_basemul_montgomery_preprocessed.cl
# 2. ./test_speed256nx3_nttmul_poly_basemul_montgomery7681.py test_speed256nx3_nttmul_poly_basemul_montgomery_preprocessed.cl > test_speed256nx3_nttmul_poly_basemul_montgomery7681.cl

import re, math
from argparse import ArgumentParser

P = 7681
PINV = -7679
F = 1912
F_PINV = -2184
_16XP_BASE = 0x5555555607c0
_16XP_NUM = 16
_16XPINV_BASE = 0x5555555607e0
_16XPINV_NUM = 16
_16XF_PINV_BASE = 0x555555560880
_16XF_PINV_NUM = 16
_16XF_BASE = 0x5555555608a0
_16XF_NUM = 16
INPUT_NUM = 256
INPUT_TYPE = "sint16"
INPUT1_VAR = "in1"
INPUT2_VAR = "in2"
INPUT1_BASE = 0x7fffffff6d20
INPUT2_BASE = 0x7fffffff6b20
INPUT1_RANGE = [17756, 17756, 13199, 13199, 18617, 18617, 13624, 13624, 18291, 18291, 13437, 13437, 17714, 17714, 13517, 13517, 17576, 17576, 13543, 13543, 17325, 17325, 12884, 12884, 17768, 17768, 13245, 13245, 17583, 17583, 13180, 13180, 17756, 17756, 13199, 13199, 18696, 18696, 13624, 13624, 18359, 18359, 13437, 13437, 17756, 17756, 13517, 13517, 17553, 17553, 13527, 13527, 17344, 17344, 12884, 12884, 17808, 17808, 13245, 13245, 17588, 17588, 13180, 13180, 17756, 17756, 13199, 13199, 18696, 18696, 13624, 13624, 18359, 18359, 13437, 13437, 17760, 17760, 13517, 13517, 17603, 17603, 13570, 13570, 17344, 17344, 12884, 12884, 17811, 17811, 13245, 13245, 17588, 17588, 13180, 13180, 17756, 17756, 13199, 13199, 18624, 18624, 13583, 13583, 18351, 18351, 13437, 13437, 17750, 17750, 13511, 13511, 17516, 17516, 13513, 13513, 17359, 17359, 12884, 12884, 17806, 17806, 13236, 13236, 17559, 17559, 13180, 13180, 17756, 17756, 13199, 13199, 18699, 18699, 13583, 13583, 18378, 18378, 13437, 13437, 17751, 17751, 13511, 13511, 17520, 17520, 13513, 13513, 17359, 17359, 12884, 12884, 17788, 17788, 13218, 13218, 17555, 17555, 13165, 13165, 17756, 17756, 13199, 13199, 18681, 18681, 13640, 13640, 18332, 18332, 13437, 13437, 17741, 17741, 13517, 13517, 17580, 17580, 13554, 13554, 17330, 17330, 12884, 12884, 17792, 17792, 13245, 13245, 17548, 17548, 13180, 13180, 17756, 17756, 13199, 13199, 18681, 18681, 13640, 13640, 18324, 18324, 13437, 13437, 17781, 17781, 13542, 13542, 17580, 17580, 13554, 13554, 17330, 17330, 12884, 12884, 17792, 17792, 13245, 13245, 17549, 17549, 13181, 13181, 17756, 17756, 13199, 13199, 18639, 18639, 13567, 13567, 18359, 18359, 13437, 13437, 17729, 17729, 13486, 13486, 17535, 17535, 13502, 13502, 17331, 17331, 12871, 12871, 17773, 17773, 13210, 13210, 17558, 17558, 13150, 13150]
INPUT2_RANGE = [17756, 17756, 13199, 13199, 18551, 18551, 13583, 13583, 18291, 18291, 13437, 13437, 17704, 17704, 13511, 13511, 17539, 17539, 13513, 13513, 17311, 17311, 12884, 12884, 17730, 17730, 13210, 13210, 17528, 17528, 13165, 13165, 17756, 17756, 13199, 13199, 18624, 18624, 13583, 13583, 18310, 18310, 13437, 13437, 17720, 17720, 13511, 13511, 17539, 17539, 13513, 13513, 17319, 17319, 12884, 12884, 17765, 17765, 13218, 13218, 17522, 17522, 13149, 13149, 17756, 17756, 13199, 13199, 18630, 18630, 13583, 13583, 18345, 18345, 13437, 13437, 17720, 17720, 13511, 13511, 17539, 17539, 13513, 13513, 17319, 17319, 12884, 12884, 17799, 17799, 13236, 13236, 17533, 17533, 13165, 13165, 17756, 17756, 13199, 13199, 18599, 18599, 13583, 13583, 18324, 18324, 13437, 13437, 17722, 17722, 13511, 13511, 17516, 17516, 13513, 13513, 17292, 17292, 12871, 12871, 17741, 17741, 13210, 13210, 17496, 17496, 13134, 13134, 17756, 17756, 13199, 13199, 18583, 18583, 13567, 13567, 18324, 18324, 13437, 13437, 17712, 17712, 13486, 13486, 17516, 17516, 13513, 13513, 17303, 17303, 12871, 12871, 17741, 17741, 13210, 13210, 17507, 17507, 13134, 13134, 17756, 17756, 13199, 13199, 18624, 18624, 13583, 13583, 18310, 18310, 13437, 13437, 17707, 17707, 13511, 13511, 17516, 17516, 13513, 13513, 17319, 17319, 12884, 12884, 17744, 17744, 13236, 13236, 17522, 17522, 13149, 13149, 17756, 17756, 13199, 13199, 18640, 18640, 13599, 13599, 18310, 18310, 13437, 13437, 17707, 17707, 13511, 13511, 17530, 17530, 13527, 13527, 17319, 17319, 12884, 12884, 17776, 17776, 13245, 13245, 17537, 17537, 13164, 13164, 17756, 17756, 13199, 13199, 18608, 18608, 13567, 13567, 18327, 18327, 13437, 13437, 17710, 17710, 13486, 13486, 17512, 17512, 13486, 13486, 17306, 17306, 12871, 12871, 17757, 17757, 13210, 13210, 17517, 17517, 13149, 13149]
OUTPUT_NUM = 256
OUTPUT_BASE = 0x7fffffff6d20
OUTPUT_RANGE = [4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199, 4318, 4318, 4199, 4199]

def join_chunks(xs, glue, n, indent=0):
    return [" " * indent + glue.join(xs[i:i + n]) for i in range(0, len(xs), n)]

def str_assertions(pairs):
    equalities = []
    for (ymm1, ymm2) in pairs:
        for i in range(0, 16):
            equalities.append("mulLymm{0}_{2:x} = mulLymm{1}_{2:x}".format(ymm1, ymm2, i))
    return "assert true && and [\n{0}\n];\nassume and [\n{0}\n] && true;".format(",\n".join(join_chunks(equalities, ", ", 2)))

def str_main_args():
    return ", ".join(["{0}_{1:03d}@{2}".format(var, i, INPUT_TYPE) for var in [INPUT1_VAR, INPUT2_VAR] for i in range(INPUT_NUM)])

def str_precondition_algebra():
    return "true"

def str_precondition_range():
    return "\n".join([
        "and [",
        ",\n".join(join_chunks(["(-{0})@16 <s {1}_{2:03d}, {1}_{2:03d} <s {0}@16".format(ir[i], ivar, i)
                                    for (ivar, ir) in [(INPUT1_VAR, INPUT1_RANGE), (INPUT2_VAR, INPUT2_RANGE)] for i in range(INPUT_NUM)], ", ", 2, 2)),
       "]"])

def str_inits():
    return "\n".join([
        "(* inits *)",
    ] +
    ["\n".join(join_chunks(["mov L0x{0:x} {1}_{2:03d};".format(INPUT1_BASE + i * 2, INPUT1_VAR, i) for i in range(INPUT_NUM)], " ", 4))] +
    ["\n".join(join_chunks(["mov L0x{0:x} {1}_{2:03d};".format(INPUT2_BASE + i * 2, INPUT2_VAR, i) for i in range(INPUT_NUM)], " ", 4))] +
    ["\n(* {} *)\n".format(name) + "\n".join(join_chunks(["mov L0x{0:x} ({1})@{2};".format(base + i * 2, val, INPUT_TYPE) for i in range(num)], " ", 4))
             for (name, base, num, val) in [ ("_16XP", _16XP_BASE, _16XP_NUM, P), ("_16XPINV", _16XPINV_BASE, _16XPINV_NUM, PINV),
                                             ("_16XF_PINV", _16XF_PINV_BASE, _16XF_PINV_NUM, F_PINV), ("_16XF", _16XF_BASE, _16XF_NUM, F)]])

def print_instr(instr):
    if instr.startswith("(* vpsubw %ymm3,%ymm4,%ymm3"):
        print(str_assertions([(3, 4), (5, 6), (7, 8), (9, 10)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm3,%ymm3"):
        print(str_assertions([(7, 3)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm4,%ymm4"):
        print(str_assertions([(7, 4)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm5,%ymm5"):
        print(str_assertions([(7, 5)]))
    elif instr.startswith("(* vpsubw %ymm7,%ymm6,%ymm6"):
        print(str_assertions([(7, 6)]))

    print(instr)

def str_postcondition_algebra():
    return "\n".join([
        "and [",
        "  " + ",\n  ".join(["eqmod ({0}_{2:03d} * {1}_{2:03d}) (2**8 * L0x{3:x}) [{4}]".format(INPUT1_VAR, INPUT2_VAR, i, OUTPUT_BASE + i * 2, P)  for i in range(OUTPUT_NUM)]),
        "]"
    ])

def str_postcondition_range():
    return "\n".join([
        "and [",
        ",\n".join(join_chunks(["(-{0})@16 <s L0x{1:x}, L0x{1:x} <s {0}@16".format(OUTPUT_RANGE[i], OUTPUT_BASE + i * 2)
                                    for i in range(OUTPUT_NUM)], ", ", 2, 2)),
       "]"])

def main():
    parser = ArgumentParser()
    parser.add_argument("cl_file", help="the nttmul_poly_basemul_montgomery cl file to be processed")
    args = parser.parse_args()
    with open(args.cl_file) as f:
        # ========== proc main ==========
        print('proc main(\n')
        print(str_main_args())
        print('\n) =\n')
        # ========== pre-condition ==========
        print('{\n')
        print("(* algebraic precondition *)\n")
        print(str_precondition_algebra())
        print("\n&&\n")
        print("(* range precondition *)\n")
        print(str_precondition_range())
        print('\n}\n')
        # ========== inits ==========
        print(str_inits())
        print()
        # ========== program ==========
        print("\n\n#===== program start =====\n\n")
        for line in f.readlines():
            print_instr(line.strip())
        # ========== post-condition ==========
        print('{\n')
        print("(* algebraic postcondition *)\n")
        print(str_postcondition_algebra())
        print("\n&&\n")
        print("(* range postcondition *)\n")
        print(str_postcondition_range())
        print('\n}')

if __name__ == "__main__":
  main()