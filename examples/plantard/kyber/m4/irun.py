#/usr/bin/env python

Q = 3329
K = 17

zetas_inv_CT_asm = [
    # LAYER 7+6+5+4
    1290168, 1290168, 2064267851, 1290168, 51606697, 2064267851, 966335388, 1290168, 3200905336, 51606697, 3482161830, 2064267851, 1847519727, 966335388, 886345009,
    # removed first "2285" + LAYER 3+2+1 - 1 - butterfly
    1290168, 2064267851, 1290168, 51606697, 2064267851, 966335388,
    # LAYER 3+2+1 - 1 - twist
    2435836064, 290287667, 2944162022, 3021572066, 1802363867, 603798347, 3375077936, 2677097369,
    # LAYER 3+2+1 - 2 - butterfly
    2042335005, 3235739856, 1748176836, 3120914957, 282546663, 2711931889, 1103093133,
    # LAYER 3+2+1 - 2 - twist
    1659155285, 1785591691, 1941701947, 2704190884, 358666539, 793452955, 1461759672, 1673347127,
    # LAYER 3+2+1 - 3 - butterfly
    3200905336, 2042335005, 3560862042, 3235739856, 580575333, 1748176836, 1207596693,
    # LAYER 3+2+1 - 3 - twist
    3887274396, 2126195886, 872153167, 3443456808, 526388302, 299318839, 3875662889, 3382818940,
    # LAYER 3+2+1 - 4 - butterfly
    3266703874, 2575174144, 1404992306, 1824296713, 4252391772, 2591946320, 598637677,
    # LAYER 3+2+1 - 4 - twist
    1997179146, 2904166832, 2577754479, 202556283, 30964018, 3807284017, 1238560711, 1967505295,
    # LAYER 3+2+1 - 5 - butterfly
    51606697, 3200905336, 1847519727, 2042335005, 89021552, 3560862042, 700560902,
    # LAYER 3+2+1 - 5 - twist
    1633351937, 2191994424, 909568022, 1780431021, 2022982494, 2497764099, 3609888404, 1126316146,
    # LAYER 3+2+1 - 6 - butterfly
    89021552, 576704831, 3604727734, 1195985186, 594767175, 2315850495, 2439706566,
    # LAYER 3+2+1 - 6 - twist
    3633111417, 2908037335, 3590535893, 357376372, 1887514916, 1410152976, 2486152593, 571544162,
    # LAYER 3+2+1 - 7 - butterfly
    3482161830, 3266703874, 4045964987, 2575174144, 4222717922, 1404992306, 365117377,
    # LAYER 3+2+1 - 7 - twist
    4003389463, 2444867236, 1221788534, 3305408896, 1626901100, 3367336931, 651534541, 1549491056,
    # LAYER 3+2+1 - 8 - butterfly
    1819136044, 2390680205, 2567433139, 1643673276, 1322421592, 1357256112, 2750636911,
    # LAYER 3+2+1 - 8 - twist
    993428903, 3680847611, 1082450454, 1205016358, 348345200, 956014049, 1048906102, 3880823559,
    # LAYER 3+2+1 - 9 - butterfly
    2064267851, 51606697, 966335388, 3200905336, 3482161830, 1847519727, 886345009,
    # LAYER 3+2+1 - 9 - twist
    3342823751, 4258842609, 568963827, 2849979801, 1283716570, 2330042337, 4104022520, 3007380225,
    # LAYER 3+2+1 - 10 - butterfly
    3560862042, 580575333, 1207596693, 3458938817, 918599194, 2384229368, 879894172,
    # LAYER 3+2+1 - 10 - twist
    2217797772, 503165289, 2812564947, 2946742357, 833448145, 1905577260, 3273154711, 3208646340,
    # LAYER 3+2+1 - 11 - butterfly
    1847519727, 89021552, 700560902, 576704831, 1593356747, 3604727734, 2455188575,
    # LAYER 3+2+1 - 11 - twist
    3162200314, 2808694444, 1933960943, 678628056, 49026362, 1375318456, 1961054458, 3473130659,
    # LAYER 3+2+1 - 12 - butterfly
    4045964987, 4222717922, 365117377, 3479581496, 1744306334, 1052776604, 3456358482,
    # LAYER 3+2+1 - 12 - twist
    438656919, 1681088131, 366407544, 2819015784, 1771399850, 1091481626, 2136517226, 709592074,
    # LAYER 3+2+1 - 13 - butterfly
    966335388, 3482161830, 886345009, 3266703874, 1819136044, 4045964987, 2924809511,
    # LAYER 3+2+1 - 13 - twist
    25803349, 3888564563, 1032133926, 923759864, 2630651342, 2590656153, 2146838565, 547030981,
    # LAYER 3+2+1 - 14 - butterfly
    700560902, 1593356747, 2455188575, 3711811629, 2443577068, 3253802200, 1303069081,
    # LAYER 3+2+1 - 14 - twist
    254162980, 3513125848, 1576584571, 3086080437, 2933840683, 3184133160, 1389510297, 2811274779,
    # LAYER 3+2+1 - 15 - butterfly
    886345009, 1819136044, 2924809511, 2390680205, 1137927653, 2567433139, 3913077744,
    # LAYER 3+2+1 - 15 - twist
    2288756980, 459299597, 1355965945, 1192114684, 2699030215, 439947086, 587026170, 418014240,
    # LAYER 3+2+1 - 16 - butterfly
    2924809511, 1137927653, 3913077744, 2029433331, 3867921885, 98052723, 3922108916, 639923034,
    # LAYER 3+2+1 - 16 - twist
    2806114109, 4122084864, 575414664, 1674637294, 1541750051, 2560982302, 1540459884, 0]

