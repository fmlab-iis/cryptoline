#!/usr/bin/env python3

import utils
import mceliece

def parameters (F, G, X, Y, z, c, d):
    print ('bit {0},uint16 {1},uint16 {2},'.format (z, X, F))
    for i in range (5):
        print ('uint16 {0}{1}'.format (Y, i),
               end = ',\n' if i == 4 else ',')
    print ('uint16 {0}00,uint16 {0}01,'.format (G), end = '')
    k = 2
    for i in range (1, 4):
        for j in range (2**(i+1)):
            print ('uint16 {0}{1}{2:x}'.format (G, i, j),
                   end = ',\n' if k % 6 == 5 else ',')
            k += 1
    for i in range (32):
        print ('uint16 {0}{1}{2:02x}'.format (G, 4, i),
               end = ',\n' if k % 6 == 5 else ',')
        k += 1
    print ()
    for i in range (32):
        for j in range (2):
            for k in range (12):
                print ('bit {0}{1:02x}{2:x}'.format (c if j == 0 else d, i, k),
                       end = '' if k == 11 else
                             ',\n' if k % 6 == 5 else ', ')
            print ('', end = ',\n' if j == 0 else '')
        print ('' if i == 31 else ',')

def precondition (G, Y, z, c, d):
    for i in range (32):
        print ('{0}4{1:02x} = poly {2} ['.format (G, i, z), end = '')
        for j in range (12):
            print ('{0}{1:02x}{2:x}'.format (c, i, j),
                   end = ']' if j == 11 else ',')
        print (' +\n    {0}4*poly {1} ['.format (Y, z), end = '')
        for j in range (12):
            print ('{0}{1:02x}{2:x}'.format (d, i, j),
                   end = ']' if j == 11 else ',')
        print (' /\\')
    print ('eqmod Y0 ((z**10+z**9+z**8+z**7+z**6+z**5+z**4+z**3+z**2)*(X**2+X)) [2, z**12+z**3+1] /\\')
    print ('eqmod Y1 ((z**8+z**5+z**2)*(Y0**2+Y0)) [2, z**12+z**3+1] /\\')
    print ('eqmod Y2 ((z**8+z**7+z**6+z**5+z**4+z+1)*(Y1**2+Y1)) [2, z**12+z**3+1] /\\')
    print ('eqmod Y3 ((z**5+z**2)*(Y2**2+Y2)) [2, z**12+z**3+1] /\\')
    print ('eqmod Y4 ((z**9+z**8+z**6+z**5+z**4+z**2)*(Y3**2+Y3)) [2, z**12+z**3+1] /\\')
    print ('eqmod F (G00+X*G01) [2, z**12+z**3+1] /\\')
    print ('eqmod G00 (G10+Y0*G12) [2, z**12+z**3+1] /\\')
    print ('eqmod G01 (G11+Y0*G13) [2, z**12+z**3+1] /\\')
    print ('eqmod G10 (G20+Y1*G24) [2, z**12+z**3+1] /\\')
    print ('eqmod G12 (G22+Y1*G26) [2, z**12+z**3+1] /\\')
    print ('eqmod G11 (G21+Y1*G25) [2, z**12+z**3+1] /\\')
    print ('eqmod G13 (G23+Y1*G27) [2, z**12+z**3+1] /\\')
    print ('eqmod G20 (G30+Y2*G38) [2, z**12+z**3+1] /\\')
    print ('eqmod G24 (G34+Y2*G3c) [2, z**12+z**3+1] /\\')
    print ('eqmod G22 (G32+Y2*G3a) [2, z**12+z**3+1] /\\')
    print ('eqmod G26 (G36+Y2*G3e) [2, z**12+z**3+1] /\\')
    print ('eqmod G21 (G31+Y2*G39) [2, z**12+z**3+1] /\\')
    print ('eqmod G25 (G35+Y2*G3d) [2, z**12+z**3+1] /\\')
    print ('eqmod G23 (G33+Y2*G3b) [2, z**12+z**3+1] /\\')
    print ('eqmod G27 (G37+Y2*G3f) [2, z**12+z**3+1] /\\')
    print ('eqmod G30 (G400+Y3*G410) [2, z**12+z**3+1] /\\')
    print ('eqmod G31 (G401+Y3*G411) [2, z**12+z**3+1] /\\')
    print ('eqmod G32 (G402+Y3*G41`2) [2, z**12+z**3+1] /\\')
    print ('eqmod G33 (G403+Y3*G413) [2, z**12+z**3+1] /\\')
    print ('eqmod G34 (G404+Y3*G414) [2, z**12+z**3+1] /\\')
    print ('eqmod G35 (G405+Y3*G415) [2, z**12+z**3+1] /\\')
    print ('eqmod G36 (G406+Y3*G416) [2, z**12+z**3+1] /\\')
    print ('eqmod G37 (G407+Y3*G417) [2, z**12+z**3+1] /\\')
    print ('eqmod G38 (G408+Y3*G418) [2, z**12+z**3+1] /\\')
    print ('eqmod G39 (G409+Y3*G419) [2, z**12+z**3+1] /\\')
    print ('eqmod G3a (G40a+Y3*G41a) [2, z**12+z**3+1] /\\')
    print ('eqmod G3b (G40b+Y3*G41b) [2, z**12+z**3+1] /\\')
    print ('eqmod G3c (G40c+Y3*G41c) [2, z**12+z**3+1] /\\')
    print ('eqmod G3d (G40d+Y3*G41d) [2, z**12+z**3+1] /\\')
    print ('eqmod G3e (G40e+Y3*G41e) [2, z**12+z**3+1] /\\')
    print ('eqmod G3f (G40f+Y3*G41f) [2, z**12+z**3+1]')
    print ('\n&&\n\ntrue')

        
