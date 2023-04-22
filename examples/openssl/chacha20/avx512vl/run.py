#!/usr/bin/env python3

def print_parameters (names):
    l = len (names)
    for i in range (l):
        for j in range (16):
            print ('uint32 {0}{1:x}'.format (names[i], j),
                   end='\n' if i == l - 1 and j == 15 else
                       ',\n' if j%4 == 3 else ', ')

def print_initialization (names, regs):
    l = len (regs)
    for i in range (l):
        for j in range (8):
            print ('mov ymm{0}_{1} {2}{0:x}'.format (regs[i], j, names[j]),
                   end=';\n' if j%4 == 3 else '; ')

def print_outputs (names, regs):
    l = len (regs)
    for i in range (l):
        for j in range (8):
            print ('mov {2}{0:x} ymm{0}_{1}'.format (regs[i], j, names[j]),
                   end=';\n' if j%4 == 3 else '; ')
            
print_parameters (['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'])
print_initialization (['A', 'B', 'C', 'D', 'E', 'F', 'G', 'H'],
                      range (16))
print_outputs (['a', 'b', 'c', 'd', 'e', 'f', 'g', 'h'],
               range (16))
