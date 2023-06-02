
import re
import random
import string
import os
import tempfile

cryptoline_path = "cv"

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
    "xor":    (3, [0], [1, 2], []),
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
    "mod", "umod", "srem", "smod", "and", "or", "xor",
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
    return re.match(typ_pattern, str, re.MULTILINE | re.DOTALL)

# is_instr(str) returns {'instr': n, 'rest': s} (n: the instruction name, s: the string of operands) if str is an instruction and None otherwise.
def is_instr(str):
    m = re.match(r"^\s*(" + instr_names_pattern + r")\s*(.*)$", str, re.MULTILINE | re.DOTALL)
    if m:
        return { "instr": m.group(1), "rest": m.group(2) }
    else:
        return None

# strip_explicit_type(str) removes explicit type specification in str
def strip_explicit_type(str):
    m = re.match(r"\b([a-zA-Z_][a-zA-Z0-9_]*)(?:\s*@\s*[su]int[0-9]+)?\b", str, re.MULTILINE | re.DOTALL)
    if m:
        return m.group(1)
    else:
        return str

# filter_variables(strs) returns variables in strs
def filter_variables(strs):
    return [s for s in strs if re.match(var_pattern, s, re.MULTILINE | re.DOTALL) and not s in reserved_words]

# get_vars(iname, str) returns variables in the string of operands for the instruction with name iname.
# The returned value is a dictionary {'lvs': lvs, 'rvs': rvs, 'cvs': cvs, 'gvs': gvs} where
# - lvs: the set of destination variables
# - rvs: the set of source variables
# - cvs: the set of carry variables in lvs
# - gvs: the set of ghost variables declared
def get_vars(iname, str):
    s = instr_specs[iname]
    if s['is-annot']:
        m = re.match(s['pattern'], str, re.MULTILINE | re.DOTALL)
        if m:
            ms = re.findall(atom_pattern, m.group(1), re.MULTILINE | re.DOTALL)
            ms = [strip_explicit_type(m) for m in ms]
            lvs = set()
            rvs = set(filter_variables(ms))
            cvs = set()
            gvs = rvs if s['is-ghost'] else set()
            return { 'lvs': lvs, 'rvs': rvs, 'cvs': cvs, 'gvs': gvs }
        else:
            return { 'lvs': set(), 'rvs': set(), 'cvs': set(), 'gvs': set() }
    else:
        ms = re.findall(atom_pattern, str, re.MULTILINE | re.DOTALL)
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

def verify(cl, cpath=cryptoline_path, cargs=""):
    """
    Verify a file by CryptoLine

    Args:
        cl: a CryptoLine file
        cpath: the path to CryptoLine
        cargs: arguments passed to CryptoLine

    Returns:
        a Boolean that indicates if the CryptoLine file is successfully verified
    """
    (fd, path) = tempfile.mkstemp(suffix=".cl")
    try:
        with os.fdopen(fd, 'w') as tmp:
            tmp.write(cl)
        ret = os.system(cpath + " " + cargs + " " + path + " &> /dev/null")
    finally:
        os.remove(path)
    return ret == 0

def assert_unused_carries(instrs, annot=False, newline=False, check=False, cpath=cryptoline_path, cargs=""):
    """
    Add assertions and assumptions about unused carries.

    Args:
        instrs: a list of instructions
        annot: recognize carry reading in annotations, False by default
        newline: true if every instr in instrs ends with a newline
        check: true to verify if annotations are correct and keep only correct annotations

    Returns:
        a list of instructions with assertions and assumptions inserted
    """
    res = []
    cargs = "-v -disable_epost -disable_rpost -disable_safety -vracuts -1 " + cargs
    used = set()
    instrs.reverse()
    for i in range(len(instrs)):
        instr = instrs[i]
        m = is_instr(instr)
        if m:
            vars = get_vars(m['instr'], m['rest'])
            is_annot = instr_specs[m['instr']]['is-annot']
            if not is_annot:
                unused = [c for c in vars['cvs'] if not (c in used)]
                if len(unused) > 0:
                    res.append("# ### END" + ("\n" if newline else ""))
                    res.append("assume and [ {} ] && true;".format(", ".join([f"{c} = 0" for c in unused])) + ("\n" if newline else ""))
                    res.append("assert true && and [ {} ];".format(", ".join([f"{c} = 0@1" for c in unused])) + ("\n" if newline else ""))
                    res.append("# ### START" + ("\n" if newline else ""))
                    res.append("# ### AUTOMATICALLY INSERTED ASSERTION AND ASSUMPTION" + ("\n" if newline else ""))
                    if check:
                        tmp = res[-5:]
                        tmp.extend(instrs[i:])
                        tmp.reverse()
                        tmp.append("{ true && true }" + ("\n" if newline else ""))
                        tmp = ("" if newline else "\n").join(tmp)
                        if not verify(tmp, cpath=cpath, cargs=cargs):
                            res = res[0:-5]
            if (not is_annot) or annot:
                used = used - vars['lvs']
                used = used | vars['rvs']
        res.append(instr)
    res.reverse()
    return res

