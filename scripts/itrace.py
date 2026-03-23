#!/usr/bin/env python3
#
# This script utilizes python-enabled gdb on your $PATH to collect
# per-instruction execution trace for first invocation of named
# function [and its descendants]. It also annotates instructions
# that reference memory [as well as "lea"] with actual effective
# addresses... It's even possible to "cross-trace" emulated target,
# e.g.:
#
#   qemu-arm -g 1234 a.out &
#   itrace.py a.out function :1234
#
# Alternatively if qemu-user-binfmt is configured, one can
#
#   env QEMU_GDB=1234 ./a.out &
#   itrace.py a.out function :1234
#
#                                           @dot-asm

import os
import sys
import re

debug_flag = False
#debug_flag = True

##############################################################################
# detect if already in gdb context, and if not, run gdb

try:
    gdb             # gdb module is pre-loaded in gdb context
except NameError:
    if len(sys.argv) < 3 or not os.access(sys.argv[1], os.X_OK):
        print("Usage: {0:s} executable function [remote-target] [output] [-- args]".format(sys.argv[0]))
        sys.exit(-1)

    prog = [sys.argv[1]]

    # pass arguments through environment
    os.environ["TRACE_FUNCTION"] = sys.argv[2]
    argv = sys.argv[3:]
    if len(argv) > 0 and re.match(r'/dev/|:', argv[0]):
        os.environ["TRACE_TARGET_REMOTE"] = argv.pop(0)
    if len(argv) > 0 and argv[0] != "--":
        os.environ["TRACE_OUTFILE"] = argv.pop(0)
    # pass remaining arguments on gdb command line
    if len(argv) > 1 and argv[0] == "--":
        prog.extend(argv[1:])

    try:
        os.execlpe("gdb-multiarch", "gdb", "--batch",
                                    "--command=" + sys.argv[0],
                                    "--args", *prog,
                   os.environ)
    except OSError as e :
        if e.errno == 2 :    # no such file or directory, retry just gdb
            try:
                os.execlpe("gdb", "gdb", "--batch",
                                  "--command=" + sys.argv[0],
                                  "--args", *prog,
                           os.environ)
            except OSError as e :
                pass
        sys.exit(e.errno)
    sys.exit(-1)

##############################################################################
# this part is executed in gdb context and that's where it all happens...

def sign_extend(value, bits):
    sign_bit = 1 << bits
    return (value & (sign_bit - 1)) - (value & sign_bit)

class Extractor:
    def __init__(self):
        pass
    def printHeader(self, function):
        raise NotImplementedError("Subclasses must override printHeader")
    def isBranch(self, insns, frame):
        # subclass is held responsible for self.branchpattern
        return self.branchpattern.match(insns[0]["asm"])
    def isFunctionCall(self, b):
        raise NotImplementedError("Subclasses must override isFunctionCall")
    def isFunctionReturn(self, b):
        raise NotImplementedError("Subclasses must override isFunctionReturn")
    def getEA(self, insn, frame):
        raise NotImplementedError("Subclasses must override getEA")
    # 2x: 128-bit on 64-bit architecture
    def has2xVector(self, insn):
        raise NotImplementedError("Subclasses must override has2xVector")
    # 4x: 256-bit on 64-bit architecture
    def	has4xVector(self, insn):
        raise NotImplementedError("Subclasses must override has4xVector")
    # 8x: 512-bit on 64-bit architecture
    def	has8xVector(self, insn):
        raise NotImplementedError("Subclasses must override has8xVector")
    def archUpdate(self, mnemonic, frame):
        pass
    def mnemonic(self, insn):
        return insn["asm"]

