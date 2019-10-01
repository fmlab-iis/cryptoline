(* quine: -isafety
Parsing Cryptoline file:                [OK]            0.009998 seconds
Checking well-formedness:               [OK]            0.000673 seconds
Transforming to SSA form:               [OK]            0.001902 seconds
Verifying program safety:               [OK]            27.599830 seconds
Verifying range specification:          [OK]            0.859598 seconds
Verifying algebraic specification:      [OK]            0.027773 seconds
Verification result:                    [OK]            28.499988 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4) =
{
     true
  &&
     and [a0 <= const 64 (2**52),
              a1 <= const 64 (2**52),
              a2 <= const 64 (2**52),
              a3 <= const 64 (2**52),
              a4 <= const 64 (2**52),
              b0 <= const 64 (2**52),
              b1 <= const 64 (2**52),
              b2 <= const 64 (2**52),
              b3 <= const 64 (2**52),
              b4 <= const 64 (2**52)]
}

mov L0x603060 a0;
mov L0x603068 a1;
mov L0x603070 a2;
mov L0x603078 a3;
mov L0x603080 a4;

mov L0x6030a0 b0;
mov L0x6030a8 b1;
mov L0x6030b0 b2;
mov L0x6030b8 b3;
mov L0x6030c0 b4;

mov L0x6030d0 0x0007FFFFFFFFFFFF@uint64;  (* 2**51 - 1 *)

