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

_3x2_NTT_Rmod_table_Q1 = [
omega93RmodQ1,       omega96RmodQ1,
       RmodQ1,              RmodQ1,              RmodQ1,
       RmodQ1,        omega9RmodQ1,       omega92RmodQ1,
       RmodQ1,       omega92RmodQ1,       omega94RmodQ1,
 omega4RmodQ1,        omega4RmodQ1,        omega4RmodQ1,
 omega4RmodQ1,  omega4omega9RmodQ1, omega4omega92RmodQ1,
 omega4RmodQ1, omega4omega92RmodQ1, omega4omega94RmodQ1
]


in_base   = 0x20014898
out_base   = 0x20014898
const_base = 0x8063178

def to_offset (x, y, z, yexp, zexp):
    return (x+3*(y+9*z)+9*yexp+864*zexp)    

def print_parameters (Fname, Gname, gname):
    print ('sint32 z, sint32 y, sint32 x,')
    print ('sint32 {0}0, sint32 {0}1, sint32 {0}2,'.format (Fname))
    for zexp in range (2):
        for yexp in range (3):
            gidx = 3*zexp+yexp
            print ('sint32 {0}{1}0, sint32 {0}{1}1, sint32 {0}{1}2,'.
                   format (Gname, gidx))
            for x in range (3):
                for z in range (32):
                    for y in range (3):
                        print ('sint32 {0}{1}{2}{3}{4:02}'.
                               format (gname, gidx, x, y, z),
                               end = '\n' if zexp==1 and yexp==2 and
                                             x==2 and y==2 and z==31 else
                                     (',\n' if (x==2 and y==2 and z==31) or
                                               (y+3*(z+32*x))%5==4 else ', '))

def print_algebraic_precondition (Fname, Gname, gname, gidx):
    gidx = 3*zexp+yexp
    print ('eqmod {0}{1}0**2+{0}{1}1**2+{0}{1}2**2 '.
           format (Gname, gidx), end = '')
    print ('{0}0**2+{0}1**2+{0}2**2'.format (Fname))
    print ('      [ {0}, y**3 - {1:7}, z**32 - {2:7} ],'.
           format (Q1, omega9Q1**(3*yexp)%Q1, omega4Q1**(2*zexp)%Q1))
    for x in range (3):
        print ('{0}{1}{2}**2 ='.format (Gname, gidx, x))
        for z in range (32):
            for y in range (3):
                print ('{0}{1}{2}{3}{4:02}*x**{2}*y**{3}*z**{4:2}'.
                       format (gname, gidx, x, y, z),
                       end = '\n' if x==2 and y==2 and z==31 else
                             (',\n' if z==31 and y==2 else
                             ('+\n' if y==2 else '+')))
                        
def print_range_precondition (gname, lbound, ubound, gidx):
    for x in range (3):
        for z in range (32):
            for y in range (3):
                print ('({5:8})@32 <=s {0}{1}{2}{3}{4:02}, {0}{1}{2}{3}{4:02} <=s {6:7}@32'.
                       format (gname, gidx, x, y, z, lbound, ubound),
                       end = '\n' if x==2 and y==2 and z==31 else ',\n')
        
def print_initialization (gname, base):
    for zexp in range (2):
        for yexp in range (3):
            gidx = yexp+3*zexp
            for z in range (32):
                for y in range (3):
                    for x in range (3):
                        print ('mov L0x{0:x} {1}{2}{3}{4}{5:02}'.
                               format (base+4*to_offset (x, y, z, yexp, zexp),
                                       gname, gidx, x, y, z),
                               end = ';\n' if x==2 else '; ')

def print_constants (data, base):
    size = len (data)
    for i in range (size):
        print ('mov L0x{0:x} ({1:7})@sint32;'.
               format (base+4*i, data[i]),
               end = '\n' if i%2==1 or i==size-1 else ' ')

def print_algebraic_condition_eqmod (gname, base, x, z, yexp, zexp, i, j):
    gidx = yexp+3*zexp
    print ('eqmod (', end = '')
    for zpow in range (2):
        for ypow in range (3):
            print ('{0}{1}{2}{3}{4:02}*x**{2}*y**{3}*z**{4:2}'.
                   format (gname, gidx, x, ypow, z+16*zpow),
                   end = ')\n      ' if zpow==1 and ypow==2 else
                         ('+\n       ' if ypow==2 else '+'))
    print ('L0x{0:x}*x**{1}*z**{2:2} '.
           format (base+4*to_offset (x, j, z+16*i, yexp, zexp), x, z),
           end = '')
    print ('[ {0}, y - {1:7}, z**16 - {2:7} ]'.
           format (Q1, (omega9Q1**(3*j+yexp))%Q1,
                   (omega4Q1**(2*i+zexp))%Q1),
           end = '')
        
