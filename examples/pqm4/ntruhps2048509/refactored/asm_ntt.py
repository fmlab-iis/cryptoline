
NTRU_N = 509
Q = 1043969
Qinv = 1993076223
zeta = 3
omega = (zeta**((Q-1)//256))%Q

inp_base = 0x20016fd0
inp_base_small = 0x200177d0
out_base = 0x20018fd0
out_base_small = 0x20019fd0
const_base = 0x8006ddc
const_base_small = 0x80071d8

streamlined_CT_table_Q1 = [
78830, 78830, 191052, 78830, 191052, -311503, 207751, 78830, 191052, -311503, 207751, 468028, -149945, 114478, -82425, 78830, 78830, 191052, 78830, 191052, -311503, 207751, 78830, 191052, -311503, 207751, 468028, -149945, 114478, -82425, 191052, -311503, 207751, 468028, -149945, 114478, -82425, 254425, -83285, -205022, 318314, 365552, -403894, 235060, 449706, -311503, 468028, -149945, 254425, -83285, -205022, 318314, 378933, 313241, -397250, 288321, 74768, 22897, 129870, -461967, 207751, 114478, -82425, 365552, -403894, 235060, 449706, -35962, 370478, 232373, 159337, 405929, 59399, -40385, 317168, 468028, 254425, -83285, 378933, 313241, -397250, 288321, 13867, 21742, 486841, -73546, 7056, -391031, -493755, -78001, -149945, -205022, 318314, 74768, 22897, 129870, -461967, -495107, 279814, -363890, -182676, -207660, 75978, 187423, -78196, 114478, 365552, -403894, -35962, 370478, 232373, 159337, 507011, 331715, 297886, -346620, -299045, 275767, -51317, 402791, -82425, 235060, 449706, 405929, 59399, -40385, 317168, -272172, -375619, 376740, -409013, -42578, -405086, 81030, -422078, 254425, 378933, 313241, 13867, 21742, 486841, -73546, 487892, -428144, -43370, -393153, 248256, -228921, -29446, -59870, -83285, -397250, 288321, 7056, -391031, -493755, -78001, 285179, 257414, -147526, 390544, -275430, -160445, -436582, 316768, -205022, 74768, 22897, -495107, 279814, -363890, -182676, 27120, -345344, -470298, -498651, -358783, 477219, 133279, -401288, 318314, 129870, -461967, -207660, 75978, 187423, -78196, 288431, -155391, -18223, -478095, -347554, 256625, -153141, -298605, 365552, -35962, 370478, 507011, 331715, 297886, -346620, -367175, -334857, 42298, -465942, 329620, -89230, -288348, 279364, -403894, 232373, 159337, -299045, 275767, -51317, 402791, 268720, 464538, 356621, 343605, 476116, 44548, 347463, 399863, 235060, 405929, 59399, -272172, -375619, 376740, -409013, -188449, -309697, -118699, 418878, -284025, 170731, 515076, 290607, 449706, -40385, 317168, -42578, -405086, 81030, -422078, 445216, 114673, 1019, -364661, -179242, -317922, -202373, 400989
]

streamlined_CT_small_table_Q1 = [
1, 1, -489046, 1, -489046, 287998, -324180, 78830, 191052, -311503, 207751, 468028, -149945, 114478, -82425
]

def print_parameters (cname):
    for i in range (NTRU_N):
        print ('sint32 {0}{1:03}'.format (cname, i),
               end = '\n' if i == NTRU_N - 1 else
                     (',\n' if i % 5 == 4 else ', '))

def print_range_precondition (cname, bound):
    for i in range (NTRU_N):
        print ('(-{0})@32 <=s {1}{2:03}, {1}{2:03} <s {0}@32'.
               format (bound, cname, i),
               end = '\n' if i == NTRU_N - 1 else
                     (',\n' if i % 2 == 1 else ', '))

def print_initialization (base, cname):
    for i in range (NTRU_N):
        print ('mov L0x{0:x} {1}{2:03};'.format (base + 2*i, cname, i),
               end = '\n' if i == NTRU_N - 1 else
                     ('\n' if i % 3 == 2 else ' '))
        
def print_inp_poly (inp_poly_name, cname, num_parts):
    degree = 1 + NTRU_N // num_parts
    coeff = 0
    for i in range (num_parts):
        print ('{0}_{1}**2 = '.format (inp_poly_name, i))
        for j in range (degree):
            print ('{0}{1:03}*(x**{2})'.format (cname, coeff, j),
                   end = ',\n' if j == degree - 1 or coeff == NTRU_N - 1 else
                   ('+\n' if j % 5 == 4 else '+'))
            coeff += 1
            if coeff == NTRU_N: break
    print ('{0}**2 = '.format (inp_poly_name))
    for i in range (num_parts):
        print ('({0}_{1}**2)*(x**{2})'.format (inp_poly_name, i, i*degree),
               end = '\n' if i == num_parts - 1 else
                     ('+\n' if i % 3 == 2 else '+'))

def print_constants (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} ({1:7})@sint32;'.format (base + 4*i, consts[i]),
               end = '\n' if i == len (consts) - 1 else
                     ('\n' if i % 2 == 1 else ' '))

def print_algebraic_midcondition (base, cinp_poly_name, level, idx):
    num_rings = 2**(level+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e : list (reversed (num_to_bits (e, 8))),
                      exps)
    revexps = list (map (lambda b : (omega**(bits_to_num (b)))%Q, exprevbits))
    
        
    
                                  
def print_algebraic_postcondition (base, cinp_poly_name, level):
    num_rings = 2**(level+1)
    exps = [ i for i in range (num_rings) ]
    exprevbits = map (lambda e : list (reversed (num_to_bits (e, 8))),
                      exps)
    revexps = list (map (lambda b : (omega**(bits_to_num (b)))%Q, exprevbits))
    degree = 1024 // num_rings
    for i in range (num_rings):
        print ('eqmod ({0}**2)'.format (cinp_poly_name))
        print ('    (', end = '')
        for j in range (degree):
            print ('L0x{0:x}*(x**{1:2})'.format (base + 4*(i*degree+j), j),
                   end = ')\n' if j == degree - 1 else
                          ('+\n     ' if j % 3 == 2 else '+'))
        print ('    [{0}, x**{1} - {2}]'.format (Q, degree, revexps[i] % Q),
               end = '\n' if i == num_rings - 1 else ',\n')

def print_range_postcondition (base, factor):
    for i in range (1024):
        print ('(-{0})@32*{1}@32 <s L0x{2:x}, L0x{2:x} <s {0}@32*{1}@32'.
               format (factor, Q, base + 4*i),
               end = '\n' if i == 1023 else ',\n')


print ('\n\n\n(**************** LEVELS 0-3 32 ****************)\n\n\n')
        
print ('\n\n\n(**************** parameters ****************)\n')
print_parameters ('f')

print ('\n\n\n(**************** preconditions ****************)\n')
print ('true && and [')
print_range_precondition ('f', 2**11)
print (']')

print ('\n\n\n(**************** initialization ****************)\n')
print ('mov r2 {0}@uint32; mov r3 {1}@sint32;'.format (Qinv, Q))
print_initialization (inp_base, 'f')

print ('\n\n\n(**************** pointers ****************)\n')
print ('nondet lr@uint32; nondet r0@uint32;')

print ('\n\n\n(**************** input poly ****************)\n')
print ('ghost x@bit, inp_poly@bit,')
for i in range (8):
    print ('inp_poly_{0}@bit'.format (i),
           end = ' :\n' if i == 7 else (',\n' if i % 4 == 3 else ', '))
print ('and [')
print_inp_poly ('inp_poly', 'f', 8)
print ('] && true;')

print ('\n\n\n(**************** constants ****************)\n')
print_constants (const_base, streamlined_CT_table_Q1)

print ('\n\n\n(**************** center input poly ****************)\n')
print ('ghost cinp_poly@bit, ')
for i in range (8):
    print ('cinp_poly_{0}@bit'.format (i),
           end = ' :\n' if i == 7 else (',\n' if i % 4 == 3 else ', '))
print ('and [')
print_inp_poly ('cinp_poly', 'cf', 8)
print ('] && true;')

for idx in range (61):
    print_ecut ('')
    print ('and [')
    print_algebraic_midcondition (out_base, 'cf', 2, idx)
    print ('];')
    mid_ecuts.append (get_ecut_counter ())
    
    
print ('\n\n\n(**************** post conditions ****************)\n')
pprint ('and [')
print ('eqmod (inp_poly**2) (cinp_poly**2) (2**11),')
print_algebraic_postcondition (out_base, 'cinp_poly', 3)
print ('] && and [')
print_range_postcondition (out_base, 5)
print (']')


print ('\n\n\n(**************** LEVELS 0-3 small ****************)\n\n\n')
        
print ('\n\n\n(**************** parameters ****************)\n')
print_parameters ('g')

print ('\n\n\n(**************** preconditions ****************)\n')
print ('true && and [')
print_range_precondition ('g', 2)
print (']')

print ('\n\n\n(**************** initialization ****************)\n')
print ('mov r2 {0}@uint32; mov r3 {1}@sint32;'.format (Qinv, Q))
print_initialization (inp_base_small, 'g')

print ('\n\n\n(**************** pointers ****************)\n')
print ('nondet lr@uint32; nondet r0@uint32;')

print ('\n\n\n(**************** input poly ****************)\n')
print ('ghost x@bit, inp_poly@bit,')
for i in range (8):
    print ('inp_poly_{0}@bit'.format (i),
           end = ' :\n' if i == 7 else (',\n' if i % 4 == 3 else ', '))
print ('and [')
print_inp_poly ('inp_poly', 'g', 8)
print ('] && true;')

print ('\n\n\n(**************** constants ****************)\n')
print_constants (const_base_small, streamlined_CT_small_table_Q1)

for idx in range (61):
    print_ecut ('')
    print ('and [')
    print_algebraic_midcondition (out_base, 'cf', 2, idx)
    print ('];')
    mid_ecuts.append (get_ecut_counter ())

print ('\n\n\n(**************** post conditions ****************)\n')
print ('and [')
print_algebraic_postcondition (out_base_small, 'inp_poly', 3)
print ('] && and [')
print_range_postcondition (out_base_small, 5)
print (']')


print ('\n\n\n(**************** LEVELS 4-7 ****************)\n\n\n')

print ('\n\n\n(**************** parameters ****************)\n')
print ('bit x, bit cinp_poly,')
for i in range (1024):
    print ('sint32 L0x{0:x}'.format (out_base + i*4),
           end = '\n' if i == 1023 else
                 (',\n' if i % 3 == 2 else ', '))

print ('\n\n\n(**************** precondition ****************)\n')
print ('and [')
print_algebraic_postcondition (out_base, 'cinp_poly', 3)
print ('] && and [')
print_range_postcondition (out_base, 5)
print (']')

print ('\n\n\n(**************** initialization ****************)\n')
print ('mov r2 {0}@uint32; mov r3 {1}@sint32;'.format (Qinv, Q))

print ('\n\n\n(**************** pointers ****************)\n')
print ('nondet lr@uint32; nondet r0@uint32; nondet r1@uint32;')

print ('\n\n\n(**************** constants ****************)\n')
print_constants (const_base, streamlined_CT_table_Q1)

print ('\n\n\n(**************** post conditions ****************)\n')
print ('and [')
print_algebraic_postcondition (out_base, 'cinp_poly', 7)
print ('] && and [')
print_range_postcondition (out_base, 9)
print (']')
