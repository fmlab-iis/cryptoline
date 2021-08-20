proc main (uint64  L0x7fffffffdec0, uint64 L0x7fffffffdec8, uint64 L0x7fffffffded0, uint64 L0x7fffffffded8, uint64 L0x7fffffffe050, uint64 L0x7fffffffe058, uint64 L0x7fffffffe060, uint64 L0x7fffffffe068, uint64 rdx) =
{
  true
  &&
  true
}

(* gfp25519mul: *)
(* gfp25519mul:; *)
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401900 *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401901 *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401902 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401904 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401906 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401908 *)
(* mov    %rdx,%rbx                                #! PC = 0x40190a *)
mov rbx rdx;
(* xor    %r13,%r13                                #! PC = 0x40190d *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    (%rbx),%rdx                              #! EA = L0x7fffffffe050; Value = 0xffffffffffffffec; PC = 0x401910 *)
mov rdx L0x7fffffffe050;
(* mulx   (%rsi),%r8,%r9                           #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x401913 *)
umull r9 r8 L0x7fffffffdec0 rdx;
(* mulx   0x8(%rsi),%rcx,%r10                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x401918 *)
umull r10 rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x40191e *)
adcs carry r9 r9 rcx carry;
(* mulx   0x10(%rsi),%rcx,%r11                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x401924 *)
umull r11 rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x40192a *)
adcs carry r10 r10 rcx carry;
(* mulx   0x18(%rsi),%rcx,%r12                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x401930 *)
umull r12 rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401936 *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x40193c *)
adc r12 r12 r13 carry;
(* xor    %r14,%r14                                #! PC = 0x401942 *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x7fffffffe058; Value = 0xffffffffffffffff; PC = 0x401945 *)
mov rdx L0x7fffffffe058;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x401949 *)
umull rbp rcx L0x7fffffffdec0 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x40194e *)
adcs carry r9 r9 rcx carry;
(* adox   %rbp,%r10                                #! PC = 0x401954 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x40195a *)
umull rbp rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401960 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x401966 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x40196c *)
umull rbp rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401972 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x401978 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x40197e *)
umull rbp rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401984 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x40198a *)
adc r13 r13 rbp overflow;
(* adcx   %r14,%r13                                #! PC = 0x401990 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401996 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x7fffffffe060; Value = 0xffffffffffffffff; PC = 0x401999 *)
mov rdx L0x7fffffffe060;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x40199d *)
umull rbp rcx L0x7fffffffdec0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x4019a2 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x4019a8 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x4019ae *)
umull rbp rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x4019b4 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x4019ba *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x4019c0 *)
umull rbp rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x4019c6 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x4019cc *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x4019d2 *)
umull rbp rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x4019d8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r14                                #! PC = 0x4019de *)
adc r14 r14 rbp overflow;
(* adcx   %r15,%r14                                #! PC = 0x4019e4 *)
adc r14 r14 r15 carry;
(* xor    %rax,%rax                                #! PC = 0x4019ea *)
mov rax 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x7fffffffe068; Value = 0x7fffffffffffffff; PC = 0x4019ed *)
mov rdx L0x7fffffffe068;
(* mulx   (%rsi),%rcx,%rbp                         #! EA = L0x7fffffffdec0; Value = 0xffffffffffffffee; PC = 0x4019f1 *)
umull rbp rcx L0x7fffffffdec0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x4019f6 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x4019fc *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x8(%rsi),%rcx,%rbp                      #! EA = L0x7fffffffdec8; Value = 0xffffffffffffffff; PC = 0x401a02 *)
umull rbp rcx L0x7fffffffdec8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401a08 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x401a0e *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x10(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded0; Value = 0xffffffffffffffff; PC = 0x401a14 *)
umull rbp rcx L0x7fffffffded0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401a1a *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r14                                #! PC = 0x401a20 *)
adcs overflow r14 r14 rbp overflow;
(* mulx   0x18(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffded8; Value = 0x7fffffffffffffff; PC = 0x401a26 *)
umull rbp rcx L0x7fffffffded8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401a2c *)
adcs carry r14 r14 rcx carry;
(* adox   %rbp,%r15                                #! PC = 0x401a32 *)
adc r15 r15 rbp overflow;
(* adcx   %rax,%r15                                #! PC = 0x401a38 *)
adc r15 r15 rax carry;
(* xor    %rbp,%rbp                                #! PC = 0x401a3e *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401a41 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rax,%r12                           #! PC = 0x401a48 *)
umull r12 rax r12 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x401a4d *)
adcs carry r8 r8 rax carry;
(* adox   %r12,%r9                                 #! PC = 0x401a53 *)
adcs overflow r9 r9 r12 overflow;
(* mulx   %r13,%rcx,%r13                           #! PC = 0x401a59 *)
umull r13 rcx r13 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x401a5e *)
adcs carry r9 r9 rcx carry;
(* adox   %r13,%r10                                #! PC = 0x401a64 *)
adcs overflow r10 r10 r13 overflow;
(* mulx   %r14,%rcx,%r14                           #! PC = 0x401a6a *)
umull r14 rcx r14 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401a6f *)
adcs carry r10 r10 rcx carry;
(* adox   %r14,%r11                                #! PC = 0x401a75 *)
adcs overflow r11 r11 r14 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401a7b *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401a80 *)
adcs carry r11 r11 rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401a86 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401a91 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%r11,%r15                           #! PC = 0x401a9c *)
(* cshl r15 dontcare r15 r11 0x1; *)
(* and    0x405070,%r11                            #! PC = 0x401aa1 *)
(* split dontcare r11 r11 63; *)
join t r15 r11;
split t1 t2 t 63;
vpc r11@uint64 t2;
vpc r15@uint64 t1;

(* imul   $0x13,%r15,%r15                          #! PC = 0x401aa9 *)
mul r15 r15 0x13@uint64;

(* add    %r15,%r8                                 #! PC = 0x401aad *)
adds carry r8 r15 r8;
nondet overflow@uint1;
(* adc    $0x0,%r9                                 #! PC = 0x401ab0 *)
adcs carry r9 0x0@uint64 r9 carry;
nondet overflow@uint1;
(* adc    $0x0,%r10                                #! PC = 0x401ab4 *)
adcs carry r10 0x0@uint64 r10 carry;
nondet overflow@uint1;
(* adc    $0x0,%r11                                #! PC = 0x401ab8 *)
adc r11 0x0@uint64 r11 carry;
nondet overflow@uint1;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdf00; PC = 0x401abc *)
mov L0x7fffffffdf00 r8;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdf08; PC = 0x401abf *)
mov L0x7fffffffdf08 r9;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdf10; PC = 0x401ac3 *)
mov L0x7fffffffdf10 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdf18; PC = 0x401ac7 *)
mov L0x7fffffffdf18 r11;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffdf20; PC = 0x401acb *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401acd *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00007fffffffdf00; PC = 0x401acf *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401ad1 *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401ad3 *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401ad4 *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401ad5 *)
#retq                                           #! 0x401ad5 = 0x401ad5;

mov x_0 L0x7fffffffdec0;
mov x_1 L0x7fffffffdec8;
mov x_2 L0x7fffffffded0;
mov x_3 L0x7fffffffded8;
mov y_0 L0x7fffffffe050;
mov y_1 L0x7fffffffe058;
mov y_2 L0x7fffffffe060;
mov y_3 L0x7fffffffe068;
mov z_0 L0x7fffffffdf00;
mov z_1 L0x7fffffffdf08;
mov z_2 L0x7fffffffdf10;
mov z_3 L0x7fffffffdf18;

{
    eqmod
      (mul (limbs 64 [vars x|0..3])
           (limbs 64 [vars y|0..3]))
      (limbs 64 [vars z|0..3]) 
      (((2**255 )- 19))
  &&
  true
}

