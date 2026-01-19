#!/usr/bin/env python3

# * __random_N__ is replaced by a random string where N is a natural number.
#   Every occurrence of __random_i__ is replaced by the same string.
# * __counter_C__ is replaced by the value of the counter named C
# * __incr_C__ is replaced by the value of the counter C plus 1 and the counter C is incremented by 1.
# * __C_incr__ is replaced by the value of the counter C and the counter C is incremented by 1.

import sys
import re
import collections
import string
import random
from argparse import ArgumentParser
from time import process_time
import cryptoline

length_random_string = 5

verbose = False
use_re = False
auto_carries = False
auto_unused = False
sort_rules = True

counters = {}

ea_pattern = "L0x[a-fA-f0-9]+"
address_offset_group_pattern = r"(L0x\w+)\[\s*([\+|-])\s*(\d+)\s*\]"
address_offset_pattern = r"L0x\w+\[\s*[\+|-]\s*\d+\s*\]"
nop_instr = "nop"

def debug(msg):
  print(msg)

class Instr:
  def __init__(self, asm, dsl):
    self.asm = asm
    self.dsl = dsl
    self.substs = []
  # Add local substitutions applicable only to this instruction
  def addSubst(self, subst):
    self.substs.append(subst)
  # Add local substitutions to this instruction
  def applySubst(self):
    for (lhs, rhs) in self.substs:
      self.dsl = re.sub(lhs, rhs, self.dsl)
  def to_string(self, pasm=True):
    return (('(* ' + self.asm + ' *)' if pasm else '') +
            ('\n' if pasm and self.dsl != nop_instr else '') +
            (self.dsl + ';' if self.dsl != nop_instr else ''))

# Flatten a list of lists
def flatten(vs):
  return [num for elem in vs for num in elem]

# Return true if the input line is a comment about translation specification
def is_tspec_comment(line):
  return re.match(r"^#!.*$", line)

# Return true if the input line is an assembly comment
def is_asm_comment(line):
  return re.match(r"^#.*$", line) and not is_tspec_comment(line)

# Return true if the input line is an empty line
def is_empty_line(line):
  return re.match(r"^\s*$", line)

def split_address(addr):
  match = re.search(address_offset_group_pattern, addr)
  if match:
    base = match.group(1)
    sign = match.group(2)
    offset = int(match.group(3))
    if sign == "+":
      return (base, offset)
    elif sign == "-":
      return (base, -offset)
    else:
      raise ("Unknown address: {}".format(addr))
  else:
    raise ("Unknown address: {}".format(addr))