def find_unused_variables(instrs, annot=False):
    """
    Add comments to mark unused variables.

    Args:
        instrs: a list of instructions
        annot: recognize variable reading in annotations, False by default

    Returns:
        a list of instructions with additional comments inserted
    """
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


# #################### Parse CryptoLine File ####################


COMMENT = "comment"
COMMAND = "command"
SPACES = "spaces"
NEWLINE = "newline"
OP = "OP"
ID = "id"
SYMBOL = "symbol"
TYPE = "type"
NUMBER = "number"

class Lexer:
    res = []
    tokens = []
    i = 0
    j = 0
    keywords = [
        (r'const', OP),
        (r'assign', COMMAND),
        (r'mov', COMMAND),
        (r'broadcast', COMMAND),
        (r'add', COMMAND),
        (r'adds', COMMAND),
        (r'adc', COMMAND),
        (r'adcs', COMMAND),
        (r'sub', COMMAND),
        (r'subs', COMMAND),
        (r'subc', COMMAND),
        (r'subb', COMMAND),
        (r'sbc', COMMAND),
        (r'sbcs', COMMAND),
        (r'sbb', COMMAND),
        (r'sbbs', COMMAND),
        (r'mul', COMMAND),
        (r'muls', COMMAND),
        (r'mull', COMMAND),
        (r'mulj', COMMAND),
        (r'spl', COMMAND),
        (r'split', COMMAND),
        (r'uadd', COMMAND),
        (r'uadds', COMMAND),
        (r'uadc', COMMAND),
        (r'uadcs', COMMAND),
        (r'usub', COMMAND),
        (r'usubs', COMMAND),
        (r'usubc', COMMAND),
        (r'usubb', COMMAND),
        (r'usbc', COMMAND),
        (r'usbcs', COMMAND),
        (r'usbb', COMMAND),
        (r'usbbs', COMMAND),
        (r'umul', COMMAND),
        (r'umuls', COMMAND),
        (r'umull', COMMAND),
        (r'umulj', COMMAND),
        (r'uspl', COMMAND),
        (r'usplit', COMMAND),
        (r'sadd', COMMAND),
        (r'sadds', COMMAND),
        (r'sadc', COMMAND),
        (r'sadcs', COMMAND),
        (r'ssub', COMMAND),
        (r'ssubs', COMMAND),
        (r'ssubc', COMMAND),
        (r'ssubb', COMMAND),
        (r'ssbc', COMMAND),
        (r'ssbcs', COMMAND),
        (r'ssbb', COMMAND),
        (r'ssbbs', COMMAND),
        (r'smul', COMMAND),
        (r'smuls', COMMAND),
        (r'smull', COMMAND),
        (r'smulj', COMMAND),
        (r'sspl', COMMAND),
        (r'ssplit', COMMAND),
        (r'shl', COMMAND),
        (r'lsl', COMMAND),
        (r'shls', COMMAND),
        (r'shr', COMMAND),
        (r'lsr', COMMAND),
        (r'shrs', COMMAND),
        (r'sar', COMMAND),
        (r'asr', COMMAND),
        (r'sars', COMMAND),
        (r'cshl', COMMAND),
        (r'clsl', COMMAND),
        (r'cshr', COMMAND),
        (r'cshrs', COMMAND),
        (r'rol', COMMAND),
        (r'ror', COMMAND),
        (r'set', COMMAND),
        (r'clear', COMMAND),
        (r'nondet', COMMAND),
        (r'cmove', COMMAND),
        (r'cmov', COMMAND),
        (r'and', COMMAND),
        (r'or', COMMAND),
        (r'not', COMMAND),
        (r'xor', COMMAND),
        (r'cast', COMMAND),
        (r'vpc', COMMAND),
        (r'join', COMMAND),
        (r'assert', COMMAND),
        (r'eassert', COMMAND),
        (r'rassert', COMMAND),
        (r'assume', COMMAND),
        (r'cut', COMMAND),
        (r'ecut', COMMAND),
        (r'rcut', COMMAND),
        (r'ghost', COMMAND),
        (r'nop', COMMAND),
        (r'vars', OP),
        (r'neg', OP),
        (r'sq', OP),
        (r'ext', OP),
        (r'uext', OP),
        (r'zext', OP),
        (r'sext', OP),
        (r'mod', OP),
        (r'umod', OP),
        (r'srem', OP),
        (r'smod', OP),
        (r'ult', OP),
        (r'ule', OP),
        (r'ugt', OP),
        (r'uge', OP),
        (r'slt', OP),
        (r'sle', OP),
        (r'sgt', OP),
        (r'sge', OP),
        (r'true', OP),
        (r'eq', OP),
        (r'eqmod', OP),
        (r'equmod', OP),
        (r'eqsmod', OP),
        (r'eqsrem', OP),
        (r'proc', OP),
        (r'call', OP),
        (r'ulimbs', OP),
        (r'slimbs', OP),
        (r'limbs', OP),
        (r'prove', OP),
        (r'with', OP),
        (r'all', OP),
        (r'cuts', OP),
        (r'assumes', OP),
        (r'ghosts', OP),
        (r'precondition', OP),
        (r'algebra', OP),
        (r'range', OP),
        (r'qfbv', OP),
        (r'qf_bv', OP),
        (r'solver', OP),
        (r'smt', OP)
    ]
    rules1 = [
        (r'//[^\r\n|\n|\r]*(\r\n|\n|\r)', COMMENT),
        (r'#[^\r\n|\n|\r]*(\r\n|\n|\r)', COMMENT),
        (r'/\*(\*(?!/)|[^*])*\*/', COMMENT),
        (r'\(\*(\*(?!\))|[^*])*\*\)', COMMENT),
        (r'\r\n|\n|\r', NEWLINE),
        (r'\s+', SPACES),
        (r'//', SYMBOL),
        (r'@', SYMBOL),
        (r'{', SYMBOL),
        (r'}', SYMBOL),
        (r'\(', SYMBOL),
        (r'\)', SYMBOL),
        (r'\[', SYMBOL),
        (r'\]', SYMBOL),
        (r',', SYMBOL),
        (r';', SYMBOL),
        (r':', SYMBOL),
        (r'&&', SYMBOL),
        (r'\|', SYMBOL),
        (r'\.\.', SYMBOL),
        (r'\.', SYMBOL),
        (r'\+', SYMBOL),
        (r'-', SYMBOL),
        (r'\*\*', SYMBOL),
        (r'\*', SYMBOL),
        (r'\^', SYMBOL),
        (r'<=u', SYMBOL),
        (r'>=u', SYMBOL),
        (r'<u', SYMBOL),
        (r'>u', SYMBOL),
        (r'<=s', SYMBOL),
        (r'>=s', SYMBOL),
        (r'<s', SYMBOL),
        (r'>s', SYMBOL),
        (r'>=', SYMBOL),
        (r'>=', SYMBOL),
        (r'<<', SYMBOL),
        (r'>>a', SYMBOL),
        (r'>>', SYMBOL),
        (r'<', SYMBOL),
        (r'>', SYMBOL),
        (r'=', SYMBOL),
        (r'~', SYMBOL),
        (r'\$', SYMBOL),
        (r'/\\', SYMBOL),
        (r'\\/', SYMBOL),
        (r'!', SYMBOL),
        (r'&', SYMBOL),
        (r'uint\d+', TYPE),
        (r'sint\d+', TYPE),
        (r'int\d+', TYPE),
        (r'bit', TYPE),
        (r'\(?\s*-?\s*0b[01]+\s*\)?', NUMBER),
        (r'\(?\s*-?\s*0x[0-9a-fA-F]+\s*\)?', NUMBER),
        (r'\(?\s*-?\s*[0-9]+\s*\)?', NUMBER)
    ]
    rules2 = [
        (r'\b[a-zA-Z_]([a-zA-Z_]|[0-9])*\b', ID)
    ]
    rules = []
    def __init__(self, filename):
        self.keywords.sort(key=lambda x : len(x[0]), reverse=True)
        self.keywords = [(r'\b' + pat + r'\b', typ) for (pat, typ) in self.keywords]
        self.rules.extend(self.rules1)
        self.rules.extend(self.keywords)
        self.rules.extend(self.rules2)
        f = open(filename)
        str = f.read()
        f.close()
        self.__tokenize(str)
    def __tokenize(self, str):
        while(True):
            matched = False
            for pat, typ in self.rules:
                m = re.match(pat, str, re.MULTILINE | re.DOTALL)
                if m:
                    matched = True
                    self.tokens.append((typ, m.group(0)))
                    str = str[len(m.group(0)):]
                    break
            if not matched:
                if len(str) > 0:
                    raise f"Failed to parse: {str}"
                else:
                    break
    def eof(self):
        return self.j >= len(self.tokens)
    def next(self, n = 1):
        res = None
        if self.j < len(self.tokens):
            if n == 1:
                res = self.tokens[self.j]
            else:
                res = self.tokens[self.j:self.j+n]
            self.j = self.j + n
        return res
    # consume tokens between i (inclusive) and j (exclusive)
    def consume(self):
        self.res.append("".join([tok for (_, tok) in self.tokens[self.i:self.j]]))
        self.i = self.j
    def reset(self):
        self.j = self.i
    def undo(self, n=1):
        self.j = self.j - n
        self.j = self.j if self.j >= self.i else self.i
    def rest(self):
        print(self.tokens[self.i:])
    def pending(self):
        print(self.tokens[self.i:self.j])

