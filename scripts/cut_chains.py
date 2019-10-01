#!/usr/bin/env python3

"""
This script identifies flag chains in bvDSL programs. For each

adds flag v e0 e1;     or
adcs flag v e0 e1 flag'

it checks if the value of flag is always zero. If so, it prints

add v e0 e1; mov flag 0 or
adc v e0 e1 flag'; mov flag 0

Otherwise, it prints the original instruction.

Let VERIFY_PATH be the path to 'cryptoline' program and FLAG the 
name of flag (such as carry or overflow). To invoke the script, 
do:

cut_chains.py PROG.cl VERIFY_PATH FLAG WSIZE

"""

import sys
import re
import tempfile
import os
import shutil
import subprocess

MAGIC_NUMBER = 31415926
TIMEOUT = 600

bvdsl_insts = [ ("adds", "add"), ("adcs", "adc"),
                ("subs", "sub"), ("sbbs", "sbb")]

def is_add_or_sub (flag, line):
    for inst in bvdsl_insts:
        if (re.match (inst[0], line)):
            pattern = re.match ("\s*" + inst[0] + "\s+" + flag, line)
            if (pattern):
                return (inst, pattern.group (0))
            pattern = re.match ("\s*" + inst[0] + "\s+(\s*" + flag + "\s*)",
                                line)
            if (pattern):
                return (inst, pattern.group (0))
    return False

def prepare_tempf (current, tempf):
    for line in current:
        tempf.write (line)

def write_tempf (flag, wsize, tempf):
    tempf.write ("{ true")
    tempf.write ("&&")
    tempf.write ("  " + flag + " = const " + wsize + " 0 }")

def mk_note (flag, line, new_line):
    return [ "(* " + line.replace ("\n", "") + " *)\n",
             "(* NOTE: ignore " + flag + " because it is zero *)\n",
             new_line,
             "clear " + flag + ";\n" ]

def mk_timeout_note (flag, line):
    return [ "(* NOTE: timeout while checking " + flag + " is zero *)\n",
             line ]

def clean_up (temppath):
    basetemppath = os.path.basename (temppath)
    if (os.path.exists (basetemppath.replace (".v", ".log"))):
        os.remove (basetemppath.replace (".v", ".log"))

def check_add_or_sub (verify_cmd, flag, wsize, inst, pattern, line, current):
    tempf = tempfile.NamedTemporaryFile (mode="w",suffix=".cl")
    logfname = os.path.basename (tempf.name).replace (".cl", ".log");
    prepare_tempf (current, tempf)
    tempf.write (line)
    write_tempf (flag, wsize, tempf)
    tempf.flush ()
    proc = subprocess.Popen ([verify_cmd, "-btor", "-disable_safety",
                              "-disable_assertion",
                              "-o", logfname,
                              "-qfbv_args", "-SE minisat",
                              "-w", wsize, tempf.name],
                             stdout=subprocess.DEVNULL,
                             stderr=subprocess.DEVNULL)
    try:
        verify_ret = proc.wait (timeout=TIMEOUT)
    except subprocess.CalledProcessError as e:
        verify_ret = e.returncode
    except subprocess.TimeoutExpired:
        proc.terminate ()
        verify_ret = MAGIC_NUMBER
    """ clean_up (tempf.name) """
    tempf.close ()
    if (os.path.exists (logfname)):
        os.remove (logfname)
    if (verify_ret == 0):
        new_line = line.replace (pattern, inst[1])
        return mk_note (flag, line, new_line)
    elif (verify_ret == MAGIC_NUMBER):
        return mk_timeout_note (flag, line)
    else:
        return [ line ]
    
def cut_chains (fd, verify_cmd, flag, wsize):
    current = [ ]
    flag_id = MAGIC_NUMBER
    for line in fd:
        need_check = is_add_or_sub (flag, line)
        if (need_check):
            (inst, pattern) = need_check
            new_lines = check_add_or_sub (verify_cmd, flag, wsize,
                                          inst, pattern, line, current)
            for new_line in new_lines:
                print (new_line.replace ("\n", ""))
                current.append (new_line)
        else:
            print (line.replace ("\n", ""))
            current.append (line)

def main ():
    if (len(sys.argv) == 5):
        fd = open (sys.argv[1], "r")
        verify_cmd = sys.argv[2]
        flag = sys.argv[3]
        wsize = sys.argv[4]
        cut_chains (fd, verify_cmd, flag, wsize)
        fd.close ()
    else:
        print ("Wrong number of arguments.")
        print ("Usage: python3 " + sys.argv[0] + " <cryptoline file> <path to cv.native> <flag> <wsize>")

if __name__ == "__main__":
  main()
