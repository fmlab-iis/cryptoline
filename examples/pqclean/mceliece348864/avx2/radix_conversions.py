#! /usr/bin/env python

scalars = [
[
    0XF3CFC030FC30F003,
    0X3FCF0F003C00C00C,
    0X30033CC300C0C03C,
    0XCCFF0F3C0F30F0C0,
    0X0300C03FF303C3F0,
    0X3FFF3C0FF0CCCCC0,
    0XF3FFF0C00F3C3CC0,
    0X3003333FFFC3C000,
    0X0FF30FFFC3FFF300,
    0XFFC0F300F0F0CC00,
    0XC0CFF3FCCC3CFC00,
    0XFC3C03F0F330C000,
], [
    0X000F00000000F00F,
    0X00000F00F00000F0,
    0X0F00000F00000F00,
    0XF00F00F00F000000,
    0X00F00000000000F0,
    0X0000000F00000000,
    0XF00000000F00F000,
    0X00F00F00000F0000,
    0X0000F00000F00F00,
    0X000F00F00F00F000,
    0X00F00F0000000000,
    0X0000000000F00000,
], [
    0X0000FF00FF0000FF,
    0X0000FF000000FF00,
    0XFF0000FF00FF0000,
    0XFFFF0000FF000000,
    0X00FF00FF00FF0000,
    0X0000FFFFFF000000,
    0X00FFFF00FF000000,
    0XFFFFFF0000FF0000,
    0XFFFF00FFFF00FF00,
    0X0000FF0000000000,
    0XFFFFFF00FF000000,
    0X00FF000000000000,
], [
    0X000000000000FFFF,
    0X00000000FFFF0000,
    0X0000000000000000,
    0XFFFF000000000000,
    0X00000000FFFF0000,
    0X0000FFFF00000000,
    0X0000000000000000,
    0X00000000FFFF0000,
    0X0000FFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0X0000000000000000,
], [
    0X00000000FFFFFFFF,
    0XFFFFFFFF00000000,
    0XFFFFFFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0XFFFFFFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0XFFFFFFFF00000000,
    0X0000000000000000,
    0X0000000000000000,
    0X0000000000000000,
]
]

def parameters (c):
    for i in range (64):
        for j in range (12):
            print ('bit {0}{1:02x}{2:x}'.format (c, i, j),
                   end = '\n' if i == 63 and j == 11 else
                         ',\n' if j % 6 == 5 else ',')

def int2bits (n, v):
    ret = []
    for i in range (n):
        ret = ret + [v % 2]
        v //= 2
    return ret
            
def constants (base, consts):
    count = 0
    for i in range (len (consts)):
        for j in range (len (consts[i])):
            print ('mov %L0x{0:x}\n    ['.format (base + 8*count),
                   end = '')
            bits = int2bits (64, consts[i][j])
            for k in range (64):
                print ('{0}@bit'.format (bits[k]),
                       end = '];\n' if k == 63 else
                             ',\n     ' if k % 8 == 7 else ',')
            count += 1
            
def inputs (base, c):
    for i in range (12):
        print ('mov %L0x{0:x}\n    ['.
               format (base + 8*i), end = '')
        for j in range (64):
            print ('{0}{1:02x}{2:x}'.format (c, j, i),
                   end = '];\n' if j == 63 else
                         ',\n     ' if j % 16 == 15 else ',')

def polynomial (z, X, c, F):
    print ('ghost {2}@uint16:'.format (z, X, F))
    print ('{0} = '.format (F), end = '')
    for i in range (64):
        print ('poly {0} ['.format (z), end = '')
        for j in range (12):
            print ('{0}{1:02x}{2:x}'.format (c, i, j),
                   end = ']*{0}**{1}'.format (X, i) if j == 11 else ',')
        if i < 63:
            print ('+\n    ', end = '')
        else:
            print ('\n&& true;')

def polynomials (base, z, X, Y, c, F, level, deg):
    num = 64 // deg
    print ('ghost {0}{1}@uint16,'.format (X, level), end = '')
    for i in range (num):
        print ('{0}{1}{2:x}@uint16'.format (F, level, i),
               end = ':\n' if i == num - 1 else
                     ',\n      ' if i % 8 == 7 else ',')
    print ('{0}{2} = {1}{3}**2 + {1}{3} /\\'.
           format (X, Y if level > 0 else X,
                   level, level - 1 if level > 0 else ''))
    for i in range (num):
        print ('{0}{1}{2:x} ='.format (F, level, i))
        for j in range (deg):
            print ('poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1}]'.
                       format (base + 8*k, i+num*j),
                       end = ']' if k == 11 else
                             ',\n        ' if k % 3 == 2 else ',')
            print ('*{0}{1}**{2}'.format (X, level, j),
                   end = '\n' if j == deg - 1 else '+\n')
        print ('&& true;' if i == num - 1 else ' /\\')

