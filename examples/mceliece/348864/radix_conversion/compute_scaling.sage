P.<x> = GF(2)[]
R.<z> = P.quotient(x^12+x^3+1)

def print_radix_conv():
    basis = [z^(11-i) for i in range(12)]
    print('Initial basis', basis)

    for i in range(5):
        print(f'--- Begin stage #{i}')
        cvrted = [k^2+k for k in basis[:-1]]
        print('After radix conv:', cvrted)
        factor = cvrted[-1]
        print(f'Scaling factor: ({factor})^(-1) = {1/factor}')
        basis = [k/factor for k in cvrted]
        print('After scaling')
        for i, k in enumerate(basis):
            print(f'#{i}: {k}')


def print_scaling():
    for idx in range(5):
        j = 2^(idx+1)
        for i in range(64):
            poly = (z^j+z)^floor(i/j)
            print(f'(* {idx} {i:2d} *) {poly}')

if __name__ == '__main__':
    print_scaling()
    # print_radix_conv()

