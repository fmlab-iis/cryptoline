#!/usr/bin/env python3

from argparse import ArgumentParser

#       0 ... 64 ... 128 ... 192 ... 256
#  in00 | v0  | v64  | ...       | v192 |
#  in01 | v1  | v65  | ...       | v193 |
#  ...  | ... | ...  | ...       | ...  |
#  in62 | v62 | v126 | ...       | v254 |
#  in63 | v63 | v127 | ...       | v255 |
#         0  1  2 ...  63
# out00 |  |  |  |   |   |
# out01 |  |  |  |   |   |
# ...   |v0|v1|v2|...|v63| ...
# out62 |  |  |  |   |   |
# out63 |  |  |  |   |   |
#
# unit of transpose: 64x64

def mkpre():
    return """proc main (bit[256] %in00, bit[256] %in01, bit[256] %in02, bit[256] %in03,
           bit[256] %in04, bit[256] %in05, bit[256] %in06, bit[256] %in07,
           bit[256] %in08, bit[256] %in09, bit[256] %in10, bit[256] %in11,
           bit[256] %in12, bit[256] %in13, bit[256] %in14, bit[256] %in15,
           bit[256] %in16, bit[256] %in17, bit[256] %in18, bit[256] %in19,
           bit[256] %in20, bit[256] %in21, bit[256] %in22, bit[256] %in23,
           bit[256] %in24, bit[256] %in25, bit[256] %in26, bit[256] %in27,
           bit[256] %in28, bit[256] %in29, bit[256] %in30, bit[256] %in31,
           bit[256] %in32, bit[256] %in33, bit[256] %in34, bit[256] %in35,
           bit[256] %in36, bit[256] %in37, bit[256] %in38, bit[256] %in39,
           bit[256] %in40, bit[256] %in41, bit[256] %in42, bit[256] %in43,
           bit[256] %in44, bit[256] %in45, bit[256] %in46, bit[256] %in47,
           bit[256] %in48, bit[256] %in49, bit[256] %in50, bit[256] %in51,
           bit[256] %in52, bit[256] %in53, bit[256] %in54, bit[256] %in55,
           bit[256] %in56, bit[256] %in57, bit[256] %in58, bit[256] %in59,
           bit[256] %in60, bit[256] %in61, bit[256] %in62, bit[256] %in63) =
{
  true
  &&
  true
}

mov %L0x555555599020 (0x5555555555555555@bit[64] ++ 0x5555555555555555@bit[64] ++
                      0x5555555555555555@bit[64] ++ 0x5555555555555555@bit[64]); (* MASK0_0 *)
mov %L0x555555599040 (0xAAAAAAAAAAAAAAAA@bit[64] ++ 0xAAAAAAAAAAAAAAAA@bit[64] ++
                      0xAAAAAAAAAAAAAAAA@bit[64] ++ 0xAAAAAAAAAAAAAAAA@bit[64]); (* MASK0_1 *)
mov %L0x555555599060 (0x3333333333333333@bit[64] ++ 0x3333333333333333@bit[64] ++
                      0x3333333333333333@bit[64] ++ 0x3333333333333333@bit[64]); (* MASK1_0 *)
mov %L0x555555599080 (0xCCCCCCCCCCCCCCCC@bit[64] ++ 0xCCCCCCCCCCCCCCCC@bit[64] ++
                      0xCCCCCCCCCCCCCCCC@bit[64] ++ 0xCCCCCCCCCCCCCCCC@bit[64]); (* MASK1_1 *)
mov %L0x5555555990a0 (0x0F0F0F0F0F0F0F0F@bit[64] ++ 0x0F0F0F0F0F0F0F0F@bit[64] ++
                      0x0F0F0F0F0F0F0F0F@bit[64] ++ 0x0F0F0F0F0F0F0F0F@bit[64]); (* MASK2_0 *)
mov %L0x5555555990c0 (0xF0F0F0F0F0F0F0F0@bit[64] ++ 0xF0F0F0F0F0F0F0F0@bit[64] ++
                      0xF0F0F0F0F0F0F0F0@bit[64] ++ 0xF0F0F0F0F0F0F0F0@bit[64]); (* MASK2_1 *)
mov %L0x5555555990e0 (0x00FF00FF00FF00FF@bit[64] ++ 0x00FF00FF00FF00FF@bit[64] ++
                      0x00FF00FF00FF00FF@bit[64] ++ 0x00FF00FF00FF00FF@bit[64]); (* MASK3_0 *)
mov %L0x555555599100 (0xFF00FF00FF00FF00@bit[64] ++ 0xFF00FF00FF00FF00@bit[64] ++
                      0xFF00FF00FF00FF00@bit[64] ++ 0xFF00FF00FF00FF00@bit[64]); (* MASK3_1 *)
mov %L0x555555599120 (0x0000FFFF0000FFFF@bit[64] ++ 0x0000FFFF0000FFFF@bit[64] ++
                      0x0000FFFF0000FFFF@bit[64] ++ 0x0000FFFF0000FFFF@bit[64]); (* MASK4_0 *)
mov %L0x555555599140 (0xFFFF0000FFFF0000@bit[64] ++ 0xFFFF0000FFFF0000@bit[64] ++
                      0xFFFF0000FFFF0000@bit[64] ++ 0xFFFF0000FFFF0000@bit[64]); (* MASK4_1 *)
mov %L0x555555599160 (0x00000000FFFFFFFF@bit[64] ++ 0x00000000FFFFFFFF@bit[64] ++
                      0x00000000FFFFFFFF@bit[64] ++ 0x00000000FFFFFFFF@bit[64]); (* MASK5_0 *)
mov %L0x555555599180 (0xFFFFFFFF00000000@bit[64] ++ 0xFFFFFFFF00000000@bit[64] ++
                      0xFFFFFFFF00000000@bit[64] ++ 0xFFFFFFFF00000000@bit[64]); (* MASK5_1 *)

mov %L0x7fffffc2b6a0 %in00;
mov %L0x7fffffc2b6c0 %in01;
mov %L0x7fffffc2b6e0 %in02;
mov %L0x7fffffc2b700 %in03;
mov %L0x7fffffc2b720 %in04;
mov %L0x7fffffc2b740 %in05;
mov %L0x7fffffc2b760 %in06;
mov %L0x7fffffc2b780 %in07;
mov %L0x7fffffc2b7a0 %in08;
mov %L0x7fffffc2b7c0 %in09;
mov %L0x7fffffc2b7e0 %in10;
mov %L0x7fffffc2b800 %in11;
mov %L0x7fffffc2b820 %in12;
mov %L0x7fffffc2b840 %in13;
mov %L0x7fffffc2b860 %in14;
mov %L0x7fffffc2b880 %in15;
mov %L0x7fffffc2b8a0 %in16;
mov %L0x7fffffc2b8c0 %in17;
mov %L0x7fffffc2b8e0 %in18;
mov %L0x7fffffc2b900 %in19;
mov %L0x7fffffc2b920 %in20;
mov %L0x7fffffc2b940 %in21;
mov %L0x7fffffc2b960 %in22;
mov %L0x7fffffc2b980 %in23;
mov %L0x7fffffc2b9a0 %in24;
mov %L0x7fffffc2b9c0 %in25;
mov %L0x7fffffc2b9e0 %in26;
mov %L0x7fffffc2ba00 %in27;
mov %L0x7fffffc2ba20 %in28;
mov %L0x7fffffc2ba40 %in29;
mov %L0x7fffffc2ba60 %in30;
mov %L0x7fffffc2ba80 %in31;
mov %L0x7fffffc2baa0 %in32;
mov %L0x7fffffc2bac0 %in33;
mov %L0x7fffffc2bae0 %in34;
mov %L0x7fffffc2bb00 %in35;
mov %L0x7fffffc2bb20 %in36;
mov %L0x7fffffc2bb40 %in37;
mov %L0x7fffffc2bb60 %in38;
mov %L0x7fffffc2bb80 %in39;
mov %L0x7fffffc2bba0 %in40;
mov %L0x7fffffc2bbc0 %in41;
mov %L0x7fffffc2bbe0 %in42;
mov %L0x7fffffc2bc00 %in43;
mov %L0x7fffffc2bc20 %in44;
mov %L0x7fffffc2bc40 %in45;
mov %L0x7fffffc2bc60 %in46;
mov %L0x7fffffc2bc80 %in47;
mov %L0x7fffffc2bca0 %in48;
mov %L0x7fffffc2bcc0 %in49;
mov %L0x7fffffc2bce0 %in50;
mov %L0x7fffffc2bd00 %in51;
mov %L0x7fffffc2bd20 %in52;
mov %L0x7fffffc2bd40 %in53;
mov %L0x7fffffc2bd60 %in54;
mov %L0x7fffffc2bd80 %in55;
mov %L0x7fffffc2bda0 %in56;
mov %L0x7fffffc2bdc0 %in57;
mov %L0x7fffffc2bde0 %in58;
mov %L0x7fffffc2be00 %in59;
mov %L0x7fffffc2be20 %in60;
mov %L0x7fffffc2be40 %in61;
mov %L0x7fffffc2be60 %in62;
mov %L0x7fffffc2be80 %in63;
"""

