
def print_extract (b, reg):
    i = 64
    print ('  mov {0}00 {1};'.format (b, reg))
    i //= 2
    while i > 0:
        print ('  ', end = '')
        k = 0
        for j in range (0, 64 - 2*i + 1, 2*i):
            print ('spl {0}{1:02x} {0}{2:02x} {0}{3:02x} {4:2};'.
                   format (b, j + i, j, j, i),
                   end = '\n' if j == 64 - 2*i else
                         '\n  ' if k % 4 == 3 else '')
            k += 1
        i //= 2

def print_pack (reg, b):
    i = 1
    while i < 64:
        print ('  ', end = '')
        k = 0;
        for j in range (0, 64, 2*i):
            print ('join {0}{1:02x} {0}{2:02x} {0}{3:02x};'.
                   format (b, j, j + i, j),
                   end = '\n' if j == 64 - 2*i else
                         '\n  ' if k % 4 == 3 else ' ')
            k += 1
        i *= 2
    print ('  mov {0} {1}00;'.format (reg, b))

def print_cast (b):
    print ('  ', end = '')
    for i in range (64):
        print ('cast {0}{1:02x}@bit {0}{1:02x};'.format (b, i),
               end = '\n' if i == 63 else
                     '\n  ' if i % 4 == 3 else '')

def print_mask (mask, b2, b1, b0):
    print ('  cmov maskH {0} 0xf0@uint8 0x0f@uint8;'.format (b2), end = ' ')
    print ('cmov maskM {0} 0xcc@uint8 0x33@uint8;'.format (b1))
    print ('  cmov maskL {0} 0xaa@uint8 0x55@uint8;'.format (b0))
    print ('  and {0}@uint8 maskH maskM; and {0}@uint8 {0} maskL;'.format (mask))

def print_select (b, mask, table):
    print ('  and {0}@uint8 {1} {2};'.format (b, mask, table),
           end = ' ')
    print ('subc {0} dc {0} 1@uint8;'.format (b))

def print_vpternlogq (ymm0, ymm1, ymm2, table):
    print_extract ('h', ymm0)
    print_extract ('m', ymm1)
    print_extract ('l', ymm2)
    print_cast ('h')
    print_cast ('m')
    print_cast ('l')
    for i in range (64):
        print_mask ('mask{0:02x}'.format (i), 'h{0:02x}'.format (i),
                    'm{0:02x}'.format (i), 'l{0:02x}'.format (i))
        print_select ('o{0:02x}'.format (i), 'mask{0:02x}'.format (i), table)
    print_pack (ymm0, 'o')

print ('proc vpternlogq64 (uint64 ymmH, uint64 ymmM, uint64 ymmL, uint8 table) =')
print ('{ true && true }')
print_vpternlogq ('ymmH', 'ymmM', 'ymmL', 'table')
print ('{ true && true }')

