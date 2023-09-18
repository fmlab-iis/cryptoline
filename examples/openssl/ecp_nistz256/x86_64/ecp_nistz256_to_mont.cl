(* quine: $ cv -v -isafety ecp_nistz256_to_mont.cl
Parsing CryptoLine file:    [OK]    0.004470 seconds
Checking well-formedness:   [OK]    0.001037 seconds
Transforming to SSA form:   [OK]    0.000152 seconds
Normalizing specification:    [OK]    0.000190 seconds
Rewriting assignments:      [OK]    0.000146 seconds
Verifying program safety:   
   Cut 0
       Round 1 (4 safety conditions, timeout = 300 seconds)
     Safety condition #0  [OK]
     Safety condition #1  [OK]
     Safety condition #2  [OK]
     Safety condition #3  [OK]
   Overall      [OK]    0.155271 seconds
Verifying range assertions:   [OK]    1.101704 seconds
Verifying range specification:    [OK]    0.531056 seconds
Rewriting value-preserved casting:  [OK]    0.000081 seconds
Verifying algebraic assertions:   [OK]    0.065086 seconds
Verifying algebraic specification:  [OK]    0.142845 seconds
Verification result:      [OK]    2.002573 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001
      ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64
      ]
}


mov L0x7fffffffd9b0 a0;
mov L0x7fffffffd9b8 a1;
mov L0x7fffffffd9c0 a2;
mov L0x7fffffffd9c8 a3;

mov L0x55555557c000 0xffffffffffffffff@uint64;
mov L0x55555557c008 0x00000000ffffffff@uint64;
mov L0x55555557c010 0x0000000000000000@uint64;
mov L0x55555557c018 0xffffffff00000001@uint64;

mov L0x55555557c020 0x0000000000000003@uint64;
mov L0x55555557c028 0xfffffffbffffffff@uint64;
mov L0x55555557c030 0xfffffffffffffffe@uint64;
mov L0x55555557c038 0x00000004fffffffd@uint64;

nondet rdx@uint64;

