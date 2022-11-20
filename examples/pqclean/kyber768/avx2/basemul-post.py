#!/usr/bin/env python3

import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

rex_replace_names = list(map(re.compile, [
    r'^(smull\s+%ymm13\s+)%\w+(\s+%ymm5\s+%ymm1.*)',
    r'^(smull\s+%ymm1\s+)%\w+(\s+%ymm6\s+%ymm1.*)',
    r'^(smull\s+%ymm14\s+)%\w+(\s+%ymm5\s+%ymm2.*)',
    r'^(smull\s+%ymm2\s+)%\w+(\s+%ymm6\s+%ymm2.*)',
    r'^(smull\s+%ymm15\s+)%\w+(\s+%ymm7\s+%ymm3.*)',
    r'^(smull\s+%ymm3\s+)%\w+(\s+%ymm8\s+%ymm3.*)',
    r'^(smull\s+%ymm0\s+)%\w+(\s+%ymm7\s+%ymm4.*)',
    r'^(smull\s+%ymm4\s+)%\w+(\s+%ymm8\s+%ymm4.*)',
]))

rex_append_mont = list(map(re.compile, [
    'smull %ymm13 %mulLymm13 %ymm8 %ymm13',
    'smull %ymm9 %mulLymm9 %ymm8 %ymm9',
    'smull %ymm5 %mulLymm5 %ymm8 %ymm5',
    'smull %ymm10 %mulLymm10 %ymm8 %ymm10',
    'smull %ymm6 %mulLymm6 %ymm8 %ymm6',
    'smull %ymm11 %mulLymm11 %ymm8 %ymm11',
    'smull %ymm7 %mulLymm7 %ymm8 %ymm7',
    'smull %ymm12 %mulLymm12 %ymm8 %ymm12',
]))

rex2_append_mont_zetas = [
    (re.compile('smull %ymm2 %mulLymm2 %ymm8 %ymm2'), '%mulLymm10'),
    (re.compile('smull %ymm3 %mulLymm3 %ymm8 %ymm3'), '%mulLymm12'),
]

format16 = lambda tpl: ', '.join([tpl.format(i) for i in range(16)])

def format_mont_hint(vecMont, vecQrem):
    return '''\
mov [{Ms}] {vecMont};
mov [{Rs}] {vecQrem};
assert and [{asserts}] && true;
assume and [{assumes}] && true;
'''.format(
    vecMont=vecMont,
    vecQrem=vecQrem,
    Ms=format16('M{0:x}'),
    Rs=format16('R{0:x}'),
    asserts=format16('eqmod M{0:x} R{0:x} (2**16)'),
    assumes=format16('M{0:x} = R{0:x}')
)

patch_counter = 0

def patch_line(line: str):
    if not line.lstrip().startswith('smull'):
        return line

    # stop replacing names after exactly 8 occurrences
    # should reset after a complete cycle
    global patch_counter
    if patch_counter < 8:
        idx = patch_counter
        rex = rex_replace_names[idx]
        s, cnt = rex.subn(r'\1%__mont{}\2'.format(idx), line)
        if cnt:
            patch_counter += 1
            return s
    for idx, rex in enumerate(rex_append_mont):
        if rex.match(line):
            reg = rex.pattern.split(' ')[2]
            return line + format_mont_hint('%__mont{}'.format(idx), reg)
    for rex, reg1 in rex2_append_mont_zetas:
        if rex.match(line):
            reg2 = rex.pattern.split(' ')[2]
            # reset counter
            patch_counter = 0
            return line + format_mont_hint(reg1, reg2)
    return line


with open(clname) as f:
    for line in f:
        patched = patch_line(line)
        print(patched, end='')
