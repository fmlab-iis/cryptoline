#################################
#  Basics
#################################

# return an LSB-first bit-vector
def int_to_bits (i, width) :
    result = []
    for j in range (width) :
        result.append (i % 2)
        i = i // 2
    return result

# reverse a list
def reverse (l) :
    return l[::-1]

# convert an LSB-first bit-vector to an int 
def bits_to_int (bv) :
    result = 0
    for j in range (0, len(bv)) :
        result += bv[j] * (2 ** j)
    return result

def bits_reverse (i, width) :
    return bits_to_int (reverse(int_to_bits(i, width)))
    
def memory (base, step, offset, postfix='') :
    return "L0x{0:x}{1}".format(base + step * offset, postfix)

def argument (name, index) :
    return "{0}{1:03d}".format(name, index)

#################################


#################################
#  inverse NTT
#################################

q = 2**13
MOD = 25166081
Mprime = 41877759
zeta = 9849271
inv_roots = [
    -11182464, 1203107, 10203707, -5735629, 4194664, -1776511, -6577444, 
    2559945, 2665284, 908786, -12174351, 9233574, 1069349, -5184115, 
    -2695651, 12030083, -11450840, 6236460, 614272, 1134236, -5318976, 
    -647681, -2733537, 9344183, -10910265, 9502337, -10505644, 42688, 
    -4034819, 8060830, 1988985, -8693725, -10171507, 6726360, 10319196, 
    7261676, 6267356, 4293923, -2510833, -6931502, -11980428, 9567042, 
    11637995, -7146164, 4810496, 11307548, 5563113, 3261033, -4092287, 
    9084979, -1686897, 7944926, -2723061, 7460755, 8693794, 588496, 
    -7301157, -5669200, 4359117, 819256, -8064557, -10575964, 9600669
]
coeff_base = 0x2001a248
root_base = 0x800d1d4
output_base = 0x20019848


def print_inputs () :
    type = "sint32"
    for i in range(0, 256, 4) :
        print ("  {0} {1}, {0} {2}, {0} {3}, {0} {4}{5}".
               format(type, argument('a',i), argument('a',i+1),
                      argument('a',i+2), argument('a',i+3), 
                      "," if i < 252 else ""))


def print_pre_range_condition () :
    print ("  (* range *)")
    print ("  and [")
    for i in range (0, 256):
        print ("    (-{1})@32 <=s {0}, {0} <s {1}@32{2}".
               format (argument('a',i), MOD, "," if i < 255 else ""))
    print ("  ]")


def print_pre_condition () :
    print ("{")
    print ("  true")
    print ("  &&")
    print_pre_range_condition ()
    print ("}\n")


def print_params () :
    print ("(* === params === *)\n")
    print ("mov MOD {0}@sint32;".format(MOD))
    print ("mov Mprime {0}@sint32;".format(Mprime))
    print ("")


def init_srcs (mem_base) :
    print ("(* src *)")
    for i in range (0, 256, 2) :
        print ("mov {0} {1};  mov {2} {3};".
               format(memory(mem_base,4,i), argument('a',i), 
                      memory(mem_base,4,i+1), argument('a',i+1)))
    print ("")


def init_roots (mem_base) :
    print ("(* inv_roots *)")
    for i in range (0, len(inv_roots) - 1, 2) :
        print ("mov {0} ({1:9d})@sint32;  mov {2} ({3:9d})@sint32;".
               format(memory(mem_base,4,i), inv_roots[i], 
                      memory(mem_base,4,i+1), inv_roots[i+1]))
    print ("mov {0} ({1:9d})@sint32;".
           format(memory(mem_base,4,len(inv_roots)-1), 
                  inv_roots[len(inv_roots)-1]))
    print ("")


def print_inp_polys (mem_base, step) :
    print ("(* inp_polys *)")
    num_rings = 64
    num_coeffs = 256 // num_rings    

    for i in range (num_rings, 2 * num_rings) :
        ring_base = num_coeffs * (i - num_rings)

        print ("ghost inp_poly_{0}@bit :".format(i-num_rings))
        print ("  inp_poly_{0} * inp_poly_{0} = ".format(i-num_rings))

        for j in range (ring_base, ring_base + num_coeffs, 2) :
            print ("    {0} * (x**{1}) + {2} * (x**{3}){4}".
                   format (memory(mem_base,step,j), j-ring_base,
                           memory(mem_base,step,j+1), j+1-ring_base,
                           " + " if j < ring_base + num_coeffs - 2 else ""))
        
        print ("  && true;\n")


