# Generated by cmovg.py
int64 m
int64 f
int64 g
int64 u
int64 v
int64 r
int64 s
int64 uvrs
int64 fuv
int64 grs
int64 mnew
int64 z
int64 loop
int64 rax
int64 rdx
int64 t0
int64 t1
int64 t2
int64 h
int64 oldg
int64 i
int64 j
int64 f0
int64 g0

int64 rtimesoldv
int64 stimesolds

stack64 stack_out

stack256 stack_m1
#stack64 stack_f   #inplace stack_fxgx[0] = f
#stack64 stack_g   #inplace stack_fxgx[2] = g
#stack64 stack_u   #inplace stack_uuss[0] = u
#stack64 stack_v   #inplace stack_vvrr[0] = v
#stack64 stack_r   #inplace stack_vvrr[2] = r
#stack64 stack_s   #inplace stack_uuss[2] = s
stack64 stack_m

stack256 stack_fxgx
stack256 stack_uuss
stack256 stack_vvrr
stack256 stack_fygy

stack64 stack_fuv
stack64 stack_f

reg256 carryy
reg256 carryz
reg256 d0
reg256 d1
reg256 d0x19
reg256 d1x19
reg256 out0

reg256 FVGS0
reg256 GSFV0
reg256 out1
reg256 out1plus
stack256 stack_FVGS0
reg256 FVGS1
reg256 GSFV1
reg256 out2
reg256 out2plus
stack256 stack_FVGS1
reg256 FVGS2
reg256 GSFV2
reg256 out3
reg256 out3plus
stack256 stack_FVGS2
reg256 FVGS3
reg256 GSFV3
reg256 out4
reg256 out4plus
stack256 stack_FVGS3
reg256 FVGS4
reg256 GSFV4
reg256 out5
reg256 out5plus
stack256 stack_FVGS4
reg256 FVGS5
reg256 GSFV5
reg256 out6
reg256 out6plus
stack256 stack_FVGS5
reg256 FVGS6
reg256 GSFV6
reg256 out7
reg256 out7plus
stack256 stack_FVGS6
reg256 FVGS7
reg256 GSFV7
reg256 out8
reg256 out8plus
stack256 stack_FVGS7
reg256 FVGS8
reg256 GSFV8
reg256 out9
reg256 out9plus
stack256 stack_FVGS8

reg256 out8plus2
reg256 out10
reg256 ta
reg256 tb
reg256 uuss
reg256 uuss0
reg256 uuss1
reg256 vvrr
reg256 vvrr0
reg256 vvrr1

int64             _2p20
stack64      stack_2p20
int64            _m2p41
stack64     stack_m2p41
int64            _m2p62
stack64     stack_m2p62
int64        _2p20a2p41
stack64 stack_2p20a2p41
reg256 _19x4
reg256 _0_19x4
reg256 _32767x4
reg256 _inv19_2p30x4
reg256 _2p30m1x4
reg256 _2p33x4
reg256 _2p48x4
reg256 _2p63x4
reg256 _2p63m2p33x4
stack256 stack_19x4
stack256 stack_0_19x4
stack256 stack_32767x4
stack256 stack_inv19_2p30x4
stack256 stack_2p30m1x4
stack256 stack_2p33x4
stack256 stack_2p48x4
stack256 stack_2p63x4
stack256 stack_2p63m2p33x4

enter inverse_255
# input_0 = input
# input_1 = output
# input_2 = table of constants

new stack_m1
stack_out = input_1

stack64 stack_r11
stack_r11 = caller_r11
stack64 stack_r12
stack_r12 = caller_r12
stack64 stack_r13
stack_r13 = caller_r13
stack64 stack_r14
stack_r14 = caller_r14
stack64 stack_r15
stack_r15 = caller_r15
stack64 stack_rbx
stack_rbx = caller_rbx
stack64 stack_rbp
stack_rbp = caller_rbp
int64 a0
a0 = mem64[input_0 +  0]
int64 a1
a1 = mem64[input_0 +  8]
int64 a2
a2 = mem64[input_0 + 16]
int64 a3
a3 = mem64[input_0 + 24]

# a0 a1 a2 a3 between 0 and 2^256-1

t0 = a3
(int64) t0 >>= 63
a3 reset bit 63
t0 &= 19
t0 += 19
carry? a0 += t0
carry? a1 += 0 + carry
carry? a2 += 0 + carry
       a3 += 0 + carry

# a0 a1 a2 a3 between 19 and 2^255-1+38, offset by 19