class X86_64(Extractor):
    branchpattern = re.compile(r'^(?:repz\s+)?(j\w*|call|ret)q?')
    # e.g. 0x400(%rax,%rbx,8), 0x123(%rdx), etc.
    eapattern = re.compile(r'(-?(?:0x)?[0-9a-f]+)?'         # offset
                           r'\(%([a-z0-9]+)'                # base
                             r'(?:,%([a-z0-9]+),([1248]))?' # index and scale
                           r'\)'
                           r'(?:\s*,\s*%([a-z0-9]+))?')

    def printHeader(self, function):
        frame = gdb.newest_frame()
        print(function + ":")
        for reg in ("rdi", "rsi", "rdx", "rcx", "r8", "r9"):
            print("# %{0:3s} = 0x{1:x}".format(reg, int(frame.read_register(reg))))
        return

    def isFunctionCall(self, b):
        return b.group(1) == "call"

    def isFunctionReturn(self, b):
        return b.group(1) == "ret"

    def getEA(self, insn, frame):
        mnemonic = insn["asm"]
        if mnemonic.startswith("push") :
            ea = self.eapattern.search("-8(%rsp)")
        elif mnemonic.startswith("pop") :
            ea = self.eapattern.search("(%rsp),%zz")
        else :
            ea = self.eapattern.search(mnemonic)
        if not ea or insn["asm"].startswith("lea") :
            return
        addr = 0
        if ea.group(1) : addr = int(ea.group(1), 0)
        if ea.group(2) == "rip" : addr += insn["length"]
        addr += int(frame.read_register(ea.group(2)))
        if ea.group(3):
            addr += int(frame.read_register(ea.group(3))) * \
                    int(ea.group(4))
        if ea.group(5) and not insn["asm"].startswith("lea") :
            return {'addr':addr, 'load':True}
        else :
            return {'addr':addr}

    def has2xVector(self, insn):
        return re.search(r'%xmm\d+\b', insn, flags=re.IGNORECASE) != None

    def has4xVector(self, insn):
        return re.search(r'%ymm\d+\b', insn, flags=re.IGNORECASE) != None

    def has8xVector(self, insn):
        return re.search(r'%zmm\d+\b', insn, flags=re.IGNORECASE) != None

class ARM64(Extractor):
    branchpattern = re.compile(r'^(b\.\w+|bl?r?|cbn?z|ret)\b')
    # e.g. [x20,#40], [x20],#8, [x20,x21], [x20, w2, uxtw #3], [x20,x21,lsl#3]
    eapattern = re.compile(r'\[(x[0-9]+|sp)'
                             r'(?:\s*,\s*([xw][0-9]+|#-?(?:0x)?[0-9a-fA-F]+)'
                             r'(?:\s*,\s*(lsl|[su]xtw)(?:\s*#([0-3]))?)?)?'
                           r'\]'
                           r'(?:\s*,\s*#(-?(?:0x)?[0-9a-fA-F]+))?')

    def printHeader(self, function):
        frame = gdb.newest_frame()
        print(function + ":")
        for reg in range(0,8) :
            reg = "x{0}".format(reg)
            val = int(frame.read_register(reg)) & 0xffffffffffffffff
            print("# {0} = 0x{1:x}".format(reg, val))
        return

    def isFunctionCall(self, b):
        return b.group(1).startswith("bl")

    def isFunctionReturn(self, b):
        return b.group(1) == "ret"

    def getEA(self, insn, frame):
        ea = self.eapattern.search(insn["asm"])
        if not ea:
            return
        base = ea.group(1)
        offset = ea.group(2)
        adjust = ea.group(3)
        scale = ea.group(4)
        postfix = ea.group(5)
        debug("Effective address: Group 1: %s" % base)
        debug("Effective address: Group 2: %s" % offset)
        base = "%s" % frame.read_register(base)
        debug("Effective address: Base: 0x%x" % int(base,0))
        addr = int(base, 0) & 0xffffffffffffffff
        if offset:
            if offset.startswith("#"):
                offset = int(offset[1:], 0)
            else:
                offset = "%s" % frame.read_register(offset)
                offset = int(offset, 0)
                if adjust == "uxtw":
                    offset &= 0xffffffff
                elif adjust == "sxtw":
                    offset = sign_extend(offset, 31)
                else:
                    offset = sign_extend(offset, 63)
                if scale:
                    offset <<= int(scale)
            debug("Effective address: Offset: 0x%x" % int(offset, 0))
            addr += offset
        if insn["asm"].startswith("ld") :
            return {'addr':addr, 'load':True}
        else :
            return {'addr':addr}

    def has2xVector(self, insn):
        return re.search(r'\bv\d+\b', insn, flags=re.IGNORECASE) != None

    def has4xVector(self, insn):
        return re.search(r'\bz\d+\b', insn, flags=re.IGNORECASE) != None

    def has8xVector(self, insn):
        return False

