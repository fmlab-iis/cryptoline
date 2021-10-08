reg256 s0
reg256 s1
reg256 s2
reg256 s3
reg256 s4
reg256 s5
reg256 t0
reg256 t1
reg256 t2
reg256 b0
reg256 b1
reg256 b2
reg256 b3
reg256 b4
reg256 b5
reg256 a0
reg256 a1
reg256 a2
reg256 a3
reg256 a4
reg256 a5
reg256 r0
reg256 r1
reg256 r2
reg256 r3
reg256 r4
reg256 r5
reg256 r6
reg256 r7
reg256 r8
reg256 r9
reg256 r10
reg256 r11
reg256 r12
reg256 r13
reg256 r14
reg256 r15
reg256 r16
reg256 r17
reg256 r18
reg256 r19
reg256 r20
reg256 r21
reg256 r22
reg256 r
int64 h0
int64 h1
int64 h2
int64 h3
int64 h4
int64 h5
int64 h6
int64 h7
int64 h8
int64 h9
int64 h10
int64 h11
int64 h12
int64 h13
int64 h14
int64 h15
int64 h16
int64 h17
int64 h18
int64 h19
int64 h20
int64 h21
int64 h22
stack4864 buf
int64 ptr
int64 tmp
stack64 r11_stack
stack64 r12_stack
stack64 r13_stack
stack64 r14_stack
stack64 r15_stack
stack64 rbx_stack
stack64 rbp_stack

enter vec_mul_asm

