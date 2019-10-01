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

mov L0x62d0a0 a0;
mov L0x62d0a8 a1;
mov L0x62d0b0 a2;
mov L0x62d0b8 a3;

mov L0x62d080 b0;
mov L0x62d088 b1;
mov L0x62d090 b2;
mov L0x62d098 b3;

mov L0x4270c0 m0;
mov L0x4270c8 m1;
mov L0x4270d0 m2;
mov L0x4270d8 m3;

mov L0x4270e0 14758798090332847183@uint64; (* CCD1C8AAEE00BC4F *)

(* mov    (%rdx),%rax                              #! EA = L0x62d080 *)
mov rax L0x62d080;
(* mov    %rdx,%rbx *)
(* mov rbx rdx; *)
(* lea    -0x40e(%rip),%r14        # 0x4270c0      #! EA = L0x4270c0 *)
mov r14 L0x4270c0;
(* mov    -0x3f5(%rip),%r15        # 0x4270e0      #! EA = L0x4270e0 *)
mov r15 L0x4270e0;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mulq   (%rsi)                                   #! EA = L0x62d0a0 *)
mull rdx rax L0x62d0a0 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62d0a8 *)
mull rdx rax L0x62d0a8 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62d0b0 *)
mull rdx rax L0x62d0b0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r8,%r13 *)
mov r13 r8;
(* imul   %r15,%r8 *)
mull tmp r8 r15 r8;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62d0b8 *)
mull rdx rax L0x62d0b8 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r12 *)
mov r12 rdx;
(* mulq   (%r14)                                   #! EA = L0x4270c0 *)
mull rdx rax L0x4270c0 rax;
(* mov    %r8,%rbp *)
mov rbp r8;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* r13 = 0 *)
assert (eqmod r13 0 (2**64)) && true;
assume (eq r13 0) && true;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* sub    %r8,%r10 *)
subb carry r10 r10 r8;
(* sbb    $0x0,%r8 *)
(* sbbs carry r8 r8 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
sbb r8 r8 0@uint64 carry;
clear carry;
(* mulq   0x8(%r14)                                #! EA = L0x4270c8 *)
mull rdx rax L0x4270c8 rax;
(* add    %rcx,%r9 *)
adds carry r9 rcx r9;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    %rdx,%r10 *)
adcs carry r10 rdx r10 carry;
(* mov    %rbp,%rdx *)
mov rdx rbp;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* shl    $0x20,%rax *)
(* shr    $0x20,%rdx *)
(* NOTE: merge shl and shr *)
split rdx rax rax 32;
shl rax rax 32;
(* sub    %rax,%r11 *)
subb carry r11 r11 rax;
(* mov    0x8(%rbx),%rax                           #! EA = L0x62d088 *)
mov rax L0x62d088;
(* sbb    %rdx,%rbp *)
(* sbbs carry rbp rbp rdx carry; *)
(* NOTE: ignore carry because it is zero *)
sbb rbp rbp rdx carry;
clear carry;
(* add    %r8,%r11 *)
adds carry r11 r8 r11;
(* adc    %rbp,%r12 *)
adcs carry r12 rbp r12 carry;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mulq   (%rsi)                                   #! EA = L0x62d0a0 *)
mull rdx rax L0x62d0a0 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62d0a8 *)
mull rdx rax L0x62d0a8 rax;
(* add    %rbp,%r10 *)
adds carry r10 rbp r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62d0b0 *)
mull rdx rax L0x62d0b0 rax;
(* add    %rbp,%r11 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r9,%rcx *)
mov rcx r9;
(* imul   %r15,%r9 *)
mull tmp r9 r15 r9;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62d0b8 *)
mull rdx rax L0x62d0b8 rax;
(* add    %rbp,%r12 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %r9,%rax *)
mov rax r9;
(* adc    %rdx,%r13 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* mulq   (%r14)                                   #! EA = L0x4270c0 *)
mull rdx rax L0x4270c0 rax;
(* mov    %r9,%rbp *)
mov rbp r9;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* rcx = 0 *)
assert (eqmod rcx 0 (2**64)) && true;
assume (eq rcx 0) && true;
(* mov    %r9,%rax *)
mov rax r9;
(* adc    %rdx,%rcx *)
(* adcs carry rcx rdx rcx carry; *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
clear carry;
(* sub    %r9,%r11 *)
subb carry r11 r11 r9;
(* sbb    $0x0,%r9 *)
(* sbbs carry r9 r9 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
sbb r9 r9 0@uint64 carry;
clear carry;
(* mulq   0x8(%r14)                                #! EA = L0x4270c8 *)
mull rdx rax L0x4270c8 rax;
(* add    %rcx,%r10 *)
adds carry r10 rcx r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    %rdx,%r11 *)
adcs carry r11 rdx r11 carry;
(* mov    %rbp,%rdx *)
mov rdx rbp;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* shl    $0x20,%rax *)
(* shr    $0x20,%rdx *)
(* NOTE: merge shl and shr *)
split rdx rax rax 32;
shl rax rax 32;
(* sub    %rax,%r12 *)
subb carry r12 r12 rax;
(* mov    0x10(%rbx),%rax                          #! EA = L0x62d090 *)
mov rax L0x62d090;
(* sbb    %rdx,%rbp *)
(* sbbs carry rbp rbp rdx carry; *)
(* NOTE: ignore carry because it is zero *)
sbb rbp rbp rdx carry;
clear carry;
(* add    %r9,%r12 *)
adds carry r12 r9 r12;
(* adc    %rbp,%r13 *)
adcs carry r13 rbp r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mulq   (%rsi)                                   #! EA = L0x62d0a0 *)
mull rdx rax L0x62d0a0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62d0a8 *)
mull rdx rax L0x62d0a8 rax;
(* add    %rbp,%r11 *)
adds carry r11 rbp r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62d0b0 *)
mull rdx rax L0x62d0b0 rax;
(* add    %rbp,%r12 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r10,%rcx *)
mov rcx r10;
(* imul   %r15,%r10 *)
mull tmp r10 r15 r10;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62d0b8 *)
mull rdx rax L0x62d0b8 rax;
(* add    %rbp,%r13 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    %r10,%rax *)
mov rax r10;
(* adc    %rdx,%r8 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* mulq   (%r14)                                   #! EA = L0x4270c0 *)
mull rdx rax L0x4270c0 rax;
(* mov    %r10,%rbp *)
mov rbp r10;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* rcx = 0 *)
assert (eqmod rcx 0 (2**64)) && true;
assume (eq rcx 0) && true;
(* mov    %r10,%rax *)
mov rax r10;
(* adc    %rdx,%rcx *)
(* adcs carry rcx rdx rcx carry; *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
clear carry;
(* sub    %r10,%r12 *)
subb carry r12 r12 r10;
(* sbb    $0x0,%r10 *)
(* sbbs carry r10 r10 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
sbb r10 r10 0@uint64 carry;
clear carry;
(* mulq   0x8(%r14)                                #! EA = L0x4270c8 *)
mull rdx rax L0x4270c8 rax;
(* add    %rcx,%r11 *)
adds carry r11 rcx r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    %rdx,%r12 *)
adcs carry r12 rdx r12 carry;
(* mov    %rbp,%rdx *)
mov rdx rbp;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* shl    $0x20,%rax *)
(* shr    $0x20,%rdx *)
(* NOTE: merge shl and shr *)
split rdx rax rax 32;
shl rax rax 32;
(* sub    %rax,%r13 *)
subb carry r13 r13 rax;
(* mov    0x18(%rbx),%rax                          #! EA = L0x62d098 *)
mov rax L0x62d098;
(* sbb    %rdx,%rbp *)
(* sbbs carry rbp rbp rdx carry; *)
(* NOTE: ignore carry because it is zero *)
sbb rbp rbp rdx carry;
clear carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    %rbp,%r8 *)
adcs carry r8 rbp r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mulq   (%rsi)                                   #! EA = L0x62d0a0 *)
mull rdx rax L0x62d0a0 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x62d0a8 *)
mull rdx rax L0x62d0a8 rax;
(* add    %rbp,%r12 *)
adds carry r12 rbp r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x62d0b0 *)
mull rdx rax L0x62d0b0 rax;
(* add    %rbp,%r13 *)
adds carry r13 rbp r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    %rcx,%rax *)
mov rax rcx;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r11,%rcx *)
mov rcx r11;
(* imul   %r15,%r11 *)
mull tmp r11 r15 r11;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x62d0b8 *)
mull rdx rax L0x62d0b8 rax;
(* add    %rbp,%r8 *)
adds carry r8 rbp r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* xor    %r10,%r10 *)
mov r10 0@uint64;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    %r11,%rax *)
mov rax r11;
(* adc    %rdx,%r9 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* mulq   (%r14)                                   #! EA = L0x4270c0 *)
mull rdx rax L0x4270c0 rax;
(* mov    %r11,%rbp *)
mov rbp r11;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* rcx = 0 *)
assert (eqmod rcx 0 (2**64)) && true;
assume (eq rcx 0) && true;
(* mov    %r11,%rax *)
mov rax r11;
(* adc    %rdx,%rcx *)
(* adcs carry rcx rdx rcx carry; *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
clear carry;
(* sub    %r11,%r13 *)
subb carry r13 r13 r11;
(* sbb    $0x0,%r11 *)
(* sbbs carry r11 r11 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
sbb r11 r11 0@uint64 carry;
clear carry;
(* mulq   0x8(%r14)                                #! EA = L0x4270c8 *)
mull rdx rax L0x4270c8 rax;
(* add    %rcx,%r12 *)
adds carry r12 rcx r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %rbp,%rax *)
mov rax rbp;
(* adc    %rdx,%r13 *)
adcs carry r13 rdx r13 carry;
(* mov    %rbp,%rdx *)
mov rdx rbp;
(* adc    $0x0,%r11 *)
adc r11 r11 0@uint64 carry;
(* shl    $0x20,%rax *)
(* shr    $0x20,%rdx *)
(* NOTE: merge shl and shr *)
split rdx rax rax 32;
shl rax rax 32;
(* sub    %rax,%r8 *)
subb carry r8 r8 rax;
(* sbb    %rdx,%rbp *)
(* sbbs carry rbp rbp rdx carry; *)
(* NOTE: ignore carry because it is zero *)
sbb rbp rbp rdx carry;
clear carry;
(* add    %r11,%r8 *)
adds carry r8 r11 r8;
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
    ((limbs 64 [a0, a1, a2, a3]) *
     (limbs 64 [b0, b1, b2, b3]))

    (limbs 64 [0, 0, 0, 0,
               t0, t1, t2, t3, t4])

    (limbs 64 [m0, m1, m2, m3])
&&
  t4 < const 64 2
}