class ARM32(Extractor):
    branchpattern = re.compile(r'^(b(?!f)\w*|cbn?z)\b')
    eapattern = re.compile(r'(?:'
                             r'\[([a-z]+[0-9]*)'
                               r'(?:\s*,\s*([a-z0-9]+|#-?(?:0x)?[0-9a-fA-F]+)|\s*:\d+)?'
                             r'\]'
                           r'|(?:ld|st)m\w*\.?\w*\s+(\w+)!?,)')

    def printHeader(self, function):
        frame = gdb.newest_frame()
        print(function + ":")
        for reg in range(0,4) :
            reg = "r{0}".format(reg)
            val = int(frame.read_register(reg)) & 0xffffffff
            print("# {0} = 0x{1:x}".format(reg, val))
        return

    def isFunctionCall(self, b):
        return b.group(1).startswith("bl")

    def isFunctionReturn(self, b):
        return b.group(1) == "bx"

    def getEA(self, insn, frame):
        ea = self.eapattern.search(insn["asm"])
        if not ea:
            return
        base = ea.group(1) or ea.group(3)
        offset = ea.group(2)
        debug("Effective address: Group 1: %s" % base)
        debug("Effective address: Group 2: %s" % offset)
        addr = int(frame.read_register(base)) & 0xffffffff
        if base == 'pc':
            isThumb = frame.architecture().name() == 'armv7e-m' or \
                      int(frame.read_register("cpsr")) & 0x20 != 0
            if isThumb:     # is it Thumb?
                addr += 4
            else:
                addr += 8
            addr &= 0xfffffffc
        debug("Effective address: Base: 0x%x" % addr)
        if offset:
            if offset.startswith("#"): offset = offset[1:]
            else: offset = "%s" % frame.read_register(offset)
            debug("Effective address: Offset: 0x%x" % int(offset, 0))
            addr += int(offset, 0)
        if insn["asm"].startswith("ld"):
            return {'addr':addr, 'load':True}
        else :
            return {'addr':addr}

    def has2xVector(self, insn):
        return re.search(r'\bd\d+\b', insn, flags=re.IGNORECASE) != None

    def has4xVector(self, insn):
        return re.search(r'\bq\d+\b', insn, flags=re.IGNORECASE) != None

    def has8xVector(self, insn):
        return False
 

class MIPS(Extractor):
    branchpattern = re.compile(r'^(b|j\w*)\s*(.*)')
    # e.g. 20($2)
    eapattern = re.compile(r'(-?(?:0x)?[0-9a-fA-F]+)?\((\w+)\)')

    def __init__(self):
        self.mask = (1<<wordsize) - 1

    def printHeader(self, function):
        frame = gdb.newest_frame()
        print(function + ":")
        for reg in range(4,12) :
            reg = "r{0}".format(reg)
            val = int(frame.read_register(reg)) & self.mask
            print("# {0} = 0x{1:x}".format(reg, val))
        return

    def isBranch(self, insns, frame):
        b = self.branchpattern.match(insns[0]["asm"])
        if b:
            # trace instruction in delay slot, as gdb fails to do so
            mnemonic = insns[1]["asm"]
            addr = self.getEA(insns[1], frame)
            if addr:
                print("\t{0:48s}#! EA = L0x{1:x}; PC = 0x{2:x}".format(mnemonic, addr, insns[1]["addr"]))
            else:
                print("\t{0:48s}#! PC = 0x{1:x}".format(mnemonic,insns[1]["addr"]))
        return b

    def isFunctionCall(self, b):
        return b.group(1).startswith("bl")

    def isFunctionReturn(self, b):
        return b.group(1) == "jr" and b.group(2) == "ra"

    def getEA(self, insn, frame):
        ea = self.eapattern.search(insn["asm"])
        if not ea:
            return
        base = ea.group(2)
        offset = ea.group(1)
        debug("Effective address: Group 1: %s" % base)
        debug("Effective address: Group 2: %s" % offset)
        addr = int(frame.read_register(base)) & self.mask
        debug("Effective address: Base: 0x%x" % addr)
        if offset:
            debug("Effective address: Offset: 0x%x" % int(offset, 0))
            addr += int(offset, 0)
        if insn["asm"].startswith("l") :
            return {'addr':addr, 'load':True}
        else :
            return {'addr':addr}
 
    def has2xVector(self, insn):
        if wordsize == 64:
            return re.search(r'\$w\d+\b', insn, flags=re.IGNORECASE) != None
        else:
            return False

    def has4xVector(self, insn):
        if wordsize == 64:
            return False
        else:
            return re.search(r'\$w\d+\b', insn, flags=re.IGNORECASE) != None

    def has8xVector(self, insn):
        return False

