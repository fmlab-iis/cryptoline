#! /usr/bin/python3

import nttlib

ARRAY_N         = 1728
NTRU_Q          = 4096
NTRU_N          = 821
NTT_N           = 64

Q1              = 3365569
Q1pr            = 29
omegaQ1         = 1008125    # = (Q1pr**((Q1 - 1) // NTT_N)) % Q1
invomegaQ1      = 1732973    # = (omegaQ1**(Q1-2)) % Q1
RmodQ1          = 501252     # = (2**32) % Q1
Q1prime         = 1205062335 # = ((-Q1)**(2**31-1)) % 2**32
invNQ1          = 3312982    # = (NTT_N**(Q1-2)) % Q1

inv3Q1          = 2243713    # = (3**(Q1-2)) % Q1
inv9Q1          = 2991617    # = (2**(Q1-2)) % Q1
invNinv9Q1      = 3359726    # = ((9*64)**(Q1-2)) % Q1

omega9Q1        = 2113025    # = (Q1pr**((Q1-1)//9)) % Q1
omega92Q1       = 3117017    # = (omega9Q1**2) % Q1
omega93Q1       = 452650     # = (omega9Q1**3) % Q1
omega94Q1       = 3077709    # = (omega9Q1**4) % Q1
omega95Q1       = 543301     # = (omega9Q1**5) % Q1
omega96Q1       = 2912918    # = (omega9Q1**6) % Q1
omega97Q1       = 1540404    # = (omega9Q1**7) % Q1
omega98Q1       = 3070820    # = (omega9Q1**8) % Q1

invomega9Q1     = 3070820    # = (omega9Q1**(Q1-2)) % Q1
invomega92Q1    = 1540404    # = (omega92Q1**(Q1-2)) % Q1
invomega93Q1    = 2912918    # = (omega93Q1**(Q1-2)) % Q1
invomega94Q1    = 543301     # = (omega94Q1**(Q1-2)) % Q1
invomega96Q1    = 452650     # = (omega96Q1**(Q1-2)) % Q1

omega9RmodQ1    = 3346293    # = (omega9Q1   *2**32) % Q1
omega92RmodQ1   = 2811707    # = (omega9Q1**2*2**32) % Q1
omega93RmodQ1   = 1883665    # = (omega9Q1**3*2**32) % Q1
omega94RmodQ1   = 1639017    # = (omega9Q1**4*2**32) % Q1
omega95RmodQ1   = 2331648    # = (omega9Q1**5*2**32) % Q1
omega96RmodQ1   = 980652     # = (omega9Q1**6*2**32) % Q1
omega97RmodQ1   = 1745828    # = (omega9Q1**7*2**32) % Q1
omega98RmodQ1   = 1587783    # = (omega9Q1**8*2**32) % Q1

invomega9RmodQ1 = 1587783   # = (invomega9Q1   *2**32) % Q1
invomega92RmodQ1= 1745828   # = (invomega9Q1**2*2**32) % Q1
invomega93RmodQ1= 980652    # = (invomega9Q1**3*2**32) % Q1
invomega94RmodQ1= 2331648   # = (invomega9Q1**4*2**32) % Q1
invomega96RmodQ1= 1883665   # = (invomega9Q1**6*2**32) % Q1

omega4Q1        = 2630352   # = (Q1pr**((Q1-1)//4)) % Q1
omega4RmodQ1    = 813816    # = (omega4Q1*2**32) % Q1

omega4omega9Q1  = 1286699   # = (omega4Q1*omega9Q1) % Q1
omega4omega92Q1 = 2721360   # = (omega4Q1*omega9Q1**2) % Q1
omega4omega94Q1 = 2490193   # = (omega4Q1*omega9Q1**4) % Q1

omega4omega9RmodQ1=2997402  # = (omega4Q1*omega9Q1   *2**32) % Q1
omega4omega92RmodQ1=1833606 # = (omega4Q1*omega9Q1**2*2**32) % Q1
omega4omega94RmodQ1=2087623 # = (omega4Q1*omega9Q1**4*2**32) % Q1

invomega4Q1     = 735217    # = (omega4Q1**(Q1-2)) % Q1
invomega4RmodQ1 = 2551753   # = (invomega4Q1*2**32) % Q1

