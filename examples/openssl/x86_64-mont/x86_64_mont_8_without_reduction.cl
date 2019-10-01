proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 x6, uint64 x7, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 y6, uint64 y7,
           uint64 n, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 m6, uint64 m7) =
{
     and
       [
         eqmod m0 1 2,

         eqmod
           (
             (
               n
               *
               (limbs 64 [m0, m1, m2, m3,
                          m4, m5, m6, m7])
             )
             +
             1
           )

         0

         (limbs 64 [0, 1])
      ]
  &&
    true
}

mov L0x606140 n;
mov L0x606080 x0;
mov L0x606088 x1;
mov L0x606090 x2;
mov L0x606098 x3;
mov L0x6060a0 x4;
mov L0x6060a8 x5;
mov L0x6060b0 x6;
mov L0x6060b8 x7;
mov L0x6060c0 y0;
mov L0x6060c8 y1;
mov L0x6060d0 y2;
mov L0x6060d8 y3;
mov L0x6060e0 y4;
mov L0x6060e8 y5;
mov L0x6060f0 y6;
mov L0x6060f8 y7;
mov L0x606100 m0;
mov L0x606108 m1;
mov L0x606110 m2;
mov L0x606118 m3;
mov L0x606120 m4;
mov L0x606128 m5;
mov L0x606130 m6;
mov L0x606138 m7;


(* mov    (%r8),%r8                                #! EA = L0x606140 *)
mov r8 L0x606140;
(* mov    (%r12),%rbx                              #! EA = L0x6060c0 *)
mov rbx L0x6060c0;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* xor    %r14,%r14 *)
mov r14 0@uint64;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060c8 *)
mov rbx L0x6060c8;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060d0 *)
mov rbx L0x6060d0;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x3 *)
mov r14 3@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060d8 *)
mov rbx L0x6060d8;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x4 *)
mov r14 4@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060e0 *)
mov rbx L0x6060e0;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x5 *)
mov r14 5@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060e8 *)
mov rbx L0x6060e8;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x6 *)
mov r14 6@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060f0 *)
mov rbx L0x6060f0;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x7 *)
mov r14 7@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060f8 *)
mov rbx L0x6060f8;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606100 *)
mov rax L0x606100;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: r10 = 0 *)
adds carry r10 rax r10;
assert eqmod r10 0 (2**64) && true;
assume eq r10 0 && true;
(* mov    0x8(%rsi),%rax                           #! EA = L0x606088 *)
mov rax L0x606088;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! EA = L0x606108 *)
mov rax L0x606108;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffd808 *)
adds carry r11 L0x7fffffffd808 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606110 *)
mov rax L0x606110;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd810 *)
adds carry r10 L0x7fffffffd810 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606118 *)
mov rax L0x606118;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd818 *)
adds carry r11 L0x7fffffffd818 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060a0 *)
mov rax L0x6060a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x606120 *)
mov rax L0x606120;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
adds carry r10 L0x7fffffffd820 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060a8 *)
mov rax L0x6060a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x606128 *)
mov rax L0x606128;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffd828 *)
adds carry r11 L0x7fffffffd828 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x8 *)
mov r15 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060b0 *)
mov rax L0x6060b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606130 *)
mov rax L0x606130;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffd830 *)
adds carry r10 L0x7fffffffd830 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060b8 *)
mov rax L0x6060b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffd828 *)
mov L0x7fffffffd828 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606138 *)
mov rax L0x606138;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffd838 *)
adds carry r11 L0x7fffffffd838 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x8 *)
mov r14 8@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd830 *)
mov L0x7fffffffd830 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffd840 *)
adds carry r13 L0x7fffffffd840 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffd838 *)
mov L0x7fffffffd838 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffd840 *)
mov L0x7fffffffd840 rdi;

mov z0 L0x7fffffffd800;
mov z1 L0x7fffffffd808;
mov z2 L0x7fffffffd810;
mov z3 L0x7fffffffd818;
mov z4 L0x7fffffffd820;
mov z5 L0x7fffffffd828;
mov z6 L0x7fffffffd830;
mov z7 L0x7fffffffd838;
mov z8 L0x7fffffffd840;


{
     eqmod
       (
         (limbs 64 [x0, x1, x2, x3,
                    x4, x5, x6, x7])
         *
         (limbs 64 [y0, y1, y2, y3,
                    y4, y5, y6, y7])
       )

       (
         (limbs 64 [0, 0, 0, 0,
                    0, 0, 0, 0,
                    1])
         *
         (limbs 64 [z0, z1, z2, z3,
                    z4, z5, z6, z7,
                    z8])
       )

       (
         (limbs 64 [m0, m1, m2, m3,
                    m4, m5, m6, m7])
       )
  &&  
     z8 < const 64 2
}

