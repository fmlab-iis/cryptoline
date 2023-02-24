#! /usr/bin/python3

iotas32 = [
    		0x00000001, 0x00000000,
		0x00000000, 0x00000089,
		0x00000000, 0x8000008b,
		0x00000000, 0x80008080,
		0x00000001, 0x0000008b,
		0x00000001, 0x00008000,
		0x00000001, 0x80008088,
		0x00000001, 0x80000082,
		0x00000000, 0x0000000b,
		0x00000000, 0x0000000a,
		0x00000001, 0x00008082,
		0x00000000, 0x00008003,
		0x00000001, 0x0000808b,
		0x00000001, 0x8000000b,
		0x00000001, 0x8000008a,
		0x00000001, 0x80000081,
		0x00000000, 0x80000081,
		0x00000000, 0x80000008,
		0x00000000, 0x00000083,
		0x00000000, 0x80008003,
		0x00000001, 0x80008088,
		0x00000000, 0x80000088,
		0x00000001, 0x00008000,
		0x00000000, 0x80008082,
]

def print_parameters (name):
    for i in range (5):
        for j in range (5):
            print ('uint64 {0}{1}{2}'.format (name, i, j),
                   end = '\n' if i == 4 and j == 4 else
                         ',\n' if (5*i + j) % 6 == 5 else ', ')

def print_nondets (regs):
    for i in range (len (regs)):
        print ('nondet {0}@uint32;'.format (regs[i]),
               end = '\n' if i % 5 == 4 else ' ')
    print ()

def print_extract (b, reg, wsize):
    i = wsize
    print ('mov {0}00 {1};'.format (b, reg))
    i //= 2
    while i > 0:
        k = 0
        for j in range (0, wsize - 2*i + 1, 2*i):
            print ('spl {0}{1:02x} {0}{2:02x} {0}{3:02x} {4:2};'.
                   format (b, j + i, j, j, i),
                   end = '\n' if j == wsize - 2*i else
                         '\n' if k % 4 == 3 else '')
            k += 1
        i //= 2

def print_pack (reg, b, wsize):
    i = 1
    while i < wsize:
        k = 0;
        for j in range (0, wsize, 2*i):
            print ('join {0}{1:02x} {0}{2:02x} {0}{3:02x};'.
                   format (b, j, j + i, j),
                   end = '\n' if j == wsize - 2*i else
                   '\n' if k % 4 == 3 else ' ')
            k += 1
        i *= 2
    print ('mov {0} {1}00;'.format (reg, b))

def print_shuffle (out_even, out_odd, inp, wsize):
    for i in range (wsize):
        print ('mov {0}{1:02x} {2}{3:02x};'.
               format (out_even if i % 2 == 0 else out_odd,
                       i // 2, inp, i),
               end = '\n' if i == wsize - 1 else
                     '\n' if i % 6 == 5 else '')
    
def print_fold (out, even, odd, wsize):
    for i in range (wsize):
        print ('mov {0}{1:02x} {2}{3:02x};'.
               format (out, i, even if i % 2 == 0 else odd, i//2),
               end = '\n' if i == wsize - 1 else
                     '\n' if i % 6 == 5 else '')
    
# interleave 64-bit by parity
def print_bit_interleave (outs, name):
    print_extract ('d', name, 64)
    print_shuffle ('b', 'c', 'd', 64)
    print_pack (outs[0], 'b', 32)
    print_pack (outs[1], 'c', 32)

def print_bit_pack (out, names):
    print_extract ('b', names[0], 32)
    print_extract ('c', names[1], 32)
    print_fold ('d', 'b', 'c', 64)
    print_pack (out, 'd', 64)
    
def print_init (base, name):
    for i in range (5):
        for j in range (5):
            print_bit_interleave (['L0x{0:x}'.format (base),
                                   'L0x{0:x}'.format (base + 4)],
                                  '{0}{1}{2}'.format (name, i, j))
            base += 8

def print_consts (base, consts):
    for i in range (len (consts)):
        print ('mov L0x{0:x} 0x{1:08x}@uint32;'.format (base + 4*i, consts[i]),
               end = '\n' if i % 2 == 1 else ' ')
    print ()

def print_output (name, base):
    for i in range (5):
        for j in range (5):
            print_bit_pack ('{0}{1}{2}'.format (name, i, j),
                            ['L0x{0:x}'.format (base),
                             'L0x{0:x}'.format (base + 4)])
            base += 8

print ('(* parameters *)\n\n')
print_parameters ('A')
print ('\n\n(* nondet *)\n\n')
print_nondets (['pc', 'sp', 'lr', 'r11'])
print ('\n\n(* initialization *)\n\n')
print_init (0xbeffef90, 'A')
print ('\n\n(* iotas32 *)\n\n')
print_consts (0x7f555520, iotas32)
print ('\n\n(* outputs *)\n\n')
print_output ('a', 0xbeffef90)

