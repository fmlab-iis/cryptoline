(*
===== System Information =====
Machine: quine
Operating System: Linux quine 4.4.0-116-generic #140-Ubuntu SMP Mon Feb 12 21:23:04 UTC 2018 x86_64
CPU Model: Intel(R) Xeon(R) CPU X5690 @ 3.47GHz
Memory: 132024004 kB
Singular: path=/usr/local/bin/Singular, version=Singular for x86_64-Linux version 4.1.0 (4102, 64 bit) May 17 2017 13:49:11 #UNKNOWN_GIT_VERSION
Boolector: path=/home/mht208/.local/bin/boolector, version=2.4.1
Z3: unavailable
===== Verification =====
Arguments: -v -btor -no_carry_constraint -isafety -o x86_64_mont_4_with_reduction_cut2.log x86_64_mont_4_with_reduction_cut2.cl
Parsing Cryptoline file:                [OK]            0.004275 seconds
Checking well-formedness:               [OK]            0.000638 seconds
Transforming to SSA form:               [OK]            0.001411 seconds
Verifying program safety:               [OK]            56.765270 seconds
Verifying assertions:                   [OK]            7378.919874 seconds
Verifying range specification:          [OK]            1270.949722 seconds
Verifying algebraic specification:      [OK]            3304.241175 seconds
Verification result:                    [OK]            12010.882851 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 n, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
     and
       [
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
         (limbs 64 [0, 1]),
         eqmod m0 1 2
      ]
  &&
    and [
      eq const 64 1 (umod m0 const 64 2),
      eq const 320 0
            (umod (add (mul (limbs 64 [n, const 64 0, const 64 0, const 64 0, const 64 0])
                                    (limbs 64 [m0, m1, m2, m3, const 64 0]))
                            const 320 1)
                    (limbs 64 [const 64 0, const 64 1, const 64 0, const 64 0, const 64 0])),
      limbs 64 [x0, x1, x2, x3] < limbs 64 [m0, m1, m2, m3],
      limbs 64 [y0, y1, y2, y3] < limbs 64 [m0, m1, m2, m3]
    ]
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
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060b0 *)
mov rbx L0x6060b0;
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
(* lea    0x1(%r14),%r14                           #! EA = L0x3 *)
mov r14 3@uint64;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x6060b8 *)
mov rbx L0x6060b8;
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
(* NOTE: clear carry *)
clear carry;
(* mov    %r13,-0x8(%rsp,%r9,8)                    #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r13;
(* mov    %rdx,(%rsp,%r9,8)                        #! EA = L0x7fffffffd820 *)
mov L0x7fffffffd820 rdx;
(* lea    0x1(%r14),%r14                           #! EA = L0x4 *)
mov r14 4@uint64;

mov t0 L0x7fffffffd800;
mov t1 L0x7fffffffd808;
mov t2 L0x7fffffffd810;
mov t3 L0x7fffffffd818;
mov t4 L0x7fffffffd820;

(*
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
*)

ecut
  and [
    eq m0 L0x6060c0,
    eq m1 L0x6060c8,
    eq m2 L0x6060d0,
    eq m3 L0x6060d8,
    eq t0 L0x7fffffffd800,
    eq t1 L0x7fffffffd808,
    eq t2 L0x7fffffffd810,
    eq t3 L0x7fffffffd818,
    eq t4 L0x7fffffffd820,
    eqmod
    (
      (limbs 64 [x0, x1, x2, x3])
      *
      (limbs 64 [y0, y1, y2, y3])
    )
    (
      (limbs 64 [0, 0, 0, 0,
                 t0, t1, t2, t3, t4])
    )
    (
      (limbs 64 [m0, m1, m2, m3])
    )
  ];

rcut
  and [
    eq m0 L0x6060c0,
    eq m1 L0x6060c8,
    eq m2 L0x6060d0,
    eq m3 L0x6060d8,
    eq t0 L0x7fffffffd800,
    eq t1 L0x7fffffffd808,
    eq t2 L0x7fffffffd810,
    eq t3 L0x7fffffffd818,
    eq t4 L0x7fffffffd820,
    eq r9 const 64 4,
    eq carry const 1 0,
    (limbs 64 [t0, t1, t2, t3, t4]) <
    (mul (limbs 64 [m0, m1, m2, m3,
                      const 64 0])
           const 320 2),
    t4 < const 64 2,
    eq const 64 1 (umod m0 const 64 2)
  ];
assume
  true &&
  and [
    eq
      const 576 0
      (srem
        (sub
           (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                      t0, t1, t2, t3, t4])
           (mul
              (limbs 64 [x0, x1, x2, x3,
                         const 64 0, const 64 0, const 64 0,
                         const 64 0, const 64 0])
              (limbs 64 [y0, y1, y2, y3,
                         const 64 0, const 64 0, const 64 0,
                         const 64 0, const 64 0])))
        (limbs 64 [m0, m1, m2, m3,
                   const 64 0, const 64 0, const 64 0,
                   const 64 0, const 64 0]))
  ];

(* reduction *)

(* xor    %r14,%r14 *)
mov r14 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd800 *)
mov rax L0x7fffffffd800;
(* lea    (%rsp),%rsi                              #! EA = L0x7fffffffd800 *)
(* NOTE: store rsp in rsi *)
(* mov rsi (bvConst L0x7fffffffd800); *)
(* mov    %r9,%r15 *)
mov r15 r9;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060c0 *)
sbbs carry rax rax L0x6060c0 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc60 *)
mov L0x7fffffffdc60 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd808 *)
mov rax L0x7fffffffd808;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060c8 *)
sbbs carry rax rax L0x6060c8 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc68 *)
mov L0x7fffffffdc68 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd810 *)
mov rax L0x7fffffffd810;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060d0 *)
sbbs carry rax rax L0x6060d0 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc70 *)
mov L0x7fffffffdc70 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd818 *)
mov rax L0x7fffffffd818;
(* lea    0x1(%r14),%r14                           #! EA = L0x3 *)
mov r14 3@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060d8 *)
sbbs carry rax rax L0x6060d8 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc78 *)
mov L0x7fffffffdc78 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd820 *)
mov rax L0x7fffffffd820;
(* lea    0x1(%r14),%r14                           #! EA = L0x4 *)
mov r14 4@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* the following code = carry ? rsi : rdi *)
(* xor    %r14,%r14 *)
mov r14 0@uint64;
(* and    %rax,%rsi *)
(* not    %rax *)
(* mov    %rdi,%rcx *)
(* and    %rax,%rcx *)
(* mov    %r9,%r15 *)
mov r15 r9;
(* or     %rcx,%rsi *)
(* nop *)
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc60 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc60; *)
cmov rax carry L0x7fffffffd800 L0x7fffffffdc60;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc60 *)
mov L0x7fffffffdc60 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc68 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc68; *)
cmov rax carry L0x7fffffffd808 L0x7fffffffdc68;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc68 *)
mov L0x7fffffffdc68 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc70 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc70; *)
cmov rax carry L0x7fffffffd810 L0x7fffffffdc70;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc70 *)
mov L0x7fffffffdc70 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x3 *)
mov r14 3@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc78 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc78; *)
cmov rax carry L0x7fffffffd818 L0x7fffffffdc78;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc78 *)
mov L0x7fffffffdc78 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x4 *)
mov r14 4@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;