def print_inits () :
    print ("(* === inits === *)\n")
    init_srcs (coeff_base)
    init_roots (root_base)
    
    print ("(* regs *)")
    print ("nondet sp@uint32;")
    print ("mov L0x20019690 sp;")
    print ("nondet r0@uint32;")
    print ("nondet r1@uint32;")
    print ("mov r2 Mprime;")
    print ("mov r3 MOD;")
    print ("")

    print_inp_polys (coeff_base, 4)


def print_mid_algebraic_condition (stage, mem_base, step, factor, 
                                   end='', mem_postfix='') :
    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings    
    num_rings = 2 ** (6 - stage)
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings, 2 * inp_num_rings) :
        modulo = (zeta ** bits_reverse(i, 7)) % MOD
        ring_base = num_coeffs * ((i - inp_num_rings) // (2 ** stage))
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), j-ring_base,
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end = '')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [{0}, x**{1} - {2}]{3}".
               format (MOD, inp_num_coeffs, modulo, 
                       ',' if i < 2 * inp_num_rings - 1 else end))


def print_eqmod_q (mem_base, step, end='') :
    print ("    (* mod q *)")
    for i in range (0, 256):
        print ("    eqmod {0}_f {0} (2**13){1}".
               format (memory(mem_base,step,i), ',' if i < 255 else end))


def print_algebraic_assumption () :
    mem_base = output_base
    step = 2 
    factor = "(2**32)"
    mem_postfix = "_f"

    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings    
    num_rings = 1
    num_coeffs = 256 // num_rings

    print ("  (* algebraic *)")
    print ("  and [")

    for i in range (inp_num_rings, 2 * inp_num_rings) :
        modulo = (zeta ** bits_reverse(i, 7)) % MOD
        ring_base = num_coeffs * ((i - inp_num_rings) // 64)
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), j-ring_base,
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end = '')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [x**{0} - {1}]{2}".
               format (inp_num_coeffs, modulo, 
                       ',' if i < 2 * inp_num_rings - 1 else ','))

    print_eqmod_q (mem_base, step)

    print ("  ]")


def print_post_algebraic_condition (mem_base, step) :
    factor = "(2**32)"
    end = ''
    mem_postfix = ''

    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings    
    num_rings = 1
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings, 2 * inp_num_rings) :
        modulo = (zeta ** bits_reverse(i, 7)) % MOD
        ring_base = num_coeffs * ((i - inp_num_rings) // 64)
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), j-ring_base,
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end = '')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [2**13, x**{0} - {1}]{2}".
               format (inp_num_coeffs, modulo, 
                       ',' if i < 2 * inp_num_rings - 1 else end))
        

def print_range_condition (mem_base, step, factor, end='', mem_postfix=''):
    for i in range (0, 256):
        print ("    {0}@32 * (-{1})@32 <=s {2}, {2} <s {0}@32 * {1}@32{3}".
               format (factor, MOD, 
                       memory(mem_base,step,i,mem_postfix), 
                       "," if i < 255 else end))


def print_post_range_condition (mem_base, step, end='', mem_postfix=''):
    print ("  (* range *)")
    print ("  and [")
    for i in range (0, 256):
        print ("    (-{0})@32 <=s {1}, {1} <=s {0}@32{2}".
               format (MOD//2, memory(mem_base,2,i,mem_postfix), 
                       "," if i < 255 else end))
    print ("  ]")



print ("proc main (")
print ("  sint32 x,")
print_inputs ()
print (") =\n")
print_pre_condition ()
print_params ()
print_inits ()

print ("(* === layer 6_5_4 === *)")
print ("cut")
print ("  (* algebraic *)")
print ("  and [")
print ("    eq s14 (-8432555),")
print ("    eq s15 7689784,")
print_mid_algebraic_condition (3, coeff_base, 4, factor=8)
print ("  ]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print ("    s14 = (-8432555)@32,")
print ("    s15 = 7689784@32,")
print_range_condition (coeff_base, 4, factor=8)
print ("  ]")
print (";\n")

print ("(* === layer 3_2_1 === *)")
print ("cut")
print ("  (* algebraic *)")
print ("  and [")
print_mid_algebraic_condition (6, output_base, 2, factor="(2**32)", 
                               end=',', mem_postfix="_f")
print_eqmod_q (output_base, 2)
print ("  ]")
print ("  &&")
print_post_range_condition (output_base, 2, mem_postfix="_f")
print (";\n")

print ("(* === applying Chinese Remainder Theorem === *)")
print ("cut true && true;")
print ("assume")
print_algebraic_assumption ()
print ("  &&")
print ("  true")
print (";\n")

print ("(* === post condition === *)")
print ("{")
print ("  (* algebraic *)")
print ("  and [")
print_post_algebraic_condition (output_base, 2)
print ("  ]")
print ("  &&")
print ("  true")
print ("}\n")

