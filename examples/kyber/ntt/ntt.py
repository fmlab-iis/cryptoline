import sys

suffix = ["_LLLL", "_LLLH", "_LLHL", "_LLHH",
          "_LHLL", "_LHLH", "_LHHL", "_LHHH",
          "_HLLL", "_HLLH", "_HLHL", "_HLHH",
          "_HHLL", "_HHLH", "_HHHL", "_HHHH"]
base = 0x7fffffffb040
offset = 0x20
c = 0

sp = ' '

def print_save_old (rs, stage):
    if stage == 0:
        for i in range (16):
            mybase = base + 0x20 * i
            for j in range (0, 15, 3):
                print "{4}L0x{0:x}{1}o, L0x{0:x}{2}o, L0x{0:x}{3}o,".format (mybase, suffix[j], suffix[j+1], suffix[j+2], "bvGhost " if i == 0 and j == 0 else "        ")
            print "        L0x{0:x}{1}o{2}".format (mybase, suffix[15], "," if i < 15 else " :")
        for i in range (16):
            base_0 = base + 0x20 * i
            for j in range (16):
                print "{3}bveEq (bvvar L0x{0:x}{1}o) (bvvar L0x{0:x}{1}){2}".format (base_0, suffix[j], "," if i < 15 or j < 15 else "]\n  |\n    bvTrue;", "  bveands [" if i == 0 and j == 0 else "           ")
    else:
        l = len (rs)
        for i in range (l):
            r = rs[i]
            for j in range (0, 15, 5):
                print "{7}{0}{1}o{6}, {0}{2}o{6}, {0}{3}o{6}, {0}{4}o{6}, {0}{5}o{6},".format (r, suffix[j], suffix[j+1], suffix[j+2], suffix[j+3], suffix[j+4], stage, "bvGhost " if i == 0 and j == 0 else "        ")
            print "        {0}{1}o{2}{3}".format (r, suffix[15], stage, "," if i < l - 1 else " :")
        for i in range (l):
            r = rs[i]
            for j in range (15):
                print "{3}bveEq (bvvar {0}{1}o{2}) (bvvar {0}{1}),".format (r, suffix[j], stage, "  bveands [" if i == 0 and j == 0 else "           ")
            print "           bveEq (bvvar {0}{1}o{2}) (bvvar {0}{1}){3}".format (r, suffix[15], stage, "," if i < l - 1 else "]\n  |\n    bvTrue;")
    return

def print_level_0p (n_sp, b):
    print "((bvvar c_{0:02x}) +".format(b)
    print "{0} (bvvar zeta000) * (bvvar c_{1:02x}) * (bvconst 900))".format(sp*n_sp, b+0x80),
    return

def print_level_0m (n_sp, b):
    print "((bvvar c_{0:02x}) -".format(b)
    print "{0} (bvvar zeta000) * (bvvar c_{1:02x}) * (bvconst 900))".format(sp*n_sp, b+0x80),
    return

def print_cuts_0 ():
    i = 0
    for j in range(8):
        for k in range(16):
            print "    bveEqMod (bvvar L0x7fffffffb{0:03x}{1}o)".format(0x40+0x20*j, suffix[k])
            print "{0}".format (sp*13),
            sys.stdout.softspace=0
            print_level_0p (13, i)
            print "\n             (bvvar q),"
            print "    bveEqMod (bvvar L0x7fffffffb{0:03x}{1}o)".format(0x140+0x20*j, suffix[k])
            print "{0}".format (sp*13),
            sys.stdout.softspace=0
            print_level_0m (13, i)
            print "\n             (bvvar q){0}".format("," if i < 127 else "")
            i += 1
    return

def print_cuts_1 (stage):
    for i in range (4):
        mybase_0 = base + i * 0x20
        mybase_1 = base + 0x80 + i*0x20
        for j in range (16):
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (i+4, suffix[j], stage)
            print "             ((bvvar L0x{0:x}{1}o) +".format (mybase_0, suffix[j])
            print "              (bvvar zeta020) * (bvvar L0x{0:x}{1}o) * (bvconst 900))".format (mybase_1, suffix[j])
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (i+8, suffix[j], stage)
            print "             ((bvvar L0x{0:x}{1}o) -".format (mybase_0, suffix[j])
            print "              (bvvar zeta020) * (bvvar L0x{0:x}{1}o) * (bvconst 900))".format (mybase_1, suffix[j])
            print "             (bvvar q){0}".format ("," if i < 3 or j < 15 else "")
    return

