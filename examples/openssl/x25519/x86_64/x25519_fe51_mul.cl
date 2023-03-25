proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
{
  true
  &&
  and
  [
    a0 < const 64 (2**51),
    a1 < const 64 (2**51),
    a2 < const 64 (2**51),
    a3 < const 64 (2**51),
    a4 < const 64 (2**51),
    b0 < const 64 (2**51),
    b1 < const 64 (2**51),
    b2 < const 64 (2**51),
    b3 < const 64 (2**51),
    b4 < const 64 (2**51)
  ]
}

mov L0x603060 a0;
mov L0x603068 a1;
mov L0x603070 a2;
mov L0x603078 a3;
mov L0x603080 a4;

mov L0x6030a0 b0;
mov L0x6030a8 b1;
mov L0x6030b0 b2;
mov L0x6030b8 b3;
mov L0x6030c0 b4;

nondet rdi@uint64;

(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mov    (%rdx),%r11                              #! EA = L0x6030a0 *)
mov r11 L0x6030a0;
(* mov    0x8(%rdx),%r12                           #! EA = L0x6030a8 *)
mov r12 L0x6030a8;
(* mov    0x10(%rdx),%r13                          #! EA = L0x6030b0 *)
mov r13 L0x6030b0;
(* mov    0x18(%rdx),%rbp                          #! EA = L0x6030b8 *)
mov rbp L0x6030b8;
(* mov    0x20(%rdx),%r14                          #! EA = L0x6030c0 *)
mov r14 L0x6030c0;
(* mov    %rdi,0x20(%rsp)                          #! EA = L0x7fffffffdb90 *)
mov L0x7fffffffdb90 rdi;
(* mov    %rax,%rdi *)
mov rdi rax;
(* mul    %r11 *)
mull rdx rax r11 rax;
(* mov    %r11,(%rsp)                              #! EA = L0x7fffffffdb70 *)
mov L0x7fffffffdb70 r11;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdi,%rax *)
mov rax rdi;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffdb78 *)
mov L0x7fffffffdb78 r12;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdi,%rax *)
mov rax rdi;
(* lea    (%r14,%r14,8),%r15                       #! EA = L0x177008593f1a0af2 *)
mul r15 r14 9@uint64;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* mov    %r13,0x10(%rsp)                          #! EA = L0x7fffffffdb80 *)
mov L0x7fffffffdb80 r13;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdi,%rax *)
mov rax rdi;
(* lea    (%r14,%r15,2),%rdi                       #! EA = L0x317abc4aa1a8c1c6 *)
mul rdi r15 2@uint64;
add rdi rdi r14;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070; *)
mov rax L0x603070;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    0x20(%rsi),%rax                          #! EA = L0x603080 *)
mov rax L0x603080;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* imul   $0x13,%rbp,%rdi *)
mul rdi rbp 19@uint64;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* mov    0x10(%rsp),%rbp                          #! EA = L0x7fffffffdb80 *)
mov rbp L0x7fffffffdb80;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    0x20(%rsi),%rax                          #! EA = L0x603080 *)
mov rax L0x603080;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* imul   $0x13,%rbp,%rdi *)
mul rdi rbp 19@uint64;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* mov    0x8(%rsp),%rbp                           #! EA = L0x7fffffffdb78 *)
mov rbp L0x7fffffffdb78;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* mov    0x20(%rsi),%rax                          #! EA = L0x603080 *)
mov rax L0x603080;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* imul   $0x13,%rbp,%rdi *)
mul rdi rbp 19@uint64;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* mov    (%rsp),%rbp                              #! EA = L0x7fffffffdb70 *)
mov rbp L0x7fffffffdb70;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* mov    0x20(%rsi),%rax                          #! EA = L0x603080 *)
mov rax L0x603080;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    0x20(%rsi),%rax                          #! EA = L0x603080 *)
mov rax L0x603080;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mov    0x20(%rsp),%rdi                          #! EA = L0x7fffffffdb90 *)
mov rdi L0x7fffffffdb90;

(* #jmpq   0x400a20 <x25519_fe51_sqr+256> *)
#jmpq   0x400a20 <x25519_fe51_sqr+256>;



(* movabs $0x7ffffffffffff,%rbp *)
mov rbp 0x7ffffffffffff@uint64;

(* mov    %r10,%rdx *)
mov rdx r10;
(* shr    $0x33,%r10 *)
split r10 tmp r10 51;
(* shl    $0xd,%r11 *)
shl r11 r11 13@uint64;
(* and    %rbp,%rdx *)
split dontcare rdx rdx 51;
assert true && dontcare = r10;
assume dontcare = r10 && true;
assert true && tmp = rdx;
assume tmp = rdx && true;
(* or     %r10,%r11 *)
add r11 r10 r11;
(* add    %r11,%r12 *)
adds carry r12 r11 r12;
(* adc    $0x0,%r13 *)
adc r13 0@uint64 r13 carry;

(* mov    %rbx,%rax *)
mov rax rbx;
(* shr    $0x33,%rbx *)
split rbx tmp rbx 51;
(* shl    $0xd,%rcx *)
shl rcx rcx 13@uint64;
(* and    %rbp,%rax *)
split dontcare rax rax 51;
assert true && dontcare = rbx;
assume dontcare = rbx && true;
assert true && tmp = rax;
assume tmp = rax && true;
(* or     %rbx,%rcx *)
add rcx rbx rcx;
(* add    %rcx,%r8 *)
adds carry r8 rcx r8;
(* adc    $0x0,%r9 *)
adc r9 0@uint64 r9 carry;

(* mov    %r12,%rbx *)
mov rbx r12;
(* shr    $0x33,%r12 *)
split r12 tmp r12 51;
(* shl    $0xd,%r13 *)
shl r13 r13 13@uint64;
(* and    %rbp,%rbx *)
split dontcare rbx rbx 51;
assert true && dontcare = r12;
assume dontcare = r12 && true;
assert true && tmp = rbx;
assume tmp = rbx && true;
(* or     %r12,%r13 *)
add r13 r12 r13;
(* add    %r13,%r14 *)
adds carry r14 r13 r14;
(* adc    $0x0,%r15 *)
adc r15 0@uint64 r15 carry;

(* mov    %r8,%rcx *)
mov rcx r8;
(* shr    $0x33,%r8 *)
split r8 tmp r8 51;
(* shl    $0xd,%r9 *)
shl r9 r9 13@uint64;
(* and    %rbp,%rcx *)
split dontcare rcx rcx 51;
assert true && dontcare = r8;
assume dontcare = r8 && true;
assert true && tmp = rcx;
assume tmp = rcx && true;
(* or     %r8,%r9 *)
add r9 r8 r9;
(* add    %r9,%rdx *)
adds carry rdx r9 rdx;
assert true && carry = 0@1;
assume carry = 0 && true;

(* mov    %r14,%r10 *)
mov r10 r14;
(* shr    $0x33,%r14 *)
split r14 tmp r14 51;
(* shl    $0xd,%r15 *)
shl r15 r15 13@uint64;
(* and    %rbp,%r10 *)
split dontcare r10 r10 51;
assert true && dontcare = r14;
assume dontcare = r14 && true;
assert true && tmp = r10;
assume tmp = r10 && true;
(* or     %r14,%r15 *)
add r15 r14 r15;



(* lea    (%r15,%r15,8),%r14                       #! EA = L0x5705d48 *)
(* lea    (%r15,%r14,2),%r15                       #! EA = L0xb7b6f98 *)
(* this line is unused *)
mul r14 r15 9@uint64;
mul r15 r15 19@uint64;
(* add    %r15,%rax *)
adds carry rax r15 rax;
assert true && carry = 0@1;
assume carry = 0 && true;

(* mov    %rdx,%r8 *)
mov r8 rdx;
(* and    %rbp,%rdx *)
split dontcare rdx rdx 51;
(* shr    $0x33,%r8 *)
split r8 tmp r8 51;
assert true && dontcare = r8;
assume dontcare = r8 && true;
assert true && tmp = rdx;
assume tmp = rdx && true;
(* add    %r8,%rbx *)
adds carry rbx r8 rbx;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rax,%r9 *)
mov r9 rax;
(* and    %rbp,%rax *)
split dontcare rax rax 51;
(* shr    $0x33,%r9 *)
split r9 tmp r9 51;
assert true && dontcare = r9;
assume dontcare = r9 && true;
assert true && tmp = rax;
assume tmp = rax && true;
(* add    %r9,%rcx *)
adds carry rcx r9 rcx;
assert true && carry = 0@1;
assume carry = 0 && true;

{
  eqmod
    (
      (limbs 51 [a0, a1, a2, a3, a4])
      *
      (limbs 51 [b0, b1, b2, b3, b4])
    )
    (limbs 51 [rax, rcx, rdx, rbx, r10])
    (2**255 - 19)
  &&
  true
}
