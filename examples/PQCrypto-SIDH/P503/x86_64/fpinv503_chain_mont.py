#!/usr/bin/env python3

# Tune the CL file produced by `to_zdsl.py -t uint64 --no-main --no-pre --no-post fpinv503_chain_mont.gas`.

import re, math
from argparse import ArgumentParser

WORD_SIZE = 64
VTYP = f"uint{WORD_SIZE}"
OFFSET = WORD_SIZE // 8
NWORDS_FIELD = 8
p503 = [ 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
         0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E ]
p503p1 = [ 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xAC00000000000000,
           0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E ]

Zp503 = 0
for i in range(len(p503)):
    Zp503 = Zp503 + p503[i] * (2**(i*64))

IN = "a"
IN_BASE=0x7fffffffdbd0
OUT = "c"
P503P1_BASE=0x555555569340
TT = "tt"
TT_BASE=0x7fffffffd780
T = [f"t{i}_" for i in range(15)]
T_BASE = [0x7fffffffd7c0 + i * OFFSET * NWORDS_FIELD for i in range(15)]
p503x2_1 = "(2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64, $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)"

def limbs(a):
    return "limbs {0} [{1}]".format(WORD_SIZE, ", ".join(f"{a}{i}" for i in range(NWORDS_FIELD)))

def str_mov_var2addr(addr, var, ty=None):
    return "\n".join([f"mov L0x{addr + i * OFFSET:x} {var}{i}{'' if ty == None else '@' + ty};" for i in range(NWORDS_FIELD)])

def str_mov_addr2var(var, addr):
    return "\n".join([f"mov {var}{i} L0x{addr + i * OFFSET:x};" for i in range(NWORDS_FIELD)])

def str_preamble():
    return "\n".join(
        [f"const p503_{i} = 0x{p503[i]:016X}" for i in range(NWORDS_FIELD)] +
        [f"const p503p1_{i} = 0x{p503p1[i]:016X}" for i in range(NWORDS_FIELD)]
        )

def str_main_args():
    return ", ".join(f"{IN}{i}@{VTYP}" for i in range(NWORDS_FIELD))

def str_precondition():
    return "\n".join([
        "  true",
        "  &&",
        f"  {limbs(IN)} <=u {p503x2_1}"
        ])

def str_inits():
    return "\n".join([
        "(* inputs *)",
        str_mov_var2addr(IN_BASE, IN),
        "(* constants *)",
        str_mov_var2addr(P503P1_BASE, "$p503p1_", ty=VTYP),
        "(* dontcare *)",
        "\n".join(f"nondet {v}@{VTYP};" for v in ["fs0x28", "r14", "rdi", "rsp"])
        ])

cutno = 0

def str_cut(r, e, a, b, epwss, rpwss):
    global cutno

    res = "\n".join([
        f"(* cut #{cutno} *)",
        "cut",
        "  and [",
        f"    eqmod ( 2**{e} * {limbs(r)} )",
        f"          ( ({limbs(a)}) * ({limbs(b)}) )",
        f"          ( {limbs('$p503_')} )",
        "  ]" + ("" if epwss == [] else " prove with [{0}]".format(", ".join(epwss))),
        "  &&",
        "  and [",
        f"    {limbs(r)} <=u {p503x2_1}",
        "  ]" + ("" if rpwss == [] else " prove with [{0}]".format(", ".join(rpwss))) + ";"
        ])
    cutno = cutno + 1
    return res

retq = 0
tti = 0

def str_sqr_tt(epwss, rpwss):
    global tti
    res = "\n".join([
        str_mov_addr2var(f"{TT}_{tti + 1}_", TT_BASE),
        str_cut(f"{TT}_{tti + 1}_", 512, f"{TT}_{tti}_", f"{TT}_{tti}_", epwss, rpwss)
        ])
    tti = tti + 1
    return res
def str_mul_x_tt(x, epwss, rpwss):
    global tti
    res = "\n".join([
        str_mov_addr2var(f"{TT}_{tti + 1}_", TT_BASE),
        str_cut(f"{TT}_{tti + 1}_", 512, x, f"{TT}_{tti}_", epwss, rpwss)
        ])
    tti = tti + 1
    return res

cuts = []
cuts.append("\n".join([
    "# fpsqr_mont(a, tt);",
    str_mov_addr2var(f"{TT}_{tti}_", TT_BASE),
    str_cut(f"{TT}_{tti}_", 512, IN, IN, [], [])
    ]))
