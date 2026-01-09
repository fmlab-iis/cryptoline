#!/usr/bin/env python3

# Put even cuts before call.
# Put odd cuts after call.

base = 0x7fffffc32bf0
mpoly = "z**13 + z**4 + z**3 + z + 1"
invpoly = [ "z**11+z**10+z**9+z**8+z**7+z**6+z**5+z**4+z**3+z+1",
            "z**12+z**11+z**8+z**5+z**3+z**2+z+1",
            "z**11+z**6+z**5+z**4+z**2+z",
            "z**10+z**9+z**6+z**4+z**3",
            "z**11+z**8+z**5+z**3+z**2+z+1",
            "z**9+z**4+z" ]

# - F = c_0 + c_1 X + c_2 X**2 + ... + c_127 X**127
# - c_k = k_0 + k_1 Z + k_2 Z**2 + ... + k_12 Z**12
# - i: c_i
# - j: k_j
# - base    : k_0 of  c_0 ~  c_64
#   base+8  : k_0 of c_64 ~ c_127
#   base+16 : k_1 of  c_0 ~ c_64
#   base+24 : k_1 of c_64 ~ c_127
def c(i, j):
    offset = j * 16 + (0 if i < 64 else 8)
    return f"%L0x{base + offset:x}[{i % 64:3d}]"

def p(f, t, s, indent, zvar, xvar):
    polys = []
    e = 0
    for i in range(f, t, s):
        poly_vars = ", ".join([f"{c(i, j)}" for j in range(13)])
        polys.append(f"poly {zvar} [{poly_vars}] * {xvar}**{e:3d}")
        e = e + 1
    polys_str = (" +\n" + " "*indent).join(polys)
    return polys_str


