
import re
import random
import string

default_ea_pattern = r"L(0x\w+)"

reserved_words = set([
  "const", "assign", "mov",
  "add", "adds", "adc", "adcs", "sub", "subs", "sbb", "sbbs", "mul", "mull", "split",
  "uadd", "uadds", "uadc", "uadcs", "usub", "usubs", "usbb", "usbbs", "umul", "umull", "usplit",
  "sadd", "sadds", "sadc", "sadcs", "ssub", "ssubs", "ssbb", "ssbbs", "smul", "smull", "ssplit",
  "shl", "cshl", "set", "clear", "nondet", "cmove", "cmov", "and", "or", "not",
  "assert", "assume", "cut", "ecut", "rcut", "ghost", "nop",
  "vars", "neg", "sq", "ext", "uext", "sext", "mod", "umod", "srem", "smod", "xor",
  "ult", "ule", "ugt", "uge", "slt", "sle", "sgt", "sge",
  "true", "eq", "eqmod",
  "proc", "call", "ulimbs", "slimbs", "limbs", "prove", "with", "all", "cuts", "assumes", "ghosts", "precondition"
])

# Generate a random ID.
def random_id(length):
  return ''.join([random.choice(string.ascii_lowercase)] + (random.choice(string.ascii_lowercase + string.digits) for _ in range(length)))

# Generate a random string.
def random_str(length):
  return ''.join(random.choice(string.ascii_lowercase + string.digits) for _ in range(length))

def break_at(strs, indent, split, delimit = ","):
  padding = ""
  for i in range(indent):
    padding = padding + " "
  lines = []
  for i in range(len(strs) / split + 1):
    group = strs[i * split:(i * split + split)]
    lines.append(padding + (delimit + " ").join(group))
  res = (delimit + "\n").join(lines)
  return res

# Find variables in an instruction. The instruction is represented by a one line string.
def vars_of_instr(instr):
  vars = set()
  pattern = r"\b[a-zA-Z_][a-zA-Z0-9_]*\b"
  ms = re.findall(pattern, instr)
  for m in ms:
    if isinstance(m, tuple):
      vars |= set(m)
    else:
      vars.add(m)
  vars = vars - reserved_words
  return vars

# Find the lv's of an instruction. The instruction is represented by a one line string.
def lvs_of_instr(instr):
  lvs = set()
  patterns = [
    r"assign\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"mov\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"add\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"adc\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"adds\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"adcs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sub\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sbb\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"subs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sbbs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"mul\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"mull\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"split\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"uadd\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"uadc\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"uadds\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"uadcs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"usub\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"usbb\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"usubs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"usbbs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"umul\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"umull\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"usplit\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sadd\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sadc\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sadds\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"sadcs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"ssub\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"ssbb\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"ssubs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"ssbbs\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"smul\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"smull\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"ssplit\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"shl\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"set\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"clear\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"nondet\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"cmove\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"cmov\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"and\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"or\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"not\s+([a-zA-Z_][a-zA-Z0-9_]*)",
    r"cshl\s+([a-zA-Z_][a-zA-Z0-9_]*)\s+([a-zA-Z_][a-zA-Z0-9_]*)"
  ]
  for pattern in patterns:
    ms = re.findall(pattern, instr)
    for m in ms:
      if isinstance(m, tuple):
        lvs |= set(m)
      else:
        lvs.add(m)
  return lvs

# Find the rv's of an instruction. The instruction is represented by a one line string.
def rvs_of_instr(instr):
  return vars_of_instr(instr) - lvs_of_instr(instr)

# Find the new ghost variables defined in an instruction. The instruction is represented by a one line string.
def gvs_of_instr(instr):
  gvs = set()
  if instr.startswith("ghost"):
    line = instr[7:instr.index(":")].rstrip('\n')
    gvs |= set([token.strip() for token in line.split(",")])
  return gvs

# Find input variables of a program. The program is represented by a list of strings.
# It is assumed that one instruction corresponds to one string (no newline included).
def inputs_of_program(instrs):
  inputs = set()
  vars = set()
  gvs = set()
  for instr in instrs:
    lvs = lvs_of_instr(instr)
    rvs = rvs_of_instr(instr)
    gvs |= gvs_of_instr(instr)
    inputs |= (rvs - vars - gvs)
    vars |= lvs
  inputs = sorted(list(inputs))
  return inputs

# Return the address variable.
def compute_address(addr, offset, ea_pattern=default_ea_pattern):
  match = re.search(ea_pattern, addr)
  if match:
    base = match.group(1)
    l = len(base) - 2
    base = int(base, 0)
    addr = base + offset
    addr = ("L0x%0." + str(l) + "x") % addr
  return addr

# Convert a Singular polynomial to an eexp.
# If modulus is positive, every coefficient c will become (c mod modulus).
def eexp_of_singular_poly(poly, modulus=0, indent=2, split=4):
  def convert_term(term, modulus):
    term = term.strip()
    neg = False
    if str.startswith(term, "-"):
      neg = True
      term = term[1:].strip()
    try:
      num = int(term)
      num = -num if neg else num
      if modulus > 0:
        num = num % modulus
        return ("%d" % num)
      elif neg:
        return ("(%d)" % num)
      else:
        return ("%d" % num)
    except ValueError:
      if neg:
        if modulus > 0:
          return ("%d * %s" % (-1 % modulus, term))
        else:
          return ("(-1) * %s" % term)
      else:
        return ("%s" % term)
  def convert_monomial(mon, modulus):
    terms = mon.split("*")
    return " * ".join(map(lambda t : convert_term(t, modulus), terms))
  padding = ""
  for i in range(indent):
    padding = padding + " "
  poly = poly.replace("-", "+ -")
  mons = poly.split("+")
  mons = map(lambda m : convert_monomial(m, modulus), mons)
  outputs = []
  for i in range(len(mons) / split):
    group = mons[i * split:(i * split + split)]
    outputs.append(padding + ", ".join(group))
  eexp = ",\n".join(outputs)
  res = ("add [\n{}\n]".format(eexp))
  return res
