
import nttlib

P         = 10753
R         = 2**16
PINV      = (P**(2**15 - 1))%R - R        # -10751
MONT      = R % P                         # 1018
MONT_PINV = (MONT*PINV)%R - R             # -6
V         = int (2**27/P + .5)            # 12482
SHIFT     = 16
F         = ((MONT**2)*(512**(P-2)))%P    # 1268
F_PINV    = (F*PINV)%R - R                # -780

ZETA = 10 # 62 for 7681 and 10 for 10753

const_base = 0x555555561120
idx_base   = 0x5555555610a0
inp_base   = 0x7fffffffd2e0
out_base   = 0x7fffffffd2e0

pdata10753 = [
#define _16XP 0
  P, P, P, P, P, P, P, P, P, P, P, P, P, P, P, P,

#define _16XPINV 16
  PINV, PINV, PINV, PINV, PINV, PINV, PINV, PINV,
  PINV, PINV, PINV, PINV, PINV, PINV, PINV, PINV,

#define _16XV 32
  V, V, V, V, V, V, V, V, V, V, V, V, V, V, V, V,

#define _16XSHIFT 48
  SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT,
  SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT, SHIFT,

#define _16XMONT_PINV 64
  MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV,
  MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV, MONT_PINV,

#define _16XMONT 80
  MONT, MONT, MONT, MONT, MONT, MONT, MONT, MONT,
  MONT, MONT, MONT, MONT, MONT, MONT, MONT, MONT,

#define _16XF_PINV 96
  F_PINV, F_PINV, F_PINV, F_PINV, F_PINV, F_PINV, F_PINV, F_PINV,
  F_PINV, F_PINV, F_PINV, F_PINV, F_PINV, F_PINV, F_PINV, F_PINV,

#define _16XF 112
  F, F, F, F, F, F, F, F, F, F, F, F, F, F, F, F,

#define _ZETAS_PINV 128
      -6,  27359,  -1956,    408,  10093, -21094,  28517, -20856,
   -7033, -16090, -29449,  12476, -18345, -28224,   9508, -16072,
   17675,  23056, -28103,  -4547,  25543,  26518,   7228,  -7429,
   14731,   -829,  10001,  -3925, -14847,  -3639,  18363,  11683,
    4589, -23007,  31369,  20198,   2316,  23812,  22532, -24098,
  -12378,  -8441,  24269, -22623, -14341,  19326, -15864, -22209,
   -5126,   5766,  -6924,  15736, -31656,  20490,  -3407,  23781,
  -16724, -31217,   5619,   6381, -27152, -12707,    573, -15840,
    -609, -16614,    969, -24702,  26238, -12214, -31887,  11555,
   17571,  29407,   4175,   2395,    512,  -4394, -32271,  31235,
   -2017,  11854,   7795,   4090,  -1627,  30351,   1932, -22044,
   31290, -17352,  17096,    719,  22666,  29364,   1316, -11300,
     177,  -6978,  -8801, -11842, -30546,  21892,  24976,  14999,
    7356,   7856,   2066,  31418,   7716,  32076, -13579,   7326,
   11726, -13268,  28541,    780, -19844,  17412, -13012,  18845,
   31558,  24037, -27895, -17248, -28200, -25555,  -8246, -11141,
     -61,  11446, -19564,   4083, -30144, -14329,  23026, -11952,
   -4797, -29827, -32351,  -6314,  13158, -20100,  29541, -29644,
  -19863, -31583, -18881,  20070,  -6716,   3035,   6747,  -8758,
   16236,  -8289, -31058,  26286, -17394,  29151, -12976, -14237,
  -19643,  32070, -13987,   5369,  23160, -24025,  28712,  21161,
    7289, -18875, -19454, -29626, -12336,  -3346, -27572, -25482,
   14280,  -7880,  -3699,  26292,  11123,   8295,  31467, -24330,
   29370,  15511,  -9343,  -1725,  -9374,   3998,   5729, -27329,
   -6095,  30467,   9691,  15127,    232,   8935,   8807, -15517,
  -20899,  31924, -23788,  23952,   5120,  21593,   4967, -15328,
  -20173, -12531,  12415, -24641, -16273, -24165,  19320, -23836,
  -14780,  23093, -25652,   7192,  30053,  31497,  13164,  18077,
    1767,  -4248, -22471,  12653,  22215,  22313, -12384,  18918,
    8027,  13024,  20661, -13500,  11623,  -6917,  -4717,   7722,
  -13811,  -1609,  23269,   7801,  -1834, -22483,    951,  -8161,
  -12098, -21770, -16809,  24129, -19856,   6594, -16925,  19661,

#define _ZETAS 384
    1018,    223,   4188,  -3688,   2413,  -3686,    357,   -376,
    2695,   -730,   4855,   2236,   -425,   4544,   3364,  -3784,
    4875,  -1520,  -5063,  -4035,   2503,    918,  -3012,   4347,
    1931,  -1341,  -3823,   -341,  -4095,  -5175,  -2629,  -5213,
   -3091,   4129,  -2935,   2790,    268,   1284,      4,   3550,
    2982,   1287,    205,   4513,  -2565,  -2178,   4616,   -193,
   -4102,   4742,  -4876,  -4744,  -2984,  -3062,   -847,  -4379,
   -2388,  -1009,  -3085,  -1299,  -2576,   4189,   1085,    544,
    5023,    794,   -567,  -3198,   4734,  -2998,   3441,  -5341,
     675,   2271,   1615,  -2213,    512,   2774,   3057,  -2045,
    3615,  -1458,   -909,   5114,   2981,  -4977,   -116,   4580,
    -454,  -5064,   4808,  -1841,   -886,  -1356,  -4828,  -5156,
    2737,   4286,  -3169,   -578,   5294,   -636,    400,    151,
   -2884,   -336,  -1006,   -326,   1572,  -2740,   -779,   2206,
   -1586,   1068,  -3715,  -1268,   2684,  -5116,   1324,   2973,
   -2234,  -4123,   3337,   -864,    472,   -467,    970,    635,
    -573,   2230,  -1132,  -4621,   2624,  -4601,   3570,  -3760,
   -5309,   3453,  -5215,    854,  -4250,   2428,   1381,   5172,
   -5015,  -4447,   3135,   2662,   3524,  -1573,   2139,    458,
   -2196,  -2657,   4782,  -3410,   2062,   2015,  -4784,   1635,
    1349,  -1722,   2909,  -4359,   2680,   2087,     40,   3241,
   -2439,   2117,   2050,   2118,  -4144,   -274,   3148,  -1930,
    1992,   4408,   5005,  -4428,   2419,   1639,   2283,   -778,
   -2374,    663,   1409,  -2237,  -4254,  -1122,     97,  -5313,
   -3535,  -2813,   5083,    279,   4328,   2279,   2151,    355,
   -4003,   1204,  -5356,   -624,   5120,  -4519,  -1689,   1056,
    3891,  -3827,   1663,  -2625,  -2449,   3995,  -1160,   2788,
   -4540,   3125,   5068,   3096,   1893,  -2807,  -5268,   2205,
   -4889,   -152,    569,   4973,   -825,   4393,   4000,   1510,
    3419,  -3360,    693,  -3260,   4967,   4859,   2963,    554,
   -5107,    -73,  -4891,  -1927,   5334,   2605,   2487,  -2529,
    -834,   1782,   1111,   2113,   4720,  -4670,  -1053,  -4403,

#define _ZETAS_INV_PINV 640
      -6, -27359,   -408,   1956,  20856, -28517,  21094, -10093,

#define _ZETAS_INV 648
    1018,   -223,   3688,  -4188,    376,   -357,   3686,  -2413,
]


