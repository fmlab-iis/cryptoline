Q=3329
K=17

twiddles = [
    0, 0, -15749, -1600, -7373, -749, -394, -40, -6762, -687, 6201, 630, -14095, -1432, 8347, 848, 10453, 1062, -13879, -1410, 1900, 193, 7845, 797, -5345, -543, -679, -69, 5601, 569, -15582, -1583, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 2914, 2914, 14036, 14036, -8682, -8682, -12156, -12156, 296, 296, 1426, 1426, -882, -882, -1235, -1235, 2845, 2845, -9942, -9942, -748, -748, 7943, 7943, 289, 289, -1010, -1010, -76, -76, 807, 807, 3258, 3258, 14125, 14125, -15483, -15483, 4449, 4449, 331, 331, 1435, 1435, -1573, -1573, 452, 452, 167, 167, 15592, 15592, 16113, 16113, 3691, 3691, 17, 17, 1584, 1584, 1637, 1637, 375, 375, -5591, -5591, -10148, -10148, 7117, 7117, -7678, -7678, -568, -568, -1031, -1031, 723, 723, -780, -780, 5739, 5739, -12717, -12717, -10247, -10247, -12196, -12196, 583, 583, -1292, -1292, -1041, -1041, -1239, -1239, -6693, -6693, -1073, -1073, 10828, 10828, 16192, 16192, -680, -680, -109, -109, 1100, 1100, 1645, 1645, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 13180, 13180, 5266, 5266, 14529, 14529, -4400, -4400, 1339, 1339, 535, 535, 1476, 1476, -447, -447, 11782, 11782, 14155, 14155, -10355, -10355, 15099, 15099, 1197, 1197, 1438, 1438, -1052, -1052, 1534, 1534, -10089, -10089, -4538, -4538, -12540, -12540, -9125, -9125, -1025, -1025, -461, -461, -1274, -1274, -927, -927, 13869, 13869, 10463, 10463, 7441, 7441, -12107, -12107, 1409, 1409, 1063, 1063, 756, 756, -1230, -1230, -6565, -6565, 3140, 3140, -11546, -11546, 5522, 5522, -667, -667, 319, 319, -1173, -1173, 561, 561, -472, -472, -5473, -5473, -3091, -3091, -8495, -8495, -48, -48, -556, -556, -314, -314, -863, -863, 2293, 2293, 7451, 7451, -2746, -2746, -7235, -7235, 233, 233, 757, 757, -279, -279, -735, -735, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -2786, -2786, -9213, -9213, 551, 551, -4429, -4429, -283, -283, -936, -936, 56, 56, -450, -450, 6398, 6398, -6713, -6713, -8032, -8032, 14578, 14578, 650, 650, -682, -682, -816, -816, 1481, 1481, -13308, -13308, -7008, -7008, 6221, 6221, 6378, 6378, -1352, -1352, -712, -712, 632, 632, 648, 648, -16005, -16005, -5168, -5168, -14588, -14588, 11251, 11251, -1626, -1626, -525, -525, -1482, -1482, 1143, 1143, 16251, 16251, 10749, 10749, 9371, 9371, -11605, -11605, 1651, 1651, 1092, 1092, 952, 952, -1179, -1179, -5315, -5315, 3967, 3967, 14381, 14381, -5453, -5453, -540, -540, 403, 403, 1461, 1461, -554, -554, -15159, -15159, 10099, 10099, -6319, -6319, 8721, 8721, -1540, -1540, 1026, 1026, -642, -642, 886, 886, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, -10719, -10719, -13338, -13338, 13121, 13121, 8081, 8081, -1089, -1089, -1355, -1355, 1333, 1333, 821, 821, -4567, -4567, -8416, -8416, 12993, 12993, 12078, 12078, -464, -464, -855, -855, 1320, 1320, 1227, 1227, 325, 325, -2156, -2156, -13918, -13918, 8957, 8957, 33, 33, -219, -219, -1414, -1414, 910, 910, 9243, 9243, -15818, -15818, 7215, 7215, -11999, -11999, 939, 939, -1607, -1607, 733, 733, -1219, -1219, -10050, -10050, 11930, 11930, -9764, -9764, -3878, -3878, -1021, -1021, 1212, 1212, -992, -992, -394, -394, -8780, -8780, -14322, -14322, 2638, 2638, 8711, 8711, -892, -892, -1455, -1455, 268, 268, 885, 885, -9262, -9262, 10129, 10129, 6309, 6309, -11566, -11566, -941, -941, 1029, 1029, 641, 641, -1175, -1175
    ]

def parameters (base):
    for i in range (256):
        print ('int16 L0x{0:x}'.format (base + 2*i),
               end = ',\n' if i % 4 == 3 else ',')
    for i in range (256):
        print ('int16 A{0:02x}'.format (i),
               end = ',\n' if i % 8 == 7 or i == 255  else ',')
    print ('int16 Q, int16 Q2, int16 NQ, int16 NQ2,')
    for i in range (16):
        for j in range (2):
            print ('int16 F{0:x}{1}'.format (i, 8*j),
                   end = '\n' if i == 15 and j == 1 else
                         ',\n' if i % 4 == 3 and j == 1 else ',')