def print_algebraic_condition (gname, base, x, z, yexp, zexp):
    for i in range (2):
        for j in range (3):
            print_algebraic_condition_eqmod (gname, base, x, z, yexp, zexp, i, j)
            print ('' if i==1 and j==2 else ',')

def print_range_condition (base, x, z, yexp, zexp,
                           lbounds, ubounds,
                           light_lbounds, light_ubounds):
                           
    gidx = yexp+3*zexp
    l = lbounds if zexp>0 or yexp>0 or x>0 else light_lbounds
    u = ubounds if zexp>0 or yexp>0 or x>0 else light_ubounds
    for i in range (2):
        for j in range (3):
            print ('({1:9})@32 <=s L0x{0:x}, L0x{0:x} <=s {2:8}@32'.
                   format (base+4*to_offset (x, j, z+16*i, yexp, zexp),
                           l[j+3*i], u[j+3*i]),
                   end = '\n' if i==1 and j==2 else ',\n')

omega9s = [         1, omega93Q1, omega96Q1,
             omega9Q1, omega94Q1, omega97Q1,
            omega92Q1, omega95Q1, omega98Q1 ]
omega4s = [ 1, (omega4Q1**2)%Q1, omega4Q1, (omega4Q1**3)%Q1 ]
        
def print_algebraic_postcondition (Fname, Hname, yexp, zexp):
    print ('eqmod {0}{1}{2}0**2+{0}{1}{2}1**2+{0}{1}{2}2**2'.
           format (Hname, yexp, zexp),
           end = ' ')
    print ('{0}0**2+{0}1**2+{0}2**2'.format (Fname),
           end = '\n     ')
    print ('[ {0}, y - {1:7}, z**16 - {2:7} ]'.
           format (Q1, omega9s[yexp], omega4s[zexp]),
           end='')
            

print ('\n\n\n(******************** parameters ********************)\n')
print_parameters ('CF', 'CG', 'cg')

print ('\n\n\n(******************** precondition ********************)\n')
print ('and [')
for zexp in range (2):
    for yexp in range (3):
        gidx = 3*zexp+yexp
        print_algebraic_precondition ('CF', 'CG', 'cg', gidx)
        print ('] && and [' if zexp==1 and yexp==2 else ',')
for zexp in range (2):
    for yexp in range (3):
        gidx = 3*zexp+yexp
        print_range_precondition ('cg', -(2048+Q1), 2048+Q1, gidx)
        print (']' if zexp==1 and yexp==2 else ',')

print ('\n\n\n(******************** initialization ********************)\n')
print ('nondet r0@uint32; nondet lr@uint32;')
print_initialization ('cg', in_base)

print ('\n\n\n(******************** constants ********************)\n')
print ('mov r2 {0:10}@uint32; mov r3 {1:10}@sint32;'.
       format (Q1prime, Q1))
print_constants (_3x2_NTT_Rmod_table_Q1, const_base)

nttlib.print_ecut ('true')

l_lbounds = [ -6*(2048+Q1), -4*(2048+Q1)-Q1, -6*(2048+Q1)-Q1 ]*2
l_ubounds = [  6*(2048+Q1),  4*(2048+Q1)+Q1,  6*(2048+Q1)+Q1 ]*2
lbounds = [ -3*(2048+2*Q1)-2**13, -2*(2048+2*Q1)-Q1, -3*(2048+2*Q1)-Q1 ]*2
ubounds = [  3*(2048+2*Q1)+2**13,  2*(2048+2*Q1)+Q1,  3*(2048+2*Q1)+Q1 ]*2

ntt_ecuts = [ [ [ [] for j in range (3) ] for k in range (2) ] for i in range (3) ]
for zexp in range (2):
    for x in range (3):
        for z in range (16):
            for yexp in range (3):
                nttlib.print_ecut ('')
                print ('and [')
                print_algebraic_condition ('cg', out_base, x, z, yexp, zexp)
                print ('];\n')
                ntt_ecuts[x][zexp][yexp].append (nttlib.get_ecut_counter ())
    nttlib.print_rcut ('')
    print ('and [')
    for x in range (3):
        for z in range (16):
            for yexp in range (3):
                print_range_condition (out_base, x, z, yexp, zexp,
                                       lbounds, ubounds,
                                       l_lbounds, l_ubounds)
                print ('] prove with [ precondition ];\n' if x==2 and z==15 and yexp==2 else ',')