(* ecp_nistz256_to_mont: *)
#ecp_nistz256_to_mont:;
(* #! -> SP = 0x7fffffffd9a8 *)
#! 0x7fffffffd9a8 = 0x7fffffffd9a8;
(* mov    $0x80100,%ecx                            #! PC = 0x55555557d1c0 *)
#mov    $0x80100,%ecx                            #! 0x55555557d1c0 = 0x55555557d1c0;
(* and    0x5e65(%rip),%ecx        # 0x555555583030 <OPENSSL_ia32cap_P+8>#! EA = L0x555555583030; Value = 0x0040069c219c97a9; PC = 0x55555557d1c5 *)
#and    %%L0x555555583030,%ecx        # 0x555555583030 <OPENSSL_ia32cap_P+8>#! L0x555555583030 = L0x555555583030; 0x0040069c219c97a9 = 0x0040069c219c97a9; 0x55555557d1c5 = 0x55555557d1c5;
(* lea    -0x11b2(%rip),%rdx        # 0x55555557c020#! PC = 0x55555557d1cb *)
#lea    %%EA,%%rdx        # 0x55555557c020#! 0x55555557d1cb = 0x55555557d1cb;
(* #jmp    0x55555557d1eb <ecp_nistz256_mul_mont+11>#! PC = 0x55555557d1d2 *)
#jmp    0x55555557d1eb <ecp_nistz256_mul_mont+11>#! 0x55555557d1d2 = 0x55555557d1d2;
(* push   %rbp                                     #! EA = L0x7fffffffd9a0; PC = 0x55555557d1eb *)
#push   %%rbp                                     #! L0x7fffffffd9a0 = L0x7fffffffd9a0; 0x55555557d1eb = 0x55555557d1eb;
(* push   %rbx                                     #! EA = L0x7fffffffd998; PC = 0x55555557d1ec *)
#push   %%rbx                                     #! L0x7fffffffd998 = L0x7fffffffd998; 0x55555557d1ec = 0x55555557d1ec;
(* push   %r12                                     #! EA = L0x7fffffffd990; PC = 0x55555557d1ed *)
#push   %%r12                                     #! L0x7fffffffd990 = L0x7fffffffd990; 0x55555557d1ed = 0x55555557d1ed;
(* push   %r13                                     #! EA = L0x7fffffffd988; PC = 0x55555557d1ef *)
#push   %%r13                                     #! L0x7fffffffd988 = L0x7fffffffd988; 0x55555557d1ef = 0x55555557d1ef;
(* push   %r14                                     #! EA = L0x7fffffffd980; PC = 0x55555557d1f1 *)
#push   %%r14                                     #! L0x7fffffffd980 = L0x7fffffffd980; 0x55555557d1f1 = 0x55555557d1f1;
(* push   %r15                                     #! EA = L0x7fffffffd978; PC = 0x55555557d1f3 *)
#push   %%r15                                     #! L0x7fffffffd978 = L0x7fffffffd978; 0x55555557d1f3 = 0x55555557d1f3;
(* cmp    $0x80100,%ecx                            #! PC = 0x55555557d1f5 *)
#cmp    $0x80100,%ecx                            #! 0x55555557d1f5 = 0x55555557d1f5;
(* #je     0x55555557d220 <ecp_nistz256_mul_mont+64>#! PC = 0x55555557d1fb *)
#je     0x55555557d220 <ecp_nistz256_mul_mont+64>#! 0x55555557d1fb = 0x55555557d1fb;
(* mov    %rdx,%rbx                                #! PC = 0x55555557d220 *)
mov rbx rdx;
(* mov    (%rdx),%rdx                              #! EA = L0x55555557c020; Value = 0x0000000000000003; PC = 0x55555557d223 *)
mov rdx L0x55555557c020;
(* mov    (%rsi),%r9                               #! EA = L0x7fffffffd9b0; Value = 0x0000000000000000; PC = 0x55555557d226 *)
mov r9 L0x7fffffffd9b0;
(* mov    0x8(%rsi),%r10                           #! EA = L0x7fffffffd9b8; Value = 0x0000000000000000; PC = 0x55555557d229 *)
mov r10 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%r11                          #! EA = L0x7fffffffd9c0; Value = 0x0000000000000000; PC = 0x55555557d22d *)
mov r11 L0x7fffffffd9c0;
(* mov    0x18(%rsi),%r12                          #! EA = L0x7fffffffd9c8; Value = 0x0000000000000000; PC = 0x55555557d231 *)
mov r12 L0x7fffffffd9c8;
(* lea    -0x80(%rsi),%rsi                         #! PC = 0x55555557d235 *)
#lea    %%EA,%%rsi                         #! 0x55555557d235 = 0x55555557d235;
(* #call   0x55555557d700 <__ecp_nistz256_mul_montx>#! PC = 0x55555557d239 *)
#call   0x55555557d700 <__ecp_nistz256_mul_montx>#! 0x55555557d239 = 0x55555557d239;
(* #! -> SP = 0x7fffffffd970 *)
#! 0x7fffffffd970 = 0x7fffffffd970;
(* mulx   %r9,%r8,%r9                              #! PC = 0x55555557d700 *)
mull r9 r8 rdx r9;
(* mulx   %r10,%rcx,%r10                           #! PC = 0x55555557d705 *)
mull r10 rcx rdx r10;
(* mov    $0x20,%r14                               #! PC = 0x55555557d70a *)
mov r14 0x20@uint64;
(* xor    %r13,%r13                                #! PC = 0x55555557d711 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   %r11,%rbp,%r11                           #! PC = 0x55555557d714 *)
mull r11 rbp rdx r11;
(* mov    -0x1708(%rip),%r15        # 0x55555557c018#! EA = L0x55555557c018; Value = 0xffffffff00000001; PC = 0x55555557d719 *)
mov r15 L0x55555557c018;
(* adc    %rcx,%r9                                 #! PC = 0x55555557d720 *)
adcs carry r9 r9 rcx carry;
(* mulx   %r12,%rcx,%r12                           #! PC = 0x55555557d723 *)
mull r12 rcx rdx r12;
(* mov    %r8,%rdx                                 #! PC = 0x55555557d728 *)
mov rdx r8;
(* adc    %rbp,%r10                                #! PC = 0x55555557d72b *)
adcs carry r10 r10 rbp carry;
(* shlx   %r14,%r8,%rbp                            #! PC = 0x55555557d72e *)
assert r14=32 && true;
split ddc rbp r8 32;
shl rbp rbp 32;
(* adc    %rcx,%r11                                #! PC = 0x55555557d733 *)
adcs carry r11 r11 rcx carry;
(* shrx   %r14,%r8,%rcx                            #! PC = 0x55555557d736 *)
assert r14=32 && true;
split rcx dc r8 32;

assert true && ddc = rcx;
assume ddc = rcx && true;

(* adc    $0x0,%r12                                #! PC = 0x55555557d73b *)
adcs carry r12 r12 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rbp,%r9                                 #! PC = 0x55555557d73f *)
adds carry r9 r9 rbp;
(* adc    %rcx,%r10                                #! PC = 0x55555557d742 *)
adcs carry r10 r10 rcx carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d745 *)
mull rbp rcx rdx r15;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x55555557c028; Value = 0xfffffffbffffffff; PC = 0x55555557d74a *)
mov rdx L0x55555557c028;
(* adc    %rcx,%r11                                #! PC = 0x55555557d74e *)
adcs carry r11 r11 rcx carry;
(* adc    %rbp,%r12                                #! PC = 0x55555557d751 *)
adcs carry r12 r12 rbp carry;
(* adc    $0x0,%r13                                #! PC = 0x55555557d754 *)
adcs carry r13 r13 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r8,%r8                                  #! PC = 0x55555557d758 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b0; Value = 0x0000000000000000; PC = 0x55555557d75b *)
mull rbp rcx rdx L0x7fffffffd9b0;
(* adcx   %rcx,%r9                                 #! PC = 0x55555557d764 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbp,%r10                                #! PC = 0x55555557d76a *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b8; Value = 0x0000000000000000; PC = 0x55555557d770 *)
mull rbp rcx rdx L0x7fffffffd9b8;
(* adcx   %rcx,%r10                                #! PC = 0x55555557d779 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x55555557d77f *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c0; Value = 0x0000000000000000; PC = 0x55555557d785 *)
mull rbp rcx rdx L0x7fffffffd9c0;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d78e *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d794 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c8; Value = 0x0000000000000000; PC = 0x55555557d79a *)
mull rbp rcx rdx L0x7fffffffd9c8;
(* mov    %r9,%rdx                                 #! PC = 0x55555557d7a3 *)
mov rdx r9;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d7a6 *)
adcs carry r12 r12 rcx carry;
(* shlx   %r14,%r9,%rcx                            #! PC = 0x55555557d7ac *)
assert r14=32 && true;
split ddc rcx r9 32;
shl rcx rcx 32;
(* adox   %rbp,%r13                                #! PC = 0x55555557d7b1 *)
adcs overflow r13 r13 rbp overflow;
(* shrx   %r14,%r9,%rbp                            #! PC = 0x55555557d7b7 *)
assert r14=32 && true;
split rbp dc r9 32;

assert true && ddc = rbp;
assume ddc = rbp && true;

(* adcx   %r8,%r13                                 #! PC = 0x55555557d7bc *)
adcs carry r13 r13 r8 carry;
(* adox   %r8,%r8                                  #! PC = 0x55555557d7c2 *)
adcs overflow r8 r8 r8 overflow;

(* Note: No Overflow *)
assert true && overflow = 0@1;
assume overflow=0 && true;

(* adc    $0x0,%r8                                 #! PC = 0x55555557d7c8 *)
adcs carry r8 r8 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rcx,%r10                                #! PC = 0x55555557d7cc *)
adds carry r10 r10 rcx;
(* adc    %rbp,%r11                                #! PC = 0x55555557d7cf *)
adcs carry r11 r11 rbp carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d7d2 *)
mull rbp rcx rdx r15;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x55555557c030; Value = 0xfffffffffffffffe; PC = 0x55555557d7d7 *)
mov rdx L0x55555557c030;
(* adc    %rcx,%r12                                #! PC = 0x55555557d7db *)
adcs carry r12 r12 rcx carry;
(* adc    %rbp,%r13                                #! PC = 0x55555557d7de *)
adcs carry r13 r13 rbp carry;
(* adc    $0x0,%r8                                 #! PC = 0x55555557d7e1 *)
adcs carry r8 r8 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r9,%r9                                  #! PC = 0x55555557d7e5 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b0; Value = 0x0000000000000000; PC = 0x55555557d7e8 *)
mull rbp rcx rdx L0x7fffffffd9b0;
(* adcx   %rcx,%r10                                #! PC = 0x55555557d7f1 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbp,%r11                                #! PC = 0x55555557d7f7 *)
adcs overflow r11 r11 rbp overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b8; Value = 0x0000000000000000; PC = 0x55555557d7fd *)
mull rbp rcx rdx L0x7fffffffd9b8;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d806 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d80c *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c0; Value = 0x0000000000000000; PC = 0x55555557d812 *)
mull rbp rcx rdx L0x7fffffffd9c0;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d81b *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x55555557d821 *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c8; Value = 0x0000000000000000; PC = 0x55555557d827 *)
mull rbp rcx rdx L0x7fffffffd9c8;
(* mov    %r10,%rdx                                #! PC = 0x55555557d830 *)
mov rdx r10;
(* adcx   %rcx,%r13                                #! PC = 0x55555557d833 *)
adcs carry r13 r13 rcx carry;
(* shlx   %r14,%r10,%rcx                           #! PC = 0x55555557d839 *)
assert r14=32 && true;
split ddc rcx r10 32;
shl rcx rcx 32;
(* adox   %rbp,%r8                                 #! PC = 0x55555557d83e *)
adcs overflow r8 r8 rbp overflow;
(* shrx   %r14,%r10,%rbp                           #! PC = 0x55555557d844 *)
assert r14=32 && true;
split rbp dc r10 32;

assert true && ddc = rbp;
assume ddc = rbp && true;

(* adcx   %r9,%r8                                  #! PC = 0x55555557d849 *)
adcs carry r8 r8 r9 carry;
(* adox   %r9,%r9                                  #! PC = 0x55555557d84f *)
adcs overflow r9 r9 r9 overflow;

(* Note: No Overflow *)
assert true && overflow = 0@1;
assume overflow=0 && true;

(* adc    $0x0,%r9                                 #! PC = 0x55555557d855 *)
adcs carry r9 r9 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rcx,%r11                                #! PC = 0x55555557d859 *)
adds carry r11 r11 rcx;
(* adc    %rbp,%r12                                #! PC = 0x55555557d85c *)
adcs carry r12 r12 rbp carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d85f *)
mull rbp rcx rdx r15;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x55555557c038; Value = 0x00000004fffffffd; PC = 0x55555557d864 *)
mov rdx L0x55555557c038;
(* adc    %rcx,%r13                                #! PC = 0x55555557d868 *)
adcs carry r13 r13 rcx carry;
(* adc    %rbp,%r8                                 #! PC = 0x55555557d86b *)
adcs carry r8 r8 rbp carry;
(* adc    $0x0,%r9                                 #! PC = 0x55555557d86e *)
adcs carry r9 r9 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r10,%r10                                #! PC = 0x55555557d872 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b0; Value = 0x0000000000000000; PC = 0x55555557d875 *)
mull rbp rcx rdx L0x7fffffffd9b0;
(* adcx   %rcx,%r11                                #! PC = 0x55555557d87e *)
adcs carry r11 r11 rcx carry;
(* adox   %rbp,%r12                                #! PC = 0x55555557d884 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9b8; Value = 0x0000000000000000; PC = 0x55555557d88a *)
mull rbp rcx rdx L0x7fffffffd9b8;
(* adcx   %rcx,%r12                                #! PC = 0x55555557d893 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbp,%r13                                #! PC = 0x55555557d899 *)
adcs overflow r13 r13 rbp overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c0; Value = 0x0000000000000000; PC = 0x55555557d89f *)
mull rbp rcx rdx L0x7fffffffd9c0;
(* adcx   %rcx,%r13                                #! PC = 0x55555557d8a8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbp,%r8                                 #! PC = 0x55555557d8ae *)
adcs overflow r8 r8 rbp overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x7fffffffd9c8; Value = 0x0000000000000000; PC = 0x55555557d8b4 *)
mull rbp rcx rdx L0x7fffffffd9c8;
(* mov    %r11,%rdx                                #! PC = 0x55555557d8bd *)
mov rdx r11;
(* adcx   %rcx,%r8                                 #! PC = 0x55555557d8c0 *)
adcs carry r8 r8 rcx carry;
(* shlx   %r14,%r11,%rcx                           #! PC = 0x55555557d8c6 *)
assert r14=32 && true;
split ddc rcx r11 32;
shl rcx rcx 32;
(* adox   %rbp,%r9                                 #! PC = 0x55555557d8cb *)
adcs overflow r9 r9 rbp overflow;

(* Note: No Overflow *)
assert true && overflow = 0@1;
assume overflow=0 && true;

(* shrx   %r14,%r11,%rbp                           #! PC = 0x55555557d8d1 *)
assert r14=32 && true;
split rbp dc r11 32;

assert true && ddc = rbp;
assume ddc = rbp && true;

(* adcx   %r10,%r9                                 #! PC = 0x55555557d8d6 *)
adcs carry r9 r9 r10 carry;

ghost carryo1@bit:
      carryo1 = carry && carryo1 = carry;

(* adox   %r10,%r10                                #! PC = 0x55555557d8dc *)
adcs overflow r10 r10 r10 overflow;
(* adc    $0x0,%r10                                #! PC = 0x55555557d8e2 *)
adcs carry r10 r10 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rcx,%r12                                #! PC = 0x55555557d8e6 *)
adds carry r12 r12 rcx;
(* adc    %rbp,%r13                                #! PC = 0x55555557d8e9 *)
adcs carry r13 r13 rbp carry;
(* mulx   %r15,%rcx,%rbp                           #! PC = 0x55555557d8ec *)
mull rbp rcx rdx r15;
(* mov    %r12,%rbx                                #! PC = 0x55555557d8f1 *)
mov rbx r12;
(* mov    -0x18f3(%rip),%r14        # 0x55555557c008#! EA = L0x55555557c008; Value = 0x00000000ffffffff; PC = 0x55555557d8f4 *)
mov r14 L0x55555557c008;
(* adc    %rcx,%r8                                 #! PC = 0x55555557d8fb *)
adcs carry r8 r8 rcx carry;
(* mov    %r13,%rdx                                #! PC = 0x55555557d8fe *)
mov rdx r13;
(* adc    %rbp,%r9                                 #! PC = 0x55555557d901 *)
adcs carry r9 r9 rbp carry;

ghost carryo2@bit:
      carryo2 = carry && carryo2 = carry;

(* adc    $0x0,%r10                                #! PC = 0x55555557d904 *)
adcs carry r10 r10 0x0@uint64 carry;
(* xor    %eax,%eax                                #! PC = 0x55555557d908 *)
mov eax 0@uint64;
clear carry;
clear overflow;
(* mov    %r8,%rcx                                 #! PC = 0x55555557d90a *)
mov rcx r8;
(* sbb    $0xffffffffffffffff,%r12                 #! PC = 0x55555557d90d *)
sbbs carry r12 r12 0xffffffffffffffff@uint64 carry;
(* sbb    %r14,%r13                                #! PC = 0x55555557d911 *)
sbbs carry r13 r13 r14 carry;
(* sbb    $0x0,%r8                                 #! PC = 0x55555557d914 *)
sbbs carry r8 r8 0x0@uint64 carry;
(* mov    %r9,%rbp                                 #! PC = 0x55555557d918 *)
mov rbp r9;
(* sbb    %r15,%r9                                 #! PC = 0x55555557d91b *)
sbbs carry r9 r9 r15 carry;

ghost carryo3@bit:
      carryo3 = carry && carryo3 = carry;

(* sbb    $0x0,%r10                                #! PC = 0x55555557d91e *)
sbbs carry r10 r10 0x0@uint64 carry;

ghost carryo4@bit:
      carryo4 = carry && carryo4 = carry;

assert true && or [and [carryo3=0@1, carryo1=0@1, carryo2=0@1, carryo4=0@1],
                   and [carryo3=1@1, carryo1=1@1, carryo2=0@1, carryo4=0@1],
                   and [carryo3=1@1, carryo1=0@1, carryo2=1@1, carryo4=0@1],
                   and [carryo3=1@1, carryo1=0@1, carryo2=0@1, carryo4=1@1]];

assume (carryo3 - 0) * (carryo1 - 1) * (carryo2 - 1) * (carryo4 - 1) = 0 && true;
assume (carryo1 - 0) * (carryo2 - 0) = 0 && true;
assume (carryo1 - 0) * (carryo4 - 0) = 0 && true;
assume (carryo2 - 0) * (carryo4 - 0) = 0 && true;

assume (carryo3 - 1) * (carryo1 - 1) = 1 && true;
assume (carryo3 - 1) * (carryo2 - 1) = 1 && true;
assume (carryo3 - 1) * (carryo4 - 1) = 1 && true;

(* cmovb  %rbx,%r12                                #! PC = 0x55555557d922 *)
cmov r12 carry rbx r12;
(* cmovb  %rdx,%r13                                #! PC = 0x55555557d926 *)
cmov r13 carry rdx r13;
(* mov    %r12,(%rdi)                              #! EA = L0x7fffffffd9f0; PC = 0x55555557d92a *)
mov L0x7fffffffd9f0 r12;
(* cmovb  %rcx,%r8                                 #! PC = 0x55555557d92d *)
cmov r8 carry rcx r8;
(* mov    %r13,0x8(%rdi)                           #! EA = L0x7fffffffd9f8; PC = 0x55555557d931 *)
mov L0x7fffffffd9f8 r13;
(* cmovb  %rbp,%r9                                 #! PC = 0x55555557d935 *)
cmov r9 carry rbp r9;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffda00; PC = 0x55555557d939 *)
mov L0x7fffffffda00 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0x7fffffffda08; PC = 0x55555557d93d *)
mov L0x7fffffffda08 r9;
(* #! <- SP = 0x7fffffffd970 *)
#! 0x7fffffffd970 = 0x7fffffffd970;
(* #repz ret                                       #! PC = 0x55555557d941 *)
#repz ret                                       #! 0x55555557d941 = 0x55555557d941;
(* mov    (%rsp),%r15                              #! EA = L0x7fffffffd978; Value = 0x00007ffff7ffd000; PC = 0x55555557d23e *)
#mov    (%rsp),%%r15                              #! L0x7fffffffd978 = L0x7fffffffd978; 0x00007ffff7ffd000 = 0x00007ffff7ffd000; 0x55555557d23e = 0x55555557d23e;
(* mov    0x8(%rsp),%r14                           #! EA = L0x7fffffffd980; Value = 0x0000555555582dd8; PC = 0x55555557d242 *)
#mov r14 L0x7fffffffd980;
(* mov    0x10(%rsp),%r13                          #! EA = L0x7fffffffd988; Value = 0x00007fffffffdca8; PC = 0x55555557d247 *)
#mov r13 L0x7fffffffd988;
(* mov    0x18(%rsp),%r12                          #! EA = L0x7fffffffd990; Value = 0x0000000000000000; PC = 0x55555557d24c *)
#mov r12 L0x7fffffffd990;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd998; Value = 0x00007fffffffdc98; PC = 0x55555557d251 *)
#mov rbx L0x7fffffffd998;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd9a0; Value = 0x00007fffffffdb80; PC = 0x55555557d256 *)
#mov rbp L0x7fffffffd9a0;
(* lea    0x30(%rsp),%rsp                          #! PC = 0x55555557d25b *)
#lea    %%EA,%rsp                          #! 0x55555557d25b = 0x55555557d25b;
(* #! <- SP = 0x7fffffffd9a8 *)
#! 0x7fffffffd9a8 = 0x7fffffffd9a8;
(* #repz ret                                       #! PC = 0x55555557d260 *)
#repz ret                                       #! 0x55555557d260 = 0x55555557d260;

mov c0 L0x7fffffffd9f0;
mov c1 L0x7fffffffd9f8;
mov c2 L0x7fffffffda00;
mov c3 L0x7fffffffda08;

{
  eqmod (limbs 64 [c0, c1, c2, c3])
        (limbs 64 [0, 0, 0, 0, a0, a1, a2, a3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