idxdata = [
#define _REVWIDX 0
  14, 15, 12, 13, 10, 11, 8, 9, 6, 7, 4, 5, 2, 3, 0, 1,
  14, 15, 12, 13, 10, 11, 8, 9, 6, 7, 4, 5, 2, 3, 0, 1,

#define _REVDIDX 32
  7, 0, 0, 0, 6, 0, 0, 0, 5, 0, 0, 0, 4, 0, 0, 0,
  3, 0, 0, 0, 2, 0, 0, 0, 1, 0, 0, 0, 0, 0, 0, 0,

#define _PACKWIDX 64
  0, 1, 4, 5, 8, 9, 12, 13, 2, 3, 6, 7, 10, 11, 14, 15,
  0, 1, 4, 5, 8, 9, 12, 13, 2, 3, 6, 7, 10, 11, 14, 15,

#define _UNPCKWIDX 96
  0, 1, 8, 9, 2, 3, 10, 11, 4, 5, 12, 13, 6, 7, 14, 15,
  0, 1, 8, 9, 2, 3, 10, 11, 4, 5, 12, 13, 6, 7, 14, 15,
]

def print_parameters (inp_poly_name, base):
    print ('bit x,')
    for i in range (512):
        print ('bit {0}{1:03x}'.format (inp_poly_name, i),
               end = ',\n' if i % 4 == 3 else ', ')
    for i in range (1024):
        print ('sint16 L0x{0:x}'.format (base + 2*i),
               end = '\n' if i == 1023 else
                     (',\n' if i % 3 == 2 else ', '))
        
