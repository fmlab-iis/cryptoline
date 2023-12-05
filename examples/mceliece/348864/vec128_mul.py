#! /usr/bin/env python3

def print_inputs (n, a):
    for i in range (n):
        for j in range (12):
            print ('bit {0}{1:02x}{2:x}'.format (a, i, j),
                   end = ',' if j % 6 < 5 and j < 11 else
                         ',\n' if j < 11 else '')
        print (',' if i < n - 1 else '')

def uint64_of_bits (a, A):
    print ('cast %{1}u@uint64[1] %{1}; mov [{0}] %{1}u;'.format (a, A))

def bits_of_uint64 (A, a, e):
    print ('cast %{0}@bit[64] [{1}];'.format (A, a),
           end = e)
        
def pack (w, a, st, n, j):
    print ('mov %{0}\n    ['.format (w), end = '')
    for i in range (n):
        print ('{0}{1:02x}{2:x}'.format (a, st + i, j),
               end = ',' if i % 13 < 12 and i < n - 1 else
                     ',\n     ' if i < n - 1 else '];\n')

def unpack (a, w, n, j):
    print ('mov [', end = '')
    for i in range (n):
        print ('{0}{1:02x}{2:x}'.format (a, i, j),
               end = ',' if i % 13 < 12 and i < n - 1 else
                     ',\n     ' if i < n - 1 else ']\n')
    print ('     %L0x{0:x};'.format (w))
        
def initialize (Abase, a):
    for i in range (12):
        pack ('L0x{0:x}'.format (Abase + 16*i), a, 0, 128, i)

def nondet (idxs):
    for i in range (len (idxs)):
        print ('nondet %ymm{0}_0@bit[128]; nondet %ymm{0}_1@bit[128];'.
               format (idxs[i]))

def post (r, a, b, i):
    print ('eqmod (poly X [', end = '')
    for j in range (12):
        print ('{0}{1:02x}{2:x}'.format (r, i, j),
               end = ',' if j < 11 else '])\n      ((poly X [')
    for j in range (12):
        print ('{0}{1:02x}{2:x}'.format (a, i, j),
               end = ',' if j < 11 else '])*\n       (poly X [')
    for j in range (12):
        print ('{0}{1:02x}{2:x}'.format (b, i, j),
               end = ',' if j < 11 else ']))\n      [2, X**12 + X**3 + 1]')

print_inputs (128, 'a')
print (',')
print_inputs (128, 'b')
initialize (0x7fffffff6930, 'a')
initialize (0x7fffffff6b00, 'b')
nondet (range (11))
for i in range (12):
    unpack ('r', 0x7fffffff6b00 + 16*i, 128, i)
for i in range (128):
    post ('r', 'a', 'b', i)
    print (' /\\' if i < 127 else '')