# return bits in MSB-first order
def to_msb_bits (n, sz):
    assert (n >= 0)
    rev_ret = []
    nb = 0
    while n > 0 or nb < sz:
        rev_ret.append (n % 2)
        n //= 2
        nb += 1
    rev_ret.reverse ()
    ret = [ 0 for i in range (sz - nb) ] + rev_ret
    return (ret)

# convert bits in MSB-first order
def from_msb_bits (bs):
    ret = 0
    for i in range (len (bs)):
        ret *= 2
        ret += bs[i]
    return ret

def bit_reverse (nums, sz):
    ret = []
    for i in range (len (nums)):
        bs = to_msb_bits (nums[i], sz)
        bs.reverse ()
        ret.append (from_msb_bits (bs))
    return ret

def parameters (base):
    for i in range (256):
        print ('int16 L0x{0:x}'.format (base + 2*i),
               end = ',\n' if i % 4 == 3 or i == 255 else ',')
    print ('int16 Q, int16 Q2, int16 NQ, int16 NQ2, int16 F, int16 X')


def precondition (base, exps):
    print ('Q = {0} /\\ NQ = {1} /\\ Q2 = {2} /\\ NQ2 = {3} /\\'.
           format (Q, -Q, Q//2+1, -(Q//2+1)))
    for i in range (128):
        print ('eqmod (F**2) (poly X [L0x{0:x}, L0x{1:x}]) '\
               '[Q, X**2 - 17**{2:<3}] /\\'.
               format (base + 4*i, base + 4*i + 2, exps[i]))
    for i in range (0, 256, 4):
        print ('[NQ2,NQ2,NQ2,NQ2]<[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)))
        print ('[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<[Q2,Q2,Q2,Q2]'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)),
               end = '\n&&\n' if i == 252 else ' /\\\n')
    print ('Q = {0}@16 /\\ NQ = ({1})@16 /\\ Q2 = {2}@16 /\\ NQ2 = ({3})@16 /\\'.
           format (Q, -Q, Q//2+1, -(Q//2+1)))
    for i in range (0, 256, 4):
        print ('[NQ2,NQ2,NQ2,NQ2]<s[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)))
        print ('[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<s[Q2,Q2,Q2,Q2]'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)),
               end = '\n' if i == 252 else ' /\\\n')

def inv_coeff (n):
    r = -(n * Q % 2**32) * 1929 % Q
    return (r if r <= Q//2 else r - Q)

def initialization (base, table):
    for i in range (len (table)):
        print ('mov L0x{0:x} ({1:11})@int32; (* {2:5} *)'.
               format (base + 4*i,
                       table[i] if table[i] < 2**31 else table[i] - 2**32,
                       inv_coeff (table[i])))
    
def ghost (n, rs):
    print ('ghost ', end = '')
    for i in range (len (rs)):
        print ('{0}_b{1}@int16, {0}_t{1}@int16'.
               format (rs[i], n),
               end = ':\n      ' if i == len (rs) - 1 else
                     ',\n      ' if i % 2 == 1 else ', ')
    for i in range (len (rs)):
        print ('{0}_b{1} = {0}_b /\\ {0}_t{1} = {0}_t'.
               format (rs[i], n),
               end = '\n   && ' if i == len (rs) - 1 else
                     ' /\\\n      ' if i % 2 == 1 else ' /\\ ')
    for i in range (len (rs)):
        print ('{0}_b{1} = {0}_b /\\ {0}_t{1} = {0}_t'.
               format (rs[i], n),
               end = ';\n' if i == len (rs) - 1 else
                     ' /\\\n      ' if i % 2 == 1 else ' /\\ ')

def ghosto (n, rs):
    print ('ghost ', end = '')
    for i in range (len (rs)):
        print ('{0}_bo{1}@int16, {0}_to{1}@int16'.
               format (rs[i], n),
               end = ':\n      ' if i == len (rs) - 1 else
                     ',\n      ' if i % 2 == 1 else ', ')
    for i in range (len (rs)):
        print ('{0}_bo{1} = {0}_b /\\ {0}_to{1} = {0}_t'.
               format (rs[i], n),
               end = '\n   && ' if i == len (rs) - 1 else
                     ' /\\\n      ' if i % 2 == 1 else ' /\\ ')
    for i in range (len (rs)):
        print ('{0}_bo{1} = {0}_b /\\ {0}_to{1} = {0}_t'.
               format (rs[i], n),
               end = ';\n' if i == len (rs) - 1 else
                     ' /\\\n      ' if i % 2 == 1 else ' /\\ ')
        
def plantard (n, out, inp, cb, ct):
    print ('assert eqmod {0}_b ({1}_b{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, cb))
    print ('       eqmod {0}_t ({1}_t{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, ct))
    print ('       [NQ2, NQ2] < [{0}_b, {0}_t] /\\ [{0}_b, {0}_t] < [Q2, Q2]'.
           format (out))
    print ('       prove with [algebra solver isl] && true;')
    print ('assume eqmod {0}_b ({1}_b{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, cb))
    print ('       eqmod {0}_t ({1}_t{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, ct))
    print ('       [NQ2, NQ2] < [{0}_b, {0}_t] /\\ [{0}_b, {0}_t] < [Q2, Q2]'.
           format (out))
    print ('    && [NQ2, NQ2] <s[{0}_b, {0}_t] /\\ [{0}_b, {0}_t] <s[Q2, Q2];'.
           format (out))

def plantardo (n, out, inp, cb, ct):
    print ('assert eqmod {0}_b ({1}_bo{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, cb))
    print ('       eqmod {0}_t ({1}_to{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, ct))
    print ('       [NQ2, NQ2] < [{0}_b, {0}_t] /\\ [{0}_b, {0}_t] < [Q2, Q2]'.
           format (out))
    print ('       prove with [algebra solver isl] && true;')
    print ('assume eqmod {0}_b ({1}_bo{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, cb))
    print ('       eqmod {0}_t ({1}_to{2} * {3:5}) [Q] /\\'.
           format (out, inp, n, ct))
    print ('       [NQ2, NQ2] < [{0}_b, {0}_t] /\\ [{0}_b, {0}_t] < [Q2, Q2]'.
           format (out))
    print ('    && [NQ2, NQ2] <s[{0}_b, {0}_t] /\\ [{0}_b, {0}_t] <s[Q2, Q2];'.
           format (out))

def ranges (f, pf):
    print ('assert ', end = '')
    for i in range (0, 8, 2):
        print ('[{0}*NQ2,{0}*NQ2,{0}*NQ2,{0}*NQ2]< '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t] /\\\n       '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t]< '\
               '[{0}*Q2,{0}*Q2,{0}*Q2,{0}*Q2]'.
               format (f, 2+i, 2+i+1),
               end = '\n       ' if i == 6 else ' /\\\n       ')
    print ('prove with [{0}] && true;'.
           format (pf))
    print ('assume ', end = '')
    for i in range (0, 8, 2):
        print ('[{0}*NQ2,{0}*NQ2,{0}*NQ2,{0}*NQ2]< '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t] /\\\n       '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t]< '\
               '[{0}*Q2,{0}*Q2,{0}*Q2,{0}*Q2]'.
               format (f, 2+i, 2+i+1),
               end = '\n    && ' if i == 6 else ' /\\\n       ')
    for i in range (0, 8, 2):
        print ('[{0}@16*NQ2,{0}@16*NQ2,{0}@16*NQ2,{0}@16*NQ2]<s'\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t] /\\\n       '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t]<s'\
               '[{0}@16*Q2,{0}@16*Q2,{0}@16*Q2,{0}@16*Q2]'.
               format (f, 2+i, 2+i+1),
               end = ';\n' if i == 6 else ' /\\\n       ')
    
def range3 (fs):
    print ('assert ', end = '')
    for i in range (8):
        print ('[{1}*NQ2,{1}*NQ2]< [s{0}_b, s{0}_t] /\\ '\
               '[s{0}_b, s{0}_t]< [{1}*Q2,{1}*Q2]'.
               format (i, fs[i]),
               end = '\n       ' if i == 7 else ' /\\\n       ')
    print ('prove with [algebra solver isl, precondition] && true;')
    print ('assume ', end = '')
    for i in range (8):
        print ('[{1}*NQ2,{1}*NQ2]< [s{0}_b, s{0}_t] /\\ '\
               '[s{0}_b, s{0}_t]< [{1}*Q2,{1}*Q2]'.
               format (i, fs[i]),
               end = '\n    && ' if i == 7 else ' /\\\n       ')
    for i in range (8):
        print ('[{1}@16*NQ2,{1}@16*NQ2]<s[s{0}_b, s{0}_t] /\\ '\
               '[s{0}_b, s{0}_t]<s[{1}@16*Q2,{1}@16*Q2]'.
               format (i, fs[i]),
               end = ';\n' if i == 7 else ' /\\\n       ')
    
def cut3 (n, t, e, fs):
    print ('ghost Z{0}@int16: X**2 = {1:5}*17**{2:3}*Z{0} && true;'.
           format (n, t, e))
    print ('cut Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\')
    print ('    eqmod (poly Z{0} ['.format (n), end = '')
    for i in range (8):
        print ('poly X [s{0}_b, s{0}_t]'.format (i),
               end = '])\n          ' if i == 7 else
                     ',\n                    ' if i % 2 == 1 else ', ')
    print ('(2**3*F**2) [Q, Z{0}**8 + 1] /\\\n    '.
           format (n), end = '')
    for i in range (8):
        print ('[{1}*NQ2,{1}*NQ2]< [s{0}_b, s{0}_t] /\\ '\
               '[s{0}_b, s{0}_t]< [{1}*Q2,{1}*Q2]'.
               format (i, fs[i]),
               end = '\n    ' if i == 7 else ' /\\\n    ')
    print ('prove with [precondition]\n && ', end = '')
    print ('Q = 3329@16 /\\ NQ = (-3329)@16 /\\'\
           'Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\',
           end = '\n    ')
    for i in range (8):
        print ('[{1}@16*NQ2,{1}@16*NQ2]<s[s{0}_b, s{0}_t] /\\ '\
               '[s{0}_b, s{0}_t]<s[{1}@16*Q2,{1}@16*Q2]'.
               format (i, fs[i]),
               end = '\n    ' if i == 7 else ' /\\\n    ')
    print ('prove with [precondition];')

def range4 (base, fs):
    print ('assert ', end = '')
    for i in range (0, 30, 3):
        print ('[{0}*NQ2,{1}*NQ2,{2}*NQ2]< '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}] /\\\n       '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}]< '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[{0}*Q2,{1}*Q2,{2}*Q2] /\\\n       '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
    print ('[{0}*NQ2,{1}*NQ2]< '.
           format (fs[30], fs[31]), end = '')
    print ('[L0x{0:x},L0x{1:x}] /\\\n       '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[L0x{0:x},L0x{1:x}]< '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[{0}*Q2,{1}*Q2]\n       '.
           format (fs[30], fs[31]), end = '')
    print ('prove with [algebra solver isl, precondition] && true;')
    print ('assume ', end = '')
    for i in range (0, 30, 3):
        print ('[{0}*NQ2,{1}*NQ2,{2}*NQ2]< '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}] /\\\n       '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}]< '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[{0}*Q2,{1}*Q2,{2}*Q2] /\\\n       '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
    print ('[{0}*NQ2,{1}*NQ2]< '.
           format (fs[30], fs[31]), end = '')
    print ('[L0x{0:x},L0x{1:x}] /\\\n       '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[L0x{0:x},L0x{1:x}]< '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[{0}*Q2,{1}*Q2]\n    && '.
           format (fs[30], fs[31]), end = '')
    for i in range (0, 30, 3):
        print ('[{0}@16*NQ2,{1}@16*NQ2,{2}@16*NQ2]< '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}] /\\\n       '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}]< '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[{0}@16*Q2,{1}@16*Q2,{2}@16*Q2] /\\\n       '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
    print ('[{0}@16*NQ2,{1}@16*NQ2]< '.
           format (fs[30], fs[31]), end = '')
    print ('[L0x{0:x},L0x{1:x}] /\\\n       '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[L0x{0:x},L0x{1:x}]< '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[{0}@16*Q2,{1}@16*Q2];'.
           format (fs[30], fs[31]))
    
def cut4 (n, base, fs):
    print ('cut Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\')
    print ('    eqmod (poly Z{0}'.format (n), end = '\n           [')
    for i in range (0, 32, 2):
        print ('poly X [L0x{0:x},L0x{1:x}]'.
               format (base + 2*i, base + 2*i + 2),
               end = '])\n          ' if i == 30 else
                     ',\n            ' if i % 4 == 2 else ',')
    print ('(2**4*F**2) [Q, Z{0}**16 - 1] /\\\n    '.
           format (n), end = '')
    for i in range (0, 30, 3):
        print ('[{0}*NQ2,{1}*NQ2,{2}*NQ2]< '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}] /\\\n    '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}]< '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[{0}*Q2,{1}*Q2,{2}*Q2] /\\\n    '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
    print ('[{0}*NQ2,{1}*NQ2]< '.
           format (fs[30], fs[31]), end = '')
    print ('[L0x{0:x},L0x{1:x}] /\\\n    '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[L0x{0:x},L0x{1:x}]< '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[{0}*Q2,{1}*Q2]'.format (fs[30], fs[31]))
    print ('    prove with [precondition, all ghosts]\n && ', end = '')
    for i in range (0, 30, 3):
        print ('[{0}@16*NQ2,{1}@16*NQ2,{2}@16*NQ2]< '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}] /\\\n    '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[L0x{0:x},L0x{1:x},L0x{2:x}]< '.
               format (base + 2*(i), base + 2*(i+1), base + 2*(i+2)), end = '')
        print ('[{0}@16*Q2,{1}@16*Q2,{2}@16*Q2] /\\\n    '.
               format (fs[i], fs[i+1], fs[i+2]), end = '')
    print ('[{0}@16*NQ2,{1}@16*NQ2]< '.
           format (fs[30], fs[31]), end = '')
    print ('[L0x{0:x},L0x{1:x}] /\\\n    '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[L0x{0:x},L0x{1:x}]< '.
           format (base + 2*(30), base + 2*(31)), end = '')
    print ('[{0}@16*Q2,{1}@16*Q2]\n    '.
           format (fs[30], fs[31]), end = '')
    print ('prove with [precondition];')

def cuts (n, rs, cs, f, pf):
    print ('cut Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\',
           end = '\n    ')
    for i in range (8):
        print ('eqmod ([r{2}_bo{0}, r{2}_to{0}] {1} '\
               '[r{3}_bo{0}, r{3}_to{0}] * [{4:5}, {5:5}])'.
               format (n, '+' if i % 2 == 0 else '-',
                       rs[i//2*2], rs[i//2*2+1],
                       cs[i//2*2], cs[i//2*2+1]),
               end = '\n          ')
        print ('[r{0}_b, r{0}_t] [Q, Q]'.format (rs[i]),
               end = ' /\\\n    ')
    for i in range (0, 8, 2):
        print ('[{0}*NQ2,{0}*NQ2,{0}*NQ2,{0}*NQ2]< '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t] /\\\n    '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t]< '\
               '[{0}*Q2,{0}*Q2,{0}*Q2,{0}*Q2]'.
               format (f, 2+i, 2+i+1),
               end = '\n && ' if i == 6 else ' /\\\n    ')
    print ('Q = 3329@16 /\\ NQ = (-3329)@16 /\\ '\
           'Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\',
           end = '\n    ')
    for i in range (0, 8, 2):
        print ('[{0}@16*NQ2,{0}@16*NQ2,{0}@16*NQ2,{0}@16*NQ2]<s'\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t] /\\\n    '\
               '[r{1}_b,r{1}_t,r{2}_b,r{2}_t]<s'\
               '[{0}@16*Q2,{0}@16*Q2,{0}@16*Q2,{0}@16*Q2]'.
               format (f, 2+i, 2+i+1),
               end = '' if i == 6 else ' /\\\n    ')
    print (';' if pf == '' else '\n    prove with [{0}];'.format (pf))

def cut8 (n, base, ts):
    print ('cut Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\',
           end = '\n    ')
    for i in range (8):
        print ('eqmod ([r{1}_bo{0}, r{1}_to{0}] * [{2:5}, {2:5}])'.
               format (n, 2+i, ts[i]),
               end = '\n          ')
        print ('[L0x{0:x}, L0x{1:x}] [Q, Q]'.
               format (base + 0x40*i, base + 0x40*i + 2),
               end = ' /\\\n    ')
    for i in range (0, 8, 2):
        print ('[NQ2,NQ2,NQ2,NQ2]< '\
               '[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\\n    '\
               '[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]< '\
               '[Q2,Q2,Q2,Q2]'.
               format (base + 0x40*i, base + 0x40*i + 2,
                       base + 0x40*(i+1), base + 0x40*(i+1) + 2),
               end = '\n && ' if i == 6 else ' /\\\n    ')
    print ('Q = 3329@16 /\\ NQ = (-3329)@16 /\\ '\
           'Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\',
           end = '\n    ')
    for i in range (0, 8, 2):
        print ('[NQ2,NQ2,NQ2,NQ2]<s'\
               '[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\\n    '\
               '[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<s'\
               '[Q2,Q2,Q2,Q2]'.
               format (base + 0x40*i, base + 0x40*i + 2,
                       base + 0x40*(i+1), base + 0x40*(i+1) + 2),
               end = ';\n' if i == 6 else ' /\\\n    ')
        

def postcondition (base):
    print ('   eqmod (poly X [', end = '')
    for i in range (256):
        print ('L0x{0:x}'.format (base + 2*i),
               end = '])\n         ' if i == 255 else
                     ',\n                  ' if i % 5 == 4 else ',')
    print ('(-1353*F**2) [Q, X**256 + 1]\n   prove with [all ghosts, all cuts]')
    print ('&&')
    for i in range (0, 256, 4):
        print ('   [NQ2,NQ2,NQ2,NQ2]<s[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\\n'\
               '   [L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<s[Q2,Q2,Q2,Q2]'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)),
               end = '\n   prove with [all cuts]\n' if i == 252 else ' /\\\n')
    
print ('\n\n\n(**************** parameters ****************)\n\n')
parameters (0xbefff1c4)
print ('\n\n\n(**************** precondition ****************)\n\n')
exps128 = bit_reverse (range (128, 256), 8)
precondition (0xbefff1c4, exps128)
print ('\n\n\n(**************** initialization ****************)\n\n')
initialization (0x40187c, zetas_inv_CT_asm)

exps8 = [17, 25, 21, 29, 19, 27, 23, 31]

for i in range (8):
    print ('\n\n\n(**************** {0:2} ****************)\n\n'.
           format (i))
    ghost (3*i, ['r5'])
    print ()
    plantard (3*i, 'lr', 'r5', 1600, 1600)
    print ('\n')

    ghost (5*i, ['r9'])
    print ()
    plantard (5*i, 'lr', 'r9', 1600, 1600)
    print ('\n')

    ghost (3*i, ['r7'])
    print ()
    plantard (3*i, 'lr', 'r7', 40, 40)
    print ('\n')
    
    ghost (3*i, ['r4'])
    print ()
    plantard (3*i, 'lr', 'r4', 1600, 1600)
    print ('\n')
    
    ghost (5*i+1, ['r9'])
    print ()
    plantard (5*i+1, 'lr', 'r9', 749, 749)
    print ('\n')
    
    ghost (i, ['r3'])
    print ()
    plantard (i, 'r3', 'r3', -848, -848)
    print ('\n')

    ghost (3*i+1, ['r4'])
    print ()
    plantard (3*i+1, 'r4', 'r4', 40, 40)
    print ('\n')

    ghost (3*i+1, ['r5'])
    print ()
    plantard (3*i+1, 'r5', 'r5', -630, -630)
    print ('\n')

    ghost (i, ['r6'])
    print ()
    plantard (i, 'r6', 'r6', 1600, 1600)
    print ('\n')

    ghost (3*i+1, ['r7'])
    print ()
    plantard (3*i+1, 'r7', 'r7', 1432, 1432)
    print ('\n')

    ghost (i, ['r8'])
    print ()
    plantard (i, 'r8', 'r8', 749, 749)
    print ('\n')

    ghost (5*i+2, ['r9'])
    print ()
    plantard (5*i+2, 'r9', 'r9', 687, 687)
    print ('\n')

    range3 ([8, 1, 1, 1, 1, 1, 1, 1])
    print ()
    print ('(* CUT {0} *)'.format (2*i))
    cut3 (i, -848, exps8[i], [8, 1, 1, 1, 1, 1, 1, 1])
    print ('\n')

    ghost (3*i+2, ['r5'])
    print ()
    plantard (3*i+2, 'lr', 'r5', 1600, 1600)
    print ('\n')
    
    ghost (5*i+3, ['r9'])
    print ()
    plantard (5*i+3, 'lr', 'r9', 1600, 1600)
    print ('\n')

    ghost (3*i+2, ['r7'])
    print ()
    plantard (3*i+2, 'lr', 'r7', 40, 40)
    print ('\n')
    
    ghost (3*i+2, ['r4'])
    print ()
    plantard (3*i+2, 'lr', 'r4', 1600, 1600)
    print ('\n')

    ghost (5*i+4, ['r9'])
    print ()
    plantard (5*i+4, 'lr', 'r9', 749, 749)
    print ('\n')
    
    print ('(* CUT {0} *)'.format (2*i+1))
    range4 (0xbefff1c4+0x40*i, [16,16, 5,5, 6,6, 5,5, 9,9, 5,5, 6,6, 5,5]*2)
    cut4 (i, 0xbefff1c4+0x40*i, [16,16, 5,5, 6,6, 5,5, 9,9, 5,5, 6,6, 5,5]*2)

print ('\n\n\nmov r10 1290168@int32; # = 19*2**16 + 44984\n\n\n\n')

cut5ranges = [16, 5, 6, 5, 9, 5, 6, 5]*2
for i in range (1, 16):
    ghosto (4+4*(i-1), ['r2','r3','r4','r5','r6','r7','r8','r9'])
    print ('\n')
    c5 = inv_coeff(zetas_inv_CT_asm[29+15*(i-1)])
    plantardo (4+4*(i-1), 'lr', 'r3', c5, c5)
    print ('\n')
    plantardo (4+4*(i-1), 'lr', 'r5', c5, c5)
    print ('\n')
    plantardo (4+4*(i-1), 'lr', 'r7', c5, c5)
    print ('\n')
    plantardo (4+4*(i-1), 'lr', 'r9', c5, c5)
    print ('\n')
    ranges (cut5ranges[i]+1, 'algebra solver isl, cuts [1,3,5,7,9,11,13,15]')
    print ('\n')
    print ('(* CUT {0} *)'.format (21+4*(i-1)))
    cuts (4+4*(i-1), [2,3,4,5,6,7,8,9], [c5]*8, cut5ranges[i]+1,
          'cuts [1, 3, 5, 7, 9, 11, 13, 15]')

    print ('\n\n')
    ghosto (5+4*(i-1), ['r2','r3','r4','r5','r6','r7','r8','r9'])
    print ('\n')
    c60 = inv_coeff(zetas_inv_CT_asm[30+15*(i-1)])
    c61 = inv_coeff(zetas_inv_CT_asm[31+15*(i-1)])
    print ('\n')
    plantardo (5+4*(i-1), 'lr', 'r4', c60, c60)
    print ('\n')
    plantardo (5+4*(i-1), 'lr', 'r5', c61, c61)
    print ('\n')
    plantardo (5+4*(i-1), 'lr', 'r8', c60, c60)
    print ('\n')
    plantardo (5+4*(i-1), 'lr', 'r9', c61, c61)
    print ('\n')
    ranges (cut5ranges[i]+2, 'algebra solver isl')
    print ('\n')
    print ('(* CUT {0} *)'.format (22+4*(i-1)))
    cuts (5+4*(i-1), [2,4,3,5,6,8,7,9], [c60, c60, c61, c61]*2,
          cut5ranges[i]+2, '')

    print ('\n\n')
    ghosto (6+4*(i-1), ['r2','r3','r4','r5','r6','r7','r8','r9'])
    print ('\n')
    c70 = inv_coeff(zetas_inv_CT_asm[32+15*(i-1)])
    c71 = inv_coeff(zetas_inv_CT_asm[33+15*(i-1)])
    c72 = inv_coeff(zetas_inv_CT_asm[34+15*(i-1)])
    c73 = inv_coeff(zetas_inv_CT_asm[35+15*(i-1)])
    print ('\n')
    plantardo (6+4*(i-1), 'lr', 'r6', c70, c70)
    print ('\n')
    plantardo (6+4*(i-1), 'lr', 'r7', c71, c71)
    print ('\n')
    plantardo (6+4*(i-1), 'lr', 'r8', c72, c72)
    print ('\n')
    plantardo (6+4*(i-1), 'lr', 'r9', c73, c73)
    print ('\n')
    ranges (cut5ranges[i]+3, 'algebra solver isl, '\
               'cuts [1,3,5,7,9,11,13,15]')
    print ('\n')
    print ('(* CUT {0} *)'.format (23+4*(i-1)))
    cuts (6+4*(i-1), [2,6,3,7,4,8,5,9],
          [c70,c70,c71,c71,c72,c72,c73,c73],
          cut5ranges[i]+3, '')
    
    print ('\n\n')
    ghosto (7+4*(i-1), ['r2','r3','r4','r5','r6','r7','r8','r9'])
    print ('\n')
    ts = [ inv_coeff(zetas_inv_CT_asm[36+j+15*(i-1)]) for j in range (8) ]
    for j in range (8):
        print ('\n')
        plantardo (7+4*(i-1),
                   'r{0}'.format (j+2),
                   'r{0}'.format (j+2), ts[j], ts[j])
    print ('\n')
    print ('(* CUT {0} *)'.format (24+4*(i-1)))
    cut8 (7+4*(i-1), 0xbefff1c4+4*i, ts)
    print ('\n\n')

print ('\n\n\n(**************** postcondition ****************)\n\n')
postcondition (0xbefff1c4)
