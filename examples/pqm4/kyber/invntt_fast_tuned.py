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

q = 3329
R = 2**16
zeta = 17
inv_roots = [
    # 1 layer
    1701, 1807, 1460, 2371, 2338, 2333, 308, 108, 2851, 870, 
    854, 1510, 2535, 1278, 1530, 1185, 1659, 1187, 3109, 874,
    1335, 2111, 136, 1215, 2945, 1465, 1285, 2007, 2719, 2726,
    2232, 2512, 75, 156, 3000, 2911, 2980, 872, 2685, 1590,
    2210, 602, 1846, 777, 147, 2170, 2551, 246, 1676, 1755,
    460, 291, 235, 3152, 2742, 2907, 3224, 1779, 2458, 1251,
    2486, 2774, 2899, 1103,
    # 1st loop of 2 & 3 & 4 layers
    1275, 2652, 1065, 2881, 1571, 205, 1861,
    # 2nd loop of 2 & 3 & 4 layers
    725, 1508, 2368, 398, 2918, 1542, 1474,
    # 3rd loop of 2 & 3 & 4 layers
    951, 247, 1421, 3222, 2721, 2597, 1202,
    # 4th loop of 2 & 3 & 4 layers
    2499, 271, 90, 853, 2312, 681, 2367,
    # 5th loop of 2 & 3 & 4 layers
    1860, 3203, 1162, 1618, 130, 1602, 3147,
    # 6th loop of 2 & 3 & 4 layers
    666, 320, 8, 2813, 1871, 829, 1752,
    # 7th loop of 2 & 3 & 4 layers
    1544, 282, 1838, 1293, 2946, 3065, 2707,
    # 8th loop of 2 & 3 & 4 layers
    2314, 552, 2677, 2106, 1325, 2756, 171,
    # 5 & 6 & 7 layers
    3127, 3042, 1907, 1836, 1517, 359, 1932,
    # 128^-1 * 2^32
    1441
]
coeff_base = 0x2001a530
root_base = 0x800e5d4


num_cuts = 0
def print_cut () :
    global num_cuts
    print ("cut (* {0} *)".format(num_cuts))
    num_cuts = num_cuts + 1

def get_cut_num () :
    return (num_cuts - 1)

def print_inputs () :
    type = "sint16"
    for i in range(0, 256, 4) :
        print ("  {0} {1}, {0} {2}, {0} {3}, {0} {4}{5}".
               format(type, argument('f',i), argument('f',i+1),
                      argument('f',i+2), argument('f',i+3), 
                      "," if i < 252 else ""))


def print_pre_range_condition () :
    print ("  (* range *)")
    print ("  and [")
    for i in range (0, 256):
        print ("    (-{1})@16 <=s {0}, {0} <s {1}@16{2}".
               format (argument('f',i), q, "," if i < 255 else ""))
    print ("  ]")


def print_pre_condition () :
    print ("{")
    print ("  true")
    print ("  &&")
    print_pre_range_condition ()
    print ("}\n")


def print_params () :
    print ("(* === params === *)\n")
    print ("mov q {0}@sint16;".format(q))
    print ("")


def init_srcs (mem_base) :
    print ("(* src *)")
    for i in range (0, 256, 2) :
        print ("mov {0} {1};  mov {2} {3};".
               format(memory(mem_base,2,i), argument('f',i), 
                      memory(mem_base,2,i+1), argument('f',i+1)))
    print ("")


def init_roots (mem_base) :
    print ("(* inv_roots *)")
    for i in range (0, len(inv_roots), 2) :
        print ("mov {0} {1:4d}@sint16;  mov {2} {3:4d}@sint16;".
               format(memory(mem_base,2,i), inv_roots[i], 
                      memory(mem_base,2,i+1), inv_roots[i+1]))
    print ("")


