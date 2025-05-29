#!/usr/bin/env python

Q = 8380417
Qinv = pow (Q, 2**19 - 1, 2**32)
K = 1753

zetas_new332 = [
    25847, -2608894, -518909, 237124, -777960, -876248, 466468, 1826347, 2725464, 1024112, 2706023, 95776, 3077325, 3530437, 2353451, -1079900, 3585928, -1661693, -3592148, -2537516, 3915439, -359251, -549488, -1119584, -3861115, -3043716, 3574422, -2867647, -2091905, 2619752, -2108549, 3539968, -300467, 2348700, -539299, 3119733, -2118186, -3859737, -1699267, -1643818, 3505694, -3821735, -2884855, -1399561, -3277672, 3507263, -2140649, -1600420, 3699596, 3111497, 1757237, -19422, 811944, 531354, 954230, 3881043, 2680103, 4010497, 280005, 3900724, -2556880, 2071892, -2797779, -3930395, 2091667, 3407706, -1528703, 2316500, 3817976, -3677745, -3342478, 2244091, -3041255, -2446433, -3562462, -1452451, 266997, 2434439, 3475950, -1235728, 3513181, 2176455, -3520352, -3759364, -1585221, -1197226, -3193378, -1257611, 900702, 1859098, 1939314, 909542, 819034, -4083598, 495491, -1613174, -1000202, -43260, -522500, -3190144, -655327, -3122442, -3157330, 2031748, 3207046, -3632928, -3556995, -525098, 126922, -768622, -3595838, 3412210, 342297, 286988, -983419, -2437823, 4108315, 2147896, 3437287, -3342277, 2715295, 1735879, 203044, -2967645, 2842341, 2691481, -3693493, -2590150, 1265009, -411027, 4055324, 1247620, -2477047, 2486353, 1595974, -671102, -3767016, 1250494, -1228525, 2635921, -3548272, -22981, -2994039, 1869119, -1308169, 1903435, -1050970, -381987, -1333058, 1237275, 1349076, -3318210, -1430225, 1852771, -451100, 1312455, -1430430, 3306115, -1962642, -3343383, -1279661, 1917081, 264944, -2546312, -1374803, 508951, 1500165, 777191, 3097992, 2235880, 3406031, 44288, -542412, -2831860, -1100098, -1671176, -1846953, 904516, -2584293, -3724270, 3958618, 594136, -3776993, -3724342, -2013608, 2432395, -8578, 2454455, -164721, 1653064, 1957272, 3369112, -3249728, 185531, -1207385, 2389356, -3183426, 162844, -210977, 1616392, 3014001, 759969, 810149, 1652634, -1316856, -3694233, -1799107, 189548, -3038916, 3523897, -3553272, 3866901, 269760, 3159746, 2213111, -975884, -1851402, 1717735, 472078, -2409325, -426683, 1723600, -177440, -1803090, 1910376, 1315589, -1667432, -1104333, 1341330, -260646, -3833893, 1285669, -2939036, -2235985, -1584928, -420899, -2286327, -812732, 183443, -976891, -1439742, 1612842, -3545687, -3019102, -554416, 3919660, -3881060, -48306, -1362209, -3628969, 3937738, 1400424, 3839961, -846154, 1976782
]

# convert num i to n bits in LSB-first order
def num2bits (n, i):
    ret = []
    while i > 0:
        ret += [i % 2]
        i //= 2
        n -= 1
    assert (n >= 0)
    while n > 0:
        ret += [0]
        n -= 1
    return ret

def bits2num (bs):
    ret = 0
    f = 1
    for i in range (len (bs)):
        ret += f * bs[i]
        f *= 2
    return ret

def parameters (a):
    for i in range (256):
        print ('int32 {0}{1:02x}'.format (a, i),
               end = ',\n' if i == 255 else
                     ',\n' if i % 7 == 6 else ',')
    print ('int32 Q, int32 Q2, int32 NQ2, int32 K, int32 X')

