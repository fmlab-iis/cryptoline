#!/usr/bin/env python3
#
# This script utilizes python-enabled gdb on your $PATH to collect
# per-instruction execution trace for first invocation of named
# function [and its descendants]. It also annotates instructions
# that reference memory [as well as "lea"] with actual effective
# addresses...
#
#                                           <appro@openssl.org>

import os
import sys

try:
    gdb             # gdb module is pre-loaded in gdb context
except NameError:
    if len(sys.argv) < 3 or not os.access(sys.argv[1], os.X_OK):
        print("Usage: {0:s} executable function [output]".format(sys.argv[0]))
        sys.exit(-1)

    # pass arguments through environment
    os.environ["TRACE_FUNCTION"] = sys.argv[2]
    if len(sys.argv) > 3 : os.environ["TRACE_OUTFILE"] = sys.argv[3]

    try:
        os.execlpe("gdb", "gdb", "--batch",
                                 "--command=" + sys.argv[0],
                                 sys.argv[1],
                   os.environ)
    except OSError as e :
        sys.exit(e.errno)
    sys.exit(-1)

##############################################################################
# this part is executed in gdb context and that's where it all happens...

import re

# some globals
branch = re.compile(r'^(?:repz\s+)?(j\w*|call|ret)q?')
eapattern = re.compile(r'(-?(?:0x)?[0-9a-f]+)?\(%([a-z0-9]+)'
                        '(?:,%([a-z0-9]+),([1248]))?\)')

def trace():
    frame = gdb.newest_frame()
    arch = frame.architecture()

    while(frame.is_valid()):
        insn = arch.disassemble(frame.pc(), count=1)[0]
        mnemonic = insn["asm"]
        b = branch.search(mnemonic)
        if b:                               # skip over flow control
            gdb.execute("stepi", to_string=True)
            print("\t#" + mnemonic)
            if b.group(1) == "call":        # calls are handled recursively
                trace()
            elif b.group(1) == "ret":
                return
            elif not frame.is_valid():      # inter-procedure branches
                frame = gdb.newest_frame()
                arch = frame.architecture()
        else:
            ea = eapattern.search(mnemonic)
            if ea:
                addr = 0
                if ea.group(1) : addr = int(ea.group(1), 0)
                if ea.group(2) == "rip" : addr += insn["length"]
                addr += int(frame.read_register(ea.group(2)))
                if ea.group(3):
                    addr += int(frame.read_register(ea.group(3))) * \
                            int(ea.group(4))
                print("\t{0:48s}#! EA = L0x{1:x}".format(mnemonic, addr))
            else:
                print("\t" + mnemonic)
            gdb.execute("stepi", to_string=True)

    gdb.execute("stepi", to_string=True)    # step over retq
    return

def header(function):
    frame = gdb.newest_frame()

    print(function + ":")
    for reg in ("rdi", "rsi", "rdx", "rcx", "r8", "r9"):
        print("# %{0:3s} = 0x{1:x}".format(reg, int(frame.read_register(reg))))

    return

# "main"
if "TRACE_OUTFILE" in os.environ:
    sys.stdout = open(os.environ["TRACE_OUTFILE"], "w")

function = os.environ["TRACE_FUNCTION"]

# quirk: even though gdb.Breakpoint is documented to have pending attribute
# it didn't work for me :-(
s = gdb.execute("break " + function, to_string=True)
if re.search("not defined", s):             # symbol was not found
    print(s.split("\n")[0])
    sys.exit(-1)

gdb.execute("run", to_string=True)

header(function)
trace()

gdb.execute("delete breakpoints", to_string=True)
