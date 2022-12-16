
with open('scaling.out') as f:
    lines = f.readlines()

it = map(lambda x: x.strip().replace('^', '**'), lines)

scalings = []
for i in range(5):
    s = []
    scalings.append(s)
    for j in range(64):
        s.append(next(it))

if __name__ == '__main__':
    # sample usage
    for STAGE in range(5):
        print('ghost ', end='')
        print((',\n' + ' ' * 6).join(
            [f'res{STAGE}_{i*4}@bit, res{STAGE}_{i*4+1}@bit, res{STAGE}_{i*4+2}@bit, res{STAGE}_{i*4+3}@bit' for i in range(16)]),
            end='')

        print(': and [')
        print('  ', end='')
        s = scalings[STAGE]
        print(',\n  '.join([f'eqmod res{STAGE}_{i} (cvrted{STAGE}_{i} * ({s[i]})) [2, modulus]' for i in range(64)]))
        print('] && true;')
        print()
        print()
