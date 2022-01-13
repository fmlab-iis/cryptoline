
import nttlib

NTRU_N = 509
Q = 1043969
Qinv = 1993076223
zeta = 3
omega = (zeta**((Q-1)//256))%Q

inp_base = 0x2001afd0
out_base = 0x2001afd0
const_base = 0x8007418

streamlined_inv_CT_table_Q1 = [
78830, 78830, -191052, 78830, 78830, -191052, 78830, -191052, -207751, 311503, -191052, -207751, 311503, 82425, -114478, 149945, -468028, -207751, 82425, -114478, -449706, -235060, 403894, -365552, 311503, 149945, -468028, -318314, 205022, 83285, -254425, 78830, 78830, -191052, 78830, -191052, -207751, 311503, -191052, -207751, 311503, 82425, -114478, 149945, -468028, -207751, 82425, -114478, -449706, -235060, 403894, -365552, 311503, 149945, -468028, -318314, 205022, 83285, -254425, 82425, -449706, -235060, -317168, 40385, -59399, -405929, -114478, 403894, -365552, -159337, -232373, -370478, 35962, 149945, -318314, 205022, 461967, -129870, -22897, -74768, -468028, 83285, -254425, -288321, 397250, -313241, -378933, -449706, -317168, 40385, 422078, -81030, 405086, 42578, -235060, -59399, -405929, 409013, -376740, 375619, 272172, 403894, -159337, -232373, -402791, 51317, -275767, 299045, -365552, -370478, 35962, 346620, -297886, -331715, -507011, -318314, 461967, -129870, 78196, -187423, -75978, 207660, 205022, -22897, -74768, 182676, 363890, -279814, 495107, 83285, -288321, 397250, 78001, 493755, 391031, -7056, -254425, -313241, -378933, 73546, -486841, -21742, -13867, -317168, 422078, -81030, -400989, 202373, 317922, 179242, 40385, 405086, 42578, 364661, -1019, -114673, -445216, -59399, 409013, -376740, -290607, -515076, -170731, 284025, -405929, 375619, 272172, -418878, 118699, 309697, 188449, -159337, -402791, 51317, -399863, -347463, -44548, -476116, -232373, -275767, 299045, -343605, -356621, -464538, -268720, -370478, 346620, -297886, -279364, 288348, 89230, -329620, 35962, -331715, -507011, 465942, -42298, 334857, 367175, 461967, 78196, -187423, 298605, 153141, -256625, 347554, -129870, -75978, 207660, 478095, 18223, 155391, -288431, -22897, 182676, 363890, 401288, -133279, -477219, 358783, -74768, -279814, 495107, 498651, 470298, 345344, -27120, -288321, 78001, 493755, -316768, 436582, 160445, 275430, 397250, 391031, -7056, -390544, 147526, -257414, -285179, -313241, 73546, -486841, 59870, 29446, 228921, -248256, -378933, -21742, -13867, 393153, 43370, 428144, -487892
]

def num_to_bits (n, w):
    return (nttlib.num_to_bits (n, w))

def bits_to_num (l):
    return (nttlib.bits_to_num (l))

def intt_factors (level, factors):
    return (nttlib.intt_factors (level, factors))

def print_parameters (inp_poly_name, cname):
    for i in range (1024):
        print ('sint32 {0}{1:03x}'.format (cname, i),
               end = ',\n' if i % 5 == 4 or i == 1023 else ', ')
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
    
def print_range_precondition (cname, bound):
    for i in range (1024):
        print ('(-{0})@32<=s {1}{2:03x},{1}{2:03x}<s {0}@32'.
               format (bound, cname, i),
               end = '\n' if i == 1023 else
                     (',\n' if i % 2 == 1 else ','))

def print_initialization (base, cname):
    for i in range (1024):
        print ('mov L0x{0:x} {1}{2:03x};'.format (base + 4*i, cname, i),
               end = '\n' if i == 1023 else
                     ('\n' if i % 3 == 2 else ' '))

def print_constants (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} ({1:7})@sint32;'.format (base + 4*i, consts[i]),
               end = '\n' if i == len (consts) - 1 else
                     ('\n' if i % 2 == 1 else ' '))

def print_cut_polys (base, cut_poly_name, num_parts):
    degree = 1024 // num_parts
    for i in range (num_parts):
        print ('{0}{1:02x}**2 ='.format (cut_poly_name, i))
        for j in range (degree):
            print ('L0x{0:x}*(x**{1:2})'.format (base + 4*(i*degree + j), j),
                   end = '\n' if i == num_parts - 1 and j == degree - 1 else
                         (',\n' if j == degree - 1 else
                         ('+\n' if j % 4 == 3 else '+')))
               
def print_algebraic_condition (inp_poly_name, base, level):
    num_rings = 2**(level+1)
    exps = [ i for i in range (256) ]
    exprevbits = map (lambda e : list (reversed (num_to_bits (e, 8))),
                      exps)
    revexps = list (map (lambda b : (omega**(bits_to_num (b)))%Q, exprevbits))
    degree = 1024 // num_rings
    factor = 256 // num_rings
    num_inp_polys = 256 // num_rings
    for i in range (num_rings):
        for j in range (num_inp_polys):
            print ('eqmod ({0}*{1}{2:02x}**2)\n('.
                   format (factor, inp_poly_name, i*num_inp_polys+j),
                   end = '')
            for k in range (degree):
                print ('L0x{0:x}*x**{1:3}'.
                       format (base + 4*(i*degree+k), k),
                       end = ') ' if k == degree - 1 else
                             ('+\n ' if k % 3 == 2 else '+'))
            print ('[{0}, x**4 - {1}]'.format (Q, revexps[64*i+j]),
                   end = '\n' if i == num_rings - 1 and
                                 j == num_inp_polys - 1 else
                         ',\n')
                        
def print_range_postcondition (base, factors):
    for i in range (1024):
        print ('(-{0})@32*{2}@32 <=s L0x{1:x}, L0x{1:x} <s {0}@32*{2}@32'.
               format (factors [i//4], base + 4*i, Q),
               end = '\n' if i == 1023 else ',\n')
    
    
print ('\n\n\n(**************** parameters ****************)\n')
print_parameters ('inp_poly', 'h')

print ('\n\n\n(**************** preconditions ****************)\n')
print ('and [')
print_input_polys ('inp_poly', 'h')
print ('] && and [')
print_range_precondition ('h', Q)
print (']')

print ('\n\n\n(**************** initialization ****************)\n')
print ('mov r2 {0}@uint32; mov r3 {1}@sint32;'.format (Qinv, Q))
print_initialization (inp_base, 'h')

print ('\n\n\n(**************** pointers ****************)\n')
print ('nondet r0@uint32; nondet r1@uint32;')

print ('\n\n\n(**************** constants ****************)\n')
print_constants (const_base, streamlined_inv_CT_table_Q1)

print ('\n\n\n(**************** postcondition ****************)\n')
print ('{')
print ('and [')
print_algebraic_condition ('inp_poly', out_base, 1)
print ('] prove with [ cuts [ 64, 66, 68, 70 ] ] && and [')
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
print_range_postcondition (out_base, first_factors + factors + factors + factors)
print ('] prove with [ cuts [ 64, 66, 68, 70 ] ]')
print ('}')
