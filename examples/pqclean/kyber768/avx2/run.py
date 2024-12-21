#!/usr/bin/env python3

base = 0x7fffffffb280
const_base = 0x5555556384a0
Q = 3329
QINV = -3327 # q^-1 mod 2^16
V = 20159 # floor(2^26/q + 0.5)
FHI = 1441 #  mont^2/128
FLO = (-10079) # qinv*FHI
MONTSQHI = 1353 # mont^2
MONTSQLO = 20553 # qinv*MONTSQHI
MASK = 4095
SHIFT = 32

table = [
# #define _16XQ 0
        Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q,

# #define _16XQINV 16
        QINV, QINV, QINV, QINV, QINV, QINV, QINV, QINV,
        QINV, QINV, QINV, QINV, QINV, QINV, QINV, QINV,

# #define _16XV 32
        V, V, V, V, V, V, V, V, V, V, V, V, V, V, V, V,

# #define _16XFLO 48
        FLO, FLO, FLO, FLO, FLO, FLO, FLO, FLO,
        FLO, FLO, FLO, FLO, FLO, FLO, FLO, FLO,

# #define _16XFHI 64
        FHI, FHI, FHI, FHI, FHI, FHI, FHI, FHI,
        FHI, FHI, FHI, FHI, FHI, FHI, FHI, FHI,

# #define _16XMONTSQLO 80
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,

# #define _16XMONTSQHI 96
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,

# #define _16XMASK 112
        MASK, MASK, MASK, MASK, MASK, MASK, MASK, MASK,
        MASK, MASK, MASK, MASK, MASK, MASK, MASK, MASK,

# #define _REVIDXB 128
        3854, 3340, 2826, 2312, 1798, 1284, 770, 256,
        3854, 3340, 2826, 2312, 1798, 1284, 770, 256,

# #define _REVIDXD 144
        7, 0, 6, 0, 5, 0, 4, 0, 3, 0, 2, 0, 1, 0, 0, 0,

# #define _ZETAS_EXP 160
        31498,  31498,  31498,  31498,   -758,   -758,   -758,   -758,
        5237,   5237,   5237,   5237,   1397,   1397,   1397,   1397,
        14745,  14745,  14745,  14745,  14745,  14745,  14745,  14745,
        14745,  14745,  14745,  14745,  14745,  14745,  14745,  14745,
        -359,   -359,   -359,   -359,   -359,   -359,   -359,   -359,
        -359,   -359,   -359,   -359,   -359,   -359,   -359,   -359,
        13525,  13525,  13525,  13525,  13525,  13525,  13525,  13525,
        -12402, -12402, -12402, -12402, -12402, -12402, -12402, -12402,
        1493,   1493,   1493,   1493,   1493,   1493,   1493,   1493,
        1422,   1422,   1422,   1422,   1422,   1422,   1422,   1422,
        -20907, -20907, -20907, -20907,  27758,  27758,  27758,  27758,
        -3799,  -3799,  -3799,  -3799, -15690, -15690, -15690, -15690,
        -171,   -171,   -171,   -171,    622,    622,    622,    622,
        1577,   1577,   1577,   1577,    182,    182,    182,    182,
        -5827,  -5827,  17363,  17363, -26360, -26360, -29057, -29057,
        5571,   5571,  -1102,  -1102,  21438,  21438, -26242, -26242,
        573,    573,  -1325,  -1325,    264,    264,    383,    383,
        -829,   -829,   1458,   1458,  -1602,  -1602,   -130,   -130,
        -5689,  -6516,   1496,  30967, -23565,  20179,  20710,  25080,
        -12796,  26616,  16064, -12442,   9134,   -650, -25986,  27837,
        1223,    652,   -552,   1015,  -1293,   1491,   -282,  -1544,
        516,     -8,   -320,   -666,  -1618,  -1162,    126,   1469,
        -335, -11477, -32227,  20494, -27738,    945, -14883,   6182,
        32010,  10631,  29175, -28762, -18486,  17560, -14430,  -5276,
        -1103,    555,  -1251,   1550,    422,    177,   -291,   1574,
        -246,   1159,   -777,   -602,  -1590,   -872,    418,   -156,
        11182,  13387, -14233, -21655,  13131,  -4587,  23092,   5493,
        -32502,  30317, -18741,  12639,  20100,  18525,  19529, -12619,
        430,    843,    871,    105,    587,   -235,   -460,   1653,
        778,   -147,   1483,   1119,    644,    349,    329,    -75,
        787,    787,    787,    787,    787,    787,    787,    787,
        787,    787,    787,    787,    787,    787,    787,    787,
        -1517,  -1517,  -1517,  -1517,  -1517,  -1517,  -1517,  -1517,
        -1517,  -1517,  -1517,  -1517,  -1517,  -1517,  -1517,  -1517,
        28191,  28191,  28191,  28191,  28191,  28191,  28191,  28191,
        -16694, -16694, -16694, -16694, -16694, -16694, -16694, -16694,
        287,    287,    287,    287,    287,    287,    287,    287,
        202,    202,    202,    202,    202,    202,    202,    202,
        10690,  10690,  10690,  10690,   1358,   1358,   1358,   1358,
        -11202, -11202, -11202, -11202,  31164,  31164,  31164,  31164,
        962,    962,    962,    962,  -1202,  -1202,  -1202,  -1202,
        -1474,  -1474,  -1474,  -1474,   1468,   1468,   1468,   1468,
        -28073, -28073,  24313,  24313, -10532, -10532,   8800,   8800,
        18426,  18426,   8859,   8859,  26675,  26675, -16163, -16163,
        -681,   -681,   1017,   1017,    732,    732,    608,    608,
        -1542,  -1542,    411,    411,   -205,   -205,  -1571,  -1571,
        19883, -28250, -15887,  -8898, -28309,   9075, -30199,  18249,
        13426,  14017, -29156, -12757,  16832,   4311, -24155, -17915,
        -853,    -90,   -271,    830,    107,  -1421,   -247,   -951,
        -398,    961,  -1508,   -725,    448,  -1065,    677,  -1275,
        -31183,  25435,  -7382,  24391, -20927,  10946,  24214,  16989,
        10335,  -7934, -22502,  10906,  31636,  28644,  23998, -17422,
        817,    603,   1322,  -1465,  -1215,   1218,   -874,  -1187,
        -1185,  -1278,  -1510,   -870,   -108,    996,    958,   1522,
        20297,   2146,  15355, -32384,  -6280, -14903, -11044,  14469,
        -21498, -20198,  23210, -17442, -23860, -20257,   7756,  23132,
        1097,    610,  -1285,    384,   -136,  -1335,    220,  -1659,
        -1530,    794,   -854,    478,   -308,    991,  -1460,   1628,

# #define _16XSHIFT 624
        SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT,
        SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT
]

