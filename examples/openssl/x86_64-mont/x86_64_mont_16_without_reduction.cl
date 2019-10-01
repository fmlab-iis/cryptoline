(*
===== System Information =====
Machine: bywang-2
Operating System: Linux bywang-2 4.4.0-104-generic #127-Ubuntu SMP Mon Dec 11 12:16:42 UTC 2017 x86_64
CPU Model: Intel Core Processor (Haswell, no TSX)
Memory: 32946980 kB
Singular: path=/home/mht208/.local/bin/Singular, version=Singular for x86_64-Linux version 4.1.1 (4110, 64 bit) Feb 2018 #46d2096
Boolector: path=/home/mht208/.local/bin/boolector, version=3.0.0
Z3: path=/usr/local/bin/z3, version=Z3 version 4.5.1 - 64 bit
===== Verification =====
Arguments: -v -btor -no_carry_constraint -isafety -vo appearing -jobs 20 -qfbv_args '-SE minisat'
Parsing Cryptoline file:                [OK]            0.039771 seconds
Checking well-formedness:               [OK]            0.011333 seconds
Transforming to SSA form:               [OK]            0.118616 seconds
Rewriting assignments:                  [OK]            0.143152 seconds
Verifying program safety:               [OK]            160.401957 seconds
Verifying assertions:                   [OK]            1.078172 seconds
Verifying range specification:          [OK]            42.010643 seconds
Verifying algebraic specification:      [OK]            91.221981 seconds
Verification result:                    [OK]            295.030564 seconds

===== Verification =====
Arguments: -v -btor -no_carry_constraint -isafety -vo appearing -o x86_64_mont_16_without_reduction.log examples/x86_64-mont/x86_64_mont_16_without_reduction.cl
Parsing Cryptoline file:                [OK]            0.076111 seconds
Checking well-formedness:               [OK]            0.010993 seconds
Transforming to SSA form:               [OK]            0.156049 seconds
Verifying program safety:               [OK]            1397.588084 seconds
Verifying assertions:                   [OK]            5.542185 seconds
Verifying range specification:          [OK]            103.783935 seconds
Verifying algebraic specification:      [OK]            642.858892 seconds
Verification result:                    [OK]            2150.021686 seconds
*)
proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4, uint64 x5, uint64 x6, uint64 x7, uint64 x8, uint64 x9, uint64 x10, uint64 x11, uint64 x12, uint64 x13, uint64 x14, uint64 x15,
           uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 y4, uint64 y5, uint64 y6, uint64 y7, uint64 y8, uint64 y9, uint64 y10, uint64 y11, uint64 y12, uint64 y13, uint64 y14, uint64 y15,
           uint64 n, uint64 m0, uint64 m1, uint64 m2, uint64 m3, uint64 m4, uint64 m5, uint64 m6, uint64 m7, uint64 m8, uint64 m9, uint64 m10, uint64 m11, uint64 m12, uint64 m13, uint64 m14, uint64 m15) =
{
     and
       [
         eqmod m0 1 2,
         eqmod
           (
             (
               n
               *
               (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                          m8, m9, m10, m11, m12, m13, m14, m15])
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

mov L0x606200 n;
mov L0x606080 x0;
mov L0x606088 x1;
mov L0x606090 x2;
mov L0x606098 x3;
mov L0x6060a0 x4;
mov L0x6060a8 x5;
mov L0x6060b0 x6;
mov L0x6060b8 x7;
mov L0x6060c0 x8;
mov L0x6060c8 x9;
mov L0x6060d0 x10;
mov L0x6060d8 x11;
mov L0x6060e0 x12;
mov L0x6060e8 x13;
mov L0x6060f0 x14;
mov L0x6060f8 x15;
mov L0x606100 y0;
mov L0x606108 y1;
mov L0x606110 y2;
mov L0x606118 y3;
mov L0x606120 y4;
mov L0x606128 y5;
mov L0x606130 y6;
mov L0x606138 y7;
mov L0x606140 y8;
mov L0x606148 y9;
mov L0x606150 y10;
mov L0x606158 y11;
mov L0x606160 y12;
mov L0x606168 y13;
mov L0x606170 y14;
mov L0x606178 y15;
mov L0x606180 m0;
mov L0x606188 m1;
mov L0x606190 m2;
mov L0x606198 m3;
mov L0x6061a0 m4;
mov L0x6061a8 m5;
mov L0x6061b0 m6;
mov L0x6061b8 m7;
mov L0x6061c0 m8;
mov L0x6061c8 m9;
mov L0x6061d0 m10;
mov L0x6061d8 m11;
mov L0x6061e0 m12;
mov L0x6061e8 m13;
mov L0x6061f0 m14;
mov L0x6061f8 m15;

(* mov    (%r8),%r8                                #! EA = L0x606200 *)
mov r8 L0x606200;
(* mov    (%r12),%rbx                              #! EA = L0x606100 *)
mov rbx L0x606100;
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
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606108 *)
mov rbx L0x606108;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1])
        )
        (
          (limbs 64 [0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606110 *)
mov rbx L0x606110;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606118 *)
mov rbx L0x606118;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3])
        )
        (
          (limbs 64 [0, 0, 0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606120 *)
mov rbx L0x606120;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606128 *)
mov rbx L0x606128;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3, y4, y5])
        )
        (
          (limbs 64 [0, 0, 0, 0, 0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606130 *)
mov rbx L0x606130;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606138 *)
mov rbx L0x606138;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3, y4, y5, y6, y7])
        )
        (
          (limbs 64 [0, 0, 0, 0, 0, 0, 0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606140 *)
mov rbx L0x606140;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x9 *)
mov r14 9@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606148 *)
mov rbx L0x606148;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0xa *)
mov r14 10@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3, y4, y5, y6, y7,
                     y8, y9])
        )
        (
          (limbs 64 [0, 0, 0, 0, 0, 0, 0, 0,
                     0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606150 *)
mov rbx L0x606150;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0xb *)
mov r14 11@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606158 *)
mov rbx L0x606158;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0xc *)
mov r14 12@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3, y4, y5, y6, y7,
                     y8, y9, y10, y11])
        )
        (
          (limbs 64 [0, 0, 0, 0, 0, 0, 0, 0,
                     0, 0, 0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606160 *)
mov rbx L0x606160;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0xd *)
mov r14 13@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606168 *)
mov rbx L0x606168;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0xe *)
mov r14 14@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

