#! /usr/bin/python3

import re
import sys

fo = open("gfp25519inv.cl","r")
vs={"e":1,"&t":0}
Xs={1:0}
nn = 1

for line in fo :
    line = line[0:-1] # chop
    match = re.match(r'#\s*/\*\s*([-0-9+*/^ ]+)\s*\*/\s*gfp25519(mul|sqr|nsqr)\((&?[A-Za-z0-9_]*),\s*(&?[A-Za-z0-9_]*)(,\s*(&?[A-Za-z0-9_]*))?\);',line)

    if match :
        number = eval(re.sub("\^","**",match.group(1)))
        #assert (number = nn)
        op = match.group(2)
        op1 = match.group(3)
        op2 = match.group(4)
        op3 = match.group(6)

        nn = 0
        match1 = re.match(r'^&z2_([0-9]+)_0$',op1)
        if match1 : nn = 2 ** int(match1.group(1)) - 1
        match2 = re.match(r'^&z([0-9]+)$',op1)
        if match2 : nn = int(match2.group(1))
        if (op1 == "&t") : vn = "&t"
        
        print(line)
        
        if (op == 'sqr') :
            if (nn>0) : assert (nn==number*2)
            nn = number*2
            vs[op1] = nn
            while 1 :
                line = fo.readline()[0:-1] # chop 
                print(line)
                
                match2 = re.match(r'mov (L0x[0-9a-f]+) (rbx|rbp|rax|rsi);',line)
                if match2 :
                    if (match2.group(2) == 'rbx') : v1 = match2.group(1)
                    if (match2.group(2) == 'rbp') : v2 = match2.group(1)
                    if (match2.group(2) == 'rax') : v3 = match2.group(1)
                    if (match2.group(2) == 'rsi') : v4 = match2.group(1)
                if re.match(r'^#retq',line) : break

            print('''
ghost X%d@uint256 : and [
     eq X%d (limbs 64 [%s, %s, %s, %s])
     ] && true;''' % (nn,nn,v1,v2,v3,v4))
            print('''
cut
    and [
     eqmod X%d
     	   (X%d**2)
	   (((2**255 )- 19)) ]
   prove with [all ghosts] && true;
''' % (nn,number))

            
        elif op == 'nsqr' :
            ii = int(op3)
            if (nn>0) : assert (nn==number*2**ii)
            nn = number*2**ii
            vs[op1] = nn

            for jj in range(1,ii) :
                while 1 : 
                    line = fo.readline()[0:-1] # chop 
                    print(line)
                    if re.match(r'^#jne',line) : break
                    
                print('''
ghost X%d@uint256 : and [
     eq X%d (limbs 64 [rbx, rbp, rax, rsi])
     ] && true;''' % (number*2**jj,number*2**jj))
                print('''
cut
    and [
     eqmod X%d
     	   (X%d**2)
	   (((2**255 )- 19)) ]
   prove with [all ghosts] && true;
''' % (number*2**jj,number*2**(jj-1)))

            while 1 : 
                line = fo.readline()[0:-1] # chop 
                print(line)
                
                match2 = re.match(r'mov (L0x[0-9a-f]+) (rbx|rbp|rax|rsi);',line)
                if match2 :
                    if (match2.group(2) == 'rbx') : v1 = match2.group(1)
                    if (match2.group(2) == 'rbp') : v2 = match2.group(1)
                    if (match2.group(2) == 'rax') : v3 = match2.group(1)
                    if (match2.group(2) == 'rsi') : v4 = match2.group(1)
                if re.match(r'^#retq',line) : break

            print('''
ghost X%d@uint256 : and [
     eq X%d (limbs 64 [%s, %s, %s, %s])
     ] && true;''' % (nn,nn,v1,v2,v3,v4))
            print('''
cut
    and [
      eqmod X%d
     	   (X%d**2)
	   (((2**255 )- 19)) ]
   prove with [all ghosts] && true;
''' % (nn,nn//2))


                
        else : # op = 'mul' 
            
            #if (nn>0) : assert(nn == vs[op2] + vs[op3])
            #assert(vs[op2] == number)
            nn = vs[op2] + vs[op3]

            while 1 : 
                line = fo.readline()[0:-1] # chop 
                print(line)
                
                match2 = re.match(r'mov (L0x[0-9a-f]+) (r8|r9|r10|r11);',line)
                if match2 :
                    if (match2.group(2) == 'r8') : v1 = match2.group(1)
                    if (match2.group(2) == 'r9') : v2 = match2.group(1)
                    if (match2.group(2) == 'r10') : v3 = match2.group(1)
                    if (match2.group(2) == 'r11') : v4 = match2.group(1)
                if re.match(r'^#retq',line) : break

            print('''
ghost X%d@uint256 : and [
     eq X%d (limbs 64 [%s, %s, %s, %s])
     ] && true;''' % (nn,nn,v1,v2,v3,v4))
            print('''
cut
    and [
     eqmod X%d
     	   (mul X%d X%d)
	   (((2**255 )- 19)) ]
   prove with [all ghosts] && true;
''' % (nn,vs[op2],vs[op3]))
            vs[op1] = nn


    else :
        print(line)


print('''
cut 
    and [ eqmod X%d (X1 ** %d) (((2**255 )- 19)) ] prove with [all cuts] && true;
''' % (nn,nn))
