#/usr/bin/python3

import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

indices = [
             4,  6,  5,  7, # fqmulprecomp
             8, 10,  9, 11, # fqmulprecomp
    
            12, 13, 14, 15, # LEVEL 0 0
            12, 13, 14, 15, # LEVEL 1 0
            12, 13, 14, 15, # LEVEL 2 0
            12, 13, 14, 15, # LEVEL 3 0
            12, 13, 14, 15, # LEVEL 4 0
            12, 13, 14, 15, # LEVEL 5 0
    
             4,  6,  5,  7, # fqmulprecomp
             8, 10,  9, 11, # fqmulprecomp
    
            12, 13, 14, 15, # LEVEL 0 1
            12, 13, 14, 15, # LEVEL 1 1
            12, 13, 14, 15, # LEVEL 2 1
            12, 13, 14, 15, # LEVEL 3 1
            12, 13, 14, 15, # LEVEL 4 1
            12, 13, 14, 15, # LEVEL 5 1
    
            12, 13, 14, 15, # LEVEL 6 0
            12, 13, 14, 15, # LEVEL 6 1
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