t0 = a3
(int64) t0 >>= 63
a3 reset bit 63
t0 &= 19
carry? a0 += t0
carry? a1 += 0 + carry
carry? a2 += 0 + carry
       a3 += 0 + carry

# a0 a1 a2 a3 between 19 and 2^255-1, offset by 19

carry? a0 -= 19
carry? a1 -= 0 - carry
carry? a2 -= 0 - carry
       a3 -= 0 - carry

# a0 a1 a2 a3 between 0 and 2^255-19-1

t0 = -1152921504606846976
g = a0 & ~ t0
#g0 = a1
#g0 = (g0.a0) << 4
#g0 = g0 & ~ t0

d1 = mem256[ input_2 + 288 ]
stack_FVGS0 = d1
t0 = a0
t0 &= 1073741823
inplace stack_FVGS0[2] = t0
d1 = mem256[ input_2 + 320 ]
stack_FVGS1 = d1
t0 = a0
(uint64) t0 >>= 30
t0 &= 1073741823
inplace stack_FVGS1[2] = t0
d1 = mem256[ input_2 + 352 ]
stack_FVGS2 = d1
a0 = (a1 a0) >> 60
a0 &= 1073741823
inplace stack_FVGS2[2] = a0
d1 = mem256[ input_2 + 384 ]
stack_FVGS3 = d1
t0 = a1
(uint64) t0 >>= 26
t0 &= 1073741823
inplace stack_FVGS3[2] = t0
d1 = mem256[ input_2 + 416 ]
stack_FVGS4 = d1
a1 = (a2 a1) >> 56
a1 &= 1073741823
inplace stack_FVGS4[2] = a1
d1 = mem256[ input_2 + 448 ]
stack_FVGS5 = d1
t0 = a2
(uint64) t0 >>= 22
t0 &= 1073741823
inplace stack_FVGS5[2] = t0
d1 = mem256[ input_2 + 480 ]
stack_FVGS6 = d1
a2 = (a3 a2) >> 52
a2 &= 1073741823
inplace stack_FVGS6[2] = a2
d1 = mem256[ input_2 + 512 ]
stack_FVGS7 = d1
t0 = a3
(uint64) t0 >>= 18
t0 &= 1073741823
inplace stack_FVGS7[2] = t0
d1 = mem256[ input_2 + 544]
stack_FVGS8 = d1
(uint64) a3 >>= 48
inplace stack_FVGS8[2] = a3

f = -19
#inplace stack_FVGS0[0] = f
#t1 = 32768
#inplace stack_FVGS8[0] = t1
#t0 = 1
#inplace stack_FVGS0[3] = t0

                 m = -1
                  z = 0
inplace stack_m1[0] = m
#                f0 = z
inplace stack_m1[1] = z

              _2p20 = 1048576
         stack_2p20 = _2p20
             _m2p41 = -2199023255552
        stack_m2p41 = _m2p41
             _m2p62 = -4611686018427387904
        stack_m2p62 = _m2p62
         _2p20a2p41 = 2199024304128
    stack_2p20a2p41 = _2p20a2p41

              _19x4 = mem256[ input_2 +   0 ]
         stack_19x4 = _19x4
            _0_19x4 = mem256[ input_2 +  32 ]
       stack_0_19x4 = _0_19x4
           _32767x4 = mem256[ input_2 +  64 ]
      stack_32767x4 = _32767x4
      _inv19_2p30x4 = mem256[ input_2 +  96 ]
 stack_inv19_2p30x4 = _inv19_2p30x4
          _2p30m1x4 = mem256[ input_2 + 128 ]
     stack_2p30m1x4 = _2p30m1x4
            _2p33x4 = mem256[ input_2 + 160 ]
       stack_2p33x4 = _2p33x4
            _2p48x4 = mem256[ input_2 + 192 ]
       stack_2p48x4 = _2p48x4
            _2p63x4 = mem256[ input_2 + 224 ]
       stack_2p63x4 = _2p63x4
       _2p63m2p33x4 = mem256[ input_2 + 256 ]
# idle loop
i = 12
u = 1152921504606846976
v = 0
s = u
r = 0


bigloop:

# transition portion

      rax = g
      (int128) rdx rax = rax * s
      t2 = rax
      t1 = rdx

      rax = f
      (int128) rdx rax = rax * r
      carry? t2 += rax
             t1 += rdx + carry
      t2 = (t1 t2) >> 60	 

      rax = f
      (int128) rdx rax = rax * u
      f = rax
      t0 = rdx
      rax = g
      (int128) rdx rax = rax * v
      carry? f += rax
             t0 += rdx + carry
      f = (t0 f) >> 60