# Process builtin variables such as $1c, $2c, $3v, etc
def process_builtin_variables(pat, rep, indices):
  pairs = [(pat, rep)]
  tmp = []
  for i in indices:
    for lhs, rhs in pairs:
      if lhs.find("$" + str(i) + "c") != -1:
        pc = lhs.replace("$" + str(i) + "c", "(\\#|\\$)?(?P<c" + str(i) + ">[-]?0x[0-9a-fA-F]+)", 1)
        pc = pc.replace("$" + str(i) + "c", "(\\#|\\$)?(?P=c" + str(i) + ")")
        rc = rhs.replace("$" + str(i) + "c", "\\g<c" + str(i) + ">")
        tmp.append((pc, rc))
        pc = lhs.replace("$" + str(i) + "c", "(\\#|\\$)?(?P<c" + str(i) + ">[-]?\\d+)", 1)
        pc = pc.replace("$" + str(i) + "c", "(\\#|\\$)?(?P=c" + str(i) + ")")
        rc = rhs.replace("$" + str(i) + "c", "\\g<c" + str(i) + ">")
        tmp.append((pc, rc))
      elif lhs.find("$" + str(i) + "v") != -1:
        pv = lhs.replace("$" + str(i) + "v", "%%(?P<v" + str(i) + ">[a-zA-Z]\\w*(?:\\[\\d+\\])?)", 1)
        pv = pv.replace("$" + str(i) + "v", "%%(?P=v" + str(i) + ")")
        rv = rhs.replace("$" + str(i) + "v", "\\g<v" + str(i) + ">")
        tmp.append((pv, rv))
      elif lhs.find("$" + str(i) + "ea") != -1:
        pv = lhs.replace("$" + str(i) + "ea", "%%(?P<ea" + str(i) + ">" + ea_pattern + ")", 1)
        pv = pv.replace("$" + str(i) + "ea", "%%(?P=ea" + str(i) + ")")
        rv = rhs.replace("$" + str(i) + "ea", "\\g<ea" + str(i) + ">")
        tmp.append((pv, rv))
      elif lhs.find("$" + str(i) + "xmm") != -1:
        pv = lhs.replace("$" + str(i) + "xmm", "%%(?P<xmm" + str(i) + ">xmm\\d+)", 1)
        pv = pv.replace("$" + str(i) + "xmm", "%%(?P=xmm" + str(i) + ")")
        rv = rhs.replace("$" + str(i) + "xmm", "\\g<xmm" + str(i) + ">")
        tmp.append((pv, rv))
      elif lhs.find("$" + str(i) + "ymm") != -1:
        pv = lhs.replace("$" + str(i) + "ymm", "%%(?P<ymm" + str(i) + ">ymm\\d+)", 1)
        pv = pv.replace("$" + str(i) + "ymm", "%%(?P=ymm" + str(i) + ")")
        rv = rhs.replace("$" + str(i) + "ymm", "\\g<ymm" + str(i) + ">")
        tmp.append((pv, rv))
      elif lhs.find("$" + str(i) + "zmm") != -1:
        pv = lhs.replace("$" + str(i) + "zmm", "%%(?P<zmm" + str(i) + ">zmm\\d+)", 1)
        pv = pv.replace("$" + str(i) + "zmm", "%%(?P=zmm" + str(i) + ")")
        rv = rhs.replace("$" + str(i) + "zmm", "\\g<zmm" + str(i) + ">")
        tmp.append((pv, rv))
      else:
        tmp.append((lhs, rhs))
    pairs = tmp
    tmp = []
  return pairs

# Parse translation rules of the form "lhs -> rhs" specified by the input line
def parse_rule(line):
  # Find all variable/constant indices
  indices_set = set()
  for (idx1, idx2, idx3, idx4, idx5, idx6) in re.findall(r'\$(\d+)c|\$(\d+)v|\$(\d+)ea|\$(\d+)xmm|\$(\d+)ymm|\$(\d+)zmm', line):
    if idx1 != '': indices_set.add(int(idx1))
    if idx2 != '': indices_set.add(int(idx2))
    if idx3 != '': indices_set.add(int(idx3))
    if idx4 != '': indices_set.add(int(idx4))
    if idx5 != '': indices_set.add(int(idx5))
    if idx6 != '': indices_set.add(int(idx6))
  indices = list(indices_set)
  tokens = list(map(lambda x: x.strip(), line.split("->")))
  pairs = process_builtin_variables(tokens[0], tokens[1], indices)
#  pairs = [(re.sub(r"\s+", "\\s*", lhs.replace(",", " , ").replace("\\n", "\\s*\\n\\s*")), rhs) for (lhs, rhs) in pairs]
  pairs = [(re.sub(r'\s+', 'whitespace', lhs.replace(",", " , ").replace("\\n", "\\s*\\n\\s*")).replace('whitespace', '\\s*'), rhs) for (lhs, rhs) in pairs]
  return pairs

# Parse translation specification in a line
def parse_tspec_line(line):
  substs = []
  rules = []
  if line.find("->") == -1:
    substs += parse_subst(line)
  else:
    rules += parse_rule(line)
  return (substs, rules)

# Parse translation specification in a comment line
def parse_tspec_comment(line):
  return parse_tspec_line(re.sub(r"^#!", "", line))

# Constructs a tspec from a list of variable substitution rules and a list of instruction translation rules
def mk_tspec(substs, rules):
  return (collections.OrderedDict(substs), collections.OrderedDict(rules))

# Sort variable substitution rules in a tspec
def sort_tspec(tspec):
  substs = sorted(tspec[0].items(), key=lambda rule: len(rule[0]), reverse=True) if sort_rules else tspec[0].items()
  rules = tspec[1]
  return (collections.OrderedDict(substs), rules)

