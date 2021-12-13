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

q = "2**13"
Q = 25570049
Qprime = -1991431425
zeta = 6103972
inv_roots = [
    -800936, -800936, 10790239, -800936, 6257664, 10790239, 9536204,
    -800936, -800936, 10790239, -800936, 6257664, 10790239, 9536204, 
    -45519, -9785872, 8741751, -12555915, 9222792, -3974469, 6186724,
    -1752018, 6308437, 1279366, 9214817, -11739496, -851137, -7869959,
    -5757708, 4113944, 11492079, 2504776, -564125, 2964683, -2036310,
    7029166, 2951251, 6257664, 6308437, 11013493, 1279366, 1556720,
    9214817, 2917062, -10111425, -4039544, -1461286, 7718709, 9738183,
    -10403380, 11943422, -7769673, -2216394, -4530982, -2927433, 2683865,
    -8679711, 4045107, -8224194, -2249904, -7863363, 12440447, -10742070,
    -3018363, -3083871, -3820015, -8140660, 10790239, 6257664, 9536204,
    6308437, -2216394, 11013493, -10276457, -10327566, -4435558, 2610308,
    5372942, -8646977, 3434759, 1700428, -1560502, 11013493, 1556720,
    2917062, -8378129, -371460, 6592493, 10270322, -7732673, -6689674,
    2456345, -7861158, 10371470, -9485354, 11616061, 4175938, 9536204,
    -2216394, -10276457, -4530982, -4935045, -2927433, 2952568, 1891592,
    -6151042, -7828647, -617246, 2503574, -9072878, -3135900, 10766842,
    -10276457, -4935045, 2952568, 2522583, 6526839, 12696742, 12652760,
    -5847575, 4072115, 853026, 5000199, -3241236, 2941196, -4942030,
    2549034
]
coeff_base = 0x2001a248
root_base = 0x800f7a0
output_base = 0x20019848

num_cuts = 0

def print_cut () :
    global num_cuts
    print ("cut (* {0} *)".format(num_cuts))
    num_cuts = num_cuts + 1

def get_cut_num () :
    return (num_cuts - 1)


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
               format (argument('a',i), Q, "," if i < 255 else ""))
    print ("  ]")


def print_pre_condition () :
    print ("{")
    print ("  true")
    print ("  &&")
    print_pre_range_condition ()
    print ("}\n")


def print_params () :
    print ("(* === params === *)\n")
    print ("mov Q {0}@sint32;".format(Q))
    print ("mov Qprime ({0})@sint32;".format(Qprime))
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

def print_y_0 () :
    print ("(* y's for layer 0 *)")
    for i in range (0, 64) :
        print ("ghost y_0_{0:02d}@bit : true && true;".format(i))
    print ("")
        
def print_y_3 () :
    print ("(* y's for layer 3 *)")
    for i in range (0, 8) :
        print ("ghost y_3_{0}@bit :".format(i))
        print ("  and [")
        for j in range (0, 8) :
            twistor = ((zeta**16) ** bits_reverse(j,3)) % Q
            print ("    y_3_{0} = y_0_{1:02d} * {2}{3}".
                   format(i, j+8*i, twistor, ',' if j < 7 else ''))
        print ("  ] && true;")
    print ("")

def print_y_6 () :
    print ("(* y for layer 6 *)")
    print ("ghost y_6@bit :")
    print ("  and [")
    for j in range (0, 8) :
        twistor = (zeta * (zeta**2) ** bits_reverse(j,3)) % Q
        print ("    y_6 = y_3_{0} * {1}{2}".
               format(j, twistor, ',' if j < 7 else ''))
    print ("  ] && true;")
    print ("")


