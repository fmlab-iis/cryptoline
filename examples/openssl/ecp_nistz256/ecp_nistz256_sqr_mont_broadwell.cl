proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{ true && true }

mov p0 18446744073709551615@uint64; (* FFFFFFFFFFFFFFFF *)
mov p1 4294967295@uint64;           (* 00000000FFFFFFFF *)
mov p2 0@uint64;                    (* 0000000000000000 *)
mov p3 18446744069414584321@uint64; (* FFFFFFFF00000001 *)

mov L0x62c080 a0;
mov L0x62c088 a1;
mov L0x62c090 a2;
mov L0x62c098 a3;
mov L0x427008 p1;
mov L0x427018 p3;

(* multiplication *)

(* mov    (%rsi),%rdx                              #! EA = L0x62c080 *)
mov rdx L0x62c080;
(* mov    0x8(%rsi),%r14                           #! EA = L0x62c088 *)
mov r14 L0x62c088;
(* mov    0x10(%rsi),%r15                          #! EA = L0x62c090 *)
mov r15 L0x62c090;
(* mov    0x18(%rsi),%r8                           #! EA = L0x62c098 *)
mov r8 L0x62c098;
(* mulx   %r14,%r9,%r10 *)
mull r10 r9 r14 rdx;
(* mulx   %r15,%rcx,%r11 *)
mull r11 rcx r15 rdx;
(* xor    %eax,%eax *)
mov eax 0@uint64;
clear carry;
clear overflow;
(* adc    %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* mulx   %r8,%rbp,%r12 *)
mull r12 rbp r8 rdx;
(* mov    %r14,%rdx *)
mov rdx r14;
(* adc    %rbp,%r11 *)
adcs carry r11 rbp r11 carry;
(* adc    $0x0,%r12 *)
adc r12 r12 0@uint64 carry;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
clear carry;
clear overflow;

(* mulx   %r15,%rcx,%rbp *)
mull rbp rcx r15 rdx;
(* adcx   %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adox   %rbp,%r12 *)
adcs overflow r12 rbp r12 overflow;
(* mulx   %r8,%rcx,%rbp *)
mull rbp rcx r8 rdx;
(* mov    %r15,%rdx *)
mov rdx r15;
(* adcx   %rcx,%r12 *)
adcs carry r12 rcx r12 carry;
(* adox   %rbp,%r13 *)
(* adcs overflow r13 rbp r13 overflow; *)
(* NOTE: ignore overflow because it is zero *)
adc r13 rbp r13 overflow;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;

(* mulx   %r8,%rcx,%r14 *)
mull r14 rcx r8 rdx;
(* mov    0x80(%rsi),%rdx                          #! EA = L0x62c080 *)
mov rdx L0x62c080;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* adcx   %r9,%r9 *)
adcs carry r9 r9 r9 carry;
(* adox   %rcx,%r13 *)
adcs overflow r13 rcx r13 overflow;
(* adcx   %r10,%r10 *)
adcs carry r10 r10 r10 carry;
(* adox   %r15,%r14 *)
(* adcs overflow r14 r15 r14 overflow; *)
(* NOTE: ignore overflow because it is zero *)
adc r14 r15 r14 overflow;
(* NOTE: clear overflow since it is zero *)
clear overflow;

(* mulx   %rdx,%r8,%rbp *)
mull rbp r8 rdx rdx;
(* mov    0x88(%rsi),%rdx                          #! EA = L0x62c088 *)
mov rdx L0x62c088;
(* adcx   %r11,%r11 *)
adcs carry r11 r11 r11 carry;
(* adox   %rbp,%r9 *)
adcs overflow r9 rbp r9 overflow;
(* adcx   %r12,%r12 *)
adcs carry r12 r12 r12 carry;
(* mulx   %rdx,%rcx,%rax *)
mull rax rcx rdx rdx;
(* mov    0x90(%rsi),%rdx                          #! EA = L0x62c090 *)
mov rdx L0x62c090;
(* adcx   %r13,%r13 *)
adcs carry r13 r13 r13 carry;
(* adox   %rcx,%r10 *)
adcs overflow r10 rcx r10 overflow;
(* adcx   %r14,%r14 *)
adcs carry r14 r14 r14 carry;
(* addr32 mulx %rdx,%rcx,%rbp *)
mull rbp rcx rdx rdx;
(* mov    0x98(%rsi),%rdx                          #! EA = L0x62c098 *)
mov rdx L0x62c098;
(* adox   %rax,%r11 *)
adcs overflow r11 rax r11 overflow;
(* adcx   %r15,%r15 *)
(* adcs carry r15 r15 r15 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r15 r15 r15 carry;
(* adox   %rcx,%r12 *)
adcs overflow r12 rcx r12 overflow;
(* mov    $0x20,%rsi *)
mov rsi 32@uint64;
(* adox   %rbp,%r13 *)
adcs overflow r13 rbp r13 overflow;
(* addr32 addr32 mulx %rdx,%rcx,%rax *)
mull rax rcx rdx rdx;
(* mov    -0xccf(%rip),%rdx        # 0x427018      #! EA = L0x427018 *)
mov rdx L0x427018;
(* adox   %rcx,%r14 *)
adcs overflow r14 rcx r14 overflow;
(* shlx   %rsi,%r8,%rcx *)
(* shl rcx r8 32; *)
(* adox   %rax,%r15 *)
(* adcs overflow r15 rax r15 overflow; *)
(* NOTE: ignore overflow because it is zero *)
adc r15 rax r15 overflow;

(* reduction *)

(* shrx   %rsi,%r8,%rax *)
(* split rax tmp r8 32; *)
(* NOTE: merge 'shlx %rsi,%r8,%rcx' and 'shrx %rsi,%r8,%rax' *)
split rax rcx r8 32;
shl rcx rcx 32;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* add    %rcx,%r9 *)
adds carry r9 rcx r9;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;

(* mulx   %r8,%rcx,%r8 *)
mull r8 rcx r8 rdx;
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* shlx   %rsi,%r9,%rcx *)
(* shl rcx r9 32; *)
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* shrx   %rsi,%r9,%rax *)
(* split rax tmp r9 32; *)
(* NOTE: merge 'shlx %rsi,%r9,%rcx' and 'shrx %rsi,%r9,%rax' *)
split rax rcx r9 32;
shl rcx rcx 32;

(* add    %rcx,%r10 *)
adds carry r10 rcx r10;
(* adc    %rax,%r11 *)
adcs carry r11 rax r11 carry;

(* mulx   %r9,%rcx,%r9 *)
mull r9 rcx r9 rdx;
(* adc    %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* shlx   %rsi,%r10,%rcx *)
(* shl rcx r10 32; *)
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* shrx   %rsi,%r10,%rax *)
(* split rax tmp r10 32; *)
(* NOTE: merge 'shlx %rsi,%r10,%rcx' and 'shrx %rsi,%r10,%rax' *)
split rax rcx r10 32;
shl rcx rcx 32;

(* add    %rcx,%r11 *)
adds carry r11 rcx r11;
(* adc    %rax,%r8 *)
adcs carry r8 rax r8 carry;

(* mulx   %r10,%rcx,%r10 *)
mull r10 rcx r10 rdx;
(* adc    %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* shlx   %rsi,%r11,%rcx *)
(* shl rcx r11 32; *)
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* shrx   %rsi,%r11,%rax *)
(* split rax tmp r11 32; *)
(* NOTE: merge 'shlx %rsi,%r11,%rcx' and 'shrx %rsi,%r11,%rax' *)
split rax rcx r11 32;
shl rcx rcx 32;

(* add    %rcx,%r8 *)
adds carry r8 rcx r8;
(* adc    %rax,%r9 *)
adcs carry r9 rax r9 carry;

(* mulx   %r11,%rcx,%r11 *)
mull r11 rcx r11 rdx;
(* adc    %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adc    $0x0,%r11 *)
adc r11 r11 0@uint64 carry;

(* xor    %rdx,%rdx *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* add    %r8,%r12 *)
adds carry r12 r8 r12;
(* mov    -0xd6b(%rip),%rsi        # 0x427008      #! EA = L0x427008 *)
mov rsi L0x427008;
(* adc    %r9,%r13 *)
adcs carry r13 r9 r13 carry;
(* mov    %r12,%r8 *)
mov r8 r12;
(* adc    %r10,%r14 *)
adcs carry r14 r10 r14 carry;
(* adc    %r11,%r15 *)
adcs carry r15 r11 r15 carry;
(* mov    %r13,%r9 *)
mov r9 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;

mov t0 r12;
mov t1 r13;
mov t2 r14;
mov t3 r15;
mov t4 rdx;

{
     eqmod
       (
         (limbs 64 [a0, a1, a2, a3])
         *
         (limbs 64 [a0, a1, a2, a3])
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