def print_inp_polys (mem_base, step) :
    print ("(* inp_polys *)")
    num_rings = 128
    num_coeffs = 256 // num_rings    

    for i in range (num_rings, 2 * num_rings) :
        ring_base = num_coeffs * (i - num_rings)

        print ("ghost inp_poly_{0}@bit :".format(i-num_rings))
        print ("  inp_poly_{0} * inp_poly_{0} = ".format(i-num_rings))
        # print ("  inp_poly_{0} = ".format(i-num_rings))

        for j in range (ring_base, ring_base + num_coeffs, 2) :
            print ("    {0} * (x**{1}) + {2} * (x**{3}){4}".
                   format (memory(mem_base,step,j), j-ring_base,
                           memory(mem_base,step,j+1), j+1-ring_base,
                           " + " if j < ring_base + num_coeffs - 2 else ""))
        
        print ("  && true;\n")


def print_imm_polys (mem_base, step) :
    print("(* imm_polys *)")
    num_rings = 8
    num_coeffs = 256 // num_rings    

    for i in range (num_rings, 2 * num_rings) :
        ring_base = num_coeffs * (i - num_rings)

        print("ghost imm_poly_{0}@bit :".format(i-num_rings))
        print("  imm_poly_{0} * imm_poly_{0} = ".format(i-num_rings))
        # print("  imm_poly_{0} = ".format(i-num_rings))

        for j in range (ring_base, ring_base + num_coeffs, 2) :
            print("    {0} * (x**{1}) + {2} * (x**{3}){4}".
                  format (memory(mem_base,step,j), j-ring_base,
                          memory(mem_base,step,j+1), j+1-ring_base,
                          " + " if j < ring_base + num_coeffs - 2 else ""))
        
        print("  && true;\n")


def print_inits () :
    print ("(* === inits === *)\n")
    init_srcs (coeff_base)
    init_roots (root_base)
    print ("(* regs *)")
    print ("nondet r0@uint32;")
    print ("")
    print_inp_polys (coeff_base, 2)


def print_mid_algebraic_condition (stage, mem_base, step, factor, 
                                   end='', mem_postfix='') :
    inp_num_rings = 128
    inp_num_coeffs = 256 // inp_num_rings    
    num_rings = 2 ** (7 - stage)
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings, 2 * inp_num_rings) :
        modulo = (zeta ** bits_reverse(i, 8)) % q
        ring_base = num_coeffs * ((i - inp_num_rings) // (2 ** stage))
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
        # print ("    eqmod {1} * (inp_poly_{0})".
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
               format (q, inp_num_coeffs, modulo, 
                       ',' if i < 2 * inp_num_rings - 1 else end))

def print_mid_algebraic_condition_slice (stage, mem_base, step, factor, 
                                         num_slice, ith_slice,
                                         end='', mem_postfix='') :
    inp_num_rings = 128
    inp_num_coeffs = 256 // inp_num_rings    
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 2 ** (7 - stage)
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 8)) % q
        ring_base = num_coeffs * ((i - inp_num_rings) // (2 ** stage))
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
        # print ("    eqmod {1} * (inp_poly_{0})".
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
               format (q, inp_num_coeffs, modulo, 
                       ',' if i < inp_num_rings + (ith_slice + 1) 
                                  * rings_per_slice - 1 else end))


def print_range_condition (mem_base, step, factor, end='', mem_postfix=''):
    for i in range (0, 256):
        print ("    {0}@16 * (-{1})@16 <=s {2}, {2} <s {0}@16 * {1}@16{3}".
               format (factor, q, 
                       memory(mem_base,step,i,mem_postfix), 
                       "," if i < 255 else end))


def print_backward_algebraic_condition (stage, mem_base, step, factor, 
                                        end='', mem_postfix='') :
    inp_num_rings = 8
    inp_num_coeffs = 256 // inp_num_rings
    num_rings = 2 ** (7 - stage)
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings, 2 * inp_num_rings) :
        modulo = (zeta ** bits_reverse(i, 8)) % q
        ring_base = num_coeffs * ((i - inp_num_rings) // (2 ** stage))
        
        print ("    (* imm_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod (2**16) * (imm_poly_{0} * imm_poly_{0})".
        # print ("    eqmod (2**16) * (imm_poly_{0})".
               format(i-inp_num_rings))
        print ("          {0} * (".format(factor))

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), j-ring_base,
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end = '')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [{0}, x**{1} - {2}]{3}".
               format (q, inp_num_coeffs, modulo, 
                       ',' if i < 2 * inp_num_rings - 1 else end))