def mkoutput():
    return """mov %out00 %L0x7fffffc2b6a0;
mov %out01 %L0x7fffffc2b6c0;
mov %out02 %L0x7fffffc2b6e0;
mov %out03 %L0x7fffffc2b700;
mov %out04 %L0x7fffffc2b720;
mov %out05 %L0x7fffffc2b740;
mov %out06 %L0x7fffffc2b760;
mov %out07 %L0x7fffffc2b780;
mov %out08 %L0x7fffffc2b7a0;
mov %out09 %L0x7fffffc2b7c0;
mov %out10 %L0x7fffffc2b7e0;
mov %out11 %L0x7fffffc2b800;
mov %out12 %L0x7fffffc2b820;
mov %out13 %L0x7fffffc2b840;
mov %out14 %L0x7fffffc2b860;
mov %out15 %L0x7fffffc2b880;
mov %out16 %L0x7fffffc2b8a0;
mov %out17 %L0x7fffffc2b8c0;
mov %out18 %L0x7fffffc2b8e0;
mov %out19 %L0x7fffffc2b900;
mov %out20 %L0x7fffffc2b920;
mov %out21 %L0x7fffffc2b940;
mov %out22 %L0x7fffffc2b960;
mov %out23 %L0x7fffffc2b980;
mov %out24 %L0x7fffffc2b9a0;
mov %out25 %L0x7fffffc2b9c0;
mov %out26 %L0x7fffffc2b9e0;
mov %out27 %L0x7fffffc2ba00;
mov %out28 %L0x7fffffc2ba20;
mov %out29 %L0x7fffffc2ba40;
mov %out30 %L0x7fffffc2ba60;
mov %out31 %L0x7fffffc2ba80;
mov %out32 %L0x7fffffc2baa0;
mov %out33 %L0x7fffffc2bac0;
mov %out34 %L0x7fffffc2bae0;
mov %out35 %L0x7fffffc2bb00;
mov %out36 %L0x7fffffc2bb20;
mov %out37 %L0x7fffffc2bb40;
mov %out38 %L0x7fffffc2bb60;
mov %out39 %L0x7fffffc2bb80;
mov %out40 %L0x7fffffc2bba0;
mov %out41 %L0x7fffffc2bbc0;
mov %out42 %L0x7fffffc2bbe0;
mov %out43 %L0x7fffffc2bc00;
mov %out44 %L0x7fffffc2bc20;
mov %out45 %L0x7fffffc2bc40;
mov %out46 %L0x7fffffc2bc60;
mov %out47 %L0x7fffffc2bc80;
mov %out48 %L0x7fffffc2bca0;
mov %out49 %L0x7fffffc2bcc0;
mov %out50 %L0x7fffffc2bce0;
mov %out51 %L0x7fffffc2bd00;
mov %out52 %L0x7fffffc2bd20;
mov %out53 %L0x7fffffc2bd40;
mov %out54 %L0x7fffffc2bd60;
mov %out55 %L0x7fffffc2bd80;
mov %out56 %L0x7fffffc2bda0;
mov %out57 %L0x7fffffc2bdc0;
mov %out58 %L0x7fffffc2bde0;
mov %out59 %L0x7fffffc2be00;
mov %out60 %L0x7fffffc2be20;
mov %out61 %L0x7fffffc2be40;
mov %out62 %L0x7fffffc2be60;
mov %out63 %L0x7fffffc2be80;
"""