def print_inits () :
    print ("(* === inits === *)\n")
    init_srcs (coeff_base)
    init_roots (root_base)
    
    print ("(* regs *)")
    print ("nondet sp@uint32;")
    print ("mov L0x200194f0 sp;")
    print ("nondet r0@uint32;")
    print ("nondet r1@uint32;")
    print ("mov r2 Qprime;")
    print ("mov r3 Q;")
    print ("")

    print_inp_polys (coeff_base, 4)
    print_y_0 ()


def print_twisted_algebraic_condition_012 (mem_base, step, factor, 
                                           num_slice=1, ith_slice=0,
                                           end='', mem_postfix='') :
    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 8
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 7)) % Q
        ring_base = num_coeffs * ((i - inp_num_rings) // 8)
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            print ("            ", end = '')
            print ("{0} * (x**{1}) * ((y_3_{3})**{2}){4}".
                   format (memory(mem_base,step,j,mem_postfix), 
                           (j-ring_base)%4, (j-ring_base)//4,
                           (i-inp_num_rings)//8,
                           " + " if j < ring_base + num_coeffs - 1 else ""))

        print ("          )")
        print ("          [{0}, x**4 - y_0_{2:02d} * {1}, y_0_{2:02d} - 1]{3}".
               format (Q, modulo, 
                       i-inp_num_rings,
                       ',' if i < inp_num_rings + (ith_slice + 1) * 
                                  rings_per_slice - 1 else end))


def print_twisted_algebraic_condition_345 (mem_base, step, factor, 
                                           num_slice=1, ith_slice=0,
                                           end='', mem_postfix='') :
    inp_num_rings = 8
    inp_num_coeffs = 256 // inp_num_rings    
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 1
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 4)) % Q
        ring_base = num_coeffs * ((i - inp_num_rings) // 8)
        
        print ("    (* imm_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (imm_poly_{0} * imm_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          8 * (")

        for j in range (ring_base, ring_base + num_coeffs) :
            print ("            ", end = '')
            print ("{0} * (x**{1}) * (y_6**{2}){3}".
                   format (memory(mem_base,step,j,mem_postfix), 
                           (j-ring_base)%4, (j-ring_base)//4,
                           " + " if j < ring_base + num_coeffs - 1 else ""))

        print ("          )")
        print ("          [{0}, x**4 - y_3_{2} * {1}, y_3_{2}**8 - 1]{3}".
               format (Q, modulo, i-inp_num_rings,
                       ',' if i < inp_num_rings + (ith_slice + 1) * 
                                  rings_per_slice - 1 else end))
                       

def print_twisted_algebraic_condition_012345 (mem_base, step, factor,
                                              num_slice=1, ith_slice=0,
                                              end='', mem_postfix='') :
    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings    
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 1
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 7)) % Q
        ring_base = num_coeffs * ((i - inp_num_rings) // 64)
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            print ("            ", end = '')
            print ("{0} * (x**{1}) * ((y_6)**{2}){3}".
                   format (memory(mem_base,step,j,mem_postfix), 
                           (j-ring_base)%4, (j-ring_base)//4,
                           " + " if j < ring_base + num_coeffs - 1 else ""))

        print ("          )")
        print ("          [{0}, x**4 - y_0_{2:02d} * {1}, y_0_{2:02d} - 1]{3}".
               format (Q, modulo, i-inp_num_rings,
                       ',' if i < inp_num_rings + (ith_slice + 1) * 
                                  rings_per_slice - 1 else end))


def print_onlyx_twisted_algebraic_condition (mem_base, step, factor,
                                             num_slice=1, ith_slice=0,
                                             end='', mem_postfix='') :
    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings    
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 1
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 7)) % Q
        ring_base = num_coeffs * ((i - inp_num_rings) // 64)
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), 
                           (j-ring_base), 
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end='')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [{0}, x**4 - y_0_{2:02d} * {1}, y_0_{2:02d} - 1]{3}".
               format (Q, modulo, i-inp_num_rings,
                       ',' if i < inp_num_rings + (ith_slice + 1) * 
                                  rings_per_slice - 1 else end))


