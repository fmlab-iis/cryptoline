(* quine:$ cv -v -isafety ecp_nistz256_sub.cl
Parsing CryptoLine file:    [OK]    0.001805 seconds
Checking well-formedness:   [OK]    0.000396 seconds
Transforming to SSA form:   [OK]    0.000177 seconds
Normalizing specification:    [OK]    0.000179 seconds
Rewriting assignments:      [OK]    0.000191 seconds
Verifying program safety:   
   Cut 0
       Round 1 (0 safety conditions, timeout = 300 seconds)
   Overall      [OK]    0.000238 seconds
Verifying range assertions:   [OK]    0.112111 seconds
Verifying range specification:    [OK]    0.150113 seconds
Rewriting value-preserved casting:  [OK]    0.000043 seconds
Verifying algebraic assertions:   [OK]    0.004733 seconds
Verifying algebraic specification:  [OK]    0.098303 seconds
Verification result:      [OK]    0.368986 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001
      ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3],
        limbs 64 [b0, b1, b2, b3] <u limbs 64 [m0, m1, m2, m3]
      ]
}

mov L0x7fffffffdbe0 a0;
mov L0x7fffffffdbe8 a1;
mov L0x7fffffffdbf0 a2;
mov L0x7fffffffdbf8 a3;

mov L0x7fffffffdc00 b0;
mov L0x7fffffffdc08 b1;
mov L0x7fffffffdc10 b2;
mov L0x7fffffffdc18 b3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;


(* ecp_nistz256_sub: *)
#ecp_nistz256_sub:;
(* #! -> SP = 0x7fffffffdbd8 *)
#! 0x7fffffffdbd8 = 0x7fffffffdbd8;
(* push   %r12                                     #! EA = L0x7fffffffdbd0; PC = 0x55555557c3a0 *)
#push   %%r12                                     #! L0x7fffffffdbd0 = L0x7fffffffdbd0; 0x55555557c3a0 = 0x55555557c3a0;
(* push   %r13                                     #! EA = L0x7fffffffdbc8; PC = 0x55555557c3a2 *)
#push   %%r13                                     #! L0x7fffffffdbc8 = L0x7fffffffdbc8; 0x55555557c3a2 = 0x55555557c3a2;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdbe0; Value = 0x0000000000000000; PC = 0x55555557c3a4 *)
mov r8 L0x7fffffffdbe0;
(* xor    %r13,%r13                                #! PC = 0x55555557c3a7 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdbe8; Value = 0x0000005000000019; PC = 0x55555557c3aa *)
mov r9 L0x7fffffffdbe8;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdbf0; Value = 0x0000001000000000; PC = 0x55555557c3ae *)
mov r10 L0x7fffffffdbf0;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdbf8; Value = 0x0000000000000000; PC = 0x55555557c3b2 *)
mov r11 L0x7fffffffdbf8;
(* lea    -0x3bd(%rip),%rsi        # 0x55555557c000#! PC = 0x55555557c3b6 *)
#lea    %%EA,%%rsi        # 0x55555557c000#! 0x55555557c3b6 = 0x55555557c3b6;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdc00; Value = 0x0000000000000000; PC = 0x55555557c3bd *)
subb carry r8 r8 L0x7fffffffdc00;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdc08; Value = 0x0000000000000000; PC = 0x55555557c3c0 *)
sbbs carry r9 r9 L0x7fffffffdc08 carry;
(* mov    %r8,%rax                                 #! PC = 0x55555557c3c4 *)
mov rax r8;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdc10; Value = 0x0000000000000000; PC = 0x55555557c3c7 *)
sbbs carry r10 r10 L0x7fffffffdc10 carry;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffdc18; Value = 0x0000000000000000; PC = 0x55555557c3cb *)
sbbs carry r11 r11 L0x7fffffffdc18 carry;

ghost carryo@bit:
      carryo = carry && carryo = carry;

(* mov    %r9,%rdx                                 #! PC = 0x55555557c3cf *)
mov rdx r9;
(* sbb    $0x0,%r13                                #! PC = 0x55555557c3d2 *)
sbbs carry r13 r13 0x0@uint64 carry;
(* add    (%rsi),%r8                               #! EA = L0x55555557c000; Value = 0xffffffffffffffff; PC = 0x55555557c3d6 *)
adds carry r8 r8 L0x55555557c000;
(* mov    %r10,%rcx                                #! PC = 0x55555557c3d9 *)
mov rcx r10;
(* adc    0x8(%rsi),%r9                            #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c3dc *)
adcs carry r9 r9 L0x55555557c008 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x55555557c010; Value = 0x0000000000000000; PC = 0x55555557c3e0 *)
adcs carry r10 r10 L0x55555557c010 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c3e4 *)
mov r12 r11;
(* adc    0x18(%rsi),%r11                          #! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c3e7 *)
adcs carry r11 r11 L0x55555557c018 carry;
(* test   %r13,%r13                                #! PC = 0x55555557c3eb *)
subb zero dontcare r13 1@uint64;

assert true && or [and [carryo=0@1, carry=0@1, zero=0@1],
                   and [carryo=0@1, carry=1@1, zero=1@1],
                   and [carryo=0@1, carry=0@1, zero=1@1],
                   and [carryo=1@1, carry=1@1, zero=0@1]];

assume (carryo - 1) * (carry - 0) * (zero - 1) = 0 && true;
assume (carryo - 0) * (carry - 0) * (zero - 1) = -1 && true;

(* cmove  %rax,%r8                                 #! PC = 0x55555557c3ee *)
cmov r8 zero rax r8;
(* cmove  %rdx,%r9                                 #! PC = 0x55555557c3f2 *)
cmov r9 zero rdx r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdc20; PC = 0x55555557c3f6 *)
mov L0x7fffffffdc20 r8;
(* cmove  %rcx,%r10                                #! PC = 0x55555557c3f9 *)
cmov r10 zero rcx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdc28; PC = 0x55555557c3fd *)
mov L0x7fffffffdc28 r9;
(* cmove  %r12,%r11                                #! PC = 0x55555557c401 *)
cmov r11 zero r12 r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdc30; PC = 0x55555557c405 *)
mov L0x7fffffffdc30 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdc38; PC = 0x55555557c409 *)
mov L0x7fffffffdc38 r11;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffdbc8; Value = 0x00007fffffffdd78; PC = 0x55555557c40d *)
#mov    (%rsp),%%r13                              #! L0x7fffffffdbc8 = L0x7fffffffdbc8; 0x00007fffffffdd78 = 0x00007fffffffdd78; 0x55555557c40d = 0x55555557c40d;
(* mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffdbd0; Value = 0x0000000000000000; PC = 0x55555557c411 *)
#mov r12 L0x7fffffffdbd0;
(* lea    0x10(%rsp),%rsp                          #! PC = 0x55555557c416 *)
#lea    %%EA,%rsp                          #! 0x55555557c416 = 0x55555557c416;
(* #! <- SP = 0x7fffffffdbd8 *)
#! 0x7fffffffdbd8 = 0x7fffffffdbd8;
(* #repz ret                                       #! PC = 0x55555557c41b *)
#repz ret                                       #! 0x55555557c41b = 0x55555557c41b;

mov c0 L0x7fffffffdc20;
mov c1 L0x7fffffffdc28;
mov c2 L0x7fffffffdc30;
mov c3 L0x7fffffffdc38;

{
  eqmod (limbs 64 [c0, c1, c2, c3] +
         limbs 64 [b0, b1, b2, b3])
        (limbs 64 [a0, a1, a2, a3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

