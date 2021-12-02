#!/usr/bin/python3

# generate instructions to extract scalars from vector variables before cuts

mkymm16 = lambda n: ', '.join([f'ymm{n}_' + hex(i)[2:] for i in range(16)])
g = lambda n: f'mov [{mkymm16(n)}] %ymm{n};'
gl = lambda xs: '\n'.join(map(g, xs))

print('--- Level 1')
print(gl([3, 4, 5, 6, 8, 9, 10, 11]))
print('--- Level 2')
print(gl([4, 6, 8, 3, 7, 10, 5, 11]))
print('--- Level 3')
print(gl([6, 3, 7, 4, 9, 5, 8, 11]))
print('--- Level 4')
print(gl([3, 4, 9, 6, 10, 8, 7, 11]))
print('--- Level 5')
print(gl([4, 6, 10, 3, 5, 7, 9, 11]))