invomega4invomega9Q1=1146808  # = (invomega4Q1*invomega9Q1) % Q1
invomega4invomega92Q1=411323  # = (invomega4Q1*invomega9Q1**2) % Q1
invomega4invomega94Q1=1574552 # = (invomega4Q1*invomega9Q1**4) % Q1

invomega4invomega9RmodQ1=618416   # = (invomega4invomega9Q1*2**32) % Q1
invomega4invomega92RmodQ1=1719456 # = (invomega4invomega9Q1**2*2**32) % Q1
invomega4invomega94RmodQ1=1215190 # = (invomega4invomega9Q1**4*2**32) % Q1

streamlined_CT_table_Q1 = [
501252, 501252, 813816, 501252, 501252, 813816, 501252, 813816, -528216, 375962, 501252, 813816, -528216, 375962, 1019169, -92513, 1377729, -1211401, 813816, -528216, 375962, 1019169, -92513, 1377729, -1211401, -1466880, -1279676, 1225515, 574218, -610895, -1524973, -407384, 194742, -528216, 1019169, -92513, -1466880, -1279676, 1225515, 574218, 1314995, 134301, -696682, -227254, -1252902, -1385566, -160209, 196491, 375962, 1377729, -1211401, -610895, -1524973, -407384, 194742, -1037090, -286265, -1145973, -1077888, 218297, 1589023, -341068, 542273
]

in_base   = 0x20014898
out_base   = 0x20014898
const_base = 0x80631f8

def to_offset (x, z, yexp, zexp):
    return (x+3*(yexp+9*(z+16*zexp)))

def print_parameters (fname):
    for zexp in range (4):
        for z in range (16):
            for yexp in range (9):            
                for x in range (3):
                    print ('sint32 {0}{3}{1}{4}{2:x}'.
                           format (fname, zexp, z, yexp, x),
                           end = '\n' if zexp==3 and z==15 and yexp==8 and x==2 else
                                 (',\n' if (x+3*(yexp+9*(z+16*zexp)))%5==4 else ', '))

omega9s = [         1, omega93Q1, omega96Q1,
             omega9Q1, omega94Q1, omega97Q1,
            omega92Q1, omega95Q1, omega98Q1 ]
omega4s = [ 1, (omega4Q1**2)%Q1, omega4Q1, (omega4Q1**3)%Q1 ]
exps = [ i for i in range (64) ]
exprevbits = map (lambda e : list (reversed (nttlib.num_to_bits (e, 6))),
                  exps)
omegas = list (map (lambda b : (omegaQ1**(nttlib.bits_to_num (b)))%Q1,
                    exprevbits))

def print_algebraic_precondition (Fname, Hname, hname, yexp, zexp):
    print ('eqmod {0}{1}{2}0**2+{0}{1}{2}1**2+{0}{1}{2}2**2'.
           format (Hname, yexp, zexp),
           end = ' ')
    print ('{0}0**2+{0}1**2+{0}2**2'.format (Fname),
           end = '\n')
    print ('[ {0}, y - {1:7}, z**16 - {2:7} ],'.
           format (Q1, omega9s[yexp], omega4s[zexp]))
    for x in range (3):
        print ('{0}{1}{2}{3}**2 ='.format (Hname, yexp, zexp, x))
        for z in range (16):
            print ('{0}{1}{2}{3}{4:x}*x**{3}*z**{4:2}'.
                   format (hname, yexp, zexp, x, z),
                   end = '' if x==2 and z==15 else
                         (',\n' if z==15 else ('+\n' if z%4==3 else '+')))
    
def print_range_precondition (hname, yexp, zexp,
                              lbounds, ubounds,
                              light_lbounds, light_ubounds):
    for z in range (16):
        for x in range (3):
            l = lbounds if zexp//2>0 or yexp//3>0 or x>0 else light_lbounds
            u = ubounds if zexp//2>0 or yexp//3>0 or x>0 else light_ubounds
            print ('({5:9})@32 <=s {0}{1}{2}{3}{4:x}, {0}{1}{2}{3}{4:x} <=s {6:8}@32'.
                   format (hname, yexp, zexp, x, z,
                           l[yexp%3+3*(zexp%2)], u[yexp%3+3*(zexp%2)]),
                   end = '' if z==15 and x==2 else ',\n')