def print_level_1p (n_sp, b):
    print "(",
    sys.stdout.softspace=0
    print_level_0p (n_sp+1, b)
    sys.stdout.softspace=0
    print " * (bvconst 2^16) +"
    print "{0} (bvvar zeta020) *".format(sp*n_sp)
    print "{0} ".format (sp*n_sp),
    sys.stdout.softspace=0
    print_level_0p (n_sp+1, b+0x40)
    sys.stdout.softspace=0
    print ")",
    return

def print_level_1m (n_sp, b):
    print "(",
    sys.stdout.softspace=0
    print_level_0p (n_sp+1, b)
    sys.stdout.softspace=0
    print " * (bvconst 2^16) -"
    print "{0} (bvvar zeta020) *".format(sp*n_sp)
    print "{0} ".format (sp*n_sp),
    sys.stdout.softspace=0
    print_level_0p (n_sp+1, b+0x40)
    sys.stdout.softspace=0
    print ")",
    return

def print_cuts_1_old ():
    i = 0
    for j in range(4):
        for k in range(16):
            print "    bveEqMod ((bvvar ymm{0}{1}) * (bvconst 2^32))".format(4+j, suffix[k])
            print "{0}".format (sp*13),
            sys.stdout.softspace=0
            print_level_1p (13, i)
            sys.stdout.softspace=0
            print "\n             (bvvar q),"
            print "    bveEqMod ((bvvar ymm{0}{1}) * (bvconst 2^16) * (bvconst 2^16))".format(8+j, suffix[k])
            print "{0}".format (sp*13),
            sys.stdout.softspace=0
            print_level_1m (13, i)
            sys.stdout.softspace=0
            print "\n             (bvvar q){0}".format("," if i < 63 else "")
            i += 1
    return

def print_cuts_2 (stage):
    for i in range (4):
        for j in range (16):
            idx = 4 + i + (0 if i < 2 else 2)
            zeta = 'zeta060' if i < 2 else 'zeta080'
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) +".format (idx, suffix[j], stage - 1)
            print "              (bvvar {0}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta, idx + 2, suffix[j], stage - 1)
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx + 2, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) -".format (idx, suffix[j], stage - 1)
            print "              (bvvar {0}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta, idx + 2, suffix[j], stage - 1)
            print "             (bvvar q){0}".format ("," if i < 3 or j < 15 else "")
    return

def print_level_2pp (n_sp, b):
    print "(",
    sys.stdout.softspace=0
    print_level_1p (n_sp + 1, b)
    sys.stdout.softspace=0
    print " * (bvconst 2^16) +"
    print "{0} (bvvar zeta060) *".format (sp*n_sp)
    print "{0} (".format (sp*n_sp),
    sys.stdout.softspace=0
    print_level_1p (n_sp + 2, b + 0x20)
    sys.stdout.softspace=0
    print "))",
    return

def print_level_2pm (n_sp, b):
    print "(",
    sys.stdout.softspace=0
    print_level_1m (n_sp + 1, b)
    sys.stdout.softspace=0
    print " * (bvconst 2^16) +"
    print "{0} (bvvar zeta080) *".format (sp*n_sp)
    print "{0} (".format (sp*n_sp),
    sys.stdout.softspace=0
    print_level_1m (n_sp + 2, b + 0x20)
    sys.stdout.softspace=0
    print "))",
    return

def print_level_2mp (n_sp, b):
    print "(",
    sys.stdout.softspace=0
    print_level_1p (n_sp + 1, b)
    sys.stdout.softspace=0
    print " * (bvconst 2^16) -"
    print "{0} (bvvar zeta060) *".format (sp*n_sp)
    print "{0} (".format (sp*n_sp),
    sys.stdout.softspace=0
    print_level_1p (n_sp + 2, b + 0x20)
    sys.stdout.softspace=0
    print "))",
    return