r11_stack = caller_r11
r12_stack = caller_r12
r13_stack = caller_r13
r14_stack = caller_r14
r15_stack = caller_r15
rbx_stack = caller_rbx
ptr = &buf
s0 = mem256[ input_1 +  0 ]
s1 = mem256[ input_1 + 32 ]
s2 = mem256[ input_1 + 64 ]
t0 = mem256[ input_2 +  0 ]
t1 = mem256[ input_2 + 32 ]
t2 = mem256[ input_2 + 64 ]
a5[0,1,2,3] = s2[2,2,3,3]
b5[0,1,2,3] = t2[2,3,2,3]
r10 = a5 & b5
mem256[ ptr + 320 ] = r10
b4[0,1,2,3] = t2[0,1,0,1]
r9 = a5 & b4
b3[0,1,2,3] = t1[2,3,2,3]
r8 = a5 & b3
b2[0,1,2,3] = t1[0,1,0,1]
r7 = a5 & b2
b1[0,1,2,3] = t0[2,3,2,3]
r6 = a5 & b1
b0[0,1,2,3] = t0[0,1,0,1]
r5 = a5 & b0
a4[0,1,2,3] = s2[0,0,1,1]
r = a4 & b5
r9 ^= r
mem256[ ptr + 288 ] = r9
r = a4 & b4
r8 ^= r
r = a4 & b3
r7 ^= r
r = a4 & b2
r6 ^= r
r = a4 & b1
r5 ^= r
r4 = a4 & b0
a3[0,1,2,3] = s1[2,2,3,3]
r = a3 & b5
r8 ^= r
mem256[ ptr + 256 ] = r8
r = a3 & b4
r7 ^= r
r = a3 & b3
r6 ^= r
r = a3 & b2
r5 ^= r
r = a3 & b1
r4 ^= r
r3 = a3 & b0
a2[0,1,2,3] = s1[0,0,1,1]
r = a2 & b5
r7 ^= r
mem256[ ptr + 224 ] = r7
r = a2 & b4
r6 ^= r
r = a2 & b3
r5 ^= r
r = a2 & b2
r4 ^= r
r = a2 & b1
r3 ^= r
r2 = a2 & b0
a1[0,1,2,3] = s0[2,2,3,3]
r = a1 & b5
r6 ^= r
mem256[ ptr + 192 ] = r6
r = a1 & b4
r5 ^= r
r = a1 & b3
r4 ^= r
r = a1 & b2
r3 ^= r
r = a1 & b1
r2 ^= r
r1 = a1 & b0
a0[0,1,2,3] = s0[0,0,1,1]
r = a0 & b5
r5 ^= r
mem256[ ptr + 160 ] = r5
r = a0 & b4
r4 ^= r
r = a0 & b3
r3 ^= r
r = a0 & b2
r2 ^= r
r = a0 & b1
r1 ^= r
r0 = a0 & b0
mem256[ ptr + 128 ] = r4
mem256[ ptr + 96 ] = r3
mem256[ ptr + 64 ] = r2
mem256[ ptr + 32 ] = r1
mem256[ ptr + 0 ] = r0
h22 = mem64[ ptr + 344 ]
h13 = h22
h10 = h22
h21 = mem64[ ptr + 336 ]
h21 ^= *(uint64 *) ( ptr + 328 )
h12 = h21
h9 = h21
h20 = mem64[ ptr + 312 ]
h20 ^= *(uint64 *) ( ptr + 320 )
h11 = h20
h8 = h20
h19 = mem64[ ptr + 304 ]
h19 ^= *(uint64 *) ( ptr + 296 )
h10 ^= h19
h7 = h19
h18 = mem64[ ptr + 280 ]
h18 ^= *(uint64 *) ( ptr + 288 )
h9 ^= h18
h6 = h18
h17 = mem64[ ptr + 272 ]
h17 ^= *(uint64 *) ( ptr + 264 )
h8 ^= h17
h5 = h17
h16 = mem64[ ptr + 248 ]
h16 ^= *(uint64 *) ( ptr + 256 )
h7 ^= h16
h4 = h16
h15 = mem64[ ptr + 240 ]
h15 ^= *(uint64 *) ( ptr + 232 )
h6 ^= h15
h3 = h15
h14 = mem64[ ptr + 216 ]
h14 ^= *(uint64 *) ( ptr + 224 )
h5 ^= h14
h2 = h14
h13 ^= *(uint64 *) ( ptr + 208 )
h13 ^= *(uint64 *) ( ptr + 200 )
h4 ^= h13
h1 = h13
h12 ^= *(uint64 *) ( ptr + 184 )
h12 ^= *(uint64 *) ( ptr + 192 )
h3 ^= h12
h0 = h12
h11 ^= *(uint64 *) ( ptr + 176 )
h11 ^= *(uint64 *) ( ptr + 168 )
mem64[ input_0 + 88 ] = h11
h10 ^= *(uint64 *) ( ptr + 152 )
h10 ^= *(uint64 *) ( ptr + 160 )
mem64[ input_0 + 80 ] = h10
h9 ^= *(uint64 *) ( ptr + 144 )
h9 ^= *(uint64 *) ( ptr + 136 )
mem64[ input_0 + 72 ] = h9
h8 ^= *(uint64 *) ( ptr + 120 )
h8 ^= *(uint64 *) ( ptr + 128 )
mem64[ input_0 + 64 ] = h8
h7 ^= *(uint64 *) ( ptr + 112 )
h7 ^= *(uint64 *) ( ptr + 104 )
mem64[ input_0 + 56 ] = h7
h6 ^= *(uint64 *) ( ptr + 88 )
h6 ^= *(uint64 *) ( ptr + 96 )
mem64[ input_0 + 48 ] = h6
h5 ^= *(uint64 *) ( ptr + 80 )
h5 ^= *(uint64 *) ( ptr + 72 )
mem64[ input_0 + 40 ] = h5
h4 ^= *(uint64 *) ( ptr + 56 )
h4 ^= *(uint64 *) ( ptr + 64 )
mem64[ input_0 + 32 ] = h4
h3 ^= *(uint64 *) ( ptr + 48 )
h3 ^= *(uint64 *) ( ptr + 40 )
mem64[ input_0 + 24 ] = h3
h2 ^= *(uint64 *) ( ptr + 24 )
h2 ^= *(uint64 *) ( ptr + 32 )
mem64[ input_0 + 16 ] = h2
h1 ^= *(uint64 *) ( ptr + 16 )
h1 ^= *(uint64 *) ( ptr + 8 )
mem64[ input_0 + 8 ] = h1
h0 ^= *(uint64 *) ( ptr + 0 )
mem64[ input_0 + 0 ] = h0
caller_r11 = r11_stack
caller_r12 = r12_stack
caller_r13 = r13_stack
caller_r14 = r14_stack
caller_r15 = r15_stack
caller_rbx = rbx_stack
return
