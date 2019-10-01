proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
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

mov L0x7fffffffd700 a0;
mov L0x7fffffffd708 a1;
mov L0x7fffffffd710 a2;
mov L0x7fffffffd718 a3;
mov L0x7fffffffd720 a4;
mov L0x7fffffffd778 b0;
mov L0x7fffffffd780 b1;
mov L0x7fffffffd788 b2;
mov L0x7fffffffd790 b3;
mov L0x7fffffffd798 b4;


(* mov    (%rcx),%rsi                              #! EA = L0x7fffffffd700 *)
mov rsi L0x7fffffffd700;
(* mov    0x8(%rcx),%r8                            #! EA = L0x7fffffffd708 *)
mov r8 L0x7fffffffd708;
(* mov    0x10(%rcx),%r9                           #! EA = L0x7fffffffd710 *)
mov r9 L0x7fffffffd710;
(* mov    0x18(%rcx),%r10                          #! EA = L0x7fffffffd718 *)
mov r10 L0x7fffffffd718;
(* mov    0x20(%rcx),%r11                          #! EA = L0x7fffffffd720 *)
mov r11 L0x7fffffffd720;
(* mov    (%rdx),%rdi                              #! EA = L0x7fffffffd778 *)
mov rdi L0x7fffffffd778;
(* mov    0x8(%rdx),%r12                           #! EA = L0x7fffffffd780 *)
mov r12 L0x7fffffffd780;
(* mov    0x10(%rdx),%r13                          #! EA = L0x7fffffffd788 *)
mov r13 L0x7fffffffd788;
(* mov    0x18(%rdx),%r14                          #! EA = L0x7fffffffd790 *)
mov r14 L0x7fffffffd790;
(* mov    0x20(%rdx),%r15                          #! EA = L0x7fffffffd798 *)
mov r15 L0x7fffffffd798;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* movq   %rax,%xmm0 *)
mov xmm0 rax;
(* movq   %rdx,%xmm1 *)
mov xmm1 rdx;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %r8,%rax *)
mov rax r8;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm2 *)
mov xmm2 rbx;
(* movq   %rcx,%xmm3 *)
mov xmm3 rcx;
(* mov    %r8,%rax *)
mov rax r8;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r9,%rax *)
mov rax r9;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm4 *)
mov xmm4 rbx;
(* movq   %rcx,%xmm5 *)
mov xmm5 rcx;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r9,%rax *)
mov rax r9;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm6 *)
mov xmm6 rbx;
(* movq   %rcx,%xmm7 *)
mov xmm7 rcx;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %rdi *)
mull rdx rax rdi rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r9,%rax *)
mov rax r9;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm8 *)
mov xmm8 rbx;
(* movq   %rcx,%xmm9 *)
mov xmm9 rcx;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %r12 *)
mull rdx rax r12 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %r8,%rax *)
mov rax r8;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r9,%rax *)
mov rax r9;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm10 *)
mov xmm10 rbx;
(* movq   %rcx,%xmm11 *)
mov xmm11 rcx;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %r9,%rax *)
mov rax r9;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm12 *)
mov xmm12 rbx;
(* movq   %rcx,%xmm13 *)
mov xmm13 rcx;
(* mov    %r10,%rax *)
mov rax r10;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rcx *)
adc rcx rdx rcx carry;
(* movq   %rbx,%xmm14 *)
mov xmm14 rbx;
(* movq   %rcx,%xmm15 *)
mov xmm15 rcx;
(* mov    %r11,%rax *)
mov rax r11;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* mov    $0x13,%r15 *)
mov r15 0x13@uint64;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* imul   %r15,%r13 *)
mul r13 r15 r13;
(* add    %rdx,%r13 *)
add r13 rdx r13;
(* mov    %rax,%r12 *)
mov r12 rax;
(* movq   %xmm7,%rcx *)
mov rcx xmm7;
(* movq   %xmm6,%rbx *)
mov rbx xmm6;
(* add    %rbx,%r12 *)
adds carry r12 rbx r12;
(* adc    %rcx,%r13 *)
adc r13 rcx r13 carry;
(* movq   %xmm14,%rax *)
mov rax xmm14;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* movq   %xmm15,%r11 *)
mov r11 xmm15;
(* imul   %r15,%r11 *)
mul r11 r15 r11;
(* add    %rdx,%r11 *)
add r11 rdx r11;
(* mov    %rax,%r10 *)
mov r10 rax;
(* movq   %xmm5,%rcx *)
mov rcx xmm5;
(* movq   %xmm4,%rbx *)
mov rbx xmm4;
(* add    %rbx,%r10 *)
adds carry r10 rbx r10;
(* adc    %rcx,%r11 *)
adc r11 rcx r11 carry;
(* movq   %xmm12,%rax *)
mov rax xmm12;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* movq   %xmm13,%r9 *)
mov r9 xmm13;
(* imul   %r15,%r9 *)
mul r9 r15 r9;
(* add    %rdx,%r9 *)
add r9 rdx r9;
(* mov    %rax,%r8 *)
mov r8 rax;
(* movq   %xmm3,%rcx *)
mov rcx xmm3;
(* movq   %xmm2,%rbx *)
mov rbx xmm2;
(* add    %rbx,%r8 *)
adds carry r8 rbx r8;
(* adc    %rcx,%r9 *)
adc r9 rcx r9 carry;
(* movq   %xmm10,%rax *)
mov rax xmm10;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* movq   %xmm11,%rdi *)
mov rdi xmm11;
(* imul   %r15,%rdi *)
mul rdi r15 rdi;
(* add    %rdx,%rdi *)
add rdi rdx rdi;
(* mov    %rax,%rsi *)
mov rsi rax;
(* movq   %xmm1,%rcx *)
mov rcx xmm1;
(* movq   %xmm0,%rbx *)
mov rbx xmm0;
(* add    %rbx,%rsi *)
adds carry rsi rbx rsi;
(* adc    %rcx,%rdi *)
adc rdi rcx rdi carry;
(* movq   %xmm9,%r15 *)
mov r15 xmm9;
(* movq   %xmm8,%r14 *)
mov r14 xmm8;
(* movabs $0x7ffffffffffff,%rbx *)
mov rbx 0x7ffffffffffff@uint64;
(* mov    $0x13,%rcx *)
mov rcx 0x13@uint64;
(* mov    %rsi,%rax *)
mov rax rsi;
(* shr    $0x33,%rsi *)
split rsi tmp rsi 51;
(* shl    $0xd,%rdi *)
shl rdi rdi 0xd;
(* or     %rsi,%rdi *)
add rdi rsi rdi;
(* add    %rdi,%r8 *)
adds carry r8 rdi r8;
(* adc    $0x0,%r9 *)
adc r9 0x0@uint64 r9 carry;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* mov    %rax,%rsi *)
(* and    %rbx,%rsi *)
(* Note: related to previous shr, so merged *)
mov rsi tmp;
(* mov    %r8,%rax *)
mov rax r8;
(* shr    $0x33,%r8 *)
split r8 tmp r8 51;
(* shl    $0xd,%r9 *)
shl r9 r9 0xd;
(* or     %r8,%r9 *)
add r9 r8 r9;
(* add    %r9,%r10 *)
adds carry r10 r9 r10;
(* adc    $0x0,%r11 *)
adc r11 0x0@uint64 r11 carry;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    %rax,%r8 *)
(* and    %rbx,%r8 *)
(* Note: related to previous shr, so merged *)
mov r8 tmp;
(* mov    %r10,%rax *)
mov rax r10;
(* shr    $0x33,%r10 *)
split r10 tmp r10 51;
(* shl    $0xd,%r11 *)
shl r11 r11 0xd;
(* or     %r10,%r11 *)
add r11 r10 r11;
(* add    %r11,%r12 *)
adds carry r12 r11 r12;
(* adc    $0x0,%r13 *)
adc r13 0x0@uint64 r13 carry;
(* xor    %r11,%r11 *)
mov r11 0@uint64;
(* mov    %rax,%r10 *)
(* and    %rbx,%r10 *)
(* Note: related to previous shr, so merged *)
mov r10 tmp;
(* mov    %r12,%rax *)
mov rax r12;
(* shr    $0x33,%r12 *)
split r12 tmp r12 51;
(* shl    $0xd,%r13 *)
shl r13 r13 0xd;
(* or     %r12,%r13 *)
add r13 r12 r13;
(* add    %r13,%r14 *)
adds carry r14 r13 r14;
(* adc    $0x0,%r15 *)
adc r15 0x0@uint64 r15 carry;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
(* mov    %rax,%r12 *)
(* and    %rbx,%r12 *)
(* Note: related to previous shr, so merged *)
mov r12 tmp;
(* mov    %r14,%rax *)
mov rax r14;
(* shr    $0x33,%r14 *)
split r14 tmp r14 51;
(* shl    $0xd,%r15 *)
shl r15 r15 0xd;
(* or     %r14,%r15 *)
add r15 r14 r15;
(* imul   $0x13,%r15,%r15 *)
mul r15 0x13@uint64 r15;
(* add    %r15,%rsi *)
adds carry rsi r15 rsi;
(* adc    $0x0,%rdi *)
adc rdi 0x0@uint64 rdi carry;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    %rax,%r14 *)
(* and    %rbx,%r14 *)
(* Note: related to previous shr, so merged *)
mov r14 tmp;
(* mov    %rsi,%rax *)
mov rax rsi;
(* shr    $0x33,%rsi *)
split rsi tmp rsi 51;
(* shl    $0xd,%rdi *)
shl rdi rdi 0xd;
(* or     %rsi,%rdi *)
add rdi rsi rdi;
(* add    %rdi,%r8 *)
adds carry r8 rdi r8;
assert true && eq carry const 1 0;
assume eq carry 0 && true;
(* adc    $0x0,%r9 *)
adc r9 0x0@uint64 r9 carry;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* mov    %rax,%rsi *)
(* and    %rbx,%rsi *)
(* Note: related to previous shr, so merged *)
mov rsi tmp;
(* mov    %rsi,(%rdi)                              #! EA = L0x7fffffffd608 *)
mov L0x7fffffffd608 rsi;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd610 *)
mov L0x7fffffffd610 r8;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd618 *)
mov L0x7fffffffd618 r10;
(* mov    %r12,0x18(%rdi)                          #! EA = L0x7fffffffd620 *)
mov L0x7fffffffd620 r12;
(* mov    %r14,0x20(%rdi)                          #! EA = L0x7fffffffd628 *)
mov L0x7fffffffd628 r14;



mov c0 L0x7fffffffd608;
mov c1 L0x7fffffffd610;
mov c2 L0x7fffffffd618;
mov c3 L0x7fffffffd620;
mov c4 L0x7fffffffd628;


{
  eqmod
    (limbs 51 [c0, c1, c2, c3, c4])

    (
      (limbs 51 [a0, a1, a2, a3, a4])
      *
      (limbs 51 [b0, b1, b2, b3, b4])
    )

    (
      (limbs 255 [0, 1])
      -
      19
    )
  &&
  true
}