def print_level_2mm (n_sp, b):
    print "(",
    sys.stdout.softspace=0
    print_level_1m (n_sp + 1, b)
    sys.stdout.softspace=0
    print " * (bvconst 2^16) -"
    print "{0} (bvvar zeta080) *".format (sp*n_sp)
    print "{0} (".format (sp*n_sp),
    sys.stdout.softspace=0
    print_level_1m (n_sp + 2, b + 0x20)
    sys.stdout.softspace=0
    print "))",
    return

def print_cuts_2_old ():
    for i in range(2):
        c = 0
        for j in range(2):
            for k in range(16):
                print "    bveEqMod ((bvvar ymm{0}{1}) * (bvconst 2^48))".format(4+4*i+j, suffix[k])
                print "{0}".format (sp*13),
                sys.stdout.softspace=0
                if i == 0:
                    print_level_2pp (13, c)
                else:
                    print_level_2pm (13, c)
                sys.stdout.softspace=0
                print "\n             (bvvar q),"
                print "    bveEqMod ((bvvar ymm{0}{1}) * (bvconst 2^48))".format(6+4*i+j, suffix[k])
                print "{0}".format (sp*13),
                sys.stdout.softspace=0
                if i == 0:
                    print_level_2mp (13, c)
                else:
                    print_level_2mm (13, c)
                sys.stdout.softspace=0
                print "\n             (bvvar q){0}".format("," if i == 0 or c < 31 else "")
                c += 1
    return

def print_cuts_3 (stage):
    for i in range (4):
        for j in range (16):
            idx = 4 + i * 2
            zeta_idx = 0xe0 + i * 0x20
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) +".format (idx, suffix[j], stage - 1)
            print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx + 1, suffix[j], stage - 1)
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx + 1, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) -".format (idx, suffix[j], stage - 1)
            print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx + 1, suffix[j], stage - 1)
            print "             (bvvar q){0}".format ("," if i < 3 or j < 15 else "")
    return

def print_level_3p (n_sp, b, i):
    print "(",
    sys.stdout.softspace=0
    if i == 0:
        print_level_2pp (n_sp + 1, b)
    elif i == 1:
        print_level_2mp (n_sp + 1, b)
    elif i == 2:
        print_level_2pm (n_sp + 1, b)
    elif i == 3:
        print_level_2mm (n_sp + 1, b)
    else:
        assert 0
    sys.stdout.softspace=0
    print " * (bvconst 2^16) +"
    print "{0} (bvvar zeta{1:03x}) *".format (sp*n_sp, 0x0e0+0x20*i)
    print "{0} ".format (sp*n_sp),
    sys.stdout.softspace=0
    if i == 0:
        print_level_2pp (n_sp + 1, b + 0x10)
    elif i == 1:
        print_level_2mp (n_sp + 1, b + 0x10)
    elif i == 2:
        print_level_2pm (n_sp + 1, b + 0x10)
    elif i == 3:
        print_level_2mm (n_sp + 1, b + 0x10)
    else:
        assert 0
    sys.stdout.softspace=0
    print ")",
    return

def print_level_3m (n_sp, b, i):
    print "(",
    sys.stdout.softspace=0
    if i == 0:
        print_level_2pp (n_sp + 1, b)
    elif i == 1:
        print_level_2mp (n_sp + 1, b)
    elif i == 2:
        print_level_2pm (n_sp + 1, b)
    elif i == 3:
        print_level_2mm (n_sp + 1, b)
    else:
        assert 0
    sys.stdout.softspace=0
    print " * (bvconst 2^16) -"
    print "{0} (bvvar zeta{1:03x}) *".format (sp*n_sp, 0x0e0+0x20*i)
    print "{0} ".format (sp*n_sp),
    sys.stdout.softspace=0
    if i == 0:
        print_level_2pp (n_sp + 1, b + 0x10)
    elif i == 1:
        print_level_2mp (n_sp + 1, b + 0x10)
    elif i == 2:
        print_level_2pm (n_sp + 1, b + 0x10)
    elif i == 3:
        print_level_2mm (n_sp + 1, b + 0x10)
    else:
        assert 0
    sys.stdout.softspace=0
    print ")",
    return

