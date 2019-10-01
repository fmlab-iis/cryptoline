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

mov L0x7fffffffda00 x0;
mov L0x7fffffffda08 x1;
mov L0x7fffffffda10 x2;
mov L0x7fffffffda18 x3;
mov L0x7fffffffda20 x4;


(* mov    (%rsi),%rcx                              #! EA = L0x7fffffffda00 *)
mov rcx L0x7fffffffda00;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffda08 *)
mov r8 L0x7fffffffda08;
(* mov    0x10(%rsi),%r9                           #! EA = L0x7fffffffda10 *)
mov r9 L0x7fffffffda10;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffda18 *)
mov rax L0x7fffffffda18;
(* mov    0x20(%rsi),%rsi                          #! EA = L0x7fffffffda20 *)
mov rsi L0x7fffffffda20;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 r9;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 rax;
(* mov    %rsi,0x20(%rdi)                          #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rsi;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mul    %rcx *)
mull rdx rax rcx rax;
(* add    %rcx,%rcx *)
add rcx rcx rcx;
(* mov    %rax,%r9 *)
mov r9 rax;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mul    %r8 *)
mull rdx rax r8 rax;
(* mov    %rax,%r11 *)
mov r11 rax;
(* mov    %rdx,%r12 *)
mov r12 rdx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffd810 *)
mull rdx rax L0x7fffffffd810 rax;
(* mov    %rax,%r13 *)
mov r13 rax;
(* mov    %rdx,%r14 *)
mov r14 rdx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffd818 *)
mull rdx rax L0x7fffffffd818 rax;
(* mov    %rax,%r15 *)
mov r15 rax;
(* mov    %rdx,%rbx *)
mov rbx rdx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffd820 *)
mull rdx rax L0x7fffffffd820 rax;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mov    %r8,%rax *)
mov rax r8;
(* mul    %r8 *)
mull rdx rax r8 rax;
(* add    %r8,%r8 *)
add r8 r8 r8;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* adc    %rdx,%r14 *)
adc r14 rdx r14 carry;
(* mov    %r8,%rax *)
mov rax r8;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffd810 *)
mull rdx rax L0x7fffffffd810 rax;
(* add    %rax,%r15 *)
adds carry r15 rax r15;
(* adc    %rdx,%rbx *)
adc rbx rdx rbx carry;
(* mov    %r8,%rax *)
mov rax r8;
(* imul   $0x13,%r8,%r8 *)
mul r8 0x13@uint64 r8;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffd818 *)
mull rdx rax L0x7fffffffd818 rax;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* adc    %rdx,%rbp *)
adc rbp rdx rbp carry;
(* mov    %r8,%rax *)
mov rax r8;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffd820 *)
mull rdx rax L0x7fffffffd820 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* adc    %rdx,%r10 *)
adc r10 rdx r10 carry;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffd810 *)
mov rax L0x7fffffffd810;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffd810 *)
mull rdx rax L0x7fffffffd810 rax;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* adc    %rdx,%rbp *)
adc rbp rdx rbp carry;
(* shld   $0xd,%rcx,%rbp *)
shl rbp rbp 13;
split high rcx_L rcx 51;
add rbp rbp high;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffd810 *)
mov rax L0x7fffffffd810;
(* imul   $0x26,%rax,%rax *)
mul rax 0x26@uint64 rax;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffd818 *)
mull rdx rax L0x7fffffffd818 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* adc    %rdx,%r10 *)
adc r10 rdx r10 carry;
(* shld   $0xd,%r9,%r10 *)
shl r10 r10 13;
split high r9_L r9 51;
add r10 r10 high;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffd810 *)
mov rax L0x7fffffffd810;
(* imul   $0x26,%rax,%rax *)
mul rax 0x26@uint64 rax;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffd820 *)
mull rdx rax L0x7fffffffd820 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    %rdx,%r12 *)
adc r12 rdx r12 carry;
(* mov    0x18(%rdi),%rax                          #! EA = L0x7fffffffd818 *)
mov rax L0x7fffffffd818;
(* imul   $0x13,%rax,%rax *)
mul rax 0x13@uint64 rax;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffd818 *)
mull rdx rax L0x7fffffffd818 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    %rdx,%r12 *)
adc r12 rdx r12 carry;
(* shld   $0xd,%r11,%r12 *)
shl r12 r12 13;
split high r11_L r11 51;
add r12 r12 high;
(* mov    0x18(%rdi),%rax                          #! EA = L0x7fffffffd818 *)
mov rax L0x7fffffffd818;
(* imul   $0x26,%rax,%rax *)
mul rax 0x26@uint64 rax;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffd820 *)
mull rdx rax L0x7fffffffd820 rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* adc    %rdx,%r14 *)
adc r14 rdx r14 carry;
(* shld   $0xd,%r13,%r14 *)
shl r14 r14 13;
split high r13_L r13 51;
add r14 r14 high;
(* mov    0x20(%rdi),%rax                          #! EA = L0x7fffffffd820 *)
mov rax L0x7fffffffd820;
(* imul   $0x13,%rax,%rax *)
mul rax 0x13@uint64 rax;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffd820 *)
mull rdx rax L0x7fffffffd820 rax;
(* add    %rax,%r15 *)
adds carry r15 rax r15;
(* adc    %rdx,%rbx *)
adc rbx rdx rbx carry;
(* shld   $0xd,%r15,%rbx *)
shl rbx rbx 13;
split high r15_L r15 51;
add rbx rbx high;
(* mov    0x60d1f0,%rdx *)
(* Note: it is the address of REDMASK51 *)
mov rdx 0x0007ffffffffffff@uint64;
(* and    %rdx,%rcx *)
(* Note: merged with previous shld related to rcx *)
mov rcx rcx_L;
(* add    %rbx,%rcx *)
add rcx rbx rcx;
(* and    %rdx,%r9 *)
(* Note: merged with previous shld related to r9 *)
mov r9 r9_L;
(* and    %rdx,%r11 *)
(* Note: merged with previous shld related to r11 *)
mov r11 r11_L;
(* add    %r10,%r11 *)
add r11 r10 r11;
(* and    %rdx,%r13 *)
(* Note: merged with previous shld related to r13 *)
mov r13 r13_L;
(* add    %r12,%r13 *)
add r13 r12 r13;
(* and    %rdx,%r15 *)
(* Note: merged with previous shld related to r15 *)
mov r15 r15_L;
(* add    %r14,%r15 *)
add r15 r14 r15;
(* imul   $0x13,%rbp,%rbp *)
mul rbp 0x13@uint64 rbp;
(* lea    (%r9,%rbp,1),%r9                         #! EA = L0xcb1a2e6f6742c4 *)
add r9 r9 rbp;
(* mov    %r9,%rax *)
mov rax r9;
(* shr    $0x33,%r9 *)
split r9 r9_L r9 51;
(* add    %r11,%r9 *)
add r9 r11 r9;
(* and    %rdx,%rax *)
(* Note: merged with previous shr *)
mov rax r9_L;
(* mov    %r9,%r8 *)
mov r8 r9;
(* shr    $0x33,%r9 *)
split r9 r9_L r9 51;
(* add    %r13,%r9 *)
add r9 r13 r9;
(* and    %rdx,%r8 *)
(* Note: merged with previous shr *)
mov r8 r9_L;
(* mov    %r9,%r10 *)
mov r10 r9;
(* shr    $0x33,%r9 *)
split r9 r9_L r9 51;
(* add    %r15,%r9 *)
add r9 r15 r9;
(* and    %rdx,%r10 *)
(* Note: merged with previous shr *)
mov r10 r9_L;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 r10;
(* mov    %r9,%r10 *)
mov r10 r9;
(* shr    $0x33,%r9 *)
split r9 r9_L r9 51;
(* add    %rcx,%r9 *)
add r9 rcx r9;
(* and    %rdx,%r10 *)
(* Note: merged with previous shr *)
mov r10 r9_L;
(* mov    %r10,0x18(%rdi)                          #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r10;
(* mov    %r9,%r10 *)
mov r10 r9;
(* shr    $0x33,%r9 *)
split r9 r9_L r9 51;
(* imul   $0x13,%r9,%r9 *)
mul r9 0x13@uint64 r9;
(* lea    (%rax,%r9,1),%rcx                        #! EA = L0x31a2e6f6742d7 *)
add rcx rax r9;
(* and    %rdx,%r10 *)
(* Note: merged with previous shr *)
mov r10 r9_L;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 r10;
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rcx;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r8;


mov r0 L0x7fffffffd800;
mov r1 L0x7fffffffd808;
mov r2 L0x7fffffffd810;
mov r3 L0x7fffffffd818;
mov r4 L0x7fffffffd820;


{
  eqmod
    (limbs 51 [r0, r1, r2, r3, r4])

    (
      (limbs 51 [x0, x1, x2, x3, x4])
      *
      (limbs 51 [x0, x1, x2, x3, x4])
    )

    (
      (limbs 255 [0, 1])
      -
      19
    )
  &&
  true
}