def __ttyp(token):
    return None if token == None else token[0]

def __ttok(token):
    return None if token == None else token[1]

def __rule_comment(lexer, skip=False):
    token = lexer.next()
    if __ttyp(token) == COMMENT:
        if not skip: lexer.consume()
        return True
    lexer.undo()
    return False

def __rule_spaces(lexer, skip=False):
    res = False
    while(True):
        token = lexer.next()
        if __ttyp(token) == SPACES or __ttyp(token) == NEWLINE:
            if not skip: lexer.consume()
            res = True
        else:
            lexer.undo()
            break
    return res

def __rule_proc(lexer):
    token = lexer.next()
    if __ttok(token) == "proc":
        while(True):
            # skip until the end of the precondition
            if __ttok(token) == "}":
                lexer.consume()
                return True
            elif lexer.eof():
                raise Exception(f"No more tokens in parsing procedure prototype and precondition: {lexer.pending}")
            token = lexer.next()
    lexer.undo()
    return False

def __rule_instr(lexer):
    token = lexer.next()
    if __ttyp(token) == COMMAND:
        while(True):
            # skip until semicolon
            if __ttok(token) == ";":
                if __ttyp(lexer.next()) != NEWLINE:
                    lexer.undo()
                lexer.consume()
                return True
            elif lexer.eof():
                raise Exception(f"No more tokens in parsing command: {lexer.pending}")
            token = lexer.next()
    lexer.undo()
    return False