def print_complete_twisted_algebraic_condition (mem_base, step, factor,
                                                num_slice=1, ith_slice=0,
                                                end='', mem_postfix='') :
    inp_num_rings = 64
    inp_num_coeffs = 256 // inp_num_rings    
    rings_per_slice = inp_num_rings // num_slice
    num_rings = 1
    num_coeffs = 256 // num_rings

    for i in range (inp_num_rings + ith_slice * rings_per_slice, 
                    inp_num_rings + (ith_slice + 1) * rings_per_slice) :
        modulo = (zeta ** bits_reverse(i, 7)) % Q
        ring_base = num_coeffs * ((i - inp_num_rings) // 64)
        
        print ("    (* inp_poly_{0} *)".format(i-inp_num_rings))
        print ("    eqmod {1} * (inp_poly_{0} * inp_poly_{0})".
               format(i-inp_num_rings, factor))
        print ("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print ("            ", end = '')
            print ("{0} * (x**{1}){2}".
                   format (memory(mem_base,step,j,mem_postfix), 
                           (j-ring_base), 
                           " + " if j < ring_base + num_coeffs - 1 else ""),
                   end='')
            if (j - ring_base) % 2 == 1 : print ("")

        print ("          )")
        print ("          [{0}, x**4 - {1}]{2}".
               format (Q, modulo, 
                       ',' if i < inp_num_rings + (ith_slice + 1) * 
                                  rings_per_slice - 1 else end))


def print_poly_eqmod_q (mem_base, step, end='') :
    print ("    eqmod (")
    for j in range (0, 256) :
        if j % 2 == 0 : print ("            ", end = '')
        print ("{0} * (x**{1}){2}".
               format (memory(mem_base,step,j), j, 
                       " + " if j < 255 else ""), end='')
        if j % 2 == 1 : print ("")
    print ("          )")

    print ("          (")
    for j in range (0, 256) :
        if j % 2 == 0 : print ("            ", end = '')
        print ("{0} * (x**{1}){2}".
               format (memory(mem_base,step,j,"_f"), j, 
                       " + " if j < 255 else ""), end='')
        if j % 2 == 1 : print ("")
    print ("          )")

    print ("          [{0}]{1}".format (q, end))


def print_poly_equivalence (mem_base, step, end='', mem_postfix='') :

    print ("  eqmod (")
    for j in range (0, 256) :
        if j % 2 == 0 : print ("          ", end = '')
        print ("{0} * (x**{1}){2}".
               format (memory(mem_base,step,j,mem_postfix), j, 
                       " + " if j < 255 else ""), end='')
        if j % 2 == 1 : print ("")
    print ("        )")

    print ("        (")
    for j in range (0, 256) :
        print ("          ", end = '')
        print ("{0} * (x**{1}) * ((y_6)**{2}){3}".
               format (memory(mem_base,step,j,mem_postfix),
                       j%4, j//4,
                       " + " if j < 255 else ""))
    print ("        )")

    print ("        [{0}, x**4 - y_6, y_6**64 + 1]{1}".
           format (Q, end))


def print_eqmod_q (mem_base, step, end='') :
    print ("    (* mod q *)")
    for i in range (0, 256):
        print ("    eqmod {0}_f {0} {1}{2}".
               format (memory(mem_base,step,i), q, ',' if i < 255 else end))


def print_range_condition (mem_base, step, factor, end='', mem_postfix=''):
    for i in range (0, 256):
        print ("    {0}@32 * (-{1})@32 <=s {2}, {2} <s {0}@32 * {1}@32{3}".
               format (factor, Q, 
                       memory(mem_base,step,i,mem_postfix), 
                       "," if i < 255 else end))


def print_post_range_condition (mem_base, step, end='', mem_postfix=''):
    for i in range (0, 256):
        print ("    (-{0})@32 <=s {1}, {1} <=s {0}@32{2}".
               format (Q//2, memory(mem_base,2,i,mem_postfix), 
                       "," if i < 255 else end))


def print_imm_polys (mem_base, step) :
    print("(* imm_polys *)")
    num_rings = 8
    num_coeffs = 256 // num_rings    

    for i in range (num_rings, 2 * num_rings) :
        ring_base = num_coeffs * (i - num_rings)

        print("ghost imm_poly_{0}@bit :".format(i-num_rings))
        print("  imm_poly_{0} * imm_poly_{0} = ".format(i-num_rings))

        for j in range (ring_base, ring_base + num_coeffs, 2) :
            print("    {0} * (x**{1}) * (y_3_{7}**{5}) + {2} * (x**{3}) * (y_3_{7}**{6}){4}".
                  format (memory(mem_base,step,j), (j-ring_base)%4,
                          memory(mem_base,step,j+1), (j+1-ring_base)%4,
                          " + " if j < ring_base + num_coeffs - 2 else "",
                          (j-ring_base)//4,(j+1-ring_base)//4,
                          i-num_rings))
        
        print("  && true;\n")


def instantiate_y_0 (num_slice, ith_slice) :
    num_y = 64 // num_slice
    for j in range (0, num_y) :
        if j % 4 == 0 : print ("    ", end='')
        print ("y_0_{0:02d} = 1{1}".
               format(ith_slice*num_y+j, ", " if j < num_y-1 else ''), end='')
        if j % 4 == 3 : print ("")


print ("proc main (")
print ("  sint32 x,")
print_inputs ()
print (") =\n")
print_pre_condition ()
print_params ()
print_inits ()

print ("(* === layer i_0_1_2 === *)\n")
print_y_3 ()
print_cut ()
cut_012_all = get_cut_num()
print ("  (* algebraic *)")
print ("  and [")
print_twisted_algebraic_condition_012 (coeff_base, 4, factor=8)
print ("  ]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_range_condition (coeff_base, 4, factor=8)
print ("  ]")
print (";\n")

### split the algebraic conditions into 8 slices
print ("(* split the algebraic conditions into 8 slices *)")
cut_012_slices = []
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_012_slices.append (get_cut_num())
    print ("  and [")
    print_twisted_algebraic_condition_012 (coeff_base, 4, factor=8, 
                                           num_slice=8, ith_slice=i)
    print ("  ] prove with [cuts [{0}]]".format(cut_012_all))
    print ("  &&")
    print ("  true")
    print (";\n")

### be ready for next layer
print ("(* range conditions needed for next layer *)")
print_cut ()
print ("  true")
print ("  &&")
print ("  and [")
print_range_condition (coeff_base, 4, factor=8)
print ("  ] prove with [cuts [{0}]]".format(cut_012_all))
print (";\n")
print_imm_polys (coeff_base, 4)


print ("(* === layer i_3_4_5 === *)\n")
print_y_6 ()
print_cut ()
cut_345_all = get_cut_num()
print ("  (* algebraic *)")
print ("  and [")
print_twisted_algebraic_condition_345 (output_base, 2, factor="(2**32)", 
                                       end=',', mem_postfix="_f")
print_eqmod_q (output_base, 2)
print ("  ]")
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_post_range_condition (output_base, 2, mem_postfix="_f")
print ("  ]")
print (";\n")


### split the algebraic conditions into 8 slices and 1 slice for q
print ("(* split algebraic conditions into 8 slices and 1 slice for q *)")
cut_345_slices = []
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_345_slices.append (get_cut_num())
    print ("  and [")
    print_twisted_algebraic_condition_345 (output_base, 2, factor="(2**32)", 
                                           num_slice=8, ith_slice=i,
                                           mem_postfix="_f")
    print ("  ] prove with [cuts [{0}]]".format(cut_345_all))
    print ("  &&")
    print ("  true")
    print (";\n")
print_cut ()
print ("  true && true;\n")
print ("(* slice for q *)")
print_cut ()
cut_q = get_cut_num()
print ("  and [")
print_eqmod_q (output_base, 2)
print ("  ] prove with [cuts [{0}]]".format(cut_345_all))
print ("  &&")
print ("  true")
print (";\n")


### prove layer 0_1_2_3_4_5 separately in 8 cuts
print ("(* === prove layer 0_1_2_3_4_5 separately === *)")
cut_012345_slices = [];
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_012345_slices.append (get_cut_num())
    print ("  and [")
    print_twisted_algebraic_condition_012345 (output_base, 2, factor="(2**32)",
                                              num_slice=8, ith_slice=i,
                                              mem_postfix="_f")
    print ("  ] prove with [cuts [{0}, {1}], all ghosts]".
           format(cut_012_slices[i], cut_345_slices[i]))
    print ("  &&")
    print ("  true")
    print (";\n")


print ("(* === prove poly equivalence === *)")
print_cut ()
print ("  true && true;\n")
print_cut ()
cut_equiv = get_cut_num()
print ("  (* algebraic *)")
print_poly_equivalence (output_base, 2, mem_postfix="_f")
print ("  &&")
print ("  true")
print (";\n")


print ("(* === prove conditions for only-x polys separately === *)")
cut_onlyx_slices = [];
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))
    print_cut ()
    cut_onlyx_slices.append (get_cut_num())
    print ("  and [")
    print_onlyx_twisted_algebraic_condition (output_base, 2, factor="(2**32)",
                                             num_slice=8, ith_slice=i,
                                             mem_postfix="_f")
    print ("  ] prove with [cuts [{0}, {1}], all ghosts]".
           format(cut_012345_slices[i], cut_equiv))
    print ("  &&")
    print ("  true")
    print (";\n")


print ("(* === prove complete condition separately === *)")
cut_complete_slices = [];
for i in range (0, 8) :
    print_cut ()
    print ("  true && true;\n")
    print ("(* slice {0} *)".format(i))

    print ("assume (* instantiating y_0's *)")
    print ("  and [")
    instantiate_y_0 (num_slice=8, ith_slice=i)
    print ("  ] && true;")

    print_cut ()
    cut_complete_slices.append (get_cut_num())
    print ("  and [")
    print_complete_twisted_algebraic_condition (output_base, 2, factor="(2**32)",
                                                num_slice=8, ith_slice=i,
                                                mem_postfix="_f")
    print ("  ] prove with [cuts [{0}]]".format(cut_onlyx_slices[i]))
    print ("  &&")
    print ("  true")
    print (";\n")


### prove output poly and the one before truncated are equivalent mod q 
print ("(* === prove output poly and the one before truncated are equivalent mod q === *)") 
print_cut ()
print ("  true && true;\n")
print_cut ()
cut_poly_eqmod_q = get_cut_num()
print ("  and [")
print_poly_eqmod_q (output_base, 2)
print ("  ] prove with [cuts [{0}]]".format(cut_q))
print ("  &&")
print ("  true")
print (";\n")


print ("(* === post condition === *)")
print ("{")
print ("  and [")
print ("    (* = correctness of inverse NTT = *)")
print_complete_twisted_algebraic_condition (output_base, 2, factor="(2**32)",
                                            end=',', mem_postfix="_f")
print ("    (* = relation between final output and output of iNTT = *)")
print_poly_eqmod_q (output_base, 2)
print ("  ] prove with [cuts [", end='')
for i in range (0, 8) :
    print ("{0}, ".format(cut_complete_slices[i]), end='')
print ("{0}]]".format(cut_poly_eqmod_q))
print ("  &&")
print ("  (* range *)")
print ("  and [")
print_post_range_condition (output_base, 2, mem_postfix="_f")
print ("  ] prove with [cuts [{0}]]".format(cut_345_all))
print ("}\n")

