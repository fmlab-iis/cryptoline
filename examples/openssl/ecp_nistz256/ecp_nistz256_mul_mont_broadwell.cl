proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{ true && true }

mov p0 18446744073709551615@uint64; (* FFFFFFFFFFFFFFFF *)
mov p1 4294967295@uint64;           (* 00000000FFFFFFFF *)
mov p2 0@uint64;                    (* 0000000000000000 *)
mov p3 18446744069414584321@uint64; (* FFFFFFFF00000001 *)

mov L0x62c080 a0;
mov L0x62c088 a1;
mov L0x62c090 a2;
mov L0x62c098 a3;

mov L0x62c0a0 b0;
mov L0x62c0a8 b1;
mov L0x62c0b0 b2;
mov L0x62c0b8 b3;

mov L0x427008 p1;
mov L0x427018 p3;

(* mov    (%rdx),%rdx                              #! EA = L0x62c0a0 *)
mov rdx L0x62c0a0;
(* mov    (%rsi),%r9                               #! EA = L0x62c080 *)
mov r9 L0x62c080;
(* mov    0x8(%rsi),%r10                           #! EA = L0x62c088 *)
mov r10 L0x62c088;
(* mov    0x10(%rsi),%r11                          #! EA = L0x62c090 *)
mov r11 L0x62c090;
(* mov    0x18(%rsi),%r12                          #! EA = L0x62c098 *)
mov r12 L0x62c098;
(* mulx   %r9,%r8,%r9 *)
mull r9 r8 r9 rdx;
(* mulx   %r10,%rcx,%r10 *)
mull r10 rcx r10 rdx;
(* mov    $0x20,%r14 *)
mov r14 32@uint64;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   %r11,%rbp,%r11 *)
mull r11 rbp r11 rdx;
(* mov    -0x9a8(%rip),%r15        # 0x427018      #! EA = L0x427018 *)
mov r15 L0x427018;
(* adc    %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* mulx   %r12,%rcx,%r12 *)
mull r12 rcx r12 rdx;
(* mov    %r8,%rdx *)
mov rdx r8;
(* adc    %rbp,%r10 *)
adcs carry r10 rbp r10 carry;
(* shlx   %r14,%r8,%rbp *)
(* shl rbp r8 32; *)
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* shrx   %r14,%r8,%rcx *)
(* split rcx tmp r8 32; *)
(* NOTE: merge 'shlx %r14,%r8,%rbp' with shrx %r14,%r8,%rcx' *)
split rcx rbp r8 32;
shl rbp rbp 32;
(* adc    $0x0,%r12 *)
adc r12 r12 0@uint64 carry;
(* add    %rbp,%r9 *)
adds carry r9 rbp r9;
(* adc    %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* mulx   %r15,%rcx,%rbp *)
mull rbp rcx r15 rdx;
(* mov    0x8(%rbx),%rdx                           #! EA = L0x62c0a8 *)
mov rdx L0x62c0a8;
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adc    %rbp,%r12 *)
adcs carry r12 rbp r12 carry;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x62c080 *)
mull rbp rcx L0x62c080 rdx;
(* adcx   %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adox   %rbp,%r10 *)
adcs overflow r10 rbp r10 overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x62c088 *)
mull rbp rcx L0x62c088 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x62c090 *)
mull rbp rcx L0x62c090 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x62c098 *)
mull rbp rcx L0x62c098 rdx;
(* mov    %r9,%rdx *)
mov rdx r9;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* shlx   %r14,%r9,%rcx *)
(* shl rcx r9 32; *)
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* shrx   %r14,%r9,%rbp *)
(* split rbp tmp r9 32; *)
(* NOTE: merge 'shlx %r14,%r9,%rcx' with shrx %r14,%r9,%rbp' *)
split rbp rcx r9 32;
shl rcx rcx 32;
(* adcx   %r8,%r13 *)
adcs carry r13 r8 r13 carry;
(* adox   %r8,%r8 *)
(* adcs overflow r8 r8 r8 overflow; *)
(* NOTE: ignore overflow because it is zero *)
adc r8 r8 r8 overflow;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* add    %rcx,%r10 *)
adds carry r10 rcx r10;
(* adc    %rbp,%r11 *)
adcs carry r11 rbp r11 carry;
(* mulx   %r15,%rcx,%rbp *)
mull rbp rcx r15 rdx;
(* mov    0x10(%rbx),%rdx                          #! EA = L0x62c0b0 *)
mov rdx L0x62c0b0;
(* adc    %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adc    %rbp,%r13 *)
adcs carry r13 rbp r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x62c080 *)
mull rbp rcx L0x62c080 rdx;
(* adcx   %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adox   %rbp,%r11 *)
adcs overflow r11 rbp r11 overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x62c088 *)
mull rbp rcx L0x62c088 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x62c090 *)
mull rbp rcx L0x62c090 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x62c098 *)
mull rbp rcx L0x62c098 rdx;
(* mov    %r10,%rdx *)
mov rdx r10;
(* adcx   %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* shlx   %r14,%r10,%rcx *)
(* shl rcx r10 32; *)
(* adox   %rbp,%r8 *)
adcs overflow r8 rbp r8 overflow;
(* shrx   %r14,%r10,%rbp *)
(* split rbp tmp r10 32; *)
(* NOTE: merge 'shlx %r14,%r10,%rcx' with shrx %r14,%r10,%rbp' *)
split rbp rcx r10 32;
shl rcx rcx 32;
(* adcx   %r9,%r8 *)
adcs carry r8 r9 r8 carry;
(* adox   %r9,%r9 *)
(* adcs overflow r9 r9 r9 overflow; *)
(* NOTE: ignore overflow because it is zero *)
adc r9 r9 r9 overflow;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* add    %rcx,%r11 *)
adds carry r11 rcx r11;
(* adc    %rbp,%r12 *)
adcs carry r12 rbp r12 carry;
(* mulx   %r15,%rcx,%rbp *)
mull rbp rcx r15 rdx;
(* mov    0x18(%rbx),%rdx                          #! EA = L0x62c0b8 *)
mov rdx L0x62c0b8;
(* adc    %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* adc    %rbp,%r8 *)
adcs carry r8 rbp r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* xor    %r10,%r10 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   0x80(%rsi),%rcx,%rbp                     #! EA = L0x62c080 *)
mull rbp rcx L0x62c080 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   0x88(%rsi),%rcx,%rbp                     #! EA = L0x62c088 *)
mull rbp rcx L0x62c088 rdx;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* mulx   0x90(%rsi),%rcx,%rbp                     #! EA = L0x62c090 *)
mull rbp rcx L0x62c090 rdx;
(* adcx   %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
(* adox   %rbp,%r8 *)
adcs overflow r8 rbp r8 overflow;
(* mulx   0x98(%rsi),%rcx,%rbp                     #! EA = L0x62c098 *)
mull rbp rcx L0x62c098 rdx;
(* mov    %r11,%rdx *)
mov rdx r11;
(* adcx   %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* shlx   %r14,%r11,%rcx *)
(* shl rcx r11 32; *)
(* adox   %rbp,%r9 *)
adcs overflow r9 rbp r9 overflow;
(* shrx   %r14,%r11,%rbp *)
(* split rbp tmp r11 32; *)
(* NOTE: merge 'shlx %r14,%r11,%rcx' with shrx %r14,%r11,%rbp' *)
split rbp rcx r11 32;
shl rcx rcx 32;
(* adcx   %r10,%r9 *)
adcs carry r9 r10 r9 carry;
(* adox   %r10,%r10 *)
(* adcs overflow r10 r10 r10 overflow; *)
(* NOTE: ignore overflow because it is zero *)
adc r10 r10 r10 overflow;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* add    %rcx,%r12 *)
adds carry r12 rcx r12;
(* adc    %rbp,%r13 *)
adcs carry r13 rbp r13 carry;
(* mulx   %r15,%rcx,%rbp *)
mull rbp rcx r15 rdx;
(* mov    %r12,%rbx *)
mov rbx r12;
(* mov    -0xb93(%rip),%r14        # 0x427008      #! EA = L0x427008 *)
mov r14 L0x427008;
(* adc    %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* mov    %r13,%rdx *)
mov rdx r13;
(* adc    %rbp,%r9 *)
adcs carry r9 rbp r9 carry;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;

mov t0 r12;
mov t1 r13;
mov t2 r8;
mov t3 r9;
mov t4 r10;

{
    eqmod
       (
         (limbs 64 [a0, a1, a2, a3])
         *
         (limbs 64 [b0, b1, b2, b3])
       )

       (
         (limbs 64 [0, 0, 0, 0,
                    t0, t1, t2, t3,
                    t4])
       )

       (
         (limbs 64 [p0, p1, p2, p3])
       )
  &&
    t4 < const 64 (2**1)
}
