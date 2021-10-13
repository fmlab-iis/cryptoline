reg256 a0
reg256 a1
reg256 a2
reg256 a3
reg256 a4
reg256 a5
reg256 a6
reg256 a7
reg256 a8
reg256 a9
reg256 a10
reg256 a11
reg256 b0
reg256 b1
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
enter vec256_mul_asm
b0 = mem256[ input_2 + 0 ]
a11 = mem256[ input_1 + 352 ]
r11 = a11 & b0
r12 = a11 & mem256[input_2 + 32]
r13 = a11 & mem256[input_2 + 64]
r14 = a11 & mem256[input_2 + 96]
r15 = a11 & mem256[input_2 + 128]
r16 = a11 & mem256[input_2 + 160]
r17 = a11 & mem256[input_2 + 192]
r18 = a11 & mem256[input_2 + 224]
r19 = a11 & mem256[input_2 + 256]
r20 = a11 & mem256[input_2 + 288]
r21 = a11 & mem256[input_2 + 320]
r22 = a11 & mem256[input_2 + 352]
r13 ^= r22
r10 = r22
a10 = mem256[ input_1 + 320 ]
r = a10 & b0
r10 ^= r
r = a10 & mem256[input_2 + 32]
r11 ^= r
r = a10 & mem256[input_2 + 64]
r12 ^= r
r = a10 & mem256[input_2 + 96]
r13 ^= r
r = a10 & mem256[input_2 + 128]
r14 ^= r
r = a10 & mem256[input_2 + 160]
r15 ^= r
r = a10 & mem256[input_2 + 192]
r16 ^= r
r = a10 & mem256[input_2 + 224]
r17 ^= r
r = a10 & mem256[input_2 + 256]
r18 ^= r
r = a10 & mem256[input_2 + 288]
r19 ^= r
r = a10 & mem256[input_2 + 320]
r20 ^= r
r = a10 & mem256[input_2 + 352]
r21 ^= r
r12 ^= r21
r9 = r21
a9 = mem256[ input_1 + 288 ]
r = a9 & b0
r9 ^= r
r = a9 & mem256[input_2 + 32]
r10 ^= r
r = a9 & mem256[input_2 + 64]
r11 ^= r
r = a9 & mem256[input_2 + 96]
r12 ^= r
r = a9 & mem256[input_2 + 128]
r13 ^= r
r = a9 & mem256[input_2 + 160]
r14 ^= r
r = a9 & mem256[input_2 + 192]
r15 ^= r
r = a9 & mem256[input_2 + 224]
r16 ^= r
r = a9 & mem256[input_2 + 256]
r17 ^= r
r = a9 & mem256[input_2 + 288]
r18 ^= r
r = a9 & mem256[input_2 + 320]
r19 ^= r
r = a9 & mem256[input_2 + 352]
r20 ^= r
r11 ^= r20
r8 = r20
a8 = mem256[ input_1 + 256 ]
r = a8 & b0
r8 ^= r
r = a8 & mem256[input_2 + 32]
r9 ^= r
r = a8 & mem256[input_2 + 64]
r10 ^= r
r = a8 & mem256[input_2 + 96]
r11 ^= r
r = a8 & mem256[input_2 + 128]
r12 ^= r
r = a8 & mem256[input_2 + 160]
r13 ^= r
r = a8 & mem256[input_2 + 192]
r14 ^= r
r = a8 & mem256[input_2 + 224]
r15 ^= r
r = a8 & mem256[input_2 + 256]
r16 ^= r
r = a8 & mem256[input_2 + 288]
r17 ^= r
r = a8 & mem256[input_2 + 320]
r18 ^= r
r = a8 & mem256[input_2 + 352]
r19 ^= r
r10 ^= r19
r7 = r19
a7 = mem256[ input_1 + 224 ]
r = a7 & b0
r7 ^= r
r = a7 & mem256[input_2 + 32]
r8 ^= r
r = a7 & mem256[input_2 + 64]
r9 ^= r
r = a7 & mem256[input_2 + 96]
r10 ^= r
r = a7 & mem256[input_2 + 128]
r11 ^= r
r = a7 & mem256[input_2 + 160]
r12 ^= r
r = a7 & mem256[input_2 + 192]
r13 ^= r
r = a7 & mem256[input_2 + 224]
r14 ^= r
r = a7 & mem256[input_2 + 256]
r15 ^= r
r = a7 & mem256[input_2 + 288]
r16 ^= r
r = a7 & mem256[input_2 + 320]
r17 ^= r
r = a7 & mem256[input_2 + 352]
r18 ^= r
r9 ^= r18
r6 = r18
a6 = mem256[ input_1 + 192 ]
r = a6 & b0
r6 ^= r
r = a6 & mem256[input_2 + 32]
r7 ^= r
r = a6 & mem256[input_2 + 64]
r8 ^= r
r = a6 & mem256[input_2 + 96]
r9 ^= r
r = a6 & mem256[input_2 + 128]
r10 ^= r
r = a6 & mem256[input_2 + 160]
r11 ^= r
r = a6 & mem256[input_2 + 192]
r12 ^= r
r = a6 & mem256[input_2 + 224]
r13 ^= r
r = a6 & mem256[input_2 + 256]
r14 ^= r
r = a6 & mem256[input_2 + 288]
r15 ^= r
r = a6 & mem256[input_2 + 320]
r16 ^= r
r = a6 & mem256[input_2 + 352]
r17 ^= r
r8 ^= r17
r5 = r17
a5 = mem256[ input_1 + 160 ]
r = a5 & b0
r5 ^= r
r = a5 & mem256[input_2 + 32]
r6 ^= r
r = a5 & mem256[input_2 + 64]
r7 ^= r
r = a5 & mem256[input_2 + 96]
r8 ^= r
r = a5 & mem256[input_2 + 128]
r9 ^= r
r = a5 & mem256[input_2 + 160]
r10 ^= r
r = a5 & mem256[input_2 + 192]
r11 ^= r
r = a5 & mem256[input_2 + 224]
r12 ^= r
r = a5 & mem256[input_2 + 256]
r13 ^= r
r = a5 & mem256[input_2 + 288]
r14 ^= r
r = a5 & mem256[input_2 + 320]
r15 ^= r
r = a5 & mem256[input_2 + 352]
r16 ^= r
r7 ^= r16
r4 = r16
a4 = mem256[ input_1 + 128 ]
r = a4 & b0
r4 ^= r
r = a4 & mem256[input_2 + 32]
r5 ^= r
r = a4 & mem256[input_2 + 64]
r6 ^= r
r = a4 & mem256[input_2 + 96]
r7 ^= r
r = a4 & mem256[input_2 + 128]
r8 ^= r
r = a4 & mem256[input_2 + 160]
r9 ^= r
r = a4 & mem256[input_2 + 192]
r10 ^= r
r = a4 & mem256[input_2 + 224]
r11 ^= r
r = a4 & mem256[input_2 + 256]
r12 ^= r
r = a4 & mem256[input_2 + 288]
r13 ^= r
r = a4 & mem256[input_2 + 320]
r14 ^= r
r = a4 & mem256[input_2 + 352]
r15 ^= r
r6 ^= r15
r3 = r15
a3 = mem256[ input_1 + 96 ]
r = a3 & b0
r3 ^= r
r = a3 & mem256[input_2 + 32]
r4 ^= r
r = a3 & mem256[input_2 + 64]
r5 ^= r
r = a3 & mem256[input_2 + 96]
r6 ^= r
r = a3 & mem256[input_2 + 128]
r7 ^= r
r = a3 & mem256[input_2 + 160]
r8 ^= r
r = a3 & mem256[input_2 + 192]
r9 ^= r
r = a3 & mem256[input_2 + 224]
r10 ^= r
r = a3 & mem256[input_2 + 256]
r11 ^= r
r = a3 & mem256[input_2 + 288]
r12 ^= r
r = a3 & mem256[input_2 + 320]
r13 ^= r
r = a3 & mem256[input_2 + 352]
r14 ^= r
r5 ^= r14
r2 = r14
a2 = mem256[ input_1 + 64 ]
r = a2 & b0
r2 ^= r
r = a2 & mem256[input_2 + 32]
r3 ^= r
r = a2 & mem256[input_2 + 64]
r4 ^= r
r = a2 & mem256[input_2 + 96]
r5 ^= r
r = a2 & mem256[input_2 + 128]
r6 ^= r
r = a2 & mem256[input_2 + 160]
r7 ^= r
r = a2 & mem256[input_2 + 192]
r8 ^= r
r = a2 & mem256[input_2 + 224]
r9 ^= r
r = a2 & mem256[input_2 + 256]
r10 ^= r
r = a2 & mem256[input_2 + 288]
r11 ^= r
r = a2 & mem256[input_2 + 320]
r12 ^= r
r = a2 & mem256[input_2 + 352]
r13 ^= r
r4 ^= r13
r1 = r13
a1 = mem256[ input_1 + 32 ]
r = a1 & b0
r1 ^= r
r = a1 & mem256[input_2 + 32]
r2 ^= r
r = a1 & mem256[input_2 + 64]
r3 ^= r
r = a1 & mem256[input_2 + 96]
r4 ^= r
r = a1 & mem256[input_2 + 128]
r5 ^= r
r = a1 & mem256[input_2 + 160]
r6 ^= r
r = a1 & mem256[input_2 + 192]
r7 ^= r
r = a1 & mem256[input_2 + 224]
r8 ^= r
r = a1 & mem256[input_2 + 256]
r9 ^= r
r = a1 & mem256[input_2 + 288]
r10 ^= r
r = a1 & mem256[input_2 + 320]
r11 ^= r
r = a1 & mem256[input_2 + 352]
r12 ^= r
r3 ^= r12
r0 = r12
a0 = mem256[ input_1 + 0 ]
r = a0 & b0
r0 ^= r
r = a0 & mem256[input_2 + 32]
r1 ^= r
r = a0 & mem256[input_2 + 64]
r2 ^= r
r = a0 & mem256[input_2 + 96]
r3 ^= r
r = a0 & mem256[input_2 + 128]
r4 ^= r
r = a0 & mem256[input_2 + 160]
r5 ^= r
r = a0 & mem256[input_2 + 192]
r6 ^= r
r = a0 & mem256[input_2 + 224]
r7 ^= r
r = a0 & mem256[input_2 + 256]
r8 ^= r
r = a0 & mem256[input_2 + 288]
r9 ^= r
r = a0 & mem256[input_2 + 320]
r10 ^= r
r = a0 & mem256[input_2 + 352]
r11 ^= r
mem256[ input_0 + 352 ] = r11
mem256[ input_0 + 320 ] = r10
mem256[ input_0 + 288 ] = r9
mem256[ input_0 + 256 ] = r8
mem256[ input_0 + 224 ] = r7
mem256[ input_0 + 192 ] = r6
mem256[ input_0 + 160 ] = r5
mem256[ input_0 + 128 ] = r4
mem256[ input_0 + 96 ] = r3
mem256[ input_0 + 64 ] = r2
mem256[ input_0 + 32 ] = r1
mem256[ input_0 + 0 ] = r0
return
