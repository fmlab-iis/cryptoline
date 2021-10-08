int64 t
int64 c
int64 r

enter vec_reduce_asm

r = 0
t = mem64[ input_0 + 88 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 80 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 72 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 64 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 56 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 48 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 40 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 32 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 24 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 16 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 8 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
t = mem64[ input_0 + 0 ]
c = count(t)
(uint32) c &= 1
r <<= 1
r |= c
return r
