#!/usr/bin/python3

q = 3329
root = 17
R = (2**16) % q
base = 0x2001a730

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

def print_twiddles ():
    twiddles = [
        # 7 & 6 & 5 layers
        2571, 2970, 1812, 1493, 1422, 287, 202,
        # 1st loop of 4 & 3 & 2 layers
        3158, 573, 2004, 1223, 652, 2777, 1015,
        # 2nd loop of 4 & 3 & 2 layers
        622, 264, 383, 2036, 1491, 3047, 1785,
        # 3rd loop of 4 & 3 & 2 layers
        1577, 2500, 1458, 516, 3321, 3009, 2663,
        # 4th loop of 4 & 3 & 2 layers
        182, 1727, 3199, 1711, 2167, 126, 1469,
        # 5th loop of 4 & 3 & 2 layers
        962, 2648, 1017, 2476, 3239, 3058, 830,
        # 6th loop of 4 & 3 & 2 layers
        2127, 732, 608, 107, 1908, 3082, 2378,
        # 7th loop of 4 & 3 & 2 layers
        1855, 1787, 411, 2931, 961, 1821, 2604,
        # 8th loop of 4 & 3 & 2 layers
        1468, 3124, 1758, 448, 2264, 677, 2054,
        # 1 layer
        2226,  430,  555,  843, 2078,  871, 1550,  105,  422,  587,
         177, 3094, 3038, 2869, 1574, 1653, 3083,  778, 1159, 3182,
        2552, 1483, 2727, 1119, 1739,  644, 2457,  349,  418,  329,
        3173, 3254,  817, 1097,  603,  610, 1322, 2044, 1864,  384,
        2114, 3193, 1218, 1994, 2455,  220, 2142, 1670, 2144, 1799,
        2051,  794, 1819, 2475, 2459,  478, 3221, 3021,  996,  991,
         958, 1869, 1522, 1628]
    base = 0x800e4d4
    print ("\n\n\n(* twiddles *)\n")
    for i in range (0, len (twiddles) - 1, 2):
        print ("mov L0x{0:x} {1:4d}@sint16; mov L0x{2:x} {3:4d}@sint16;".
               format (base + 2*i, twiddles[i],
                       base + 2*i + 2, twiddles[i+1]))
    print ("mov L0x{0:x} {1:4d}@sint16;".
           format (base + 2*i + 4, twiddles[i + 2]))

def print_args ():
    print ("\n\n\n(* parameters *)\n")
    print ("sint16 x,")
    for i in range (0, 256, 4):
        print ("sint16 f{0:03d}, sint16 f{1:03d}, sint16 f{2:03d}, sint16 f{3:03d}{4}".
               format (i, i+1, i+2, i+3, "," if i < 252 else ""))

def print_inits ():
    print ("\n\n\n(* inits *)\n")
    print ("nondet r0_b@uint16;\nnondet r1_b@uint16;")
    for i in range (0, 256, 2):
        print ("mov L0x{0:x} f{1:03d}; mov L0x{2:x} f{3:03d};".
               format (base+2*i, i, base+2*i+2, i+1))

def print_range ():
    print ("\n\n\n(* range *)\n")
    print ("and [")
    for i in range (0, 256):
        print ("(-3329)@16 <=s f{0:03d}, f{0:03d} <s 3329@16{1}".
               format (i, "," if i < 255 else ""))
    print ("]")

def print_poly ():
    print ("\n\n\n(* inp_poly *)\n")
    print ("inp_poly * inp_poly = ")
    for i in range (0, 256, 4):
        print ("f{0:03d}*(x**{0}) + f{1:03d}*(x**{1}) + ".
               format (i, i+1), end='')
        print ("f{0:03d}*(x**{0}) + f{1:03d}*(x**{1}){2}".
               format (i+2, i+3, " +" if i < 252 else ""))
    
def mid_algebraic_condition (stage):
    num_rings = 2**stage
    num_coeffs = 256 // num_rings
    for i in range (num_rings, 2 * num_rings):
        l = num_to_bits (i, 8)
        l.reverse ()
        e = bits_to_num (l)
        modulo = (root**e) % q
        print ("eqmod ")
        ring_base = num_coeffs * (i - num_rings)
        print ("(inp_poly * inp_poly)\n(")
        for j in range (ring_base, ring_base + num_coeffs):
            print ("L0x{0:x}*(x**{1}){2}".
                   format (base + 2*j, j - ring_base,
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end = '')
            if (j - ring_base) % 2 == 1: print ("")
        print (")")
        print ("[{0}, x**{1} - {2}]".
               format (q, num_coeffs, modulo), end = '')
        print ("{0}".format (',' if i < 2 * num_rings - 1 else ''))

def mid_range_condition (f):
    for i in range (256):
        print ('   (-{0})@16 * {1}@16 <s L0x{2:x}, L0x{2:x} <s {0}@16 * {1}@16{3}'.
               format (f, q, base + 2 * i, ',' if i < 255 else ''))

def barrett_ghosts (n):
    print ("ghost ")
    for i in range (2, 10, 2):
        print ("r{0}_b{2:02d}@sint16, r{0}_t{2:02d}@sint16, r{1}_b{2:02d}@sint16, r{1}_t{2:02d}@sint16{3}".
               format (i, i+1, n, "," if i < 8 else " :"))
    print ("and [")
    for i in range (2, 10, 2):
        print ("r{0}_b{2:02d} = r{0}_b, r{0}_t{2:02d} = r{0}_t, r{1}_b{2:02d} = r{1}_b, r{1}_b{2:02d} = r{1}_t{3}".
               format (i, i+1, n, "," if i < 8 else "] &&"))
    print ("and [")
    for i in range (2, 10, 2):
        print ("r{0}_b{2:02d} = r{0}_b, r{0}_t{2:02d} = r{0}_t, r{1}_b{2:02d} = r{1}_b, r{1}_b{2:02d} = r{1}_t{3}".
               format (i, i+1, n, "," if i < 8 else "];"))

def barrett_assertions (n):
    for i in range (2, 9):
        print ("assert true && eqsmod r{0}_b r{0}_b{1:02d} (3329@16);".
               format (i, n))
        print ("assert true && eqsmod r{0}_t r{0}_t{1:02d} (3329@16);".
               format (i, n))
    print ("assume and [")
    for i in range (2, 9):
        print ("    eqmod r{0}_b r{0}_b{1:02d} 3329, eqmod r{0}_t r{0}_t{1:02d} 3329{2}".
               format (i, n, "," if i < 8 else "] && true;"))

        
print_args ()
print_range ()
print_inits ()
print_twiddles ()
print ("ghost inp_poly@bit :")
print_poly ()
print (" && true;")
print ("\n\n\n(* LAYER 5 *)\n")
print ("cut")
print ("and [")
mid_algebraic_condition (3)
print ("]")
print ("&&")
print ("and [")
mid_range_condition (3)
print ("];")
print ("\n\n\n(* LAYER 2 *)\n")
print ("cut")
print ("and [")
mid_algebraic_condition (6)
print ("]")
print ("&&")
print ("and [")
mid_range_condition (6)
print ("];")

print ("\n\n\n(* barrett ghost variables *)\n")
barrett_ghosts (0)
print ("\n\n\n(* barrett assertions *)\n")
barrett_assertions (0)

print ("\n\n\n(* post-condition *)\n")
print ("and [")
mid_algebraic_condition (7)
print ("]")
print ("&&")
print ("and [")
mid_range_condition (1)
print ("];")