def bit_constants (base, values):
    for i in range (len (values)):
        v = 0
        print ('(* ', end = '')
        for j in range (4):
            v = v+2**(64*j)*values[i][j]
            print ('{0:016x}'.format (values[i][j]),
                   end = ' *)\n' if j == 3 else ' ')
        bits = utils.tobits (256, v)
        print ('mov %L0x{0:x}\n    ['.format (base + 32*i), end = '')
        for j in range (256):
            print ('{0}@bit'.format (bits[j]),
                   end = '];\n\n' if j == 255 else
                         ',\n     ' if j % 16 == 15 else ',')

def byte_constants (base, values):
    max_i = max (1, len (values)//32)
    for i in range (max_i):
        print ('mov %L0x{0:x} ['.format (base + 32*i), end = '')
        max_j = min (len (values), 32)
        for j in range (max_j):
            print ('0x{0:02x}@uint8'.format (values[32*i+j]),
                   end = '];\n' if j == max_j - 1 else
                         ',\n                      ' if j % 4 == 3 else ',')

def initialize (base, c, d):
    for i in range (12):
        print ('mov %L0x{0:x}\n    ['.format (base + 8*i), end = '')
        for j in range (64):
            print ('{0}{1:02x}{2:x}'.format (c if j < 32 else d, j % 32, i),
                   end = '];\n' if j == 63 else
                         ',\n     ' if j % 8 == 7 else ',')

def nondet (base, n):
    for i in range (n):
        print ('nondet %L0x{0:x}@bit[256];'.format (base + 0x20*i),
               end = '\n' if i % 2 == 1 else ' ')

def AVX2_vec256_mul_asm (z, in0, in1, out):
    for i in range (12):
        print ('mov %ina{0:x} %L0x{1:x};'.format (i, in0 + 0x20*i),
               end = '\n' if i % 2 == 1 else ' ')
    print ()
    for i in range (12):
        print ('mov %inb{0:x} %L0x{1:x};'.format (i, in1 + 0x20*i),
               end = '\n' if i % 2 == 1 else ' ')
    print ()
    print ('call AVX2_vec256_mul_asm ({0},'.format (z))
    for i in range (12):
        print ('%ina{0:x}'.format (i), end = ',\n' if i == 11 else ',')
    for i in range (12):
        print ('%inb{0:x}'.format (i),
               end = ';\n' if i == 11 else ',')
    for i in range (12):
        print ('%L0x{0:x}'.format (out + 0x20*i),
               end = '\n);\n' if i == 11 else
                     ',\n' if i % 4 == 3 else ',')

def eq256 (base, bits):
    lbits = len (bits)
    assert (256 % lbits == 0)
    print ('%L0x{0:x} =\n['.format (base), end = '')
    for i in range (lbits):
        for j in range (256 // lbits):
            print ('{0}'.format (bits[i]),
                   end = '' if j == 256//lbits - 1 else
                         ',\n ' if j % 16 == 15 else ',')
        print ('', end = ']' if i == lbits - 1 else ',\n ')

def all_elements (z, basis):
    lgn = len (basis)
    n = 2** lgn
    bitss = [ utils.tobits (lgn, i) for i in range (n) ]
    zippeds = [ list (zip (bits, basis)) for bits in bitss ]
    filtereds = [ list (filter (lambda z: z[0] == 1, zipped))
                  for zipped in zippeds]
    coeffss = [ list (map (lambda f: f[1], filtered))
                for filtered in filtereds ]
    coeffs = [ utils.flatten (coeffs)  for coeffs in coeffss ]
    monomials = ['1', '{0}'.format (z)] +  [ '{0}**{1}'.format (z, i)
                                             for i in range (2, 12) ]
    assert (len (coeffs) == n)
    ret = []
    for i in range (n):
        dcounts = [0]*12
        for j in range (len (coeffs[i])):
            dcounts[coeffs[i][j]] += 1
        outcoeff = list (map (lambda dm: dm[1],
                              filter (lambda dm: dm[0] % 2 == 1,
                                      zip (dcounts, monomials))))
        ret = ret + [outcoeff]
    return list (map (lambda strs: utils.concat (strs, '+'), ret))

def cut_level0 (base, batch, z, Y, G, elements):
    print ('cut')
    for i in range (4):
        for j in range (64):
            print ('eqmod (poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1:-3}]'.
                       format (base+0x300*batch+0x20*k, i*64+j),
                       end = '])\n      ' if k == 11 else
                             ',\n               ' if k % 3 == 2 else ',')
            print ('{0}{1:02x} '.
                   format (G, mceliece.reversals[5][4*batch+i]), end = '')
            print ('[{0}{1}, {2}**12+{2}**3+1, 2]'.
                   format (Y, '' if elements[j] == '' else '+'+elements[j], z))
            print ('      prove with [precondition, cuts [0]],')
            print ('eqmod (poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1:-3}]'.
                       format (base+0x300*batch+0x180+0x20*k, i*64+j),
                       end = '])\n      ' if k == 11 else
                             ',\n               ' if k % 3 == 2 else ',')
            print ('{0}{1:02x} '.
                   format (G, mceliece.reversals[5][4*batch+i]), end = '')
            print ('[{0}{1}+1, {2}**12+{2}**3+1, 2]'.
                   format (Y, '' if elements[j] == '' else '+'+elements[j], z))
            print ('      prove with [precondition, cuts [0]]',
                   end = '' if j == 63 else ',\n')
        print (' && true;' if i == 3 else ',')

def cut_level1 (base, batch, z, Y, G, elements):
    print ('cut')
    for i in range (2):
        for j in range (2):
            for k in range (128):
                print ('eqmod (poly {0} ['.format (z), end = '')
                for l in range (12):
                    print ('%L0x{0:x}[{1:-3}]'.
                           format (base+0x300*batch+0x180*i+0x20*l, j*128+k),
                           end = '])\n      ' if l == 11 else
                                 ',\n               ' if l % 3 == 2 else ',')
                print ('{0}{1:x}'.
                       format (G, mceliece.reversals[4][2*batch+i]), end = '')
                print ('[{0}{1}{2}, {3}**12+{3}**3+1, 2]'.
                       format (Y, '' if elements[k] == '' else '+'+elements[k],
                               '' if j == 0 else '+1', z))
                print ('      prove with [cuts [{0}]]'.
                       format (2*batch+1),
                       end = '' if k == 127 else ',\n')
            print ('', end = '' if j == 1 else ',\n')
        print (' && true;' if i == 1 else ',')

def cut_level2 (base, batch, z, Y, G, elements):
    print ('cut')
    for i in range (2):
        for j in range (256):
            print ('eqmod (poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1:-3}]'.
                       format (base+0x300*batch+0x180*i+0x20*k, j),
                           end = '])\n      ' if k == 11 else
                                 ',\n               ' if k % 3 == 2 else ',')
            print ('{0}{1:x} '.
                   format (G, mceliece.reversals[3][batch]), end = '')
            print ('[{0}{1}{2}, {3}**12+{3}**3+1, 2]'.
                   format (Y, '' if elements[j] == '' else '+'+elements[j],
                           '' if i == 0 else '+1', z))
            print ('      prove with [cuts [{0}]]'.format (2*batch+17),
                   end = '' if j == 255 else ',\n')
        print (' && true;' if i == 1 else ',')

def cut_level3 (base, batch, z, Y, G, elements):
    print ('cut')
    for i in range (2):
        for j in range (2):
            for k in range (256):
                print ('eqmod (poly {0} ['.format (z), end = '')
                for l in range (12):
                    print ('%L0x{0:x}[{1:-3}]'.
                           format (base+0x600*batch+0x300*i+0x180*j+0x20*l, k),
                           end = '])\n      ' if l == 11 else
                                 ',\n               ' if l % 3 == 2 else ',')
                print ('{0}{1:x} '.
                       format (G, mceliece.reversals[2][batch]), end = '')
                print ('[{0}{1}{2}, {3}**12+{3}**3+1, 2]'.
                       format (Y, '' if elements[256*j+k] == '' else '+'+elements[256*j+k],
                               '' if i == 0 else '+1', z))
                print ('      prove with [cuts [{0}, {1}]]'.
                       format (4*batch+33, 4*batch+35),
                       end = '' if k == 255 else ',\n')
            print ('', end = '' if j == 1 else ',\n')
        print ('', end = '' if i == 1 else ',\n')
    print (' && true;')

def cut_level4 (base, batch, z, Y, G, elements):
    print ('cut')
    for i in range (2):
        for j in range (4):
            for k in range (256):
                print ('eqmod (poly {0} ['.format (z), end = '')
                for l in range (12):
                    print ('%L0x{0:x}[{1:-3}]'.
                           format (base+0xc00*batch+0x600*i+0x180*j+0x20*l, k),
                           end = '])\n      ' if l == 11 else
                                 ',\n               ' if l % 3 == 2 else ',')
                print ('{0}{1:x} '.
                       format (G, mceliece.reversals[1][batch]), end = '')
                print ('[{0}{1}{2}, {3}**12+{3}**3+1, 2]'.
                       format (Y, '' if elements[256*j+k] == '' else '+'+elements[256*j+k],
                               '' if i == 0 else '+1', z))
                print ('      prove with [cuts [{0}, {1}]]'.
                       format (4*batch+49, 4*batch+51),
                       end = '' if k == 255 else ',\n')
            print ('', end = '' if j == 3 else ',\n')
        print ('', end = '' if i == 1 else ',\n')
    print (' && true;')

def cut_level5 (base, z, X, F, elements):
    print ('cut')
    for i in range (16):
        for j in range (256):
            print ('eqmod (poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1:-3}]'.
                       format (base+0x180*i+0x20*k, j),
                           end = '])\n      ' if k == 11 else
                                 ',\n               ' if k % 3 == 2 else ',')
            print ('{0} '.format (F), end = '')
            print ('[{0}{1}, {2}**12+{2}**3+1, 2]'.
                   format (X, '' if elements[256*i+j] == '' else '+'+elements[256*i+j], z))
            print ('      prove with [cuts [{0}]]'.format (60+(i//2)%4),
                   end = '' if j == 255 else ',\n')
        print (' && true;' if i == 15 else ',')

def postcondition (base, z, X, F, elements):
    for i in range (16):
        for j in range (256):
            print ('eqmod (poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1:-3}]'.
                       format (base+0x180*i+0x20*k, j),
                           end = '])\n      ' if k == 11 else
                                 ',\n               ' if k % 3 == 2 else ',')
            print ('({0}+X**64) '.format (F), end = '')
            print ('[{0}{1}, {2}**12+{2}**3+1, 2]'.
                   format (X, '' if elements[256*i+j] == '' else '+'+elements[256*i+j], z))
            print ('      prove with [cuts [{0}]]'.format (69+2*(i%8)),
                   end = '' if j == 255 else ',\n')
        print (' && true;' if i == 15 else ',')


        
print ('\n\n\n(**************** parameters ****************)\n\n')
parameters ('F', 'G', 'X', 'Y', 'z', 'c', 'd')

print ('\n\n\n(**************** precondition ****************)\n\n')
precondition ('G', 'Y', 'z', 'c', 'd')

print ('\n\n\n(**************** initialization ****************)\n\n')
initialize (0x7ffffff50cc0, 'c', 'd')

print ('\n\n\n(**************** constants ****************)\n\n')
bit_constants (0x555555590c40, [mceliece.consts[1][1], mceliece.consts[1][2],
                                mceliece.consts[1][7]])
bit_constants (0x555555590ca0, [mceliece.consts[2][0], mceliece.consts[2][1],
                                mceliece.consts[2][2], mceliece.consts[2][4],
                                mceliece.consts[2][5], mceliece.consts[2][7],
                                mceliece.consts[2][8], mceliece.consts[2][10]])
bit_constants (0x555555590da0, [mceliece.consts[3][0], mceliece.consts[3][2],
                                mceliece.consts[3][3], mceliece.consts[3][4],
                                mceliece.consts[3][5], mceliece.consts[3][7],
                                mceliece.consts[3][9]])
bit_constants (0x555555590e80, [mceliece.consts[4][2], mceliece.consts[4][4]])
bit_constants (0x555555590ec0, [mceliece.consts[5][3], mceliece.consts[5][4],
                                mceliece.consts[5][6], mceliece.consts[5][7]])
bit_constants (0x555555590f40, [mceliece.consts[6][3], mceliece.consts[6][4]])
bit_constants (0x555555590f80, [mceliece.consts[9][4], mceliece.consts[9][5]])
bit_constants (0x555555591000, [mceliece.powers[0][1], mceliece.powers[0][5],
                                mceliece.powers[2][5]])

bit_constants (0x555555591108, [[1, 0, 0, 0]])
byte_constants (0x5555555901d0, [0x00, 0x02, 0x80, 0x80])
byte_constants (0x5555555901e0, [0x80, 0x80, 0x00, 0x02])
byte_constants (0x5555555901f0, [0x01, 0x03, 0x80, 0x80])
byte_constants (0x555555590200, [0x80, 0x80, 0x01, 0x03])
byte_constants (0x555555590fc0, mceliece.reversals[6])


print ('\n\n\n(**************** nondet ****************)\n\n')
nondet (0x7ffffff4d700, 12)


print ('\n\n\n(**************** AVX2_vec256_mul_asm ****************)\n\n')
for i in range (8):
    AVX2_vec256_mul_asm ('z', 0x7ffffff53420 + 0x300*i,
                         0x7ffffff4f200, 0x7ffffff4d700)
    print ('\n')
for i in range (8):
    AVX2_vec256_mul_asm ('z', 0x7ffffff4d880, 0x7ffffff4f380, 0x7ffffff4d700)
    print ('\n')
for i in range (8):
    AVX2_vec256_mul_asm ('z', 0x7ffffff53420 + 0x300*i,
                         0x7ffffff4f500, 0x7ffffff4d700)
    print ('\n')
for i in range (8):
    AVX2_vec256_mul_asm ('z', 0x7ffffff535a0 + 0x180*i + 0x300*(i//2),
                         0x7ffffff4f680 + 0x180*(i%2), 0x7ffffff4d700)
    print ('\n')
for i in range (4):
    AVX2_vec256_mul_asm ('z', 0x7ffffff538a0 + 0x180*i,
                         0x7ffffff4f980 + 0x180*i, 0x7ffffff4d700)
    print ('\n')
for i in range (4):
    AVX2_vec256_mul_asm ('z', 0x7ffffff544a0 + 0x180*i,
                         0x7ffffff4f980 + 0x180*i, 0x7ffffff4d700)
    print ('\n')
for i in range (8):
    AVX2_vec256_mul_asm ('z', 0x7ffffff53ea0 + 0x180*i,
                         0x7ffffff4ff80 + 0x180*i, 0x7ffffff4d700)
    print ('\n')

print ('\n\n\n(**************** CUT 0 ****************)\n\n')
print ('cut')
for i in range (8):
    batch = mceliece.reversals[5][4*i:4*i+4]
    for j in range (12):
        bits = [ 'c{0:02x}{1:x}'.format (batch[i], j) for i in range (4) ]
        eq256 (0x7ffffff532a0 + 0x300*i + 0x20*j, bits)
        print (' /\\')
    for j in range (12):
        bits = [ 'd{0:02x}{1:x}'.format (batch[i], j) for i in range (4) ]
        eq256 (0x7ffffff532a0 + 0x300*i + 0x180 + 0x20*j, bits)
        print ('', end = '' if j == 11 else ' /\\\n')
    print (' && true;' if i == 7 else ' /\\')

print ('\n\n\n(**************** LEVEL 0 ****************)\n\n')
    
elements0 = all_elements ('z', mceliece.bases[0])
for i in range (8):
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+1))
    cut_level0 (0x7ffffff532a0, i, 'z', 'Y4', 'G4', elements0)
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+2))
    print ('cut true && true;')

print ('\n\n\n(**************** LEVEL 1 ****************)\n\n')
    
elements1 = all_elements ('z', mceliece.bases[1])
for i in range (8):
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+17))
    cut_level1 (0x7ffffff532a0, i, 'z', 'Y3', 'G3', elements1)
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+18))
    print ('cut true && true;')