# Merge the second tspec into the first tspec.
# The rules in the first tpsec have higher priorities.
def merge_tspec(tspec1, tspec2):
  substs = collections.OrderedDict(tspec1[0])
  rules = collections.OrderedDict(tspec1[1])
  for k, v in tspec2[0].items():
    if not (k in substs):
      substs[k] = v
  for k, v in tspec2[1].items():
    if not (k in rules):
      rules[k] = v
  return sort_tspec((substs, rules))

# Parse translation specification in a file
# Variable substitution rules: sort by length (longer rules have higher priorities)
# Instruction translation rules: apply by appearance order
def parse_tspec(fn, line_parser, line_filter):
  substs = []
  rules = []
  with open(fn) as f:
    lines = map(line_parser, [item for item in f.readlines() if line_filter(item)])
    substs_set = set()
    rules_set = set()
    for line_substs, line_rules in lines:
      for k, v in line_substs:
        if not (k in substs_set):
          substs_set.add(k)
          substs.append((k, v))
      for k, v in line_rules:
        if not (k in rules_set):
          rules_set.add(k)
          rules.append((k, v))
  return sort_tspec(mk_tspec(substs, rules))

# Parse translation specification in an external file
def parse_external_tspec(fn):
  return parse_tspec(fn, parse_tspec_comment, lambda item: not is_asm_comment(item) and not is_empty_line(item))

# Parse translation specification in a gas file
def parse_internal_tspec(fn):
  return parse_tspec(fn, parse_tspec_comment, lambda item: is_tspec_comment(item))

# Parse variable substitution in a line
def parse_subst(line):
  # Find all variable/constant indices
  indices_set = set()
  for (idx1, idx2, idx3, idx4, idx5, idx6) in re.findall(r'\$(\d+)c|\$(\d+)v|\$(\d+)ea|\$(\d+)xmm|\$(\d+)ymm|\$(\d+)zmm', line):
    if idx1 != '': indices_set.add(int(idx1))
    if idx2 != '': indices_set.add(int(idx2))
    if idx3 != '': indices_set.add(int(idx3))
    if idx4 != '': indices_set.add(int(idx4))
    if idx5 != '': indices_set.add(int(idx5))
    if idx6 != '': indices_set.add(int(idx6))
  indices = list(indices_set)
  substs = []
  for pattern in line.split(";"):         # use ';' to split patterns in a line
    tokens = list(map(lambda x : x.strip(), pattern.split("=")))
    if use_re:
      lhs = tokens[0]
    else:
      lhs = re.escape(tokens[0])
      lhs = lhs.replace('\\$', '$')          # x86 constants start with '$'
      lhs = lhs.replace('\\#', '#')          # arm constants start with '#'
    lhs = re.sub(r"(\\ )+", "\\\\s+", lhs)
    rhs = tokens[1]
    pairs = process_builtin_variables(lhs, rhs, indices)
    # Add word boundary
    for lhs, rhs in pairs:
      lhs = "\\b%s" % lhs if re.match(r"^[a-zA-Z0-9_].*", lhs) else lhs
      lhs = "%s\\b" % lhs if re.match(r".*[a-zA-Z0-9_]$", lhs) else lhs
      substs.append((lhs, rhs))
  return substs

# Replace __random_?__ with a random string
def replace_random(line):
  # Find all indices
  indices_set = set()
  for idx in re.findall(r'__random_(\d+)__', line):
    indices_set.add(int(idx))
  # Replace __random_?__
  for idx in list(indices_set):
    r = ''.join(random.choice(string.ascii_lowercase + string.digits) for _ in range(length_random_string))
    line = line.replace("__random_{}__".format(idx), r)
  return line

def get_counter(ct):
  if ct in counters:
    return counters[ct]
  else:
    return 0

def incr_counter(ct):
  counters[ct] = get_counter(ct) + 1

def replace_counter(line):
  cts = re.findall(r"__(incr|counter)_([a-zA-Z0-9]+)__|__([a-zA-Z0-9]+)_(incr)_", line)
  for (cmd1, name1, name2, cmd2) in cts:
    if cmd1 == "incr":
      incr_counter(name1)
      line = line.replace(f"__{cmd1}_{name1}__", str(get_counter(name1)), 1)
    elif cmd1 == "counter":
      line = line.replace(f"__{cmd1}_{name1}__", str(get_counter(name1)), 1)
    elif cmd2 == "incr":
      line = line.replace(f"__{name2}_{cmd2}__", str(get_counter(name2)), 1)
      incr_counter(name2)
  return line

