(* frege: -no_carry_constraint -isafety -vo appearing
Parsing Cryptoline file:                [OK]            0.002220 seconds
Checking well-formedness:               [OK]            0.000703 seconds
Transforming to SSA form:               [OK]            0.001385 seconds
Verifying program safety:               [OK]            6.943544 seconds
Verifying assertions:                   [OK]            0.089708 seconds
Verifying range specification:          [OK]            0.589130 seconds
Verifying algebraic specification:      [OK]            0.037391 seconds
Verification result:                    [OK]            7.664343 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 n, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
     and
       [
         eqmod m0 1 2,

         eqmod
           (
             (
               n
               *
               (limbs 64 [m0, m1, m2, m3])
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

mov r9 4@uint64;

mov L0x6060e0 n;
mov L0x606080 x0;
mov L0x606088 x1;
mov L0x606090 x2;
mov L0x606098 x3;
mov L0x6060a0 y0;
mov L0x6060a8 y1;
mov L0x6060b0 y2;
mov L0x6060b8 y3;
mov L0x6060c0 m0;
mov L0x6060c8 m1;
mov L0x6060d0 m2;
mov L0x6060d8 m3;

(* mov    (%r8),%r8                                #! EA = L0x6060e0 *)
mov r8 L0x6060e0;
(* mov    (%r12),%rbx                              #! EA = L0x6060a0 *)
mov rbx L0x6060a0;
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
(* mov    (%rcx),%rax                              #! EA = L0x6060c0 *)
mov rax L0x6060c0;
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
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* lea    0x1(%r15),%r15                           #! EA = L0x1 *)
mov r15 1@uint64;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r15),%r15                           #! EA = L0x2 *)
mov r15 2@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%r13 *)
adds carry r13 r11 r13;
(* mov    %r10,%r11 *)
mov r11 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 r13;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r15),%r15                           #! EA = L0x3 *)
mov r15 3@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%r13 *)
adds carry r13 r11 r13;
(* mov    %r10,%r11 *)
mov r11 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%r13 *)
adds carry r13 r11 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 r13;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    %r10,%r11 *)
mov r11 r10;
(* xor    %rdx,%rdx *)
mov rdx 0@uint64;
(* add    %r11,%r13 *)
adds carry r13 r11 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r9,8)                    #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,(%rsp,%r9,8)                        #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdx;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060a8 *)
mov rbx L0x6060a8;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffd800 *)
mov r10 L0x7fffffffd800;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x6060c0 *)
mov rax L0x6060c0;
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
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd808 *)
mov r10 L0x7fffffffd808;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* lea    0x1(%r15),%r15                           #! EA = L0x1 *)
mov r15 1@uint64;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%r10 *)
adds carry r10 r11 r10;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* adc    $0x0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea    0x1(%r15),%r15                           #! EA = L0x2 *)
mov r15 2@uint64;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x606090 *)
mov rax L0x606090;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* mov    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd810 *)
mov r10 L0x7fffffffd810;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 r13;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%r10 *)
adds carry r10 r11 r10;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* adc    $0x0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea    0x1(%r15),%r15                           #! EA = L0x3 *)
mov r15 3@uint64;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x606098 *)
mov rax L0x606098;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* mov    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd818 *)
mov r10 L0x7fffffffd818;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r13;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%r10 *)
adds carry r10 r11 r10;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* adc    $0x0,%r11 *)
adc r11 0@uint64 r11 carry;
(* lea    0x1(%r15),%r15                           #! EA = L0x4 *)
mov r15 4@uint64;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi),%rax                              #! EA = L0x606080 *)
mov rax L0x606080;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* mov    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffd820 *)
mov r10 L0x7fffffffd820;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 r13;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdx,%rdx *)
mov rdx 0@uint64;
(* add    %r11,%r13 *)
adds carry r13 r11 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r9,8)                    #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,(%rsp,%r9,8)                        #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdx;

mov z0 L0x7fffffffd800;
mov z1 L0x7fffffffd808;
mov z2 L0x7fffffffd810;
mov z3 L0x7fffffffd818;
mov z4 L0x7fffffffd820;

{
     eqmod
       (
         (limbs 64 [x0, x1, x2, x3])
         *
         (limbs 64 [y0, y1])
       )

       (
         (limbs 64 [0, 0,
                    1])
         *
         (limbs 64 [z0, z1, z2, z3,
                    z4])
       )

       (
         (limbs 64 [m0, m1, m2, m3])
       )
  &&
     z4 < const 64 2
}