mov z0 L0x7fffffffdc60;
mov z1 L0x7fffffffdc68;
mov z2 L0x7fffffffdc70;
mov z3 L0x7fffffffdc78;

assert
  true
&&
  eq
    const 576 0
      (srem
        (sub
           (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                      t0, t1, t2, t3, t4])
           (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                      z0, z1, z2, z3, const 64 0]))
        (limbs 64 [m0, m1, m2, m3,
                   const 64 0, const 64 0, const 64 0,
                   const 64 0, const 64 0]));

ecut
  and [
    eqmod
    (
      (limbs 64 [x0, x1, x2, x3])
      *
      (limbs 64 [y0, y1, y2, y3])
    )
    (
      (limbs 64 [0, 0, 0, 0,
                 t0, t1, t2, t3, t4])
    )
    (
      (limbs 64 [m0, m1, m2, m3])
    )
  ];

assume
  eqmod
    (limbs 64 [0, 0, 0, 0,
               t0, t1, t2, t3, t4])
    (limbs 64 [0, 0, 0, 0,
               z0, z1, z2, z3])
    (limbs 64 [m0, m1, m2, m3])
&&
  true;

{
  eqmod
    (
      (limbs 64 [x0, x1, x2, x3])
      *
      (limbs 64 [y0, y1, y2, y3])
    )
    (
      (limbs 64 [0, 0, 0, 0,
                 z0, z1, z2, z3])
    )
    (
      (limbs 64 [m0, m1, m2, m3])
    )
&&
  true
}
