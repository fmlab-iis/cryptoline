proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  true
}

mov m0 17562291160714782033@uint64; (* F3B9CAC2FC632551 *)
mov m1 13611842547513532036@uint64; (* BCE6FAADA7179E84 *)
mov m2 18446744073709551615@uint64; (* FFFFFFFFFFFFFFFF *)
mov m3 18446744069414584320@uint64; (* FFFFFFFF00000000 *)

mov L0x62d080 a0;
mov L0x62d088 a1;
mov L0x62d090 a2;
mov L0x62d098 a3;

mov L0x62d0a0 b0;
mov L0x62d0a8 b1;
mov L0x62d0b0 b2;
mov L0x62d0b8 b3;

mov L0x4270c0 m0;
mov L0x4270c8 m1;
mov L0x4270d0 m2;
mov L0x4270d8 m3;

mov L0x62d000 0@uint64;
mov L0x427040 0@uint64;

mov L0x4270e0 14758798090332847183@uint64; (* CCD1C8AAEE00BC4F *)

(* mov    (%rdx),%rdx                              #! EA = L0x62d0a0 *)
mov rdx L0x62d0a0;
(* mov    (%rsi),%r9                               #! EA = L0x62d080 *)
mov r9 L0x62d080;
(* mov    0x8(%rsi),%r10                           #! EA = L0x62d088 *)
mov r10 L0x62d088;
(* mov    0x10(%rsi),%r11                          #! EA = L0x62d090 *)
mov r11 L0x62d090;
(* mov    0x18(%rsi),%r12                          #! EA = L0x62d098 *)
mov r12 L0x62d098;
(* lea    -0x80(%rsi),%rsi                         #! EA = L0x62d000 *)
mov rsi L0x62d000;
(* lea    -0xaca(%rip),%r14        # 0x427040      #! EA = L0x427040 *)
mov r14 L0x427040;
(* mov    -0xa31(%rip),%r15        # 0x4270e0      #! EA = L0x4270e0 *)
mov r15 L0x4270e0;
(* mulx   %r9,%r8,%r9 *)
mull r9 r8 r9 rdx;
(* mulx   %r10,%rcx,%r10 *)
mull r10 rcx r10 rdx;
(* mulx   %r11,%rbp,%r11 *)
mull r11 rbp r11 rdx;
(* add    %rcx,%r9 *)
adds carry r9 rcx r9;
(* mulx   %r12,%rcx,%r12 *)
mull r12 rcx r12 rdx;
(* mov    %r8,%rdx *)
mov rdx r8;
(* mulx   %r15,%rdx,%rax *)
mull rax rdx r15 rdx;
(* adc    %rbp,%r10 *)
adcs carry r10 rbp r10 carry;
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adc    $0x0,%r12 *)
adc r12 r12 0@uint64 carry;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%r14),%rcx,%rbp                     #! EA = L0x4270c0 *)
mull rbp rcx L0x4270c0 rdx;
(* adcx   %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* r8 = 0 *)
assert (eqmod r8 0 (2**64)) && true;
assume (eq r8 0) && true;
(* adox   %rbp,%r9 *)
adcs overflow r9 rbp r9 overflow;
(* mulx   0x88(%r14),%rcx,%rbp                     #! EA = L0x4270c8 *)
mull rbp rcx L0x4270c8 rdx;
(* adcx   %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adox   %rbp,%r10 *)
adcs overflow r10 rbp r10 overflow;
(* mulx   0x90(%r14),%rcx,%rbp                     #! EA = L0x4270d0 *)
mull rbp rcx L0x4270d0 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x98(%r14),%rcx,%rbp                     #! EA = L0x4270d8 *)
mull rbp rcx L0x4270d8 rdx;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x62d0a8 *)
mov rdx L0x62d0a8;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* adcx   %r8,%r12 *)
adcs carry r12 r8 r12 carry;
(* adox   %r8,%r13 *)
adc r13 r8 r13 overflow;
clear overflow;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;
clear carry;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x62d080 *)
mull rbp rcx L0x62d080 rdx;
(* adcx   %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adox   %rbp,%r10 *)
adcs overflow r10 rbp r10 overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x62d088 *)
mull rbp rcx L0x62d088 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x62d090 *)
mull rbp rcx L0x62d090 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x62d098 *)
mull rbp rcx L0x62d098 rdx;
(* mov    %r9,%rdx *)
mov rdx r9;
(* mulx   %r15,%rdx,%rax *)
mull rax rdx r15 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* adcx   %r8,%r13 *)
adcs carry r13 r8 r13 carry;
(* adox   %r8,%r8 *)
adc r8 r8 r8 overflow;
clear overflow;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
clear carry;
(* mulx   0x80(%r14),%rcx,%rbp                     #! EA = L0x4270c0 *)
mull rbp rcx L0x4270c0 rdx;
(* adcx   %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* r9 = 0 *)
assert (eqmod r9 0 (2**64)) && true;
assume (eq r9 0) && true;
(* adox   %rbp,%r10 *)
adcs overflow r10 rbp r10 overflow;
(* mulx   0x88(%r14),%rcx,%rbp                     #! EA = L0x4270c8 *)
mull rbp rcx L0x4270c8 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x90(%r14),%rcx,%rbp                     #! EA = L0x4270d0 *)
mull rbp rcx L0x4270d0 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x98(%r14),%rcx,%rbp                     #! EA = L0x4270d8 *)
mull rbp rcx L0x4270d8 rdx;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x62d0b0 *)
mov rdx L0x62d0b0;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* adcx   %r9,%r13 *)
adcs carry r13 r9 r13 carry;
(* adox   %r9,%r8 *)
adc r8 r9 r8 overflow;
clear overflow;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
clear carry;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x62d080 *)
mull rbp rcx L0x62d080 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x62d088 *)
mull rbp rcx L0x62d088 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x62d090 *)
mull rbp rcx L0x62d090 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x62d098 *)
mull rbp rcx L0x62d098 rdx;
(* mov    %r10,%rdx *)
mov rdx r10;
(* mulx   %r15,%rdx,%rax *)
mull rax rdx r15 rdx;
(* adcx   %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* adox   %rbp,%r8 *)
adcs overflow r8 rbp r8 overflow;
(* adcx   %r9,%r8 *)
adcs carry r8 r9 r8 carry;
(* adox   %r9,%r9 *)
adc r9 r9 r9 overflow;
clear overflow;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
clear carry;
(* mulx   0x80(%r14),%rcx,%rbp                     #! EA = L0x4270c0 *)
mull rbp rcx L0x4270c0 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* r10 = 0 *)
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x88(%r14),%rcx,%rbp                     #! EA = L0x4270c8 *)
mull rbp rcx L0x4270c8 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x90(%r14),%rcx,%rbp                     #! EA = L0x4270d0 *)
mull rbp rcx L0x4270d0 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* mulx   0x98(%r14),%rcx,%rbp                     #! EA = L0x4270d8 *)
mull rbp rcx L0x4270d8 rdx;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x62d0b8 *)
mov rdx L0x62d0b8;
(* adcx   %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* adox   %rbp,%r8 *)
adcs overflow r8 rbp r8 overflow;
(* adcx   %r10,%r8 *)
adcs carry r8 r10 r8 carry;
(* adox   %r10,%r9 *)
adc r9 r10 r9 overflow;
clear overflow;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
clear carry;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x62d080 *)
mull rbp rcx L0x62d080 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x62d088 *)
mull rbp rcx L0x62d088 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x62d090 *)
mull rbp rcx L0x62d090 rdx;
(* adcx   %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* adox   %rbp,%r8 *)
adcs overflow r8 rbp r8 overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x62d098 *)
mull rbp rcx L0x62d098 rdx;
(* mov    %r11,%rdx *)
mov rdx r11;
(* mulx   %r15,%rdx,%rax *)
mull rax rdx r15 rdx;
(* adcx   %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* adox   %rbp,%r9 *)
adcs overflow r9 rbp r9 overflow;
(* adcx   %r10,%r9 *)
adcs carry r9 r10 r9 carry;
(* adox   %r10,%r10 *)
adc r10 r10 r10 overflow;
clear overflow;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
clear carry;
(* mulx   0x80(%r14),%rcx,%rbp                     #! EA = L0x4270c0 *)
mull rbp rcx L0x4270c0 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* r11 = 0 *)
assert (eqmod r11 0 (2**64)) && true;
assume (eq r11 0) && true;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x88(%r14),%rcx,%rbp                     #! EA = L0x4270c8 *)
mull rbp rcx L0x4270c8 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* mulx   0x90(%r14),%rcx,%rbp                     #! EA = L0x4270d0 *)
mull rbp rcx L0x4270d0 rdx;
(* adcx   %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* adox   %rbp,%r8 *)
adcs overflow r8 rbp r8 overflow;
(* mulx   0x98(%r14),%rcx,%rbp                     #! EA = L0x4270d8 *)
mull rbp rcx L0x4270d8 rdx;
(* lea    0x80(%r14),%r14                          #! EA = L0x4270c0 *)
mov r14 L0x4270c0;
(* mov    %r12,%rbx *)
mov rbx r12;
(* adcx   %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* adox   %rbp,%r9 *)
adcs overflow r9 rbp r9 overflow;
(* mov    %r13,%rdx *)
mov rdx r13;
(* adcx   %r11,%r9 *)
adcs carry r9 r11 r9 carry;
(* adox   %r11,%r10 *)
adc r10 r11 r10 overflow;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;

mov t0 r12;
mov t1 r13;
mov t2 r8;
mov t3 r9;
mov t4 r10;

{
  eqmod
    ((limbs 64 [a0, a1, a2, a3]) *
     (limbs 64 [b0, b1, b2, b3]))

    (limbs 64 [0, 0, 0, 0,
               t0, t1, t2, t3, t4])

    (limbs 64 [m0, m1, m2, m3])
&&
  t4 < const 64 2
}
