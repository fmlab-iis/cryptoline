proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        limbs 64 [a0, a1, a2, a3] <u limbs 64 [m0, m1, m2, m3],
        limbs 64 [b0, b1, b2, b3] <u limbs 64 [m0, m1, m2, m3]
  ]
}

mov L0x7fffffffd9c0 a0;
mov L0x7fffffffd9c8 a1;
mov L0x7fffffffd9d0 a2;
mov L0x7fffffffd9d8 a3;
mov L0x7fffffffd9e0 b0;
mov L0x7fffffffd9e8 b1;
mov L0x7fffffffd9f0 b2;
mov L0x7fffffffd9f8 b3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

(* #! -> SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* #push   %r12                                     #! EA = L0x7fffffffd9b0; PC = 0x55555557c320 *)
#push   %%r12                                     #! L0x7fffffffd9b0 = L0x7fffffffd9b0; 0x55555557c320 = 0x55555557c320;
(* #push   %r13                                     #! EA = L0x7fffffffd9a8; PC = 0x55555557c322 *)
#push   %%r13                                     #! L0x7fffffffd9a8 = L0x7fffffffd9a8; 0x55555557c322 = 0x55555557c322;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd9c0; Value = 0x0000000000000008; PC = 0x55555557c324 *)
mov r8 L0x7fffffffd9c0;
(* xor    %r13,%r13                                #! PC = 0x55555557c327 *)
mov r13 0@uint64;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd9c8; Value = 0x0000000000000001; PC = 0x55555557c32a *)
mov r9 L0x7fffffffd9c8;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd9d0; Value = 0x00007fffffffdb28; PC = 0x55555557c32e *)
mov r10 L0x7fffffffd9d0;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd9d8; Value = 0x00007fffffffdb38; PC = 0x55555557c332 *)
mov r11 L0x7fffffffd9d8;
(* #lea    -0x33d(%rip),%rsi        # 0x55555557c000#! PC = 0x55555557c336 *)
#lea    -0x33d(%rip),%rsi        # 0x55555557c000#! 0x55555557c336 = 0x55555557c336;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffd9e0; Value = 0x0000555555582d98; PC = 0x55555557c33d *)
adds carry r8 r8 L0x7fffffffd9e0;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffd9e8; Value = 0x000055555555501b; PC = 0x55555557c340 *)
adcs carry r9 r9 L0x7fffffffd9e8 carry;
(* mov    %r8,%rax                                 #! PC = 0x55555557c344 *)
mov rax r8;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffd9f0; Value = 0x00007fffffffda16; PC = 0x55555557c347 *)
adcs carry r10 r10 L0x7fffffffd9f0 carry;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffd9f8; Value = 0x0000555555580cbd; PC = 0x55555557c34b *)
adcs carry r11 r11 L0x7fffffffd9f8 carry;
(* mov    %r9,%rdx                                 #! PC = 0x55555557c34f *)
mov rdx r9;
(* adc    $0x0,%r13                                #! PC = 0x55555557c352 *)
adc r13 r13 0@uint64 carry;
(* sub    (%rsi),%r8                               #! EA = L0x55555557c000; Value = 0xffffffffffffffff; PC = 0x55555557c356 *)
subb carry r8 r8 L0x55555557c000;
(* mov    %r10,%rcx                                #! PC = 0x55555557c359 *)
mov rcx r10;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557c35c *)
sbbs carry r9 r9 L0x55555557c008 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x55555557c010; Value = 0x0000000000000000; PC = 0x55555557c360 *)
sbbs carry r10 r10 L0x55555557c010 carry;
(* mov    %r11,%r12                                #! PC = 0x55555557c364 *)
mov r12 r11;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557c367 *)
sbbs carry r11 r11 L0x55555557c018 carry;
(* sbb    $0x0,%r13                                #! PC = 0x55555557c36b *)
sbbs carry r13 r13 0@uint64 carry;
(* cmovb  %rax,%r8                                 #! PC = 0x55555557c36f *)
cmov r8 carry rax r8;
(* cmovb  %rdx,%r9                                 #! PC = 0x55555557c373 *)
cmov r9 carry rdx r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffda00; PC = 0x55555557c377 *)
mov L0x7fffffffda00 r8;
(* cmovb  %rcx,%r10                                #! PC = 0x55555557c37a *)
cmov r10 carry rcx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffda08; PC = 0x55555557c37e *)
mov L0x7fffffffda08 r9;
(* cmovb  %r12,%r11                                #! PC = 0x55555557c382 *)
cmov r11 carry r12 r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffda10; PC = 0x55555557c386 *)
mov L0x7fffffffda10 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffda18; PC = 0x55555557c38a *)
mov L0x7fffffffda18 r11;
(* #mov    (%rsp),%r13                              #! EA = L0x7fffffffd9a8; Value = 0x00007fffffffdb20; PC = 0x55555557c38e *)
#mov    (%rsp),%%r13                              #! L0x7fffffffd9a8 = L0x7fffffffd9a8; 0x00007fffffffdb20 = 0x00007fffffffdb20; 0x55555557c38e = 0x55555557c38e;
(* #mov    0x8(%rsp),%r12                           #! EA = L0x7fffffffd9b0; Value = 0x0000555555556000; PC = 0x55555557c392 *)
#mov    0x8(%rsp),%%r12                           #! L0x7fffffffd9b0 = L0x7fffffffd9b0; 0x0000555555556000 = 0x0000555555556000; 0x55555557c392 = 0x55555557c392;
(* #lea    0x10(%rsp),%rsp                          #! PC = 0x55555557c397 *)
#lea    0x10(%rsp),%rsp                          #! 0x55555557c397 = 0x55555557c397;
(* #! <- SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* #repz retq                                      #! PC = 0x55555557c39c *)
#repz retq                                      #! 0x55555557c39c = 0x55555557c39c;

mov c0 L0x7fffffffda00;
mov c1 L0x7fffffffda08;
mov c2 L0x7fffffffda10;
mov c3 L0x7fffffffda18;

{
  true
  && and [ eqmod (limbs 64 [c0, c1, c2, c3, 0@64])
                 (limbs 64 [a0, a1, a2, a3, 0@64]+limbs 64 [b0, b1, b2, b3, 0@64])
                 (limbs 64 [m0, m1, m2, m3, 0@64]),
           limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3] ]
}

