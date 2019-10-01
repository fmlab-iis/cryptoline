#!/usr/bin/env python

import sys
import re
from sets import Set

rules = """#! 0x0(%r13) = %%EA
#! 0x10(%r12) = %%EA
#! 0x10(%r13) = %%EA
#! 0x10(%r15) = %%EA
#! (%rax,%r11,1) = %%EA
#! (%r12) = %%EA
#! (%r15) = %%EA
#! (%rsi) = %%EA
#! (%rdi) = %%EA
#! %rax = %%rax
#! %rbx = %%rbx
#! %rcx = %%rcx
#! %rdx = %%rdx
#! %rbp = %%rbp
#! %rdi = %%rdi
#! %rsi = %%rsi
#! %eax = %%eax
#! %ecx = %%ecx
#! %edx = %%edx
#! %r8 = %%r8
#! %r9 = %%r9
#! %r11 = %%r11
#! add $1v, $2v -> bvAddC carry $2v (bvVar $1v) (bvVar $2v)
#! add $1c, $2v -> bvAddC carry $2v (bvConst $1c) (bvVar $2v)
#! add \$0x8, $1v -> bvAdc $1v (bvConst 8) (bvVar $1v) carry
#! adc $1v, $2v -> bvAdcC carry $2v (bvVar $1v) (bvVar $2v) carry
#! adc $1c, $2v -> bvAdcC carry $2v (bvConst $1c) (bvVar $2v) carry
#! adc \$0x0, $1v -> bvAdc $1v (bvConst 0) (bvVar $1v) carry
#! mul $1v -> bvMulf rdx rax (bvVar $1v) (bvVar rax)
#! mul $1c -> bvMulf rdx rax (bvConst $1c) (bvVar rax)
#! imul $1v, $2v -> bvMulf dontcare $2v (bvVar $1v) (bvVar $2v)
#! mov $1v, $2v -> bvAssign $2v (bvVar $1v)
#! mov $1c, $2v -> bvAssign $2v (bvConst $1c)
#! lea $1v, $2v -> bvAssign $2v (bvConst $1v)
#! sub \$0x1, $1v -> bvSub $1v (bvVar $1v) (bvConst 1)
#! sub \$0x8, $1v -> bvSub $1v (bvVar $1v) (bvConst 8)
#! xor %%ecx,%%ecx -> bvAssign rcx (bvConst 0)
#! xor %%eax,%%eax -> bvAssign rax (bvConst 0)
#! xor $1v, $1v -> bvAssign $1v (bvConst 0)
#"""

comments = [
  lambda line: line in Set(["mbedtls_mpi_mul_mpi:", "nop", "sub    $0x1,%rbx"]),
  lambda line: line.startswith("push") or line.startswith("pop") or line.startswith("lea") or
               line.startswith("test") or line.startswith("cmp") or
               line.startswith("nopl") or line.startswith("nopw") or line.startswith("xchg") or
               line.startswith("#je") or line.startswith("#jne") or line.startswith("#jmp") or line.startswith("#jbe") or
               line.startswith("#callq"),
  lambda line: (re.search('%r(9|10|11|12|13|15)', line) and not re.search('\(%rax,%r11,1\)', line)) or
               re.search('%esi', line) or re.search('%edx', line) or re.search('%ecx', line),
  lambda line: re.search('%rdi', line) and not re.search('\(%rdi\)', line) or
               re.search('%rsi', line) and not re.search('\(%rsi\)', line)
]

def strip_code(gas):
  # Keep the first few lines.
  i = 0
  for line in gas:
    if line.strip() != "mbedtls_mpi_mul_mpi:" and not line.startswith("#"):
      break
    i = i + 1
  preamble = gas[0:i]
  # Find code between markers.
  gas = gas[i:]
  gas = gas[gas.index("\tnop"):len(gas) - gas[::-1].index("\tnop")]
  return preamble+gas

def add_markers(gas, vec):
  res = []
  i = 0
  for line in gas:
    res.append(line)
    if line.strip() == 'test   %edx,%edx':
      if i == 0:
        res.append('bvAssert bveTrue | bvrEq (bvrVar carry) (bvrConst 64 0)')
        res.append('bvAssume bveEq (bveVar carry) (bveConst 0) | bvrTrue')
      elif vec[i] == '0':
        res.append('bvAssume bveEq (bveVar carry) (bveConst 0) | bvrEq (bvrVar carry) (bvrConst 64 0)')
      elif vec[i] == '1':
        res.append('bvAssume bveEq (bveVar carry) (bveConst 1) | bvrEq (bvrVar carry) (bvrConst 64 1)')
        res.append('bvAssign rax (bvVar carry)')
      i += 1
    elif line.strip() == 'adc    %rdx,%rcx':
      res.append('bvAssert bveTrue | bvrEq (bvrVar carry) (bvrConst 64 0)')
      res.append('bvAssume bveEq (bveVar carry) (bveConst 0) | bvrTrue')
  return res

def is_comment(line):
  for c in comments:
    if c(line): return True
  return False

def make_comments(gas):
  res = []
  for line in gas:
    if is_comment(line.strip()) and not line.startswith('#'):
      res.append("#{}".format(line))
    else:
      res.append(line)
  return res

def add_rules(gas):
  gas = gas[:]
  gas.insert(0, rules)
  return gas

def clean(gas, vec):
  gas = strip_code(gas)
  gas = add_markers(gas, vec)
  gas = make_comments(gas)
  gas = add_rules(gas)
  return gas

def main():
  if (len(sys.argv) == 3):
    file = sys.argv[1]
    vec = sys.argv[2]
    gas = open(file).read().splitlines()
    gas = "\n".join(clean(gas, vec))
    print gas
  else:
    print "Wrong number of arguments."
    print "Usage: python " + sys.argv[0] + " ASSEMBLY VEC"

if __name__ == "__main__":
  main()