collect_ecuts = [ [ [] for j in range (4) ] for i in range (9) ]
print ('\n\n\n(******************** collect eqmods ********************)\n')

for x in range (3):
    for zexp in range (2):
        for i in range (2):
            for yexp in range (3):
                for j in range (3):
                    nttlib.print_ecut ('')
                    print ('and [')
                    for z in range (16):
                        print_algebraic_condition_eqmod ('cg', out_base, x, z, yexp, zexp, i, j)
                        print ('\n] prove with [ cuts [ ' if z==15 else ',\n',
                               end = '')
                    ecuts = ntt_ecuts[x][zexp][yexp]
                    for k in range (len (ecuts)):
                        print ('{0:3}'.format (ecuts[k]),
                               end = ' ] ];\n\n' if k==len (ecuts)-1 else
                                     ',\n                      ' if k%8==7 else ', ')
                    collect_ecuts[j+3*yexp][i+2*zexp].append (nttlib.get_ecut_counter ())

print ('\n\n\n(******************** output polynomials ********************)\n')
for zexp in range (4):
    for yexp in range (9):
        print ('ghost CH{0}{1}0@sint32, CH{0}{1}1@sint32, CH{0}{1}2@sint32,'.
               format (yexp, zexp),
               end = '\n      ')
        for x in range (3):
            for z in range (16):
                print ('ch{0}{1}{2}{3:x}@sint32'.format (yexp, zexp, x, z),
                       end = ': and [\n' if x==2 and z==15 else
                             (',\n      ' if z%4==3 else ', '))
        for x in range (3):
            print ('CH{0}{1}{2}**2 ='.format (yexp, zexp, x))
            for z in range (16):
                print ('ch{0}{1}{2}{3:x}*x**{2}*z**{3:2}'.
                       format (yexp, zexp, x, z),
                       end = ',\n' if z==15 else
                             (' +\n' if z%4==3 else ' + '))
            for z in range (16):
                print ('ch{0}{1}{2}{3:x}=L0x{4:x}'.
                       format (yexp, zexp, x, z,
                               out_base+
                               4*to_offset (x, yexp%3, z+16*(zexp%2), yexp//3, zexp//2)),
                       end='\n] && true;\n\n\n' if z==15 and x==2 else
                           (',\n' if z%4==3 else ', '))

summary_ecuts = []

print ('\n\n\n(******************** summarize ********************)\n')
for zexp in range (2):
    for yexp in range (3):
        nttlib.print_ecut ('')
        print ('and [')
        print_algebraic_precondition ('CF', 'CG', 'cg', yexp+3*zexp)
        print ('] prove with [ precondition ];\n')
        nttlib.print_ecut ('')
        for i in range (2):
            for j in range (3):
                print_algebraic_postcondition ('CF', 'CH', j+3*yexp, i+2*zexp)
                print ('\n     prove with [ all ghosts, cuts [ ', end = '')
                ecuts = collect_ecuts[j+3*yexp][i+2*zexp]
                for k in range (len (ecuts)):
                    print ('{0}'.format (ecuts[k]),
                           end = ' ] ]' if k==len (ecuts)-1 else ', ')
                print (';\n\n\n' if i==1 and j==2 else ',\n     ', end = '')
        summary_ecuts.append (nttlib.get_ecut_counter ())
                
print ('\n\n\n(******************** postcondition ********************)\n')
print ('and [', end = '\n     ')
for zexp in range (4):
    for yexp in range (9):
        print_algebraic_postcondition ('CF', 'CH', yexp, zexp)
        print ('',
               end='\n] prove with [ cuts [ ' if zexp==3 and yexp==8 else
                   ',\n     ')
for i in range (len (summary_ecuts)):
    print ('{0}'.format (summary_ecuts[i]),
           end = ' ] ] && and [\n' if i==len(summary_ecuts)-1 else ', ')

for zexp in range (2):
    for yexp in range (3):
        for z in range (16):
            for x in range (3):
                print_range_condition (out_base, x, z, yexp, zexp,
                                       lbounds, ubounds,
                                       l_lbounds, l_ubounds)
                print ('] prove with [ all cuts ]\n' if zexp==1 and yexp==2 and z==15 and x==2 else ',')
                

