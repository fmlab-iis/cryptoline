reg256 b0
reg256 b1
reg256 b2
reg256 b3
reg256 b4
reg256 b5
reg256 b6
reg256 b7
reg256 b8
reg256 b9
reg256 b10
reg256 b11
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
reg128 h0
reg128 h1
reg128 h2
reg128 h3
reg128 h4
reg128 h5
reg128 h6
reg128 h7
reg128 h8
reg128 h9
reg128 h10
reg128 h11
reg128 h12
reg128 h13
reg128 h14
reg128 h15
reg128 h16
reg128 h17
reg128 h18
reg128 h19
reg128 h20
reg128 h21
reg128 h22
stack4864 buf
int64 ptr
int64 tmp
enter vec128_mul_asm
ptr = &buf
b11 = mem128[ input_2 + 176 ] x2
a5[0] = mem128[ input_1 + 80 ]
a5[1] = mem128[ input_1 + 176 ]
r16 = b11 & a5
mem256[ ptr + 512 ] = r16
a4[0] = mem128[ input_1 + 64 ]
a4[1] = mem128[ input_1 + 160 ]
r15 = b11 & a4
a3[0] = mem128[ input_1 + 48 ]
a3[1] = mem128[ input_1 + 144 ]
r14 = b11 & a3
a2[0] = mem128[ input_1 + 32 ]
a2[1] = mem128[ input_1 + 128 ]
r13 = b11 & a2
a1[0] = mem128[ input_1 + 16 ]
a1[1] = mem128[ input_1 + 112 ]
r12 = b11 & a1
a0[0] = mem128[ input_1 + 0 ]
a0[1] = mem128[ input_1 + 96 ]
r11 = b11 & a0
b10 = mem128[ input_2 + 160 ] x2
r = b10 & a5
r15 ^= r
mem256[ ptr + 480 ] = r15
r = b10 & a4
r14 ^= r
r = b10 & a3
r13 ^= r
r = b10 & a2
r12 ^= r
r = b10 & a1
r11 ^= r
r10 = b10 & a0
b9 = mem128[ input_2 + 144 ] x2
r = b9 & a5
r14 ^= r
mem256[ ptr + 448 ] = r14
r = b9 & a4
r13 ^= r
r = b9 & a3
r12 ^= r
r = b9 & a2
r11 ^= r
r = b9 & a1
r10 ^= r
r9 = b9 & a0
b8 = mem128[ input_2 + 128 ] x2
r = b8 & a5
r13 ^= r
mem256[ ptr + 416 ] = r13
r = b8 & a4
r12 ^= r
r = b8 & a3
r11 ^= r
r = b8 & a2
r10 ^= r
r = b8 & a1
r9 ^= r
r8 = b8 & a0
b7 = mem128[ input_2 + 112 ] x2
r = b7 & a5
r12 ^= r
mem256[ ptr + 384 ] = r12
r = b7 & a4
r11 ^= r
r = b7 & a3
r10 ^= r
r = b7 & a2
r9 ^= r
r = b7 & a1
r8 ^= r
r7 = b7 & a0
b6 = mem128[ input_2 + 96 ] x2
r = b6 & a5
r11 ^= r
mem256[ ptr + 352 ] = r11
r = b6 & a4
r10 ^= r
r = b6 & a3
r9 ^= r
r = b6 & a2
r8 ^= r
r = b6 & a1
r7 ^= r
r6 = b6 & a0
b5 = mem128[ input_2 + 80 ] x2
r = b5 & a5
r10 ^= r
mem256[ ptr + 320 ] = r10
r = b5 & a4
r9 ^= r
r = b5 & a3
r8 ^= r
r = b5 & a2
r7 ^= r
r = b5 & a1
r6 ^= r
r5 = b5 & a0
b4 = mem128[ input_2 + 64 ] x2
r = b4 & a5
r9 ^= r
mem256[ ptr + 288 ] = r9
r = b4 & a4
r8 ^= r
r = b4 & a3
r7 ^= r
r = b4 & a2
r6 ^= r
r = b4 & a1
r5 ^= r
r4 = b4 & a0
b3 = mem128[ input_2 + 48 ] x2
r = b3 & a5
r8 ^= r
mem256[ ptr + 256 ] = r8
r = b3 & a4
r7 ^= r
r = b3 & a3
r6 ^= r
r = b3 & a2
r5 ^= r
r = b3 & a1
r4 ^= r
r3 = b3 & a0
b2 = mem128[ input_2 + 32 ] x2
r = b2 & a5
r7 ^= r
mem256[ ptr + 224 ] = r7
r = b2 & a4
r6 ^= r
r = b2 & a3
r5 ^= r
r = b2 & a2
r4 ^= r
r = b2 & a1
r3 ^= r
r2 = b2 & a0
b1 = mem128[ input_2 + 16 ] x2
r = b1 & a5
r6 ^= r
mem256[ ptr + 192 ] = r6
r = b1 & a4
r5 ^= r
r = b1 & a3
r4 ^= r
r = b1 & a2
r3 ^= r
r = b1 & a1
r2 ^= r
r1 = b1 & a0
b0 = mem128[ input_2 + 0 ] x2
r = b0 & a5
r5 ^= r
mem256[ ptr + 160 ] = r5
r = b0 & a4
r4 ^= r
r = b0 & a3
r3 ^= r
r = b0 & a2
r2 ^= r
r = b0 & a1
r1 ^= r
r0 = b0 & a0
mem256[ ptr + 128 ] = r4
mem256[ ptr + 96 ] = r3
mem256[ ptr + 64 ] = r2
mem256[ ptr + 32 ] = r1
mem256[ ptr + 0 ] = r0
vzeroupper
h22 = mem128[ ptr + 528 ]
h13 = h22
h10 = h22
h21 = mem128[ ptr + 496 ]
h12 = h21
h9 = h21
h20 = mem128[ ptr + 464 ]
h11 = h20
h8 = h20
h19 = mem128[ ptr + 432 ]
h10 = h10 ^ h19
h7 = h19
h18 = mem128[ ptr + 400 ]
h9 = h9 ^ h18
h6 = h18
h17 = mem128[ ptr + 368 ]
h8 = h8 ^ h17
h5 = h17
h16 = mem128[ ptr + 336 ]
h16 = h16 ^ mem128[ ptr + 512 ]
h7 = h7 ^ h16
h4 = h16
h15 = mem128[ ptr + 304 ]
h15 = h15 ^ mem128[ ptr + 480 ]
h6 = h6 ^ h15
h3 = h15
h14 = mem128[ ptr + 272 ]
h14 = h14 ^ mem128[ ptr + 448 ]
h5 = h5 ^ h14
h2 = h14
h13 = h13 ^ mem128[ ptr + 240 ]
h13 = h13 ^ mem128[ ptr + 416 ]
h4 = h4 ^ h13
h1 = h13
h12 = h12 ^ mem128[ ptr + 208 ]
h12 = h12 ^ mem128[ ptr + 384 ]
h3 = h3 ^ h12
h0 = h12
h11 = h11 ^ mem128[ ptr + 352 ]
h11 = h11 ^ mem128[ ptr + 176 ]
mem128[ input_0 + 176 ] = h11
h10 = h10 ^ mem128[ ptr + 320 ]
h10 = h10 ^ mem128[ ptr + 144 ]
mem128[ input_0 + 160 ] = h10
h9 = h9 ^ mem128[ ptr + 288 ]
h9 = h9 ^ mem128[ ptr + 112 ]
mem128[ input_0 + 144 ] = h9
h8 = h8 ^ mem128[ ptr + 256 ]
h8 = h8 ^ mem128[ ptr + 80 ]
mem128[ input_0 + 128 ] = h8
h7 = h7 ^ mem128[ ptr + 224 ]
h7 = h7 ^ mem128[ ptr + 48 ]
mem128[ input_0 + 112 ] = h7
h6 = h6 ^ mem128[ ptr + 192 ]
h6 = h6 ^ mem128[ ptr + 16 ]
mem128[ input_0 + 96 ] = h6
h5 = h5 ^ mem128[ ptr + 160 ]
mem128[ input_0 + 80 ] = h5
h4 = h4 ^ mem128[ ptr + 128 ]
mem128[ input_0 + 64 ] = h4
h3 = h3 ^ mem128[ ptr + 96 ]
mem128[ input_0 + 48 ] = h3
h2 = h2 ^ mem128[ ptr + 64 ]
mem128[ input_0 + 32 ] = h2
h1 = h1 ^ mem128[ ptr + 32 ]
mem128[ input_0 + 16 ] = h1
h0 = h0 ^ mem128[ ptr + 0 ]
mem128[ input_0 + 0 ] = h0
return