def print_cuts_3_old ():
    for i in range(4):
        c = 0
        for k in range(16):
            print "    bveEqMod ((bvvar ymm{0}{1}) * (bvconst 2^64))".format(4+i*2, suffix[k])
            print "{0}".format (sp*13),
            sys.stdout.softspace=0
            print_level_3p (13, c, i)
            sys.stdout.softspace=0
            print "\n              (bvvar q),"
            print "    bveEqMod ((bvvar ymm{0}{1}) * (bvconst 2^64))".format(4+i*2+1, suffix[k])
            print "{0}".format (sp*13),
            sys.stdout.softspace=0
            print_level_3m (13, c, i)
            sys.stdout.softspace=0
            print "\n              (bvvar q){0}".format("," if i < 3 or c < 15 else "")
            c += 1
    return

def print_cuts_4 (stage):
    for i in range (4):
        for j in range (2):
            for k in range (8):
                idx = 3 + 2*i
                zeta_idx = 0x1e0 + 0x20*i + 0x10*j
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx, suffix[j*8+k], stage)
                print "             ((bvvar ymm{0}{1}o{2}) +".format (idx+j+1, suffix[k], stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx+j+1, suffix[k+8], stage - 1)
                print "             (bvvar q),"
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx+1, suffix[j*8+k], stage)
                print "             ((bvvar ymm{0}{1}o{2}) -".format (idx+j+1, suffix[k], stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx+j+1, suffix[k+8], stage - 1)
                print "             (bvvar q){0}".format ("," if i < 3 or j < 1 or k < 7 else "")
    return

"""
  j for { LLLL, HLLL }
  k for { 5, 6 }
  l for { +, - }
  m for LSB
"""
def print_cuts_5 (stage):
    zeta_idx = 0x2e0
    for i in [10, 4, 6, 8]:
        for j in range (2):
            for k in range (2):
                for l in range (2):
                    for m in range (2):
                        off = 8*j + 4*k + 2*l + m
                        dst_0 = i
                        dst_1 = (i + 1) if i != 10 else 3
                        src = k + 1 + (i if i != 10 else 2)
                        suf_off = m + 8*j
                        
                        print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_0, suffix[off], stage)
                        print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src, suffix[suf_off], "+" if l == 0 else "-", stage - 1)
                        print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src, suffix[suf_off + 4], stage - 1)
                        print "             (bvvar q),"
                        print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_1, suffix[off], stage)
                        print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src, suffix[suf_off + 2], "+" if l == 0 else "-", stage - 1)
                        print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src, suffix[suf_off + 4 + 2], stage - 1)
                        print "             (bvvar q){0}".format ("," if i != 8 or j < 1 or k < 1 or l < 1 or m < 1 else "")
                zeta_idx += 0x8
    return

"""
  j for { LLLx, ..., HHHx }
  k for { +, - }
"""
def print_cuts_6 (stage):
    zeta_idx = 0x3e0
    for i in [10, 4, 6, 8]:
        for j in range (8):
            for k in range (2):
                src_0 = i
                src_1 = (i + 1) if i != 10 else 3
                dst_0 = i
                dst_1 = (i + 1) if i != 10 else 3
                suf_off = j * 2
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_0, suffix[suf_off + k], stage)
                print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src_0, suffix[suf_off], "+" if k == 0 else "-", stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src_1, suffix[suf_off], stage - 1)
                print "             (bvvar q),"
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_1, suffix[suf_off + k], stage)
                print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src_0, suffix[suf_off + 1], "+" if k == 0 else "-", stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src_1, suffix[suf_off+ 1], stage - 1)
                print "             (bvvar q){0}".format ("," if i != 8 or j < 7 or k < 1 else "")
            zeta_idx += 0x4
    return

def print_cuts_7 (stage):
    zeta_idx = 0x4e0
    for i in [10, 4, 6, 8]:
        for j in range (16):
            src_0 = i
            src_1 = (i + 1) if i != 10 else 3
            dst_0 = i
            dst_1 = (i + 1) if i != 10 else 3
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_0, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) +".format (src_0, suffix[j], stage - 1)
            print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src_1, suffix[j], stage - 1)
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_1, suffix[j] , stage)
            print "             ((bvvar ymm{0}{1}o{2}) -".format (src_0, suffix[j], stage - 1)
            print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src_1, suffix[j], stage - 1)
            print "             (bvvar q){0}".format ("," if i != 8 or j < 15 else "")
            zeta_idx += 0x2
    return
            
