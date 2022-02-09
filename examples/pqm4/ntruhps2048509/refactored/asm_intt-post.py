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

inp_base = 0x2001afd0
out_base = 0x2001afd0
const_base = 0x8007418

import nttlib
exps = [ i for i in range (256) ]
exprevbits = map (lambda e : list (reversed (nttlib.num_to_bits (e, 8))),
                  exps)
revexps = list (map (lambda b : (omega**(nttlib.bits_to_num (b)))%Q,
                     exprevbits))

def print_level765_algebraic_condition (base, loop_num, inp_poly_name):
    for i in range (8):
        print ('eqmod (8*{0}{1:02x}**2)\n('.
               format (inp_poly_name, loop_num*8+i), end = '')
        for j in range (32):
            print ('L0x{0:x}*x**{1:2}'.format (base+4*(loop_num*32+j), j),
                   end = ')\n' if j == 31 else
                         ('+\n ' if j % 4 == 3 else '+'))
        print ('[{0}, x**4 - {1}]'.format (Q, revexps[loop_num*8+i]),
               end = '\n' if i == 7 else ',\n')

def print_level765_range_condition (base, loop_num, factors):
    for i in range (32):
        print ('(-{0})@32*{2}@32 <=s L0x{1:x}, L0x{1:x} <s {0}@32*{2}@32'.
               format (factors [i//4], base + 4*(loop_num*32 + i), Q),
               end = '\n' if i == 31 else ',\n')
        
def print_level765_cut (base, loop_num, inp_poly_name):
    print ('ecut and [' if loop_num < 31 else 'cut and [')
    print_level765_algebraic_condition (base, loop_num, inp_poly_name)
    if loop_num < 31:
        print ('] prove with [ precondition ];')
    else:
        print ('] prove with [ precondition ] && and [')
        factors = nttlib.intt_factors (3, [ 1 for i in range (8) ])
        for i in range (32):
            print_level765_range_condition (base, i, factors)
            print (',' if i < 31 else '')
        print ('];')
    
def print_level432_algebraic_condition (base, loop_num, inp_poly_name):
    for i in range (64):
        print ('eqmod (64*{0}{1:02x}**2)\n('.
               format (inp_poly_name, loop_num*64+i), end = '')
        for j in range (256):
            print ('L0x{0:x}*x**{1:2}'.format (base+4*(loop_num*256+j), j),
                   end = ')\n' if j == 255 else
                         ('+\n ' if j % 4 == 3 else '+'))
        print ('[{0}, x**4 - {1}]'.format (Q, revexps[loop_num*64+i]),
               end = '\n' if i == 63 else ',\n')

def print_level432_range_condition (base, loop_num, factors):
    light_factors_base = [ 8, 4, 2, 2, 1, 1, 1, 1 ]
    light_factors = list (map (lambda i: i*8, light_factors_base)) + \
                    list (map (lambda i: i*5, light_factors_base)) + \
                    list (map (lambda i: i*5, light_factors_base)) + \
                    list (map (lambda i: i*4, light_factors_base)) + \
                    list (map (lambda i: i*8, light_factors_base)) + \
                    list (map (lambda i: i*5, light_factors_base)) + \
                    list (map (lambda i: i*5, light_factors_base)) + \
                    list (map (lambda i: i*4, light_factors_base))
    for i in range (256):
        print ('(-{0})@32*{2}@32 <=s L0x{1:x}, L0x{1:x} <s {0}@32*{2}@32'.
               format (factors[i//4] if loop_num > 0 else light_factors[i//4],
                       base + 4*(loop_num*256 + i), Q),
               end = '\n' if i == 255 else ',\n')
        
def print_level432_cut (base, loop_num, inp_poly_name):
    print ('cut and [')
    print_level432_algebraic_condition (base, loop_num, inp_poly_name)
    print ('] prove with [ cuts [', end = '')
    for i in range (8):
        print ('{0}'.format (loop_num*16 + i*2), end = '' if i == 7 else ',')
    print ('] ] && and [')
    factors = nttlib.intt_factors (6, [ 1 for i in range (64) ])
    print_level432_range_condition (base, loop_num, factors)
    print ('] prove with [ cuts [ 62 ] ];')
#    print ('] prove with [ cuts [', end = '')
#    for i in range (8):
#        print ('{0}'.format (loop_num*16 + i*2), end = '' if i == 7 else ',')
#    print ('] ];')
    
i765_inner_end_pat = re.compile ('.*PC = 0x8001ecc \*\)')
i765_counter = 0
i432_light_end_pat = re.compile ('.*PC = 0x8002248 \*\)')
i432_end_pat = re.compile ('.*0x80024e8 = 0x80024e8;')
i432_counter = 0
cut_counter = 0
with open (clname) as file_in:
    for line in file_in:
        if i765_inner_end_pat.match (line):
            print ('\n\n\n(**************** CUT {0:3} ****************)\n'.
                   format (cut_counter))
            cut_counter += 1
            print_level765_cut (out_base, i765_counter, 'inp_poly')
            i765_counter += 1
            print ('\n\n\n(**************** CUT {0:3} ****************)\n'.
                   format (cut_counter))
            if i765_counter <= 32:
                print ('ecut true;\n\n\n')
            else:
                print ('cut true && and [')
                factors = nttlib.intt_factors (3, [ 1 for i in range (8) ])
                for i in range (8):
                    print_level765_range_condition (out_base, i, factors)
                    print ('' if i == 7 else ',')
                print ('] prove with [ cuts [ 62 ] ];\n\n\n')
            cut_counter += 1
            print (line, end='')
        elif i432_light_end_pat.match (line) or i432_end_pat.match (line):
            print ('\n\n\n(**************** CUT {0:3} ****************)\n'.
                   format (cut_counter))
            cut_counter += 1
            print_level432_cut (out_base, i432_counter, 'inp_poly')
            i432_counter += 1
            print ('\n\n\n(**************** CUT {0:3} ****************)\n'.
                   format (cut_counter))
            if i432_counter == 4:
                print ('cut true && true;\n\n\n')
            else:
                print ('cut true && and [')
                factors = nttlib.intt_factors (3, [ 1 for i in range (8) ])
                for i in range (i432_counter*8, (i432_counter+1)*8):
                    print_level765_range_condition (out_base, i, factors)
                    print ('' if i % 8 == 7 else ',')
                print ('] prove with [ cuts [ 62 ] ];\n\n\n')
            cut_counter += 1
            print (line, end='')
        else:
            print (line, end='')