def replace_address_with_offset(line):
  matches = re.findall(address_offset_pattern, line)
  for addr_off in matches:
    (base, offset) = split_address(addr_off)
    addr = cryptoline.compute_address(base, offset)
    line = line.replace(addr_off, addr)
  return line

def compute(instr):
  instr.dsl = re.sub(r'`([^`]+)`', lambda m: str(eval(m.group(1))), instr.dsl)

# Translate instructions
def translate_instrs(tspec, instrs):
  # Apply variable substitutions
  substs, rules = tspec
  for instr in instrs:
    instr.applySubst()
    for lhs, rhs in substs.items():
      instr.dsl = re.sub(lhs, rhs, instr.dsl)
    instr.applySubst()
    # Do some computation
    compute(instr)
  # Apply translation rules
  skip = 0
  for i in range(len(instrs)):
    instr = instrs[i]
    if skip > 0:
      instr.asm = ""
      instr.dsl = nop_instr
      skip = skip - 1
      continue
    for lhs, rhs in rules.items():
      res = instr.dsl
      # Check if the lhs of the rule requires more than one instruction
      lhs_num_lines = lhs.count("\\n") + 1
      if lhs_num_lines > 1 and i + lhs_num_lines <= len(instrs):
        res = "\n".join([x.dsl for x in instrs[i:(i+lhs_num_lines)]])
      if re.match(lhs, res):
        # Skip following matched instructions
        skip = lhs_num_lines - 1
        res = re.sub(lhs, rhs, res)
        res = re.sub("#.*$", "", res).strip()
        res = replace_address_with_offset(res)
        res = replace_random(res)
        res = replace_counter(res)
        if lhs_num_lines > 1:
          instr.asm = "\n   ".join([x.asm for x in instrs[i:(i+lhs_num_lines)]])
          instr.dsl = res
        else:
          instr.dsl = res
        # Do some computation
        compute(instr)
        break
  return [instr for instr in instrs if instr.asm != ""]

# Parse a gas file
def parse_gas(fn):
  lines = [line.rstrip("\r\n").rstrip('\n') for line in open(fn)]
  instrs = []
  substs = []
  rules = []
  substs_set = set()
  rules_set = set()
  for line in lines:
    if is_empty_line(line):
      continue
    elif is_asm_comment(line):
      continue
    elif is_tspec_comment(line):
      (line_substs, line_rules) = parse_tspec_comment(line)
      for k, v in line_substs:
        if not (k in substs_set):
          substs_set.add(k)
          substs.append((k, v))
      for k, v in line_rules:
        if not (k in rules_set):
          rules_set.add(k)
          rules.append((k, v))
    else:
      line = line.strip()
      instr = Instr(line, line)
      instrs.append(instr)
      local_subst_comment = re.search('#!(.*?)$', line)
      if local_subst_comment:
        for subst in parse_subst(local_subst_comment.group(1)):
          instr.addSubst(subst)
  return (sort_tspec(mk_tspec(substs, rules)), instrs)

def print_instrs(instrs, pasm=True):
  for instr in instrs:
    print(instr.to_string(pasm=pasm))

def string_of_typed_arg(v, vtypes, default):
  """
  Return the string representation of a typed procedure argument.

  Args:
    v: a procedure argument
    vtypes: a partial map from a variable to its type
    default: a default type

  Returns:
    the string representation of v
  """
  if v in vtypes:
    return vtypes[v] + " " + v
  elif default:
    return default + " " + v
  else:
    return v