new vvrr
vvrr = v,vvrr[1],0,0
vvrr = vvrr[0],r,0,0

      v *= g0
      g0 *= s

      r *= f0
      f0 *= u
      f0 += v
      g0 += r

      f += f0
      g = t2+g0

# at this point new f and g are computed.

# startswap
FVGS0 = stack_FVGS0

new uuss
uuss = u,uuss[1],0,0
uuss = uuss[0],s,0,0

GSFV0 = FVGS0[1,0]

uuss = uuss[0,0,1,1]
vvrr = vvrr[0,0,1,1]


_2p30m1x4 = stack_2p30m1x4

uuss0 = uuss & _2p30m1x4
vvrr0 = vvrr & _2p30m1x4
4x ta = int32 uuss0 * int32 FVGS0

4x tb = int32 vvrr0 * int32 GSFV0
4x out0 = ta + tb

_inv19_2p30x4 = stack_inv19_2p30x4
_19x4 = stack_19x4

4x d0 = int32 out0 * int32 _inv19_2p30x4
d0 &= _2p30m1x4
#4x out8plus2 = d0 << 15
4x d0x19 = int32 d0 * int32 _19x4
4x out0 -= d0x19


4x carryy = out0 + stack_2p63x4
4x carryy unsigned>>= 30

4x out8plus2 = d0 << 15

FVGS1 = stack_FVGS1
GSFV1 = FVGS1[1,0]

4x ta = int32 uuss0 * int32 FVGS1
4x tb = int32 vvrr0 * int32 GSFV1
4x out1plus = ta + tb

4x uuss1 = uuss unsigned>> 30
4x vvrr1 = vvrr unsigned>> 30

4x ta = int32 uuss1 * int32 FVGS0
4x tb = int32 vvrr1 * int32 GSFV0
4x out1 = ta + tb
4x out1 += out1plus
4x out1 += carryy


4x d1 = int32 out1 * int32 _inv19_2p30x4
d1 &= _2p30m1x4
#4x out9 = d1 << 15
4x d1x19 = int32 d1 * int32 _19x4
4x out1 -= d1x19


4x carryy = out1 + _2p63m2p33x4 
4x carryy unsigned>>= 30

4x out9 = d1 << 15

FVGS2 = stack_FVGS2 
GSFV2 = FVGS2[1,0]
4x ta = int32 uuss1 * int32 FVGS1
4x tb = int32 vvrr1 * int32 GSFV1
4x out2plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS2
4x tb = int32 vvrr0 * int32 GSFV2
4x out2 = ta + tb
4x out2 += out2plus
4x out2 += carryy


4x carryy = out2 + _2p63m2p33x4 
4x carryy unsigned>>= 30


FVGS3 = stack_FVGS3 
GSFV3 = FVGS3[1,0]
4x ta = int32 uuss1 * int32 FVGS2
4x tb = int32 vvrr1 * int32 GSFV2
4x out3plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS3
4x tb = int32 vvrr0 * int32 GSFV3
4x out3 = ta + tb
4x out3 += out3plus
4x out3 += carryy

out2 &= _2p30m1x4

4x carryy = out3 + _2p63m2p33x4 
4x carryy unsigned>>= 30

out3 &= _2p30m1x4
stack_FVGS1 = out3
# store-ahead for f0 and g0
4x ta = out3 << 30
4x ta += out2
stack_fxgx = ta


FVGS4 = stack_FVGS4 
GSFV4 = FVGS4[1,0]
4x ta = int32 uuss1 * int32 FVGS3
4x tb = int32 vvrr1 * int32 GSFV3
4x out4plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS4
4x tb = int32 vvrr0 * int32 GSFV4
4x out4 = ta + tb
4x out4 += out4plus
4x out4 += carryy


4x carryy = out4 + _2p63m2p33x4 
4x carryy unsigned>>= 30


FVGS5 = stack_FVGS5 
GSFV5 = FVGS5[1,0]
4x ta = int32 uuss1 * int32 FVGS4
4x tb = int32 vvrr1 * int32 GSFV4
4x out5plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS5
4x tb = int32 vvrr0 * int32 GSFV5
4x out5 = ta + tb
4x out5 += out5plus
4x out5 += carryy


4x carryy = out5 + _2p63m2p33x4 
4x carryy unsigned>>= 30

