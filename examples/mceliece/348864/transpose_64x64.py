def inputs (a):
    for i in range (64):
        for j in range (64):
            print ('bit {0}{1:02x}{2:02x}'.format (a, i, j),
                   end = ',' if (64*i + j) % 8 < 7 and 64*i + j < 4095 else
                         ',\n' if 64*i + j < 4095 else '\n')

def pack (A, a, r, c):
    print ('mov %P [', end = '')
    for i in range (64):
        print ('{0}{1:02x}{2:02x}'.format (a, r, c + i),
               end = ',' if i % 11 < 10 and i < 63 else
                     ',\n        ' if i < 63 else '];\n')
    print ('cast %P64@uint64[1] %P; mov [ {0} ] %P64;'.format (A))

def unpack (B, b, r, c):
    print ('mov %U64 [ {0} ]; cast %U@bit[64] %U64;'.format (B))
    print ('mov [', end = '')
    for i in range (64):
        print ('{0}{1:02x}{2:02x}'.format (b, r, c + i),
               end = ',' if i % 11 < 10 and i < 63 else
                     ',\n     ' if i < 63 else '] %U;\n')
    
    
def initialize (base, a):
    for i in range (64):
        pack ('L0x{0:x}'.format (base + 8*i), a, i, 0)

def constants (bases, consts):
    assert (len (bases) == len (consts))
    for i in range (len (bases)):
        print ('mov L0x{0:x} 0x{1:016x}@uint64;'.format (bases[i], consts[i]))

def outputs (base, b):
    for i in range (64):
        unpack ('L0x{0:x}'.format (base + 8*i), b, i, 0)

def post (a, b):
    print ('and [', end = '')
    for i in range (64):
        for j in range (64):
            print ('{0}{2:02x}{3:02x}={1}{3:02x}{2:02x}'.format (a, b, i, j),
                   end = ',' if (64*i+j) % 6 < 5 and 64*i+j < 4095 else
                         ',\n     ' if 64*i+j < 4095 else ']\n')
    
inputs ('a')
initialize (0x7fffffff05b0, 'a')
constants ([0x55555558c760, 0x55555558c768, 0x55555558c780, 0x55555558c788,
            0x55555558c7a0, 0x55555558c7a8, 0x55555558c7c0, 0x55555558c7c8,
            0x55555558c7e0, 0x55555558c7e8, 0x55555558c800, 0x55555558c808,
            0x55555558c820, 0x55555558c828, 0x55555558c840, 0x55555558c848,
            0x55555558c860, 0x55555558c868, 0x55555558c880, 0x55555558c888,
            0x55555558c8a0, 0x55555558c8a8, 0x55555558c8c0, 0x55555558c8c8],
           [0x5555555555555555, 0x5555555555555555,
            0xaaaaaaaaaaaaaaaa, 0xaaaaaaaaaaaaaaaa,
            0x3333333333333333, 0x3333333333333333,
            0xcccccccccccccccc, 0xcccccccccccccccc,
            0x0f0f0f0f0f0f0f0f, 0x0f0f0f0f0f0f0f0f,
            0xf0f0f0f0f0f0f0f0, 0xf0f0f0f0f0f0f0f0,
            0x00ff00ff00ff00ff, 0x00ff00ff00ff00ff,
            0xff00ff00ff00ff00, 0xff00ff00ff00ff00,
            0x0000ffff0000ffff, 0x0000ffff0000ffff,
            0xffff0000ffff0000, 0xffff0000ffff0000,
            0x00000000ffffffff, 0x00000000ffffffff,
            0xffffffff00000000, 0xffffffff00000000])

outputs (0x7fffffff05b0, 'b')
post ('a', 'b')