print ('\n\n\n(**************** LEVEL 2 ****************)\n\n')

elements2 = all_elements ('z', mceliece.bases[2])
for i in range (8):
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+33))
    cut_level2 (0x7ffffff532a0, i, 'z', 'Y2', 'G2', elements2)
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+34))
    print ('cut true && true;')

print ('\n\n\n(**************** LEVEL 3 ****************)\n\n')
    
elements3 = all_elements ('z', mceliece.bases[3])
for i in range (4):
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+49))
    cut_level3 (0x7ffffff532a0, i, 'z', 'Y1', 'G1', elements3)
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+50))
    print ('cut true && true;')

print ('\n\n\n(**************** LEVEL 4 ****************)\n\n')
    
elements4 = all_elements ('z', mceliece.bases[4])
for i in range (2):
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+57))
    cut_level4 (0x7ffffff532a0, i, 'z', 'Y0', 'G0', elements4)
    print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
           format (2*i+58))
    print ('cut true && true;')

print ('\n\n\n(**************** LEVEL 5 ****************)\n\n')
    
elements5 = all_elements ('z', mceliece.bases[5])
print ('\n\n\n(**************** CUT {0} ****************)\n\n'.
       format (69))
cut_level5 (0x7ffffff532a0, 'z', 'X', 'F', elements5)

