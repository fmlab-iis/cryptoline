import re
import radix_conv
from functools import partial

p = partial(print, end='')


class Counter():
    def __init__(self):
        self.__gen = self.init_gen()
        self.advance()
    def init_gen(self):
        for j in range(5):
            for i in range(12):
                for k in range(4, j-1, -1):
                    self.i = i
                    self.j = j
                    self.k = k
                    yield
        yield
        raise Exception('Counter overflow')
    def advance(self):
        next(self.__gen)


def cb_shl(line, ctr):
    k = ctr.k
    p(f'assert true && cl = {k}@8;\n')
    if k != 0:
        p(f'shl r11d r11d {k};\n')

def _cb_shr(line, ctr, reg):
    k = ctr.k
    amount = 2 ** k
    p(f'(* shr {reg} for {amount} *)\n')
    p(f'assert true && cl = {amount}@8;\n')

    vars = [f'{reg}_{i}' for i in range(64)]
    p(f'mov [{", ".join(vars)}] %{reg};\n')

    src = ', '.join(vars[amount:] + ['0@bit'] * amount)
    p(f'mov %{reg} [{src}];\n')


callbacks = {
    'shl': cb_shl,
    'shr_r10': partial(_cb_shr, reg='r10'),
    'shr_rdx': partial(_cb_shr, reg='rdx'),
}

counter = Counter()

def process(f):
    for line in f:
        cmd = None
        upd_ctr = False

        if re.search(r'^\(\* TODO: shift amount', line):
            cmd = 'shl'
        elif re.search(r'^\(\* TODO: shr %r10.*', line):
            cmd = 'shr_r10'
        elif re.search(r'^\(\* TODO: shr %rdx.*', line):
            cmd = 'shr_rdx'
            # the end of inner-most iteration
            upd_ctr = True

        if cmd is not None:
            callbacks[cmd](line, counter)
        else:
            p(line)

        if upd_ctr:
            counter.advance()


if __name__ == '__main__':
    import sys
    if len(sys.argv) < 2:
        print(f'Usage: {sys.argv[0]} <INPUT>')
        sys.exit(1)

    with open(sys.argv[1]) as f:
        process(f)