# LSB-first
def bits_of_num (n, sz):
    ret = []
    for i in range (sz):
        ret = ret + [n % 2]
        n = n // 2
    return ret

def num_of_bits (b):
    ret = 0
    for i in range (len (b)):
        ret += b[len (b) - i - 1]*2**i
    return ret
    
def parameters (A):
    for i in range (256):
        print ('int16 {0}{1:02x}'.format (A, i),
               end = ',\n' if i % 7 == 6 or i == 255 else ',')
    print ('int16 Q, int16 NQ, int16 Q2, int16 NQ2')

def precondition (A):
    print ('Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\')
    for i in range (0, 256, 8):
        print ('[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<'
               '[{0}{1:02x},{0}{2:02x},{0}{3:02x},{0}{4:02x}'
               ',{0}{5:02x},{0}{6:02x},{0}{7:02x},{0}{8:02x}] /\\\n'
               '[{0}{1:02x},{0}{2:02x},{0}{3:02x},{0}{4:02x}'
               ',{0}{5:02x},{0}{6:02x},{0}{7:02x},{0}{8:02x}]'
               '<[Q,Q,Q,Q,Q,Q,Q,Q]'.
               format (A, i, i+1, i+2, i+3, i+4, i+5, i+6, i+7),
               end = '\n&&\n' if i == 248 else ' /\\\n')
    print ('Q = 3329@16 /\\ NQ = (-3329)@16 /\\ Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\')
    for i in range (0, 256, 8):
        print ('[NQ,NQ,NQ,NQ,NQ,NQ,NQ,NQ]<s'
               '[{0}{1:02x},{0}{2:02x},{0}{3:02x},{0}{4:02x}'
               ',{0}{5:02x},{0}{6:02x},{0}{7:02x},{0}{8:02x}] /\\\n'
               '[{0}{1:02x},{0}{2:02x},{0}{3:02x},{0}{4:02x}'
               ',{0}{5:02x},{0}{6:02x},{0}{7:02x},{0}{8:02x}]<s'
               '[Q,Q,Q,Q,Q,Q,Q,Q]'.
               format (A, i, i+1, i+2, i+3, i+4, i+5, i+6, i+7),
               end = '\n' if i == 248 else ' /\\\n')

def initialize (base, A):
    for i in range (0, 253, 3):
        print ('mov [L0x{0:x},L0x{1:x},L0x{2:x}] '
               '[{3}{4:02x},{3}{5:02x},{3}{6:02x}];'.
               format (base+2*i, base+2*(i+1), base+2*(i+2),
                       A, i, i+1, i+2))
    print ('mov L0x{0:x} {1}{2:02x};'.
           format (base + 2*255, A, 255))

def constants (base, table):
    for i in range (0, len (table), 2):
        print ('mov [L0x{0:x},L0x{1:x}] [({2:6})@int16,({3:6})@int16];'.
               format (base + 2*i, base + 2*(i+1), table[i], table[i+1]))
    if len (table) % 2 == 1:
        print ('mov L0x{0:x} ({1:6})@int16;'.
               format (base + 2*(len (table) - 1), table[len (table) - 1]))

def input_polynomial (F, A, X):
    print ('ghost {0}@int16, {1}@int16: {0}**2 ='.format (F, X))
    print ('poly {0} ['.format (X), end = '')
    for i in range (256):
        print ('{0}{1:02x}'.format (A, i, X),
               end = ']\n' if i == 255 else
                     ',\n        ' if i % 16 == 15 else ',')
    print ('   && true;')
        
def polynomial_coeffs (X, base, start, delta, n):
    print ('[', end = '')
    for i in range (n):
        print ('L0x{0:x}'.
               format (base + 2*(start + delta * i), X, i*delta),
               end = ']' if i == n - 1 else
                     ',\n      ' if i % 4 == 3 else ',')

def polynomial_range (base, c):
    for i in range (0, 256, 4):
        print ('    [{0}@16*NQ,{0}@16*NQ,{0}@16*NQ,{0}@16*NQ]<s'.format (c))
        print ('    [L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\'.
               format (base+2*i, base+2*(i+1), base+2*(i+2), base+2*(i+3)))
        print ('    [L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<s'.
               format (base+2*i, base+2*(i+1), base+2*(i+2), base+2*(i+3)))
        print ('    [{0}@16*Q,{0}@16*Q,{0}@16*Q,{0}@16*Q]'.format (c),
               end = ';\n' if i == 252 else ' /\\\n')

def postcondition (base, F, X):
    revbits = [num_of_bits (bits_of_num (i, 8)) for i in range (128, 256) ]
    print ('    Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\')
    for i in range (2):
        for j in range (16):
            for k in range (4):
                print ('    eqmod ({0}**2) (poly {1} [L0x{2:x},L0x{3:x}])\n'
                       '          [Q, {1}**2 - 17**{4:3}]'.
                       format (F, X, base+2*(32*k+j+128*i), base+2*(32*k+j+128*i+16), revbits[k+4*j+64*i]),
                       end = '\n&&\n' if i == 1 and j == 15 and k == 3 else ' /\\\n')
    print ('    Q = 3329@16 /\\ NQ = (-3329)@16 /\\ Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\')
    polynomial_range (base, 8)
    
print ('\n\n\n(**************** parameters ****************)\n\n')
parameters ('A')

print ('\n\n\n(**************** precondition ****************)\n\n')
precondition ('A')

print ('\n\n\n(**************** initialize ****************)\n\n')
initialize (base, 'A')

print ('\n\n\n(**************** constants ****************)\n\n')
constants (const_base, table)

print ('\n\n\n(**************** input polynomial ****************)\n\n')
input_polynomial ('F', 'A', 'X')

print ('\n\n\n(**************** LEVEL 0 ****************)\n\n')
print ('cut Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\')
print ('    eqmod (F**2)')
print ('    (poly X\n     ', end = '')
polynomial_coeffs ('X', base, 0, 1, 128)
print (')\n    [Q, X**128 - 17** 64] /\\')
print ('    eqmod (F**2)')
print ('    (poly X\n     ', end = '')
polynomial_coeffs ('X', base, 128, 1, 128)
print (')\n    [Q, X**128 - 17**192] &&')
print ('    Q = 3329@16 /\\ NQ = (-3329)@16 /\\ Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\')
polynomial_range (base, 2)

print ('\n\n\n(**************** LEVEL 5 ****************)\n\n')

print ([num_of_bits (bits_of_num (i, 8)) for i in range (64, 128, 1)])

print ('\n\n\n(**************** postcondition ****************)\n\n')
postcondition (base, 'F', 'X')

print ([num_of_bits (bits_of_num (i, 8)) for i in range (128, 256, 1)])
