# return a LSB-first bit-vector
def int_to_bits(i, width) :
    result = []
    for j in range(width) :
        result.append(i % 2)
        i = i // 2
    return result

# reverse a list
def reverse(l) :
    return l[::-1]

def bits_to_int(bv) :
    result = 0
    for j in range(0, len(bv)) :
        result += bv[j] * (2 ** j)
    return result

def bits_reverse(i, width) :
    return bits_to_int(reverse(int_to_bits(i, width)))
    
def init_srcs(base) :
    # print("(* === init srcs BEGIN === *)")
    print("(* src *)")
    for i in range(0, 256, 2) :
        print("mov L0x{0:x} a{1:03d};  mov L0x{2:x} a{3:03d};".
              format(base+2*i, i, base+2*(i+1), i+1))
    # print("(* === init srcs END === *)")
    print("")

Q = 25570049
Qprime = -1991431425
zeta = 6103972
roots = [
    -10790239, -9536204, -6257664, 10276457, 2216394, -11013493, -6308437,
    -2952568, -12652760, -6526839, 170812, -10085157, 11283370, 10064939, 
    4935045, -12696742, -2522583, -11057244, 831656, 9511410, 2088463,
    2927433, 8224194, 8679711, -8183720, -7836837, 5141500, -12428729,
    4530982, -4045107, -2683865, -12289212, -12672803, -11196795, 6573093,
    -2917062, -10270322, 371460, -9922532, 2470383, 10695464, -3892856,
    -1556720, -6592493, 8378129, 4619612, 6074925, 12120915, 7751589,
    -9214817, 5757708, 851137, -1196321, 8484143, 11670672, -3041171,
    -1279366, 7869959, 11739496, 6717881, -6139656, -6988319, -1579586
]
src_base = 0x20019848
root_base = 0x800f620
coeff_base = 0x20019a48


def init_roots(base) :
    print("(* roots *)")
    for i in range(0, len(roots) - 1, 2) :
        print("mov L0x{0:x} ({1:9d})@sint32;  mov L0x{2:x} ({3:9d})@sint32;".
              format(base+4*i, roots[i], base+4*(i+1), roots[i+1]))
    print("mov L0x{0:x} ({1:9d})@sint32;".
          format(base+4*(len(roots)-1), roots[len(roots)-1]))
    print("")

def print_inputs() :
    type = "sint16"
    for i in range(0, 256, 4) :
        print("  {0} a{1:03d}, {0} a{2:03d}, {0} a{3:03d}, {0} a{4:03d}{5}".
              format(type, i, i+1, i+2, i+3, "," if i < 252 else ""))

def print_params() :
    print("(* === params === *)\n")
    print("mov Q {0}@sint32;".format(Q))
    print("mov Qprime ({0})@sint32;".format(Qprime))
    print("")

def print_pre_rcond():
    print ("  (* range *)")
    print ("  and [")
    for i in range (0, 256):
        print ("    (-4096)@16 <=s a{0:03d}, a{0:03d} <s 4096@16{1}".
               format (i, "," if i < 255 else ""))
    print ("  ]")

def print_pre_cond() :
    print("{")
    print("  true")
    print("  &&")
    print_pre_rcond()
    print("}\n")

def print_poly ():
    print("(* inp_poly *)")
    print("ghost inp_poly@bit :")
    print("  inp_poly * inp_poly = ")
    for i in range (0, 256, 4):
        print("    a{0:03d} * (x**{0}) + a{1:03d} * (x**{1}) + ".
              format(i, i+1), end='')
        print("a{0:03d} * (x**{0}) + a{1:03d} * (x**{1}){2}".
              format (i+2, i+3, " +" if i < 252 else ""))
    print("  && true;\n")

def print_inits() :
    print("(* === inits === *)\n")
    init_srcs(src_base)
    init_roots(root_base)
    
    print("(* regs *)")
    print("nondet sp@uint32;")
    print("mov L0x200194f0 sp;")
    print("nondet r0@uint32;")
    print("nondet r1@uint32;")
    print("mov r2 Qprime;")
    print("mov r3 Q;")
    print("")

    print_poly()

def print_algebraic_condition (stage, mem_base):
    # k = 6
    num_rings = 2 ** stage
    num_coeffs = 256 // num_rings

    print("  (* algebraic *)")
    print("  and [")

    for i in range (num_rings, 2 * num_rings) :
        modulo = (zeta ** bits_reverse(i, 7)) % Q
        ring_base = num_coeffs * (i - num_rings)
        
        print("    eqmod (inp_poly * inp_poly)")
        print("          (")

        for j in range (ring_base, ring_base + num_coeffs) :
            if (j - ring_base) % 2 == 0 : print("            ", end = '')
            print("L0x{0:x} * (x**{1}){2}".
                  format (mem_base+4*j, j-ring_base,
                          " + " if j < ring_base + num_coeffs - 1 else ""),
                  end = '')
            if (j - ring_base) % 2 == 1 : print ("")

        print("          )")
        print("          [{0}, x**{1} - {2}]{3}".
              format (Q, num_coeffs, modulo, 
                      ',' if i < 2 * num_rings - 1 else ''))
        
    print("  ]")


def print_range_condition (stage, mem_base):
    print ("  (* range *)")
    print ("  and [")
    for i in range (0, 256):
        print ("    {0}@32 * (-{1})@32 <=s L0x{2:x}, L0x{2:x} <s {0}@32 * {1}@32{3}".
               format (stage+1, Q, mem_base+4*i, "," if i < 255 else ""))
    print ("  ]")


print("proc main (")
print("  sint32 x,")
print_inputs()
print(") =\n")
print_pre_cond()
print_params()
print_inits()

print("(* === layer 0_1_2 === *)")
print ("cut")
print_algebraic_condition (3, coeff_base)
print ("  &&")
print_range_condition (3, coeff_base)
print (";\n")

print("(* === layer 3_4_5 === *)")
print ("{")
print_algebraic_condition (6, coeff_base)
print ("  &&")
print_range_condition (6, coeff_base)
print ("}\n")