class RISCV(Extractor):
    branchpattern = re.compile(r'^(b|j\w*|ret)\s*(.*)')
    # e.g. 20($2)
    eapattern = re.compile(r'(-?(?:0x)?[0-9a-fA-F]+)?\((\w+)\)')

    def __init__(self):
        self.mask = (1<<wordsize) - 1

    def printHeader(self, function):
        frame = gdb.newest_frame()
        print(function + ":")
        for reg in range(10,18) :
            reg = "x{0}".format(reg)
            val = int(frame.read_register(reg)) & self.mask
            print("# {0} = 0x{1:x}".format(reg, val))
        return

    def isFunctionCall(self, b):
        return b.group(1).startswith("jal")

    def isFunctionReturn(self, b):
        return b.group(1) == "ret"

    def getEA(self, insn, frame):
        ea = self.eapattern.search(insn["asm"])
        if not ea:
            return
        base = ea.group(2)
        offset = ea.group(1)
        debug("Effective address: Group 1: %s" % base)
        debug("Effective address: Group 2: %s" % offset)
        addr = int(frame.read_register(base)) & self.mask
        debug("Effective address: Base: 0x%x" % addr)
        if offset:
            debug("Effective address: Offset: 0x%x" % int(offset, 0))
            addr += int(offset, 0)
        if insn["asm"].startswith("l") :
            return {'addr':addr, 'load':True}
        else :
            return {'addr':addr}

    def has2xVector(self, insn):
        return False

    def has4xVector(self, insn):
        return False

    def has8xVector(self, insn):
        return False

    vsew = -1
    vlen = 0
    vlmul = 0
    vsetpattern = re.compile(r'^vseti*vli*\s+([a-z0-9]+),\s*([a-z0-9]+),\s*(.*)')

    def archUpdate(self, mnemonic, frame):
        vset = self.vsetpattern.search(mnemonic)
        if not vset:
            return

        # handle vlen
        if vset.group(1) != "zero":
            self.vlen = frame.read_register(vset.group(1))
        else:
            if vset.group(2).isnumeric():
                self.vlen = vset.group(2)
            else:
                self.vlen = frame.read_register(vset.group(2))

        # handle vsew and vlmul
        if vset.group(3).startswith("e"):
            vtype = re.match(r'e([1-8]+),\s*(mf*)([1248]),.*', vset.group(3))
            self.vsew = vtype.group(1)
            if vtype.group(2) == "mf": # fraction, round up to 1
                self.vlmul = 1
            else:
                self.vlmul = int(vtype.group(3))
        else:
            vtype = frame.read_register(vset.group(3))
            self.vsew = 8 << ((vtype >> 3) & 0b111)
            if vtype & 0b100:          # fraction, round up to 1
                self.vlmul = 1
            else:
                self.vlmul = 1 << (vtype & 0b11)

    vecpattern = re.compile(r'^(v[a-z][a-z0-9]+\.v[a-z]*)(\s+v([0-9]+))(,.*)')
    segpattern = re.compile(r'^v[ls]seg([2-8])e[0-9]+\.v')

    def mnemonic(self, insn):
        mnemonic = insn["asm"]
        vec = self.vecpattern.search(mnemonic)
        if not vec:
            return mnemonic
        # extend vector instructions with vsew and vlen
        mnemonic = "{0:s}({1}x{2}/{3})".format(vec.group(1), self.vlen, self.vsew, self.vlmul)
        mnemonic += vec.group(2)
        # extend vector register for segmented load/stores
        seg = self.segpattern.search(vec.group(1))
        if seg:
            mnemonic += "..{}".format(int(vec.group(3)) + int(seg.group(1)) - 1)
        return "{0:s}{1:s}".format(mnemonic, vec.group(4))

# figure out if platform is 32- or 64-bit and instantiate extractor,
# all based on 'info target'...

target = gdb.execute("info target",to_string=True)
platform=re.search(r'file type (\w+)-([\w\-]+)',target)
elf=platform.group(1)
mach=platform.group(2);

if re.search(r'32$',elf):
    wordsize = 32
else:
    wordsize = 64

if re.search(r'x86-64',mach):
    extr = X86_64()
elif re.search(r'aarch64',mach):
    extr = ARM64()
elif re.search(r'arm',mach):
    extr = ARM32()
elif re.search(r'mips',mach):
    extr = MIPS()
