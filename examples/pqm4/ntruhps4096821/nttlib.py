
import math

ecut_counter = 0
rcut_counter = 0

def print_cut_helper (cut_name, condition = '') :
    print ('{0} {1}'.format (cut_name, condition),
           end = '' if condition == '' else ';\n')

def print_ecut (condition = ''):
    global ecut_counter
    print ('\n(**************** CUT {0:3}, - *****************)\n'.
           format (ecut_counter))
    print_cut_helper ('ecut', condition)
    ecut_counter += 1
    
def print_rcut (condition = ''):
    global rcut_counter
    print ('\n(**************** CUT -, {0:3} *****************)\n'.
           format (rcut_counter))
    print_cut_helper ('rcut', condition)
    rcut_counter += 1
    
def print_cut (condition = ''):
    global ecut_counter
    global rcut_counter
    print ('\n(**************** CUT {0:3}, {1:3} *****************)\n'.
           format (ecut_counter, rcut_counter))
    print_cut_helper ('cut', condition)
    ecut_counter += 1
    rcut_counter += 1
    
def get_ecut_counter () :
    return (ecut_counter - 1)

def get_rcut_counter () :
    return (rcut_counter - 1)

def num_to_bits (n, w):
    r = []
    for i in range (w):
        r.append (n % 2)
        n //= 2
    return (r)

def bits_to_num (l):
    r = 0
    for i in range (len(l) - 1, -1, -1):
        r = r * 2 + l[i]
    return (r)

def pow_mod (n, e, m):
    ebits = []
    while e > 0:
        ebits.append (e%2)
        e //= 2
    rbits = ebits[::-1]
    r = n
    for i in range (1, len (rbits)):
        r = (r*r if rbits[i]==0 else r*r*n)%m
    return (r)

def intt_factors (level, factors):
    ret = factors.copy ()
    for i in range (level):
        for j in range (len (ret)):
            if j % (2**(i+1)) < 2**i:
                ret[j] += ret[j+2**i]
            else:
                ret[j] = 1
    return (ret)