def print_initialization (hname, base):
    for zexp in range (4):
        for yexp in range (9):
            for z in range (16):
                for x in range (3):
                    print ('mov L0x{0:x} {1}{4}{5}{2}{3:x};'.
                           format (base+4*to_offset (x, z, yexp, zexp),
                                   hname, x, z, yexp, zexp),
                           end = '\n' if x==2 else ' ')

def print_constants (base, data):
    l = len (data)
    for i in range (l):
        print ('mov L0x{0:x} ({1:8})@sint32;'.
               format (base+4*i, data[i]),
               end = '\n' if i%2==1 or i==l-1 else ' ')

def print_algebraic_condition_eqmod (base, hname, x, z, yexp, zexp):
    print ('eqmod L0x{0:x}*x**{1}\n      ('.
           format (base+4*to_offset (x, z, yexp, zexp), x),
           end = '')
    for zz in range (16):
        print ('{0}{3}{4}{1}{2:x}*x**{1}*z**{2:2}'.
               format (hname, x, zz, yexp, zexp),
               end = ')\n      ' if zz==15 else
                     ('+\n       ' if zz%4==3 else '+'))
    print ('[ {0}, y - {1:7}, z - {2:7} ]'.
           format (Q1, omega9s[yexp], omegas[16*zexp+z]),
           end = '')
        
def print_algebraic_condition (base, hname, x, yexp, zexp):
    for z in range (16):
        print_algebraic_condition_eqmod (base, hname, x, z, yexp, zexp)
        print ('', end = '' if z==15 else ',\n')

def print_range_condition (base, yexp, zexp,
                           lbounds, ubounds, light_lbounds, light_ubounds):
    l = lbounds if zexp > 0 else light_lbounds
    u = ubounds if zexp > 0 else light_ubounds
    for z in range (16):
        for x in range (3):
            print ('({1:10})@32 <=s L0x{0:x}, L0x{0:x} <=s {2:9}@32'.
                   format (base+4*to_offset (x, z, yexp, zexp),
                           l[z%8], u[z%8]),
                   end = '\n' if z==15 and x==2 else ',\n')

def print_algebraic_postcondition (base, hname, z, yexp, zexp):
    print ('eqmod ', end = '')
    for x in range (3):
        print ('L0x{0:x}*x**{1}'.
               format (base+4*to_offset (x, z, yexp, zexp), x),
               end = '\n      ' if x==2 else '+')
    print ('CF0**2+CF1**2+CF2**2',
           end = '\n      ')
    print ('[ {0}, y - {1:7}, z - {2:7} ]'.
           format (Q1, omega9s[yexp], omegas[16*zexp+z]),
           end = '')
        
print ('\n\n\n(******************** parameters ********************)\n')
print ('sint32 x, sint32 y, sint32 z,')
print ('sint32 CF0, sint32 CF1, sint32 CF2,')
for zexp in range (4):
    for yexp in range (9):
        for x in range (3):
            print ('sint32 CH{0}{1}{2}'.format (yexp, zexp, x),
                   end = ',\n' if (zexp==3 and yexp==8 and x==2) else
                         (',\n' if (x+3*(yexp+9*zexp))%6==5 else ','))
print_parameters ('ch')

print ('\n\n\n(******************** precondition ********************)\n')
print ('and [', end = '\n')
for zexp in range (4):
    for yexp in range (9):
        print_algebraic_precondition ('CF', 'CH', 'ch', yexp, zexp)
        print ('', end = '\n] && and [\n' if zexp==3 and yexp==8 else
                         ',\n')

for zexp in range (4):
    for yexp in range (9):
        print_range_precondition ('ch', yexp, zexp,
                                  [ -3*(2048+2*Q1)-2**13, -2*(2048+2*Q1)-Q1,
                                    -3*(2048+2*Q1)-Q1 ]*2,
                                  [  3*(2048+2*Q1)+2**13,  2*(2048+2*Q1)+Q1,
                                     3*(2048+2*Q1)+Q1 ]*2,
                                  [ -6*(2048+Q1), -4*(2048+Q1)-Q1,
                                    -6*(2048+Q1)-Q1 ]*2,
                                  [  6*(2048+Q1),  4*(2048+Q1)+Q1,
                                     6*(2048+Q1)+Q1 ]*2)
        print ('\n]\n\n' if zexp==3 and yexp==8 else '\n,')
            
