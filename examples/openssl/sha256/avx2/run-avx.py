#!/usr/bin/env python3

def print_parameters (name):
    for i in range (64):
        print ('uint8 {1}{0:02}'.format (i, name),
               end = '\n' if i == 63 else
                     ',\n' if i % 5 == 4 else ', ')
               

def print_inputs (base, name):
    for i in range (0, 64, 4):
        print ('join H {0}{1:02} {0}{2:02}; join L {0}{3:02} {0}{4:02};'.
               format (name, i+3, i+2, i+1, i),
               end=' ')
        print ('join L0x{0:x} H L;'.format (base + i))

def print_nondet (regs, addrs):
    for i in range (len (regs)):
        print ('nondet {0}@uint32;'.format (regs[i]),
               end = '\n' if i%4 == 3 else ' ')
    print ()
    for i in range (len (addrs)):
        print ('nondet L0x{0:x}@uint32;'.format (addrs[i]),
               end = '\n' if i%2 == 1 else ' ')
        
def print_counter (addrs):
    for i in range (len (addrs)):
        print ('mov L0x{0:x} 1@uint32;'.format (addrs[i]),
               end = '\n' if i%2 == 1 else ' ')

def print_constants (base, consts):
    for i in range (len (consts)):
        for j in range (8):
            print ('mov L0x{0:x} 0x{1:08x}@uint32;'.
                   format (base + 4*(8*i+j), consts[i]),
                   end = '\n' if j % 2 == 1 else ' ')

def print_output (base, name):
    for i in range (8):
        print ('mov {0}{1} L0x{2:x};'.
               format (name, i, base + 32*i),
               end = '\n' if i % 2 == 1 else ' ')

def print_init (base):
#    inits = [ 0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
#              0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19 ]
    for i in range (8):
        for j in range (8):
            print ('mov L0x{0:x} A{1};'.
                   format (base + 4*(8*i+j), i),
                   end = '\n' if j % 2 == 1 else ' ')

def print_k256 (base):
    k256 = [ 0x428a2f98, 0x71374491, 0xb5c0fbcf, 0xe9b5dba5,
             0x3956c25b, 0x59f111f1, 0x923f82a4, 0xab1c5ed5,
             0xd807aa98, 0x12835b01, 0x243185be, 0x550c7dc3,
             0x72be5d74, 0x80deb1fe, 0x9bdc06a7, 0xc19bf174,
             0xe49b69c1, 0xefbe4786, 0x0fc19dc6, 0x240ca1cc,
             0x2de92c6f, 0x4a7484aa, 0x5cb0a9dc, 0x76f988da,
             0x983e5152, 0xa831c66d, 0xb00327c8, 0xbf597fc7,
             0xc6e00bf3, 0xd5a79147, 0x06ca6351, 0x14292967,
             0x27b70a85, 0x2e1b2138, 0x4d2c6dfc, 0x53380d13,
             0x650a7354, 0x766a0abb, 0x81c2c92e, 0x92722c85,
             0xa2bfe8a1, 0xa81a664b, 0xc24b8b70, 0xc76c51a3,
             0xd192e819, 0xd6990624, 0xf40e3585, 0x106aa070,
             0x19a4c116, 0x1e376c08, 0x2748774c, 0x34b0bcb5,
             0x391c0cb3, 0x4ed8aa4a, 0x5b9cca4f, 0x682e6ff3,
             0x748f82ee, 0x78a5636f, 0x84c87814, 0x8cc70208,
             0x90befffa, 0xa4506ceb, 0xbef9a3f7, 0xc67178f2 ]
    print_constants (base, k256)

print_parameters ('A')
print (',')
print_parameters ('B')
print (',')
print_parameters ('C')
print (',')
print_parameters ('D')
print (',')
for i in range (8):
    print ('uint32 A{0}'.format (i),
           end = '\n' if i == 7 else
                 ',\n' if i == 3 else ', ')

print ('\n')

print_counter ([0x7fffffffd8a8, 0x7fffffffd8b8, 0x7fffffffd8c8, 0x7fffffffd8d8])

print ('\n')

print_nondet (['rsp'], [0x7fffffffd8a0, 0x7fffffffd8b0, 
                        0x7fffffffd8c0, 0x7fffffffd8d0, 
                        0x7fffffffd878, 0x7fffffffd880])

print ('\n')

print ('mov L0x55555555d200 0x00010203@uint32; mov L0x55555555d204 0x04050607@uint32;')
print ('mov L0x55555555d208 0x08090a0b@uint32; mov L0x55555555d20c 0x0c0d0e0f@uint32;')

print ('\n')

print_inputs (0x5555555612a0, 'A')
print ('')
print_inputs (0x5555555613b0, 'B')
print ('')
print_inputs (0x5555555614c0, 'C')
print ('')
print_inputs (0x5555555615d0, 'D')

print ('\n')

print_init (0x7fffffffd920)

print ('\n')

print_k256 (0x55555555ca00)

print ('\n')

print_output (0x7fffffffd920, 'a')
print_output (0x7fffffffd924, 'b')
print_output (0x7fffffffd928, 'c')
print_output (0x7fffffffd92c, 'd')
