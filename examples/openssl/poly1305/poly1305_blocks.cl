proc main (uint64 inp0, uint64 inp1, uint64 r0, uint64 r1, uint64 h0, uint64 h1, uint64 h2, uint64 padbit) =
{
  true
&&
  and
    [
      (* r0 < 0x1000 0000 0000 0000 *)
      r0 < const 64 (2**60),
      (* r1 < 0x1000 0000 0000 0000 *)
      r1 < const 64 (2**60),
      (* r1's 2 LSB are 0 *)
      and r1 const 64 3 = const 64 0,
      (* h2 is at most 2 bits *)
      h2 < const 64 4,
      (* padbit is 1 bit *)
      padbit < const 64 2
    ]
}

mov L0x605080 inp0;
mov L0x605088 inp1;
mov L0x606028 r0;
mov L0x606030 r1;
mov L0x606010 h0;
mov L0x606018 h1;
mov L0x606020 h2;
mov rcx padbit;

(* mov    0x18(%rdi),%r11                          #! EA = L0x606028 *)
mov r11 L0x606028;
(* mov    0x20(%rdi),%r13                          #! EA = L0x606030 *)
mov r13 L0x606030;
(* mov    (%rdi),%r14                              #! EA = L0x606010 *)
mov r14 L0x606010;
(* mov    0x8(%rdi),%rbx                           #! EA = L0x606018 *)
mov rbx L0x606018;
(* mov    0x10(%rdi),%rbp                          #! EA = L0x606020 *)
mov rbp L0x606020;
(* mov    %r13,%r12 *)
mov r12 r13;
(* shr    $0x2,%r13 *)
split r13 tmp r13 2;
assert true && eq tmp const 64 0;
assume eq tmp 0 && true;
(* mov    %r12,%rax *)
mov rax r12;
(* add    %r12,%r13 *)
add r13 r12 r13;
(* add    (%rsi),%r14                              #! EA = L0x605080 *)
adds carry r14 L0x605080 r14;
(* adc    0x8(%rsi),%rbx                           #! EA = L0x605088 *)
adcs carry rbx L0x605088 rbx carry;
(* lea    0x10(%rsi),%rsi                          #! EA = L0x605090 *)
(* NOTE: ignore inp++ *)
(* adc    %rcx,%rbp *)
adc rbp rcx rbp carry;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* mov    %rax,%r9 *)
mov r9 rax;
(* mov    %r11,%rax *)
mov rax r11;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %r11,%rax *)
mov rax r11;
(* mov    %rdx,%r8 *)
mov r8 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* mov    %r13,%rax *)
mov rax r13;
(* adc    %rdx,%r10 *)
adc r10 rdx r10 carry;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* mov    %rbp,%rbx *)
mov rbx rbp;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r8 *)
adc r8 rdx r8 carry;
(* imul   %r13,%rbx *)
mul rbx r13 rbx;
(* add    %rbx,%r9 *)
adds carry r9 rbx r9;
(* mov    %r8,%rbx *)
mov rbx r8;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* imul   %r11,%rbp *)
mul rbp r11 rbp;
(* add    %r9,%rbx *)
adds carry rbx r9 rbx;
(* mov    $0xfffffffffffffffc,%rax *)
(* adc    %rbp,%r10 *)
adc r10 rbp r10 carry;
(* and    %r10,%rax *)
(* mov    %r10,%rbp *)
(* shr    $0x2,%r10 *)
(* and    $0x3,%rbp *)
(* NOTE: merge *)
split r10 rbp r10 2;
shl rax r10 2;
(* add    %r10,%rax *)
add rax r10 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    $0x0,%rbx *)
adcs carry rbx rbx 0@uint64 carry;
(* adc    $0x0,%rbp *)
adc rbp rbp 0@uint64 carry;
(* mov    %r12,%rax *)
mov rax r12;
(* mov    %r14,(%rdi)                              #! EA = L0x606010 *)
mov L0x606010 r14;
(* mov    %rbx,0x8(%rdi)                           #! EA = L0x606018 *)
mov L0x606018 rbx;
(* mov    %rbp,0x10(%rdi)                          #! EA = L0x606020 *)
mov L0x606020 rbp;

mov H0 L0x606010;
mov H1 L0x606018;
mov H2 L0x606020;

{
  eqmod
    (limbs 64 [H0, H1, H2])

    (
      (
        (limbs 64 [h0, h1, h2 + padbit])
        +
        (limbs 64 [inp0, inp1])
      )
      *
      (limbs 64 [r0, r1])
    )

    (
      (limbs 130 [0, 1])
      -
      5
    )
&&
  true
}
