
from argparse import ArgumentParser

N = 128

pre_and_init = """
# mceliece8192128
# KEM with m = 13, n = 8192, t = 128.
# Field polynomials:
# - f(z) = z^13 + z^4 + z^3 + z + 1, and
# - F(y) = y^128 + y^7 + y^2 + y + 1.

proc main (bit z,
           bit[128] %a00, bit[128] %a01, bit[128] %a02, bit[128] %a03,
           bit[128] %a04, bit[128] %a05, bit[128] %a06, bit[128] %a07,
           bit[128] %a08, bit[128] %a09, bit[128] %a10, bit[128] %a11,
           bit[128] %a12,
           bit[128] %b00, bit[128] %b01, bit[128] %b02, bit[128] %b03,
           bit[128] %b04, bit[128] %b05, bit[128] %b06, bit[128] %b07,
           bit[128] %b08, bit[128] %b09, bit[128] %b10, bit[128] %b11,
           bit[128] %b12) =
{
  true
  &&
  true
}

nondet %ymm4@bit[256];
nondet %ymm6@bit[256];
nondet %ymm8@bit[256];
nondet %ymm10@bit[256];
nondet %ymm12@bit[256];

mov %L0x7fffffd44f70 %a00;
mov %L0x7fffffd44f80 %a01;
mov %L0x7fffffd44f90 %a02;
mov %L0x7fffffd44fa0 %a03;
mov %L0x7fffffd44fb0 %a04;
mov %L0x7fffffd44fc0 %a05;
mov %L0x7fffffd44fd0 %a06;
mov %L0x7fffffd44fe0 %a07;
mov %L0x7fffffd44ff0 %a08;
mov %L0x7fffffd45000 %a09;
mov %L0x7fffffd45010 %a10;
mov %L0x7fffffd45020 %a11;
mov %L0x7fffffd45030 %a12;

mov %L0x7fffffd452a0 %b00;
mov %L0x7fffffd452b0 %b01;
mov %L0x7fffffd452c0 %b02;
mov %L0x7fffffd452d0 %b03;
mov %L0x7fffffd452e0 %b04;
mov %L0x7fffffd452f0 %b05;
mov %L0x7fffffd45300 %b06;
mov %L0x7fffffd45310 %b07;
mov %L0x7fffffd45320 %b08;
mov %L0x7fffffd45330 %b09;
mov %L0x7fffffd45340 %b10;
mov %L0x7fffffd45350 %b11;
mov %L0x7fffffd45360 %b12;
"""

finalization = """
mov %r00 %L0x7fffffd44ea0;
mov %r01 %L0x7fffffd44eb0;
mov %r02 %L0x7fffffd44ec0;
mov %r03 %L0x7fffffd44ed0;
mov %r04 %L0x7fffffd44ee0;
mov %r05 %L0x7fffffd44ef0;
mov %r06 %L0x7fffffd44f00;
mov %r07 %L0x7fffffd44f10;
mov %r08 %L0x7fffffd44f20;
mov %r09 %L0x7fffffd44f30;
mov %r10 %L0x7fffffd44f40;
mov %r11 %L0x7fffffd44f50;
mov %r12 %L0x7fffffd44f60;
"""

def get_eqmod(i):
    return f"""    eqmod (poly z [%r00[{i}], %r01[{i}], %r02[{i}], %r03[{i}], %r04[{i}], %r05[{i}],
                   %r06[{i}], %r07[{i}], %r08[{i}], %r09[{i}], %r10[{i}], %r11[{i}], %r12[{i}]])
          (poly z [%a00[{i}], %a01[{i}], %a02[{i}], %a03[{i}], %a04[{i}], %a05[{i}],
                   %a06[{i}], %a07[{i}], %a08[{i}], %a09[{i}], %a10[{i}], %a11[{i}], %a12[{i}]] *
           poly z [%b00[{i}], %b01[{i}], %b02[{i}], %b03[{i}], %b04[{i}], %b05[{i}],
                   %b06[{i}], %b07[{i}], %b08[{i}], %b09[{i}], %b10[{i}], %b11[{i}], %b12[{i}]])
          [2, z**13 + z**4 + z**3 + z + 1]"""

def main():
    parser = ArgumentParser(description='Print precondition+initialization or finalization+postcondition')
    parser.add_argument('--print', choices=['pre', 'post'])
    args = parser.parse_args()
    if args.print == 'pre':
      print(pre_and_init)
    elif args.print == 'post':
      print(finalization)
      print("{")
      print("  and [")
      print(",\n".join([get_eqmod(i) for i in range(N)]))
      print("  ] &&")
      print("  true")
      print("}")

if __name__ == "__main__":
  main()
