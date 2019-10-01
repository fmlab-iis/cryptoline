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

(* multiplication *)

(* mov    (%rdx),%rax                              #! EA = L0x62c0a0 *)
mov rax L0x62c0a0;
(* mov    (%rsi),%r9                               #! EA = L0x62c080 *)
mov r9 L0x62c080;
(* mov    0x8(%rsi),%r10                           #! EA = L0x62c088 *)
mov r10 L0x62c088;
(* mov    0x10(%rsi),%r11                          #! EA = L0x62c090 *)
mov r11 L0x62c090;
(* mov    0x18(%rsi),%r12                          #! EA = L0x62c098 *)
mov r12 L0x62c098;
(* mov    %rax,%rbp *)
mov rbp rax;
(* mul    %r9 *)
mull rdx rax r9 rax;
(* mov    -0x525(%rip),%r14        # 0x427008      #! EA = L0x427008 *)
mov r14 L0x427008;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rbp,%rax *)
mov rax rbp;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mul    %r10 *)
mull rdx rax r10 rax;
(* mov    -0x528(%rip),%r15        # 0x427018      #! EA = L0x427018 *)
mov r15 L0x427018;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %r11 *)
mull rdx rax r11 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
(* mov    %rdx,%r12 *)
mov r12 rdx;
(* mov    %r8,%rbp *)
mov rbp r8;
(* shl    $0x20,%r8 *)
(* shl r8 r8 32; *)
(* mul    %r15 *)
mull rdx rax r15 rax;
(* shr    $0x20,%rbp *)
(* split rbp tmp rbp 32; *)
(* NOTE: merge 'shl $0x20,%r8' and 'shr $0x20,%rbp' *)
split rbp r8 r8 32;
shl r8 r8 32;
(* add    %r8,%r9 *)
adds carry r9 r8 r9;
(* adc    %rbp,%r10 *)
adcs carry r10 rbp r10 carry;
(* adc    %rax,%r11 *)
adcs carry r11 rax r11 carry;
(* mov    0x8(%rbx),%rax                           #! EA = L0x62c0a8 *)
mov rax L0x62c0a8;
(* adc    %rdx,%r12 *)
adcs carry r12 rdx r12 carry;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    %rax,%rbp *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x62c080 *)
mull rdx rax L0x62c080 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62c088 *)
mull rdx rax L0x62c088 rax;
(* add    %rcx,%r10 *)
adds carry r10 rcx r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62c090 *)
mull rdx rax L0x62c090 rax;
(* add    %rcx,%r11 *)
adds carry r11 rcx r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62c098 *)
mull rdx rax L0x62c098 rax;
(* add    %rcx,%r12 *)
adds carry r12 rcx r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %r9,%rax *)
mov rax r9;
(* adc    %rdx,%r13 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* mov    %r9,%rbp *)
mov rbp r9;
(* shl    $0x20,%r9 *)
(* shl r9 r9 32; *)
(* mul    %r15 *)
mull rdx rax r15 rax;
(* shr    $0x20,%rbp *)
(* split rbp tmp rbp 32; *)
(* NOTE: merge 'shl $0x20,%r9' and 'shr $0x20,%rbp' *)
split rbp r9 r9 32;
shl r9 r9 32;
(* add    %r9,%r10 *)
adds carry r10 r9 r10;
(* adc    %rbp,%r11 *)
adcs carry r11 rbp r11 carry;
(* adc    %rax,%r12 *)
adcs carry r12 rax r12 carry;
(* mov    0x10(%rbx),%rax                          #! EA = L0x62c0b0 *)
mov rax L0x62c0b0;
(* adc    %rdx,%r13 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    %rax,%rbp *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x62c080 *)
mull rdx rax L0x62c080 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62c088 *)
mull rdx rax L0x62c088 rax;
(* add    %rcx,%r11 *)
adds carry r11 rcx r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62c090 *)
mull rdx rax L0x62c090 rax;
(* add    %rcx,%r12 *)
adds carry r12 rcx r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62c098 *)
mull rdx rax L0x62c098 rax;
(* add    %rcx,%r13 *)
adds carry r13 rcx r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    %r10,%rax *)
mov rax r10;
(* adc    %rdx,%r8 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* mov    %r10,%rbp *)
mov rbp r10;
(* shl    $0x20,%r10 *)
(* shl r10 r10 32; *)
(* mul    %r15 *)
mull rdx rax r15 rax;
(* shr    $0x20,%rbp *)
(* split rbp tmp rbp 32; *)
(* NOTE: merge 'shl $0x20,%r10' and 'shr $0x20,%rbp' *)
split rbp r10 r10 32;
shl r10 r10 32;
(* add    %r10,%r11 *)
adds carry r11 r10 r11;
(* adc    %rbp,%r12 *)
adcs carry r12 rbp r12 carry;
(* adc    %rax,%r13 *)
adcs carry r13 rax r13 carry;
(* mov    0x18(%rbx),%rax                          #! EA = L0x62c0b8 *)
mov rax L0x62c0b8;
(* adc    %rdx,%r8 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* xor    %r10,%r10 *)
mov r10 0@uint64;
(* mov    %rax,%rbp *)
mov rbp rax;
(* mulq   (%rsi)                                   #! EA = L0x62c080 *)
mull rdx rax L0x62c080 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62c088 *)
mull rdx rax L0x62c088 rax;
(* add    %rcx,%r12 *)
adds carry r12 rcx r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62c090 *)
mull rdx rax L0x62c090 rax;
(* add    %rcx,%r13 *)
adds carry r13 rcx r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62c098 *)
mull rdx rax L0x62c098 rax;
(* add    %rcx,%r8 *)
adds carry r8 rcx r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    %r11,%rax *)
mov rax r11;
(* adc    %rdx,%r9 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* mov    %r11,%rbp *)
mov rbp r11;
(* shl    $0x20,%r11 *)
(* shl r11 r11 32; *)
(* mul    %r15 *)
mull rdx rax r15 rax;
(* shr    $0x20,%rbp *)
(* split rbp tmp rbp 32; *)
(* NOTE: merge 'shl $0x20,%r11' and 'shr $0x20,%rbp' *)
split rbp r11 r11 32;
shl r11 r11 32;
(* add    %r11,%r12 *)
adds carry r12 r11 r12;
(* adc    %rbp,%r13 *)
adcs carry r13 rbp r13 carry;
(* mov    %r12,%rcx *)
mov rcx r12;
(* adc    %rax,%r8 *)
adcs carry r8 rax r8 carry;
(* adc    %rdx,%r9 *)
adcs carry r9 rdx r9 carry;
(* mov    %r13,%rbp *)
mov rbp r13;
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