cuts.append("\n".join([
    "# fpmul_mont(a, tt, t[0]);",
    str_mov_addr2var(T[0], T_BASE[0]),
    str_cut(T[0], 512, IN, f"{TT}_{tti}_", [], ["precondition"])
    ]))
for i in range(14):
    cuts.append("\n".join([
        f"# for (i = 0; i <= 13; i++) fpmul_mont(t[i], tt, t[i+1]); // i = {i}",
        str_mov_addr2var(T[i + 1], T_BASE[i + 1]),
        str_cut(T[i + 1], 512, T[i], f"{TT}_{tti}_", [], ["cuts [0]"])
        ]))
cutno_t = range(1, 16)
tti_copy = tti + 1
tti = tti + 1
# -1 => a, i => T[i]
actions = [ range( 8), -1, range( 5),  8, range( 5),  6, range( 6),  9, range( 7),  0,
            range( 7), -1, range( 7),  6, range( 7),  2, range( 5),  8, range( 7), -1,
            range( 8), 10, range( 5),  0, range( 6), 10, range( 5), 10, range( 5),  5,
            range( 5),  2, range( 5),  6, range( 5),  3, range( 6),  5, range(12), 12,
            range( 5),  8, range( 5),  6, range( 5), 12, range( 6), 11, range( 8),  6,
            range( 5),  5, range( 5), 14, range( 7), 14, range( 5),  5, range( 5),  6,
            range( 8),  8, range( 5), -1, range( 8),  4, range( 5),  6, range( 5),  5,
            range( 8),  7, range( 5), -1, range( 5),  0, range( 5), 11, range( 5), 13,
            range( 8),  1, range( 6), 10 ]
for j in range(49):
    actions.append(range(5))
    actions.append(14)

after_1st_copy = True
for act in actions:
    if isinstance(act, range):
        for i in act:
            cuts.append("\n".join([
                f"# for (i = 0; i < {act}; i++) fpsqr_mont(tt, tt); // i = {i}",
                str_sqr_tt([], ["precondition"] if after_1st_copy else [])
                ]))
            after_1st_copy = False
    elif act == -1:
        cuts.append("\n".join([
            "# fpmul_mont(a, tt, tt);",
            str_mul_x_tt(IN, [], ["precondition"])
            ]))
    else:
        cuts.append("\n".join([
            f"# fpmul_mont(t[{act}], tt, tt);",
            str_mul_x_tt(T[act], [], [f"cuts [{cutno_t[act]}]"])
            ]))
cuts.append(str_mov_addr2var(OUT, IN_BASE))

def print_instr(instr):
    global retq, tti, cuts

    if instr == "(* mov    %r8,%rdx                                 #! PC = 0x555555565639 *)":
        print("assert true && overflow = 0@1;")
        print("assume overflow = 0 && true;")
    elif instr.startswith("(* #retq"):
        if len(cuts) > 0:
            print(cuts.pop(0))
        retq = retq + 1

    print(instr)

    if instr.startswith("mov L0x7fffffffd7b8 xmm3_H;"):                       # pcopy(a, tt);
        print("# pcopy(a, tt);")
        print(str_mov_addr2var(f"{TT}_{tti_copy}_", TT_BASE))

def str_post():
    exp = (Zp503 - 3) // 4
    return "\n".join([
        f"  eqmod ( 2**{(exp - 1) * 512} * {limbs(OUT)} )",
        f"        ( ({limbs(IN)}) ** ({exp}) )",
        f"        ( {limbs('$p503_')} )",
         "        prove with [all cuts]"
        "&&",
        f"  {limbs(OUT)} <=u {p503x2_1}"
        ])

def main():
    parser = ArgumentParser()
    parser.add_argument("cl_file", help="the fpinv503_chain_mont CL file to be processed")
    args = parser.parse_args()
    with open(args.cl_file) as f:
        # ========== preamble ==========
        print(str_preamble())
        print()
        # ========== proc main ==========
        print('proc main(', end='')
        print(str_main_args(), end='')
        print(') =')
        # ========== pre-condition ==========
        print('{')
        print(str_precondition())
        print('}')
        print()
        # ========== inits ==========
        print(str_inits())
        print()
        # ========== program ==========
        print("\n#===== program start =====\n")
        for line in f.readlines():
            print_instr(line.strip())
        print()
        # ========== post-condition ==========
        print('{')
        print(str_post())
        print('}')

if __name__ == "__main__":
  main()

