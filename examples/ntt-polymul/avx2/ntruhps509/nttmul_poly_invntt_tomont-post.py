
import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

indices05_0 = [  5,  7,  9, 11,                    # LEVEL 0
                 5,  7,  9, 11,  8, 10,  3,  4,    # LEVEL 1
                 5,  7,  9, 11,                    # LEVEL 2
                 5,  7,  9, 11, 10,  3,  4,  6,    # LEVEL 3
                 6, 11,                            # LEVEL 4
                 9,  8 ]                           # LEVEL 5
indices05_17 = [  5,  7,  9, 11,                   # LEVEL 0
                  5,  7,  9, 11,  8, 10,  3,  4,   # LEVEL 1
                  5,  7,  9, 11,                   # LEVEL 2
                  5,  7,  9, 11, 10,  3,  4,  6,   # LEVEL 3
                  3,  7,  6, 11,                   # LEVEL 4
                  5,  4,  6, 11,  9,  8 ]          # LEVEL 5

indices68_0  =  [  7,  9, 11,                          # LEVEL 6
                   8, 11,  7,  3,  3,  5,  6 ]         # LEVEL 7
indices68_1  =  [  7,  9, 11,                          # LEVEL 6
                   8, 11,  4, 10,  7,  3 ]             # LEVEL 7
indices68_23 =  [  7,  9, 11,  5,  3,  4,  6,  8,      # LEVEL 6
                   8, 11,  4, 10,  7,  3,  3,  5,  6 ] # LEVEL 7
indices68_45 =  [  7,  9, 11,  5,  3,                  # LEVEL 6
                   8, 11,  4, 10,  7,  3 ]             # LEVEL 7
indices68_67 =  [  7,  9, 11,  3,                      # LEVEL 6
                   8, 11,  4, 10,  7,  3 ]             # LEVEL 7

indices =  indices05_0 + indices05_17 + indices05_17 + indices05_17 +\
          indices05_17 + indices05_17 + indices05_17 + indices05_17 +\
           indices68_0 +  indices68_1 + indices68_23 + indices68_23 +\
          indices68_45 + indices68_45 + indices68_67 + indices68_67

mulLymm_pat = re.compile (".*\smulLymm_[a-f0-9](;|\s)")
mulLymm_counter = 0
with open (clname) as file_in:
    for line in file_in:
        if mulLymm_pat.match (line):
            print (line.replace ('mulLymm_',
                                 'mulLymm{0}_'.format (indices [mulLymm_counter//32])), end='')
            mulLymm_counter += 1
        else:
            print (line, end='')