def print_backward_algebraic_condition_slice (stage, mem_base, step, factor, 
                                              num_slice, ith_slice,
                                              end='', mem_postfix='') :
    inp_num_rings = 8
    inp_num_coeffs = 256 // inp_num_rings
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 2 ** (7 - stage)
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 8)) % q
        ring_base = num_coeffs * ((i - inp_num_rings) // (2 ** stage))
        
        print ("    (* imm_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod (2**16) * (imm_poly_{0} * imm_poly_{0})".
        # print ("    eqmod (2**16) * (imm_poly_{0})".
               format(i-inp_num_rings))
        print ("          {0} * (".format(factor))

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), j-ring_base,
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end = '')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [{0}, x**{1} - {2}]{3}".
               format (q, inp_num_coeffs, modulo, 
                       ',' if i < inp_num_rings + (ith_slice + 1) * 
                                  rings_per_slice - 1 else end))


print ("proc main (")
print ("  sint16 x,")
print_inputs ()
print (") =\n")
print_pre_condition ()
print_params ()
print_inits ()

print ("(* === layer 1 === *)")
print_cut ()
print ("  (* algebraic *)")
print ("  and [")
print_mid_algebraic_condition (1, coeff_base, 2, factor=2)
print ("  ]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_range_condition (coeff_base, 2, factor=1)
print ("  ]")
print (";\n")

print ("(* === layer 2+3+4 === *)")
print_cut ()
cut_234_all = get_cut_num()
print ("  (* algebraic *)")
print ("  and [")
print_mid_algebraic_condition (4, coeff_base, 2, factor=16)
print ("  ]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_range_condition (coeff_base, 2, factor=1)
print ("  ]")
print (";\n")

### split the algebraic conditions into 8 slices
cut_234_slices = []
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_234_slices.append (get_cut_num())
    print ("  and [")
    print_mid_algebraic_condition_slice (4, coeff_base, 2, factor=16, 
                                         num_slice=8, ith_slice=i)
    print ("  ] prove with [cuts [{0}]]".format(cut_234_all))
    print ("  &&")
    print ("  true")
    print (";\n")
    
### be ready for next layer
print_cut ()
print ("  true")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_range_condition (coeff_base, 2, factor=1)
print ("  ] prove with [cuts [{0}]]".format(cut_234_all))
print (";\n")
print_imm_polys (coeff_base, 2)


print ("(* === layer 5+6+7 === *)")
print_cut ()
cut_567_all = get_cut_num()
print ("  (* algebraic *)")
print ("  and [")
print_backward_algebraic_condition (7, coeff_base, 2, factor=16)
print ("  ]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_range_condition (coeff_base, 2, factor=1)
print ("  ]")
print (";\n")


### split the algebraic conditions into 8 slices
cut_567_slices = []
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_567_slices.append (get_cut_num())
    print ("  and [")
    print_backward_algebraic_condition_slice (7, coeff_base, 2, factor=16, 
                                              num_slice=8, ith_slice=i)
    print ("  ] prove with [cuts [{0}]]".format(cut_567_all))
    print ("  &&")
    print ("  true")
    print (";\n")


### prove the post condition separately in 8 cuts
print ("(* === prove post condition separately === *)")
cut_post_slices = [];
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_post_slices.append (get_cut_num())
    print ("  and [")
    print_mid_algebraic_condition_slice (7, coeff_base, 2, factor=(2**16),
                                         num_slice=8, ith_slice=i)
    print ("  ] prove with [cuts [{0}, {1}], all ghosts]".
           format(cut_234_slices[i], cut_567_slices[i]))
    print ("  &&")
    print ("  true")
    print (";\n")



print_cut ()
print ("  true && true;\n")

print ("(* === post condition === *)")
print ("{")
print ("  (* algebraic *)")
print ("  and [")
print_mid_algebraic_condition (7, coeff_base, 2, factor=(2**16))
print ("  ] prove with [cuts [", end='')
for i in range(0, 8) :
    print ("{0}{1}".format(cut_post_slices[i], ',' if i < 7 else ''), end='')
print ("]]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_range_condition (coeff_base, 2, factor=1)
print ("  ] prove with [cuts [{0}]]".format(cut_567_all))
print ("}\n")