ecut
    and [
      eq n L0x606200,
      eq x0 L0x606080,
      eq x1 L0x606088,
      eq x2 L0x606090,
      eq x3 L0x606098,
      eq x4 L0x6060a0,
      eq x5 L0x6060a8,
      eq x6 L0x6060b0,
      eq x7 L0x6060b8,
      eq x8 L0x6060c0,
      eq x9 L0x6060c8,
      eq x10 L0x6060d0,
      eq x11 L0x6060d8,
      eq x12 L0x6060e0,
      eq x13 L0x6060e8,
      eq x14 L0x6060f0,
      eq x15 L0x6060f8,
      eq y0 L0x606100,
      eq y1 L0x606108,
      eq y2 L0x606110,
      eq y3 L0x606118,
      eq y4 L0x606120,
      eq y5 L0x606128,
      eq y6 L0x606130,
      eq y7 L0x606138,
      eq y8 L0x606140,
      eq y9 L0x606148,
      eq y10 L0x606150,
      eq y11 L0x606158,
      eq y12 L0x606160,
      eq y13 L0x606168,
      eq y14 L0x606170,
      eq y15 L0x606178,
      eq m0 L0x606180,
      eq m1 L0x606188,
      eq m2 L0x606190,
      eq m3 L0x606198,
      eq m4 L0x6061a0,
      eq m5 L0x6061a8,
      eq m6 L0x6061b0,
      eq m7 L0x6061b8,
      eq m8 L0x6061c0,
      eq m9 L0x6061c8,
      eq m10 L0x6061d0,
      eq m11 L0x6061d8,
      eq m12 L0x6061e0,
      eq m13 L0x6061e8,
      eq m14 L0x6061f0,
      eq m15 L0x6061f8,
      eqmod m0 1 2,
      eqmod
        (
          (
            n
            *
            (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                       m8, m9, m10, m11, m12, m13, m14, m15])
          )
          +
          1
        )
        0
        (limbs 64 [0, 1]),
      eq r8 n,
      eq rax x0,
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3, y4, y5, y6, y7,
                     y8, y9, y10, y11, y12, y13])
        )
        (
          (limbs 64 [0, 0, 0, 0, 0, 0, 0, 0,
                     0, 0, 0, 0, 0, 0,
                     1])
          *
          (limbs 64 [L0x7fffffffe000, L0x7fffffffe008, L0x7fffffffe010, L0x7fffffffe018,
                     L0x7fffffffe020, L0x7fffffffe028, L0x7fffffffe030, L0x7fffffffe038,
                     L0x7fffffffe040, L0x7fffffffe048, L0x7fffffffe050, L0x7fffffffe058,
                     L0x7fffffffe060, L0x7fffffffe068, L0x7fffffffe070, L0x7fffffffe078,
                     L0x7fffffffe080])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ];
