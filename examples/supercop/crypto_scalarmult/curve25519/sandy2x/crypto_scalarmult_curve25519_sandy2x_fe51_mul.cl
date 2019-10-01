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

mov L0x7fffffffd980 a0;
mov L0x7fffffffd988 a1;
mov L0x7fffffffd990 a2;
mov L0x7fffffffd998 a3;
mov L0x7fffffffd9a0 a4;
mov L0x7fffffffda00 b0;
mov L0x7fffffffda08 b1;
mov L0x7fffffffda10 b2;
mov L0x7fffffffda18 b3;
mov L0x7fffffffda20 b4;


(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd998 *)
mov rdx L0x7fffffffd998;
(* imul   $0x13,%rdx,%rax *)
mul rax 0x13@uint64 rdx;
(* mov    %rax,0x40(%rsp)                          #! EA = L0x7fffffffd7c0 *)
mov L0x7fffffffd7c0 rax;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffda10 *)
mull rdx rax L0x7fffffffda10 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd9a0 *)
mov rdx L0x7fffffffd9a0;
(* imul   $0x13,%rdx,%rax *)
mul rax 0x13@uint64 rdx;
(* mov    %rax,0x48(%rsp)                          #! EA = L0x7fffffffd7c8 *)
mov L0x7fffffffd7c8 rax;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffda08 *)
mull rdx rax L0x7fffffffda08 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd980 *)
mov rax L0x7fffffffd980;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffda00 *)
mull rdx rax L0x7fffffffda00 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd980 *)
mov rax L0x7fffffffd980;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffda08 *)
mull rdx rax L0x7fffffffda08 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd980 *)
mov rax L0x7fffffffd980;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffda10 *)
mull rdx rax L0x7fffffffda10 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd980 *)
mov rax L0x7fffffffd980;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffda18 *)
mull rdx rax L0x7fffffffda18 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd980 *)
mov rax L0x7fffffffd980;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffda20 *)
mull rdx rax L0x7fffffffda20 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd988 *)
mov rax L0x7fffffffd988;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffda00 *)
mull rdx rax L0x7fffffffda00 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd988 *)
mov rax L0x7fffffffd988;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffda08 *)
mull rdx rax L0x7fffffffda08 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd988 *)
mov rax L0x7fffffffd988;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffda10 *)
mull rdx rax L0x7fffffffda10 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd988 *)
mov rax L0x7fffffffd988;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffda18 *)
mull rdx rax L0x7fffffffda18 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
adc rbp rdx rbp carry;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd988 *)
mov rdx L0x7fffffffd988;
(* imul   $0x13,%rdx,%rax *)
mul rax 0x13@uint64 rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffda20 *)
mull rdx rax L0x7fffffffda20 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd990 *)
mov rax L0x7fffffffd990;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffda00 *)
mull rdx rax L0x7fffffffda00 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd990 *)
mov rax L0x7fffffffd990;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffda08 *)
mull rdx rax L0x7fffffffda08 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd990 *)
mov rax L0x7fffffffd990;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffda10 *)
mull rdx rax L0x7fffffffda10 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
adc rbp rdx rbp carry;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd990 *)
mov rdx L0x7fffffffd990;
(* imul   $0x13,%rdx,%rax *)
mul rax 0x13@uint64 rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffda18 *)
mull rdx rax L0x7fffffffda18 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
adc r9 rdx r9 carry;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd990 *)
mov rdx L0x7fffffffd990;
(* imul   $0x13,%rdx,%rax *)
mul rax 0x13@uint64 rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffda20 *)
mull rdx rax L0x7fffffffda20 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd998 *)
mov rax L0x7fffffffd998;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffda00 *)
mull rdx rax L0x7fffffffda00 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd998 *)
mov rax L0x7fffffffd998;
(* mulq   0x8(%rcx)                                #! EA = L0x7fffffffda08 *)
mull rdx rax L0x7fffffffda08 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
adc rbp rdx rbp carry;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd7c0 *)
mov rax L0x7fffffffd7c0;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffda18 *)
mull rdx rax L0x7fffffffda18 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd7c0 *)
mov rax L0x7fffffffd7c0;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffda20 *)
mull rdx rax L0x7fffffffda20 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd9a0 *)
mov rax L0x7fffffffd9a0;
(* mulq   (%rcx)                                   #! EA = L0x7fffffffda00 *)
mull rdx rax L0x7fffffffda00 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
adc rbp rdx rbp carry;
(* mov    0x48(%rsp),%rax                          #! EA = L0x7fffffffd7c8 *)
mov rax L0x7fffffffd7c8;
(* mulq   0x10(%rcx)                               #! EA = L0x7fffffffda10 *)
mull rdx rax L0x7fffffffda10 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
adc r11 rdx r11 carry;
(* mov    0x48(%rsp),%rax                          #! EA = L0x7fffffffd7c8 *)
mov rax L0x7fffffffd7c8;
(* mulq   0x18(%rcx)                               #! EA = L0x7fffffffda18 *)
mull rdx rax L0x7fffffffda18 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
adc r13 rdx r13 carry;
(* mov    0x48(%rsp),%rax                          #! EA = L0x7fffffffd7c8 *)
mov rax L0x7fffffffd7c8;
(* mulq   0x20(%rcx)                               #! EA = L0x7fffffffda20 *)
mull rdx rax L0x7fffffffda20 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
adc r15 rdx r15 carry;
(* mov    $0x60d1f0,%rsi *)
(* Note: it is the address of REDMASK51 *)
mov rsi 0x0007ffffffffffff@uint64;
(* shld   $0xd,%r8,%r9 *)
shl r9 r9 13;
split high low r8 51;
add r9 r9 high;
(* and    %rsi,%r8 *)
(* Note: merged with shld *)
mov r8 low;
(* shld   $0xd,%r10,%r11 *)
shl r11 r11 13;
split high low r10 51;
add r11 r11 high;
(* and    %rsi,%r10 *)
(* Note: merged with shld *)
mov r10 low;
(* add    %r9,%r10 *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
shl r13 r13 13;
split high low r12 51;
add r13 r13 high;
(* and    %rsi,%r12 *)
(* Note: merged with shld *)
mov r12 low;
(* add    %r11,%r12 *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
shl r15 r15 13;
split high low r14 51;
add r15 r15 high;
(* and    %rsi,%r14 *)
(* Note: merged with shld *)
mov r14 low;
(* add    %r13,%r14 *)
add r14 r13 r14;
(* shld   $0xd,%rbx,%rbp *)
shl rbp rbp 13;
split high low rbx 51;
add rbp rbp high;
(* and    %rsi,%rbx *)
(* Note: merged with shld *)
mov rbx low;
(* add    %r15,%rbx *)
add rbx r15 rbx;
(* imul   $0x13,%rbp,%rdx *)
mul rdx 0x13@uint64 rbp;
(* add    %rdx,%r8 *)
add r8 rdx r8;
(* mov    %r8,%rdx *)
mov rdx r8;
(* shr    $0x33,%rdx *)
split rdx r8_L rdx 51;
(* add    %r10,%rdx *)
add rdx r10 rdx;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* shr    $0x33,%rdx *)
split rdx rcx_L rdx 51;
(* and    %rsi,%r8 *)
(* Note: merged with second last shr *)
mov r8 r8_L;
(* add    %r12,%rdx *)
add rdx r12 rdx;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* shr    $0x33,%rdx *)
split rdx r9_L rdx 51;
(* and    %rsi,%rcx *)
(* Note: merged with second last shr *)
mov rcx rcx_L;
(* add    %r14,%rdx *)
add rdx r14 rdx;
(* mov    %rdx,%rax *)
mov rax rdx;
(* shr    $0x33,%rdx *)
split rdx rax_L rdx 51;
(* and    %rsi,%r9 *)
(* Note: merged with second last shr *)
mov r9 r9_L;
(* add    %rbx,%rdx *)
add rdx rbx rdx;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* shr    $0x33,%rdx *)
split rdx r10_L rdx 51;
(* and    %rsi,%rax *)
(* Note: merged with second last shr *)
mov rax rax_L;
(* imul   $0x13,%rdx,%rdx *)
mul rdx 0x13@uint64 rdx;
(* add    %rdx,%r8 *)
add r8 rdx r8;
(* and    %rsi,%r10 *)
(* Note: merged with second last shr *)
mov r10 r10_L;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 r8;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 rcx;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 r9;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffd848 *)
mov L0x7fffffffd848 rax;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffd850 *)
mov L0x7fffffffd850 r10;


mov c0 L0x7fffffffd830;
mov c1 L0x7fffffffd838;
mov c2 L0x7fffffffd840;
mov c3 L0x7fffffffd848;
mov c4 L0x7fffffffd850;


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
