proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 x6, uint64 x7,
           uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 y6, uint64 y7,
           uint64 n,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 m6, uint64 m7) =
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

mov L0x1 1@uint64;
mov L0x2 2@uint64;
mov L0x3 3@uint64;
mov L0x4 4@uint64;
mov L0x5 5@uint64;
mov L0x6 6@uint64;
mov L0x7 7@uint64;
mov L0x8 8@uint64;

mov L0x808ab0 x0;
mov L0x808ab8 x1;
mov L0x808ac0 x2;
mov L0x808ac8 x3;
mov L0x808ad0 x4;
mov L0x808ad8 x5;
mov L0x808ae0 x6;
mov L0x808ae8 x7;

mov L0x808d50 y0;
mov L0x808d58 y1;
mov L0x808d60 y2;
mov L0x808d68 y3;
mov L0x808d70 y4;
mov L0x808d78 y5;
mov L0x808d80 y6;
mov L0x808d88 y7;

mov L0x808a90 n;

mov L0x808b00 m0;
mov L0x808b08 m1;
mov L0x808b10 m2;
mov L0x808b18 m3;
mov L0x808b20 m4;
mov L0x808b28 m5;
mov L0x808b30 m6;
mov L0x808b38 m7;

(* mov    (%r8),%r8                                #! %ea = %L0x808a90 *)
mov r8 L0x808a90;
(* mov    (%r12),%rbx                              #! %ea = %L0x808d50 *)
mov rbx L0x808d50;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
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
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e780 <bn_mul4x_mont+224> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x1 *)
mov r14 L0x1;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d58 *)
mov rbx L0x808d58;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x2 *)
mov r14 L0x2;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d60 *)
mov rbx L0x808d60;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x3 *)
mov r14 L0x3;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d68 *)
mov rbx L0x808d68;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x4 *)
mov r14 L0x4;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d70 *)
mov rbx L0x808d70;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x5 *)
mov r14 L0x5;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d78 *)
mov rbx L0x808d78;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x6 *)
mov r14 L0x6;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d80 *)
mov rbx L0x808d80;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x7 *)
mov r14 L0x7;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! %ea = %L0x808d88 *)
mov rbx L0x808d88;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! %ea = %L0x7fffffffd400 *)
mov r10 L0x7fffffffd400;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! %ea = %L0x808b00 *)
mov rax L0x808b00;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* imul   %r10,%rbp *)
mull dontcare rbp r10 rbp;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r10 *)
(* NOTE: %r10 = 0 *)
adds carry r10 rax r10;
assert (eqmod r10 0 (2**64)) && true;
assume (eq r10 0) && true;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x808ab8 *)
mov rax L0x808ab8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx),%rax                           #! %ea = %L0x808b08 *)
mov rax L0x808b08;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp),%r11                           #! %ea = %L0x7fffffffd408 *)
adds carry r11 L0x7fffffffd408 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x808ac0 *)
mov rax L0x808ac0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x4 *)
mov r15 L0x4;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,(%rsp)                              #! %ea = %L0x7fffffffd400 *)
mov L0x7fffffffd400 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* #jmp    0x40e930 <bn_mul4x_mont+656> *)
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b10 *)
mov rax L0x808b10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd410 *)
adds carry r10 L0x7fffffffd410 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ac8 *)
mov rax L0x808ac8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd408 *)
mov L0x7fffffffd408 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b18 *)
mov rax L0x808b18;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd418 *)
adds carry r11 L0x7fffffffd418 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! %ea = %L0x808ad0 *)
mov rax L0x808ad0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd410 *)
mov L0x7fffffffd410 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! %ea = %L0x808b20 *)
mov rax L0x808b20;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    (%rsp,%r15,8),%r10                       #! %ea = %L0x7fffffffd420 *)
adds carry r10 L0x7fffffffd420 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! %ea = %L0x808ad8 *)
mov rax L0x808ad8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd418 *)
mov L0x7fffffffd418 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! %ea = %L0x808b28 *)
mov rax L0x808b28;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! %ea = %L0x7fffffffd428 *)
adds carry r11 L0x7fffffffd428 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x4(%r15),%r15                           #! %ea = %L0x8 *)
mov r15 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! %ea = %L0x808ae0 *)
mov rax L0x808ae0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd420 *)
mov L0x7fffffffd420 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! %ea = %L0x808b30 *)
mov rax L0x808b30;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! %ea = %L0x7fffffffd430 *)
adds carry r10 L0x7fffffffd430 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! %ea = %L0x808ae8 *)
mov rax L0x808ae8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd428 *)
mov L0x7fffffffd428 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! %ea = %L0x808b38 *)
mov rax L0x808b38;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! %ea = %L0x7fffffffd438 *)
adds carry r11 L0x7fffffffd438 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* lea    0x1(%r14),%r14                           #! %ea = %L0x8 *)
mov r14 L0x8;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi),%rax                              #! %ea = %L0x808ab0 *)
mov rax L0x808ab0;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! %ea = %L0x7fffffffd430 *)
mov L0x7fffffffd430 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* add    (%rsp,%r9,8),%r13                        #! %ea = %L0x7fffffffd440 *)
adds carry r13 L0x7fffffffd440 r13;
(* adc    $0x0,%rdi *)
adc rdi rdi 0@uint64 carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! %ea = %L0x7fffffffd438 *)
mov L0x7fffffffd438 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! %ea = %L0x7fffffffd440 *)
mov L0x7fffffffd440 rdi;
(* #repz retq *)

mov z0 L0x7fffffffd400;
mov z1 L0x7fffffffd408;
mov z2 L0x7fffffffd410;
mov z3 L0x7fffffffd418;
mov z4 L0x7fffffffd420;
mov z5 L0x7fffffffd428;
mov z6 L0x7fffffffd430;
mov z7 L0x7fffffffd438;
mov z8 L0x7fffffffd440;

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
                    z4, z5, z6, z7, z8])
       )

       (
         (limbs 64 [m0, m1, m2, m3,
                    m4, m5, m6, m7])
       )
  &&
     z8 < const 64 2
}
