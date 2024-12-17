#/usr/bin/env python

Q = 3329
K = 17

zetas_asm = [
    2230699446, 3328631909, 4243360600, 3408622288, 812805467, 2447447570, 1094061961, 1370157786, 2475831253, 249002310, 1028263423, 3594406395, 4205945745, 734105255, 2252632292, 381889553, 372858381, 427045412, 21932846, 3562152210, 752167598, 3417653460, 3157039644, 4196914574, 2265533966, 2112004045, 932791035, 2951903026, 1419184148, 1727534158, 1544330386, 2972545705, 1817845876, 3434425636, 4233039261, 300609006, 1904287092, 2937711185, 2651294021, 975366560, 2781600929, 3889854731, 3935010590, 3929849920, 838608815, 2550660963, 2197155094, 2130066389, 3598276897, 2308109491, 72249375, 3242190693, 815385801, 2382939200, 1228239371, 1884934581, 3466679822, 2889974991, 3696329620, 42575525, 1211467195, 2977706375, 3144137970, 3080919767, 1719793153, 1703020977, 2470670584, 945692709, 3015121229, 345764865, 826997308, 1839778722, 2991898216, 1851390229, 2043625172, 2964804700, 2628071007, 4154339049, 2701610550, 1041165097, 583155668, 483812778, 3288636719, 2696449880, 2122325384, 690239563, 1855260731, 3700200122, 1371447954, 411563403, 3577634219, 976656727, 3718262466, 1979116802, 3098982111, 2708061387, 723783916, 3181552825, 3346694253, 3087370604, 3415073125, 3376368103, 3617629408, 1408862808, 519937465, 1323711759, 3714391964, 1910737929, 836028480, 1474661346, 2773859924, 3580214553, 1143088323, 2546790461, 3191874164, 4012420634, 2221668274, 1563682897, 2417773720, 1327582262, 1059227441, 1583035408, 1174052340, 2722253228, 3786641338, 1141798155, 2779020594, 0]

# use LSB-first
def revbits_of_num (n, l):
    ret = []
    for i in range (l):
        ret = [n % 2] + ret
        n //= 2
    return (ret)

def num_of_bits (bits):
    ret = 0
    for i in range (len (bits)):
        ret += bits[i] * 2**i
    return (ret)
        
def parameters (base):
    for i in range (256):
        print ('int16 L0x{0:x}'.format (base + 2*i),
               end = ',\n' if i % 4 == 3 or i == 255 else ',')
    print ('int16 Q, int16 Q2, int16 NQ, int16 NQ2')

