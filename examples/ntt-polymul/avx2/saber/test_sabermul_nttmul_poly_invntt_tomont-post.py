
import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

indices = [
            12, 13,                         # LEVEL 0 0
            4, 5, 6, 7, 8, 13, 10, 11,      # LEVEL 1 0
            12, 9, 14,                      # LEVEL 2 0
            12, 13,                         # LEVEL 3 0
            4, 12, 5, 13, 14, 8, 9, 10, 11, # LEVEL 4 0
            12, 13, 14, 15,                 # LEVEL 5 0
            12, 13, 14, 15, 11, 3,          # LEVEL 6 0
    
            12, 13,                         # LEVEL 0 1
            4, 5, 6, 7, 8, 13, 10, 11,      # LEVEL 1 1
            12, 9, 14,                      # LEVEL 2 1
            12, 13,                         # LEVEL 3 1
            4, 12, 5, 13, 14, 8, 9, 10, 11, # LEVEL 4 1
            12, 13, 14, 15,                 # LEVEL 5 1
            12, 13, 14, 15, 11, 3,          # LEVEL 6 1
    
            12, 13, 14, 15,                 # LEVEL 7 0
            12, 13, 14, 15,                 # LEVEL 7 1
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
