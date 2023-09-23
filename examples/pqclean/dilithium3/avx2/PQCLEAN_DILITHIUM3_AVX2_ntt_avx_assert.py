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
#   (* vmovshdup %ymmH,%ymmH ...
# where H != 13, add the following assertion and assumption:
#   assert and [ eqmod %ymmH_l %ymm13_l [ 2**32, 2**32, 2**32, 2**32 ], eqmod %ymm12_l %ymm14_l [2**32, 2**32, 2**32, 2**32 ] ] &&& true;
#   assume and [ eq %ymmH_l %ymm13_l, eq %ymm12_l %ymm14_l ] &&& true;

from argparse import ArgumentParser
import re


R = "2**13"

def main():
    parser = ArgumentParser()
    parser.add_argument("vcl", help="the vcl file to be translated")
    args = parser.parse_args()
    lines = open(args.vcl)
    for line in lines:
        m = re.match(r"^\(\* vmovshdup %ymm(?P<id>[0-9]+),%ymm(?P=id) .*", line)
        if m:
            h = int(m.group(1))
            if h != 13:
                #print(f"assert and [ eqmod %ymm{h}_ls %ymm13_ls [ 2**32, 2**32, 2**32, 2**32 ], eqmod %ymm12_ls %ymm14_ls [2**32, 2**32, 2**32, 2**32 ] ] &&& true;")
                #print(f"assume and [ eq %ymm{h}_ls %ymm13_ls, eq %ymm12_ls %ymm14_ls ] &&& true;")
                print(f"assert and [ eqmod %ymm{h}_l %ymm13_l [ 2**32, 2**32, 2**32, 2**32 ], eqmod %ymm12_l %ymm14_l [2**32, 2**32, 2**32, 2**32 ] ] &&& true;")
                print(f"assume and [ eq %ymm{h}_l %ymm13_l, eq %ymm12_l %ymm14_l ] &&& true;")
        print(line, end='')

if __name__ == "__main__":
    main()
