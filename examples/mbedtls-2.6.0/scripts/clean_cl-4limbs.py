#!/usr/bin/env python

import sys
import re
from sets import Set

pre = """
(* A0 = {0}, A1 = {1}, A2 = {2}, A3 = {3} *)
(* B0 = {4}, B1 = {5}, B2 = {6}, B3 = {7} *)
(* X0 = {8}, X1 = {9}, X2 = {10}, X3 = {11}, X4 = {12}, X5 = {13}, X6 = {14}, X7 = {15} *)

proc main ({0}, {1}, {2}, {3}, {4}, {5}, {6}, {7}) =
{{ bvTrue }}

bvAssign {8} (bvConst 0);
bvAssign {9} (bvConst 0);
bvAssign {10} (bvConst 0);
bvAssign {11} (bvConst 0);
bvAssign {12} (bvConst 0);
bvAssign {13} (bvConst 0);
bvAssign {14} (bvConst 0);
bvAssign {15} (bvConst 0);
"""

post = """
{{
  bveEq (bvemul
          (limbs 64 [bveVar {0}, bveVar {1}, bveVar {2}, bveVar {3}])
          (limbs 64 [bveVar {4}, bveVar {5}, bveVar {6}, bveVar {7}]))
        (limbs 64 [bveVar {8}, bveVar {9}, bveVar {10}, bveVar {11}, bveVar {12}, bveVar {13}, bveVar {14}, bveVar {15}])
|
  bvrTrue
}}
"""

def get_vars(gas):
  vs = set()
  for line in gas:
    m = re.findall(r'L0x[0-9a-z][0-9a-z][0-9a-z][0-9a-z][0-9a-z][0-9a-z]', line)
    if m:
      vs = vs.union(set(m))
  vars = list(vs)
  vars.sort()
  return vars

def clean(gas):
  res = []
  for line in gas:
    str = line.strip()
    if str != "proc main () =" and str != "{" and str != "|" and str != "}" and str != "":
      if not str.startswith("(*") and not str.endswith(";"):
        line = "{};".format(line)
      res.append(line)
  vars = get_vars(gas)
  return [pre.format(*vars)] + res + [post.format(*vars)]

def main():
  if (len(sys.argv) == 2):
    file = sys.argv[1]
    gas = open(file).read().splitlines()
    gas = "\n".join(clean(gas))
    print gas
  else:
    print "Wrong number of arguments."
    print "Usage: python " + sys.argv[0] + " CL"

if __name__ == "__main__":
  main()