out5 &= _2p30m1x4
out4 &= _2p30m1x4
stack_FVGS2 = out4
# store-ahead for f1 and g1
4x ta = out5 << 30
4x ta += out4
stack_fygy = ta


FVGS6 = stack_FVGS6 
GSFV6 = FVGS6[1,0]
4x ta = int32 uuss1 * int32 FVGS5
4x tb = int32 vvrr1 * int32 GSFV5
4x out6plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS6
4x tb = int32 vvrr0 * int32 GSFV6
4x out6 = ta + tb
4x out6 += out6plus
4x out6 += carryy


4x carryz = out6 + _2p63m2p33x4 
4x carryz unsigned>>= 30

stack_FVGS3 = out5

FVGS7 = stack_FVGS7 
GSFV7 = FVGS7[1,0]
4x ta = int32 uuss1 * int32 FVGS6
4x tb = int32 vvrr1 * int32 GSFV6
4x out7plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS7
4x tb = int32 vvrr0 * int32 GSFV7
4x out7 = ta + tb
4x out7 += out7plus
4x out7 += carryz


4x carryz = out7 + _2p63m2p33x4 
4x carryz unsigned>>= 30

out6 &= _2p30m1x4
stack_FVGS4 = out6

FVGS8 = stack_FVGS8 
GSFV8 = FVGS8[1,0]
4x ta = int32 uuss1 * int32 FVGS7
4x tb = int32 vvrr1 * int32 GSFV7
4x out8plus = ta + tb
4x ta = int32 uuss0 * int32 FVGS8
4x tb = int32 vvrr0 * int32 GSFV8
4x out8 = ta + tb
4x out8 += out8plus
4x out8 += carryz

4x out8 += out8plus2

4x carryz = out8 + _2p63m2p33x4 
4x carryz unsigned>>= 30

out7 &= _2p30m1x4
stack_FVGS5 = out7

4x ta = int32 uuss1 * int32 FVGS8
4x tb = int32 vvrr1 * int32 GSFV8
4x out9plus = ta + tb
4x out9 += out9plus
4x out9 += carryz


4x out10 = out9 + _2p63m2p33x4 
4x out10 unsigned>>= 30

out8 &= _2p30m1x4
stack_FVGS6 = out8
_32767x4 = stack_32767x4
_2p48x4 = stack_2p48x4

4x carryy = out10 + _2p63m2p33x4
4x carryy unsigned>>= 15
4x carryy -= _2p48x4
4x out10 -= stack_2p33x4

out9 &= _2p30m1x4

out10 &= _32767x4
4x carryy = int32 carryy * int32 stack_0_19x4

4x out2 += carryy
stack_FVGS7 = out9
stack_FVGS8 = out10
stack_FVGS0 = out2

#m = stack_m	     
#_m2p15 = stack_m2p15	

#f = stack_fxgx[0]
#g = stack_fxgx[2] 


# entering condition: f and g are 60-bit signed ints

loop20_init:

  #fuv = f & ~ _m2p20
  #grs = g & ~ _m2p20
  fuv = f
  grs = g
  fuv <<= 44
  grs <<= 44
  (int64) fuv >>= 44
  (int64) grs >>= 44
  fuv += stack_m2p41
  grs += stack_m2p62

# Rep #0
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #1
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #2
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #3
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #4
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #5
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #6
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #7
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #8
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #9
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #10
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #11
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #12
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #13
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #14
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #15
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #16
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #17
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #18
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #19
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1


# extract u,v,r,s; compute next f,g
extract_init:

  _2p20a2p41 = stack_2p20a2p41
  s = grs + _2p20a2p41
  (int64) s >>= 42

  t2 = g
  g *= s  
  # g = gs

  v = fuv + _2p20a2p41
  (int64) v >>= 42

  t2 *= v
  # t2 = gv

  _2p20 = stack_2p20
  r = grs + _2p20
  r <<= 22
  (int64) r >>= 43

      rax = f
      rax *= r
      # rax = fr

  u = fuv + _2p20
  u <<= 22
  (int64) u >>= 43

       f *= u
       f += t2
       g += rax

  (int64) f >>= 20
  (int64) g >>= 20

  inplace stack_vvrr[0] = v
  inplace stack_uuss[0] = u
  inplace stack_uuss[2] = s
  inplace stack_vvrr[2] = r

#  loop = 4
  #loop = 3
  loop = 2
# endswap

