
import re
import random
import string

default_ea_pattern = r"L(0x\w+)"

# num_atoms, indices-lvs, indices-rvs, indices-cvs
instr_specs_raw = {
    "const":  (0, [], [], []),
    "mov":    (2, [0], [1], []),
    "add":    (3, [0], [1, 2], []),
    "adds":   (4, [0, 1], [2, 3], [0]),
    "adc":    (4, [0], [1, 2, 3], []),
    "adcs":   (5, [0, 1], [2, 3, 4], [0]),
    "sub":    (3, [0], [1, 2], []),
    "subs":   (4, [0, 1], [2, 3], [0]),
    "subc":   (4, [0, 1], [2, 3], [0]),
    "subb":   (4, [0, 1], [2, 3], [0]),
    "sbc":    (4, [0], [1, 2, 3], []),
    "sbcs":   (5, [0, 1], [2, 3, 4], [0]),
    "sbb":    (4, [0], [1, 2, 3], []),
    "sbbs":   (5, [0, 1], [2, 3, 4], [0]),
    "mul":    (3, [0], [1, 2], []),
    "muls":   (4, [0, 1], [2, 3], [0]),
    "mull":   (4, [0, 1], [2, 3], []),
    "mulj":   (3, [0], [1, 2], []),
    "spl":    (4, [0, 1], [2, 3], []),
    "split":  (4, [0, 1], [2, 3], []),
    "uadd":   (3, [0], [1, 2], []),
    "uadds":  (4, [0, 1], [2, 3], [0]),
    "uadc":   (4, [0], [1, 2, 3], []),
    "uadcs":  (5, [0, 1], [2, 3, 4], [0]),
    "usub":   (3, [0], [1, 2], []),
    "usubs":  (4, [0, 1], [2, 3], [0]),
    "usubc":  (4, [0, 1], [2, 3], [0]),
    "usubb":  (4, [0, 1], [2, 3], [0]),
    "usbc":   (4, [0], [1, 2, 3], []),
    "usbcs":  (5, [0, 1], [2, 3, 4], [0]),
    "usbb":   (4, [0], [1, 2, 3], []),
    "usbbs":  (5, [0, 1], [2, 3, 4], [0]),
    "umul":   (3, [0], [1, 2], []),
    "umuls":  (4, [0, 1], [2, 3], [0]),
    "umull":  (4, [0, 1], [2, 3], []),
    "umulj":  (3, [0], [1, 2], []),
    "uspl":   (4, [0, 1], [2, 3], []),
    "usplit": (4, [0, 1], [2, 3], []),
    "sadd":   (3, [0], [1, 2], []),
    "sadds":  (4, [0, 1], [2, 3], [0]),
    "sadc":   (4, [0], [1, 2, 3], []),
    "sadcs":  (5, [0, 1], [2, 3, 4], [0]),
    "ssub":   (3, [0], [1, 2], []),
    "ssubs":  (4, [0, 1], [2, 3], [0]),
    "ssubc":  (4, [0, 1], [2, 3], [0]),
    "ssubb":  (4, [0, 1], [2, 3], [0]),
    "ssbc":   (4, [0], [1, 2, 3], []),
    "ssbcs":  (5, [0, 1], [2, 3, 4], [0]),
    "ssbb":   (4, [0], [1, 2, 3], []),
    "ssbbs":  (5, [0, 1], [2, 3, 4], [0]),
    "smul":   (3, [0], [1, 2], []),
    "smuls":  (4, [0, 1], [2, 3], [0]),
    "smull":  (4, [0, 1], [2, 3], []),
    "smulj":  (3, [0], [1, 2], []),
    "sspl":   (4, [0, 1], [2, 3], []),
    "ssplit": (4, [0, 1], [2, 3], []),
    "shl":    (3, [0], [1, 2], []),
    "shls":   (4, [0, 1], [2, 3], []),
    "lsl":    (3, [0], [1, 2], []),
    "cshl":   (5, [0, 1], [2, 3, 4], []),
    "clsl":   (5, [0, 1], [2, 3, 4], []),
    "shr":    (3, [0], [1, 2], []),
    "shrs":   (4, [0, 1], [2, 3], []),
    "sar":    (3, [0], [1, 2], []),
    "sars":   (4, [0, 1], [2, 3], []),
    "cshr":   (5, [0, 1], [2, 3, 4], []),
    "cshrs":  (6, [0, 1, 2], [3, 4, 5], []),
    "set":    (1, [0], [], []),
    "clear":  (1, [0], [], []),
    "nondet": (1, [0], [], []),
    "cmov":   (4, [0], [1, 2, 3], []),
    "and":    (3, [0], [1, 2], []),
    "or":     (3, [0], [1, 2], []),
    "not":    (3, [0], [1, 2], []),
    "cast":   (2, [0], [1], []),
    "vpc":    (2, [0], [1], []),
    "join":   (3, [0], [1, 2], []),
    "assert": (None, r"(.*)"),
    "assume": (None, r"(.*)"),
    "cut":    (None, r"(.*)"),
    "ecut":   (None, r"(.*)"),
    "rcut":   (None, r"(.*)"),
    "ghost":  (None, r"([^:]+):.*"),
    "nop":    (0, [], [], [])
}
instr_specs = {}
for s in instr_specs_raw:
    data = instr_specs_raw[s]
    if data[0] == None:
        instr_specs[s] = { "is-annot": True, "pattern": data[1], 'is-ghost': s == 'ghost'}
    else:
        instr_specs[s] = { "is-annot": False, "num-vars": data[0], "lvs-idx": data[1], "rvs-idx": data[2], "cvs-idx": data[3] }

instr_names = [s for s in instr_specs]
instr_names.sort(reverse=True)
instr_names_pattern = "|".join(instr_names)