def print_cuts_8 (stage):    # from print_cuts_1
    for i in range (4):
        mybase_0 = base + 0x100 + i * 0x20
        mybase_1 = base + 0x180 + i*0x20
        for j in range (16):
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (i+4, suffix[j], stage)
            print "             ((bvvar L0x{0:x}{1}o) +".format (mybase_0, suffix[j])
            print "              (bvvar zeta040) * (bvvar L0x{0:x}{1}o) * (bvconst 900))".format (mybase_1, suffix[j])
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (i+8, suffix[j], stage)
            print "             ((bvvar L0x{0:x}{1}o) -".format (mybase_0, suffix[j])
            print "              (bvvar zeta040) * (bvvar L0x{0:x}{1}o) * (bvconst 900))".format (mybase_1, suffix[j])
            print "             (bvvar q){0}".format ("," if i < 3 or j < 15 else "")
    return

def print_cuts_9 (stage):    # from print_cuts_2
    for i in range (4):
        for j in range (16):
            idx = 4 + i + (0 if i < 2 else 2)
            zeta = 'zeta0a0' if i < 2 else 'zeta0c0'
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) +".format (idx, suffix[j], stage - 1)
            print "              (bvvar {0}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta, idx + 2, suffix[j], stage - 1)
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx + 2, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) -".format (idx, suffix[j], stage - 1)
            print "              (bvvar {0}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta, idx + 2, suffix[j], stage - 1)
            print "             (bvvar q){0}".format ("," if i < 3 or j < 15 else "")
    return

def print_cuts_10 (stage):    # from print_cuts_3
    for i in range (4):
        for j in range (16):
            idx = 4 + i * 2
            zeta_idx = 0x160 + i * 0x20
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) +".format (idx, suffix[j], stage - 1)
            print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx + 1, suffix[j], stage - 1)
            print "             (bvvar q),"
            print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx + 1, suffix[j], stage)
            print "             ((bvvar ymm{0}{1}o{2}) -".format (idx, suffix[j], stage - 1)
            print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx + 1, suffix[j], stage - 1)
            print "             (bvvar q){0}".format ("," if i < 3 or j < 15 else "")
    return

def print_cuts_11 (stage):    # from print_cuts_4
    for i in range (4):
        for j in range (2):
            for k in range (8):
                idx = 3 + 2*i
                zeta_idx = 0x260 + 0x20*i + 0x10*j
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx, suffix[j*8+k], stage)
                print "             ((bvvar ymm{0}{1}o{2}) +".format (idx+j+1, suffix[k], stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx+j+1, suffix[k+8], stage - 1)
                print "             (bvvar q),"
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (idx+1, suffix[j*8+k], stage)
                print "             ((bvvar ymm{0}{1}o{2}) -".format (idx+j+1, suffix[k], stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, idx+j+1, suffix[k+8], stage - 1)
                print "             (bvvar q){0}".format ("," if i < 3 or j < 1 or k < 7 else "")
    return

def print_cuts_12 (stage):    # from print_cuts_5
    zeta_idx = 0x360
    for i in [10, 4, 6, 8]:
        for j in range (2):
            for k in range (2):
                for l in range (2):
                    for m in range (2):
                        off = 8*j + 4*k + 2*l + m
                        dst_0 = i
                        dst_1 = (i + 1) if i != 10 else 3
                        src = k + 1 + (i if i != 10 else 2)
                        suf_off = m + 8*j
                        
                        print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_0, suffix[off], stage)
                        print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src, suffix[suf_off], "+" if l == 0 else "-", stage - 1)
                        print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src, suffix[suf_off + 4], stage - 1)
                        print "             (bvvar q),"
                        print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_1, suffix[off], stage)
                        print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src, suffix[suf_off + 2], "+" if l == 0 else "-", stage - 1)
                        print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src, suffix[suf_off + 4 + 2], stage - 1)
                        print "             (bvvar q){0}".format ("," if i != 8 or j < 1 or k < 1 or l < 1 or m < 1 else "")
                zeta_idx += 0x8
    return

