#!/usr/bin/env python

import sys
import re
from sets import Set

pre = """
(* A0 = {0}, A1 = {1} *)
(* B0 = {2}, B1 = {3} *)
(* X0 = {4}, X1 = {5}, X2 = {6}, X3 = {7} *)

proc main ({0}, {1}, {2}, {3}) =
{{ bvTrue }}

bvAssign {4} (bvConst 0);
bvAssign {5} (bvConst 0);
bvAssign {6} (bvConst 0);
bvAssign {7} (bvConst 0);
"""

post = """
{{
  bveEq (bvemul
          (limbs 64 [bveVar {0}, bveVar {1}])
          (limbs 64 [bveVar {2}, bveVar {3}]))
        (limbs 64 [bveVar {4}, bveVar {5}, bveVar {6}, bveVar {7}])
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