print ('\n\n\n(******************** initialization ********************)\n')
print ('nondet r0@uint32; ')
print_initialization ('ch', in_base)

print ('\n\n\n(******************** constants ********************)\n')
print ('mov r2 {0:10}@uint32; mov r3 {1:10}@sint32;'.
       format (Q1prime, Q1))
print_constants (const_base, streamlined_CT_table_Q1)

nttlib.print_ecut ('true')

for zexp in range (4):
    for yexp in range (9):
        for x in range (3):
            print ('\n\n\n(******************** offset {0}, {1}, {2} ********************)\n'.
                   format (yexp, zexp, x))
            nttlib.print_ecut ('')
            print ('and [')
            print_algebraic_condition (out_base, 'ch', x, yexp, zexp)
            print ('\n];\n')
        nttlib.print_rcut ('')
        print ('and [')
        print_range_condition (out_base, yexp, zexp,
                               [-3*(2048+2*Q1)-4*Q1]*8,
                               [ 3*(2048+2*Q1)+4*Q1]*8,
                               [-18*6*(2048+Q1)-4*Q1]*2+[-9*6*(2048+Q1)-3*Q1]*2+
                               [ -5*6*(2048+Q1)]*4,
                               [ 18*6*(2048+Q1)+4*Q1]*2+[ 9*6*(2048+Q1)+3*Q1]*2+
                               [  5*6*(2048+Q1)]*4)
        print ('] prove with [ precondition ];\n')

precondition_ecut = 0
collect_ecuts = [ [ [] for i in range (64) ] for j in range (9) ]
            
print ('\n\n\n(******************** collect eqmods ********************)\n')
for zexp in range (4):
    for yexp in range (9):
        nttlib.print_ecut ('')
        print ('and [')
        print_algebraic_precondition ('CF', 'CH', 'ch', yexp, zexp)
        print ('\n] prove with [ precondition ];\n')
        precondition_ecut = nttlib.get_ecut_counter ()
        for z in range (16):
            nttlib.print_ecut ('')
            print ('and [')
            for x in range (3):
                print_algebraic_condition_eqmod (out_base, 'ch', x, z,
                                                 yexp, zexp)
                print ('\n] prove with [ all cuts ];\n' if x==2 else ',')
            collect_ecuts[yexp][z+16*zexp].append (precondition_ecut)
            collect_ecuts[yexp][z+16*zexp].append (nttlib.get_ecut_counter ())

print ('\n\n\n(******************** summarize ********************)\n')
nttlib.print_ecut ('')
for zexp in range (4):
    for yexp in range (9):
        for z in range (16):
            print_algebraic_postcondition (out_base, 'ch', z, yexp, zexp)
            print (' prove with [ cuts [ {0}, {1} ] ]'.
                   format (collect_ecuts[yexp][z+16*zexp][0],
                           collect_ecuts[yexp][z+16*zexp][1]),
                   end = ';\n' if zexp==3 and yexp==8 and z==15 else
                         (',\n'))

print ('\n\n\n(******************** postcondition ********************)\n')
print ('and [')
for zexp in range (4):
    for z in range (16):
        for yexp in range (9):
            print_algebraic_postcondition (out_base, 'ch', z, yexp, zexp)
            print ('',
                   end = '\n] && and [\n' if zexp==3 and z==15 and yexp==8 else
                         ',\n')
for zexp in range (4):
    for yexp in range (9):
        print_range_condition (out_base, yexp, zexp,
                               [-3*(2048+2*Q1)-4*Q1]*8,
                               [ 3*(2048+2*Q1)+4*Q1]*8,
                               [-18*6*(2048+Q1)-4*Q1]*2+[-9*6*(2048+Q1)-3*Q1]*2+
                               [ -5*6*(2048+Q1)]*4,
                               [ 18*6*(2048+Q1)+4*Q1]*2+[ 9*6*(2048+Q1)+3*Q1]*2+
                               [  5*6*(2048+Q1)]*4)
        print ('] prove with [ all cuts ]\n' if zexp==3 and yexp==8 else ',')
            
                   
