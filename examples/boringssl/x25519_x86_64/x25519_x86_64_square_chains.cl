(* quine: -isafety
Parsing Cryptoline file:                [OK]            0.001674 seconds
Checking well-formedness:               [OK]            0.000390 seconds
Transforming to SSA form:               [OK]            0.000683 seconds
Verifying program safety:               [OK]            5.471725 seconds
Verifying range specification:          [OK]            0.487048 seconds
Verifying algebraic specification:      [OK]            0.023033 seconds
Verification result:                    [OK]            5.984736 seconds
*)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4) =
{
     true
  &&
     and [a0 <= const 64 (2**52),
              a1 <= const 64 (2**52),
              a2 <= const 64 (2**52),
              a3 <= const 64 (2**52),
              a4 <= const 64 (2**52)]
}

mov L0x603060 a0;
mov L0x603068 a1;
mov L0x603070 a2;
mov L0x603078 a3;
mov L0x603080 a4;

mov L0x6030d0 4503599627370495@uint64;  (* 2**52 - 1 *)

(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* mulq   (%rsi)                                   #! EA = L0x603060 *)
mull rdx rax L0x603060 rax;
(* mov    %rax,%rcx *)
mov rcx rax;
(* mov    %rdx,%r8 *)
mov r8 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x8(%rsi)                                #! EA = L0x603068 *)
mull rdx rax L0x603068 rax;
(* mov    %rax,%r9 *)
mov r9 rax;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x10(%rsi)                               #! EA = L0x603070 *)
mull rdx rax L0x603070 rax;
(* mov    %rax,%r11 *)
mov r11 rax;
(* mov    %rdx,%r12 *)
mov r12 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x18(%rsi)                               #! EA = L0x603078 *)
mull rdx rax L0x603078 rax;
(* mov    %rax,%r13 *)
mov r13 rax;
(* mov    %rdx,%r14 *)
mov r14 rdx;
(* mov    (%rsi),%rax                              #! EA = L0x603060 *)
mov rax L0x603060;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x20(%rsi)                               #! EA = L0x603080 *)
mull rdx rax L0x603080 rax;
(* mov    %rax,%r15 *)
mov r15 rax;
(* mov    %rdx,%rbx *)
mov rbx rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* mulq   0x8(%rsi)                                #! EA = L0x603068 *)
mull rdx rax L0x603068 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    %rdx,%r12 *)
(* adcs carry r12 rdx r12 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r12 rdx r12 carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x10(%rsi)                               #! EA = L0x603070 *)
mull rdx rax L0x603070 rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* adc    %rdx,%r14 *)
(* adcs carry r14 rdx r14 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r14 rdx r14 carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x603068 *)
mov rax L0x603068;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x18(%rsi)                               #! EA = L0x603078 *)
mull rdx rax L0x603078 rax;
(* add    %rax,%r15 *)
adds carry r15 rax r15;
(* adc    %rdx,%rbx *)
(* adcs carry rbx rdx rbx carry; *)
(* NOTE: ignore carry because it is zero *)
adc rbx rdx rbx carry;
mov carry 0@uint64;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x603068 *)
mov rdx L0x603068;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x603080 *)
mull rdx rax L0x603080 rax;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* adc    %rdx,%r8 *)
(* adcs carry r8 rdx r8 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r8 rdx r8 carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x603070 *)
mov rax L0x603070;
(* mulq   0x10(%rsi)                               #! EA = L0x603070 *)
mull rdx rax L0x603070 rax;
(* add    %rax,%r15 *)
adds carry r15 rax r15;
(* adc    %rdx,%rbx *)
(* adcs carry rbx rdx rbx carry; *)
(* NOTE: ignore carry because it is zero *)
adc rbx rdx rbx carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x603070 *)
mov rdx L0x603070;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x603078 *)
mull rdx rax L0x603078 rax;
(* add    %rax,%rcx *)
adds carry rcx rax rcx;
(* adc    %rdx,%r8 *)
(* adcs carry r8 rdx r8 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r8 rdx r8 carry;
mov carry 0@uint64;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x603070 *)
mov rdx L0x603070;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x603080 *)
mull rdx rax L0x603080 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* adc    %rdx,%r10 *)
(* adcs carry r10 rdx r10 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r10 rdx r10 carry;
mov carry 0@uint64;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x603078 *)
mov rdx L0x603078;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x18(%rsi)                               #! EA = L0x603078 *)
mull rdx rax L0x603078 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* adc    %rdx,%r10 *)
(* adcs carry r10 rdx r10 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r10 rdx r10 carry;
mov carry 0@uint64;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x603078 *)
mov rdx L0x603078;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x603080 *)
mull rdx rax L0x603080 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    %rdx,%r12 *)
(* adcs carry r12 rdx r12 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r12 rdx r12 carry;
mov carry 0@uint64;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x603080 *)
mov rdx L0x603080;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rsi)                               #! EA = L0x603080 *)
mull rdx rax L0x603080 rax;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* adc    %rdx,%r14 *)
(* adcs carry r14 rdx r14 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r14 rdx r14 carry;
mov carry 0@uint64;
(* mov    0x2026da(%rip),%rsi        # 0x6030d0    #! EA = L0x6030d0 *)
mov rsi L0x6030d0;
(* shld   $0xd,%rcx,%r8 *)
(* NOTE: merge 'shld $0xd,%rcx,%r8' with 'and %rsi,%rcs' *)
cshl r8 tmp r8 rcx 13;
(* and    %rsi,%rcx *)
(* split tmp rcx rcx 51; *)
(* NOTE: see above *)
mov rcx tmp;
(* shld   $0xd,%r9,%r10 *)
(* NOTE: merge 'shld $0xd,%r9,%r10' with 'and %rsi,%r9' *)
cshl r10 tmp r10 r9 13;
(* and    %rsi,%r9 *)
(* split tmp r9 r9 51; *)
(* NOTE: see above *)
mov r9 tmp;
(* add    %r8,%r9 *)
(* adds carry r9 r8 r9; *)
(* NOTE: ignore carry because it is zero *)
add r9 r8 r9;
mov carry 0@uint64;
(* shld   $0xd,%r11,%r12 *)
(* NOTE: merge 'shld $0xd,%r11,%12' with 'and %rsi,%r11' *)
cshl r12 tmp r12 r11 13;
(* and    %rsi,%r11 *)
(* split tmp r11 r11 51; *)
(* NOTE: see above *)
mov r11 tmp;
(* add    %r10,%r11 *)
(* adds carry r11 r10 r11; *)
(* NOTE: ignore carry because it is zero *)
add r11 r10 r11;
mov carry 0@uint64;
(* shld   $0xd,%r13,%r14 *)
(* NOTE: merge 'shld $0xd,%r13,%r14' with 'and %rsi,%r13' *)
cshl r14 tmp r14 r13 13;
(* and    %rsi,%r13 *)
(* split tmp r13 r13 51; *)
(* NOTE: see above *)
mov r13 tmp;
(* add    %r12,%r13 *)
(* adds carry r13 r12 r13; *)
(* NOTE: ignore carry because it is zero *)
add r13 r12 r13;
mov carry 0@uint64;
(* shld   $0xd,%r15,%rbx *)
(* NOTE: merge 'shld $0xd,%r15,%rbx' with 'and %rsi,%r15' *)
cshl rbx tmp rbx r15 13;
(* and    %rsi,%r15 *)
(* split tmp r15 r15 51; *)
(* NOTE: see above *)
mov r15 tmp;
(* add    %r14,%r15 *)
(* adds carry r15 r14 r15; *)
(* NOTE: ignore carry because it is zero *)
add r15 r14 r15;
mov carry 0@uint64;
(* imul   $0x13,%rbx,%rdx *)
mul rdx 19@uint64 rbx;
(* add    %rdx,%rcx *)
(* adds carry rcx rdx rcx; *)
(* NOTE: ignore carry because it is zero *)
add rcx rdx rcx;
mov carry 0@uint64;
(* mov    %rcx,%rdx *)
mov rdx rcx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and '%rsi,%rcx' *)
cshl rdx rcx 0@uint64 rdx 13;
(* add    %r9,%rdx *)
(* adds carry rdx r9 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r9 rdx;
mov carry 0@uint64;
(* and    %rsi,%rcx *)
(* split tmp rcx rcx 51; *)
(* NOTE: see above *)
(* mov    %rdx,%r8 *)
mov r8 rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and '%rsi,%r8' *)
cshl rdx r8 0@uint64 rdx 13;
(* add    %r11,%rdx *)
(* adds carry rdx r11 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r11 rdx;
mov carry 0@uint64;
(* and    %rsi,%r8 *)
(* split tmp r8 r8 51; *)
(* NOTE: see above *)
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and '%rsi,%r9' *)
cshl rdx r9 0@uint64 rdx 13;
(* add    %r13,%rdx *)
(* adds carry rdx r13 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r13 rdx;
mov carry 0@uint64;
(* and    %rsi,%r9 *)
(* split tmp r9 r9 51; *)
(* NOTE: see above *)
(* mov    %rdx,%rax *)
mov rax rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and '%rsi,%rax' *)
cshl rdx rax 0@uint64 rdx 13;
(* add    %r15,%rdx *)
(* adds carry rdx r15 rdx; *)
(* NOTE: ignore carry because it is zero *)
add rdx r15 rdx;
mov carry 0@uint64;
(* and    %rsi,%rax *)
(* split tmp rax rax 51; *)
(* NOTE: see above *)
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* shr    $0x33,%rdx *)
(* split rdx tmp rdx 51; *)
(* NOTE: merge 'shr $0x33,%rdx' with 'and '%rsi,%r10' *)
cshl rdx r10 0@uint64 rdx 13;
(* imul   $0x13,%rdx,%rdx *)
mul rdx 19@uint64 rdx;
(* add    %rdx,%rcx *)
(* adds carry rcx rdx rcx; *)
(* NOTE: ignore carry because it is zero *)
add rcx rdx rcx;
mov carry 0@uint64;
(* and    %rsi,%r10 *)
(* split tmp r10 r10 51; *)
(* NOTE: see above *)
(* mov    %rcx,(%rdi)                              #! EA = L0x7fffffffdb40 *)
mov L0x7fffffffdb40 rcx;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdb48 *)
mov L0x7fffffffdb48 r8;
(* mov    %r9,0x10(%rdi)                           #! EA = L0x7fffffffdb50 *)
mov L0x7fffffffdb50 r9;
(* mov    %rax,0x18(%rdi)                          #! EA = L0x7fffffffdb58 *)
mov L0x7fffffffdb58 rax;
(* mov    %r10,0x20(%rdi)                          #! EA = L0x7fffffffdb60 *)
mov L0x7fffffffdb60 r10;

mov t0 L0x7fffffffdb40;
mov t1 L0x7fffffffdb48;
mov t2 L0x7fffffffdb50;
mov t3 L0x7fffffffdb58;
mov t4 L0x7fffffffdb60;

{
     eqmod
       (
         (limbs 51 [a0, a1, a2, a3, a4])
         *
         (limbs 51 [a0, a1, a2, a3, a4])
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