r = []
for k in range(4):
    for i in range(64):
        in_vec = f"%in{i:02d}[{64*k}:{64*(k+1)}]"
        in_vec = f"{in_vec:>14}"
        out_vs_by_4 = []
        for j in range(64//4):
            tmp = []
            for l in range(4):
                v = f"%out{l+j*4:02d}[{k*64+i}]"
                tmp.append(f"{v:>11}")
            out_vs_by_4.append(", ".join(tmp))
        out_vs = ",\n                      ".join(out_vs_by_4)
        out_vec = f"[{out_vs}]"
        r.append(f"{in_vec} = {out_vec}")
algs = "  and [\n" + "    " + ",\n    ".join(r) + "\n  ]"

r = []
for k in range(4):
    for i in range(64):
        in_vec = f"%in{i:02d}[{64*k}:{64*(k+1)}]"
        in_vec = f"join ({in_vec:>14})"
        out_vs_by_4 = []
        for j in range(64//4):
            tmp = []
            for l in range(4):
                v = f"%out{l+j*4:02d}[{k*64+i}]"
                tmp.append(f"{v:>11}")
            out_vs_by_4.append(", ".join(tmp))
        out_vs = ",\n                                  ".join(out_vs_by_4)
        out_vec = f"join [{out_vs}]"
        r.append(f"{in_vec} = {out_vec}")
rngs = "  and [\n" + "    " + ",\n    ".join(r) + "\n  ]"

def mkcut():
    return f"cut\n  true\n  &&\n{rngs};"

def mkassume():
    return f"assume\n{algs}\n  &&\n{rngs};"

def mkpost():
    return "\n".join([
        "{",
        f"{algs}",
        "  &&",
        f"{rngs}",
        "}"
        ])

def main():
    parser = ArgumentParser(description='Print precondition+initialization, output assignments, cut/assume pair, or postcondition')
    parser.add_argument('--print', choices=['pre', 'output', 'cut', 'post'])
    args = parser.parse_args()
    if args.print == 'pre':
        print(mkpre())
    elif args.print == 'output':
        print(mkoutput())
    elif args.print == 'cut':
        print(mkcut())
        print(mkassume())
    elif args.print == 'post':
        print(mkpost())

if __name__ == "__main__":
  main()