print("(* Main and Initialization *)")
print("""
proc main (bit Z, bit X,
           bit[128] %in00, bit[128] %in01, bit[128] %in02, bit[128] %in03,
           bit[128] %in04, bit[128] %in05, bit[128] %in06, bit[128] %in07,
           bit[128] %in08, bit[128] %in09, bit[128] %in10, bit[128] %in11, bit[128] %in12) =
{
  true
  &&
  true
}

nondet %rax@bit[64];
nondet %rdi@bit[64];
nondet %rsi@bit[64];
nondet %rsp@bit[64];
nondet %xmm4@bit[128];
nondet %xmm5@bit[128];
nondet %xmm6@bit[128];
nondet %ymm4@bit[256];
nondet %ymm6@bit[256];
nondet %ymm8@bit[256];
nondet %ymm10@bit[256];
nondet %ymm12@bit[256];

mov %L0x7fffffc32bf0 %in00[0:64];
mov %L0x7fffffc32bf8 %in00[64:128];
mov %L0x7fffffc32c00 %in01[0:64];
mov %L0x7fffffc32c08 %in01[64:128];
mov %L0x7fffffc32c10 %in02[0:64];
mov %L0x7fffffc32c18 %in02[64:128];
mov %L0x7fffffc32c20 %in03[0:64];
mov %L0x7fffffc32c28 %in03[64:128];
mov %L0x7fffffc32c30 %in04[0:64];
mov %L0x7fffffc32c38 %in04[64:128];
mov %L0x7fffffc32c40 %in05[0:64];
mov %L0x7fffffc32c48 %in05[64:128];
mov %L0x7fffffc32c50 %in06[0:64];
mov %L0x7fffffc32c58 %in06[64:128];
mov %L0x7fffffc32c60 %in07[0:64];
mov %L0x7fffffc32c68 %in07[64:128];
mov %L0x7fffffc32c70 %in08[0:64];
mov %L0x7fffffc32c78 %in08[64:128];
mov %L0x7fffffc32c80 %in09[0:64];
mov %L0x7fffffc32c88 %in09[64:128];
mov %L0x7fffffc32c90 %in10[0:64];
mov %L0x7fffffc32c98 %in10[64:128];
mov %L0x7fffffc32ca0 %in11[0:64];
mov %L0x7fffffc32ca8 %in11[64:128];
mov %L0x7fffffc32cb0 %in12[0:64];
mov %L0x7fffffc32cb8 %in12[64:128];

(* s[0] from scalars_2x.data *)
mov %L0x5555555953d0 (0x3C3CF30C0000C003@bit[64] ++ 0x0C0F0FCF0F0CF330@bit[64]);
mov %L0x5555555953e0 (0x0CCCC3F333C0000C@bit[64] ++ 0xF0000FC33C3CCF3C@bit[64]);
mov %L0x5555555953f0 (0x03C33F33FCC0C03C@bit[64] ++ 0x3C0F3F00C3C300FC@bit[64]);
mov %L0x555555595400 (0x0003000F3C03C0C0@bit[64] ++ 0x3C33CCC0F0F3CC30@bit[64]);
mov %L0x555555595410 (0xF33FF33030CF03F0@bit[64] ++ 0xC0CFFFFFCCCC30CC@bit[64]);
mov %L0x555555595420 (0x0CF0303300F0CCC0@bit[64] ++ 0x3FC3F3CCFFFC033F@bit[64]);
mov %L0x555555595430 (0xFF3F0C0CC0FF3CC0@bit[64] ++ 0xFC3030CCCCC0CFCF@bit[64]);
mov %L0x555555595440 (0xCF3CF0FF003FC000@bit[64] ++ 0x0FCF0C00CCF333C3@bit[64]);
mov %L0x555555595450 (0xC00FF3CF0303F300@bit[64] ++ 0xCFFCF33000CFF030@bit[64]);
mov %L0x555555595460 (0x3CCC0CC00CF0CC00@bit[64] ++ 0x00CFFCC330F30FCC@bit[64]);
mov %L0x555555595470 (0xF30FFC3C3FCCFC00@bit[64] ++ 0x3CCC3FCCC0F3FFF3@bit[64]);
mov %L0x555555595480 (0x3F0FC3F0CCF0C000@bit[64] ++ 0xF00F0C3FC003C0FF@bit[64]);
mov %L0x555555595490 (0x3000FF33CCF0F000@bit[64] ++ 0x330CCFCC03C0FC33@bit[64]);

(* s[1] from scalars_2x.data *)
mov %L0x5555555954a0 (0x0F0F0FF0F000000F@bit[64] ++ 0xF0FFFFFFF0F00F00@bit[64]);
mov %L0x5555555954b0 (0x00FFFFFFFF0000F0@bit[64] ++ 0x00FFF0FFFF0000FF@bit[64]);
mov %L0x5555555954c0 (0xFFFF00FF00000F00@bit[64] ++ 0x00FF00000F0F0FFF@bit[64]);
mov %L0x5555555954d0 (0xFFF000F00F0FF000@bit[64] ++ 0xF000F0000F00FF0F@bit[64]);
mov %L0x5555555954e0 (0xFFF0000F0FF000F0@bit[64] ++ 0xFF000000FFF00000@bit[64]);
mov %L0x5555555954f0 (0x00FF000FFF000000@bit[64] ++ 0xF0FF000FF00F0FF0@bit[64]);
mov %L0x555555595500 (0xFF0F0FFF0F0FF000@bit[64] ++ 0x0F0F0F00FF000F0F@bit[64]);
mov %L0x555555595510 (0x0FFF0000000F0000@bit[64] ++ 0x0F0F00F0F0F0F000@bit[64]);
mov %L0x555555595520 (0x00F000F0FFF00F00@bit[64] ++ 0x00F00F00F00F000F@bit[64]);
mov %L0x555555595530 (0x00F00FF00F00F000@bit[64] ++ 0x00F0F0F00000FFF0@bit[64]);
mov %L0x555555595540 (0xFFF000F000F00000@bit[64] ++ 0xFFFFFF0FF00F0FFF@bit[64]);
mov %L0x555555595550 (0x00F00F000FF00000@bit[64] ++ 0x0F0FFFF00FFFFFFF@bit[64]);
mov %L0x555555595560 (0x0000FF0F0000F000@bit[64] ++ 0xFFFF0F0FFF0FFF00@bit[64]);

(* s[2] from scalars_2x.data *)
mov %L0x555555595570 (0x00FF0000000000FF@bit[64] ++ 0x00FF00FF00FF0000@bit[64]);
mov %L0x555555595580 (0xFFFFFFFFFF00FF00@bit[64] ++ 0xFF00FFFF000000FF@bit[64]);
mov %L0x555555595590 (0xFF0000FF00FF0000@bit[64] ++ 0x0000FFFF000000FF@bit[64]);
mov %L0x5555555955a0 (0xFFFF000000FF0000@bit[64] ++ 0x00FFFF00FF000000@bit[64]);
mov %L0x5555555955b0 (0xFF00000000FF0000@bit[64] ++ 0xFFFFFF0000FF00FF@bit[64]);
mov %L0x5555555955c0 (0x00FFFFFFFF000000@bit[64] ++ 0x0000FFFF00FFFF00@bit[64]);
mov %L0x5555555955d0 (0xFF0000FFFFFF0000@bit[64] ++ 0xFF00FF0000FFFF00@bit[64]);
mov %L0x5555555955e0 (0xFF00FF00FFFF0000@bit[64] ++ 0x00000000FFFFFFFF@bit[64]);
mov %L0x5555555955f0 (0x00FFFFFFFF00FF00@bit[64] ++ 0x0000FF0000000000@bit[64]);
mov %L0x555555595600 (0xFFFF000000000000@bit[64] ++ 0xFF00FFFF00FFFF00@bit[64]);
mov %L0x555555595610 (0x00FF0000FF000000@bit[64] ++ 0x00FFFF00000000FF@bit[64]);
mov %L0x555555595620 (0xFF00FF00FF000000@bit[64] ++ 0x0000FF00FF00FFFF@bit[64]);
mov %L0x555555595630 (0x00FF00FFFF000000@bit[64] ++ 0xFF0000FFFFFF0000@bit[64]);

(* s[3] from scalars_2x.data *)
mov %L0x555555595640 (0x000000000000FFFF@bit[64] ++ 0x0000FFFF00000000@bit[64]); // %L0x7fffffc32740 ++ %L0x7fffffc32748
mov %L0x555555595650 (0xFFFFFFFFFFFF0000@bit[64] ++ 0xFFFFFFFF0000FFFF@bit[64]); // %L0x7fffffc32750 ++ %L0x7fffffc32758
mov %L0x555555595660 (0x0000000000000000@bit[64] ++ 0x00000000FFFFFFFF@bit[64]); // %L0x7fffffc32760 ++ %L0x7fffffc32768
mov %L0x555555595670 (0xFFFF0000FFFF0000@bit[64] ++ 0x0000000000000000@bit[64]); // %L0x7fffffc32770 ++ %L0x7fffffc32778
mov %L0x555555595680 (0xFFFFFFFFFFFF0000@bit[64] ++ 0x0000FFFF00000000@bit[64]); // %L0x7fffffc32780 ++ %L0x7fffffc32788
mov %L0x555555595690 (0x0000FFFF00000000@bit[64] ++ 0xFFFF0000FFFF0000@bit[64]); // %L0x7fffffc32790 ++ %L0x7fffffc32798
(* 0X0000FFFFFFFF0000, 0X0000FFFFFFFF0000: 0xFFFFFFFF0000 hard coded *)          // %L0x7fffffc327a0 ++ %L0x7fffffc327a8
mov %L0x555555594300 (0xFFFF0000FFFF0000@bit[64] ++ 0x0000FFFF0000FFFF@bit[64]); // %L0x7fffffc327b0 ++ %L0x7fffffc327b8
mov %L0x5555555956a0 (0x0000FFFF00000000@bit[64] ++ 0xFFFFFFFF0000FFFF@bit[64]); // %L0x7fffffc327c0 ++ %L0x7fffffc327c8
mov %L0x5555555956b0 (0xFFFF000000000000@bit[64] ++ 0x00000000FFFF0000@bit[64]); // %L0x7fffffc327d0 ++ %L0x7fffffc327d8
mov %L0x5555555956c0 (0xFFFF000000000000@bit[64] ++ 0xFFFF0000FFFFFFFF@bit[64]); // %L0x7fffffc327e0 ++ %L0x7fffffc327e8
(* 0XFFFF000000000000, 0XFFFF0000FFFFFFFF: same as %L0x5555555956c0 *)        // %L0x7fffffc327f0 ++ %L0x7fffffc327f8
mov %L0x5555555956d0 (0xFFFFFFFF00000000@bit[64] ++ 0x0000000000000000@bit[64]); // %L0x7fffffc32800 ++ %L0x7fffffc32808

(* s[4] from scalars_2x.data *)
mov %L0x5555555956e0 (0x00000000FFFFFFFF@bit[64] ++ 0x0000000000000000@bit[64]); // %L0x7fffffc32810 ++ %L0x7fffffc32818
mov %L0x555555594420 (0x0000000000000000@bit[64] ++ 0xFFFFFFFFFFFFFFFF@bit[64]); // %L0x7fffffc32820 ++ %L0x7fffffc32828
(* 0XFFFFFFFF00000000, 0X0000000000000000: same as %L0x5555555956d0 *)           // %L0x7fffffc32830 ++ %L0x7fffffc32838
(* 0X0000000000000000, 0X0000000000000000: computed by XOR *)                    // %L0x7fffffc32840 ++ %L0x7fffffc32848
mov %L0x5555555956f0 (0xFFFFFFFF00000000@bit[64] ++ 0x00000000FFFFFFFF@bit[64]); // %L0x7fffffc32850 ++ %L0x7fffffc32858
(* 0XFFFFFFFF00000000, 0XFFFFFFFF00000000: 0xffffffff00000000 hard coded *)      // %L0x7fffffc32860 ++ %L0x7fffffc32868
(* 0XFFFFFFFF00000000, 0X0000000000000000: same as %L0x5555555956d0 *)           // %L0x7fffffc32870 ++ %L0x7fffffc32878
(* 0X0000000000000000, 0XFFFFFFFFFFFFFFFF: same as %L0x555555594420 *)           // %L0x7fffffc32880 ++ %L0x7fffffc32888
(* 0XFFFFFFFF00000000, 0X00000000FFFFFFFF: same as %L0x5555555956f0 *)           // %L0x7fffffc32890 ++ %L0x7fffffc32898
mov %L0x555555595700 (0x0000000000000000@bit[64] ++ 0xFFFFFFFF00000000@bit[64]); // %L0x7fffffc328a0 ++ %L0x7fffffc328a8
(* 0X0000000000000000, 0XFFFFFFFFFFFFFFFF: same as %L0x555555594420 *)           // %L0x7fffffc328b0 ++ %L0x7fffffc328b8
(* 0X0000000000000000, 0XFFFFFFFFFFFFFFFF: same as %L0x555555594420 *)           // %L0x7fffffc328c0 ++ %L0x7fffffc328c8,
(* 0XFFFFFFFF00000000, 0XFFFFFFFF00000000: 0xffffffff00000000 hard coded *)      // %L0x7fffffc328d0 ++ %L0x7fffffc328d8

mov %L0x555555595710 (0xFF000000FF000000@bit[64] ++ 0xFF000000FF000000@bit[64]); (* mask[3][0] *)
(* mask[4][1] is hard coded *)
(* mask[0][0] .. mask[3][1] are hard coded *)
""")