def nondets ():
    print ('nondet sp@uint64;nondet x0@uint64;nondet x1@uint64;')
    print ('nondet  %v0@sint16[8];')
    print ('nondet  %v8@sint16[8];nondet  %v9@sint16[8];nondet %v10@sint16[8];nondet %v11@sint16[8];')
    print ('nondet %v12@sint16[8];nondet %v13@sint16[8];nondet %v14@sint16[8];nondet %v15@sint16[8];')

def constants (base, table):
    for i in range (len (table)):
        print ('mov L0x{0:x} ({1:6})@int16;'.format (base + 2*i, table[i]),
               end = '\n' if i % 2 == 1 else ' ')
    print ()

exps = [1, 128+1,
        1+64, 1+64+128,
        1+32, 1+32+128, 1+32+64, 1+32+64+128,
        1+16, 1+16+128, 1+16+64, 1+16+64+128, 1+16+32, 1+16+32+128, 1+16+32+64, 1+16+32+64+128,
        1+8, 1+8+128, 1+8+64, 1+8+64+128, 1+8+32, 1+8+32+128, 1+8+32+64, 1+8+32+64+128, 1+8+16, 1+8+16+128, 1+8+16+64, 1+8+16+64+128, 1+8+16+32, 1+8+16+32+128, 1+8+16+32+64, 1+8+16+32+64+128,
        1+4, 1+4+128, 1+4+64, 1+4+64+128, 1+4+32, 1+4+32+128, 1+4+32+64, 1+4+32+64+128, 1+4+16, 1+4+16+128, 1+4+16+64, 1+4+16+64+128, 1+4+16+32, 1+4+16+32+128, 1+4+16+32+64, 1+4+16+32+64+128, 1+4+8, 1+4+8+128, 1+4+8+64, 1+4+8+64+128, 1+4+8+32, 1+4+8+32+128, 1+4+8+32+64, 1+4+8+32+64+128, 1+4+8+16, 1+4+8+16+128, 1+4+8+16+64, 1+4+8+16+64+128, 1+4+8+16+32, 1+4+8+16+32+128, 1+4+8+16+32+64, 1+4+8+16+32+64+128,
        1+2, 1+2+128, 1+2+64, 1+2+64+128, 1+2+32, 1+2+32+128, 1+2+32+64, 1+2+32+64+128, 1+2+16, 1+2+16+128, 1+2+16+64, 1+2+16+64+128, 1+2+16+32, 1+2+16+32+128, 1+2+16+32+64, 1+2+16+32+64+128, 1+2+8, 1+2+8+128, 1+2+8+64, 1+2+8+64+128, 1+2+8+32, 1+2+8+32+128, 1+2+8+32+64, 1+2+8+32+64+128, 1+2+8+16, 1+2+8+16+128, 1+2+8+16+64, 1+2+8+16+64+128, 1+2+8+16+32, 1+2+8+16+32+128, 1+2+8+16+32+64, 1+2+8+16+32+64+128, 1+2+4, 1+2+4+128, 1+2+4+64, 1+2+4+64+128, 1+2+4+32, 1+2+4+32+128, 1+2+4+32+64, 1+2+4+32+64+128, 1+2+4+16, 1+2+4+16+128, 1+2+4+16+64, 1+2+4+16+64+128, 1+2+4+16+32, 1+2+4+16+32+128, 1+2+4+16+32+64, 1+2+4+16+32+64+128, 1+2+4+8, 1+2+4+8+128, 1+2+4+8+64, 1+2+4+8+64+128, 1+2+4+8+32, 1+2+4+8+32+128, 1+2+4+8+32+64, 1+2+4+8+32+64+128, 1+2+4+8+16, 1+2+4+8+16+128, 1+2+4+8+16+64, 1+2+4+8+16+64+128, 1+2+4+8+16+32, 1+2+4+8+16+32+128, 1+2+4+8+16+32+64, 1+2+4+8+16+32+64+128]

def postconditions (base):
    for i in range (128):
        print ('    eqmod (poly X [L0x{0:x},L0x{1:x}]) (F**2) [Q, X**2 - 17**{2:3}] /\\'.
               format (base + 4*i, base + 4*i + 2, exps[i]))
    for i in range (64):
        print (' /\\ [NQ,NQ,NQ,NQ]<[L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]'.
               format (base + 8*i, base + 8*i+2, base + 8*i+4, base + 8*i+ 6))
        print (' /\\ [L0x{0:x},L0x{1:x},L0x{2:x},L0x{3:x}]<[Q,Q,Q,Q]'.
               format (base + 8*i, base + 8*i+2, base + 8*i+4, base + 8*i+ 6))
               
    
    
print ('\n\n\n(**************** parameters ****************)\n\n')
parameters (0xffffffffc400)
print ('\n\n\n(******** nondets ********)\n\n')
nondets ()
print ('\n\n\n(******** constants ********)\n\n')
print ('mov L0x414860 0x0d01@int16;')
print ('mov L0x414868 0x4ebf@int16;')
constants (0x414880, twiddles)
print ('\n\n\n(******** post-conditions ********)\n\n')
postconditions (0xffffffffc400)