def precondition (base):
    print ('Q = {0} /\\ NQ = {1} /\\ Q2 = {2} /\\ NQ2 = {3} /\\'.
           format (Q, -Q, Q//2+1, -(Q//2+1)))
    for i in range (0, 256, 4):
        print ('[NQ2,NQ2,NQ2,NQ2]<[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)))
        print ('[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<[Q2,Q2,Q2,Q2]'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)),
               end = '\n&&\n' if i == 252 else ' /\\\n')
    print ('Q = {0}@16 /\\ NQ = ({1})@16 /\\ Q2 = {2}@16 /\\ NQ2 = ({3})@16 /\\'.
           format (Q, -Q, Q//2+1, -(Q//2+1)))
    for i in range (0, 256, 4):
        print ('[NQ2,NQ2,NQ2,NQ2]<s[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}] /\\'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)))
        print ('[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<s[Q2,Q2,Q2,Q2]'.
               format (base + 2*i, base + 2*(i+1),
                       base + 2*(i+2), base + 2*(i+3)),
               end = '\n' if i == 252 else ' /\\\n')

def inv_coeff (n):
    r = -(n * Q % 2**32) * 1929 % Q
    return (r if r <= Q//2 else r - Q)

def initialization (base, table):
    for i in range (len (table)):
        print ('mov L0x{0:x} ({1:11})@int32; (* {2:5} *)'.
               format (base + 4*i,
                       table[i] if table[i] < 2**31 else table[i] - 2**32,
                       inv_coeff (table[i])))

def functions (base, F, X):
    print ('ghost {0}@int16, {1}@int16 : {1}**2 =\n'.format(X, F), end = '')
    for i in range (256):
        print ('L0x{0:x}*{1}**{2:-3}'.format (base + 2*i, X, i),
               end = '\n&& true;\n' if i == 255 else
                     '+\n' if i % 4 == 3 else '+')
    for i in range (8):
        print ('ghost {0}{1:x}@int16 : {0}{1:x}**2 ='.format (F, 2*i))
        for j in range (8):
            d = 16+32*j+2*i
            print ('L0x{1:x}*{0}**{2:-3}+L0x{3:x}*{0}**{4:-3}'.
                   format (X, base + 2*d, d, base + 2*(d+1), d+1),
                   end='\n&& true;\n' if j == 7 else
                       '+\n' if j % 2 == 1 else '+')
        print ('ghost {0}{1:x}@int16 : {0}{1:x}**2 ='.format (F, 2*i+1))
        for j in range (8):
            d = 32*j+2*i
            print ('L0x{1:x}*{0}**{2:-3}+L0x{3:x}*{0}**{4:-3}'.
                   format (X, base + 2*d, d, base + 2*(d+1), d+1),
                   end='\n&& true;\n' if j == 7 else
                       '+\n' if j % 2 == 1 else '+')
            
rev_bits = [ num_of_bits (revbits_of_num (i, 8)) for i in range (128, 256) ]
            
print ('\n\n\n(**************** parameters ****************)\n\n')
parameters (0xbefff1c4)
print ('\n\n\n(**************** precondition ****************)\n\n')
precondition (0xbefff1c4)
print ('\n\nnodet r0@@int32;\n\n')
print ('\n\n\n(**************** initialization ****************)\n\n')
initialization (0x40167c, zetas_asm)
print ('\n\n\n(**************** functions ****************)\n\n')
functions (0xbefff1c4, 'F', 'X')
print ('\n\n\n(**************** LEVEL 0-3 ****************)\n\n')
for i in range (16):
    print ('ghost r6_b{0}@int16, r6_t{0}@int16:\n'
           '      r6_b{0} = r6_b /\\ r6_t{0} = r6_t\n'
           '   && r6_b{0} = r6_b /\\ r6_t{0} = r6_t;\n'.
           format (2*i))
    print ('assert eqmod lr_b (r6_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r6_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r6_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r6_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (2*i, K**64%Q - Q))

    print ('ghost r7_b{0}@int16, r7_t{0}@int16:\n'
           '      r7_b{0} = r7_b /\\ r7_t{0} = r7_t\n'
           '   && r7_b{0} = r7_b /\\ r7_t{0} = r7_t;\n'.
           format (3*i))
    print ('assert eqmod lr_b (r7_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r7_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (3*i, K**64%Q - Q))

    print ('ghost r8_b{0}@int16, r8_t{0}@int16:\n'
           '      r8_b{0} = r8_b /\\ r8_t{0} = r8_t\n'
           '   && r8_b{0} = r8_b /\\ r8_t{0} = r8_t;\n'.
           format (3*i))
    print ('assert eqmod lr_b (r8_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r8_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (3*i, K**64%Q - Q))

    print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
           '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
           '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n'.
           format (4*i))
    print ('assert eqmod lr_b (r9_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r9_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (4*i, K**64%Q - Q))

    print ('ghost r4_b{0}@int16, r4_t{0}@int16:\n'
           '      r4_b{0} = r4_b /\\ r4_t{0} = r4_t\n'
           '   && r4_b{0} = r4_b /\\ r4_t{0} = r4_t;\n'.
           format (2*i))
    print ('assert eqmod lr_b (r4_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r4_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r4_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r4_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (2*i, K**32%Q - Q))

    print ('ghost r5_b{0}@int16, r5_t{0}@int16:\n'
           '      r5_b{0} = r5_b /\\ r5_t{0} = r5_t\n'
           '   && r5_b{0} = r5_b /\\ r5_t{0} = r5_t;\n'.
           format (3*i))
    print ('assert eqmod lr_b (r5_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r5_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (3*i, K**32%Q - Q))

    print ('ghost r8_b{0}@int16, r8_t{0}@int16:\n'
           '      r8_b{0} = r8_b /\\ r8_t{0} = r8_t\n'
           '   && r8_b{0} = r8_b /\\ r8_t{0} = r8_t;\n'.
           format (3*i+1))
    print ('assert eqmod lr_b (r8_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r8_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (3*i+1, K**96%Q - Q))

    print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
           '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
           '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n'.
           format (4*i+1))
    print ('assert eqmod lr_b (r9_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r9_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (4*i+1, K**96%Q - Q))

    print ('ghost r3_b{0}@int16, r3_t{0}@int16:\n'
           '      r3_b{0} = r3_b /\\ r3_t{0} = r3_t\n'
           '   && r3_b{0} = r3_b /\\ r3_t{0} = r3_t;\n'.
           format (2*i))
    print ('assert eqmod lr_b (r3_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r3_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r3_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r3_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (2*i, K**16%Q - Q))

    print ('ghost r5_b{0}@int16, r5_t{0}@int16:\n'
           '      r5_b{0} = r5_b /\\ r5_t{0} = r5_t\n'
           '   && r5_b{0} = r5_b /\\ r5_t{0} = r5_t;\n'.
           format (3*i+1))
    print ('assert eqmod lr_b (r5_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r5_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (3*i+1, K**80%Q))

    print ('ghost r7_b{0}@int16, r7_t{0}@int16:\n'
           '      r7_b{0} = r7_b /\\ r7_t{0} = r7_t\n'
           '   && r7_b{0} = r7_b /\\ r7_t{0} = r7_t;\n'.
           format (3*i+1))
    print ('assert eqmod lr_b (r7_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r7_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (3*i+1, K**48%Q - Q))

    print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
           '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
           '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n'.
           format (4*i+2))
    print ('assert eqmod lr_b (r9_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '       prove with [precondition, algebra solver isl] && true;\n'
           'assume eqmod lr_b (r9_b{0} *  {1}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} *  {1}) [Q] /\\\n'
           '       [NQ2, NQ2] < [lr_b, lr_t] /\\ [lr_b, lr_t] < [Q2, Q2]\n'
           '    && [NQ2, NQ2] <s[lr_b, lr_t] /\\ [lr_b, lr_t] <s[Q2, Q2];\n\n\n\n'.
           format (4*i+2, K**112%Q))

    if i % 2 == 0:
        print ('ghost r2_b{0}@int16, r2_t{0}@int16:\n'
               '      r2_b{0} = r2_b /\\ r2_t{0} = r2_t\n'
               '   && r2_b{0} = r2_b /\\ r2_t{0} = r2_t;\n'.
               format (i))
        print ('assert eqmod r2_b (r2_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r2_t (r2_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r2_b, r2_t] /\\ [r2_b, r2_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r2_b (r2_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r2_t (r2_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r2_b, r2_t] /\\ [r2_b, r2_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r2_b, r2_t] /\\ [r2_b, r2_t] <s[Q2, Q2];\n\n\n\n'.
               format (i, K**8%Q))
    
        print ('ghost r3_b{0}@int16, r3_t{0}@int16:\n'
               '      r3_b{0} = r3_b /\\ r3_t{0} = r3_t\n'
               '   && r3_b{0} = r3_b /\\ r3_t{0} = r3_t;\n'.
               format (2*i+1))
        print ('assert eqmod r3_b (r3_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r3_t (r3_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r3_b, r3_t] /\\ [r3_b, r3_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r3_b (r3_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r3_t (r3_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r3_b, r3_t] /\\ [r3_b, r3_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r3_b, r3_t] /\\ [r3_b, r3_t] <s[Q2, Q2];\n\n\n\n'.
               format (2*i+1, K**72%Q - Q))
    
        print ('ghost r4_b{0}@int16, r4_t{0}@int16:\n'
               '      r4_b{0} = r4_b /\\ r4_t{0} = r4_t\n'
               '   && r4_b{0} = r4_b /\\ r4_t{0} = r4_t;\n'.
               format (2*i+1))
        print ('assert eqmod r4_b (r4_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r4_t (r4_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r4_b, r4_t] /\\ [r4_b, r4_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r4_b (r4_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r4_t (r4_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r4_b, r4_t] /\\ [r4_b, r4_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r4_b, r4_t] /\\ [r4_b, r4_t] <s[Q2, Q2];\n\n\n\n'.
               format (2*i+1, K**40%Q))
    
        print ('ghost r5_b{0}@int16, r5_t{0}@int16:\n'
               '      r5_b{0} = r5_b /\\ r5_t{0} = r5_t\n'
               '   && r5_b{0} = r5_b /\\ r5_t{0} = r5_t;\n'.
               format (3*i+2))
        print ('assert eqmod r5_b (r5_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r5_t (r5_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r5_b, r5_t] /\\ [r5_b, r5_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r5_b (r5_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r5_t (r5_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r5_b, r5_t] /\\ [r5_b, r5_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r5_b, r5_t] /\\ [r5_b, r5_t] <s[Q2, Q2];\n\n\n\n'.
               format (3*i+2, K**104%Q))
    
        print ('ghost r6_b{0}@int16, r6_t{0}@int16:\n'
               '      r6_b{0} = r6_b /\\ r6_t{0} = r6_t\n'
               '   && r6_b{0} = r6_b /\\ r6_t{0} = r6_t;\n'.
               format (2*i+1))
        print ('assert eqmod r6_b (r6_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r6_t (r6_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r6_b, r6_t] /\\ [r6_b, r6_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r6_b (r6_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r6_t (r6_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r6_b, r6_t] /\\ [r6_b, r6_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r6_b, r6_t] /\\ [r6_b, r6_t] <s[Q2, Q2];\n\n\n\n'.
               format (2*i+1, K**24%Q - Q))
    
        print ('ghost r7_b{0}@int16, r7_t{0}@int16:\n'
               '      r7_b{0} = r7_b /\\ r7_t{0} = r7_t\n'
               '   && r7_b{0} = r7_b /\\ r7_t{0} = r7_t;\n'.
               format (3*i+2))
        print ('assert eqmod r7_b (r7_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r7_t (r7_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r7_b, r7_t] /\\ [r7_b, r7_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r7_b (r7_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r7_t (r7_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r7_b, r7_t] /\\ [r7_b, r7_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r7_b, r7_t] /\\ [r7_b, r7_t] <s[Q2, Q2];\n\n\n\n'.
               format (3*i+2, K**88%Q - Q))
    
        print ('ghost r8_b{0}@int16, r8_t{0}@int16:\n'
               '      r8_b{0} = r8_b /\\ r8_t{0} = r8_t\n'
               '   && r8_b{0} = r8_b /\\ r8_t{0} = r8_t;\n'.
               format (3*i+2))
        print ('assert eqmod r8_b (r8_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r8_t (r8_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r8_b, r8_t] /\\ [r8_b, r8_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r8_b (r8_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r8_t (r8_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r8_b, r8_t] /\\ [r8_b, r8_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r8_b, r8_t] /\\ [r8_b, r8_t] <s[Q2, Q2];\n\n\n\n'.
               format (3*i+2, K**56%Q))
    
        print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
               '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
               '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n'.
               format (4*i+3))
        print ('assert eqmod r9_b (r9_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r9_t (r9_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r9_b, r9_t] /\\ [r9_b, r9_t] < [Q2, Q2]\n'
               '       prove with [precondition, algebra solver isl] && true;\n'
               'assume eqmod r9_b (r9_b{0} *  {1}) [Q] /\\\n'
               '       eqmod r9_t (r9_t{0} *  {1}) [Q] /\\\n'
               '       [NQ2, NQ2] < [r9_b, r9_t] /\\ [r9_b, r9_t] < [Q2, Q2]\n'
               '    && [NQ2, NQ2] <s[r9_b, r9_t] /\\ [r9_b, r9_t] <s[Q2, Q2];\n\n\n\n'.
               format (4*i+3, K**120%Q - Q))

print ('\n\n\n(**************** LEVEL 4-6 ****************)\n\n')

for i in range (16):
    print ('ghost r6_b{0}@int16, r6_t{0}@int16:\n'
           '      r6_b{0} = r6_b /\\ r6_t{0} = r6_t\n'
           '   && r6_b{0} = r6_b /\\ r6_t{0} = r6_t;\n\n'.
           format (31+1*i))
    print ('assert eqmod lr_b (r6_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r6_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r6_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r6_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (31+1*i, inv_coeff (zetas_asm[15+7*i])))
    
    print ('ghost r7_b{0}@int16, r7_t{0}@int16:\n'
           '      r7_b{0} = r7_b /\\ r7_t{0} = r7_t\n'
           '   && r7_b{0} = r7_b /\\ r7_t{0} = r7_t;\n\n'.
           format (47+2*i))
    print ('assert eqmod lr_b (r7_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r7_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (47+2*i, inv_coeff (zetas_asm[15+7*i])))

    print ('ghost r8_b{0}@int16, r8_t{0}@int16:\n'
           '      r8_b{0} = r8_b /\\ r8_t{0} = r8_t\n'
           '   && r8_b{0} = r8_b /\\ r8_t{0} = r8_t;\n\n'.
           format (47+2*i))
    print ('assert eqmod lr_b (r8_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r8_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (47+2*i, inv_coeff (zetas_asm[15+7*i])))

    print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
           '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
           '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n\n'.
           format (63+3*i))
    print ('assert eqmod lr_b (r9_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r9_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (63+3*i, inv_coeff (zetas_asm[15+7*i])))

    print ('ghost r4_b{0}@int16, r4_t{0}@int16:\n'
           '      r4_b{0} = r4_b /\\ r4_t{0} = r4_t\n'
           '   && r4_b{0} = r4_b /\\ r4_t{0} = r4_t;\n\n'.
           format (31+1*i))
    print ('assert eqmod lr_b (r4_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r4_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r4_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r4_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (31+1*i, inv_coeff (zetas_asm[15+1+7*i])))

    print ('ghost r5_b{0}@int16, r5_t{0}@int16:\n'
           '      r5_b{0} = r5_b /\\ r5_t{0} = r5_t\n'
           '   && r5_b{0} = r5_b /\\ r5_t{0} = r5_t;\n\n'.
           format (47+2*i))
    print ('assert eqmod lr_b (r5_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r5_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (47+2*i, inv_coeff (zetas_asm[15+1+7*i])))

    print ('ghost r8_b{0}@int16, r8_t{0}@int16:\n'
           '      r8_b{0} = r8_b /\\ r8_t{0} = r8_t\n'
           '   && r8_b{0} = r8_b /\\ r8_t{0} = r8_t;\n\n'.
           format (47+1+2*i))
    print ('assert eqmod lr_b (r8_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r8_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r8_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (47+1+2*i, inv_coeff (zetas_asm[15+2+7*i])))

    print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
           '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
           '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n\n'.
           format (63+1+3*i))
    print ('assert eqmod lr_b (r9_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r9_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (63+1+3*i, inv_coeff (zetas_asm[15+2+7*i])))

    print ('ghost r3_b{0}@int16, r3_t{0}@int16:\n'
           '      r3_b{0} = r3_b /\\ r3_t{0} = r3_t\n'
           '   && r3_b{0} = r3_b /\\ r3_t{0} = r3_t;\n\n'.
           format (31+1*i))
    print ('assert eqmod lr_b (r3_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r3_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r3_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r3_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (31+1*i, inv_coeff (zetas_asm[15+3+7*i])))

    print ('ghost r5_b{0}@int16, r5_t{0}@int16:\n'
           '      r5_b{0} = r5_b /\\ r5_t{0} = r5_t\n'
           '   && r5_b{0} = r5_b /\\ r5_t{0} = r5_t;\n\n'.
           format (47+1+2*i))
    print ('assert eqmod lr_b (r5_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r5_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r5_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (47+1+2*i, inv_coeff (zetas_asm[15+4+7*i])))

    print ('ghost r7_b{0}@int16, r7_t{0}@int16:\n'
           '      r7_b{0} = r7_b /\\ r7_t{0} = r7_t\n'
           '   && r7_b{0} = r7_b /\\ r7_t{0} = r7_t;\n\n'.
           format (47+1+2*i))
    print ('assert eqmod lr_b (r7_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r7_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r7_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (47+1+2*i, inv_coeff (zetas_asm[15+5+7*i])))

    print ('ghost r9_b{0}@int16, r9_t{0}@int16:\n'
           '      r9_b{0} = r9_b /\\ r9_t{0} = r9_t\n'
           '   && r9_b{0} = r9_b /\\ r9_t{0} = r9_t;\n\n'.
           format (63+2+3*i))
    print ('assert eqmod lr_b (r9_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '       prove with [algebra solver isl] && true;\n'
           'assume eqmod lr_b (r9_b{0} * {1:5}) [Q] /\\\n'
           '       eqmod lr_t (r9_t{0} * {1:5}) [Q] /\\\n'
           '       [NQ2, NQ2]<[lr_b, lr_t] /\\ [lr_b, lr_t]<[Q2, Q2]\n'
           '    && [NQ2, NQ2]<s[lr_b, lr_t] /\\ [lr_b, lr_t]<s[Q2, Q2];\n\n\n'.
           format (63+2+3*i, inv_coeff (zetas_asm[15+6+7*i])))

    batch_base = 0xbefff1c4 + 2*16*i
    print ('assert ', end = '')
    for j in range (8):
        print ('[8*NQ2,8*NQ2]<[L0x{0:x},L0x{1:x}] /\\\n'
               '                     [L0x{0:x},L0x{1:x}]<[8*Q2,8*Q2]'.
               format (batch_base + 2*(2*j), batch_base + 2*(2*j+1)),
               end = '\n' if j == 7 else ' /\\\n       ')
    print ('       prove with [all cuts, algebra solver isl]\n'
           '    && true;\n')
    print ('assume ', end = '')
    for j in range (8):
        print ('[8*NQ2,8*NQ2]<[L0x{0:x},L0x{1:x}] /\\\n'
               '                     [L0x{0:x},L0x{1:x}]<[8*Q2,8*Q2]'.
               format (batch_base + 2*(2*j), batch_base + 2*(2*j+1)),
               end = '\n' if j == 7 else ' /\\\n       ')
    print ('   && ', end = '')
    for j in range (8):
        print ('[8@16*NQ2,8@16*NQ2]<s[L0x{0:x},L0x{1:x}] /\\\n'
               '                           [L0x{0:x},L0x{1:x}]<s[8@16*Q2,8@16*Q2]'.
               format (batch_base + 2*(2*j), batch_base + 2*(2*j+1)),
               end = ';\n' if j == 7 else ' /\\\n      ')


    print ('\n\n(* CUT {0} *)\n'.format (25+i))
    print ('cut Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\\n    ', end = '')
    for j in range (8):
        print ('eqmod (F**2) (L0x{0:x}+L0x{1:x}*X) [Q,X**2 - 17**{2:3}]'.
               format (batch_base + 2*(2*j), batch_base + 2*(2*j+1),
                       rev_bits[8*i+j]),
               end = ' /\\\n    ')
    for j in range (8):
        print ('[8*NQ2,8*NQ2]<[L0x{0:x},L0x{1:x}] /\\\n'
               '                  [L0x{0:x},L0x{1:x}]<[8*Q2,8*Q2]'.
               format (batch_base + 2*(2*j), batch_base + 2*(2*j+1)),
               end = '\n' if j == 7 else ' /\\\n    ')
    print ('    prove with [cuts [3, 6, 9, 12, 15, 18, 21, 24], all ghosts]')
    print (' && Q = 3329@16 /\\ NQ = (-3329)@16 /\\ Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\\n    ', end = '')
    for j in range (8):
        print ('[8@16*NQ2,8@16*NQ2]<s[L0x{0:x},L0x{1:x}] /\\\n'
               '                         [L0x{0:x},L0x{1:x}]<s[8@16*Q2,8@16*Q2]'.
               format (batch_base + 2*(2*j), batch_base + 2*(2*j+1)),
               end = '\n' if j == 7 else ' /\\\n    ')
    print ('    prove with [cuts [3, 6, 9, 12, 15, 18, 21, 24]];\n\n\n\n')

print ('\n\n\n(**************** postcondition ****************)\n\n')
base = 0xbefff1c4
print ('   Q = 3329 /\\ NQ = -3329 /\\ Q2 = 1665 /\\ NQ2 = -1665 /\\\n   ', end = '')
for i in range (128):
    print ('eqmod (F**2) (L0x{0:x}+L0x{1:x}*X) [Q,X**2 - 17**{2:3}]'.
           format (base + 2*(2*i), base + 2*(2*i+1),  rev_bits[i]),
           end = ' /\\\n   ')
for i in range (128):
    print ('[8*NQ2,8*NQ2]<[L0x{0:x},L0x{1:x}] /\\\n'
           '                 [L0x{0:x},L0x{1:x}]<[8*Q2,8*Q2]'.
           format (base + 2*(2*i), base + 2*(2*i+1)),
           end = '\n' if i == 127 else ' /\\\n   ')
print ('   prove with [cuts [25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]]')
print ('&& Q = 3329@16 /\\ NQ = (-3329)@16 /\\ Q2 = 1665@16 /\\ NQ2 = (-1665)@16 /\\\n   ', end = '')
for i in range (128):
    print ('[8@16*NQ2,8@16*NQ2]<s[L0x{0:x},L0x{1:x}] /\\\n'
           '                        [L0x{0:x},L0x{1:x}]<s[8@16*Q2,8@16*Q2]'.
           format (base + 2*(2*i), base + 2*(2*i+1)),
           end = '\n' if i == 127 else ' /\\\n   ')
print ('   prove with [cuts [25,26,27,28,29,30,31,32,33,34,35,36,37,38,39,40]]')