elif re.search(r'riscv',mach):
    extr = RISCV()
else:
    raise Exception("Unsupported machine type: %s" % mach)

def debug(msg):
    if debug_flag:
        print("DEBUG: {}".format(msg))

def trace():
    frame = gdb.newest_frame()
    arch = frame.architecture()

    print("\t#! -> SP = 0x{0:x}".format(int(frame.read_register("sp"))))
    while(frame.is_valid()):
        insns = arch.disassemble(frame.pc(), count=2)	# 2nd for delay slot
        mnemonic = extr.mnemonic(insns[0])
        debug("mnemonic = %s" % mnemonic)
        b = extr.isBranch(insns, frame)
        if b:                               # skip over flow control
            if extr.isFunctionReturn(b):
                print("\t#! <- SP = 0x{0:x}".format(int(frame.read_register("sp"))))
            gdb.execute("stepi", to_string=True)
            debug("After stepi 1")
            print("\t#{0:47s}#! PC = 0x{1:x}".format(mnemonic,insns[0]["addr"]))
            if extr.isFunctionCall(b):      # calls are handled recursively
                debug("Call")
                trace()
            elif extr.isFunctionReturn(b):
                debug("Return")
                return
            elif not frame.is_valid():      # inter-procedure branches
                debug("Invalid")
                frame = gdb.newest_frame()
                arch = frame.architecture()
            else:
                debug("Unhandled case")
        else:
            ea = extr.getEA(insns[0], frame)
            if ea :
                if ea.get("value") :
                    print("\t{0:48s}#! EA = L0x{1:x}; Value = {2}; PC = 0x{3:x}"
                          .format(mnemonic, ea["addr"], ea["value"], insns[0]["addr"]))
                elif ea.get("load") :
                    unit = 'g' if wordsize == 64 else 'w'
                    values = []
                    factors = []
                    if extr.has2xVector(mnemonic):
                        factors.append(2)
                    if extr.has4xVector(mnemonic):
                        factors.append(4)
                    if extr.has8xVector(mnemonic):
                        factors.append(8)
                    if len(factors) == 0:
                        factors.append(1)
                    try :
                        for factor in factors:
                            value = gdb.execute("x/{0}x{1} 0x{2:x}".format(factor, unit, ea["addr"]), False, True)
                            values.extend(re.findall(r'(0[xX][0-9a-fA-F]+)(?![:0-9a-fA-F])', value))
                    except gdb.MemoryError :
                        values.append("'?'")
                    print("\t{0:48s}#! EA = L0x{1:x}; Value = {2}; PC = 0x{3:x}"
                          .format(mnemonic, ea["addr"], " ".join(values), insns[0]["addr"]))
                else :
                    print("\t{0:48s}#! EA = L0x{1:x}; PC = 0x{2:x}"
                          .format(mnemonic, ea["addr"], insns[0]["addr"]))
            else:
                print("\t{0:48s}#! PC = 0x{1:x}".format(mnemonic, insns[0]["addr"]))
            gdb.execute("stepi", to_string=True)
            debug("After stepi 2")
        if not frame.is_valid():      # inter-procedure branches
            debug("Unexpected invalid frame! Well, not necessarily...")
            frame = gdb.newest_frame()
            arch = frame.architecture()
        extr.archUpdate(mnemonic, frame)

    gdb.execute("stepi", to_string=True)    # step over retq
    debug("After stepi 3")
    return

# "main"
if "TRACE_OUTFILE" in os.environ:
    sys.stdout = open(os.environ["TRACE_OUTFILE"], "w")

function = os.environ["TRACE_FUNCTION"]

# quirk: even though gdb.Breakpoint is documented to have pending attribute
# it didn't work for me :-(
s = gdb.execute("break *" + function, to_string=True)
if re.search("not defined", s):             # symbol was not found
    print(s.split("\n")[0])
    sys.exit(-1)

# bypass processor capbility detection
gdb.execute("handle SIGILL nostop", to_string=True)

if "TRACE_TARGET_REMOTE" in os.environ:
    gdb.execute("target remote " + os.environ["TRACE_TARGET_REMOTE"],
                to_string=True)
    gdb.execute("continue", to_string=True)
else :
    gdb.execute("run", to_string=True)

debug("After run")

gdb.execute("set scheduler-locking on", to_string=True)

extr.printHeader(function)
trace()

gdb.execute("delete breakpoints", to_string=True)
