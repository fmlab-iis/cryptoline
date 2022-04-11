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


in_base    = 0x20018570
out_base   = 0x20014898
const_base = 0x8063178

def print_parameters (fname):
    for i in range (3):
        for j in range (9):
            for k in range (32):
                print ('sint32 {0}{1}{2}{3:02}'.
                       format (fname, i, j, k),
                   end = '\n' if i==2 and j==8 and k==31 else
                         (',\n' if (32*(9*i+j)+k)%5==4 else ', '))

def print_range_precondition (fname):
    for i in range (3):
        for j in range (9):
            for k in range (32):
                print ('0@32<=s{0}{1}{2}{3:02},{0}{1}{2}{3:02}<4096@32'.
                   format (fname, i, j, k),
                   end = '\n' if i==2 and j==8 and k==31 else
                         (',\n' if (32*(9*i+j)+k)%3==2 else ','))
        
def print_initialization (fname, base):
    for i in range (27*32):
        print ('mov L0x{0:x} {1}{2}{3}{4:02};'.
               format (base+2*i, fname, i%3, (i//3)%9, (i//3)%32),
                       end = '\n' if i%3==2 or i==27*32-1 else ' ')

def print_constants (data, base):
    size = len (data)
    for i in range (size):
        print ('mov L0x{0:x} ({1:7})@sint32;'.
               format (base+4*i, data[i]),
               end = '\n' if i%2==1 or i==size-1 else ' ')

def print_algebra_condition_eqmod (cfname, base, x, y, z, yexp, zexp):
    off = 27*z+3*y+x
    print ('eqmod (', end = '')
    for k in range (3):
        print ('{0}{1}{2}{3:02}*x**{1}*(y*z)**{4:3}'.
               format (cfname, x, 3*k+y, z,
                       ((3*k+y)*64+z*225)%288),
               end=')\n      ' if k==2 else '+')
    print ('L0x{0:x}*x**{1}*y**{2}*z**{3} '.
           format (base+4*(864*zexp+9*yexp+off), x, y, z),
           end='')
    print ('[ {0}, y**3 - {1:7}, z**32 - {2:7} ]'.
           format (Q1, omega9Q1**(3*yexp)%Q1, omega4Q1**(2*zexp)%Q1),
           end = '')
        
def print_algebra_condition_eqmods (fname, cfname, base, x, y, z):
    for i in range (3):
        print ('eqmod {0}{2}{3}{4:02} {1}{2}{3}{4:02} 2048'.
               format (cfname, fname, x, 3*i+y, z),
               end = ',\n' if i==2 else ', ')
    for zexp in range (2):
        for yexp in range (3):
            print_algebra_condition_eqmod (cfname, base, x, y, z, yexp, zexp)
            print ('' if zexp==1 and yexp==2 else ',')

def print_range_condition (base, off, lbound, ubound):
    for zexp in range (2):
        for yexp in range (3):
            print ('({1:8})@32<=sL0x{0:x},L0x{0:x}<=s{2:7}@32'.
                   format (base+4*(864*zexp+9*yexp+off), lbound, ubound),
                   end='\n' if zexp==1 and yexp==2 else ',\n')
            
collect_ecuts = []
final_ecuts = []
            
print ('\n\n\n(******************** parameters ********************)\n')
print_parameters ('f')

print ('\n\n\n(******************** precondition ********************)\n')
print ('true && and [')
print_range_precondition ('f')
print (']')

print ('\n\n\n(******************** initialization ********************)\n')
print ('nondet r0@uint32; nondet lr@uint32;')
print_initialization ('f', in_base)

print ('\n\n\n(******************** constants ********************)\n')
print ('mov r2 {0:10}@uint32; mov r3 {1:10}@sint32;'.
       format (Q1prime, Q1))
print_constants (_3x2_NTT_Rmod_table_Q1, const_base)

print ('\n\n\n(******************** polynomial variables ********************)\n')
print ('ghost z@sint32, y@sint32, x@sint32 : true && true;\n')


for outer in range (9):
    for inner in range (32):
        xidx = outer % 3
        yidx = outer//3
        zidx = inner
        print ('\n\n\n(******************** offset {0}, {1}, {2:2} ********************)\n'.format (xidx, yidx, zidx))
        nttlib.print_ecut ('')
        print ('and [')
        print_algebra_condition_eqmods ('f', 'cf', out_base,
                                        xidx, yidx, zidx)
        print ('];\n\n')

    nttlib.print_rcut ('')
    print ('and [')
    for inner in range (32):
        print_range_condition (out_base, outer + 27*inner, -(2048+Q1), 2048+Q1)
        print (',' if inner != 31 else '] prove with [ precondition ];\n')
    
print ('\n\n\n(******************** collect eqmods ********************)\n')

nttlib.print_ecut ('')
print ('and [')
for xexp in range (3):
    for yexp in range (9):
        for zexp in range (32):
            print ('eqmod cf{0}{1}{2:02} f{0}{1}{2:02} 2048'.
                   format (xexp, yexp, zexp),
                   end = '\n' if xexp==2 and yexp==8 and zexp==31 else
                         (',\n' if (zexp+32*(yexp+9*xexp)) % 3 == 2 else ', '))
print ('] prove with [ all cuts ];\n\n')
cfecut = nttlib.get_ecut_counter ()

for zexp in range (2):
    for yexp in range (3):
        nttlib.print_ecut ('')
        print ('and [')
        for z in range (32):
            for y in range (3):
                for x in range (3):
                    print_algebra_condition_eqmod ('cf', out_base, x, y, z,
                                                   yexp, zexp)
                    print ('' if z==31 and y==2 and x==2 else ',')
        print ('] prove with [ all cuts ];\n\n')
        collect_ecuts.append (nttlib.get_ecut_counter ())

nttlib.print_ecut ('true')
        
print ('\n\n\n(******************** input polynomials ********************)\n')
print ('ghost F@sint32, CF@sint32 : and [\nF**2 = ')
for yz in range (9*32):
    for x in range (3):
        print ('f{0}{1}{2:02}*x**{0}*(y*z)**{3:3}'.
               format (x, yz%9, yz%32, yz),
               end = ',\nCF**2 =\n' if yz==9*32-1 and x==2 else
                     ('+\n' if x==2 else '+'))
for yz in range (9*32):
    for x in range (3):
        print ('cf{0}{1}{2:02}*x**{0}*(y*z)**{3:3}'.
               format (x, yz%9, yz%32, yz),
               end = '\n' if yz==9*32-1 and x==2 else
                     ('+\n' if x==2 else '+'))
print ('] && true;\n')

nttlib.print_ecut ('')
print ('eqmod CF**2 F**2 2048 prove with [ cuts [ {0} ] ];\n'.
       format (cfecut))
cfecut=nttlib.get_ecut_counter ()

for zexp in range (2):
    for yexp in range (3):
        cgidx = 3*zexp+yexp
        print ('\n\n\n(******************** output polynomial {0} ********************)\n'.format (cgidx))
        print ('ghost CG{0}@sint32,'.format (cgidx))
        for z in range (32):
            for y in range (3):
                for x in range (3):
                    print ('cg{0}{1}{2}{3:02}@sint32'.
                           format (cgidx, x, y, z),
                           end = ' : and [\n' if z==31 and y==2 and x==2 else
                                 (',\n' if (x+3*(y+3*z))%5==4 else ', '))
        for z in range (32):
            for y in range (3):
                for x in range (3):
                    print ('cg{0}{1}{2}{3:02}=L0x{4:x}'.
                           format (cgidx, x, y, z,
                                   out_base+4*(x+3*(y+9*z)+9*yexp+864*zexp)),
                           end = ',\n' if z==31 and y==2 and x==2 else
                                 (',\n' if (x+3*(y+3*z))%4==3 else ','))
        print ('CG{0}**2 = '.format (cgidx))
        for z in range (32):
            for y in range (3):
                for x in range (3):
                    print ('cg{0}{1}{2}{3:02}*x**{1}*y**{2}*z**{3:2}'.
                           format (cgidx, x, y, z),
                           end = '\n' if z==31 and y==2 and x==2 else
                                 ('+\n' if (x+3*(y+3*z))%3==2 else '+'))
        print ('] && true;\n')
        
        nttlib.print_ecut ('true')
        nttlib.print_ecut ('')
        print ('eqmod CG{0}**2 CF**2 [ {1}, y**3 - {2:7}, z**32 - {3:7} ]'.
               format (cgidx, Q1, omega9Q1**(3*yexp)%Q1, omega4Q1**(2*zexp)%Q1))
        print ('prove with [ all ghosts, cuts [ {0} ] ];\n'.
               format (collect_ecuts[yexp+3*zexp]))
        final_ecuts.append (nttlib.get_ecut_counter ())
    
print ('\n\n\n(******************** postcondition ********************)\n')
print ('and [')
print ('eqmod CF**2 F**2 2048,')
for zexp in range (2):
    for yexp in range (3):
        cgidx = 3*zexp+yexp
        print ('eqmod CG{0}**2 CF**2 [ {1}, y**3 - {2:7}, z**32 - {3:7} ]'.
               format (cgidx, Q1, omega9Q1**(3*yexp)%Q1, omega4Q1**(2*zexp)%Q1),
               end = '\n] ' if zexp==1 and yexp==2 else ',\n')
print ('prove with [ cuts [ {0}, '.format (cfecut), end = '')
for i in range (len (final_ecuts)):
    print ('{0}'.format (final_ecuts[i]),
           end = ' ] ] && \n' if i==len(final_ecuts)-1 else ', ')
print ('and [')
for outer in range (9):
    for inner in range (32):
        print_range_condition (out_base, outer + 27*inner, -(2048+Q1), 2048+Q1)
        print ('] prove with [ all cuts ]' if outer==8 and inner==31 else ',')
        

