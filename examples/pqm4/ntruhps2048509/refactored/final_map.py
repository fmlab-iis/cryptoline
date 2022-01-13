import nttlib

NTRU_N = 509
Q = 1043969
Qinv = 1993076223
zeta = 3
omega = (zeta**((Q-1)//256))%Q
invNR2modQ1 = ((256**(Q-2))*(2**64))%Q - Q

inp_base = 0x2001afc8
out_base = 0x200187c8
const_base = 0x800be00

final_const = [invNR2modQ1, -191052]

def num_to_bits (n, w):
    return (nttlib.num_to_bits (n, w))

def bits_to_num (l):
    return (nttlib.bits_to_num (l))

def intt_factors (level, factors):
    return (nttlib.intt_factors (level, factors))

def print_parameters (inp_poly_name, base):
    for i in range (1024):
        print ('sint32 L0x{0:x}'.format (base + 4*i),
               end = ',\n' if i % 4 == 3 or i == 1023 else ', ')
    print ('bit x,')
    for i in range (256):
        print ('bit {0}{1:02x}'.format (inp_poly_name, i),
               end = '\n' if i == 255 else
                     (',\n' if i % 4 == 3 else ', '))

def print_input_polys (inp_poly_name, cname):
    for i in range (256):
        print ('{0}{1:02x}**2 = '.format (inp_poly_name, i), end = '')
        for j in range (4):
            print ('{0}{1:03x}*(x**{2})'.format (cname, i*4 + j, j),
                   end = '\n' if i == 255 and j == 3 else
                         (',\n' if j == 3 else ' + '))
    
def print_algebraic_condition (inp_poly_name, cpoly_name, idx):
    num_rings = 2**8
    exps = [ i for i in range (256) ]
    exprevbits = map (lambda e : list (reversed (num_to_bits (e, 8))),
                      exps)
    revexps = list (map (lambda b : (omega**(bits_to_num (b)))%Q, exprevbits))
    for i in range (64):
        print ('eqmod (256*{0}{1:02x}**2) {2} [{3}, x**4 - {4}]'.
           format (inp_poly_name, 64*idx+i, cpoly_name, Q, revexps[64*idx+i]),
               end = '\n' if i == 63 else ',\n')
                        
def print_range_precondition (base, factors):
    for i in range (1024):
        print ('(-{0})@32*{2}@32 <=s L0x{1:x}, L0x{1:x} <s {0}@32*{2}@32'.
               format (factors [i//4], base + 4*i, Q),
               end = '\n' if i == 1023 else ',\n')
        
def print_constants (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} ({1:7})@sint32;'.format (base + 4*i, consts[i]),
               end = '\n' if i == len (consts) - 1 else
                     ('\n' if i % 2 == 1 else ' '))

def print_algebraic_postcondition (inp_poly_name, cfpoly_name):
    num_rings = 2**8
    exps = [ i for i in range (256) ]
    exprevbits = map (lambda e : list (reversed (num_to_bits (e, 8))),
                      exps)
    revexps = list (map (lambda b : (omega**(bits_to_num (b)))%Q, exprevbits))
    for i in range (256):
        print ('eqmod ({0}{1:02x}**2) ({2}**2) [{3}, x**4 - {4}, x**509 - 1]'.
           format (inp_poly_name, i, cfpoly_name, Q, revexps[i]),
               end = '\n' if i == 255 else ',\n')

def print_range_postcondition (base, cname):
    for i in range (509):
        print ('(-512)@32*{0}@32 <=s {1}{2:03}, {1}{2:03} <s 512@32*{0}@32,'.
               format (Q, cname, i))
    for i in range (509):
        print ('eqmod L0x{0:x} {1}{2:03} 2048@32'.
               format (base + 2*i, cname, i),
               end = '\n' if i == 508 else
                     (',\n' if i % 2 == 1 else ', '))

def print_segment (seg_name, base, idx):
    for i in range (16):
        print ('{0}{1}{2:x}**2 = '.format (seg_name, idx, i))
        for k in range (16):
            print ('L0x{0:x}*x**{1:2}'.
                   format (base + 4*(256*idx+16*i+k), k),
                   end = ',\n' if k == 15 else
                         ('+\n' if k % 4 == 3 else '+'))
    print ('{0}{1} = '.format (seg_name, idx))
    for i in range (16):
        print ('({0}{1}{2:x}**2)*x**{3:2}'.
               format (seg_name, idx, i, i*16),
               end = '\n' if i == 15 else
                     ('+\n' if i % 3 == 2 else '+'))

def print_inp_poly_segment (inp_poly_name, seg_name, idx, revexps):
    for i in range (64):
        print ('eqmod (64*{0}{1:02x}**2) ({2}{3}) [{4}, x**4 - {5}]'.
               format (inp_poly_name, 64*idx+i,
                       seg_name, idx, Q, revexps[64*idx+i]),
               end = '\n' if i == 63 else ',\n')

        
print ('\n\n\n(**************** parameters ****************)\n')
print_parameters ('inp_poly', inp_base)
print (',')
for i in range (4):
    print ('bit segment{0},'.format (i))
    for j in range (16):
        print ('bit segment{0}{1:x}'.format (i, j),
               end = '\n' if i == 3 and j == 15 else
                     (',\n' if j % 4 == 3 else ', '))
        
print ('\n\n\n(**************** preconditions ****************)\n')
base_factors = intt_factors (3, [ 1 for i in range (8) ])
first_factors = list (map (lambda f: 8*f, base_factors)) +\
                list (map (lambda f: 5*f, base_factors)) +\
                list (map (lambda f: 5*f, base_factors)) +\
                list (map (lambda f: 4*f, base_factors)) +\
                list (map (lambda f: 8*f, base_factors)) +\
                list (map (lambda f: 5*f, base_factors)) +\
                list (map (lambda f: 5*f, base_factors)) +\
                list (map (lambda f: 4*f, base_factors))
factors = intt_factors (6, [ 1 for i in range (64) ])
print ('and [')
for i in range (4):
    print_segment ('segment', inp_base, i)
    print (',')
exps = [ i for i in range (256) ]
exprevbits = map (lambda e : list (reversed (num_to_bits (e, 8))),
                  exps)
revexps = list (map (lambda b : (omega**(bits_to_num (b)))%Q, exprevbits))
for i in range (4):
    print_inp_poly_segment ('inp_poly', 'segment', i, revexps)
    print ('' if i == 3 else ',\n', end = '')
#print_algebraic_condition ('inp_poly', inp_base, 1)
print ('] && and [')
print_range_precondition (inp_base, first_factors + factors + factors + factors)
print (']')

cut_counter = 0

for i in range (4):
    print ('\n\n\n(**************** CUT  {0:3} ****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    print_segment ('segment', inp_base, i)
    print ('] prove with [ precondition ];')
    cut_counter += 1

    print ('\n\n\n(**************** CUT  {0:3} ****************)\n'.
           format (cut_counter))
    print ('ecut and [')
    print_inp_poly_segment ('inp_poly', 'segment', i, revexps)
    print ('] prove with [ precondition ];')
    cut_counter += 1

print ('\n\n\n(**************** CUT  {0:3} ****************)\n'.
       format (cut_counter))
print ('ecut true;')
cut_counter += 1

print ('\n\n\n(**************** initialization ****************)\n')
print ('mov r2 {0}@uint32; mov r3 {1}@sint32;'.format (Qinv, Q))

print ('\n\n\n(**************** pointers ****************)\n')
print ('nondet r0@uint32; nondet r1@uint32; nondet r11@uint32;')

print ('\n\n\n(**************** constants ****************)\n')
print_constants (const_base, final_const)


cut_counter += 255*2
revexps4 = [ 1, 554923 ]
for i in range (4):
    print ('\n\n\n(******************** CUT {0:3} ********************)\n\n'.
           format (cut_counter))
    print ('ecut and [')
    for j in range (256):
        print ('eqmod (', end = '')
        for k in range (4):
            print ('c{0:04}*x**{0:4}'.format (j+256*k),
                   end = ')\n' if k == 3 else '+')
        print ('      (4*L0x{0:x}*x**{1:3})'.
               format (inp_base + 4*(256*i+j), j), end = '')
        print (' [ {0}, x**256 {1} {2} ]'.
               format (Q, '-' if i % 2 == 0 else '+',
                       revexps4[i//2]),
               end = '\n' if j == 255 else ',\n')
    print ('] prove with [ cuts [ ')
    for j in range (256):
        print ('{0:3}'.format (9 + j if j < 4 else 14+2*(j-4)),
               end = ' ] ];\n' if j == 255 else
                     (',\n' if j % 12 == 11 else ', '))
    cut_counter += 1

print ('\n\n\n(**************** output c poly ****************)\n')
print ('ghost cpoly@bit : cpoly = ')
for i in range (1024):
    print ('c{0:04}*x**{0:4}'.format (i),
           end = '\n&& true;\n' if i == 1023 else
                 ('+\n' if i % 4 == 3 else '+'))

for i in range (4):
    print ('\n\n\n(******************** CUT {0:3} ********************)\n\n'.
           format (cut_counter))
    print ('ecut eqmod cpoly 4*segment{0} [ {1}, x**256 {2} {3} ]'.
           format (i, Q, '-' if i % 2 == 0 else '+', revexps4[i//2]))
    print ('prove with [ all ghosts, cuts [ {0}, {1} ] ];'.
           format (2*i, 519 + i))
    cut_counter += 1

    print ('\n\n\n(******************** CUT {0:3} ********************)\n\n'.
           format (cut_counter))
    print ('ecut and [')
    print_algebraic_condition ('inp_poly', 'cpoly', i)
    print ('] prove with [ cuts [ {0} ] ];'.format (1+2*i))
    cut_counter += 1
    
    print ('\n\n\n(******************** CUT {0:3} ********************)\n\n'.
           format (cut_counter))
    print ('ecut true;')
    cut_counter += 1
    
print ('\n\n\n(**************** output cf poly ****************)\n')
print ('ghost cfpoly@bit : cfpoly =')
for i in range (509):
    print ('cf{0:03}*x**{0:3}'.format (i),
           end = '\n&& true;\n' if i == 508 else
                 ('+\n' if i % 4 == 3 else '+'))

print ('\n\n\n(******************** CUT {0:3} ********************)\n\n'.
       format (cut_counter))
print ('(* NOTE: only works for 509 *)')
print ('assume [ c1020 = 0, c1021 = 0, c1022 = 0, c1023 = 0 ] && true;')
print ('ecut eqmod 256*cfpoly 2**32*cpoly [ {0}, x**509 - 1]'.format (Q))
print ('prove with [ all ghosts, cuts [')
for i in range (253):
    print ('{0:3}'.format (13+2*i),
           end = ',\n' if i % 12 == 11 else ', ')
print ('518 ] ];')
cut_counter += 1

print ('\n\n\n(**************** postcondition ****************)\n')
print ('{ and [')
print ('eqmod 256*cfpoly 2**32*cpoly [ {0}, x**509 - 1 ],'.
       format (Q))
for i in range (4):
    print_algebraic_condition ('inp_poly', 'cpoly', i)
    print ('' if i == 3 else ',')
print ('] prove with [ cuts [ 524, 527, 530, 533 ] ] && and [')
print_range_postcondition (out_base, 'cf')
print ('] }')
