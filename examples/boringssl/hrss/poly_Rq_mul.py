#/usr/bin/python

start_in0 = 0x7fffffff9ed0
start_in1 = 0x7fffffffa450
start_out = 0x7fffffffa9d0

def print_arguments ():
    for i in range (701):
        print "a{0:03d},".format (i),
    print ""
    for i in range (700):
        print "b{0:03d},".format (i),    
    print "b700"


def print_initialization ():
    for i in range (701):
        print "mov L0x{0:x} a{1:03d};".format (start_in0 + i*2, i)
    print "\n"
    for i in range (701):
        print "mov L0x{0:x} b{1:03d};".format (start_in1 + i*2, i)

def print_uninitialized_cells ():
    for i in range (701, 704):
        print "nondet L0x{0:x};".format (start_in0 + i*2)
    print ""
    for i in range (701, 708):
        print "nondet L0x{0:x};".format (start_in1 + i*2)
    print ""
    for start in [0x7fffffff2d60, 0x7fffffff2da0]:
        for i in range (16):
            print "nondet L0x{0:x};".format (start + i*2)
        print ""
    for start in [0x7fffffff2d80, 0x7fffffff2dc0, 0x7fffffff9dc0,
                  0x7fffffff9de0, 0x7fffffff9e00, 0x7fffffff85c0,
                  0x7fffffff85e0, 0x7fffffff8600]:
        for i in range (8):
            print "nondet L0x{0:x};".format (start + i*2)
        print ""
    for start in [0x7fffffff2d98, 0x7fffffff2dd8, 0x7fffffff9dd8,
                  0x7fffffff9df8, 0x7fffffff9e18, 0x7fffffff85d8,
                  0x7fffffff85f8, 0x7fffffff8618]:
        for i in range (4):
            print "nondet L0x{0:x};".format (start + i*2)
        print ""
        

def print_result ():
    for i in range (701):
        print "mov r{1:03d} L0x{0:x};".format (start_out + i*2, i)


def print_precondition ():
    print "  and ["
    for i in range (701/3):
        print "    a{0:03d} <= const 16 8191, a{1:03d} <= const 16 8191,".format (i*3, i*3 + 1),
        print "a{0:03d} <= const 16 8191,".format (i*3 + 2)
    print "    a699 <= const 16 8191, a700 <= const 16 8191,"
    for i in range (701/3):
        print "    b{0:03d} <= const 16 8191, b{1:03d} <= const 16 8191,".format (i*3, i*3 + 1),
        print "b{0:03d} <= const 16 8191,".format (i*3 + 2)
    print "    b699 <= const 16 8191, b700 <= const 16 8191]"


def print_postcondition ():
    print "  and ["
    for i in range (701/3):
        print "    r{0:03d} <= const 16 8191, r{1:03d} <= const 16 8191,".format (i*3, i*3 + 1),
        print "r{0:03d} <= const 16 8191,".format (i*3 + 2)
    print "    r699 <= const 16 8191, r700 <= const 16 8191]"
    

print "(* arguments *)\n\n"
print_arguments ()
print "\n\n(* precondition *)\n\n"
print_precondition ()
print "\n\n(* uninitialized cells *)\n\n"
print_uninitialized_cells ()
print "\n\n(* initialization *)\n\n"
print_initialization ()
print "\n\n(* result *)\n\n"
print_result ()
print "\n\n(* postcondition *)\n\n"
print_postcondition ()