loop20:

  #fuv = f & ~ _m2p20
  #grs = g & ~ _m2p20
  fuv = f
  grs = g
  fuv <<= 44
  grs <<= 44
  (int64) fuv >>= 44
  (int64) grs >>= 44
  fuv += stack_m2p41
  grs += stack_m2p62

j = 2
loop2:
# Rep #0
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #1
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #2
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #3
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #4
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #5
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #6
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #7
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #8
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

# Rep #9
  z = 0
  oldg = grs
  h = grs + fuv
              =? grs & 1

  z = m   if !=
  h = grs if  =
  mnew = m - 1
  grs -= fuv

  (int64) grs >>= 1
  (int64) h >>= 1
  m = ~m
                 signed<? z - 0

  fuv = oldg if  signed<
  grs = h    if !signed<
  m = mnew   if !signed<
#  (int64) grs >>= 1

 =? j -= 1
goto loop2 if !=

  =? loop -= 1		
goto lastloop if =

# extract u,v,r,s
extract:

  _2p20a2p41 = stack_2p20a2p41
  s = grs + _2p20a2p41
  (int64) s >>= 42

  t2 = g
  g *= s  
  # g = gs

  v = fuv + _2p20a2p41
  (int64) v >>= 42

  t2 *= v
  # t2 = gv

  _2p20 = stack_2p20
  r = grs + _2p20
  r <<= 22
  (int64) r >>= 43

      rax = f
      rax *= r
      # rax = fr

  u = fuv + _2p20
  u <<= 22
  (int64) u >>= 43

       f *= u
       f += t2
       g += rax

  (int64) f >>= 20
  (int64) g >>= 20

#first loops iteration has NOT been removed
#=? loop - 2  
#goto first_loop if =

  t0 = stack_uuss[0]
  t0 *= u
  t1 = stack_vvrr[2]
  t1 *= v

  rtimesoldv = stack_vvrr[0]
  u *= rtimesoldv
  stimesolds = stack_uuss[2]
  v *= stimesolds
  rtimesoldv *= r
  stimesolds *= s
  r *= stack_uuss[0]
  s *= stack_vvrr[2]

  v += u
  u = t0 + t1

  r += s
  s = rtimesoldv + stimesolds

first_loop:


  inplace stack_vvrr[0] = v
  inplace stack_uuss[0] = u
  inplace stack_uuss[2] = s
  inplace stack_vvrr[2] = r


goto loop20 

lastloop:

  _2p20a2p41 = stack_2p20a2p41
  s = grs + _2p20a2p41
  (int64) s >>= 42
  v = fuv + _2p20a2p41
  (int64) v >>= 42

  t1 = stack_vvrr[2]
  t1 *= v
  stimesolds = stack_uuss[2]
  v *= stimesolds
  stimesolds *= s

  _2p20 = stack_2p20
  r = grs + _2p20
  r <<= 22
  (int64) r >>= 43
  u = fuv + _2p20
  u <<= 22
  (int64) u >>= 43

  t0 = stack_uuss[0]
  t0 *= u
  rtimesoldv = stack_vvrr[0]
  u *= rtimesoldv
  rtimesoldv *= r

  s *= stack_vvrr[2]
  r *= stack_uuss[0]

  v += u
  u = t0 + t1
  r += s
  s = rtimesoldv + stimesolds

  f = stack_fxgx[0]
  g = stack_fxgx[2]
  f0 = stack_fygy[0]
  g0 = stack_fygy[2]

=? i -= 1
goto bigloop if !=


# stack_FVGS*[1] and stack_FVGS*[3] are V and S, compute u V + v S
# signed modulo 2^255 - 19

int64 a4
int64 a5
int64 a6

# cneg
f0 <<= 60
g0 <<= 60
f += f0
g += g0
f *= u
g *= v
t0 = f + g
(int64) t0 >>= 60

#fuv &= 2
#t0 = 1
#t0 -= fuv
u *= t0
v *= t0

cneg:
#t0 = stack_FVGS0[0]
#t0 <<= 34
#(int64) t0 >>= 34
#u *= t0
#v *= t0


rax = stack_FVGS8[1]
# rax = V8
(int128) rdx rax = rax * u
a4 = rdx
a3 = rax

rax = stack_FVGS8[3]
# rax = S8
(int128) rdx rax = rax * v
carry? a3 += rax
       a4 += rdx + carry
# 76 bits from bit 240

a4 = (a4.a3) << 48
a3 <<= 48

rax = stack_FVGS6[1]
t0 = stack_FVGS7[1]
t0 <<= 30
rax += t0
# rax = V67
(int128) rdx rax = rax * u
t2 = rdx
t1 = rax