print ('\n\n\n(**************** post condition ****************)\n\n')
postcondition (0x7ffffff532a0, 'z', 'X', 'F', elements5)


############################ for vec256_mul_asm ############################

def AVX2_vec256_mul_asm (z, c, a, b):
    for i in range (256):
        print ('eqmod (poly {0} ['.format (z), end = '')
        for j in range (12):
            print ('%{0}{1:x}[{2:-3}]'.format (c, j, i),
                   end = '])\n      (poly {0} ['.format (z) if j == 11 else
                         ',\n               ' if j % 6 == 5 else ',')
        for j in range (12):
            print ('%{0}{1:x}[{2:-3}]'.format (a, j, i),
                   end = '] *\n       poly {0} ['.format (z) if j == 11 else
                         ',\n               ' if j % 6 == 5 else ',')
        for j in range (12):
            print ('%{0}{1:x}[{2:-3}]'.format (b, j, i),
                   end = '])\n      [2, {0}**12+{0}**3+1]'.format (z) if j == 11 else
                         ',\n               ' if j % 6 == 5 else ',')
        print ('\n &&\ntrue' if i == 255 else ' /\\')

# AVX2_vec256_mul_asm ('z', 'c', 'a', 'b')

############################ for butterflies.gas ############################

def movabs (v, r):
    print ('#! movabs \\$0x{0:x}, %%{1} -> '.format (v, r), end = '')
    print ('mov %{0}\\n    ['.format (r), end = '')
    bits = utils.tobits (64, v)
    for i in range (64):
        print ('{0}@bit'.format (bits[i]),
               end = ']\n' if i == 63 else
                     ',\\n     ' if i % 16 == 15 else ',')