print("(* Initial Polynomial *)")
print("ghost F@bit :")
polys = []
for i in range(128):
  poly_vars = ", ".join([f"%in{j:02d}[{i:3d}]" for j in range(13)])
  polys.append(f"poly z [{poly_vars}] * X**{i:3d}")
polys_str = " +\n      ".join(polys)
print(f"  F = {polys_str}\n    && true;")
print()

# ========== Level #0 ==========

level = 0
cut = 0

print(f"(* Ghost Polynomial #{level} *)")
print("ghost X0@bit, F000@bit, F001@bit :")
print("  all:")
print("  and [")
print("    X0 = X**2 + X,")
print(f"    F000 = {p(f=0, t=128, s=2, indent=11, zvar='z', xvar='X0')},")
print(f"    F001 = {p(f=1, t=128, s=2, indent=11, zvar='z', xvar='X0')}")
print("  ] && true;")
print()

print(f"(* Cut #{cut} *)")
print("cut")
print("  polyvar: X0 = X**2 + X .")
print("  and [")
print(f"    eqmod F (F000 + X*F001) [2, {mpoly}],")
print(f"    F000 = {p(f=0, t=128, s=2, indent=11, zvar='z', xvar='X0')},")
print(f"    F001 = {p(f=1, t=128, s=2, indent=11, zvar='z', xvar='X0')}")
print("  ] && true;")
print()
cut += 1

