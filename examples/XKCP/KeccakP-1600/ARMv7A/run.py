#!/usr/bin/env python3

def print_inputs (base, name0, name1):
    for i in range (25):
        print ('mov L0x{0:x} {1}{2:02}; mov L0x{3:x} {4}{2:02};'.
               format (base + 8*2*i, name0, i,
                       base + 8*2*i+8, name1, i),
               end = '\n' if i % 2 == 1 else ' ')
    print ('')

def print_constants (base, name, size):
    for i in range (size):
        print ('mov L0x{0:x} ${1}_{2:02}@uint64;'.
               format (base + 8*i, name, i))

def print_outputs (base, name0, name1):
    for i in range (25):
        print ('mov {0}{1:02} L0x{2:x}; mov {3}{4:02} L0x{5:x};'.
               format (name0, i, base + 8*2*i,
                       name1, i, base + 8*2*i+8),
               end = '\n' if i % 2 == 1 else ' ')
    print ()


print ('(******** inputs ********)\n\n')
print_inputs (0x7effec40, 'A', 'B')

print ('\n\n(******** constants ********)\n\n')
print_constants (0x25400, 'KeccakF1600RoundConstants', 24)

print ('\n\n(******** outputs ********)\n\n')
print_outputs (0x7effec40, 'a', 'b')

