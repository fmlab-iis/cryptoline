#!/usr/bin/python3

import sys

if len (sys.argv) != 2:
    print ("Usage: {0} <filename>".format (sys.argv[0]))
    sys.exit (1)

clname = sys.argv[1]
import re

cfeqn_pat = re.compile (".*cfIDX\s=")
cfeqn_counter = 0

with open (clname) as file_in:
    for line in file_in:
        if cfeqn_pat.match (line):
            q96 = cfeqn_counter//96
            m96 = cfeqn_counter%96
            print (line.replace ('cfIDX',
                                 'cf{0}{1}{2:02}'.
                                 format (q96%3,
                                         (q96//3)+3*(m96%3),
                                         m96//3)),
                   end ='')
            cfeqn_counter += 1
        else:
            print (line, end='')