def print_algebraic_precondition (inp_poly_name, base, offset):
    num_rings = 2**(8+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    limbs = [ [0, 8], [1, 9], [2, 10], [3, 11], [4, 12], [5, 13], [6, 14], [7, 15] ]
    for i in range (64):
        print ('eqmod ({0}{1:03x}**2) ('.format (inp_poly_name, 64*offset+i),
               end = '')
        for k in range (2):
            print ('L0x{0:x}*x**{1:2}'.
                   format (base +
                           2*(128*offset +
                              16*(2*(i//16)+i%2)+
                              limbs[(i//2)%8][k]), k),
                   end = ')\n      ' if k == 1 else '+')
        print ('[{0}, x**2 - {1}]'.format (P, revexps[64*offset+i]),
               end = '\n' if i == 63 else ',\n')

def print_range_precondition (base, bound):
    for i in range (1024):
        print ('(-{0})@16 <=s L0x{1:x}, L0x{1:x} <=s {0}@16'.
               format (bound, base + 2*i),
               end = '\n' if i == 1023 else ',\n')

def print_constants (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} ({1:6})@sint16;'.format (base + 2*i, consts[i]),
               end = '\n' if i % 2 == 1 or i == len (consts) - 1 else ' ')

def print_indices (base, idx):
    for i in range (len (idx) // 2):
        print ('mov L0x{0:x} (0x{1:04x})@sint16;'.
               format (base + 2*i, 0x100*idx[2*i+1] + idx[2*i]),
               end = '\n' if i % 2 == 1 or i == len (idx) - 1 else ' ')

def print_segment (seg_name, base, offset):
    print ('{0}{1} = '.format (seg_name, offset))
    for i in range (8):
        print ('x**{0:3}*('.format (16*i))
        for j in range (16):
            print ('L0x{0:x}*x**{1:2}'.
                   format (base + 2*(128*offset+16*i+j), j),
                   end = ')\n' if i == 7 and j == 15 else
                         (')+\n' if j == 15 else
                         ('+\n' if j % 3 == 2 else '+')))
#    nttlib.print_poly ('segment{0}'.format (offset),
#                       lambda i: 'L0x{0:x}'.format (base + 2*(128*offset + i)),
#                       128, 8)
    
def print_algebraic_condition05 (inp_poly_name, segment_name, offset):
    num_rings = 2**3
    num_eqmods = 2**9 // num_rings
    exps = [ i for i in range (num_eqmods*offset, num_eqmods*(offset + 1)) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (num_eqmods):
        print ('eqmod (64*{0}{1:03x}**2) ({2}{3}) '.
               format (inp_poly_name, num_eqmods*offset + i, segment_name, offset),
               end = '')
#        for k in range (128):
#            print ('L0x{0:x}*x**{1:3}'.
#                   format (base + 2*(128*offset + k), k),
#                   end = ')\n      ' if k ==  127 else
#                         ('+\n       ' if k % 3 == 2 else '+'))
        print ('[{0}, x**2 - {1}]'.format (P, revexps[i]),
               end = '\n' if i == num_eqmods - 1 else ',\n')

def print_shuffle_poly (shuffle_poly_name, base, offset):
    for i in range (8):
        print ('{0}{1}{2} ='.format (shuffle_poly_name, offset, i))
        for j in range (16):
            print ('L0x{0:x}*x**{1:2}'.format (base + 2*(128*i+16*offset+j), j),
                   end = '\n' if i == 7 and j == 15 else
                         (',\n' if j == 15 else
                          ('+\n' if j % 3 == 2 else '+')))
        
def print_algebraic_condition68 (shuffle_poly_name, out_poly_name, offset):
    num_rings = 2**3
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (num_rings):
        print ('eqmod ({0}{1}) (8*{2}{1}{3}) '.
               format (out_poly_name, offset, shuffle_poly_name, i),
               end = '')
        print ('[{0}, x**128 - {1}]'.format (P, revexps[i]),
               end = '\n' if i == num_rings - 1 else ',\n')
        
def print_out_poly (out_poly_name):
    for i in range (8):
        print ('{0}{1}*x**{2:3}'.format (out_poly_name, i, 16*i),
               end = '\n' if i == 7 else
                     ('+\n' if i % 4 == 3 else '+'))
        
def print_algebraic_postcondition (inp_poly_name, out_poly_name):
    num_rings = 2**(8+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (num_rings):
        print ('eqmod ({2}) (512*{0}{1:03x}**2) '.
               format (inp_poly_name, i, out_poly_name),
               end = '')
        print ('[{0}, x**2 - {1}]'.format (P, revexps[i]),
               end = '\n' if i == num_rings - 1 else ',\n')

def print_range_postcondition (base, bound):
    for i in range (1024):
        print ('(-{0})@16 <=s L0x{1:x}, L0x{1:x} <=s {0}@16'.
               format (bound, base + 2*i),
               end = '\n' if i == 1023 else ',\n')
        
cut_counter = 0
inp_poly_cuts = []
out_poly_cuts = []
post_cuts = []

print ('\n\n\n(**************** parameters *****************)\n')
print_parameters ('inp_poly', inp_base)

print ('\n\n\n(**************** precondition *****************)\n')
print ('and [')
for offset in range (8):
    print_algebraic_precondition ('inp_poly', inp_base, offset)
    print ('] && and [' if offset == 7 else ',')
#print_range_precondition (inp_base, 3960)
print (']')

for offset in range (8):
    print ('\n\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    print_algebraic_precondition ('inp_poly', inp_base, offset)
    print ('] prove with [ precondition ];')
    cut_counter += 1

print ('\n\n\n(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut true;')
cut_counter += 1
    
print ('\n\n\n(**************** constants *****************)\n')
print_constants (const_base, pdata10753)

print ('\n\n\n(**************** indices *****************)\n')
print_indices (idx_base, idxdata)

for offset in range (8):
    print ('\n\n\n(**************** LEVELS 0-5, {0} *****************)\n'.
           format (offset))
    print ('ghost segment{0}@bit :'.format (offset))
    print_segment ('segment', out_base, offset)
    print ('&& true;\n\n')

    # additional cut at LEVEL 3
    cut_counter += 1
    print ('(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('cut and [')
    print_algebraic_condition05 ('inp_poly', 'segment', offset)
#    print (',')
#    print_segment ('segment{0}'.format (offset), out_base, offset)
    print ('] prove with [ cuts [ {0} ] ] &&'.format (offset))
    cut_counter += 1

    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    print_algebraic_condition05 ('inp_poly', 'segment', offset)
    print ('];')
    inp_poly_cuts.append (cut_counter)
    cut_counter += 1
    
#    print ('\n\n(**************** CUT {0:3} *****************)\n'.
#           format (cut_counter))
#    print ('ecut and [')
#    print_segment ('segment{0}'.format (offset), out_base, offset)
#    print ('] prove with [ cuts [ {0} ] ];'.format (cut_counter - 2))
#    segment_cuts.append (cut_counter)
#    cut_counter += 1
    
    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut true;')
    cut_counter += 1

print ('\n\n\n(**************** shuffle poly 0 *****************)\n')
print ('ghost ', end = '')
for i in range (8):
    print ('shuf_poly0{0}@bit'.format (i),
           end = ' : and [\n' if i == 7 else
                 (',\n      ' if i % 4 == 3 else ', '))
print_shuffle_poly ('shuf_poly', out_base, 0)
print ('] && true;')

for offset in range (8):
    print ('\n\n\n(**************** LEVELS 6-8, {0} *****************)\n'.
           format (offset))
    print ('ghost out_poly{0}@bit,'.format (offset))
    for i in range (8):
        print ('out_poly{0}{1}@bit'.format (offset, i),
               end = ' : and [\n' if i == 7 else
                     (',\n' if i % 4 == 3 else ', '))
    print_shuffle_poly ('out_poly', out_base, offset)
    print (',')
    print ('out_poly{0} ='.format (offset))
    for i in range (8):
        print ('out_poly{0}{1}*x**{2:3}'.format (offset, i, 128*i),
               end = ']\n&& true;\n' if i == 7 else
                     ('+\n' if i % 4 == 3 else '+'))
    
    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    print_algebraic_condition68 ('shuf_poly', 'out_poly', offset)
#    print (',')
#    print_shuffle_poly ('out_poly', out_base, offset)
#    print (',')
#    print ('out_poly{0}**2 ='.format (offset))
#    for i in range (8):
#        print ('out_poly{0}{1}**2*x**{2:3}'.format (offset, i, 128*i),
#               end = '];\n' if i == 7 else
#                     ('+\n' if i % 4 == 3 else '+'))
    print ('];')
    out_poly_cuts.append (cut_counter)
    cut_counter += 1

    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut true;')
    cut_counter += 1

    if offset < 7:
        print ('\n\n\n(**************** shuffle poly {0} *****************)\n'.
               format (offset + 1))
        print ('ghost ', end = '')
        for i in range (8):
            print ('shuf_poly{0}{1}@bit'.format (offset + 1, i),
                   end = ' : and [\n' if i == 7 else
                         (',\n      ' if i % 4 == 3 else ', '))
        print_shuffle_poly ('shuf_poly', out_base, offset + 1)
        print ('] && true;')

print ('\n\n\n(**************** prepare *****************)\n')
num_rings = 2**3
exps = [ i for i in range (num_rings) ]
exprevbits = map (lambda e :
                  list (reversed (nttlib.num_to_bits (e, 9))),
                  exps)
revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                     exprevbits))
for i in range (num_rings):
    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    for j in range (8):
        print ('eqmod ({0}{3}) (8*{2}{3}{1}) [{4}, x**128 - {5}],'.
               format ('out_poly', i, 'shuf_poly', j, P, revexps[i]))
    print ('segment{0} ='.format (i))
    for j in range (8):
        print ('{0}{1}{2}*x**{3:2}'.
               format ('shuf_poly', j, i, 16*j),
               end = '\n' if j == 7 else
                     ('+\n' if j % 3 == 2 else '+'))
    print ('] prove with [ all ghosts, cuts [ ', end = '')
    for j in range (len (out_poly_cuts)):
        print ('{0}'.format (out_poly_cuts[j]),
               end = '' if j == len (out_poly_cuts) - 1 else ', ')
    print (' ] ];')
    cut_counter += 1

print ('\n\n(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut true;')
cut_counter += 1

print ('\n\n\n(**************** output poly *****************)\n')
print ('ghost out_poly@bit : out_poly =')
print_out_poly ('out_poly')
print ('&& true;')

num_rings = 2**9
exps = [ i for i in range (num_rings) ]
exprevbits = map (lambda e :
                  list (reversed (nttlib.num_to_bits (e, 9))),
                  exps)
revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                     exprevbits))
for i in range (8):
    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    for j in range (64):
        print ('eqmod {0} (512*{1}{2:03x}**2) [{3}, x**2 - {4}],'.
               format ('out_poly', 'inp_poly', 64*i+j, P, revexps[64*i+j]))
    print ('out_poly =')
    print_out_poly ('out_poly')
    print ('] prove with [ cuts [ {0}, {1} ] ];'.
           format (inp_poly_cuts[i], 49+i))
    post_cuts.append (cut_counter)
    cut_counter += 1
        

print ('\n\n\n(**************** postcondition *****************)\n')
print ('and [')
print_algebraic_postcondition ('inp_poly', 'out_poly')
print ('] prove with [ cuts [ ', end = '')
for j in range (len (post_cuts)):
    print ('{0}'.format (post_cuts[j]),
           end = '' if j == len(post_cuts) - 1 else ', ')
print (' ] ] && and [')
print_range_postcondition (out_base, 28155)
print (']')

