
import math

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

def intt_factors (level, factors):
    ret = factors.copy ()
    for i in range (level):
        for j in range (len (ret)):
            if j % (2**(i+1)) < 2**i:
                ret[j] += ret[j+2**i]
            else:
                ret[j] = 1
    return (ret)

def print_poly (poly_name, str_of_coeff, degree, parts):
    poly_term_pat = '{0}*x**{1:' + str (int (1+math.log(degree)/math.log(10))) + '}'
    part_degree = degree//parts if degree % parts > 0 else degree//parts
    part_pat = '{0}{1:0' + str (int (1+math.log(parts)/math.log(10))) + '}'
    part_term_pat = '{0}*x**{1:' + str (int (1+math.log(part_degree)/math.log(10))) + '}'
    for i in range (0, degree, part_degree):
#        print ('{0}{1:02}**2 = '.format (poly_name, i//part_degree))
        part_name = part_pat.format (poly_name, i//part_degree)
        print (part_name + '**2 = ')
        cur_part_degree = part_degree if i <= degree - part_degree else \
                          degree % part_degree
        for j in range (cur_part_degree):
#            print ('{0}*x**{1:2}'.format (str_of_coeff (i+j), j),
            print (part_term_pat.format (str_of_coeff (i+j), j),
                   end = ',\n' if j == cur_part_degree - 1 else
                         ('+\n' if j % 3 == 2 else '+'))
    print ('{0}**2 = '.format (poly_name))
    for i in range (parts):
#        print ('({0}{1:02}**2)*x**{2}'.format (poly_name, i, i * part_degree),
        part_name = part_pat.format (poly_name, i)
        print (poly_term_pat.format ('{0}**2'.format (part_name), i*part_degree),
               end = '\n' if i == parts - 1 else
                     ('+\n' if i % 4 == 3 else '+'))
        
