#/usr/bin/python3

import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

indices = [  8,  9, 10, 11, # LEVEL 0 0
             8,  9, 10, 11, # LEVEL 0 1
             8,  9, 10, 11, # LEVEL 1 0
             7, 10,  5, 11, # LEVEL 2 0
             9,  5,  8, 11, # LEVEL 3 0
            10,  8,  7, 11, # LEVEL 4 0
             5,  7,  9, 11, # LEVEL 5 0
            10,  3,  9, 11, # LEVEL 6 0   -- 14,15
             8,  9, 10, 11, # LEVEL 1 1
             7, 10,  5, 11, # LEVEL 2 1
             9,  5,  8, 11, # LEVEL 3 1
            10,  8,  7, 11, # LEVEL 4 1
             5,  7,  9, 11, # LEVEL 5 1
            10,  3,  9, 11  # LEVEL 6 1   -- 14,15
          ]
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