def print_cuts_13 (stage):    # from print_cuts_6
    zeta_idx = 0x460
    for i in [10, 4, 6, 8]:
        for j in range (8):
            for k in range (2):
                src_0 = i
                src_1 = (i + 1) if i != 10 else 3
                dst_0 = i
                dst_1 = (i + 1) if i != 10 else 3
                suf_off = j * 2
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_0, suffix[suf_off + k], stage)
                print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src_0, suffix[suf_off], "+" if k == 0 else "-", stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src_1, suffix[suf_off], stage - 1)
                print "             (bvvar q),"
                print "    bveEqMod (bvvar ymm{0}{1}o{2})".format (dst_1, suffix[suf_off + k], stage)
                print "             ((bvvar ymm{0}{1}o{3}) {2}".format (src_0, suffix[suf_off + 1], "+" if k == 0 else "-", stage - 1)
                print "              (bvvar zeta{0:03x}) * (bvvar ymm{1}{2}o{3}) * (bvconst 900))".format (zeta_idx, src_1, suffix[suf_off+ 1], stage - 1)
                print "             (bvvar q){0}".format ("," if i != 8 or j < 7 or k < 1 else "")
            zeta_idx += 0x4
    return

print "\n(* input coefficients *)\n"

for i in range(256):
    print "c_{0:02x},".format(i),

print ""

print "\n(* range precondition *)\n"

print "  bvrands ["
for i in range(0, 256, 2):
    print "    bvconst 16 0 <= bvvar c_{0:02x}, bvvar c_{0:02x} <= bvconst 16 16383,".format (i)
    print "    bvconst 16 0 <= bvvar c_{0:02x}, bvvar c_{0:02x} <= bvconst 16 16383,".format (i+1)
print "]"

print "\n(* prelude *)\n"

print "(* constants *)\n"
print "bvAssign qinv (bvConst 57857);"
print "bvAssign q (bvConst 7681);"
print "bvAssign phi (bvConst 62);"
print "bvAssign twoq (bvConst 15362);"

print "\n(* input coefficient locations *)\n"

mybase = base
for i in range(16):
    for j in range(0,16):
        print "bvAssign L0x{0:x}{1} (bvVar c_{2:02x});".format (mybase, suffix[j], c)
        c += 1
    mybase += offset

