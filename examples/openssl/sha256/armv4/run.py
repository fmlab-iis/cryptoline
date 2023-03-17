#!/usr/bin/env python3

def print_parameters (name):
    for i in range (64):
        print ('uint8 {1}{0:02}'.format (i, name),
               end = ',\n' if i == 63 else
                     ',\n' if i % 5 == 4 else ', ')
    for i in range (8):
        print ('uint32 {0}{1}'.format (name, i),
               end = '\n' if i == 7 else
                     ',\n' if i == 3 else ', ')

def print_inputs (base, name):
    for i in range (0, 64):
        print ('cast L0x{0:x}@uint32 {1}{2:02};'.format (base + i, name, i),
               end = '\n' if i%3 == 2 or i == 63 else ' ')

def print_nondet (regs, addrs):
    for i in range (len (regs)):
        print ('nondet {0}@uint32;'.format (regs[i]),
               end = '\n' if i%4 == 3 else ' ')
    print ()
    for i in range (len (addrs)):
        print ('nondet L0x{0:x}@uint32;'.format (addrs[i]),
               end = '\n' if i%2 == 1 else ' ')

def print_constants (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} 0x{1:08x}@uint32;'.
               format (base + 4*i, consts[i]),
               end = '\n' if i % 2 == 1 else ' ')

def print_outputs (base, name):
    for i in range (8):
        print ('mov {0}{1} L0x{2:x};'.
               format (name, i, base + 4*i),
               end = '\n' if i % 4 == 3 else ' ')

def print_init (base):
    for i in range (8):
        print ('mov L0x{0:x} A{1};'.
               format (base + 4*i, i),
               end = '\n' if i % 2 == 1 else ' ')
#    inits = [ 0x6a09e667, 0xbb67ae85, 0x3c6ef372, 0xa54ff53a,
#              0x510e527f, 0x9b05688c, 0x1f83d9ab, 0x5be0cd19 ]
#    print_constants (base, inits)

def print_k256 (base):
    k256 = [0x428a2f98,0x71374491,0xb5c0fbcf,0xe9b5dba5,
            0x3956c25b,0x59f111f1,0x923f82a4,0xab1c5ed5,
            0xd807aa98,0x12835b01,0x243185be,0x550c7dc3,
            0x72be5d74,0x80deb1fe,0x9bdc06a7,0xc19bf174,
            0xe49b69c1,0xefbe4786,0x0fc19dc6,0x240ca1cc,
            0x2de92c6f,0x4a7484aa,0x5cb0a9dc,0x76f988da,
            0x983e5152,0xa831c66d,0xb00327c8,0xbf597fc7,
            0xc6e00bf3,0xd5a79147,0x06ca6351,0x14292967,
            0x27b70a85,0x2e1b2138,0x4d2c6dfc,0x53380d13,
            0x650a7354,0x766a0abb,0x81c2c92e,0x92722c85,
            0xa2bfe8a1,0xa81a664b,0xc24b8b70,0xc76c51a3,
            0xd192e819,0xd6990624,0xf40e3585,0x106aa070,
            0x19a4c116,0x1e376c08,0x2748774c,0x34b0bcb5,
            0x391c0cb3,0x4ed8aa4a,0x5b9cca4f,0x682e6ff3,
            0x748f82ee,0x78a5636f,0x84c87814,0x8cc70208,
            0x90befffa,0xa4506ceb,0xbef9a3f7,0xc67178f2]
    print_constants (base, k256)

print ('(* parameters *)\n')
print_parameters ('A')

print ('\n(* nondets *)\n')
print_nondet (['r1', 'r2'], [0x407ffd38])

print ('\n(* inputs *)\n')
print_inputs (0x22074, 'A')

print ('\n(* initial hash values *)\n')
print_init (0x2204c)

print ('\n(* constants *)\n')
print_k256 (0x10c60)

print ('\n(* outputs *)\n')
print_outputs (0x2204c, 'a')
