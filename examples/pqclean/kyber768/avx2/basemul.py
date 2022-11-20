#!/usr/bin/python3

# modified from 'ntt.py'

zeta     = 1678
R        = 2**16
Q        = 3329
QINV     = -3327  # mod R
MONT     = -1044  # R mod Q
V        = 20159  # floor(2^26/q + 0.5)
FHI      = 1441   # mont^2/128
FLO      = -10079 # qinv*FHI
MONTSQHI = 1353   # mont^2
MONTSQLO = 20553  # qinv*MONTSQHI
MASK     = 4095
SHIFT    =   32

input0_base = 0x7fffffffdac0
input1_base = 0x7fffffffdcc0
const_base = 0x5555555760a0
output_base = 0x7fffffffdec0

consts = [
        Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q,

# //#define _16XQINV 16
        QINV, QINV, QINV, QINV, QINV, QINV, QINV, QINV,
        QINV, QINV, QINV, QINV, QINV, QINV, QINV, QINV,

# //#define _16XV 32
        V, V, V, V, V, V, V, V, V, V, V, V, V, V, V, V,

# //#define _16XFLO 48
        FLO, FLO, FLO, FLO, FLO, FLO, FLO, FLO,
        FLO, FLO, FLO, FLO, FLO, FLO, FLO, FLO,

# //#define _16XFHI 64
        FHI, FHI, FHI, FHI, FHI, FHI, FHI, FHI,
        FHI, FHI, FHI, FHI, FHI, FHI, FHI, FHI,

# //#define _16XMONTSQLO 80
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,
        MONTSQLO, MONTSQLO, MONTSQLO, MONTSQLO,

# //#define _16XMONTSQHI 96
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,
        MONTSQHI, MONTSQHI, MONTSQHI, MONTSQHI,

# //#define _16XMASK 112
        MASK, MASK, MASK, MASK, MASK, MASK, MASK, MASK,
        MASK, MASK, MASK, MASK, MASK, MASK, MASK, MASK,

# //#define _REVIDXB 128
        3854, 3340, 2826, 2312, 1798, 1284, 770, 256,
        3854, 3340, 2826, 2312, 1798, 1284, 770, 256,

# //#define _REVIDXD 144
        7, 0, 6, 0, 5, 0, 4, 0, 3, 0, 2, 0, 1, 0, 0, 0,

# //#define _ZETAS_EXP 160
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

# //#define _16XSHIFT 624
        SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT,
        SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT
]


def bitrev7(n):
    s = '{:07b}'.format(n)
    r = ''.join(reversed(s))
    return int(r, 2)

def print_inputs (fname, is_last=False):
    print('sint16 x,')
    for i in range (0, 128, 4):
        print ('sint16 {0}{1:03}, sint16 {0}{2:03}, sint16 {0}{3:03}, sint16 {0}{4:03}{5}'.
               format (fname, i, i+1, i+2, i+3, '' if is_last and i == 128 - 4 else ','))

def print_range_precondition (fname, bound, is_last=False):
    for i in range (0, 128, 2):
        print ('({0})@16 <=s {4}{1:03}, {4}{1:03} <=s ({3})@16, ({0})@16 <=s {4}{2:03}, {4}{2:03} <=s ({3})@16{5}'.
               format (-bound, i, i+1, bound, fname, '' if is_last and i == 128 - 2 else ','))

def print_initialization (fnames, base):
    for i in range(16):
        fname = fnames[i % 2]
        varidx = i // 2
        srcs = ['{}{:03}'.format(fname, varidx * 16 + j) for j in range(16)]
        dests = ['L0x{:x}'.format(base + (i * 16 + j) * 2) for j in range(16)]
        print('mov [{}]'.format(', '.join(dests)))
        print('    [{}];'.format(', '.join(srcs)))

def print_consts ():
    for i in range (0, len (consts), 2):
        print ('mov L0x{0:x} ({1:6d})@sint16; mov L0x{2:x} ({3:6d})@sint16;'.
               format (const_base + i * 2, consts [i],
                       const_base + (i+1)*2, consts [i+1]))

def print_algebraic_postcondition(vars):
    for i in range(8):
        for j in range(16):
            nth = i * 16 + j
            # addr indices: 0, 32, 64, 96, 1, 33, 65, 97, ..., 15, ..., 127
            idx = (i // 4) * 128 + (i % 4) * 4 + (j % 4) * 32 + (j // 4)
            # var indices: 0, 16, 32?, 48?, 1, 17, 33?, 49?, ...?
            varidx = (i // 4) * 64 + (i % 4) * 4 + (j % 4) * 16 + (j // 4)

            input = '({0[0]}{1:03} + {0[1]}{1:03} * x) * ({0[2]}{1:03} + {0[3]}{1:03} * x)'.format(
                vars, varidx)

            addr = output_base + idx * 2
            print('(* {num:3d} *) eqmod ({input}) ((L0x{r0:x} + L0x{r1:x}*x) * ({MONT})) [{Q}, x**2 - ({zeta:5})]{end}'.format(
                num=nth,
                input=input,
                r0=addr,
                r1=addr + 32,
                MONT=MONT,
                Q=Q,
                zeta=pow(17, 2 * bitrev7(nth) + 1, Q),
                end='' if nth == 127 else ','
            ))

def print_range_postcondition (base, bound):
    for i in range (0, 256, 2):
        print ('({0})@16 <=s L0x{1:x}, L0x{1:x} <=s ({3})@16, ({0})@16 <=s L0x{2:x}, L0x{2:x} <=s ({3})@16{4}'.
               format (-bound, base + i * 2, base + i * 2 + 2, bound, '' if i == 256 - 2 else ','))


print ('(*********** parameters ***********)\n\n\n')
print_inputs ('a')
print_inputs ('b')
print_inputs ('c')
print_inputs ('d', is_last=True)

print ('\n\n\n(*********** precondition ***********)\n\n\n')
# The original code comment says that one polynomial can have
# arbitrary coefficients as long as the other is bounded by q.
# Here we use the bound from NTT's output.
print ('true && or [ and [')
print_range_precondition ('a', 16118)
print_range_precondition ('b', 16118)
print_range_precondition ('c', Q)
print_range_precondition ('d', Q, is_last=True)
print('], and [')
print_range_precondition ('a', Q)
print_range_precondition ('b', Q)
print_range_precondition ('c', 16118)
print_range_precondition ('d', 16118, is_last=True)
print (']]')

print ('\n\n\n(*********** initialization ***********)\n\n\n')
print_initialization (['a', 'b'], input0_base)
print_initialization (['c', 'd'], input1_base)

print ('\n\n\n(*********** constants ***********)\n\n\n')
print_consts()


print ('\n\n\n(*********** postcondition ***********)\n\n\n')
print('and [')
print_algebraic_postcondition(['a', 'b', 'c', 'd'])
print(']')
print('&&')
print('and [')
print_range_postcondition (output_base, (Q - 1) * 2)
print(']')