zeta = [ 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 3777, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 4499, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3625, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 3985, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 6581, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2456, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 2194, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 121, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 5431, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 834, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5186, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 5362, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 2876, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 5980, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 1414, 2816, 2816, 2816, 2816, 2816, 2816, 2816, 2816, 5593, 5593, 5593, 5593, 5593, 5593, 5593, 5593, 5444, 5444, 5444, 5444, 5444, 5444, 5444, 5444, 1986, 1986, 1986, 1986, 1986, 1986, 1986, 1986, 6082, 6082, 6082, 6082, 6082, 6082, 6082, 6082, 1993, 1993, 1993, 1993, 1993, 1993, 1993, 1993, 3706, 3706, 3706, 3706, 3706, 3706, 3706, 3706, 5675, 5675, 5675, 5675, 5675, 5675, 5675, 5675, 6156, 6156, 6156, 6156, 6156, 6156, 6156, 6156, 5124, 5124, 5124, 5124, 5124, 5124, 5124, 5124, 1296, 1296, 1296, 1296, 1296, 1296, 1296, 1296, 1483, 1483, 1483, 1483, 1483, 1483, 1483, 1483, 4851, 4851, 4851, 4851, 4851, 4851, 4851, 4851, 3364, 3364, 3364, 3364, 3364, 3364, 3364, 3364, 617, 617, 617, 617, 617, 617, 617, 617, 1921, 1921, 1921, 1921, 1921, 1921, 1921, 1921, 3992, 3992, 3992, 3992, 5943, 5943, 5943, 5943, 3266, 3266, 3266, 3266, 4081, 4081, 4081, 4081, 810, 810, 810, 810, 1887, 1887, 1887, 1887, 7043, 7043, 7043, 7043, 7674, 7674, 7674, 7674, 7243, 7243, 7243, 7243, 7002, 7002, 7002, 7002, 6376, 6376, 6376, 6376, 5921, 5921, 5921, 5921, 396, 396, 396, 396, 4507, 4507, 4507, 4507, 4126, 4126, 4126, 4126, 5800, 5800, 5800, 5800, 3772, 3772, 3772, 3772, 5146, 5146, 5146, 5146, 5241, 5241, 5241, 5241, 5126, 5126, 5126, 5126, 1535, 1535, 1535, 1535, 7132, 7132, 7132, 7132, 3153, 3153, 3153, 3153, 2310, 2310, 2310, 2310, 6282, 6282, 6282, 6282, 1321, 1321, 1321, 1321, 514, 514, 514, 514, 4725, 4725, 4725, 4725, 7578, 7578, 7578, 7578, 2804, 2804, 2804, 2804, 5638, 5638, 5638, 5638, 6250, 6250, 6250, 6250, 6627, 6627, 1698, 1698, 4225, 4225, 1166, 1166, 2426, 2426, 3831, 3831, 915, 915, 7679, 7679, 4264, 4264, 7487, 7487, 2919, 2919, 2789, 2789, 3405, 3405, 2385, 2385, 5568, 5568, 4949, 4949, 2175, 2175, 373, 373, 3692, 3692, 6951, 6951, 5925, 5925, 3135, 3135, 5290, 5290, 660, 660, 6184, 6184, 2572, 2572, 4536, 4536, 1350, 1350, 5457, 5457, 4093, 4093, 6000, 6000, 2883, 2883, 6291, 6291, 1598, 1598, 3750, 3750, 2762, 2762, 2835, 2835, 2764, 2764, 5448, 5448, 3816, 3816, 6148, 6148, 1464, 1464, 6954, 6954, 1521, 1521, 1386, 1386, 4253, 4253, 6760, 6760, 4938, 4938, 5521, 5521, 2649, 2649, 6822, 6822, 2579, 2579, 1532, 1532, 1919, 1919, 7195, 7195, 404, 404, 6625, 6625, 783, 783, 1799, 1799, 5016, 5016, 3480, 3480, 2133, 2133, 4371, 4371, 6513, 6513, 7664, 3744, 2422, 2001, 1278, 929, 6333, 5451, 7502, 6439, 5622, 6611, 2161, 1649, 2072, 3177, 5610, 1121, 7245, 236, 715, 670, 7023, 6205, 5303, 2767, 3542, 7455, 1203, 1181, 7530, 3887, 1712, 7459, 2786, 7230, 4134, 1779, 6530, 7247, 3568, 3988, 3581, 6095, 1509, 2918, 2339, 6274, 3434, 4131, 2340, 2891, 2998, 4367, 3461, 4962, 5434, 5092, 1144, 1072, 1295, 4866, 3911, 3450, 3781, 5423, 796, 3163, 4473, 7092, 2963, 7557, 3214, 3334, 4315, 3936, 3723, 1931, 7252, 7279, 4273, 83, 6155, 826, 6343, 2345, 5378, 2515, 7039, 5844, 4716, 6890, 370, 293, 3312, 2083, 5992, 6904, 2070, 2262, 6788, 2386, 7493, 6162, 4807, 6277, 1012, 2130, 1441, 2532, 4346, 6597, 4338, 2937, 509, 6278, 2812, 3763, 592, 2005, 3657, 2460, 4004, 3752, 692, 1669, 2167, 4394 ]

print "\n(* zetas *)\n"

zeta_offset = 0
last = 0
for i in zeta:
    if last != i:
        last = i
        print "bvAssign zeta{0:03x} (bvConst {1:d});".format(zeta_offset, i)
    zeta_offset += 2

print "\n(* save old-0 *)\n"
print_save_old ([], 0)
    
print "\n(* cuts-0 *)\n"
print "  bveands ["
print_cuts_0 ()
print "    ]"

print "\n(* save old-1 *)\n"
print_save_old (['ymm4', 'ymm5', 'ymm6', 'ymm7',
                 'ymm8', 'ymm9', 'ymm10', 'ymm11'], 1)

print "\n(* cuts-1 *)\n"
print "  bveands ["
print_cuts_1 (1)
print "    ]"

print "\n(* save old-2 *)\n"
print_save_old (['ymm4', 'ymm5', 'ymm6', 'ymm7',
                 'ymm8', 'ymm9', 'ymm10', 'ymm11'], 2)