def precondition (a, lb, ub):
    print ('Q = {0} /\\ Q2 = {1} /\\ NQ2 = {2} /\\ K = {3} /\\'.
           format (Q, Q//2, -Q//2, K))
    for i in range (0, 256, 4):
        print ('[NQ2,NQ2,NQ2,NQ2]<=' \
               '[{1}{2:02x},{1}{3:02x},{1}{4:02x},{1}{5:02x}] /\\ ' \
               '[{1}{2:02x},{1}{3:02x},{1}{4:02x},{1}{5:02x}]<=' \
               '[Q2,Q2,Q2,Q2]'.
               format (lb, a, i, i+1, i+2, i+3, ub),
               end = '\n' if i == 252 else ' /\\\n')
    print ('  &&')
    print ('Q = {0}@32 /\\ Q2 = {1}@32 /\\ NQ2 = ({2})@32 /\\'.
           format (Q, Q//2, -Q//2))
    for i in range (0, 256, 4):
        print ('[NQ2,NQ2,NQ2,NQ2]<=s' \
               '[{1}{2:02x},{1}{3:02x},{1}{4:02x},{1}{5:02x}] /\\ ' \
               '[{1}{2:02x},{1}{3:02x},{1}{4:02x},{1}{5:02x}]<=s' \
               '[Q2,Q2,Q2,Q2]'.
               format (lb, a, i, i+1, i+2, i+3, ub),
               end = '\n' if i == 252 else ' /\\\n')
        
def initialize (base, a):
    for i in range (256):
        print ('mov L0x{0:x} {1}{2:02x};'.format (base + 4*i, a, i),
               end = '\n' if i == 255 or i % 3 == 2 else ' ')
        
def constants (base, vs):
    for i in range (len (vs)):
        print ('mov L0x{0:x} ({1:9})@int32;'.format (base + 4*i, vs[i]),
               end = '\n' if i % 2 == 1 else ' ')
    print ()

def ghosts (idx, lrs, rrs):
    assert (len (lrs) == len (rrs))
    print ('ghost ', end = '')
    for i in range (len (lrs)):
        print ('{0}o{1}@int32'.format (lrs[i], idx),
               end = ':\n      ' if i == len (lrs) - 1 else
                     ',\n      ' if i % 4 == 3 else ', ')
    for i in range (len (lrs)):
        print ('{0}o{1} = {2}'.format (lrs[i], idx, rrs[i]),
               end = '\n   && ' if i == len (lrs) - 1 else
                     ' /\\\n      ' if i % 4 == 3 else ' /\\ ')
    for i in range (len (lrs)):
        print ('{0}o{1} = {2}'.format (lrs[i], idx, rrs[i]),
               end = ';\n' if i == len (lrs) - 1 else
                     ' /\\\n      ' if i % 4 == 3 else ' /\\ ')

def twiddle (idx, rs, cs):
    assert (len (rs) == len (cs))
    print ('eassert eqmod [', end = '')
    for i in range (len (rs)):
        print ('{0}'.format (rs[i]),
               end = ']\n              ([' if i == len (rs) - 1 else ',')
    for i in range (len (rs)):
        print ('{0}o{1}'.format (rs[i], idx),
               end = ']*[' if i == len (rs) - 1 else ',')
    for i in range (len (cs)):
        print ('K**{0:3}'.format (cs[i]),
               end = '])\n' if i == len (cs) - 1 else ',')
    print ('              [', end = '')
    for i in range (len (rs)):
        print ('Q', end = '] ' if i == len (rs) - 1 else ', ')
    print ('prove with [algebra solver isl, precondition];')
    print ('assume eqmod [', end = '')
    for i in range (len (rs)):
        print ('{0}'.format (rs[i]),
               end = ']\n             ([' if i == len (rs) - 1 else ',')
    for i in range (len (rs)):
        print ('{0}o{1}'.format (rs[i], idx),
               end = ']*[' if i == len (rs) - 1 else ',')
    for i in range (len (cs)):
        print ('K**{0:3}'.format (cs[i]),
               end = '])\n' if i == len (cs) - 1 else ',')
    print ('              [', end = '')
    for i in range (len (rs)):
        print ('Q', end = '] && true;\n' if i == len (rs) - 1 else ', ')

def cut0 (base, a, aidx, cs):
    print ('cut eqmod [', end = '')
    for i in range (8):
        print ('L0x{0:x}'.format (base + 0x80*i),
               end = ']\n' if i == 7 else
                     ',\n           ' if i % 4 == 3 else ',')
    print ('          [', end = '')
    for i in range (8):
        print ('poly X**32 [', end = '')
        for j in range (8):
            print ('{0}{1:02x}'.format (a, aidx + 0x20*j),
                   end = ']' if j == 7 else ',')
        print ('', end = ']\n' if i == 7 else ',\n           ')
    print ('          [', end = '')
    for i in range (8):
        print ('[Q, X**32 - K**{0:3}]'.format (cs[i]),
               end = ']\n    prove with [precondition]\n && [' if i == 7 else
                     ',\n           ' if i % 2 == 1 else ', ')
    for i in range (8):
        print ('5@32*NQ2',
               end = '] <=s\n    [' if i == 7 else
                     ',\n     ' if i % 4 == 3 else ',')
    for i in range (8):
        print ('L0x{0:x}'.format (base + 0x80*i),
               end = '] /\\\n    [' if i == 7 else
                     ',\n     ' if i % 4 == 3 else ',')
    for i in range (8):
        print ('L0x{0:x}'.format (base + 0x80*i),
               end = '] <=s\n    [' if i == 7 else
                     ',\n     ' if i % 4 == 3 else ',')
    for i in range (8):
        print ('5@32*Q2',
               end = ']\n    prove with [precondition];\n' if i == 7 else
                     ',')

def cut1 (base, a, aidx, cs):
    print ('cut eqmod [', end = '')
    for i in range (8):
        print ('L0x{0:x}'.format (base + 0x10*i),
               end = ']\n' if i == 7 else
                     ',\n           ' if i % 4 == 3 else ',')
    print ('          [', end = '')
    for i in range (8):
        print ('poly X**4 [', end = '')
        for j in range (8):
            print ('{0}{1:02x}o0'.format (a, aidx + 0x4*j),
                   end = ']' if j == 7 else ',')
        print ('', end = ']\n' if i == 7 else ',\n           ')
    print ('          [', end = '')
    for i in range (8):
        print ('[Q, X**4 - K**{0:3}]'.format (cs[i]),
               end = ']\n    prove with [precondition]\n && [' if i == 7 else
                     ',\n           ' if i % 2 == 1 else ', ')
    for i in range (8):
        print ('9@32*NQ2',
               end = '] <=s\n    [' if i == 7 else
                     ',\n     ' if i % 4 == 3 else ',')
    for i in range (8):
        print ('L0x{0:x}'.format (base + 0x10*i),
               end = '] /\\\n    [' if i == 7 else
                     ',\n     ' if i % 4 == 3 else ',')
    for i in range (8):
        print ('L0x{0:x}'.format (base + 0x10*i),
               end = '] <=s\n    [' if i == 7 else
                     ',\n     ' if i % 4 == 3 else ',')
    for i in range (8):
        print ('9@32*Q2',
               end = ']\n    ' if i == 7 else ',')
    print ('prove with [precondition, cuts [', end = '')
    for i in range (8):
        print ('{0}'.format (4*i+(aidx % 0x20)), end = ']];\n' if i == 7 else ', ')

def cut2 (base, rs, idx, es, f, cs):
    assert (len (rs) == len (es))
    print ('cut ', end = '')
    for i in range (len (rs)):
        print ('eqmod L0x{0:x} (poly X ['.format (base + 4*i),
               end = '')
        for j in range (len (rs)):
            print ('r{0}o{1}'.format (rs[j], idx),
                   end = ']) ' if j == 3 else ',')
        print ('[Q,X-K**{0:3}]'.format (es[i]),
               end = '\n    prove with [precondition]' \
                     '\n && ' if i == len (rs) - 1 else
                     '/\\\n    ')
    for i in range (len (rs)):
        print ('[', end = '')
        for j in range (len (rs)):
            print ('{0}@32*NQ2'.format (f),
                   end = ']<=s\n    [' if j == len (rs) - 1 else ',')
        for j in range (len (rs)):
            print ('L0x{0:x}'.format (base + 4*j),
                   end = ']/\\\n    [' if j == len (rs) - 1 else ',')
        for j in range (len (rs)):
            print ('L0x{0:x}'.format (base + 4*j),
                   end = ']<=s\n    [' if j == len (rs) - 1 else ',')
        for j in range (len (rs)):
            print ('{0}@32*Q2'.format (f),
                   end = ']\n    ' if i == len (rs) - 1 and i == j else
                         ']/\\\n    ' if j == len (rs) - 1 else ',')
    print ('prove with [precondition, cuts [', end = '')
    for j in range (len (cs)):
        print ('{0}'.format (cs[j]),
               end = ']];\n' if j == len (cs) - 1 else ',')
        
def input_poly (a, F):
    print ('ghost F@int32:\nF**2 = ', end = '')
    for i in range (256):
        print ('{0}{1:02x}*X**{1:3}'.format (a, i),
               end = ' && true;\n' if i == 255 else
                     '+\n       ' if i % 6 == 5 else '+')

# 64 32 33 34 35 0 4 8 12 16 20 24 28
"""    
    for i in range (256):
        print ('eqmod (F**2) L0x{0:x} [Q,X-K**{1:3}]'.
               format (base + 4*i, brvs[i//2]+256*(i%2)),
               end = '\nprove with [all cuts, all ghosts, precondition]' \
                     '\n &&\n' if i == 255 else
                     '/\\\n' if i % 2 == 1 else '/\\')
"""
def postcondition (base, F, brvs):
    for i in range (64):
        for j in range (4):
            idx = 4*i+j
            print ('eqmod (F**2) L0x{0:x} [Q,X-K**{1:3}]'.
                   format (base + 4*idx, brvs[idx//2]+256*(idx%2)),
                   end = '\nprove with ' if j == 3 else
                         '/\\\n' if j % 2 == 1 else '/\\')
        print ('[precondition, all ghosts,\ncuts [', end = '')
        for j in range (32):
            print ('{0:2}'.format (j),
                   end = ',\n      ' if j % 20 == 19 else ',')
        for j in range (4):
            print ('{0:2},'.format (32 + 4*(i//8) + j), end = '')
        print ('{0:3}]]'.format (64 + i),
               end = '\n &&\n' if i == 63 else ',\n')
    for i in range (0, 256, 8):
        print ('[', end = '')
        for j in range (8):
            print ('13@32*NQ2',
                   end = '] <=s\n[' if j == 7 else
                         ',\n ' if j % 4 == 3 else ',')
        for j in range (8):
            print ('L0x{0:x}'.format (base + 4*(i+j)),
                   end = '] /\\\n[' if j == 7 else
                         ',\n ' if j % 4 == 3 else ',')
        for j in range (8):
            print ('L0x{0:x}'.format (base + 4*(i+j)),
                   end = '] <=s\n[' if j == 7 else
                         ',\n ' if j % 4 == 3 else ',')
        for j in range (8):
            print ('13@32*Q2',
                   end = ']\n' if j == 7 and i == 248 else
                         '] /\\\n' if j == 7 else ',')
    print ('prove with [all cuts]')
        
        
print ('\n\n\n(**************** parameters ****************)\n')
parameters ('c')

print ('\n\n\n(**************** precondition ****************)\n')
precondition ('c', -Q//2, Q//2)

print ('\n\n\n(**************** input polynomial ****************)\n')
input_poly ('c', 'F')

print ('\n\n\n(**************** inputs ****************)\n')
initialize (0x203f0728, 'c')

print ('\n\n\n(**************** nondet ****************)\n')
print ('nondet r0@uint32; nondet L0x5938@uint32;')

print ('\n\n\n(**************** constants ****************)\n')
constants (0x5d6c, [0xfc7fdfff-0x100000000, 0x007fe001])
constants (0x7f98, zetas_new332)

for i in range (32):
    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (0+3*i, ['r4', 'r11', 'r12', 'lr'], ['r4', 'r11', 'r12', 'lr'])
    print ()
    twiddle (0+3*i, ['r4', 'r11', 'r12', 'lr'], [128]*4)

    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (1+3*i, ['r7', 'r8', 'r12', 'lr'], ['r7', 'r8', 'r12', 'lr'])
    print ()
    twiddle (1+3*i, ['r7', 'r8', 'r12', 'lr'], [64]*2 + [64+128]*2)

    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (2+3*i, ['r6', 'r8', 'r11', 'lr'], ['r6', 'r8', 'r11', 'lr'])
    print ()
    twiddle (2+3*i, ['r6', 'r8', 'r11', 'lr'], [32, 32+128, 32+64, 32+64+128])

    print ('\n\n\n(**************** CUT {0} ****************)\n'.format (i))
    cut0 (0x203f0728+4*i, 'c', i, [32, 32+256, 32+128, 32+128+256,
                                   32+64, 32+64+256, 32+64+128, 32+64+128+256])

brv3 = [0, 8, 4, 4+8, 2, 2+8, 2+4, 2+4+8]
for i in range (8):
    for j in range (4):
        print ('\n\n\n(**************** twiddle ****************)\n')
        ghosts (0, ['c{0:02x}'.format (0x20*i+4*k+j) for k in range (8) ],
                   ['r5', 'r6', 'r7', 'r8', 'r4', 'r11', 'r12', 'lr'])
        ghosts (96+12*i+3*j, ['r4', 'r11', 'r12', 'lr'],
                             ['r4', 'r11', 'r12', 'lr'])
        print ()
        twiddle (96+12*i+3*j, ['r4', 'r11', 'r12', 'lr'],
                              [16+brv3[i]*16]*4)

        print ('\n\n\n(**************** twiddle ****************)\n')
        ghosts (96+1+12*i+3*j, ['r7', 'r8', 'r12', 'lr'],
                               ['r7', 'r8', 'r12', 'lr'])
        print ()
        twiddle (96+1+12*i+3*j, ['r7', 'r8', 'r12', 'lr'],
                                [8+brv3[i]*8]*2 + [8+brv3[i]*8+128]*2)

        print ('\n\n\n(**************** twiddle ****************)\n')
        ghosts (96+2+12*i+3*j, ['r6', 'r8', 'r11', 'lr'],
                               ['r6', 'r8', 'r11', 'lr'])
        print ()
        twiddle (96+2+12*i+3*j, ['r6', 'r8', 'r11', 'lr'],
                                [4+brv3[i]*4,    4+brv3[i]*4+128,
                                 4+brv3[i]*4+64, 4+brv3[i]*4+64+128])

        print ('\n\n\n(**************** CUT {0} ****************)\n'.
               format (32+4*i+j))
        cut1 (0x203f0728+0x80*i+0x4*j, 'c', 0x20*i+j,
              [4+brv3[i]*4, 4+brv3[i]*4+256,
               4+brv3[i]*4+128, 4+brv3[i]*4+128+256,
               4+brv3[i]*4+64, 4+brv3[i]*4+64+256,
               4+brv3[i]*4+64+128, 4+brv3[i]*4+64+128+256])

brv8 = []
for i in range (128,256):
    bits = num2bits (8, i)
    brv8 += [bits2num (bits[::-1])]

for i in range (32):
    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (192+2*i, ['r5', 'r6', 'r7', 'r8'], ['r5', 'r6', 'r7', 'r8'])
    print ()
    twiddle (192+2*i, ['r7', 'r8'],[brv8[2*i]*2, brv8[2*i+1]*2%256])

    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (192+1+2*i, ['r6', 'r8'], ['r6', 'r8'])
    print ()
    twiddle (192+1+2*i, ['r6', 'r8'],[brv8[2*i], brv8[2*i+1]])
    
    print ('\n\n\n(**************** CUT {0} ****************)\n'.
           format (64+i))
    cut2 (0x203f0728 + 4*4*i, [5,6,7,8], 192+2*i,
          [brv8[2*i],brv8[2*i]+256,brv8[2*i+1],brv8[2*i+1]+256], 13,
          [32+i//8*4,32+1+i//8*4,32+2+i//8*4,32+3+i//8*4])
    
for i in range (32):
    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (256+2*i, ['r5', 'r6', 'r7', 'r8'], ['r5', 'r6', 'r7', 'r8'])
    print ()
    twiddle (256+2*i, ['r7', 'r8'],
             [(brv8[2*i]+2)*2, (brv8[2*i+1]+2)*2 % 256])

    print ('\n\n\n(**************** twiddle ****************)\n')
    ghosts (256+1+2*i, ['r6', 'r8'], ['r6', 'r8'])
    print ()
    twiddle (256+1+2*i, ['r6', 'r8'],
             [brv8[2*i]+2, brv8[2*i+1]+2])

    print ('\n\n\n(**************** CUT {0} ****************)\n'.
           format (96+i))
    cut2 (0x203f0928 + 4*4*i, [5,6,7,8], 256+2*i,
          [brv8[64+2*i],brv8[64+2*i]+256,
           brv8[64+2*i+1],brv8[64+2*i+1]+256],
          13, [48+i//8*4,48+1+i//8*4,48+2+i//8*4,48+3+i//8*4])

print ('\n\n\n(**************** postcondition ****************)\n')
postcondition (0x203f0728, 'F', brv8)
