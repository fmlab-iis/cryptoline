
from argparse import ArgumentParser

N = 256

pre_and_init = """
# mceliece8192128
# KEM with m = 13, n = 8192, t = 128.
# Field polynomials:
# - f(z) = z^13 + z^4 + z^3 + z + 1, and
# - F(y) = y^128 + y^7 + y^2 + y + 1.

proc main (bit z,
           bit[256] %c00, bit[256] %c01, bit[256] %c02, bit[256] %c03,
           bit[256] %c04, bit[256] %c05, bit[256] %c06, bit[256] %c07,
           bit[256] %c08, bit[256] %c09, bit[256] %c10, bit[256] %c11, bit[256] %c12,
           bit[256] %a00, bit[256] %a01, bit[256] %a02, bit[256] %a03,
           bit[256] %a04, bit[256] %a05, bit[256] %a06, bit[256] %a07,
           bit[256] %a08, bit[256] %a09, bit[256] %a10, bit[256] %a11, bit[256] %a12,
           bit[256] %b00, bit[256] %b01, bit[256] %b02, bit[256] %b03,
           bit[256] %b04, bit[256] %b05, bit[256] %b06, bit[256] %b07,
           bit[256] %b08, bit[256] %b09, bit[256] %b10, bit[256] %b11, bit[256] %b12) =
{
  true
  &&
  true
}

mov %L0x7fffffc2ac80 %c00;
mov %L0x7fffffc2aca0 %c01;
mov %L0x7fffffc2acc0 %c02;
mov %L0x7fffffc2ace0 %c03;
mov %L0x7fffffc2ad00 %c04;
mov %L0x7fffffc2ad20 %c05;
mov %L0x7fffffc2ad40 %c06;
mov %L0x7fffffc2ad60 %c07;
mov %L0x7fffffc2ad80 %c08;
mov %L0x7fffffc2ada0 %c09;
mov %L0x7fffffc2adc0 %c10;
mov %L0x7fffffc2ade0 %c11;
mov %L0x7fffffc2ae00 %c12;

mov %L0x7fffffc2ae20 %a00;
mov %L0x7fffffc2ae40 %a01;
mov %L0x7fffffc2ae60 %a02;
mov %L0x7fffffc2ae80 %a03;
mov %L0x7fffffc2aea0 %a04;
mov %L0x7fffffc2aec0 %a05;
mov %L0x7fffffc2aee0 %a06;
mov %L0x7fffffc2af00 %a07;
mov %L0x7fffffc2af20 %a08;
mov %L0x7fffffc2af40 %a09;
mov %L0x7fffffc2af60 %a10;
mov %L0x7fffffc2af80 %a11;
mov %L0x7fffffc2afa0 %a12;

mov %L0x7fffffc2f460 %b00;
mov %L0x7fffffc2f480 %b01;
mov %L0x7fffffc2f4a0 %b02;
mov %L0x7fffffc2f4c0 %b03;
mov %L0x7fffffc2f4e0 %b04;
mov %L0x7fffffc2f500 %b05;
mov %L0x7fffffc2f520 %b06;
mov %L0x7fffffc2f540 %b07;
mov %L0x7fffffc2f560 %b08;
mov %L0x7fffffc2f580 %b09;
mov %L0x7fffffc2f5a0 %b10;
mov %L0x7fffffc2f5c0 %b11;
mov %L0x7fffffc2f5e0 %b12;
"""

finalization = """
mov %r00 %L0x7fffffc2ac80;
mov %r01 %L0x7fffffc2aca0;
mov %r02 %L0x7fffffc2acc0;
mov %r03 %L0x7fffffc2ace0;
mov %r04 %L0x7fffffc2ad00;
mov %r05 %L0x7fffffc2ad20;
mov %r06 %L0x7fffffc2ad40;
mov %r07 %L0x7fffffc2ad60;
mov %r08 %L0x7fffffc2ad80;
mov %r09 %L0x7fffffc2ada0;
mov %r10 %L0x7fffffc2adc0;
mov %r11 %L0x7fffffc2ade0;
mov %r12 %L0x7fffffc2ae00;

mov %s00 %L0x7fffffc2ae20;
mov %s01 %L0x7fffffc2ae40;
mov %s02 %L0x7fffffc2ae60;
mov %s03 %L0x7fffffc2ae80;
mov %s04 %L0x7fffffc2aea0;
mov %s05 %L0x7fffffc2aec0;
mov %s06 %L0x7fffffc2aee0;
mov %s07 %L0x7fffffc2af00;
mov %s08 %L0x7fffffc2af20;
mov %s09 %L0x7fffffc2af40;
mov %s10 %L0x7fffffc2af60;
mov %s11 %L0x7fffffc2af80;
mov %s12 %L0x7fffffc2afa0;
"""

def get_eqmod1(i):
    return f"""    eqmod (poly z [%r00[0], %r01[0], %r02[0], %r03[0], %r04[0], %r05[0],
                   %r06[0], %r07[0], %r08[0], %r09[0], %r10[0], %r11[0], %r12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]))
          [2, z**13 + z**4 + z**3 + z + 1]"""

def get_eqmod2(i):
    return f"""    eqmod (poly z [%s00[0], %s01[0], %s02[0], %s03[0], %s04[0], %s05[0],
                   %s06[0], %s07[0], %s08[0], %s09[0], %s10[0], %s11[0], %s12[0]])
          ((poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]] *
            poly z [%b00[0], %b01[0], %b02[0], %b03[0], %b04[0], %b05[0],
                    %b06[0], %b07[0], %b08[0], %b09[0], %b10[0], %b11[0], %b12[0]]) +
           (poly z [%c00[0], %c01[0], %c02[0], %c03[0], %c04[0], %c05[0],
                    %c06[0], %c07[0], %c08[0], %c09[0], %c10[0], %c11[0], %c12[0]]) +
           (poly z [%a00[0], %a01[0], %a02[0], %a03[0], %a04[0], %a05[0],
                    %a06[0], %a07[0], %a08[0], %a09[0], %a10[0], %a11[0], %a12[0]]))
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
      print(",\n".join([get_eqmod1(i) for i in range(N)]))
      print("  ],")
      print("  and [")
      print(",\n".join([get_eqmod2(i) for i in range(N)]))
      print("  ]")
      print("  &&")
      print("  true")
      print("}")

if __name__ == "__main__":
  main()