print "\n(* cuts-2 *)\n"
print "  bveands ["
print_cuts_2 (2)
print "    ]"

print "\n(* save old-3 *)\n"
print_save_old (['ymm4', 'ymm5', 'ymm6', 'ymm7',
                 'ymm8', 'ymm9', 'ymm10', 'ymm11'], 3)

print "\n(* cuts-3 *)\n"
print "  bveands ["
print_cuts_3 (3)
print "    ]"

print "\n(* save old-4 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 4)

print "\n(* cuts-4 *)\n"
print "  bveands ["
print_cuts_4 (4)
print "    ]"

print "\n(* save old-5 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 5)

print "\n(* cuts-5 *)\n"
print "  bveands ["
print_cuts_5 (5)
print "    ]"

print "\n(* save old-6 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 6)

print "\n(* cuts-6 *)\n"
print "  bveands ["
print_cuts_6 (6)
print "    ]"

print "\n(* save old-7 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 7)

print "\n(* cuts-7 *)\n"
print "  bveands ["
print_cuts_7 (7)
print "    ]"

print "\n(* save old-8 *)\n"
print_save_old (['ymm4', 'ymm5', 'ymm6', 'ymm7',
                 'ymm8', 'ymm9', 'ymm10', 'ymm11'], 8)

print "\n(* cuts-8 *)\n"
print "  bveands ["
print_cuts_8 (8)
print "    ]"

print "\n(* save old-9 *)\n"
print_save_old (['ymm4', 'ymm5', 'ymm6', 'ymm7',
                 'ymm8', 'ymm9', 'ymm10', 'ymm11'], 9)

print "\n(* cuts-9 *)\n"
print "  bveands ["
print_cuts_9 (9)
print "    ]"

print "\n(* save old-10 *)\n"
print_save_old (['ymm4', 'ymm5', 'ymm6', 'ymm7',
                 'ymm8', 'ymm9', 'ymm10', 'ymm11'], 10)

print "\n(* cuts-10 *)\n"
print "  bveands ["
print_cuts_10 (10)
print "    ]"

print "\n(* save old-11 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 11)

print "\n(* cuts-11 *)\n"
print "  bveands ["
print_cuts_11 (11)
print "    ]"

print "\n(* save old-12 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 12)

print "\n(* cuts-12 *)\n"
print "  bveands ["
print_cuts_12 (12)
print "    ]"

print "\n(* save old-13 *)\n"
print_save_old (['ymm3', 'ymm4', 'ymm5', 'ymm6',
                 'ymm7', 'ymm8', 'ymm9', 'ymm10'], 13)

print "\n(* cuts-13 *)\n"
print "  bveands ["
print_cuts_13 (13)
print "    ]"

print "\n(* output coefficient locations *)\n"

c = 0
mybase = base
for i in range(16):
    for j in range(0,16):
        print "bvAssign d_{2:02x} (bvVar L0x{0:x}{1});".format (mybase, suffix[j], c)
        c += 1
    mybase += offset

q = 7681
omega = 3844
psi = 62

def bit_reverse (i):
    bits = []
    for j in range (8):
        bits.append (i % 2)
        i >>= 1
    ret = 0
    for j in range (8):
        ret <<= 1
        ret += bits[j]
    return ret

def algebraic_post (i):
    rev_i = bit_reverse (i)
    omega_to_rev_i = omega ** rev_i
    print "\n(* d_{0:02x} *)".format (i)
    print "  bveEqMod (bvvar d_{0:02x})".format (i)
    for j in range (0, 256, 2):
        coeff = ((psi ** j) * (omega_to_rev_i ** j)) % q
        coeff_1 = ((psi ** (j + 1)) * (omega_to_rev_i ** (j + 1))) % q
        print "           {4}(bvconst {0:4d}) * (bvvar c_{1:02x}) + (bvconst {2:4d}) * (bvvar c_{3:02x}){5}".format (coeff, j, coeff_1, j+1, "(" if j == 0 else " ", " +" if j < 254 else ")")
    print "           (bvconst {0:4d})".format (q)


print "\n(* algebraic post condition *)\n"

print "bveands ["
for i in range (256):
    algebraic_post (i)
    print "  {0}".format ("," if i < 255 else "]")
