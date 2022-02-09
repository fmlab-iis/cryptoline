import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

NTRU_N = 509
Q = 1043969
Qinv = 1993076223
zeta = 3
omega = (zeta**((Q-1)//256))%Q

inp_base = 0x2001afc8
out_base = 0x200187c8
const_base = 0x8007418

indices = [
      3, 259,   4, 260,   5, 261,   6, 262,   7, 263,   8, 264,
      9, 265,  10, 266,  11, 267,  12, 268,  13, 269,  14, 270,
     15, 271,  16, 272,  17, 273,  18, 274,  19, 275,  20, 276,
     21, 277,  22, 278,  23, 279,  24, 280,  25, 281,  26, 282,
     27, 283,  28, 284,  29, 285,  30, 286,  31, 287,  32, 288,
     33, 289,  34, 290,  35, 291,  36, 292,  37, 293,  38, 294,
     39, 295,  40, 296,  41, 297,  42, 298,  43, 299,  44, 300,
     45, 301,  46, 302,  47, 303,  48, 304,  49, 305,  50, 306,
     51, 307,  52, 308,  53, 309,  54, 310,  55, 311,  56, 312,
     57, 313,  58, 314,  59, 315,  60, 316,  61, 317,  62, 318,
     63, 319,  64, 320,  65, 321,  66, 322,  67, 323,  68, 324,
     69, 325,  70, 326,  71, 327,  72, 328,  73, 329,  74, 330,
     75, 331,  76, 332,  77, 333,  78, 334,  79, 335,  80, 336,
     81, 337,  82, 338,  83, 339,  84, 340,  85, 341,  86, 342,
     87, 343,  88, 344,  89, 345,  90, 346,  91, 347,  92, 348,
     93, 349,  94, 350,  95, 351,  96, 352,  97, 353,  98, 354,
     99, 355, 100, 356, 101, 357, 102, 358, 103, 359, 104, 360,
    105, 361, 106, 362, 107, 363, 108, 364, 109, 365, 110, 366,
    111, 367, 112, 368, 113, 369, 114, 370, 115, 371, 116, 372,
    117, 373, 118, 374, 119, 375, 120, 376, 121, 377, 122, 378,
    123, 379, 124, 380, 125, 381, 126, 382, 127, 383, 128, 384,
    129, 385, 130, 386, 131, 387, 132, 388, 133, 389, 134, 390,
    135, 391, 136, 392, 137, 393, 138, 394, 139, 395, 140, 396,
    141, 397, 142, 398, 143, 399, 144, 400, 145, 401, 146, 402,
    147, 403, 148, 404, 149, 405, 150, 406, 151, 407, 152, 408,
    153, 409, 154, 410, 155, 411, 156, 412, 157, 413, 158, 414,
    159, 415, 160, 416, 161, 417, 162, 418, 163, 419, 164, 420,
    165, 421, 166, 422, 167, 423, 168, 424, 169, 425, 170, 426,
    171, 427, 172, 428, 173, 429, 174, 430, 175, 431, 176, 432,
    177, 433, 178, 434, 179, 435, 180, 436, 181, 437, 182, 438,
    183, 439, 184, 440, 185, 441, 186, 442, 187, 443, 188, 444,
    189, 445, 190, 446, 191, 447, 192, 448, 193, 449, 194, 450,
    195, 451, 196, 452, 197, 453, 198, 454, 199, 455, 200, 456,
    201, 457, 202, 458, 203, 459, 204, 460, 205, 461, 206, 462,
    207, 463, 208, 464, 209, 465, 210, 466, 211, 467, 212, 468,
    213, 469, 214, 470, 215, 471, 216, 472, 217, 473, 218, 474,
    219, 475, 220, 476, 221, 477, 222, 478, 223, 479, 224, 480,
    225, 481, 226, 482, 227, 483, 228, 484, 229, 485, 230, 486,
    231, 487, 232, 488, 233, 489, 234, 490, 235, 491, 236, 492,
    237, 493, 238, 494, 239, 495, 240, 496, 241, 497, 242, 498,
    243, 499, 244, 500, 245, 501, 246, 502, 247, 503, 248, 504,
    249, 505, 250, 506, 251, 507, 252, 508,
    253,   0, 254,   1, 255,   2, 256, 257, 258  
]

import nttlib

def print_coeff_ghosts (cname, degree, regs):
    print ('ghost {0}{1:04}@sint32,{0}{2:04}@sint32,'.
           format (cname, degree, degree + 256), end = '')
    print (      '{0}{1:04}@sint32,{0}{2:04}@sint32 :'.
                 format (cname, degree + 512, degree + 768))
    print ('and [{0}{1:04}={3}, {0}{2:04}={4}, '.
           format (cname, degree, degree + 256, regs[0], regs[1]),
           end = '')
    print (     '{0}{1:04}={3}, {0}{2:04}={4}] && true;\n'.
                format (cname, degree + 512, degree + 768, regs[2], regs[3]))

def print_poly (cname, degree):
    for i in range (0, 4):
        print ('{0}{1:04}*x**{1:3}'.format (cname, degree+256*i),
               end = '' if i == 3 else '+')

def print_ecut (cname, inp_base, degree):
    print ('eqmod (', end = '')
    print_poly (cname, degree)
    print (')\n      (4*L0x{0:x}*x**{1:3}) [1043969, x**256 - 1],'.
           format (inp_base + 4*degree, degree))
    print ('eqmod (', end = '')
    print_poly (cname, degree)
    print (')\n      (4*L0x{0:x}*x**{1:3}) [1043969, x**256 + 1],'.
           format (inp_base + 4*(degree + 256), degree))
    print ('eqmod (', end = '')
    print_poly (cname, degree)
    print (')\n      (4*L0x{0:x}*x**{1:3}) [1043969, x**256 - 554923],'.
           format (inp_base + 4*(degree + 512), degree))
    print ('eqmod (', end = '')
    print_poly (cname, degree)
    print (')\n      (4*L0x{0:x}*x**{1:3}) [1043969, x**256 + 554923]'.
           format (inp_base + 4*(degree + 768), degree))

cf_pat = re.compile ('ghost cfIDX@sint32.*')
cut1_pat = re.compile ('.*#! PC = 0x800258c \*\)')
cut2_pat = re.compile ('.*#! PC = 0x80025cc \*\)')
cut3_pat = re.compile ('.*#! PC = 0x800260c \*\)')
cut_pat = re.compile ('.*#! PC = (0x800265c|0x80026e4|0x800276c|0x8002810|0x8002898|0x8002934|0x80029e0) \*\)')
cf_counter = 0
cut_counter = 9
degree = 0
with open (clname) as file_in:
    for line in file_in:
        if cf_pat.match (line):
            idx = indices[cf_counter]
            print (line.replace ('cfIDX', 'cf{0:03}'.format (idx)))
            if cf_counter %2 == 1 and cf_counter < 506:
                print ('(******************** CUT {0:3} ********************)'.
                       format (cut_counter))
                idx1 = indices[cf_counter - 1]
                print ('ecut and [')
                print ('eqmod 256*cf{0:03} 2**32*(c{0:04}+c{1:04}) {2},'.
                       format (idx1, 509 + idx1, Q))
                if cf_counter < 500:
                    print ('eqmod 256*cf{0:03} 2**32*(c{0:04}+c{1:04}) {2}'.
                           format (idx, 509 + idx, Q))
                else:
                    print ('eqmod 256*cf{0:03} 2**32*(c{0:04}+c{1:04}+c{2:04}) {3}'.
                           format (idx, 509 + idx, 2*509 + idx, Q))
                print ('] prove with [ all ghosts ];\n')
                cut_counter += 1
            elif cf_counter == 508:
                print ('(******************** CUT {0:3} ********************)'.
                       format (cut_counter))
                idx2 = indices[cf_counter - 2]
                idx1 = indices[cf_counter - 1]
                print ('ecut and [')
                print ('eqmod 256*cf{0:03} 2**32*(c{0:04}+c{1:04}) {2},'.
                       format (idx2, 509 + idx2, Q))
                print ('eqmod 256*cf{0:03} 2**32*(c{0:04}+c{1:04}) {2},'.
                       format (idx1, 509 + idx1, Q))
                print ('eqmod 256*cf{0:03} 2**32*(c{0:04}+c{1:04}) {2}'.
                       format (idx, 509 + idx, Q))
                print ('] prove with [ all ghosts ];\n')
                cut_counter += 1
            cf_counter += 1
        elif cut_pat.match (line):
            print ('\n\n(******************** CUT {0:3} ********************)\n'.
                   format (cut_counter))
            print_coeff_ghosts ('c', degree, ['r4', 'r5', 'r6', 'r7'])
            print ('ecut and [')
            print_ecut ('c', inp_base, degree)
            print ('];\n\n')
            print (line, end='')
            degree += 1
            cut_counter += 1
        elif cut1_pat.match (line):
            print ('\n\n(******************** CUT {0:3} ********************)\n'.
                   format (cut_counter))
            print_coeff_ghosts ('c', degree, ['s4', 's5', 's6', 's7'])
            print ('ecut and [')
            print_ecut ('c', inp_base, degree)
            print ('];\n\n')
            print (line, end='')
            degree += 1            
            cut_counter += 1
        elif cut2_pat.match (line):
            print ('\n\n(******************** CUT {0:3} ********************)\n'.
                   format (cut_counter))
            print_coeff_ghosts ('c', degree, ['s8', 's9', 's10', 's11'])
            print ('ecut and [')
            print_ecut ('c', inp_base, degree)
            print ('];\n\n')
            print (line, end='')
            degree += 1
            cut_counter += 1
        elif cut3_pat.match (line):
            print ('\n\n(******************** CUT {0:3} ********************)\n'.
                   format (cut_counter))
            print_coeff_ghosts ('c', degree, ['s12', 's13', 's14', 's15'])
            print ('ecut and [')
            print_ecut ('c', inp_base, degree)
            print ('];\n\n')
            print (line, end='')
            degree += 1
            cut_counter += 1
        else:
            print (line, end='')
