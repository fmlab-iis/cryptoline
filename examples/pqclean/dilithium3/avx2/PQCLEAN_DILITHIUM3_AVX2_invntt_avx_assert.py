#!/usr/bin/env python3

# Insert assertions.

# (* vpmuldq %ymm1,%ymm8,%ymm13                      #! PC = 0x555555572ad1 *)
# (* vmovshdup %ymm8,%ymm12                          #! PC = 0x555555572ad6 *)
# (* vpmuldq %ymm1,%ymm12,%ymm14                     #! PC = 0x555555572adb *)
# => * ZETA_QINV
# (* vpmuldq %ymm2,%ymm8,%ymm8                       #! PC = 0x555555572ae0 *)
# (* vpmuldq %ymm2,%ymm12,%ymm12                     #! PC = 0x555555572ae5 *)
# => * ZETA
# (* vpmuldq %ymm0,%ymm13,%ymm13                     #! PC = 0x555555572aea *)
# (* vpmuldq %ymm0,%ymm14,%ymm14                     #! PC = 0x555555572aef *)
# => (* ZETA_QINV) * Q
# assert %ymm8_l = %ymm13_l, %ymm12_l = %ymm14_l

# In general, when we see the following line:
#   vpsubd %ymmX,%ymmY,%ymmY
# where X = 12, 13, 14, or 15
# insert the following assertion and assumption:
#   assert (eqmod %ymmX_l %ymmY_l [ 2**32, 2**32, 2**32, 2**32 ]) &&& true;
#   assume (eq %ymmX_l %ymmY_l) &&& true;


from argparse import ArgumentParser
import re


def main():
    parser = ArgumentParser()
    parser.add_argument("vcl", help="the vcl file to be translated")
    args = parser.parse_args()
    lines = open(args.vcl)
    pairs = []
    for line in lines:
        m = re.match(r"^\(\* vpsubd %ymm([0-9]+),%ymm(?P<id>[0-9]+),%ymm(?P=id) .*", line)
        if m:
            i = int(m.group(1))
            j = int(m.group(2))
            if i in [12, 13, 14, 15]:
                pairs.append((i, j))
        m = re.match(r"^\(\* vmovshdup %ymm(?P<id>[0-9]+),%ymm(?P=id) .*", line)
        if m and len(pairs) > 0:
            eqmods = ", ".join([f"eqmod %ymm{i}_l %ymm{j}_l [ 2**32, 2**32, 2**32, 2**32 ]" for (i, j) in pairs])
            eqs = ", ".join([f"eq %ymm{i}_l %ymm{j}_l" for (i, j) in pairs])
            print(f"assert and [ {eqmods} ] &&& true;")
            print(f"assume and [ {eqs} ] &&& true;")
            pairs = []
        # Clear previous assert/assume
        m = re.match(r"^(assert|assume) .*", line)
        if m:
            pass
        else:
            print(line, end='')

if __name__ == "__main__":
    main()
