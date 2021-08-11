
import re
import random
import string

default_ea_pattern = r"L(0x\w+)"

reserved_instrs_lvs = [
  ("const", 0), ("assign", 1), ("mov", 1),
  ("add", 1), ("adds", 2), ("addr", 2), ("adc", 1), ("adcs", 2), ("adcr", 2),
  ("sub", 1), ("subs", 2), ("subc", 2), ("subb", 2), ("subr", 2),
  ("sbc", 1), ("sbcs", 2), ("sbcr", 2),
  ("sbb", 1), ("sbbs", 2), ("sbbr", 2),
  ("mul", 1), ("muls", 2), ("mulr", 2), ("mull", 2), ("mulj", 1),
  ("spl", 2), ("split", 2),
  ("uadd", 1), ("uadds", 2), ("uaddr", 2), ("uadc", 1), ("uadcs", 2), ("uadcr", 2),
  ("usub", 1), ("usubs", 2), ("usubc", 2), ("usubb", 2), ("usubr", 2),
  ("usbc", 1), ("usbcs", 2), ("usbcr", 2),
  ("usbb", 1), ("usbbs", 2), ("usbbr", 2),
  ("umul", 1), ("umuls", 2), ("umulr", 2), ("umull", 2), ("umulj", 1),
  ("uspl", 2), ("usplit", 2),
  ("sadd", 1), ("sadds", 2), ("saddr", 2), ("sadc", 1), ("sadcs", 2), ("sadcr", 2),
  ("ssub", 1), ("ssubs", 2), ("ssubc", 2), ("ssubb", 2), ("ssubr", 2),
  ("ssbc", 1), ("ssbcs", 2), ("ssbcr", 2),
  ("ssbb", 1), ("ssbbs", 2), ("ssbbr", 2),
  ("smul", 1), ("smuls", 2), ("smulr", 2), ("smull", 2), ("smulj", 1),
  ("sspl", 2), ("ssplit", 2),
  ("shl", 1), ("lsl", 1), ("cshl", 2), ("clsl", 2),
  ("set", 1), ("clear", 1), ("nondet", 1), ("cmove", 1), ("cmov", 1),
  ("and", 1), ("or", 1), ("not", 1),
  ("cast", 1), ("vpc", 1), ("join", 1),
  ("assert", 0), ("assume", 0), ("cut", 0), ("ecut", 0), ("rcut", 0), ("ghost", 0), ("nop", 0)
]

reserved_instrs = set([i[0] for i in reserved_instrs_lvs])

reserved_logics = set([
  "vars", "neg", "sq", "ext", "uext", "sext", "mod", "umod", "srem", "smod", "xor",
  "ult", "ule", "ugt", "uge", "slt", "sle", "sgt", "sge",
  "true", "eq", "eqmod",
  "proc", "call", "ulimbs", "slimbs", "limbs", "prove", "with", "all", "cuts", "assumes", "ghosts", "precondition"
])

reserved_words = reserved_instrs.union(reserved_logics)

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
  pattern = r"(?<!@)\b[a-zA-Z_][a-zA-Z0-9_]*\b"
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
  patterns = []
  for instr_num_lv in reserved_instrs_lvs:
    instr = instr_num_lv[0]
    num_lv = instr_num_lv[1]
    patterns.append(re.compile(instr + "".join(["\s+([a-zA-Z_][a-zA-Z0-9_]*)" for i in range(num_lv)])))
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