print(f"(* Scaling #{level} *)")
print("ghost Y0@bit, G000@bit, G001@bit :")
print("  all:")
print("  and [")
print("    (z**2 + z) * Y0 = X0,")
print(f"    G000 = {p(f=0, t=128, s=2, indent=11, zvar='z', xvar='Y0')},")
print(f"    G001 = {p(f=1, t=128, s=2, indent=11, zvar='z', xvar='Y0')}")
print("  ] && true;")
print()

print(f"(* Cut #{cut} *)")
print("cut")
print(f"  polyvar: eqmod Y{level} (({invpoly[level]})*(X**2 + X)) [2, {mpoly}] .")
print("  and [")
print(f"    eqmod F (G000 + X*G001) [2, {mpoly}],")
print(f"    G000 = {p(f=0, t=128, s=2, indent=11, zvar='z', xvar='Y0')},")
print(f"    G001 = {p(f=1, t=128, s=2, indent=11, zvar='z', xvar='Y0')}")
print("  ] && true;")
print()
cut += 1


# ========== For Levels #1-#5 ==========

def lv(level, skip, cut):
    print(f"(* Ghost Polynomial #{level} *)")
    print(f"ghost X{level}@bit, { ', '.join([f'F{level}{i:02d}@bit' for i in range(skip)]) } :")
    print("  all:")
    print("  and [")
    print(f"    X{level} = Y{level - 1}**2 + Y{level - 1},")
    for i in range(skip):
        print(f"    F{level}{i:02d} = {p(f=i, t=128, s=skip, indent=11, zvar='z', xvar=f'X{level}')}{',' if i < skip - 1 else ''}")
    print("  ] && true;")
    print()
    #
    print(f"(* Cut #{cut} *)")
    print("cut")
    print(f"  polyvar: X{level} = Y{level - 1}**2 + Y{level - 1} .")
    print("  and [")
    for i in range(skip // 2):
        print(f"    eqmod G{level - 1}{i:02d} (F{level}{i:02d} + Y{level - 1}*F{level}{i + skip // 2:02d}) [2, {mpoly}],")
    for i in range(skip):
        print(f"    F{level}{i:02d} = {p(f=i, t=128, s=skip, indent=11, zvar='z', xvar=f'X{level}')}{',' if i < skip - 1 else ''}")
    print("  ] && true;")
    print()
    #
    if level == 5:
        return
    print(f"(* Scaling #{level} *)")
    print(f"ghost Y{level}@bit, { ', '.join([f'G{level}{i:02d}@bit' for i in range(skip)]) } :")
    print("  all:")
    print("  and [")
    print(f"    (z**{skip} + z) * Y{level} = X{level},")
    for i in range(skip):
        print(f"    G{level}{i:02d} = {p(f=i, t=128, s=skip, indent=11, zvar='z', xvar=f'Y{level}')}{',' if i < skip - 1 else ''}")
    print("  ] && true;")
    print()
    #
    print(f"(* Cut #{cut + 1} *)")
    print("cut")
    print(f"  polyvar: eqmod Y{level} (({invpoly[level]})*(Y{level - 1}**2 + Y{level - 1})) [2, {mpoly}] .")
    print("  and [")
    for i in range(skip // 2):
        print(f"    eqmod G{level - 1}{i:02d} (G{level}{i:02d} + Y{level - 1}*G{level}{i + skip // 2:02d}) [2, {mpoly}],")
    for i in range(skip):
        print(f"    G{level}{i:02d} = {p(f=i, t=128, s=skip, indent=11, zvar='z', xvar=f'Y{level}')}{',' if i < skip - 1 else ''}")
    print("  ] && true;")
    print()

# ========== For Postcondition ==========

def post():
    print("(* Post condition *)")
    print("{")
    print(f"  polyvar:")
    print("  and [")
    for level in range(6):
        if level == 0:
            print(f"    eqmod Y{level} (({invpoly[level]})*(X**2 + X)) [2, {mpoly}],")
        elif level < 5:
            print(f"    eqmod Y{level} (({invpoly[level]})*(Y{level - 1}**2 + Y{level - 1})) [2, {mpoly}],")
        elif level == 5:
            print(f"    X{level} = Y{level - 1}**2 + Y{level - 1}")
    print("  ] prove with [cuts [1,3,5,7,9,10]] .")
    for level in range(6):
        skip = 2**(level + 1)
        if level == 0:
            print(f"  eqmod F (G000 + X*G001) [2, z**13 + z**4 + z**3 + z + 1] prove with [cuts [1]],")
        elif level < 5:
            print("  and [")
            for i in range(skip // 2):
                print(f"    eqmod G{level - 1}{i:02d} (G{level}{i:02d} + Y{level - 1}*G{level}{i + skip // 2:02d}) [2, {mpoly}]{',' if i < skip // 2 - 1 else ''}")
            print(f"  ] prove with [cuts [{level * 2 + 1}]],")
        elif level == 5:
            print("  and [")
            for i in range(skip // 2):
                print(f"    eqmod G{level - 1}{i:02d} (F{level}{i:02d} + Y{level - 1}*F{level}{i + skip // 2:02d}) [2, {mpoly}],")
            for i in range(skip):
                print(f"    F{level}{i:02d} = {p(f=i, t=128, s=skip, indent=11, zvar='z', xvar=f'X{level}')}{',' if i < skip - 1 else ''}")
            print("  ]")
    print("  &&")
    print("  true")
    print("}")
    print()


# ========== Levels #1-#5 ==========

skip = 2
for i in range(5):
    level += 1
    skip *= 2
    lv(level, skip, cut)
    cut += 2

# ========== Postcondition ==========

post()
