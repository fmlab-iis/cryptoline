#! /usr/bin/env python3

def print_inputs (n, a):
    for i in range (n):
        for j in range (12):
            print ('bit {0}{1:02x}{2:x}'.format (a, i, j),
                   end = ',' if j % 6 < 5 and j < 11 else
                         ',\n' if j < 11 else '')
        print (',' if i < n - 1 else '')

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
        pack ('L0x{0:x}'.format (Abase + 32*i), a, 0, 256, i)

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

print_inputs (256, 'a')
print (',')
print_inputs (256, 'b')
initialize (0x7ffffff904c0, 'a')
initialize (0x7ffffffa6700, 'b')
for i in range (12):
    unpack ('r', 0x7ffffff8e9c0 + 32*i, 256, i)
for i in range (256):
    post ('r', 'a', 'b', i)
    print (' /\\' if i < 255 else '')
