from scalars import GFBITS
from twist_cond import scalings


def print_items(xs, perline=1, indent=0):
    print(' ' * indent, end='')
    n = len(xs)
    for i in range(n):
        sep = '\n' if i % perline == perline - 1 else ' '
        print(xs[i], end=sep)
        if sep == '\n' and i != n - 1:
            print(' ' * indent, end='')


def pre_vec_mul(stage):
    membase = 0x7fffffffdaa0
    vartype = f'uint{GFBITS}'

    # unpack result from memory
    for i in range(GFBITS):
        vars = ', '.join([f'out{i}_{j}' for j in range(64)])
        print(f'mov [{vars}] %L0x{membase + i * 8:x};')
    print()

    # make ghost variables of radix-converted coefficients
    gvs = []
    for j in range(64):
        lhs = f'cvrted{stage}_{j}'
        rhs = (f'out0_{j}' if lsb_only else
            ' + '.join([f'out{i}_{j} * z**{i}' for i in range(GFBITS)]))
        gvs.append(f'ghost {lhs}@{vartype}: {lhs} = {rhs} && true;')
    print_items(gvs, 4 if lsb_only else 1)
    print()

    # radix-converted polynomial is coeffs combined
    num_polys = 2 ** stage
    cut_lines = [[] for _ in range(num_polys)]
    for m in range(num_polys):
        var = f'cvrted{stage}'
        num_terms = 32 // num_polys
        for k in range(num_terms):
            p0 = m + k * num_polys * 2
            p1 = p0 + num_polys
            term = f'({var}_{p0} + x * {var}_{p1}) * (x ** 2 + x) ** {k}'
            if k != num_terms - 1:
                term += ' + '
            cut_lines[m].append(term)
    # ecut for radix conversion
    if stage == 0:
        # initial input is called "input_poly"
        print('ecut eqmod input_poly (')
        print_items(cut_lines[0], indent=2)
        print(') 2;')
    else:
        print('ecut and [')
        for x in range(num_polys):
            print(f'  eqmod inp{stage}_{x} (')
            print_items(cut_lines[x], indent=4)
            print('  ) 2' + (',' if x != num_polys - 1 else ''))
        print('];')
    print()


def post_vec_mul(stage, lsb_only=True):
    print('assume modulus = z ** 12 + z ** 3 + 1 && true;')
    print()

    # resulting polynomial after multiplications; type does not matter
    nondet_decls = [f'nondet res{stage}_{i}@bit;' for i in range(64)]
    print_items(nondet_decls, 4)
    print()

    # emulate the multiplications
    print('assume and [')
    for j in range(64):
        print(f'  eqmod res{stage}_{j} (cvrted{stage}_{j} * ({scalings[stage][j]})) [2, modulus]', end='')
        if j != 63: print(',')
    print('\n] && true;')
    print()

    # ecut for twisting
    print(f'ghost t{stage}@bit: t{stage} = (z ** {2 ** (stage + 1)} + z) * (x ** 2 + x) && true;')
    print()
    print('ecut and [')
    num_conds = 2 ** stage
    num_terms = 32 // num_conds
    for m in range(num_conds):
        pairs = []
        for k in range(num_terms):
            p0 = m + k * num_conds * 2
            p1 = p0 + num_conds
            end = ' + ' if k != num_terms - 1 else ''
            pairs.append((k, p0, p1, end))
        print('  eqmod (')
        # LHS
        for k, p0, p1, end in pairs:
            var = f'cvrted{stage}'
            print(f'    ({var}_{p0} + x * {var}_{p1}) * t{stage} ** {k}{end}')
        print('  ) (')
        # RHS
        for k, p0, p1, end in pairs:
            var = f'res{stage}'
            print(f'    ({var}_{p0} + x * {var}_{p1}) * (x ** 2 + x) ** {k}{end}')
        print('  ) [2, modulus]', end='')
        if m != num_conds - 1:
            print(',')
    print('\n];')
    print()


def next_stage_input(stage, lsb_only=True):
    # synthesize input polynomials for the next stage
    num_ghosts = 2 ** (stage + 1)
    deg = 64 // num_ghosts
    for m in range(num_ghosts):
        var = f'inp{stage+1}_{m}'
        print(f'ghost {var}@uint12: {var} = ')
        terms = [f'res{stage}_{m + k * num_ghosts} * x**{k}' + (' +' if k != deg - 1 else '') for k in range(deg)]
        print_items(terms, 4, 2)
        print('&& true;')
    print()

    if lsb_only:
        # mask all other bits zero
        print('mov _ 0@bit;')
    else:
        # make temp variables for individual bits
        for i in range(GFBITS):
            nondets = [f'nondet rb{i}_{j}@bit;' for j in range(64)]
            print(' '.join(nondets))

        # bit-slice the result
        print('assume and [')
        for j in range(64):
            lhs = f'res{stage}_{j}'
            rhs = ' + '.join([f'rb{i}_{j} * z**{i}' for i in range(GFBITS)])
            print(f'  {lhs} = {rhs}', end='')
            if j != 63:
                print(',')
        print('\n] && true;')
    print()

    # pack into memory
    membase = 0x7fffffffdaa0
    for i in range(GFBITS):
        elts = None
        if lsb_only:
            if i == 0:
                elts = [f'res{stage}_{j}' for j in range(64)]
            else:
                elts = ['_'] * 64
        else:
            elts = [f'rb{i}_{j}' for j in range(64)]
        vars = ', '.join(elts)
        print(f'mov %L0x{membase + 8 * i:x} [{vars}];')


if __name__ == '__main__':
    lsb_only = False

    for i in range(5):
        pre_vec_mul(i)
        print()
        print('/* ' + '-' * 74 + ' */')
        print()
        post_vec_mul(i, lsb_only)
        if i != 4:
            next_stage_input(i, lsb_only)
        print()
        print('/* ' + '-' * 74 + ' */')
        print()
