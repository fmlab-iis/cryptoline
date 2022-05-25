(* quine: -v cneg_fp2.cl
Parsing Cryptoline file:                [OK]            0.003581 seconds
Checking well-formedness:               [OK]            0.000917 seconds
Transforming to SSA form:               [OK]            0.000269 seconds
Rewriting assignments:                  [OK]            0.001432 seconds
Verifying program safety:               [OK]            0.000080 seconds
Verifying range specification:          [OK]            2.607520 seconds
Rewriting value-preserved casting:      [OK]            0.000009 seconds
Verifying algebraic specification:      [OK]            0.000158 seconds
Verification result:                    [OK]            2.614757 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 flag) =
{
  true
  &&
  and
     [
	 m0 = 0xb9feffffffffaaab@64,
	 m1 = 0x1eabfffeb153ffff@64,
	 m2 = 0x6730d2a0f6b0f624@64,
	 m3 = 0x64774b84f38512bf@64,
	 m4 = 0x4b1ba7b6434bacd7@64,
	 m5 = 0x1a0111ea397fe69a@64,
     limbs 64 [x0, x1, x2, x3, x4, x5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
     limbs 64 [y0, y1, y2, y3, y4, y5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
     ]
}

mov L0x7fffffffd9f0 flag;

mov L0x7fffffffdb50 x0;
mov L0x7fffffffdb58 x1;
mov L0x7fffffffdb60 x2;
mov L0x7fffffffdb68 x3;
mov L0x7fffffffdb70 x4;
mov L0x7fffffffdb78 x5;

mov L0x7fffffffdb80 y0;
mov L0x7fffffffdb88 y1;
mov L0x7fffffffdb90 y2;
mov L0x7fffffffdb98 y3;
mov L0x7fffffffdba0 y4;
mov L0x7fffffffdba8 y5;

(* prime *)
mov L0x55555556e4c0 m0;
mov L0x55555556e4c8 m1;
mov L0x55555556e4d0 m2;
mov L0x55555556e4d8 m3;
mov L0x55555556e4e0 m4;
mov L0x55555556e4e8 m5;



(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992309103 *)
mov rdx L0x7fffffffdb50;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992309106 *)
mov r9 L0x7fffffffdb58;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb60; Value = 0x0000000000000000; PC = 0x93824992309110 *)
mov r10 L0x7fffffffdb60;
(* mov    %rdx,%r8                                 #! PC = 0x93824992309114 *)
mov r8 rdx;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb68; Value = 0x0000004000000100; PC = 0x93824992309117 *)
mov r11 L0x7fffffffdb68;
(* or     %r9,%rdx                                 #! PC = 0x93824992309121 *)
or rdx@uint64 r9 rdx;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000004000000000; PC = 0x93824992309124 *)
mov r12 L0x7fffffffdb70;
(* or     %r10,%rdx                                #! PC = 0x93824992309128 *)
or rdx@uint64 r10 rdx;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdb78; Value = 0x0000040000000200; PC = 0x93824992309131 *)
mov r13 L0x7fffffffdb78;
(* or     %r11,%rdx                                #! PC = 0x93824992309135 *)
or rdx@uint64 r11 rdx;
(* mov    $0xffffffffffffffff,%rsi                 #! PC = 0x93824992309138 *)
mov rsi 0xffffffffffffffff@uint64;
(* or     %r12,%rdx                                #! PC = 0x93824992309145 *)
or rdx@uint64 r12 rdx;
(* or     %r13,%rdx                                #! PC = 0x93824992309148 *)
or rdx@uint64 r13 rdx;
(* mov    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992309151 *)
mov r14 L0x55555556e4c0;

subc ZF dontcare 0@uint64 rdx;

(* cmovne %rsi,%rdx                                #! PC = 0x93824992309154 *)
cmov rdx ZF rdx rsi;
(* mov    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992309158 *)
mov r15 L0x55555556e4c8;
(* mov    0x10(%rcx),%rax                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992309162 *)
mov rax L0x55555556e4d0;
(* and    %rdx,%r14                                #! PC = 0x93824992309166 *)
and r14@uint64 rdx r14;
(* mov    0x18(%rcx),%rbx                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992309169 *)
mov rbx L0x55555556e4d8;
(* and    %rdx,%r15                                #! PC = 0x93824992309173 *)
and r15@uint64 rdx r15;
(* mov    0x20(%rcx),%rbp                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992309176 *)
mov rbp L0x55555556e4e0;
(* and    %rdx,%rax                                #! PC = 0x93824992309180 *)
and rax@uint64 rdx rax;
(* mov    0x28(%rcx),%rsi                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992309183 *)
mov rsi L0x55555556e4e8;
(* and    %rdx,%rbx                                #! PC = 0x93824992309187 *)
and rbx@uint64 rdx rbx;
(* mov    (%rsp),%rcx                              #! EA = L0x7fffffffd9f0; Value = 0x0000000000000001; PC = 0x93824992309190 *)
mov rcx L0x7fffffffd9f0;
(* and    %rdx,%rbp                                #! PC = 0x93824992309194 *)
and rbp@uint64 rdx rbp;
(* and    %rdx,%rsi                                #! PC = 0x93824992309197 *)
and rsi@uint64 rdx rsi;
(* sub    %r8,%r14                                 #! PC = 0x93824992309200 *)
subb carry r14 r14 r8;
(* sbb    %r9,%r15                                 #! PC = 0x93824992309203 *)
sbbs carry r15 r15 r9 carry;
(* sbb    %r10,%rax                                #! PC = 0x93824992309206 *)
sbbs carry rax rax r10 carry;
(* sbb    %r11,%rbx                                #! PC = 0x93824992309209 *)
sbbs carry rbx rbx r11 carry;
(* sbb    %r12,%rbp                                #! PC = 0x93824992309212 *)
sbbs carry rbp rbp r12 carry;
(* sbb    %r13,%rsi                                #! PC = 0x93824992309215 *)
sbbs carry rsi rsi r13 carry;
(* or     %rcx,%rcx                                #! PC = 0x93824992309218 *)
or rcx@uint64 rcx rcx;

subc ZF dontcare 0@uint64 rcx;

(* cmove  %r8,%r14                                 #! PC = 0x93824992309221 *)
cmov r14 ZF r8 r14;
(* cmove  %r9,%r15                                 #! PC = 0x93824992309225 *)
cmov r15 ZF r9 r15;
(* cmove  %r10,%rax                                #! PC = 0x93824992309229 *)
cmov rax ZF r10 rax;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdaf0; PC = 0x93824992309233 *)
mov L0x7fffffffdaf0 r14;
(* cmove  %r11,%rbx                                #! PC = 0x93824992309236 *)
cmov rbx ZF r11 rbx;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdaf8; PC = 0x93824992309240 *)
mov L0x7fffffffdaf8 r15;
(* cmove  %r12,%rbp                                #! PC = 0x93824992309244 *)
cmov rbp ZF r12 rbp;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdb00; PC = 0x93824992309248 *)
mov L0x7fffffffdb00 rax;
(* cmove  %r13,%rsi                                #! PC = 0x93824992309252 *)
cmov rsi ZF r13 rsi;
(* mov    %rbx,0x18(%rdi)                          #! EA = L0x7fffffffdb08; PC = 0x93824992309256 *)
mov L0x7fffffffdb08 rbx;
(* mov    %rbp,0x20(%rdi)                          #! EA = L0x7fffffffdb10; PC = 0x93824992309260 *)
mov L0x7fffffffdb10 rbp;
(* mov    %rsi,0x28(%rdi)                          #! EA = L0x7fffffffdb18; PC = 0x93824992309264 *)
mov L0x7fffffffdb18 rsi;
(* #repz retq                                      #! PC = 0x93824992309303 *)
#repz retq                                      #! 0x93824992309303 = 0x93824992309303;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdb80; Value = 0x0000000000000000; PC = 0x93824992309103 *)
mov rdx L0x7fffffffdb80;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x93824992309106 *)
mov r9 L0x7fffffffdb88;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb90; Value = 0x0000000000000000; PC = 0x93824992309110 *)
mov r10 L0x7fffffffdb90;
(* mov    %rdx,%r8                                 #! PC = 0x93824992309114 *)
mov r8 rdx;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb98; Value = 0x0000000000000000; PC = 0x93824992309117 *)
mov r11 L0x7fffffffdb98;
(* or     %r9,%rdx                                 #! PC = 0x93824992309121 *)
or rdx@uint64 r9 rdx;
(* mov    0x20(%rsi),%r12                          #! EA = L0x7fffffffdba0; Value = 0x0000000000000000; PC = 0x93824992309124 *)
mov r12 L0x7fffffffdba0;
(* or     %r10,%rdx                                #! PC = 0x93824992309128 *)
or rdx@uint64 r10 rdx;
(* mov    0x28(%rsi),%r13                          #! EA = L0x7fffffffdba8; Value = 0x0000000000000000; PC = 0x93824992309131 *)
mov r13 L0x7fffffffdba8;
(* or     %r11,%rdx                                #! PC = 0x93824992309135 *)
or rdx@uint64 r11 rdx;
(* mov    $0xffffffffffffffff,%rsi                 #! PC = 0x93824992309138 *)
mov rsi 0xffffffffffffffff@uint64;
(* or     %r12,%rdx                                #! PC = 0x93824992309145 *)
or rdx@uint64 r12 rdx;
(* or     %r13,%rdx                                #! PC = 0x93824992309148 *)
or rdx@uint64 r13 rdx;
(* mov    (%rcx),%r14                              #! EA = L0x55555556e4c0; Value = 0xb9feffffffffaaab; PC = 0x93824992309151 *)
mov r14 L0x55555556e4c0;

subc ZF dontcare 0@uint64 rdx;

(* cmovne %rsi,%rdx                                #! PC = 0x93824992309154 *)
cmov rdx ZF rdx rsi;
(* mov    0x8(%rcx),%r15                           #! EA = L0x55555556e4c8; Value = 0x1eabfffeb153ffff; PC = 0x93824992309158 *)
mov r15 L0x55555556e4c8;
(* mov    0x10(%rcx),%rax                          #! EA = L0x55555556e4d0; Value = 0x6730d2a0f6b0f624; PC = 0x93824992309162 *)
mov rax L0x55555556e4d0;
(* and    %rdx,%r14                                #! PC = 0x93824992309166 *)
and r14@uint64 rdx r14;
(* mov    0x18(%rcx),%rbx                          #! EA = L0x55555556e4d8; Value = 0x64774b84f38512bf; PC = 0x93824992309169 *)
mov rbx L0x55555556e4d8;
(* and    %rdx,%r15                                #! PC = 0x93824992309173 *)
and r15@uint64 rdx r15;
(* mov    0x20(%rcx),%rbp                          #! EA = L0x55555556e4e0; Value = 0x4b1ba7b6434bacd7; PC = 0x93824992309176 *)
mov rbp L0x55555556e4e0;
(* and    %rdx,%rax                                #! PC = 0x93824992309180 *)
and rax@uint64 rdx rax;
(* mov    0x28(%rcx),%rsi                          #! EA = L0x55555556e4e8; Value = 0x1a0111ea397fe69a; PC = 0x93824992309183 *)
mov rsi L0x55555556e4e8;
(* and    %rdx,%rbx                                #! PC = 0x93824992309187 *)
and rbx@uint64 rdx rbx;
(* mov    (%rsp),%rcx                              #! EA = L0x7fffffffd9f0; Value = 0x0000000000000001; PC = 0x93824992309190 *)
mov rcx L0x7fffffffd9f0;
(* and    %rdx,%rbp                                #! PC = 0x93824992309194 *)
and rbp@uint64 rdx rbp;
(* and    %rdx,%rsi                                #! PC = 0x93824992309197 *)
and rsi@uint64 rdx rsi;
(* sub    %r8,%r14                                 #! PC = 0x93824992309200 *)
subb carry r14 r14 r8;
(* sbb    %r9,%r15                                 #! PC = 0x93824992309203 *)
sbbs carry r15 r15 r9 carry;
(* sbb    %r10,%rax                                #! PC = 0x93824992309206 *)
sbbs carry rax rax r10 carry;
(* sbb    %r11,%rbx                                #! PC = 0x93824992309209 *)
sbbs carry rbx rbx r11 carry;
(* sbb    %r12,%rbp                                #! PC = 0x93824992309212 *)
sbbs carry rbp rbp r12 carry;
(* sbb    %r13,%rsi                                #! PC = 0x93824992309215 *)
sbbs carry rsi rsi r13 carry;
(* or     %rcx,%rcx                                #! PC = 0x93824992309218 *)
or rcx@uint64 rcx rcx;

subc ZF dontcare 0@uint64 rcx;

(* cmove  %r8,%r14                                 #! PC = 0x93824992309221 *)
cmov r14 ZF r8 r14;
(* cmove  %r9,%r15                                 #! PC = 0x93824992309225 *)
cmov r15 ZF r9 r15;
(* cmove  %r10,%rax                                #! PC = 0x93824992309229 *)
cmov rax ZF r10 rax;
(* mov    %r14,(%rdi)                              #! EA = L0x7fffffffdb20; PC = 0x93824992309233 *)
mov L0x7fffffffdb20 r14;
(* cmove  %r11,%rbx                                #! PC = 0x93824992309236 *)
cmov rbx ZF r11 rbx;
(* mov    %r15,0x8(%rdi)                           #! EA = L0x7fffffffdb28; PC = 0x93824992309240 *)
mov L0x7fffffffdb28 r15;
(* cmove  %r12,%rbp                                #! PC = 0x93824992309244 *)
cmov rbp ZF r12 rbp;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdb30; PC = 0x93824992309248 *)
mov L0x7fffffffdb30 rax;
(* cmove  %r13,%rsi                                #! PC = 0x93824992309252 *)
cmov rsi ZF r13 rsi;
(* mov    %rbx,0x18(%rdi)                          #! EA = L0x7fffffffdb38; PC = 0x93824992309256 *)
mov L0x7fffffffdb38 rbx;
(* mov    %rbp,0x20(%rdi)                          #! EA = L0x7fffffffdb40; PC = 0x93824992309260 *)
mov L0x7fffffffdb40 rbp;
(* mov    %rsi,0x28(%rdi)                          #! EA = L0x7fffffffdb48; PC = 0x93824992309264 *)
mov L0x7fffffffdb48 rsi;
(* #retq                                           #! PC = 0x93824992242833 *)
#retq                                           #! 0x93824992242833 = 0x93824992242833;

mov c0 L0x7fffffffdaf0;
mov c1 L0x7fffffffdaf8;
mov c2 L0x7fffffffdb00;
mov c3 L0x7fffffffdb08;
mov c4 L0x7fffffffdb10;
mov c5 L0x7fffffffdb18;

mov d0 L0x7fffffffdb20;
mov d1 L0x7fffffffdb28;
mov d2 L0x7fffffffdb30;
mov d3 L0x7fffffffdb38;
mov d4 L0x7fffffffdb40;
mov d5 L0x7fffffffdb48;

{
 true
  &&
 or[
    and[
   	flag >u (0@64),

	eqmod
    ((limbs 64 [c0, c1, c2, c3, c4, c5])
     +
     (limbs 64 [x0, x1, x2, x3, x4, x5]))
  	0@384
  	(limbs 64 [m0, m1, m2, m3, m4, m5]),

	eqmod
   	((limbs 64 [d0, d1, d2, d3, d4, d5])
     +
   	 (limbs 64 [y0, y1, y2, y3, y4, y5]))
  	0@384
  	(limbs 64 [m0, m1, m2, m3, m4, m5]),

    limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
	]
   ,
    and[
   	flag = (0@64),

	eq 
	(limbs 64 [c0, c1, c2, c3, c4, c5])
	(limbs 64 [x0, x1, x2, x3, x4, x5]),

	eq 
	(limbs 64 [d0, d1, d2, d3, d4, d5])
	(limbs 64 [y0, y1, y2, y3, y4, y5]),
    
    limbs 64 [c0, c1, c2, c3, c4, c5] <u limbs 64 [m0, m1, m2, m3, m4, m5],
    limbs 64 [d0, d1, d2, d3, d4, d5] <u limbs 64 [m0, m1, m2, m3, m4, m5]
	]
   ]
}
