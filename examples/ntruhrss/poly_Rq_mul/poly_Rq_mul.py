import sys

suffix = ["_LLLL", "_LLLH", "_LLHL", "_LLHH",
          "_LHLL", "_LHLH", "_LHHL", "_LHHH",
          "_HLLL", "_HLLH", "_HLHL", "_HLHH",
          "_HHLL", "_HHLH", "_HHHL", "_HHHH"]

N = 701

r_base = 0x7ffffffface0 # %rdi
a_base = 0x7fffffffb900 # %rsi
b_base = 0x7fffffffa1c0 # %rdx

def print_indices (name):
    width = 10
    NN = 708
    NN1_round_to_width = ((NN - 1)/ width) * width
    sys.stdout.softspace=0
    for i in range (0, NN1_round_to_width, width):
        for j in range (width):
            print "{0}{1:03d},".format (name, i + j),
        print "\n",
    for i in range (NN1_round_to_width, NN - 1):
        print "{0}{1:03d},".format (name, i),
    print "{0}{1:03d}".format (name, NN - 1),

def print_arguments ():
    print_indices ("a")
    print ",\n",
    print_indices ("b")
    print ""

def initialize_inputs (name, base):
    i = 0
    for j in range ((N - 1)/44 + 1):
        for k in range (2):
            for l in range (16):
                if (i < N):
                    print "bvAssign L0x{0:x}{1} (bvVar {2}{3:03d});".format (base + k * 0x20, suffix[l], name, i)
                    i = i + 1
        base = base + 0x40
        for l in range (12):
            print "bvAssign L0x{0:x}{1} (bvVar {2}{3:03d});".format (base, suffix[l], name, i)
            i = i + 1
        j = i
        for l in range (12, 16):
            print "bvAssign L0x{0:x}{1} (bvVar {2}{3:03d});".format (base, suffix[l], name, j)
            j = j + 1
        base = base + 0x18

def initialize ():
    initialize_inputs ("a", a_base)
    initialize_inputs ("b", b_base)

def finalize ():
    base = r_base
    i = 0
    for j in range ((N - 1) / 44 + 1):
        for k in range (2):
            for l in range (16):
                print "bvAssign c{0:03d} (bvVar L0x{1:x}{2});".format (i, base + k * 0x20, suffix[l])
                i = i + 1
        base = base + 0x40
        for l in range (8):
            print "bvAssign c{0:03d} (bvVar L0x{1:x}{2});".format (i, base, suffix[l])
            i = i + 1
        base = base + 0x10
        for l in range (4):
            if (i < N):
                print "bvAssign c{0:03d} (bvVar L0x{1:x}{2});".format (i, base, suffix[l])
                i = i + 1
        base = base + 0x8
    
print "(* arguments *)\n"
print_arguments ()

print "(* initial assignments *)\n"
initialize ()

print "(* final assignments *)\n"
finalize ()