def twists (base, factor, z, X, Y, c, F, G, level, deg):
    num = 64 // deg
    print ('ghost {0}{1}@uint16,'.format (Y, level), end = '')
    for i in range (2**(level+1)):
        print ('{0}{1}{2:x}@uint16'.format (G, level, i),
               end = ':\n' if i == 2**(level+1) - 1 else ',')
    print ('      ({3})*{1}{2} = {0}{2} /\\'.
           format (X, Y, level, factor))
    for i in range (2**(level + 1)):
        print ('{0}{1}{2:x} = '.format (G, level, i), end = '')
        for j in range (deg):
            print ('poly {0} ['.format (z), end = '')
            for k in range (12):
                print ('%L0x{0:x}[{1}]'.
                       format (base + 8*k, i+num*j),
                       end = ']' if k == 11 else
                             ',\n              ' if k % 3 == 2 else ',')
            print ('*{0}{1}**{2}'.format (Y, level, j),
                   end = '' if j == deg - 1 else '+\n      ')
        print (' \n   && true;' if i == 2**(level+1) - 1 else
               ' /\\')

def vec_mul (a, b, r, z):
    for i in range (64):
        print ('eqmod (poly {0} ['.format (z), end = '')
        for j in range (12):
            print ('%{0}{1:x}[{2}]'.format (r, j, i),
                   end = '])' if j == 11 else
                         ',\n               ' if j % 6 == 5 else ',')
        print ('\n      (poly {0} ['.format (z), end = '')
        for j in range (12):
            print ('%{0}{1:x}[{2}]'.format (a, j, i),
                   end = '] *' if j == 11 else
                         ',\n               ' if j % 6 == 5 else ',')
        print ('\n       poly {0} ['.format (z), end = '')
        for j in range (12):
            print ('%{0}{1:x}[{2}]'.format (b, j, i),
                   end = '])' if j == 11 else
                         ',\n               ' if j % 6 == 5 else ',')
        print ('\n      [2, {0}**12+{0}**3+1]'.format (z),
               end = '\n&&\ntrue\n' if i == 63 else ' /\\\n')

print ('\n\n\n\n(**************** vec_mul post condition ****************)\n\n\n')
vec_mul ('a', 'b', 'R', 'z')
        
print ('\n\n\n\n(**************** parameters ****************)\n\n\n')
parameters ('c')

print ('\n\n\n\n(**************** constants ****************)\n\n\n')
constants (0x555555590a60, scalars)

print ('\n\n\nnondet %rax@bit[64]; nondet %rcx@bit[64];')
print ('nondet %rdi@bit[64]; nondet %r12@bit[64];\n\n')

print ('\n\n\n\n(**************** inputs ****************)\n\n\n')
inputs (0x7ffffff50ca0, 'c')

print ('\n\n\n\n(**************** polynomial ****************)\n\n\n')
polynomial ('z', 'X', 'c', 'F')

factors = ['z**2+z', 'z**4+z', 'z**8+z', 'z**7+z**4+z', 'z**8+z**5+z**2+z', '1']

cut_counter = 0

for i in range (6):
    print ('\n\n\n\n(**************** polynomials ****************)\n\n\n')
    polynomials (0x7ffffff50ca0, 'z', 'X', 'Y', 'c', 'F', i, 32//2**i)

    print ('\n\n\n\n(**************** twists ****************)\n\n\n')
    twists (0x7ffffff50ca0, factors[i], 'z', 'X', 'Y', 'c', 'F', 'G', i, 32//2**i)

    num = 2**(i+1)
    print ('(* {0} *)\ncut '.format (cut_counter), end = '')
    for j in range (num):
        print ('eqmod F{0}{1:x} G{0}{1:x} [2, z**12+z**3+1]'.
               format (i, j), end = '')
        print ('\n    prove with [all ghosts] && true;\n' if j == num - 1
               else ' /\\\n    ' if j % 2 == 1 else ' /\\ ', end = '')
    cut_counter += 1
           