reserved_logics = set([
    "vars", "neg", "sq", "ext", "uext", "sext",
    "mod", "umod", "srem", "smod", "xor",
    "ult", "ule", "ugt", "uge", "slt", "sle", "sgt", "sge",
    "shr", "lsr", "sar", "asr",
    "true", "eq", "eqmod", "equmod", "eqsmod", "eqsrem",
    "proc", "call", "ulimbs", "slimbs", "limbs", "prove", "with", "all", "cuts", "assumes", "ghosts", "precondition"
])

reserved_words = set(instr_names).union(reserved_logics)

var_pattern = r"\b[a-zA-Z_][a-zA-Z0-9_]*(?:\s*@\s*[su]int[0-9]+)?\b"
typ_pattern = r"[su]int[0-9]+"
atom_pattern = r"\b(?:[a-zA-Z_][a-zA-Z0-9_]*|0x[a-fA-F0-9]+|0b[01]+|[0-9]+)(?:\s*@\s*[su]int[0-9]+)?|[(][^@]*[)](?:\s*@\s*[su]int[0-9]+)\b"

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

# is_type_str(str) is true if str is a type
def is_type_str(str):
    return re.match(typ_pattern, str)

# is_instr(str) returns {'instr': n, 'rest': s} (n: the instruction name, s: the string of operands) if str is an instruction and None otherwise.
def is_instr(str):
    m = re.match(r"^\s*(" + instr_names_pattern + r")\s*(.*)$", str)
    if m:
        return { "instr": m.group(1), "rest": m.group(2) }
    else:
        return None

# strip_explicit_type(str) removes explicit type specification in str
def strip_explicit_type(str):
    m = re.match(r"\b([a-zA-Z_][a-zA-Z0-9_]*)(?:\s*@\s*[su]int[0-9]+)?\b", str)
    if m:
        return m.group(1)
    else:
        return str

# filter_variables(strs) returns variables in strs
def filter_variables(strs):
    return [s for s in strs if re.match(var_pattern, s)]

# get_vars(iname, str) returns variables in the string of operands for the instruction with name iname.
# The returned value is a dictionary {'lvs': lvs, 'rvs': rvs, 'cvs': cvs, 'gvs': gvs} where
# - lvs: the set of destination variables
# - rvs: the set of source variables
# - cvs: the set of carry variables in lvs
# - gvs: the set of ghost variables declared
def get_vars(iname, str):
    s = instr_specs[iname]
    if s['is-annot']:
        m = re.match(s['pattern'], str)
        if m:
            ms = re.findall(atom_pattern, m.group(1))
            ms = [strip_explicit_type(m) for m in ms]
            lvs = set()
            rvs = set(filter_variables(ms))
            cvs = set()
            gvs = rvs if s['is-ghost'] else set()
            return { 'lvs': lvs, 'rvs': rvs, 'cvs': cvs, 'gvs': gvs }
        else:
            return { 'lvs': set(), 'rvs': set(), 'cvs': set(), 'gvs': set() }
    else:
        ms = re.findall(atom_pattern, str)
        ms = [strip_explicit_type(m) for m in ms]
        lvs = set(filter_variables([ms[i] for i in s['lvs-idx']]))
        rvs = set(filter_variables([ms[i] for i in s['rvs-idx']]))
        cvs = set(filter_variables([ms[i] for i in s['cvs-idx']]))
        gvs = set()
        return { 'lvs': lvs, 'rvs': rvs, 'cvs': cvs, 'gvs': gvs }

# Find variables in an instruction. The instruction is represented by a one line string.
def vars_of_instr(instr):
    m = is_instr(instr)
    if m:
        return get_vars(m['instr'], m['rest'])
    else:
        return { 'lvs': set(), 'rvs': set(), 'cvs': set(), 'gvs': set() }

# Find input variables of a program. The program is represented by a list of strings.
# It is assumed that one instruction corresponds to one string (no newline included).
def inputs_of_program(instrs):
    inputs = set()
    defined = set()
    for instr in instrs:
        vars = vars_of_instr(instr)
        inputs |= (vars['rvs'] - defined)
        defined |= (vars['lvs'] | vars['gvs'])
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

def assert_unused_carries(instrs, annot=False):
    res = []
    used = set()
    instrs.reverse()
    for instr in instrs:
        m = is_instr(instr)
        if m:
            vars = get_vars(m['instr'], m['rest'])
            is_annot = instr_specs[m['instr']]['is-annot']
            if not is_annot:
                unused = [c for c in vars['cvs'] if not (c in used)]
                if len(unused) > 0:
                    res.append("# ### END")
                    res.append("assume and [ {} ] && true;".format(", ".join([f"{c} = 0" for c in unused])))
                    res.append("assert true && and [ {} ];".format(", ".join([f"{c} = 0@1" for c in unused])))
                    res.append("# ### START")
                    res.append("# ### AUTOMATICALLY INSERTED ASSERTION AND ASSUMPTION")
            if (not is_annot) or annot:
                used = used - vars['lvs']
                used = used | vars['rvs']
        res.append(instr)
    res.reverse()
    return res

def find_unused_variables(instrs, annot=False):
    res = []
    used = set()
    instrs.reverse()
    for instr in instrs:
        m = is_instr(instr)
        if m:
            vars = get_vars(m['instr'], m['rest'])
            is_annot = instr_specs[m['instr']]['is-annot']
            if not is_annot:
                unused = [v for v in vars['lvs'] if not (v in used)]
                if len(unused) > 0:
                    res.append("# ### UNUSED VARIABLES: {}".format(", ".join(unused)))
            if (not is_annot) or annot:
                used = used - vars['lvs']
                used = used | vars['rvs']
        res.append(instr)
    res.reverse()
    return res