movabs_values = [
 0xf00f0ff0f00f0ff0,0xf0f00f0f0f0ff0f0, 0xff00ff00ff00ff0,0xaa5555aaaa5555aa, 
 0x33cccc33cc3333cc,0xffff0000ffff0000,0xcc33cc3333cc33cc,0x33cc33cc33cc33cc, 
 0x5a5a5a5a5a5a5a5a,0xff00ff00ff00ff00,0x3c3c3c3c3c3c3c3c,0xcc3333cccc3333cc, 
 0xc33cc33cc33cc33c,0x55555555aaaaaaaa,0x33333333cccccccc,0xffffffff0000,     
 0xa55a5aa55aa5a55a,0xcc3333cc33cccc33,0x9669699696696996,0x6996699669966996, 
 0xc33c3cc33cc3c33c,0x3cc3c33c3cc3c33c,0x9669966996699669,0xffffffff00000000, 
 0xf0f0f0f0f0f0f0f0,0xcccccccccccccccc,0xaaaaaaaaaaaaaaaa,0xf0f0f0ff0f0f0f0,  
 0xf0f0f0f0f0f0f0f0,0xff00ff00ff00ff00,0x3333cccc3333cccc,0xaaaaaaaaaaaaaaaa,
 0xf0f0f0f00f0f0f0f, 0xf0f0f0f0f0f0f0f,  0xff00ff00ff00ff,0x5555555555555555, 
 0xcccc3333cccc3333]

