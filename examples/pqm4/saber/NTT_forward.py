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

roots = [
    2921358, -10203707, -1203107, 6577444, 1776511, -4194664, 5735629, 
    7301157, -4359117, 5669200, -9600669, 10575964, 8064557, -819256, 
    -9084979, -7944926, 1686897, -588496, -8693794, -7460755, 2723061, 
    -11637995, -4810496, 7146164, 4092287, -3261033, -5563113, -11307548, 
    -7261676, -4293923, -6267356, -9567042, 11980428, 6931502, 2510833, 
    4034819, -1988985, -8060830, -10319196, -6726360, 10171507, 8693725, 
    647681, -9344183, 2733537, -42688, 10505644, -9502337, 10910265, 
    2695651, 11450840, -12030083, 5318976, -1134236, -614272, -6236460, 
    -2559945, -908786, -2665284, 5184115, -1069349, -9233574, 12174351
]
MOD = 25166081
Mprime = 41877759
zeta = 9849271


def init_roots(base) :
    # print("(* === init roots BEGIN === *)")
    print("(* roots *)")
    for i in range(0, len(roots) - 1, 2) :
        print("mov L0x{0:x} ({1:9d})@sint32;  mov L0x{2:x} ({3:9d})@sint32;".
              format(base+4*i, roots[i], base+4*(i+1), roots[i+1]))
    print("mov L0x{0:x} ({1:9d})@sint32;".
          format(base+4*(len(roots)-1), roots[len(roots)-1]))
    # print("(* === init roots END === *)")
    print("")

def print_inputs() :
    type = "sint16"
    # print("(* === inputs BEGIN === *)")
    for i in range(0, 256, 4) :
        print("  {0} a{1:03d}, {0} a{2:03d}, {0} a{3:03d}, {0} a{4:03d}{5}".
              format(type, i, i+1, i+2, i+3, "," if i < 252 else ""))
    # print("(* === inputs END === *)")

def print_params() :
    print("(* === params === *)\n")
    print("mov MOD 25166081@sint32;")
    print("mov Mprime 41877759@sint32;")
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
    init_srcs(0x20019848)
    init_roots(0x800d054)
    
    print("(* regs *)")
    print("nondet sp@uint32;")
    print("mov L0x20019690 sp;")
    print("nondet r0@uint32;")
    print("nondet r1@uint32;")
    print("mov r2 Mprime;")
    print("mov r3 MOD;")
    print("")

    print_poly()

def print_algebraic_condition (stage, mem_base):
    # k = 6
    num_rings = 2 ** stage
    num_coeffs = 256 // num_rings

    print("  (* algebraic *)")
    print("  and [")

    for i in range (num_rings, 2 * num_rings) :
        modulo = (zeta ** bits_reverse(i, 7)) % MOD
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
              format (MOD, num_coeffs, modulo, 
                      ',' if i < 2 * num_rings - 1 else ''))
        
    print("  ]")


def print_range_condition (stage, mem_base):
    q = 25166081 # MOD

    print ("  (* range *)")
    print ("  and [")
    for i in range (0, 256):
        print ("    {0}@32 * (-{1})@32 <=s L0x{2:x}, L0x{2:x} <s {0}@32 * {1}@32{3}".
               format (stage+1, q, mem_base+4*i, "," if i < 255 else ""))
    print ("  ]")


def print_cut (stage, mem_base):
    print ("cut")
    print_algebraic_condition (stage, mem_base)
    print ("  &&")
    print_range_condition (stage, mem_base)
    print (";\n")

def print_post_cond ():
    print ("{")
    print_algebraic_condition (6, 0x20019a48)
    print ("  &&")
    print_range_condition (6, 0x20019a48)
    print ("}\n")


print("proc main (")
print("  sint32 x,")
print_inputs()
print(") =\n")
print_pre_cond()
print_params()
print_inits()

print("(* === layer 1_2_3 === *)")
print_cut (3, 0x20019a48)

print("(* === layer 4_5_6 === *)")
print_post_cond()


