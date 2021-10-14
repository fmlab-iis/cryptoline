degree = 12

def declare (vname, num):
    for i in range (num):
        print ('bit {0}{1:02}'.format (vname, i),
               end = '\n' if i == num - 1 else
                          (',\n' if i % 6 == 5 else ','))

def define_fcn (fname, vname, num):
    print ('{0} = '.format (fname), end = '')
    for i in range (num):
        print ('{0}{1:02}*(x**{2}) '.format (vname, i, i),
               end = '\n' if i == num - 1 else
                          ('+\n' if i % 4 == 3 or i == num - 1 else '+ '))
        
def full_mul (oname, iname0, iname1, num):
    for i in range (2*num):
        print ('clear {0}{1:02};'.format (oname, i),
               end = '\n' if i % 4 == 3 or i == 2*num - 1 else ' ')
    for i in range (num):
        for j in range (num):
            print ('mul tmp {2}{3:02} {4}{5:02}; adds dc {0}{1:02} {0}{1:02} tmp;'.
                   format (oname, i+j, iname0, i, iname1, j),
                   end = '\n' if (i + j) % 2 == 1 or j == num - 1 else ' ')

def reduce (vname, poly):
    degree = poly[0]
    for i in range (degree - 1, -1, -1):
        for j in range (1, len (poly)):
            print ('adds dc {0}{1:02} {0}{1:02} {2}{3:02};'
                   .format (vname, i + poly[j], vname, degree + i),
                   end = ' ')
        print ('')

    
print ('proc main (')
declare ('a', 12)
print (',')
declare ('b', 12)
print (') =')
print ('{ true && true }')
print ('ghost x@bit, f@bit, g@bit : ')
print ('and [')
define_fcn ('f', 'a', 12)
print (',')
define_fcn ('g', 'b', 12)
print ('] && true;')
full_mul ('c', 'a', 'b', 12)
reduce ('c', [12, 3, 0]) # x^12 + x^3 + 1
print ('ghost h@bit : ')
define_fcn ('h', 'c', 12)
print (' && true;')
print ('{ eqmod h (f * g) [2, x**12 + x**3 + 1] && true }')


