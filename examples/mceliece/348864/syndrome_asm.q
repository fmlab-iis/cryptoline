int64 b64
int64 synd
int64 addr
int64 c
int64 c_all
int64 row
int64 p
int64 e
int64 s
reg256 pp
reg256 ee
reg256 ss
int64 buf_ptr
stack256 buf
enter syndrome_asm
input_1 += 260780
buf_ptr = &buf
row = 768

loop:

row -= 1
ss = mem256[ input_1 + 0 ]
ee = mem256[ input_2 + 96 ]
ss &= ee
pp = mem256[ input_1 + 32 ]
ee = mem256[ input_2 + 128 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 64 ]
ee = mem256[ input_2 + 160 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 96 ]
ee = mem256[ input_2 + 192 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 128 ]
ee = mem256[ input_2 + 224 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 160 ]
ee = mem256[ input_2 + 256 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 192 ]
ee = mem256[ input_2 + 288 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 224 ]
ee = mem256[ input_2 + 320 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 256 ]
ee = mem256[ input_2 + 352 ]
pp &= ee
ss ^= pp
pp = mem256[ input_1 + 288 ]
ee = mem256[ input_2 + 384 ]
pp &= ee
ss ^= pp

buf = ss
s = *(uint64 *)(input_1 + 320)
e = *(uint64 *)(input_2 + 416)
s &= e
p = *(uint64 *)(input_1 + 328)
e = *(uint64 *)(input_2 + 424)
p &= e
s ^= p
p = *(uint32 *)(input_1 + 336)
e = *(uint32 *)(input_2 + 432)
p &= e
s ^= p
c_all = count(s)
b64 = mem64[ buf_ptr + 0 ]
c = count(b64)
c_all ^= c
b64 = mem64[ buf_ptr + 8 ]
c = count(b64)
c_all ^= c
b64 = mem64[ buf_ptr + 16 ]
c = count(b64)
c_all ^= c
b64 = mem64[ buf_ptr + 24 ]
c = count(b64)
c_all ^= c

addr = row
(uint64) addr >>= 3
addr += input_0
synd = *(uint8  *) (addr + 0)
synd <<= 1
(uint32) c_all &= 1
synd |= c_all
*(uint8  *) (addr + 0) = synd
input_1 -= 340
=? row-0

goto loop if !=

ss = mem256[ input_0 + 0 ]
ee = mem256[ input_2 + 0 ]
ss ^= ee
mem256[ input_0 + 0 ] = ss
ss = mem256[ input_0 + 32 ]
ee = mem256[ input_2 + 32 ]
ss ^= ee
mem256[ input_0 + 32 ] = ss
ss = mem256[ input_0 + 64 ]
ee = mem256[ input_2 + 64 ]
ss ^= ee
mem256[ input_0 + 64 ] = ss
return