rcut
     L0x7fffffffe080 < const 64 2;

(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606170 *)
mov rbx L0x606170;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0xf *)
mov r14 15@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;
(* mov    (%r12,%r14,8),%rbx                       #! EA = L0x606178 *)
mov rbx L0x606178;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* mov    (%rsp),%r10                              #! EA = L0x7fffffffe000 *)
mov r10 L0x7fffffffe000;
(* mov    %r8,%rbp *)
mov rbp r8;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx),%rax                              #! EA = L0x606180 *)
mov rax L0x606180;
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
(* mov    0x8(%rcx),%rax                           #! EA = L0x606188 *)
mov rax L0x606188;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp),%r11                           #! EA = L0x7fffffffe008 *)
adds carry r11 L0x7fffffffe008 r11;
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
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffe000 *)
mov L0x7fffffffe000 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x606190 *)
mov rax L0x606190;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe010 *)
adds carry r10 L0x7fffffffe010 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe008 *)
mov L0x7fffffffe008 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x606198 *)
mov rax L0x606198;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe018 *)
adds carry r11 L0x7fffffffe018 r11;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe010 *)
mov L0x7fffffffe010 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061a0 *)
mov rax L0x6061a0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe020 *)
adds carry r10 L0x7fffffffe020 r10;
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
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe018 *)
mov L0x7fffffffe018 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061a8 *)
mov rax L0x6061a8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe028 *)
adds carry r11 L0x7fffffffe028 r11;
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
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe020 *)
mov L0x7fffffffe020 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061b0 *)
mov rax L0x6061b0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe030 *)
adds carry r10 L0x7fffffffe030 r10;
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
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe028 *)
mov L0x7fffffffe028 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061b8 *)
mov rax L0x6061b8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe038 *)
adds carry r11 L0x7fffffffe038 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060c0 *)
mov rax L0x6060c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe030 *)
mov L0x7fffffffe030 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061c0 *)
mov rax L0x6061c0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe040 *)
adds carry r10 L0x7fffffffe040 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060c8 *)
mov rax L0x6060c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe038 *)
mov L0x7fffffffe038 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061c8 *)
mov rax L0x6061c8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe048 *)
adds carry r11 L0x7fffffffe048 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0xc *)
mov r15 12@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060d0 *)
mov rax L0x6060d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe040 *)
mov L0x7fffffffe040 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061d0 *)
mov rax L0x6061d0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe050 *)
adds carry r10 L0x7fffffffe050 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060d8 *)
mov rax L0x6060d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe048 *)
mov L0x7fffffffe048 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061d8 *)
mov rax L0x6061d8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe058 *)
adds carry r11 L0x7fffffffe058 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    (%rsi,%r15,8),%rax                       #! EA = L0x6060e0 *)
mov rax L0x6060e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe050 *)
mov L0x7fffffffe050 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    (%rcx,%r15,8),%rax                       #! EA = L0x6061e0 *)
mov rax L0x6061e0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    (%rsp,%r15,8),%r10                       #! EA = L0x7fffffffe060 *)
adds carry r10 L0x7fffffffe060 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    0x8(%rsi,%r15,8),%rax                    #! EA = L0x6060e8 *)
mov rax L0x6060e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe058 *)
mov L0x7fffffffe058 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    0x8(%rcx,%r15,8),%rax                    #! EA = L0x6061e8 *)
mov rax L0x6061e8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    0x8(%rsp,%r15,8),%r11                    #! EA = L0x7fffffffe068 *)
adds carry r11 L0x7fffffffe068 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x4(%r15),%r15                           #! EA = L0x10 *)
mov r15 16@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%rdi *)
adds carry rdi rax rdi;
(* mov    -0x10(%rsi,%r15,8),%rax                  #! EA = L0x6060f0 *)
mov rax L0x6060f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r11,%rdi *)
adds carry rdi r11 rdi;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdi,-0x20(%rsp,%r15,8)                  #! EA = L0x7fffffffe060 *)
mov L0x7fffffffe060 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    -0x10(%rcx,%r15,8),%rax                  #! EA = L0x6061f0 *)
mov rax L0x6061f0;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x10(%rsp,%r15,8),%r10                  #! EA = L0x7fffffffe070 *)
adds carry r10 L0x7fffffffe070 r10;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    -0x8(%rsi,%r15,8),%rax                   #! EA = L0x6060f8 *)
mov rax L0x6060f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* mov    %r13,-0x18(%rsp,%r15,8)                  #! EA = L0x7fffffffe068 *)
mov L0x7fffffffe068 r13;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    -0x8(%rcx,%r15,8),%rax                   #! EA = L0x6061f8 *)
mov rax L0x6061f8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    -0x8(%rsp,%r15,8),%r11                   #! EA = L0x7fffffffe078 *)
adds carry r11 L0x7fffffffe078 r11;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* lea    0x1(%r14),%r14                           #! EA = L0x10 *)
mov r14 16@uint64;
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
(* mov    %rdi,-0x10(%rsp,%r15,8)                  #! EA = L0x7fffffffe070 *)
mov L0x7fffffffe070 rdi;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* xor    %rdi,%rdi *)
mov rdi 0@uint64;
(* add    %r10,%r13 *)
adds carry r13 r10 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* add    (%rsp,%r9,8),%r13                        #! EA = L0x7fffffffe080 *)
adds carry r13 L0x7fffffffe080 r13;
(* adc    $0x0,%rdi *)
adc rdi 0@uint64 rdi carry;
(* mov    %r13,-0x8(%rsp,%r15,8)                   #! EA = L0x7fffffffe078 *)
mov L0x7fffffffe078 r13;
(* mov    %rdi,(%rsp,%r15,8)                       #! EA = L0x7fffffffe080 *)
mov L0x7fffffffe080 rdi;

mov z0 L0x7fffffffe000;
mov z1 L0x7fffffffe008;
mov z2 L0x7fffffffe010;
mov z3 L0x7fffffffe018;
mov z4 L0x7fffffffe020;
mov z5 L0x7fffffffe028;
mov z6 L0x7fffffffe030;
mov z7 L0x7fffffffe038;
mov z8 L0x7fffffffe040;
mov z9 L0x7fffffffe048;
mov z10 L0x7fffffffe050;
mov z11 L0x7fffffffe058;
mov z12 L0x7fffffffe060;
mov z13 L0x7fffffffe068;
mov z14 L0x7fffffffe070;
mov z15 L0x7fffffffe078;
mov z16 L0x7fffffffe080;

{
    and [
      eqmod
        (
          (limbs 64 [x0, x1, x2, x3, x4, x5, x6, x7,
                     x8, x9, x10, x11, x12, x13, x14, x15])
          *
          (limbs 64 [y0, y1, y2, y3, y4, y5, y6, y7,
                     y8, y9, y10, y11, y12, y13, y14, y15])
        )
        (
          (limbs 64 [0, 0, 0, 0, 0, 0, 0, 0,
                     0, 0, 0, 0, 0, 0, 0, 0,
                     1])
          *
          (limbs 64 [z0, z1, z2, z3,
                     z4, z5, z6, z7,
                     z8, z9, z10, z11,
                     z12, z13, z14, z15,
                     z16])
        )
        (
          (limbs 64 [m0, m1, m2, m3, m4, m5, m6, m7,
                     m8, m9, m10, m11, m12, m13, m14, m15])
        )
    ]
&&
     z16 < const 64 2
}