def __rule_postcondition(lexer):
    token = lexer.next()
    if __ttok(token) == "{":
        while(True):
            if __ttok(token) == "}":
                lexer.consume()
                return True
            elif lexer.eof():
                raise Exception(f"No more tokens in parsing postcondition: {lexer.pending}")
            token = lexer.next()
    lexer.undo()
    return False

def __rule_root(lexer):
    while not lexer.eof():
        if __rule_comment(lexer): continue
        elif __rule_spaces(lexer): continue
        elif __rule_proc(lexer): continue
        elif __rule_instr(lexer): continue
        elif __rule_postcondition(lexer): continue
        elif lexer.eof(): break
        else:
            print(f"rest: {lexer.rest()}")
            print(f"length: {len(lexer.tokens)}")
            print(f"i: {lexer.i}")
            print(f"j: {lexer.j}")
            raise Exception(f"Don't know how to parse: {lexer.rest()}")

def parse(filename):
    """
    Parse a CryptoLine file into a list of instructions represented as strings

    Args:
        filename: the filename of the CryptoLine file

    Returns:
        a list of instructions

    Procedure inlining is not supported.
    Each of the followings is counted as an instruction in the returned list.
    - A line comment
    - A block comment
    - The prototype of a procedure together with its precondition
    - A postcondition
    - A CryptoLine instruction (ended with a semicolon and a newline)
    - Extra spaces not belong to anyone of the above items
    """
    lexer = Lexer(filename)
    __rule_root(lexer)
    return lexer.res
