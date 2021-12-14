
import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

indices02_07 = [  6,  7,                       # LEVEL 1
                  7,  9, 11 ]                  # LEVEL 2
indices38_0 =  [ 10, 11,                       # LEVEL 4 0
                  3,  6,  8, 11, 7, 5,         # LEVEL 5 0
                  3,  6,  8, 11, 7, 5,         # LEVEL 6 0
                  3,  6,  8, 11,               # LEVEL 7 0
                  3,  6,  8, 11 ]              # LEVEL 8 0
indices38_13 = [  8,  9, 10, 11,               # LEVEL 3 1
                  5,  6, 10, 11,               # LEVEL 4 1
                  3,  6,  8, 11,               # LEVEL 5 1
                  3,  6,  8, 11, 10, 9, 7,  5, # LEVEL 6 1
                  3,  6,  8, 11,               # LEVEL 7 1
                  3,  6,  8, 11 ]              # LEVEL 8 1
indices38_47 = [  8,  9, 10, 11,               # LEVEL 3 4
                  5,  6, 10, 11,               # LEVEL 4 4
                  3,  6,  8, 11,  7, 5, 4, 10, # LEVEL 5 4
                  3,  6,  8, 11,               # LEVEL 6 4
                  3,  6,  8, 11,               # LEVEL 7 4
                  3,  6,  8, 11 ]              # LEVEL 8 4

indices = indices02_07 + indices02_07 + indices02_07 + indices02_07 + \
          indices02_07 + indices02_07 + indices02_07 + indices02_07 + \
          indices38_0  + indices38_13 + indices38_13 + indices38_13 + \
          indices38_47 + indices38_47 + indices38_47 + indices38_47

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
