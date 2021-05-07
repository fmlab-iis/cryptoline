proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4) =
{
  true
  &&
  and
  [
    x0 < const 64 (2**51),
    x1 < const 64 (2**51),
    x2 < const 64 (2**51),
    x3 < const 64 (2**51),
    x4 < const 64 (2**51)
  ]
}


mov L0x6030a0 x0;
mov L0x6030a8 x1;
mov L0x6030b0 x2;
mov L0x6030b8 x3;
mov L0x6030c0 x4;

(* mov    $0x1db42,%eax *)
mov rax 121666@uint64;

(* mulq   (%rsi)                                   #! EA = L0x6030a0 *)
mull rdx rax L0x6030a0 rax;
(* mov    %rax,%rbx *)
mov rbx rax;

(* mov    $0x1db42,%eax *)
mov rax 121666@uint64;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mulq   0x8(%rsi)                                #! EA = L0x6030a8 *)
mull rdx rax L0x6030a8 rax;
(* mov    %rax,%r8 *)
mov r8 rax;

(* mov    $0x1db42,%eax *)
mov rax 121666@uint64;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mulq   0x10(%rsi)                               #! EA = L0x6030b0 *)
mull rdx rax L0x6030b0 rax;
(* mov    %rax,%r10 *)
mov r10 rax;

(* mov    $0x1db42,%eax *)
mov rax 121666@uint64;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x6030b8 *)
mull rdx rax L0x6030b8 rax;
(* mov    %rax,%r12 *)
mov r12 rax;

(* mov    $0x1db42,%eax *)
mov rax 121666@uint64;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x6030c0 *)
mull rdx rax L0x6030c0 rax;
(* mov    %rax,%r14 *)
mov r14 rax;

(* mov    %rdx,%r15 *)
mov r15 rdx;

(* #jmpq   0x400a20 <x25519_fe51_sqr+256> *)
#jmpq   0x400a20 <x25519_fe51_sqr+256>;

(* movabs $0x7ffffffffffff,%rbp *)
mov rbp 0x7ffffffffffff@uint64;

(* mov    %r10,%rdx *)
mov rdx r10;
(* shr    $0x33,%r10 *)
split r10 tmp r10 51;
(* shl    $0xd,%r11 *)
shl r11 r11 13;
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
shl rcx rcx 13;
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
shl r13 r13 13;
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
shl r9 r9 13;
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
shl r15 r15 13;
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
(* and rdx@uint64 rbp rdx; *)
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
(* and rax@uint64 rbp rax; *)
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
      (limbs 51 [x0, x1, x2, x3, x4])
      *
      121666
    )
    (limbs 51 [rax, rcx, rdx, rbx, r10])
    (2**255 - 19)
  &&
  true
}