def main():
  global verbose, use_re, auto_carries, auto_unused, sort_rules

  parser = ArgumentParser()
  parser.add_argument("gas_file", help="the gas file to be translated")
  parser.add_argument("cl_file", help="the CL file for storing the translated result", nargs="?", default=None)
  parser.add_argument("-ac", "--auto-carry", help="automatically insert assertions and assumptions about unused carries", dest="auto_carries", action="store_true")
  parser.add_argument("-au", "--auto-unused", help="automatically mark unused variables", dest="auto_unused", action="store_true")
  parser.add_argument("--no-main", help="no `proc main`", dest="nomain", action="store_true")
  parser.add_argument("--no-pre", help="no precondition", dest="nopre", action="store_true")
  parser.add_argument("--no-post", help="no postcondition", dest="nopost", action="store_true")
  parser.add_argument("--no-sort", help="do not sort rules by length", dest="nosort", action="store_true")
  parser.add_argument("-o", help="write output to the specified file", dest="output", default=None)
  parser.add_argument("-r", action="append", help="a file containing translation rules. Multiple -r arguments can be provided. A rule of a pattern in a former file has a higher priority than another rule of the same pattern in a latter file.", dest="rules", default=[])
  parser.add_argument("-re", help="use regular expressions in variable substitution", dest="use_re", action="store_true")
  parser.add_argument("-t", help="the default type of program inputs", dest="type", default="")
  parser.add_argument("-vt", help="the type of a specific input variable", nargs=2, metavar=('VAR', 'TYPE'), action="append")
  parser.add_argument("-v", "--verbose", help="print verbose messages", dest="verbose", action="store_true")
  parser.add_argument('--no-asm', help="no comments containing the original assembly code", dest="noasm", action="store_true")
  args = parser.parse_args()

  if args.verbose: verbose = True
  if args.use_re: use_re = True
  if args.auto_carries: auto_carries = True
  if args.auto_unused: auto_unused = True
  if args.nosort: sort_rules = False
  print_asm = False if args.noasm else True

  vtypes = {}
  if args.vt:
      for (var, typ) in args.vt:
          vtypes[var] = typ

  # Read gas file
  if verbose: t1 = process_time()
  (tspec, instrs) = parse_gas(args.gas_file)
  if verbose: t2 = process_time()
  if verbose: sys.stderr.write("Time in reading gas file: {}\n".format(t2 - t1))

  # Parse external translation rules
  for rule_file in args.rules:
    ts = parse_external_tspec(rule_file)
    tspec = merge_tspec(tspec, ts)
  if verbose:
    print("Translation rules in regex:")
    for i in tspec[0]:
      print("  {} -> {}".format(i, tspec[0][i]))
    for i in tspec[1]:
      print("  {} -> {}".format(i, tspec[1][i]))

  # Redirect output to a file
  output_file = None
  if args.output != None and args.cl_file != None and args.output != args.cl_file:
    print(f"Found multiple output files: {args.output}, {args.cl_file}. Please specify only one output file.")
    sys.exit(-1)
  if args.output != None: output_file = args.output
  if args.cl_file != None: output_file = args.cl_file
  if output_file != None: sys.stdout = open(output_file, 'w')

  # Translate instructions
  if verbose: t1 = process_time()
  instrs = translate_instrs(tspec, instrs)
  if verbose: t2 = process_time()
  if verbose: sys.stderr.write("Time in translation: {}\n".format(t2 - t1))


  # Output translation result
  if not args.nomain:
    # Calculate program inputs
    if verbose: t1 = process_time()
    inputs = cryptoline.inputs_of_program(flatten([instr.dsl.split(";") for instr in instrs]))
    if verbose: t2 = process_time()
    if verbose: sys.stderr.write("Time in calculating program inputs: {}\n".format(t2 - t1))
    print ("proc main (%s) =" % ", ".join([string_of_typed_arg(i, vtypes, args.type) for i in inputs]))
  if not args.nopre: print ("{\n  true\n  &&\n  true\n}\n")
  instr_strs = list(filter (lambda s: s != '',
                      map((lambda i: i.to_string(print_asm)), instrs)))
  instr_strs = flatten([str.split("\n") for str in instr_strs])
  if auto_carries:
    instr_strs = cryptoline.assert_unused_carries(instr_strs, annot=True)
  if auto_unused:
    instr_strs = cryptoline.find_unused_variables(instr_strs, annot=True)
  print ("\n".join(instr_strs) + "\n")
  if not args.nopost: print ("{\n  true\n  &&\n  true\n}\n")

  sys.stdout.close()

if __name__ == "__main__":
  main()