(* mov    0x18(%rsi),%rdx                          #! EA = L0x603078 *)
mov rdx L0x603078;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,-0x40(%rsp)                         #! EA = L0x7fffffffdb08 *)
mov L0x7fffffffdb08 rax;
(* mulq   0x10(%rcx)                               #! EA = L0x6030b0 *)
mull rdx rax L0x6030b0 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x603080 *)
mov rdx L0x603080;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,-0x48(%rsp)                         #! EA = L0x7fffffffdb00 *)
mov L0x7fffffffdb00 rax;
(* mulq   0x8(%rcx)                                #! EA = L0x6030a8 *)
mull rdx rax L0x6030a8 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* adcs carry r9 rdx r9 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
mov carry 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mulq   (%rcx)                                   #! EA = L0x6030a0 *)
mull rdx rax L0x6030a0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* adcs carry r9 rdx r9 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
mov carry 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mulq   0x8(%rcx)                                #! EA = L0x6030a8 *)
mull rdx rax L0x6030a8 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mulq   0x10(%rcx)                               #! EA = L0x6030b0 *)
mull rdx rax L0x6030b0 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mulq   0x18(%rcx)                               #! EA = L0x6030b8 *)
mull rdx rax L0x6030b8 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mulq   0x20(%rcx)                               #! EA = L0x6030c0 *)
mull rdx rax L0x6030c0 rax;
(* mov    %rax,%rbx *)
mov rbx rax;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* mulq   (%rcx)                                   #! EA = L0x6030a0 *)
mull rdx rax L0x6030a0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* adcs carry r11 rdx r11 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* mulq   0x8(%rcx)                                #! EA = L0x6030a8 *)
mull rdx rax L0x6030a8 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* adcs carry r13 rdx r13 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* mulq   0x10(%rcx)                               #! EA = L0x6030b0 *)
mull rdx rax L0x6030b0 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* adcs carry r15 rdx r15 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* mulq   0x18(%rcx)                               #! EA = L0x6030b8 *)
mull rdx rax L0x6030b8 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
(* adcs carry rbp rdx rbp carry; *)
(* NOTE: ignore carry because it is zero *)
adc rbp rdx rbp carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x603068 *)
mov rdx L0x603068;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x6030c0 *)
mull rdx rax L0x6030c0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* adcs carry r9 rdx r9 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* mulq   (%rcx)                                   #! EA = L0x6030a0 *)
mull rdx rax L0x6030a0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* adcs carry r13 rdx r13 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* mulq   0x8(%rcx)                                #! EA = L0x6030a8 *)
mull rdx rax L0x6030a8 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* adcs carry r15 rdx r15 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* mulq   0x10(%rcx)                               #! EA = L0x6030b0 *)
mull rdx rax L0x6030b0 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
(* adcs carry rbp rdx rbp carry; *)
(* NOTE: ignore carry because it is zero *)
adc rbp rdx rbp carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x603070 *)
mov rdx L0x603070;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x18(%rcx)                               #! EA = L0x6030b8 *)
mull rdx rax L0x6030b8 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* adcs carry r9 rdx r9 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x603070 *)
mov rdx L0x603070;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rcx)                               #! EA = L0x6030c0 *)
mull rdx rax L0x6030c0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* adcs carry r11 rdx r11 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
mov carry 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* mulq   (%rcx)                                   #! EA = L0x6030a0 *)
mull rdx rax L0x6030a0 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* adcs carry r15 rdx r15 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
mov carry 0@uint64;
(* mov    0x18(%rsi),%rax                          #! EA = L0x603078 *)
mov rax L0x603078;
(* mulq   0x8(%rcx)                                #! EA = L0x6030a8 *)
mull rdx rax L0x6030a8 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
(* adcs carry rbp rdx rbp carry; *)
(* NOTE: ignore carry because it is zero *)
adc rbp rdx rbp carry;
mov carry 0@uint64;
(* mov    -0x40(%rsp),%rax                         #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* mulq   0x18(%rcx)                               #! EA = L0x6030b8 *)
mull rdx rax L0x6030b8 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* adcs carry r11 rdx r11 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
mov carry 0@uint64;
(* mov    -0x40(%rsp),%rax                         #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* mulq   0x20(%rcx)                               #! EA = L0x6030c0 *)
mull rdx rax L0x6030c0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* adcs carry r13 rdx r13 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
mov carry 0@uint64;
(* mov    0x20(%rsi),%rax                          #! EA = L0x603080 *)
mov rax L0x603080;
(* mulq   (%rcx)                                   #! EA = L0x6030a0 *)
mull rdx rax L0x6030a0 rax;
(* add    %rax,%rbx *)
adds carry rbx rax rbx;
(* adc    %rdx,%rbp *)
(* adcs carry rbp rdx rbp carry; *)
(* NOTE: ignore carry because it is zero *)
adc rbp rdx rbp carry;
mov carry 0@uint64;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffdb00 *)
mov rax L0x7fffffffdb00;
(* mulq   0x10(%rcx)                               #! EA = L0x6030b0 *)
mull rdx rax L0x6030b0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* adcs carry r11 rdx r11 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
mov carry 0@uint64;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffdb00 *)
mov rax L0x7fffffffdb00;
(* mulq   0x18(%rcx)                               #! EA = L0x6030b8 *)
mull rdx rax L0x6030b8 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* adcs carry r13 rdx r13 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
mov carry 0@uint64;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffdb00 *)
mov rax L0x7fffffffdb00;
(* mulq   0x20(%rcx)                               #! EA = L0x6030c0 *)
mull rdx rax L0x6030c0 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* adcs carry r15 rdx r15 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
mov carry 0@uint64;

(* mov    0x202831(%rip),%rsi        # 0x6030d0    #! EA = L0x6030d0 *)
mov rsi L0x6030d0;
(* shld   $0xd,%r8,%r9 *)
(* cshl r9 tmp r9 r8 13; *)
(* and    %rsi,%r8 *)
(* split tmp r8 r8 51; *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rsi,%r8' *)
cshl r9 r8 r9 r8 13;
(* shld   $0xd,%r10,%r11 *)
(* cshl r11 tmp r11 r10 13; *)
(* and    %rsi,%r10 *)
(* split tmp r10 r10 51; *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rsi,%r10' *)
cshl r11 r10 r11 r10 13;
(* add    %r9,%r10 *)
(* adds carry r10 r9 r10; *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
mov carry 0@uint64;
(* shld   $0xd,%r12,%r13 *)
(* cshl r13 tmp r13 r12 13; *)
(* and    %rsi,%r12 *)
(* split tmp r12 r12 51; *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rsi,%r12' *)
cshl r13 r12 r13 r12 13;
(* add    %r11,%r12 *)
(* adds carry r12 r11 r12; *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
mov carry 0@uint64;
(* shld   $0xd,%r14,%r15 *)
(* cshl r15 tmp r15 r14 13; *)
(* and    %rsi,%r14 *)
(* split tmp r14 r14 51; *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rsi,%r14' *)
cshl r15 r14 r15 r14 13;
(* add    %r13,%r14 *)
(* adds carry r14 r13 r14; *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
mov carry 0@uint64;
(* shld   $0xd,%rbx,%rbp *)
(* cshl rbp tmp rbp rbx 13; *)
(* and    %rsi,%rbx *)
(* split tmp rbx rbx 51; *)
(* NOTE: merge 'shld $0xd,%rbx,%rbp' with 'and %rsi,%rbx' *)
cshl rbp rbx rbp rbx 13;
(* add    %r15,%rbx *)
(* adds carry rbx r15 rbx; *)
(* NOTE: ignore carry because it is zero *)
add rbx r15 rbx;
mov carry 0@uint64;
(* imul   $0x13,%rbp,%rdx *)
mul rdx 19@uint64 rbp;
(* add    %rdx,%r8 *)
(* adds carry r8 rdx r8; *)
(* NOTE: ignore carry because it is zero *)
add r8 rdx r8;
mov carry 0@uint64;

(* mov    %r8,%rdx *)
mov rdx r8;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and %rsi,%r8' *)
cshl rdx tmp0 0@uint64 rdx 13;
(* add    %r10,%rdx *)
(* adds carry rdx r10 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r10 rdx;
mov carry 0@uint64;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and %rsi,%rcx' *)
cshl rdx tmp1 0@uint64 rdx 13;
(* and    %rsi,%r8 *)
(* split tmp r8 r8 51; *)
(* NOTE: recover lower 51 bits *)
mov r8 tmp0;
(* add    %r12,%rdx *)
(* adds carry rdx r12 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r12 rdx;
mov carry 0@uint64;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and %rsi,%r9' *)
cshl rdx tmp0 0@uint64 rdx 13;
(* and    %rsi,%rcx *)
(* split tmp rcx rcx 51; *)
(* NOTE: recover lower 51 bits *)
mov rcx tmp1;
(* add    %r14,%rdx *)
(* adds carry rdx r14 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r14 rdx;
mov carry 0@uint64;
(* mov    %rdx,%rax *)
mov rax rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and %rsi,%rax' *)
cshl rdx tmp1 0@uint64 rdx 13;
(* and    %rsi,%r9 *)
(* split tmp r9 r9 51; *)
(* NOTE: recover lower 51 bits *)
mov r9 tmp0;
(* add    %rbx,%rdx *)
(* adds carry rdx rbx rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx rbx rdx;
mov carry 0@uint64;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and %rsi,%r10' *)
cshl rdx tmp0 0@uint64 rdx 13;
(* and    %rsi,%rax *)
(* split tmp rax rax 51; *)
(* NOTE: recover lower 51 bits *)
mov rax tmp1;
(* imul   $0x13,%rdx,%rdx *)
mul rdx 19@uint64 rdx;
(* add    %rdx,%r8 *)
(* adds carry r8 rdx r8; *)
(* NOTE: ignore carry because it is zero *)
add r8 rdx r8;
mov carry 0@uint64;
(* and    %rsi,%r10 *)
(* split tmp r10 r10 51; *)
(* NOTE: recover lower 51 bits *)
mov r10 tmp0;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb50 *)
mov L0x7fffffffdb50 r8;
(* mov    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdb58 *)
mov L0x7fffffffdb58 rcx;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffdb60 *)
mov L0x7fffffffdb60 r9;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffdb68 *)
mov L0x7fffffffdb68 rax;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdb70 *)
mov L0x7fffffffdb70 r10;

mov t0 L0x7fffffffdb50;
mov t1 L0x7fffffffdb58;
mov t2 L0x7fffffffdb60;
mov t3 L0x7fffffffdb68;
mov t4 L0x7fffffffdb70;

{
     eqmod
       (
         (limbs 51 [a0, a1, a2, a3, a4])
         *
         (limbs 51 [b0, b1, b2, b3, b4])
       )

       (
         (limbs 51 [t0, t1, t2, t3, t4])
       )

       (
         (((2**255 )- 19))
       )
  &&
     and [t0 <= const 64 (2**52),
              t1 <= const 64 (2**52),
              t2 <= const 64 (2**52),
              t3 <= const 64 (2**52),
              t4 <= const 64 (2**52)]
}
