#!/usr/bin/env python

import sys
import re

insert_before = "\(\*\s+mult\s+a([0-9]+),\s+b0\s+\*\)"
skip_first = True
num_limbs = 64

def format_tokens(width, token1, token2):
  return token1 + ("%{}s".format(width - len(token1))) % token2

def vstr(vname, i, j, indent, npl, wpl):
  str = format_tokens(wpl, "bvvar", "{}{}".format(vname, i))
  str = str if i == j - 1 else str + ","
  str = str if i == j - 1 or i % npl == npl - 1 else str + " "
  return ((" " * indent) + str) if i > 0 and i % npl == 0 else ((str + "\n") if i % npl == npl - 1 and i < j - 1 else str)

def vlimbs(vname, i, j, *args, **kwargs):
  indent = kwargs.get('indent', 0)  # indent for every line except the first line
  npl = kwargs.get('npl', 4)        # number of limbs per line
  wpl = kwargs.get('wpl', 9)        # string length per limb
  return [vstr(vname, i, j, indent, npl, wpl) for i in range(i, j)]

def cstr(num, i):
  str = "bvconst 0,"
  str = str if i == num - 1 or i % 4 == 3 else str + " "
  return ("                   " + str) if i > 0 and i % 4 == 0 else ((str + "\n") if i % 4 == 3 and i < num - 1 else str)

def cut_at(id):
  s = """bveCut
  bveands [
    bveEqMod (bvvar m0) (bvconst 1) (bvconst 2),
    bveEqMod
      (
        (
          (bvvar alpha0)
          *
          (limbs 32 [{ms1}])
        )
        +
        (bvconst 1)
      )
      (bvconst 0)
      (limbs 32 [(bvconst 0), (bvconst 1) ]),
    bveEqMod
      (
        (limbs 32 [{vs}])
        *
        (limbs 32 [{bs1}])
      )
      (
        (limbs 32 [{cs}
                   {us1}])
      )
      (
        (limbs 32 [{ms2}])
      )
    ];"""
#bvrCut
#    bvrands [
#      (limbs 32 [{as_r}]) <
#      (limbs 32 [{ms_r1}]),
#      (limbs 32 [{bs_r}]) <
#      (limbs 32 [{ms_r1}]),
#      bvvar {u_last} < bvconst 32 2,
#      (limbs 32 [{us_r}]) <
#      (bvrmul (bvconst {bvr_bits} 2)
#              (limbs 32 [{ms_r2},
#                         bvconst 32 0]))
#  ];
  ms1 = ''.join(vlimbs("m", 0, num_limbs, indent = 21, npl = 4, wpl = 9))
  ms2 = ''.join(vlimbs("m", 0, num_limbs, indent = 19, npl = 4, wpl = 9))
  as_r = ''.join(vlimbs("a", 0, num_limbs, indent = 17, npl = 4, wpl = 9))
  bs_r = ''.join(vlimbs("b", 0, num_limbs, indent = 17, npl = 4, wpl = 9))
  ms_r1 = ''.join(vlimbs("m", 0, num_limbs, indent = 17, npl = 4, wpl = 9))
  ms_r2 = ''.join(vlimbs("m", 0, num_limbs, indent = 25, npl = 4, wpl = 9))
  us_r = ''.join(vlimbs("u", 0, num_limbs + 1, indent = 17, npl = 4, wpl = 9))
  bs1 = ''.join(vlimbs("b", 0, num_limbs, indent = 19, npl = 4, wpl = 9))
  us1 = ''.join(vlimbs("u", 0, num_limbs + 1, indent = 19, npl = 4, wpl = 9))
  u_last = "u%d" % num_limbs
  bvr_bits = (num_limbs + 1) * 32
  vs = ''.join(vlimbs("a", 0, id, indent = 19, npl = 4, wpl = 9))
  cs = ''.join([cstr(id, i) for i in range(id)])
  return s.format(ms1=ms1, vs=vs, bs1=bs1, cs=cs, us1=us1, ms2=ms2,
                  as_r=as_r, bs_r=bs_r, ms_r1=ms_r1, us_r=us_r, ms_r2=ms_r2, u_last=u_last, bvr_bits=bvr_bits)

def main ():
  if (len(sys.argv) == 2):
    fd = open (sys.argv[1], "r")
    matchno = 0
    for line in fd:
      res = re.match(insert_before, line)
      if (res):
        if (matchno > 0 or not skip_first):
          id = int(res.group(1))
          print "\n" + cut_at(id) + "\n"
        print line,
        matchno = matchno + 1
      else:
        print line,
  else:
    print "Usage"

if __name__ == "__main__":
  main()