rax = stack_FVGS6[3]
t0 = stack_FVGS7[3]
t0 <<= 30
rax += t0
# rax = S67
(int128) rdx rax = rax * v
carry? t1 += rax
       t2 += rdx + carry
# 121 bits from bit 180

a2 = t1
t1 = (t2 t1) >> 12
a2 <<= 52
(int64) t2 >>= 12
carry? a3 += t1
       a4 += t2 + carry
       
rax = stack_FVGS4[1]
t0 = stack_FVGS5[1]
t0 <<= 30
rax += t0
# rax = V45
(int128) rdx rax = rax * u
t2 = rdx
t1 = rax

rax = stack_FVGS4[3]
t0 = stack_FVGS5[3]
t0 <<= 30
rax += t0
# rax = S45
(int128) rdx rax = rax * v
carry? t1 += rax
       t2 += rdx + carry
# 121 bits from bit 120

a1 = t1
t1 = (t2 t1) >> 8
a1 <<= 56
h = t2
(int64) t2 >>= 8
(int64) h >>= 63
carry? a2 += t1
carry? a3 += t2 + carry
       a4 += h + carry


rax = stack_FVGS2[1]
t0 = stack_FVGS3[1]
t0 <<= 30
rax += t0
# rax = V23
(int128) rdx rax = rax * u
t2 = rdx
t1 = rax

rax = stack_FVGS2[3]
t0 = stack_FVGS3[3]
t0 <<= 30
rax += t0
# rax = S23
(int128) rdx rax = rax * v
carry? t1 += rax
       t2 += rdx + carry
# 121 bits from bit 60

a0 = t1
t1 = (t2 t1) >> 4
a0 <<= 60
h = t2
(int64) t2 >>= 4
(int64) h >>= 63
carry? a1 += t1
carry? a2 += t2 + carry
carry? a3 += h + carry
       a4 += h + carry
       
rax = stack_FVGS0[1]
t0 = stack_FVGS1[1]
t0 <<= 30
rax += t0
# rax = V01
(int128) rdx rax = rax * u
t2 = rdx
t1 = rax

rax = stack_FVGS0[3]
t0 = stack_FVGS1[3]
t0 <<= 30
rax += t0
# rax = S01
(int128) rdx rax = rax * v
carry? t1 += rax
       t2 += rdx + carry
# 121 bits from bit 0
h = t2
(int64) h >>= 63
carry? a0 += t1
carry? a1 += t2 + carry
carry? a2 += h + carry
carry? a3 += h + carry
       a4 += h + carry


carry? a3 reset bit 63
a4 += a4 + carry
h = a4
rax = 19
(int128) rdx rax = rax * a4
(int64) h >>= 63
a4 = 0
carry?   a0 += rax
carry?   a1 += rdx + carry
carry?   a2 += h + carry
carry?   a3 += h + carry
         a4 += h + carry

carry? a3 reset bit 63
a4 += a4 + carry
h = a4
rax = 19
(int128) rdx rax = rax * a4
(int64) h >>= 63
carry?   a0 += rax
carry?   a1 += rdx + carry
carry?   a2 += h + carry
carry?   a3 += h + carry
         a4 += h + carry

  z = 0
a4 = -19
a5 = -1
a6 = 9223372036854775807

signed<? a3 - 0
a4 = z if !signed<
a5 = z if !signed<
a6 = z if !signed<
carry? a0 += a4
carry? a1 += a5 + carry
carry? a2 += a5 + carry
       a3 += a6 + carry

carry?   a0 += 19
carry?   a1 += 0 + carry
carry?   a2 += 0 + carry
         a3 += 0 + carry

t0 = a3
(int64) t0 >>= 63
a3 reset bit 63
t0 &= 19
carry? a0 += t0
carry? a1 += 0 + carry
carry? a2 += 0 + carry
       a3 += 0 + carry

carry?   a0 -= 19
carry?   a1 -= 0 - carry
carry?   a2 -= 0 - carry
	 a3 -= 0 - carry

# output
t2 = stack_out

mem64[t2 +  0] = a0
mem64[t2 +  8] = a1
mem64[t2 + 16] = a2
mem64[t2 + 24] = a3
caller_r11 = stack_r11
caller_r12 = stack_r12
caller_r13 = stack_r13
caller_r14 = stack_r14
caller_r15 = stack_r15
caller_rbx = stack_rbx
caller_rbp = stack_rbp
return