# for i in range (len (movabs_values)):
#     movabs (movabs_values[i], 'rax')

# vpsrlvq %%ymm5,%%ymm0,%%ymm1 [0 2 4 6]
# vpsrlvq %%ymm4,%%ymm0,%%ymm0 [1 3 5 7]

def vpsrlvq (reversal, idx):
    print ('#! vpsrlvq{2:x} %%ymm{0}, %%ymm0, %%ymm{1} -> '.
           format (5 - idx%2, 1 - idx%2, idx), end = '')
    print ('assert %ymm{0} = ['.format (5-idx%2), end = '')
    for i in range (4):
        print ('{0}'.format (reversal[8*(idx//2) + 2*i + idx%2]),
               end = '] && true;\\n' if i == 3 else ',')
    print ('mov %ymm{0}\\n    ['.format (1-idx%2), end = '')
    for i in range (4):
        shift = reversal[8*(idx//2) + 2*i + idx%2]
        for j in range (64):
            k = 64*i+shift+j
            if k < 64*(i+1):
                print ('%ymm0[{0}]'.format (k), end = '')
            else:
                print ('0@bit', end = '')
            print ('' if j == 63 else
                   ',\\n     ' if j % 8 == 7 else ',', end = '')
        print (']\n' if i == 3 else ',\\n     ', end = '')

# for i in range (16):
#     vpsrlvq (mceliece.reversals[6], i)
