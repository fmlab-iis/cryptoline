
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
inp_base   = 0x7fffffffcae0
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

def print_parameters (inp_poly_name, cname):
    print ('bit x, bit {0},'.format (inp_poly_name))
    for i in range (32):
        print ('bit {0}{1:02}'.format (inp_poly_name, i),
               end = ',\n' if i % 4 == 3 else ', ')
    for i in range (512):
        print ('sint16 {0}{1:03x}'.format (cname, i),
               end = '\n' if i == 511 else
                     (',\n' if i % 5 == 4 else ', '))
        
def print_range_precondition (cname, bound):
    for i in range (512):
        print ('(-{0})@16<=s {1}{2:03x},{1}{2:03x}<s {0}@16'.
               format (bound, cname, i),
               end = '\n' if i == 511 else
                     (',\n' if i % 2 == 1 else ','))

def print_initialization (base, cname):
    for i in range (512):
        print ('mov L0x{0:x} {1}{2:03x};'.format (base + 2*i, cname, i),
               end = '\n' if i % 3 == 2 or i == 1023 else ' ')

def print_constants (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} ({1:6})@sint16;'.format (base + 2*i, consts[i]),
               end = '\n' if i % 2 == 1 or i == len (consts) - 1 else ' ')

def print_indices (base, idx):
    for i in range (len (idx) // 2):
        print ('mov L0x{0:x} (0x{1:04x})@sint16;'.
               format (base + 2*i, 0x100*idx[2*i+1] + idx[2*i]),
               end = '\n' if i % 2 == 1 or i == len (idx) - 1 else ' ')

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

def _print_algebraic_condition02 (cname, indices, offset):
    num_rings = 2**(2+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (num_rings):
        print ('eqmod (', end = '')
        for j in range (4):
            for k in range (16):
                print ('{0}{1:03x}*x**{1:3}'.
                       format (cname, 0x80*j + 16*offset + k),
                       end = ')\n      (' if j == 3 and k == 15 else
                             ('+\n       ' if k % 4 == 3 else '+'))
        for k in range (16):
            print ('ymm{0}_{1:x}*x**{2:2}'.
                   format (indices[i], k, 16*offset + k),
                   end = ')\n      ' if k == 15 else
                         ('+\n       ' if k % 4 == 3 else '+'))
        print ('[{0}, x**128 - {1}]'.format (P, revexps[i]),
               end = '\n' if i == num_rings - 1 else ',\n')

def print_algebraic_condition02 (cname, base, offset):
    num_rings = 2**(2+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (num_rings):
        print ('eqmod (', end = '')
        for j in range (4):
            for k in range (16):
                print ('{0}{1:03x}*x**{1:3}'.
                       format (cname, 0x80*j + 16*offset + k),
                       end = ')\n      (' if j == 3 and k == 15 else
                             ('+\n       ' if k % 4 == 3 else '+'))
        for k in range (16):
            print ('L0x{0:x}*x**{1:2}'.
                   format (base + 2*(128*offset + 128*i + k), 16*offset + k),
                   end = ')\n      ' if k == 15 else
                         ('+\n       ' if k % 3 == 2 else '+'))
        print ('[{0}, x**128 - {1}]'.format (P, revexps[i]),
               end = '\n' if i == num_rings - 1 else ',\n')
        
def print_algebraic_condition3 (base, indices, offset):
    num_rings = 2**(3+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (2):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for j in range (4):
            for k in range (16):
                print ('ymm{0}_{1:x}*x**{2:2}'.
                       format (indices[i][j], k, 16*j+k),
                       end = ')\n      ' if j == 3 and k == 15 else
                             ('+\n       ' if k % 4 == 3 else '+'))
        print ('[{0}, x**64 - {1}]'.format (P, revexps[2*offset+i]),
               end = '\n' if i == 1 else ',\n')
        
def print_algebraic_condition34 (base, indices, offset):
    num_rings = 2**(4+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (4):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for j in range (2):
            for k in range (16):
                print ('ymm{0}_{1:x}*x**{2:2}'.
                       format (indices[i][j], k, 16*j+k),
                       end = ')\n      ' if j == 1 and k == 15 else
                             ('+\n       ' if k % 4 == 3 else '+'))
        print ('[{0}, x**32 - {1}]'.format (P, revexps[4*offset+i]),
               end = '\n' if i == 3 else ',\n')

def print_algebraic_condition35 (base, indices, offset):
    num_rings = 2**(5+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (8):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for k in range (16):
            print ('ymm{0}_{1:x}*x**{1:2}'.
                   format (indices[i], k),
                   end = ')\n      ' if k == 15 else
                         ('+\n       ' if k % 4 == 3 else '+'))
        print ('[{0}, x**16 - {1}]'.format (P, revexps[8*offset+i]),
               end = '\n' if i == 7 else ',\n')

def print_algebraic_condition36 (base, indices, offset):
    num_rings = 2**(6+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    for i in range (16):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for k in range (8):
            # 0 8 2 a 4 c 6 e or 1 9 3 b 5 d 7 f
            print ('ymm{0}_{1:x}*x**{2:2}'.
                   format (indices[2*(i//4)+i%2], 8*(k%2)+k-(k%2)+(1 if i%4 > 1 else 0), k),
                   end = ')\n      ' if k == 7 else
                         ('+\n       ' if k % 4 == 3 else '+'))
        print ('[{0}, x**8 - {1}]'.format (P, revexps[16*offset+i]),
               end = '\n' if i == 15 else ',\n')

def print_algebraic_condition37 (base, indices, offset):
    num_rings = 2**(7+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    limbs = [ [0, 8, 4, 12], [1, 9, 5, 13], [2, 10, 6, 14], [3, 11, 7, 15] ]
    for i in range (32):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for k in range (4):
            print ('ymm{0}_{1:x}*x**{2:2}'.
                   format (indices[2*(i//8)+i%2], limbs[(i//2)%4][k], k),
                   end = ')\n      ' if k == 3 else '+')
        print ('[{0}, x**4 - {1}]'.format (P, revexps[32*offset+i]),
               end = '\n' if i == 31 else ',\n')

def print_mid_results (base, offset):
    print ('ghost')
    for i in range (128):
        print ('L0x{0:x}o@sint16'.format (base + 2*(128*offset + i)),
               end = ' : and [\n' if i == 127 else
                     (',\n' if i % 3 == 2 else ', '))
    for i in range (128):
        print ('L0x{0:x}o = L0x{0:x}'.
               format (base + 2*(128*offset + i)),
               end = '\n] && true;\n' if i == 127 else
                     (',\n' if i % 2 == 1 else ', '))
        
def _print_algebraic_condition38 (base, indices, offset):
    num_rings = 2**(8+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    limbs = [ [0, 8], [1, 9], [2, 10], [3, 11], [4, 12], [5, 13], [6, 14], [7, 15] ]
    for i in range (64):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for k in range (2):
            print ('ymm{0}_{1:x}*x**{2:2}'.
                   format (indices[2*(i//16)+i%2], limbs[(i//2)%8][k], k),
                   end = ') ' if k == 1 else '+')
        print ('[{0}, x**2 - {1}]'.format (P, revexps[64*offset+i]),
               end = '\n' if i == 63 else ',\n')

def __print_algebraic_condition38 (base, offset):
    num_rings = 2**(8+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    limbs = [ [0, 8], [1, 9], [2, 10], [3, 11], [4, 12], [5, 13], [6, 14], [7, 15] ]
    for i in range (64):
        print ('eqmod (', end = '')
        for j in range (128):
            print ('L0x{0:x}o*x**{1:3}'.
                   format (base + 2*(128*offset + j), j),
                   end = ')\n      (' if j == 127 else
                         ('+\n       ' if j % 3 == 2 else '+'))
        for k in range (2):
            print ('L0x{0:x}*x**{1:2}'.
                   format (base +
                           2*(128*offset +
                              16*(2*(i//16)+i%2)+
                              limbs[(i//2)%8][k]), k),
                   end = ') ' if k == 1 else '+')
        print ('[{0}, x**2 - {1}]'.format (P, revexps[64*offset+i]),
               end = '\n' if i == 63 else ',\n')

def print_algebraic_condition38 (inp_poly_name, base, offset):
    num_rings = 2**(8+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    limbs = [ [0, 8], [1, 9], [2, 10], [3, 11], [4, 12], [5, 13], [6, 14], [7, 15] ]
    for i in range (64):
        print ('eqmod ({0}**2) ('.format (inp_poly_name), end = '')
        for k in range (2):
            print ('L0x{0:x}*x**{1:2}'.
                   format (base +
                           2*(128*offset +
                              16*(2*(i//16)+i%2)+
                              limbs[(i//2)%8][k]), k),
                   end = ')\n      ' if k == 1 else '+')
        print ('[{0}, x**2 - {1}]'.format (P, revexps[64*offset+i]),
               end = '\n' if i == 63 else ',\n')
        
def print_algebraic_postcondition (inp_poly_name, base, offset):
    num_rings = 2**(8+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    limbs = [ [0, 8], [1, 9], [2, 10], [3, 11], [4, 12], [5, 13], [6, 14], [7, 15] ]
    for i in range (64):
        print ('eqmod ({0}**2) ('.format (inp_poly_name),
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

def print_range_postcondition (base, factor):
    for i in range (1024):
        print ('(-{0})@16 <=s L0x{1:x}, L0x{1:x} <s {0}@16'.
               format ((P//2)*factor, base + 2*i),
               end = '\n' if i == 1023 else ',\n')
        
def print_algebraic_condition (inp_poly_name, indices, level, offset):
    exps = [ i for i in range (2**(level+1)) ]
    exprevbits = map (lambda e :
                      list (reversed (nttlib.num_to_bits (e, 9))),
                      exps)
    revexps = list (map (lambda b : (ZETA**(nttlib.bits_to_num (b)))%P,
                         exprevbits))
    slice_size = 16
    coefficients = ymm2coeffs (indices, slice_size)
    degree = 1024//(2**(level+1))
    coeffidx = 0
    for i in range (len (revexps)):
        modulus = revexps[i]
        print ('eqmod ({0}{1:02}**2)'.format (inp_poly_name, offset))
        coeffidx = (2**(level+1)) * (i//(2**(level+1)))
        for j in range (0, 16):
            print ('{0}*(x**{1})'.
                   format (coefficients[coeffidx], j,
                           '(' if j == 0 else ''),
                   end = ')\n' if j == degree - 1 else
                              (' +\n ' if j % 4 == 3 else ' + '))
            coeffidx += 1
        print ('[{0}, x - {1}]{2}'.
               format (P, modulus,
                       ',' if i < len (revexps) - 1 else ']'))

        
cut_counter = 0

print ('\n\n\n(**************** parameters *****************)\n')
print_parameters ('inp_poly', 'c')

print ('\n\n\n(**************** precondition *****************)\n')
print ('and [')
nttlib.print_poly ('inp_poly', lambda i: 'c{0:03x}'.format (i), 512, 32)
print ('] && and [')
print_range_precondition ('c', 512)
print (']')

print ('\n\n\n(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut true;')
cut_counter += 1

print ('\n\n\n(**************** initialization *****************)\n')
print_initialization (inp_base, 'c')

print ('\n\n\n(**************** constants *****************)\n')
print_constants (const_base, pdata10753)

print ('\n\n\n(**************** indices *****************)\n')
print_indices (idx_base, idxdata)

for offset in range (8):
    print ('\n\n\n(**************** LEVELS 0-2, {0} *****************)\n'.
           format (offset))
    print ('(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
#    print_algebraic_condition02 ('c', [5, 4, 3, 7, 6, 9, 8, 11], offset)
    print_algebraic_condition02 ('c', out_base, offset)
    print ('];')
    cut_counter += 1

"""
print ('\n\n\n(**************** LEVELS 3, 0 *****************)\n')
print ('(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut and [')
print_algebraic_condition3 (out_base, [[3, 4, 5, 6], [8, 9, 10, 11]], 0)
print ('];')
cut_counter += 1
"""

"""
print ('\n\n\n(**************** LEVELS 3-4, 0 *****************)\n')
print ('(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut and [')
print_algebraic_condition34 (out_base, [[7, 3], [5, 6], [4, 8], [10, 11]], 0)
print ('];')
cut_counter += 1
"""

"""
print ('\n\n\n(**************** LEVELS 3-5, 0 *****************)\n')
print ('(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut and [')
print_algebraic_condition35 (out_base, [9, 3, 7, 6, 5, 8, 4, 11], 0)
print ('];')
cut_counter += 1
"""

"""
print ('\n\n\n(**************** LEVELS 3-6, 0 *****************)\n')
print ('(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut and [')
print_algebraic_condition36 (out_base, [4, 3, 10, 6, 9, 8, 7, 11], 0)
print ('];')
cut_counter += 1
"""

"""
print ('\n\n\n(**************** LEVELS 3-7, 0 *****************)\n')
print ('(**************** CUT {0:3} *****************)\n'.
       format (cut_counter))
print ('ecut and [')
print_algebraic_condition37 (out_base, [7, 3, 5, 6, 4, 8, 10, 11], 0)
print ('];')
cut_counter += 1
"""

print ('\n\n\n(**************** mid results 0 *****************)\n')
print_mid_results (out_base, 0);

for offset in range (8):
    print ('\n\n\n(**************** LEVELS 3-8, {0} *****************)\n'.
           format (offset))
    print ('(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    # print_algebraic_condition38 (out_base, [10, 3, 9, 6, 7, 8, 5, 11], 0)
    print_algebraic_condition38 ('inp_poly', out_base, offset)
    print ('] prove with [precondition, cuts [ 1, 2, 3, 4, 5, 6, 7, 8 ] ];')
    cut_counter += 1

    print ('\n\n(**************** CUT {0:3} *****************)\n'.
           format (cut_counter))
    print ('ecut true;')
    cut_counter += 1

print ('\n\n\n(**************** postcondition *****************)\n')
print ('and [')
for offset in range (8):
    print_algebraic_postcondition ('inp_poly', out_base, offset)
    print ('' if offset == 7 else ',')
print ('] prove with [')
print ('cuts [ 9, 11, 13, 15, 17, 19, 21, 23 ]')
print ('] && and [')
print_range_postcondition (out_base, 6)
print (']')
