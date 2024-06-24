#! /usr/bin/env python3

Q = 8380417
ZETA=1753

def centrize (n, Q):
    n = n % Q
    return (n - Q if n > Q//2 else n)
    
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

# return bits in LSB-first order
def to_lsb_bits (n):
    assert (n >= 0)
    ret = []
    while n > 0:
        ret.append (n % 2)
        n //= 2
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

def pow_mod (a, n, q):
    assert (n >= 0)
    bits = to_lsb_bits (n)
    ret = 1
    for i in range (len (bits) - 1, -1, -1):
        if bits[i] == 0:
            ret = (ret * ret) % q
        else:
            ret = (ret * ret * a) % q
    return (ret)

def print_parameters (c, X):
    for i in range (256):
        print ('sint32 {0}{1:02x}'.format (c, i),
               end = ',\n' if i == 255 or i % 7 == 6 else ',')
    print ('sint32 {0}'.format (X))

def print_precondition (c):
    for i in range (64):
        print ('[', end='')
        for j in range (4):
            print ('({0})@32'.format (-(Q//2)),
                   end = ',' if j < 3 else ']<s[')
        for j in range (4):
            print ('{0}{1:02x}'.format (c, 4*i+j),
                   end = ',' if j < 3 else ']/\\\n[')
        for j in range (4):
            print ('{0}{1:02x}'.format (c, 4*i+j),
                   end = ',' if j < 3 else ']<=s[')
        for j in range (4):
            print ('{0}@32'.format(Q//2),
                   end = ',' if j < 3 else ']')
        print ('', end = '/\\\n' if i < 63 else '\n')
    
def print_initialization (base, c):
    for i in range (256):
        print ('mov L0x{0:x} {1}{2:02x};'.format (base + 4*i, c, i),
               end = '\n' if i % 3 == 2 or i == 255 else ' ')

def print_constants (base, tbl):
    for i in range (len (tbl)):
        print ('mov L0x{0:x} ({1:11})@sint32;'.format (base + 4*i, tbl[i]),
               end = '\n' if i % 2 == 1 or i == 255 else ' ')

def print_nondet (n, idx):
    for i in range (len (idx)):
        print ('nondet {0}{1}@uint64;'.format (n, idx[i]),
               end = '\n' if i % 4 == 3 or i == len (idx) - 1 else '')

def print_input_function (F, X, c):
    print ('ghost {0}@sint32,{0}0@sint32,{0}1@sint32,{0}2@sint32,{0}3@sint32 :'
           .format (F))
    for i in range (4):
        print ('{0}{1}**2 ='.format (F, i))
        for j in range (16):
            for k in range (4):
                idx = k + 4*j
                print ('{0}{1:02x}*{2}**{1:3}'.
                       format (c, 4*i + k + 16*j, X),
                       end = '+' if idx % 7 < 6 and idx < 63 else
                             ' /\\\n' if idx == 63 else '+\n')
    print ('{0}**2 = {0}0**2+{0}1**2+{0}2**2+{0}3**2 && true;'.
           format (F))

def print_mid_function (G, X, base):
    print ('ghost ', end = '')
    for i in range (16):
        print ('{0}{1:x}@sint32'.format (G, i),
               end = ',' if i % 6 < 5 and i < 15 else
                     ',\n      ' if i < 15 else ' :\n')
    for i in range (16):
        print ('{0}{1:x} = '.format (G, i), end = '')
        for j in range (16):
            print ('L0x{0:x}*{1}**{2:2}'.
                   format (base + 4*(16*i+j), X, j),
                   end = '+' if j % 3 < 2 and j < 15 else
                         '+\n     ' if j < 15 else '')
        print (' /\\' if i < 15 else ' && true;')

def print_mls (v, v_idxs, c, c_idxs, factors, nb, pws):
    k = 0
    l = 0
    print ('assert true &&\n       ', end = '')
    for i in range (len (v_idxs)):
        print ('eqsmod (sext %{0}{1} {2})\n              (['.
               format (v, v_idxs[i], nb - 32), end = '')
        for j in range (4):
            print ('sext {0}{1:x} {2}'.format (c, c_idxs[k], nb - 32),
                   end = ',' if j < 3 else ']*\n               [')
            k += 1
        for j in range (4):
            print ('({0})@{1}'.format (factors[l], nb),
                   end = ',' if j < 3 else '])\n')
            l += 1
        print ('              [{0}@{1}, {0}@{1}, {0}@{1}, {0}@{1}]'.
               format (Q, nb),
               end = ' /\\\n       ' if i < len (v_idxs) - 1 else
                     '')
    if len (pws) > 0:
        print ('\nprove with [', end = '')
        for i in range (len (pws)):
            print ('{0}'.format (pws[i]),
                   end = ',' if i < len (pws) - 1 else '];\n')
    else:
        print (';')
    k = 0
    l = 0
    print ('assume ', end = '')
    for i in range (len (v_idxs)):
        print ('eqmod %{0}{1} (['.format (v, v_idxs[i]), end = '')
        for j in range (4):
            print ('{0}{1:x}'.format (c, c_idxs[k]),
                   end = ',' if j < 3 else ']*[')
            k += 1
        for j in range (4):
            print ('{0}'.format (factors[l]),
                   end = ',' if j < 3 else '])\n')
            l += 1
        print ('             [Q, Q, Q, Q]',
               end = ' /\\\n       ' if i < len (v_idxs) - 1 else
                     ' && true;\n')

def print_mls_addr (v, v_idxs, addrs, factors, nb, pws):
    k = 0
    l = 0
    print ('assert true &&\n       ', end = '')
    for i in range (len (v_idxs)):
        print ('eqsmod (sext %{0}{1} {2})\n              (['.
               format (v, v_idxs[i], nb -32), end = '')
        for j in range (4):
            print ('sext L0x{0:x} {1}'.format (addrs[4*i+j], nb - 32),
                   end = ',' if j % 2 < 1 and j < 3 else
                         ',\n                ' if j < 3 else ']*\n               [')
            k += 1
        for j in range (4):
            print ('({0})@{1}'.format (factors[l], nb),
                   end = ',' if j < 3 else '])\n')
            l += 1
        print ('              [{0}@{1},{0}@{1},{0}@{1},{0}@{1}]'.
               format (Q, nb),
               end = ' /\\\n       ' if i < len (v_idxs) - 1 else
                     '\nprove with [')
    for i in range (len (pws)):
        print ('{0}'.format (pws[i]),
               end = ',' if i < len (pws) - 1 else '];\n')
    k = 0
    l = 0
    print ('assume ', end = '')
    for i in range (len (v_idxs)):
        print ('eqmod %{0}{1} (['.format (v, v_idxs[i]), end = '')
        for j in range (4):
            print ('L0x{0:x}'.format (addrs[4*i+j]),
                   end = ',' if j < 3 else ']*\n                   [')
            k += 1
        for j in range (4):
            print ('{0}'.format (factors[l]),
                   end = ',' if j < 3 else '])')
            l += 1
        print (' [Q, Q, Q, Q]',
               end = ' /\\\n       ' if i < len (v_idxs) - 1 else
                     ' && true;\n')

def print_rcut (r, mods, cofs, pws):
    print ('rcut ', end = '')
    for i in range (len (mods)):
        print ('[', end = '')
        for j in range (4):
            print ('({0})@32'.format (-Q),
                   end = ',' if j < 3 else '] <s\n     ')
        print ('%v{0} /\\ %v{0} <s ['.format (mods[i]), end = '')
        for j in range (4):
            print ('{0}@32'.format (Q),
                   end = ',' if j < 3 else '] ')
        print ('/\\\n     ', end = '')
    if len (cofs) == 0:
        print ('true ', end = '')
    for i in range (len (cofs)):
        print ('[', end = '')
        for j in range (4):
            print ('({0})@32'.format (-r),
                   end = ',' if j < 3 else '] <s\n     ')
        print ('%v{0} /\\ %v{0} <=s ['.format (cofs[i]), end = '')
        for j in range (4):
            print ('{0}@32'.format (r),
                   end = ',' if j < 3 else ']')
        print (' /\\\n     ' if i < len (cofs) - 1 else '\n', end = '')
    print ('prove with ['  if len (pws) > 0 else ';\n',
           end = '')
    for i in range (len (pws)):
        print ('{0}'.format (pws[i]),
               end = ',' if i < len (pws) - 1 else '];\n')
        
def print_cut (F, X, QQ, exps, cofs, r, ecuts, rcuts, chunk):
    print ('cut ', end = '')
    for i in range (4):
        for j in range (len (cofs)):
            print ('eqmod ({0}**2) (%v{2}[{1}]) [{3},{4}-{5}]'.
                   format (F, i, cofs[j], QQ, X,
                           pow_mod (ZETA, exps[4*i+j%4+128*(j//4)+16*chunk], Q)),
                   end = ' /\\ ' if j % 2 == 0 else
                         ' /\\\n    ' if i < 3 or j < len (cofs) - 1 else '\nprove with [')
    for i in range (len (ecuts)):
        print ('{0}'.format (ecuts[i]),
               end = ',' if i < len (ecuts) - 1 else '] &&\n    ')
    for i in range (len (cofs)):
        print ('[', end = '')
        for j in range (4):
            print ('({0})@32'.format (-r),
                   end = ',' if j < 3 else '] <s\n    ')
        print ('%v{0} /\\ %v{0} <=s ['.format (cofs[i]), end = '')
        for j in range (4):
            print ('{0}@32'.format (r),
                   end = ',' if j < 3 else ']')
        print (' /\\\n    ' if i < len (cofs) - 1 else '\n', end = '')
    print ('prove with ['  if len (rcuts) > 0 else ';\n',
           end = '')
    for i in range (len (rcuts)):
        print ('{0}'.format (rcuts[i]),
               end = ',' if i < len (rcuts) - 1 else '];\n')
        
def print_extracts (v, u, idxs):
    for i in range (len (idxs)):
        print ('mov [', end = '')
        for j in range (4):
            print ('{0}{1:x}{2}'.format (u, idxs[i], j),
                   end = ',' if j < 3 else '] %{0}{1};'.format (v, idxs[i]))
        print ('', end = '\n' if i % 2 == 1 else ' ')

def print_level0 (F, u, X, offset):
    print ('assert ', end = '')

    for b in range (2):
        print ('eqmod {0}{1}**2\n             '.format (F, offset),
               end = '')
        for i in range (8):
            for j in range (4):
                idx = 4*i + j
                print ('{0}{1:x}{2}*{3}**{4:3}'.
                       format (u, 8*b+i, j, X, j + 16*i + offset*4),
                       end = '+' if idx % 6 < 5 and idx < 31 else
                       '+\n             ' if idx < 31 else '\n             ')
        print ('[ {0}, {1}**128 - {2:7} ]'.
               format (Q, X, pow_mod (ZETA, [128, 384][b], Q)),
               end = ' /\\\n       ' if b < 1 else ' && true;\n')

def print_level1 (F, u, X, offset):
    print ('assert ', end = '')

    for b in range (4):
        print ('eqmod {0}{1}**2\n             '.format (F, offset),
               end = '')
        for i in range (4):
            for j in range (4):
                idx = 4*i + j
                print ('{0}{1:x}{2}*{3}**{4:3}'.
                       format (u, 4*b+i, j, X, j + 16*i + offset*4),
                       end = '+' if idx % 6 < 5 and idx < 15 else
                       '+\n             ' if idx < 15 else '\n             ')
        print ('[ {0}, {1}**64 - {2:7} ]'.
               format (Q, X,
                       pow_mod (ZETA, [64, 320, 192, 448][b], Q)),
               end = ' /\\\n       ' if b < 3 else ' && true;\n')

def print_level2 (F, u, X, offset):
    print ('assert ', end = '')

    for b in range (8):
        print ('eqmod {0}{1}**2\n             '.format (F, offset),
               end = '')
        for i in range (2):
            for j in range (4):
                idx = 4*i + j
                print ('{0}{1:x}{2}*{3}**{4:3}'.
                       format (u, 2*b+i, j, X, j + 16*i + offset*4),
                       end = '+' if idx % 6 < 5 and idx < 7 else
                       '+\n             ' if idx < 7 else '\n             ')
        print ('[ {0}, {1}**32 - {2:7} ]'.
               format (Q, X,
                       pow_mod (ZETA,
                                [32, 288, 160, 416, 96, 352, 224, 480][b], Q)),
               end = ' /\\\n       ' if b < 7 else ' && true;\n')

def print_level3 (F, X, base, offset):
    print ('cut ', end = '')

    for i in range (16):
        print ('eqmod ({0}{1}**2) ('.format (F, offset),
               end = '')
        for j in range (4):
            print ('L0x{0:x}*{1}**{2}'.
                   format (base + 4*(i*16 + j + offset*4), X,
                           j + offset*4),
                   end = ['+', '+', '+\n          ', ') '][j])
        print ('[ {0}, {1}**16 - {2:7} ]'.
               format (Q, X,
                       pow_mod (ZETA,
                                [16, 272, 144, 400, 80, 336, 208, 464,
                                48, 304, 176, 432, 112, 368, 240, 496][i], Q)),
               end = ' /\\\n    ' if i < 15 else '\nprove with [all ghosts] &&\n')
    for i in range (16):
        print ('    [', end ='')
        for j in range (4):
            print ('({0})@32'.format (-(9*Q//2)),
                   end = ',' if j < 3 else '] <s\n    [')
        for j in range (4):
            print ('L0x{0:x}'.format (base + 4*(i*16 + j + offset*4)),
                   end = ',' if j < 3 else '] /\\\n    [')
        for j in range (4):
            print ('L0x{0:x}'.format (base + 4*(i*16 + j + offset*4)),
                   end = ',' if j < 3 else '] <=s\n    [')
        for j in range (4):
            print ('{0}@32'.format (9*Q//2),
                   end = ',' if j < 3 else ']')
        print (' /\\\n' if i < 15 else '\nprove with [cuts [{0}]];'.format (9*offset+6),
               end = '')

def print_mid_cut (F, X, base, ecs, rcs):
    print ('cut ', end = '')
    for i in range (16):
        print ('eqmod ({0}**2)'.format (F), end = '\n          (')
        for j in range (16):
            print ('L0x{0:x}*{1}**{2:2}'.format (base + 4*(16*i+j), X, j),
                   end = '+' if j%3 < 2 and j < 15 else
                         '+\n           ' if j < 15 else ')\n          ')
        print ('[{0}, {1}**16 - {2}]'.
               format (Q, X, pow_mod (ZETA, [16, 272, 144, 400, 80, 336, 208, 464,
                                             48, 304, 176, 432, 112, 368, 240, 496][i], Q)),
               end = ' /\\\n    ' if i < 15 else '\nprove with [cuts [')
    for i in range (len (ecs)):
        print ('{0}'.format (ecs[i]),
               end = ',' if i < len (ecs) - 1 else '], all ghosts] &&\n    ')
    for i in range (64):
        print ('[', end = '')
        for j in range (4):
            print ('({0})@32'.format (-(9*Q//2)),
                   end = ',' if j < 3 else '] <s\n    [')
        for j in range (4):
            print ('L0x{0:x}'.format (base + 4*(4*i+j)),
                   end = ',' if j < 3 else '] /\\\n    [')
        for j in range (4):
            print ('L0x{0:x}'.format (base + 4*(4*i+j)),
                   end = ',' if j < 3 else '] <=s\n    [')
        for j in range (4):
            print ('{0}@32'.format ((9*Q//2)),
                   end = ',' if j < 3 else ']')
        print (' /\\\n    ' if i < 63 else '\nprove with [cuts [',
               end = '')
    for i in range (len (rcs)):
        print ('{0}'.format (rcs[i]),
               end = ',' if i < len (rcs) - 1 else ']];\n')


def print_post_condition (F, X, base, exps, ecuts, r, rcuts):
    for i in range (len (exps)):
        print ('eqmod ({0}**2) L0x{1:x} [{2}, {3} - {4}]'.
               format (F, base + 4*i, Q, X, pow_mod (ZETA, exps[i], Q)),
               end = ' /\\\n' if i < len (exps) - 1 else
                     '\nprove with [all ghosts, cuts [')
    for i in range (len (ecuts)):
        print ('{0}'.format (ecuts[i]),
               end = ',' if i < len (ecuts) - 1 else ']] &&\n')
    for i in range (64):
        print ('[', end = '')
        for j in range (4):
            print ('({0})@32'.format (-r),
                   end = ',' if j < 3 else '] <s\n[')
        for j in range (4):
            print ('L0x{0:x}'.format (base + 4*(4*i+j)),
                   end = ',' if j < 3 else '] /\\\n[')
        for j in range (4):
            print ('L0x{0:x}'.format (base + 4*(4*i+j)),
                   end = ',' if j < 3 else '] <=s\n[')
        for j in range (4):
            print ('{0}@32'.format ((r)),
                   end = ',' if j < 3 else ']')
        print (' /\\\n' if i < 63 else '\nprove with [cuts [',
               end = '')
    for i in range (len (rcuts)):
        print ('{0}'.format (rcuts[i]),
               end = ',' if i < len (rcuts) - 1 else ']]\n')
                   
        
print ('(**************** parameters ****************)\n')
print_parameters ('c', 'X')

print ('\n\n\n(**************** precondition ****************)\n')
print_precondition ('c')

print ('\n\n\n(**************** initialization ****************)\n')
print_initialization (0x7ffffed8d0, 'c')

print ('\n\n\n(**************** nondet ****************)\n')
print_nondet ('x', [0] + [i for i in range (19, 31)])
print_nondet ('d', [i for i in range (8, 16)])


print ('\n\n\n(**************** constants ****************)\n')
print ('mov L0x5555565b20 0x007fe001@sint32;')
print_constants (0x5555565b60, [ 0, 0, -915382907, -3572223, 964937599, 3765607, 963888510, 3761513, -820383522, -3201494, -738955404, -2883726, -806080660, -3145678, -820367122, -3201430, -154181397, -601683, 907762539, 3542485, 687336873, 2682288, 545785280, 2129892, 964747974, 3764867, -257592709, -1005239, 142848732, 557458, -312926867, -1221177, 0, 0, -863652652, -3370349, 923069133, 3602218, 815613168, 3182878, 787459213, 3073009, 327391679, 1277625, -675340520, -2635473, 987079667, 3852015, 449207, 1753, -495951789, -1935420, -681503850, -2659525, -373072124, -1455890, 681730119, 2660408, -456183549, -1780227, -15156688, -59148, 710479343, 2772600, 0, 0, -1041158200, -4063053, 702264730, 2740543, -919027554, -3586446, 1071989969, 4183372, -825844983, -3222807, -799869667, -3121440, -70227934, -274060, 302950022, 1182243, 22347069, 87208, 163212680, 636927, -1016110510, -3965306, -1013916752, -3956745, -588452222, -2296397, -841760171, -3284915, -952468207, -3716946, 0, 0, 682491182, 2663378, -797147778, -3110818, 538486762, 2101410, 642926661, 2508980, 519705671, 2028118, 496502727, 1937570, -977780347, -3815725, -7126831, -27812, 210776307, 822541, 258649997, 1009365, -628875181, -2454145, -507246529, -1979497, 409185979, 1596822, -1013967746, -3956944, -963363710, -3759465, 0, 0, -429120452, -1674615, 949361686, 3704823, 297218217, 1159875, 720393920, 2811291, -764594519, -2983781, -284313712, -1109516, 1065510939, 4158088, -431820817, -1685153, -873958779, -3410568, 686309310, 2678278, -965793731, -3768948, -909946047, -3551006, 162963861, 635956, -64176841, -250446, -629190881, -2455377, 0, 0, -903139016, -3524442, 101000509, 394148, 237992130, 928749, 391567239, 1528066, 123678909, 482649, 294395108, 1148858, -759080783, -2962264, -1062481036, -4146264, -454226054, -1772588, 561940831, 2192938, -442566669, -1727088, 611800717, 2387513, -925511710, -3611750, -68791907, -268456, -814992530, -3180456, 0, 0, -111244624, -434125, 280713909, 1095468, -898510625, -3506380, -144935890, -565603, 43482586, 169688, 631001801, 2462444, -854436357, -3334383, 960233614, 3747250, 588375860, 2296099, 317727459, 1239911, -983611064, -3838479, 818892658, 3195676, 677264190, 2642980, 321386456, 1254190, -3181859, -12417, 0, 0, 173376332, 676590, 530906624, 2071829, -1029866791, -4018989, -1067647297, -4166425, -893898890, -3488383, 509377762, 1987814, -819295484, -3197248, 768294260, 2998219, 36345249, 141835, -22883400, -89301, 643961400, 2513018, -347191365, -1354892, 157142369, 613238, -335754661, -1310261, -568482643, -2218467, 0, 0, -342333886, -1335936, 830756018, 3241972, 552488273, 2156050, 444930577, 1736313, 60323094, 235407, -832852657, -3250154, 834980303, 3258457, -117552223, -458740, -492511373, -1921994, 1035301089, 4040196, -889718424, -3472069, 522531086, 2039144, -481719139, -1879878, -209807681, -818761, -558360247, -2178965, 0, 0, -827143915, -3227876, 875112161, 3415069, 450833045, 1759347, -660934133, -2579253, 458160776, 1787943, -612717067, -2391089, -577774276, -2254727, -415984810, -1623354, 539479988, 2105286, -608441020, -2374402, -521163479, -2033807, 150224382, 586241, -302276083, -1179613, 135295244, 527981, -702999655, -2743411, 0, 0, 439288460, 1714295, -209493775, -817536, -915957677, -3574466, 892316032, 3482206, -1071872863, -4182915, -333129378, -1300016, -605279149, -2362063, -378477722, -1476985, 510974714, 1994046, 638402564, 2491325, -356997292, -1393159, 130156402, 507927, -304395785, -1187885, -185731180, -724804, -470097680, -1834526, 0, 0, 628833668, 2453983, 962678241, 3756790, -496048908, -1935799, -337655269, -1317678, 630730945, 2461387, 777970524, 3035980, 159173408, 621164, -777397036, -3033742, -86720197, -338420, 678549029, 2647994, 771248568, 3009748, -669544140, -2612853, 1063046068, 4148469, 192079267, 749577, -1030830548, -4022750, 0, 0, 374309300, 1460718, -439978542, -1716988, -1012201926, -3950053, 999753034, 3901472, -314332144, -1226661, 749740976, 2925816, 864652284, 3374250, 1020029345, 3980599, 658309618, 2569011, -413979908, -1615530, 441577800, 1723229, 426738094, 1665318, 519685171, 2028038, 298172236, 1163598, -863376927, -3369273, 0, 0, -164673562, -642628, -742437332, -2897314, 818041395, 3192354, 347590090, 1356448, -711287812, -2775755, 687588511, 2683270, -712065019, -2778788, 1023635298, 3994671, -3043996, -11879, -351195274, -1370517, 773976352, 3020393, 861908357, 3363542, 55063046, 214880, 139752717, 545376, -197425671, -770441, 0, 0, -918682129, -3585098, 142694469, 556856, 991769559, 3870317, -888589898, -3467665, 592665232, 2312838, -167401858, -653275, -117660617, -459163, 795799901, 3105558, -282732136, -1103344, 130212265, 508145, -141890356, -553718, 220412084, 860144, 879049958, 3430436, 35937555, 140244, -388001774, -1514152, 0, 0, 721508096, 2815639, 747568486, 2917338, 475038184, 1853806, 89383150, 348812, -84011120, -327848, 259126110, 1011223, -603268097, -2354215, -559928242, -2185084, 800464680, 3123762, 604333585, 2358373, -561979013, -2193087, -772445769, -3014420, -439933955, -1716814, 749801963, 2926054, -100631253, -392707, 0, 0, 585207070, 2283733, 857403734, 3345963, 476219497, 1858416, -978523985, -3818627, -492577742, -1922253, -573161516, -2236726, 447030292, 1744507, -77645096, -303005, 904878186, 3531229, -1018462631, -3974485, -967019376, -3773731, 486888731, 1900052, -200355636, -781875, 270210213, 1054478, -187430119, -731434, 0, 0] )

print ('\n\nghost Q@sint32 : Q = {0} && Q = {0}@32;'.format (Q))

print ('\n\n\n(**************** input function ****************)\n')
print_input_function ('F', 'X', 'c')

num_rcuts = -1
num_ecuts = -1

post_ecuts = []
post_rcuts = []
for chunk in range (0, 16, 4):
    print ('\n\n\n(**************** mls ****************)\n')
    print_mls ('v', [16, 17, 18, 19],
               'c', [0x90+chunk, 0x91+chunk, 0x92+chunk, 0x93+chunk,
                     0xb0+chunk, 0xb1+chunk, 0xb2+chunk, 0xb3+chunk,
                     0xd0+chunk, 0xd1+chunk, 0xd2+chunk, 0xd3+chunk,
                     0xf0+chunk, 0xf1+chunk, 0xf2+chunk, 0xf3+chunk],
               [centrize (pow_mod (ZETA, 128, Q), Q)] * 16, 46, [])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (0, [16,17,18,19], [], ['precondition'])
    
    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [ o for o in range (1, 16, 2) ])

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [28, 29, 30, 31],
               'c', [0x80+chunk, 0x81+chunk, 0x82+chunk, 0x83+chunk,
                     0xa0+chunk, 0xa1+chunk, 0xa2+chunk, 0xa3+chunk,
                     0xc0+chunk, 0xc1+chunk, 0xc2+chunk, 0xc3+chunk,
                     0xe0+chunk, 0xe1+chunk, 0xe2+chunk, 0xe3+chunk],
               [centrize (pow_mod (ZETA, 128, Q), Q)] * 16, 46, [])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (3*Q//2, [28,29,30,31], [i for i in range (1, 16, 2) ],
                ['precondition'])
    
    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [ o for o in range (0, 16, 2) ])

#    print ('\n(**************** level 0/{0} ****************)\n'.
#           format (chunk//4))
#    print_level0 ('F', 'u', 'X', chunk//4)

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [16, 17, 18, 19],
               'u', [0x50, 0x51, 0x52, 0x53, 0x70, 0x71, 0x72, 0x73,
                     0xd0, 0xd1, 0xd2, 0xd3, 0xf0, 0xf1, 0xf2, 0xf3],
               [centrize (pow_mod (ZETA, 64, Q), Q)] * 8 +
               [centrize (pow_mod (ZETA, (128+256)//2, Q), Q)] * 8, 47, [])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (3*Q//2, [16,17,18,19], [i for i in range (0, 16, 2) ],
                ['precondition'])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (1, 16, 2)])

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [28, 29, 30, 31],
               'u', [0x40, 0x41, 0x42, 0x43, 0x60, 0x61, 0x62, 0x63,
                     0xc0, 0xc1, 0xc2, 0xc3, 0xe0, 0xe1, 0xe2, 0xe3],
               [centrize (pow_mod (ZETA, 64, Q), Q)] * 8 +
               [centrize (pow_mod (ZETA, (128+256)//2, Q), Q)] * 8, 47, [])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (5*Q//2, [28,29,30,31], [i for i in range (1, 16, 2) ],
                ['cuts [{0}]'.format (num_rcuts - 2)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (0, 16, 2)])

#    print ('\n\n\n(**************** level 1/{0} ****************)\n'.
#           format (chunk // 4))
#    print_level1 ('F', 'u', 'X', chunk//4)

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [16, 17, 18, 19],
               'u', [0x30, 0x31, 0x32, 0x33, 0x70, 0x71, 0x72, 0x73,
                     0xb0, 0xb1, 0xb2, 0xb3, 0xf0, 0xf1, 0xf2, 0xf3],
               [centrize (pow_mod (ZETA, 32, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (64+256)//2, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, 192//2, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (192+256)//2, Q), Q)] * 4, 48, [])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (5*Q//2, [16,17,18,19], [i for i in range (0, 16, 2) ],
                ['cuts [{0}]'.format (num_rcuts - 2)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (1, 16, 2)])

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [28, 29, 30, 31],
               'u', [0x20, 0x21, 0x22, 0x23, 0x60, 0x61, 0x62, 0x63,
                     0xa0, 0xa1, 0xa2, 0xa3, 0xe0, 0xe1, 0xe2, 0xe3],
               [centrize (pow_mod (ZETA, 32, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (64+256)//2, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, 192//2, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (192+256)//2, Q), Q)] * 4, 48, [])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (7*Q//2, [28,29,30,31], [i for i in range (1, 16, 2) ],
                ['cuts [{0}]'.format (num_rcuts - 2)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (0, 16, 2)])

#    print ('\n\n\n(**************** level 2/{0} ****************)\n'.
#           format (chunk//4))
#    print_level2 ('F', 'u', 'X', chunk//4)

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [16, 17, 18, 19],
               'u', [0x10, 0x11, 0x12, 0x13, 0x30, 0x31, 0x32, 0x33,
                     0x50, 0x51, 0x52, 0x53, 0x70, 0x71, 0x72, 0x73],
               [centrize (pow_mod (ZETA, 16, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (32+256)//2, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (64+256)//4, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, ((64+256)//2+256)//2, Q), Q)] * 4, 48, [])
           
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (7*Q//2, [16,17,18,19], [i for i in range (0, 16, 2) ],
                ['cuts [{0}]'.format (num_rcuts - 2)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (0, 8)])

    print ('\n(**************** mls ****************)\n')
    print_mls ('v', [28, 29, 30, 31],
               'u', [0x90, 0x91, 0x92, 0x93, 0xb0, 0xb1, 0xb2, 0xb3,
                     0xd0, 0xd1, 0xd2, 0xd3, 0xf0, 0xf1, 0xf2, 0xf3],
               [centrize (pow_mod (ZETA, 192//4, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (192//2+256)//2, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, (192+256)//4, Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, ((192+256)//2+256)//2, Q), Q)] * 4, 48, [])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (9*Q//2, [28,29,30,31], [i for i in range (8) ],
                ['cuts [{0}]'.format (num_rcuts - 2)])

    num_ecuts += 1
    num_rcuts += 1
    print ('\n\n\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))    
    print ('(**************** level 3/{0} ****************)\n'.
           format (chunk//4))
    print_level3 ('F', 'X', 0x7ffffed8d0, chunk//4)

print ('\n\n\n(**************** END OF TOP ****************)\n')
num_ecuts += 1
num_rcuts += 1
print ('\n(**************** CUT {0}, {1} ****************)\n'.
       format (num_ecuts, num_rcuts))
print_mid_cut ('F', 'X', 0x7ffffed8d0, [0, 1, 2, 3], [8, 17, 26, 35])

print ('\n\n\n(**************** mid function ****************)\n')
print_mid_function ('G', 'X', 0x7ffffed8d0)

mid_rcut = num_rcuts
mid_ecut = num_ecuts
exps4 = bit_reverse ([i for i in range (8, 16)], 7)
exps5 = bit_reverse ([i for i in range (16, 32)], 7)
exps6 = bit_reverse ([i for i in range (32, 64)], 7)
exps7 = bit_reverse ([i for i in range (64, 128)], 7)
exps = bit_reverse ([i for i in range (256, 512)], 8)

for chunk in range (8):
# 8 8
    print ('\n\n\n(**************** mls ****************)\n')
    print_mls_addr ('v', [12,13],
                    [i for i in range (0x7ffffed8d0+(4*chunk+2)*16,
                                       0x7ffffed8d0+(4*chunk+4)*16,4)],
                    [centrize (pow_mod (ZETA, exps4[chunk//2]+128*(chunk%2), Q), Q)] * 4 +
                    [centrize (pow_mod (ZETA, exps4[chunk//2]+128*(chunk%2), Q), Q)] * 4, 49, ['cuts [{0}]'.format (mid_rcut)])

    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (0, [12,13], [],
                ['cuts [{0}]'.format (mid_rcut)])
    
    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (0, 4)])

    print ('\n(**************** mls ****************)\n')
# 24 24
    print_mls_addr ('v', [28,29],
                    [i for i in range (0x7ffffed8d0+(32+4*chunk+2)*16,
                                       0x7ffffed8d0+(32+4*chunk+4)*16,4)],
                    [centrize (pow_mod (ZETA, exps4[4+chunk//2]+128*(chunk%2), Q), Q)] * 4 +
                    [centrize (pow_mod (ZETA, exps4[4+chunk//2]+128*(chunk%2), Q), Q)] * 4, 49, ['cuts[{0}]'.format (mid_rcut)])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (11*Q//2, [28,29], [i for i in range (4)],
                ['cuts [{0}]'.format (mid_rcut)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (16,20)])

    print ('\n(**************** mls ****************)\n')
# 4 132
    print_mls ('v', [12,13],
               'u', [0x10,0x11,0x12,0x13,0x30,0x31,0x32,0x33],
               [centrize (pow_mod (ZETA, exps5[chunk], Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, exps5[chunk]+128, Q), Q)] * 4, 49, [])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (11*Q//2, [12,13], [i for i in range (16,20)],
                ['cuts [{0}]'.format (mid_rcut)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (4)])

    print ('\n(**************** mls ****************)\n')
# 12 140
    print_mls ('v', [28,29],
               'u', [0x110,0x111,0x112,0x113,0x130,0x131,0x132,0x133],
               [centrize (pow_mod (ZETA, exps5[chunk+8], Q), Q)] * 4 +
               [centrize (pow_mod (ZETA, exps5[chunk+8]+128, Q), Q)] * 4, 49, [])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (13*Q//2, [28,29], [i for i in range (4)],
                ['cuts [{0}]'.format (num_rcuts - 2)])

    num_rcuts += 1
    print ('\n\n\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (13*Q//2, [], [i for i in range (16, 20)],
                ['cuts [{0}]'.format (num_rcuts - 2)])
    
    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (4)])
    print_extracts ('v', 'u', [o for o in range (16, 20)])
    
    print ('\n\n\n(**************** mls ****************)\n')
# 2 130 66 194
    print_mls ('v', [12,13],
               'u', [0x20,0x21,0x22,0x23,0x30,0x31,0x32,0x33],
               [centrize (pow_mod (ZETA, exps6[2*chunk], Q), Q),
                centrize (pow_mod (ZETA, exps6[2*chunk]+128, Q), Q),
                centrize (pow_mod (ZETA, exps6[2*chunk+1], Q), Q),
                centrize (pow_mod (ZETA, exps6[2*chunk+1]+128, Q), Q)] * 2, 49,
               ['cuts [{0}]'.format (num_rcuts - 1)])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (0, [12,13], [], [])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (4)])
    
    print ('\n(**************** mls ****************)\n')
# 6 134 70 198
    print_mls ('v', [28,29],
               'u', [0x120,0x121,0x122,0x123,0x130,0x131,0x132,0x133],
               [centrize (pow_mod (ZETA, exps6[2*chunk+16], Q), Q),
                centrize (pow_mod (ZETA, exps6[2*chunk+16]+128, Q), Q),
                centrize (pow_mod (ZETA, exps6[2*chunk+17], Q), Q),
                centrize (pow_mod (ZETA, exps6[2*chunk+17]+128, Q), Q)] * 2, 49,
               ['cuts [{0}]'.format (num_rcuts - 1)])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (15*Q//2, [28,29], [i for i in range (4)],
                ['cuts [{0}]'.format (num_rcuts - 3)])

    print ('\n\n\n(**************** extract ****************)\n')
    print_extracts ('v', 'u', [o for o in range (16, 20)])
    
    print ('\n(**************** mls ****************)\n')
# 1 129, 65 193
    print_mls ('v', [12,13],
               'u', [0x10,0x11,0x12,0x13,0x30,0x31,0x32,0x33],
               [centrize (pow_mod (ZETA, exps7[4*chunk], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+1], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+2], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+3], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk]+128, Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+1]+128, Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+2]+128, Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+3]+128, Q), Q)], 50,
               ['cuts [{0}]'.format (num_rcuts - 1)])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (15*Q//2, [12,13], [i for i in range (16, 20)],
                ['cuts [{0}]'.format (num_rcuts - 3)])
    
    print ('\n\n\n(**************** mls ****************)\n')
# 3 131 67 195
    print_mls ('v', [28,29],
               'u', [0x110,0x111,0x112,0x113,0x130,0x131,0x132,0x133],
               [centrize (pow_mod (ZETA, exps7[4*chunk+32], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+33], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+34], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+35], Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+32]+128, Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+33]+128, Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+34]+128, Q), Q),
                centrize (pow_mod (ZETA, exps7[4*chunk+35]+128, Q), Q)], 50,
               ['cuts [{0}]'.format (num_rcuts - 1)])
    
    num_rcuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_rcut (17*Q//2, [28,29], [i for i in range (4)],
                ['cuts [{0}, {1}]'.format (num_rcuts - 3, num_rcuts - 2)])
    
    num_rcuts += 1
    num_ecuts += 1
    print ('\n(**************** CUT {0}, {1} ****************)\n'.
           format (num_ecuts, num_rcuts))
    print_cut ('F', 'X', 'Q', exps, [i for i in range (4)] + [i for i in range (16, 20)],
               17*Q//2, ['all ghosts', 'cuts [{0}]'.format (mid_ecut)],
               ['cuts [{0}]'.format (num_rcuts - 2)], chunk)
    post_rcuts.append (num_rcuts)
    post_ecuts.append (num_ecuts)

print ('\n\n\n(**************** postcondition ****************)\n')

print_post_condition ('F', 'X', 0x7ffffed8d0, exps,
                      post_ecuts, 17*Q//2, post_rcuts)
