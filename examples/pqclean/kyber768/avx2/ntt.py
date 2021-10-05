#!/usr/bin/python3

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

input_base = 0x7fffffffaf80
const_base = 0x5555556395e0

consts = [       Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q, Q,

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

def num_to_bits (n, w):
    r = []
    for i in range (w):
        r.append (n % 2)
        n //= 2
    return (r)

def bits_to_num (l):
    r = 0
    for i in range (len(l) - 1, -1, -1):
        r = r * 2 + l[i]
    return (r)

# kyber768 uses 7-level ntt on polyomials of degree 255

def print_inputs (fname):
    for i in range (0, 256, 4):
        print ('sint16 {0}{1:03}, sint16 {0}{2:03}, sint16 {0}{3:03}, sint16 {0}{4:03}{5}'.
               format (fname, i, i+1, i+2, i+3, ',' if i < 256 - 4 else ''))

def print_range_precondition (fname):
    for i in range (0, 256, 2):
        print ('({0})@16 <s {4}{1:03}, {4}{1:03} <s ({3})@16, ({0})@16 <s {4}{2:03}, {4}{2:03} <s ({3})@16{5}'.
               format (-Q, i, i+1, Q, fname, ',' if i < 256 - 2 else ''))
    
        
def print_initialization (fname):
    for i in range (0, 256 - 3, 3):
        print ('mov L0x{0:x} {6}{1:03}; mov L0x{2:x} {6}{3:03};  mov L0x{4:x} {6}{5:03};'.
               format (input_base + i * 2, i,
                       input_base + (i+1)*2, i+1,
                       input_base + (i+2)*2, i+2, fname))
    for i in range (i + 3, 256):
        print ('mov L0x{0:x} {2}{1:03};'.
               format (input_base + i * 2, i, fname), end=' ')
    
def print_consts ():
    for i in range (0, len (consts), 2):
        print ('mov L0x{0:x} ({1:6d})@sint16; mov L0x{2:x} ({3:6d})@sint16;'.
               format (const_base + i * 2, consts [i],
                       const_base + (i+1)*2, consts [i+1]))

def print_input_polynomial (fname):
    for i in range (0, 256, 4):
        print ('{0}{1:03}*(x**{1}) + {0}{2:03}*(x**{2}) + {0}{3:03}*(x**{3}) + {0}{4:03}*(x**{4}){5}'.
               format (fname, i, i+1, i+2, i+3, ' +' if i < 256 - 4 else ''))

# convert ymm registers of the given indices to coefficient list
def ymm2coeffs (indices, slice_size):
    idxs = []
    for i in range (len (indices)):
        cur = []
        for j in range (16):
            cur.append ('ymm' + str(indices[i]) + '_' + '{0:x}'.format (j))
        idxs.append (cur)
    ret = []
    for k in range (16//slice_size):
        for i in range (len (indices)):
            ret = ret + idxs[i][(k*slice_size):((k+1)*slice_size)]
    return (ret)

def print_algebraic_condition (inp_poly_name, indices, slice_size, moduli):
    coefficients = ymm2coeffs (indices, slice_size)
    degree = len (coefficients) // len (moduli)
    coeffidx = 0
    print ('and [')
    for i in range (len (moduli)):
        modulus = moduli[i]
        print ('eqmod {0}'.format (inp_poly_name))
        for j in range (0, degree - 4, 4):
            print ('{8}{0}*(x**{1}) + {2}*(x**{3}) + {4}*(x**{5}) + {6}*(x**{7}) +'.
                   format (coefficients[coeffidx], j,
                           coefficients[coeffidx + 1], j + 1,
                           coefficients[coeffidx + 2], j + 2,
                           coefficients[coeffidx + 3], j + 3,
                           '(' if j == 0 else ' '))
            coeffidx += 4
        remaining = 0 if degree <= 4 else j + 4
        for j in range (remaining, degree):
            print ('{2}{0}*(x**{1}){3}'.
                   format (coefficients[coeffidx], j,
                           ' ' if degree > 4 and j == remaining
                               else ('(' if degree <= 4 and j == 0 else ''),
                           ' + ' if j < degree - 1 else ')'), end = '')
            coeffidx += 1
        print ('\n[{0}, x**{1} - ({2})]{3}'.
               format (Q, degree, modulus,
                       ',' if i < len (moduli) - 1 else ']'))


def print_algebraic_condition0 (inp_poly_name):
    offset = 0
    moduli = [(zeta**(1*(Q-1)//4))%Q,
              (zeta**(3*(Q-1)//4))%Q]
    print ('and [')
    for i in range (2):
        print ('eqmod {0}'.format (inp_poly_name))
        for j in range (0, 128 - 3, 3):
            print ('{0}L0x{1:x}*(x**{2}) + L0x{3:x}*(x**{4}) + L0x{5:x}*(x**{6}) +'.
                   format ('(' if j == 0 else ' ',
                           input_base + offset, j,
                           input_base + offset + 2, j + 1,
                           input_base + offset + 4, j + 2))
            offset += 6
        for j in range (j + 3, 128):
            print (' L0x{0:x}*(x**{1})'.
                   format (input_base + offset, j),
                   end = ' +' if j < 128 - 1 else ')\n')
            offset += 2
        print ('[{0}, x**128 - ({1})]{2}'.
               format (Q, moduli[i], ',' if i == 0 else ']'))

def print_algebraic_condition6 (inp_poly_name, moduli, phase):
    input_bases = [ input_base + 0x100 * phase + i * 0x20 for i in range (8) ]
    counter = 0
    print ('and [')
    for i in range (len (moduli)):
        print ('eqmod {0}'.format (inp_poly_name))
        print ('(L0x{0:x} + L0x{1:x}*x) [{2}, x**2 - ({3})]{4}'.
               format (input_bases[ counter % 8 ] + (counter // 8) * 2,
                       input_bases[ (counter + 1) % 8 ] + (counter // 8) * 2,
                       Q, moduli[i], ',' if i < len (moduli) - 1 else ']'))
        counter += 2

def print_range_condition0 ():
    print ('and [')
    for i in range (256):
        print ('({0})@16 <s L0x{1:x}, L0x{1:x} <s ({2})@16{3}'.
               format (-2*Q, input_base + i*2, 2*Q,
                       ',' if i < 256 - 1 else '];'))

def print_range_condition (indices, slice_size, bound):
    coefficients = ymm2coeffs (indices, slice_size)
    print ('and [')
    for i in range (len (coefficients)):
        print ('({0})@16 <s {1}, {1} <s ({2})@16{3}'.
               format (-bound, coefficients[i], bound,
                       ',' if i < len (coefficients) - 1 else ']'))

def print_range_condition6 (phase):
    print ('and [')
    for i in range (128):
        print ('({0})@16 <s L0x{1:x}, L0x{1:x} <s ({2})@16{3}'.
               format (-8*Q, input_base + 0x100 * phase + i*2, 8*Q,
                       ',' if i < 128 - 1 else ']'))
        
print ('(*********** parameters ***********)\n\n\n')
print_inputs ('f')

print ('\n\n\n(*********** precondition ***********)\n\n\n')
print ('true && and [')
print_range_precondition ('f')
print (']')
               
print ('\n\n\n(*********** initialization ***********)\n\n\n')
print_initialization ('f')

print ('\n\n\n(*********** constants ***********)\n\n\n')
print_consts()

print ('\n\n\n(*********** ghost polynomial ***********)\n\n\n')
print ('ghost x@bit, inp_poly@bit : inp_poly**2 = ')
print_input_polynomial ('f')
print (' && true;')

print ('\n\n\n(*********** SUMMARY OF LEVEL 0 ***********)\n\n\n')
print ('cut ')
print_algebraic_condition0 ('(inp_poly**2)')
print ('&&')
print_range_condition0 ()

print ('\n\n\n(*********** SUMMARY OF LEVEL 1 0 ***********)\n\n\n')
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [3, 4, 5, 6, 8, 9, 10, 11], 16,
                           [(zeta**(1*(Q-1)//8))%Q,
                            (zeta**(5*(Q-1)//8))%Q])
print ('&&')
print_range_condition ([3, 4, 5, 6, 8, 9, 10, 11], 16, 3*Q)
print (';')

print ('\n\n\n(*********** SUMMARY OF LEVEL 2 0 ***********)\n\n\n')
exps = [ i for i in range (4) ]
exprevbits = map (lambda e : [1, 0] + list (reversed (num_to_bits (e, 2))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//16))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [4, 6, 8, 3, 7, 10, 5, 11], 8, list (revexps))
print ('&&')
print_range_condition ([4, 6, 8, 3, 7, 10, 5, 11], 8, 4*Q)
print (';')

print ('\n\n\n(*********** SUMMARY OF LEVEL 3 0 ***********)\n\n\n')
exps = [ i for i in range (8) ]
exprevbits = map (lambda e : [1, 0] + list (reversed (num_to_bits (e, 3))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//32))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [6, 3, 7, 4, 9, 5, 8, 11], 4, list (revexps))
print ('&&')
print_range_condition ([6, 3, 7, 4, 9, 5, 8, 11], 4, 5*Q)
print (';')

print ('\n\n\n(*********** SUMMARY OF LEVEL 4 0 ***********)\n\n\n')
exps = [ i for i in range (16) ]
exprevbits = map (lambda e : [1, 0] + list (reversed (num_to_bits (e, 4))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//64))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [3, 4, 9, 6, 10, 8, 7, 11], 2, list (revexps))
print ('&&')
print_range_condition ([3, 4, 9, 6, 10, 8, 7, 11], 2, 6*Q)
print (';')

print ('\n\n\n(*********** SUMMARY OF LEVEL 5 0 ***********)\n\n\n')
exps = [ i for i in range (32) ]
exprevbits = map (lambda e : [1, 0] + list (reversed (num_to_bits (e, 5))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//128))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
    [4, 6, 10, 3, 5, 7, 9, 11], 1, list (revexps))
print ('&&')
print_range_condition ([4, 6, 10, 3, 5, 7, 9, 11], 1, 7*Q)
print (';')

print ('\n\n\n(*********** SUMMARY OF LEVEL 6 0 ***********)\n\n\n')
exps = [ i for i in range (64) ]
exprevbits = map (lambda e : [1, 0] + list (reversed (num_to_bits (e, 6))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//256))%Q, exprevbits)
print ('cut ')
print_algebraic_condition6 ('(inp_poly**2)', list (revexps), 0)
print ('&&')
print_range_condition6 (0)
print (';')

print ('\n\n\n(*********** START LEVEL 1 ***********)')
print ('(*********** move second half of cut 0 here ***********)\n\n\n')

print ('\n\n\n(*********** SUMMARY OF LEVEL 1 1 ***********)\n\n\n')
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [3, 4, 5, 6, 8, 9, 10, 11], 16,
                           [(zeta**(3*(Q-1)//8))%Q,
                            (zeta**(7*(Q-1)//8))%Q])
print ('&&')
print_range_condition ([3, 4, 5, 6, 8, 9, 10, 11], 16, 3*Q)
print (';')

print ('\n\n\n(*********** SUMMARY OF LEVEL 2 1 ***********)\n\n\n')
exps = [ i for i in range (4) ]
exprevbits = map (lambda e : [1, 1] + list (reversed (num_to_bits (e, 2))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//16))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [4, 6, 8, 3, 7, 10, 5, 11], 8, list (revexps))
print ('prove with [ cuts [ 1 ] ] &&')
print_range_condition ([4, 6, 8, 3, 7, 10, 5, 11], 8, 4*Q)
print ('prove with [ cuts [ 1 ] ];')

print ('\n\n\n(*********** SUMMARY OF LEVEL 3 1 ***********)\n\n\n')
exps = [ i for i in range (8) ]
exprevbits = map (lambda e : [1, 1] + list (reversed (num_to_bits (e, 3))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//32))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [6, 3, 7, 4, 9, 5, 8, 11], 4, list (revexps))
print ('prove with [ cuts [ 2 ] ] &&')
print_range_condition ([6, 3, 7, 4, 9, 5, 8, 11], 4, 5*Q)
print ('prove with [ cuts [ 2 ] ];')

print ('\n\n\n(*********** SUMMARY OF LEVEL 4 1 ***********)\n\n\n')
exps = [ i for i in range (16) ]
exprevbits = map (lambda e : [1, 1] + list (reversed (num_to_bits (e, 4))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//64))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
                           [3, 4, 9, 6, 10, 8, 7, 11], 2, list (revexps))
print ('prove with [ cuts [ 3 ] ] &&')
print_range_condition ([3, 4, 9, 6, 10, 8, 7, 11], 2, 6*Q)
print ('prove with [ cuts [ 3 ] ];')

print ('\n\n\n(*********** SUMMARY OF LEVEL 5 1 ***********)\n\n\n')
exps = [ i for i in range (32) ]
exprevbits = map (lambda e : [1, 1] + list (reversed (num_to_bits (e, 5))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//128))%Q, exprevbits)
print ('cut ')
print_algebraic_condition ('(inp_poly**2)',
    [4, 6, 10, 3, 5, 7, 9, 11], 1, list (revexps))
print ('prove with [ cuts [ 4 ] ] &&')
print_range_condition ([4, 6, 10, 3, 5, 7, 9, 11], 1, 7*Q)
print ('prove with [ cuts [ 4 ] ] ;')

print ('\n\n\n(*********** SUMMARY OF LEVEL 6 1 ***********)\n\n\n')
exps = [ i for i in range (64) ]
exprevbits = map (lambda e : [1, 1] + list (reversed (num_to_bits (e, 6))),
                  exps)
revexps = map (lambda b : (zeta**(bits_to_num (b)*(Q-1)//256))%Q, exprevbits)
print ('cut ')
print_algebraic_condition6 ('(inp_poly**2)', list (revexps), 1)
print ('prove with [ cuts [ 5 ] ] &&')
print_range_condition6 (1)
print ('prove with [ cuts [ 5 ] ];')
