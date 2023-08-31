(* quine: -v -btor -isafety -no_carry_constraint -jobs 20 -qfbv_args '-SE minisat'
Parsing Cryptoline file:                [OK]            0.014824 seconds
Checking well-formedness:               [OK]            0.003057 seconds
Transforming to SSA form:               [OK]            0.012321 seconds
Rewriting assignments:                  [OK]            0.014010 seconds
Verifying program safety:               [OK]            118.953663 seconds
Verifying range specification:          [OK]            15.345122 seconds
Verifying algebraic specification:      [OK]            173.090186 seconds
Verification result:                    [OK]            307.434565 seconds
*)

(* quine: -isafety -no_carry_constraint
Parsing Cryptoline file:                [OK]            0.020486 seconds
Checking well-formedness:               [OK]            0.003010 seconds
Transforming to SSA form:               [OK]            0.011412 seconds
Verifying program safety:               [OK]            2304.915713 seconds
Verifying range specification:          [OK]            551.067473 seconds
Verifying algebraic specification:      [OK]            100.691727 seconds
Verification result:                    [OK]            2956.710033 seconds
*)

(* colossus2 with dp
Verifying program safety:               [OK]            2801.529847 seconds
Verifying range specification:          [OK]            2266.322034 seconds
Verifying algebraic specification:      [OK]            73.790716 seconds
Verification result:                    [OK]            5141.681373 seconds
*)

proc main (uint64 x1_0, uint64 x1_1, uint64 x1_2, uint64 x1_3, uint64 x1_4,
           uint64 x2_0, uint64 x2_1, uint64 x2_2, uint64 x2_3, uint64 x2_4, uint64 z2_0, uint64 z2_1, uint64 z2_2, uint64 z2_3, uint64 z2_4,
           uint64 x3_0, uint64 x3_1, uint64 x3_2, uint64 x3_3, uint64 x3_4, uint64 z3_0, uint64 z3_1, uint64 z3_2, uint64 z3_3, uint64 z3_4) =
{
     true
  &&
     and [x1_0 <= const 64 (2**51+2**15),
              x1_1 <= const 64 (2**51+2**15),
              x1_2 <= const 64 (2**51+2**15),
              x1_3 <= const 64 (2**51+2**15),
              x1_4 <= const 64 (2**51+2**15),
              x2_0 <= const 64 (2**51+2**15),
              x2_1 <= const 64 (2**51+2**15),
              x2_2 <= const 64 (2**51+2**15),
              x2_3 <= const 64 (2**51+2**15),
              x2_4 <= const 64 (2**51+2**15),
              z2_0 <= const 64 (2**51+2**15),
              z2_1 <= const 64 (2**51+2**15),
              z2_2 <= const 64 (2**51+2**15),
              z2_3 <= const 64 (2**51+2**15),
              z2_4 <= const 64 (2**51+2**15),
              x3_0 <= const 64 (2**51+2**15),
              x3_1 <= const 64 (2**51+2**15),
              x3_2 <= const 64 (2**51+2**15),
              x3_3 <= const 64 (2**51+2**15),
              x3_4 <= const 64 (2**51+2**15),
              z3_0 <= const 64 (2**51+2**15),
              z3_1 <= const 64 (2**51+2**15),
              z3_2 <= const 64 (2**51+2**15),
              z3_3 <= const 64 (2**51+2**15),
              z3_4 <= const 64 (2**51+2**15)]
}

mov L0x7fffffffda90 x1_0;
mov L0x7fffffffda98 x1_1;
mov L0x7fffffffdaa0 x1_2;
mov L0x7fffffffdaa8 x1_3;
mov L0x7fffffffdab0 x1_4;

mov L0x7fffffffdab8 x2_0;
mov L0x7fffffffdac0 x2_1;
mov L0x7fffffffdac8 x2_2;
mov L0x7fffffffdad0 x2_3;
mov L0x7fffffffdad8 x2_4;

mov L0x7fffffffdae0 z2_0;
mov L0x7fffffffdae8 z2_1;
mov L0x7fffffffdaf0 z2_2;
mov L0x7fffffffdaf8 z2_3;
mov L0x7fffffffdb00 z2_4;

mov L0x7fffffffdb08 x3_0;
mov L0x7fffffffdb10 x3_1;
mov L0x7fffffffdb18 x3_2;
mov L0x7fffffffdb20 x3_3;
mov L0x7fffffffdb28 x3_4;

mov L0x7fffffffdb30 z3_0;
mov L0x7fffffffdb38 z3_1;
mov L0x7fffffffdb40 z3_2;
mov L0x7fffffffdb48 z3_3;
mov L0x7fffffffdb50 z3_4;

mov L0x603150 2251799813685247@uint64;

mov L0x603158 996687872@uint64;

mov L0x603160 4503599627370458@uint64;
mov L0x603168 4503599627370494@uint64;

(* mov    0x28(%rdi),%rsi                          #! EA = L0x7fffffffdab8 *)
mov rsi L0x7fffffffdab8;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffdac0 *)
mov rdx L0x7fffffffdac0;
(* mov    0x38(%rdi),%rcx                          #! EA = L0x7fffffffdac8 *)
mov rcx L0x7fffffffdac8;
(* mov    0x40(%rdi),%r8                           #! EA = L0x7fffffffdad0 *)
mov r8 L0x7fffffffdad0;
(* mov    0x48(%rdi),%r9                           #! EA = L0x7fffffffdad8 *)
mov r9 L0x7fffffffdad8;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mov    %rcx,%r11 *)
mov r11 rcx;
(* mov    %r8,%r12 *)
mov r12 r8;
(* mov    %r9,%r13 *)
mov r13 r9;
(* add    0x20245f(%rip),%rax        # 0x603160    #! EA = L0x603160 *)
(* NOTE: ignore carry because it is zero *)
add rax L0x603160 rax;
(* add    0x202460(%rip),%r10        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r10 L0x603168 r10;
(* add    0x202459(%rip),%r11        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r11 L0x603168 r11;
(* add    0x202452(%rip),%r12        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r12 L0x603168 r12;
(* add    0x20244b(%rip),%r13        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r13 L0x603168 r13;
(* add    0x50(%rdi),%rsi                          #! EA = L0x7fffffffdae0 *)
(* NOTE: ignore carry because it is zero *)
add rsi L0x7fffffffdae0 rsi;
(* add    0x58(%rdi),%rdx                          #! EA = L0x7fffffffdae8 *)
(* NOTE: ignore carry because it is zero *)
add rdx L0x7fffffffdae8 rdx;
(* add    0x60(%rdi),%rcx                          #! EA = L0x7fffffffdaf0 *)
(* NOTE: ignore carry because it is zero *)
add rcx L0x7fffffffdaf0 rcx;
(* add    0x68(%rdi),%r8                           #! EA = L0x7fffffffdaf8 *)
(* NOTE: ignore carry because it is zero *)
add r8 L0x7fffffffdaf8 r8;
(* add    0x70(%rdi),%r9                           #! EA = L0x7fffffffdb00 *)
(* NOTE: ignore carry because it is zero *)
add r9 L0x7fffffffdb00 r9;
(* sub    0x50(%rdi),%rax                          #! EA = L0x7fffffffdae0 *)
sub rax rax L0x7fffffffdae0;
(* sub    0x58(%rdi),%r10                          #! EA = L0x7fffffffdae8 *)
sub r10 r10 L0x7fffffffdae8;
(* sub    0x60(%rdi),%r11                          #! EA = L0x7fffffffdaf0 *)
sub r11 r11 L0x7fffffffdaf0;
(* sub    0x68(%rdi),%r12                          #! EA = L0x7fffffffdaf8 *)
sub r12 r12 L0x7fffffffdaf8;
(* sub    0x70(%rdi),%r13                          #! EA = L0x7fffffffdb00 *)
sub r13 r13 L0x7fffffffdb00;
(* mov    %rsi,(%rsp)                              #! EA = L0x7fffffffd930 *)
mov L0x7fffffffd930 rsi;
(* mov    %rdx,0x8(%rsp)                           #! EA = L0x7fffffffd938 *)
mov L0x7fffffffd938 rdx;
(* mov    %rcx,0x10(%rsp)                          #! EA = L0x7fffffffd940 *)
mov L0x7fffffffd940 rcx;
(* mov    %r8,0x18(%rsp)                           #! EA = L0x7fffffffd948 *)
mov L0x7fffffffd948 r8;
(* mov    %r9,0x20(%rsp)                           #! EA = L0x7fffffffd950 *)
mov L0x7fffffffd950 r9;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd958 *)
mov L0x7fffffffd958 rax;
(* mov    %r10,0x30(%rsp)                          #! EA = L0x7fffffffd960 *)
mov L0x7fffffffd960 r10;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd968 *)
mov L0x7fffffffd968 r11;
(* mov    %r12,0x40(%rsp)                          #! EA = L0x7fffffffd970 *)
mov L0x7fffffffd970 r12;
(* mov    %r13,0x48(%rsp)                          #! EA = L0x7fffffffd978 *)
mov L0x7fffffffd978 r13;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd958 *)
mov rax L0x7fffffffd958;
(* mulq   0x28(%rsp)                               #! EA = L0x7fffffffd958 *)
mull rdx rax L0x7fffffffd958 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd958 *)
mov rax L0x7fffffffd958;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd958 *)
mov rax L0x7fffffffd958;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd958 *)
mov rax L0x7fffffffd958;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd958 *)
mov rax L0x7fffffffd958;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd960 *)
mov rax L0x7fffffffd960;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd960 *)
mov rax L0x7fffffffd960;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd960 *)
mov rax L0x7fffffffd960;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd960 *)
mov rdx L0x7fffffffd960;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffd968 *)
mov rax L0x7fffffffd968;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffd968 *)
mov rdx L0x7fffffffd968;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffd968 *)
mov rdx L0x7fffffffd968;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x40(%rsp),%rdx                          #! EA = L0x7fffffffd970 *)
mov rdx L0x7fffffffd970;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x40(%rsp),%rdx                          #! EA = L0x7fffffffd970 *)
mov rdx L0x7fffffffd970;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x48(%rsp),%rdx                          #! EA = L0x7fffffffd978 *)
mov rdx L0x7fffffffd978;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x2022b9(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp 0@uint64 rcx 13;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd980 *)
mov L0x7fffffffd980 rsi;
(* mov    %r8,0x58(%rsp)                           #! EA = L0x7fffffffd988 *)
mov L0x7fffffffd988 r8;
(* mov    %r9,0x60(%rsp)                           #! EA = L0x7fffffffd990 *)
mov L0x7fffffffd990 r9;
(* mov    %rax,0x68(%rsp)                          #! EA = L0x7fffffffd998 *)
mov L0x7fffffffd998 rax;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd9a0 *)
mov L0x7fffffffd9a0 r10;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   (%rsp)                                   #! EA = L0x7fffffffd930 *)
mull rdx rax L0x7fffffffd930 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd938 *)
mov rdx L0x7fffffffd938;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd940 *)
mov rax L0x7fffffffd940;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd940 *)
mov rdx L0x7fffffffd940;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd940 *)
mov rdx L0x7fffffffd940;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd948 *)
mov rdx L0x7fffffffd948;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd948 *)
mov rdx L0x7fffffffd948;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd950 *)
mov rdx L0x7fffffffd950;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x202105(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi' *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8' *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10' *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12' *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14' *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp 0@uint64 rcx 13;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp;
(* mov    %rsi,0x78(%rsp)                          #! EA = L0x7fffffffd9a8 *)
mov L0x7fffffffd9a8 rsi;
(* mov    %r8,0x80(%rsp)                           #! EA = L0x7fffffffd9b0 *)
mov L0x7fffffffd9b0 r8;
(* mov    %r9,0x88(%rsp)                           #! EA = L0x7fffffffd9b8 *)
mov L0x7fffffffd9b8 r9;
(* mov    %rax,0x90(%rsp)                          #! EA = L0x7fffffffd9c0 *)
mov L0x7fffffffd9c0 rax;
(* mov    %r10,0x98(%rsp)                          #! EA = L0x7fffffffd9c8 *)
mov L0x7fffffffd9c8 r10;
(* mov    %rsi,%rsi *)
mov rsi rsi;
(* mov    %r8,%rdx *)
mov rdx r8;
(* mov    %r9,%rcx *)
mov rcx r9;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %r10,%r9 *)
mov r9 r10;
(* add    0x20205a(%rip),%rsi        # 0x603160    #! EA = L0x603160 *)
(* NOTE: ignore carry because it is zero *)
add rsi L0x603160 rsi;
(* add    0x20205b(%rip),%rdx        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add rdx L0x603168 rdx;
(* add    0x202054(%rip),%rcx        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add rcx L0x603168 rcx;
(* add    0x20204d(%rip),%r8        # 0x603168     #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r8 L0x603168 r8;
(* add    0x202046(%rip),%r9        # 0x603168     #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r9 L0x603168 r9;
(* sub    0x50(%rsp),%rsi                          #! EA = L0x7fffffffd980 *)
sub rsi rsi L0x7fffffffd980;
(* sub    0x58(%rsp),%rdx                          #! EA = L0x7fffffffd988 *)
sub rdx rdx L0x7fffffffd988;
(* sub    0x60(%rsp),%rcx                          #! EA = L0x7fffffffd990 *)
sub rcx rcx L0x7fffffffd990;
(* sub    0x68(%rsp),%r8                           #! EA = L0x7fffffffd998 *)
sub r8 r8 L0x7fffffffd998;
(* sub    0x70(%rsp),%r9                           #! EA = L0x7fffffffd9a0 *)
sub r9 r9 L0x7fffffffd9a0;
(* mov    %rsi,0xa0(%rsp)                          #! EA = L0x7fffffffd9d0 *)
mov L0x7fffffffd9d0 rsi;
(* mov    %rdx,0xa8(%rsp)                          #! EA = L0x7fffffffd9d8 *)
mov L0x7fffffffd9d8 rdx;
(* mov    %rcx,0xb0(%rsp)                          #! EA = L0x7fffffffd9e0 *)
mov L0x7fffffffd9e0 rcx;
(* mov    %r8,0xb8(%rsp)                           #! EA = L0x7fffffffd9e8 *)
mov L0x7fffffffd9e8 r8;
(* mov    %r9,0xc0(%rsp)                           #! EA = L0x7fffffffd9f0 *)
mov L0x7fffffffd9f0 r9;
(* mov    0x78(%rdi),%rsi                          #! EA = L0x7fffffffdb08 *)
mov rsi L0x7fffffffdb08;
(* mov    0x80(%rdi),%rdx                          #! EA = L0x7fffffffdb10 *)
mov rdx L0x7fffffffdb10;
(* mov    0x88(%rdi),%rcx                          #! EA = L0x7fffffffdb18 *)
mov rcx L0x7fffffffdb18;
(* mov    0x90(%rdi),%r8                           #! EA = L0x7fffffffdb20 *)
mov r8 L0x7fffffffdb20;
(* mov    0x98(%rdi),%r9                           #! EA = L0x7fffffffdb28 *)
mov r9 L0x7fffffffdb28;
(* mov    %rsi,%rax *)
mov rax rsi;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mov    %rcx,%r11 *)
mov r11 rcx;
(* mov    %r8,%r12 *)
mov r12 r8;
(* mov    %r9,%r13 *)
mov r13 r9;
(* add    0x201fc7(%rip),%rax        # 0x603160    #! EA = L0x603160 *)
(* NOTE: ignore carry because it is zero *)
add rax L0x603160 rax;
(* add    0x201fc8(%rip),%r10        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r10 L0x603168 r10;
(* add    0x201fc1(%rip),%r11        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r11 L0x603168 r11;
(* add    0x201fba(%rip),%r12        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r12 L0x603168 r12;
(* add    0x201fb3(%rip),%r13        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r13 L0x603168 r13;
(* add    0xa0(%rdi),%rsi                          #! EA = L0x7fffffffdb30 *)
(* NOTE: ignore carry because it is zero *)
add rsi L0x7fffffffdb30 rsi;
(* add    0xa8(%rdi),%rdx                          #! EA = L0x7fffffffdb38 *)
(* NOTE: ignore carry because it is zero *)
add rdx L0x7fffffffdb38 rdx;
(* add    0xb0(%rdi),%rcx                          #! EA = L0x7fffffffdb40 *)
(* NOTE: ignore carry because it is zero *)
add rcx L0x7fffffffdb40 rcx;
(* add    0xb8(%rdi),%r8                           #! EA = L0x7fffffffdb48 *)
(* NOTE: ignore carry because it is zero *)
add r8 L0x7fffffffdb48 r8;
(* add    0xc0(%rdi),%r9                           #! EA = L0x7fffffffdb50 *)
(* NOTE: ignore carry because it is zero *)
add r9 L0x7fffffffdb50 r9;
(* sub    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
sub rax rax L0x7fffffffdb30;
(* sub    0xa8(%rdi),%r10                          #! EA = L0x7fffffffdb38 *)
sub r10 r10 L0x7fffffffdb38;
(* sub    0xb0(%rdi),%r11                          #! EA = L0x7fffffffdb40 *)
sub r11 r11 L0x7fffffffdb40;
(* sub    0xb8(%rdi),%r12                          #! EA = L0x7fffffffdb48 *)
sub r12 r12 L0x7fffffffdb48;
(* sub    0xc0(%rdi),%r13                          #! EA = L0x7fffffffdb50 *)
sub r13 r13 L0x7fffffffdb50;
(* mov    %rsi,0xc8(%rsp)                          #! EA = L0x7fffffffd9f8 *)
mov L0x7fffffffd9f8 rsi;
(* mov    %rdx,0xd0(%rsp)                          #! EA = L0x7fffffffda00 *)
mov L0x7fffffffda00 rdx;
(* mov    %rcx,0xd8(%rsp)                          #! EA = L0x7fffffffda08 *)
mov L0x7fffffffda08 rcx;
(* mov    %r8,0xe0(%rsp)                           #! EA = L0x7fffffffda10 *)
mov L0x7fffffffda10 r8;
(* mov    %r9,0xe8(%rsp)                           #! EA = L0x7fffffffda18 *)
mov L0x7fffffffda18 r9;
(* mov    %rax,0xf0(%rsp)                          #! EA = L0x7fffffffda20 *)
mov L0x7fffffffda20 rax;
(* mov    %r10,0xf8(%rsp)                          #! EA = L0x7fffffffda28 *)
mov L0x7fffffffda28 r10;
(* mov    %r11,0x100(%rsp)                         #! EA = L0x7fffffffda30 *)
mov L0x7fffffffda30 r11;
(* mov    %r12,0x108(%rsp)                         #! EA = L0x7fffffffda38 *)
mov L0x7fffffffda38 r12;
(* mov    %r13,0x110(%rsp)                         #! EA = L0x7fffffffda40 *)
mov L0x7fffffffda40 r13;
(* mov    0xe0(%rsp),%rsi                          #! EA = L0x7fffffffda10 *)
mov rsi L0x7fffffffda10;
(* imul   $0x13,%rsi,%rax *)
mul rax 19@uint64 rsi;
(* mov    %rax,0x118(%rsp)                         #! EA = L0x7fffffffda48 *)
mov L0x7fffffffda48 rax;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0xe8(%rsp),%rdx                          #! EA = L0x7fffffffda18 *)
mov rdx L0x7fffffffda18;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,0x120(%rsp)                         #! EA = L0x7fffffffda50 *)
mov L0x7fffffffda50 rax;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x28(%rsp)                               #! EA = L0x7fffffffd958 *)
mull rdx rax L0x7fffffffd958 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x28(%rsp)                               #! EA = L0x7fffffffd958 *)
mull rdx rax L0x7fffffffd958 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xd0(%rsp),%rdx                          #! EA = L0x7fffffffda00 *)
mov rdx L0x7fffffffda00;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xd8(%rsp),%rax                          #! EA = L0x7fffffffda08 *)
mov rax L0x7fffffffda08;
(* mulq   0x28(%rsp)                               #! EA = L0x7fffffffd958 *)
mull rdx rax L0x7fffffffd958 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xd8(%rsp),%rax                          #! EA = L0x7fffffffda08 *)
mov rax L0x7fffffffda08;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xd8(%rsp),%rax                          #! EA = L0x7fffffffda08 *)
mov rax L0x7fffffffda08;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xd8(%rsp),%rdx                          #! EA = L0x7fffffffda08 *)
mov rdx L0x7fffffffda08;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xd8(%rsp),%rdx                          #! EA = L0x7fffffffda08 *)
mov rdx L0x7fffffffda08;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xe0(%rsp),%rax                          #! EA = L0x7fffffffda10 *)
mov rax L0x7fffffffda10;
(* mulq   0x28(%rsp)                               #! EA = L0x7fffffffd958 *)
mull rdx rax L0x7fffffffd958 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xe0(%rsp),%rax                          #! EA = L0x7fffffffda10 *)
mov rax L0x7fffffffda10;
(* mulq   0x30(%rsp)                               #! EA = L0x7fffffffd960 *)
mull rdx rax L0x7fffffffd960 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x118(%rsp),%rax                         #! EA = L0x7fffffffda48 *)
mov rax L0x7fffffffda48;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x118(%rsp),%rax                         #! EA = L0x7fffffffda48 *)
mov rax L0x7fffffffda48;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xe8(%rsp),%rax                          #! EA = L0x7fffffffda18 *)
mov rax L0x7fffffffda18;
(* mulq   0x28(%rsp)                               #! EA = L0x7fffffffd958 *)
mull rdx rax L0x7fffffffd958 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x120(%rsp),%rax                         #! EA = L0x7fffffffda50 *)
mov rax L0x7fffffffda50;
(* mulq   0x38(%rsp)                               #! EA = L0x7fffffffd968 *)
mull rdx rax L0x7fffffffd968 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x120(%rsp),%rax                         #! EA = L0x7fffffffda50 *)
mov rax L0x7fffffffda50;
(* mulq   0x40(%rsp)                               #! EA = L0x7fffffffd970 *)
mull rdx rax L0x7fffffffd970 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x120(%rsp),%rax                         #! EA = L0x7fffffffda50 *)
mov rax L0x7fffffffda50;
(* mulq   0x48(%rsp)                               #! EA = L0x7fffffffd978 *)
mull rdx rax L0x7fffffffd978 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x201cff(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi' *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8' *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10' *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12' *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14' *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp0;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp1;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp0;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp1;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp0;
(* mov    %rsi,0x28(%rsp)                          #! EA = L0x7fffffffd958 *)
mov L0x7fffffffd958 rsi;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd960 *)
mov L0x7fffffffd960 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd968 *)
mov L0x7fffffffd968 r9;
(* mov    %rax,0x40(%rsp)                          #! EA = L0x7fffffffd970 *)
mov L0x7fffffffd970 rax;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffd978 *)
mov L0x7fffffffd978 r10;
(* mov    0x108(%rsp),%rsi                         #! EA = L0x7fffffffda38 *)
mov rsi L0x7fffffffda38;
(* imul   $0x13,%rsi,%rax *)
mul rax 19@uint64 rsi;
(* mov    %rax,0xc8(%rsp)                          #! EA = L0x7fffffffd9f8 *)
mov L0x7fffffffd9f8 rax;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0x110(%rsp),%rdx                         #! EA = L0x7fffffffda40 *)
mov rdx L0x7fffffffda40;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,0xd0(%rsp)                          #! EA = L0x7fffffffda00 *)
mov L0x7fffffffda00 rax;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xf0(%rsp),%rax                          #! EA = L0x7fffffffda20 *)
mov rax L0x7fffffffda20;
(* mulq   (%rsp)                                   #! EA = L0x7fffffffd930 *)
mull rdx rax L0x7fffffffd930 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xf0(%rsp),%rax                          #! EA = L0x7fffffffda20 *)
mov rax L0x7fffffffda20;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0xf0(%rsp),%rax                          #! EA = L0x7fffffffda20 *)
mov rax L0x7fffffffda20;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0xf0(%rsp),%rax                          #! EA = L0x7fffffffda20 *)
mov rax L0x7fffffffda20;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0xf0(%rsp),%rax                          #! EA = L0x7fffffffda20 *)
mov rax L0x7fffffffda20;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0xf8(%rsp),%rax                          #! EA = L0x7fffffffda28 *)
mov rax L0x7fffffffda28;
(* mulq   (%rsp)                                   #! EA = L0x7fffffffd930 *)
mull rdx rax L0x7fffffffd930 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xf8(%rsp),%rax                          #! EA = L0x7fffffffda28 *)
mov rax L0x7fffffffda28;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xf8(%rsp),%rax                          #! EA = L0x7fffffffda28 *)
mov rax L0x7fffffffda28;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xf8(%rsp),%rax                          #! EA = L0x7fffffffda28 *)
mov rax L0x7fffffffda28;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xf8(%rsp),%rdx                          #! EA = L0x7fffffffda28 *)
mov rdx L0x7fffffffda28;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x100(%rsp),%rax                         #! EA = L0x7fffffffda30 *)
mov rax L0x7fffffffda30;
(* mulq   (%rsp)                                   #! EA = L0x7fffffffd930 *)
mull rdx rax L0x7fffffffd930 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x100(%rsp),%rax                         #! EA = L0x7fffffffda30 *)
mov rax L0x7fffffffda30;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x100(%rsp),%rax                         #! EA = L0x7fffffffda30 *)
mov rax L0x7fffffffda30;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x100(%rsp),%rdx                         #! EA = L0x7fffffffda30 *)
mov rdx L0x7fffffffda30;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x100(%rsp),%rdx                         #! EA = L0x7fffffffda30 *)
mov rdx L0x7fffffffda30;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x108(%rsp),%rax                         #! EA = L0x7fffffffda38 *)
mov rax L0x7fffffffda38;
(* mulq   (%rsp)                                   #! EA = L0x7fffffffd930 *)
mull rdx rax L0x7fffffffd930 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x108(%rsp),%rax                         #! EA = L0x7fffffffda38 *)
mov rax L0x7fffffffda38;
(* mulq   0x8(%rsp)                                #! EA = L0x7fffffffd938 *)
mull rdx rax L0x7fffffffd938 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9f8 *)
mov rax L0x7fffffffd9f8;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x110(%rsp),%rax                         #! EA = L0x7fffffffda40 *)
mov rax L0x7fffffffda40;
(* mulq   (%rsp)                                   #! EA = L0x7fffffffd930 *)
mull rdx rax L0x7fffffffd930 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x10(%rsp)                               #! EA = L0x7fffffffd940 *)
mull rdx rax L0x7fffffffd940 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x18(%rsp)                               #! EA = L0x7fffffffd948 *)
mull rdx rax L0x7fffffffd948 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xd0(%rsp),%rax                          #! EA = L0x7fffffffda00 *)
mov rax L0x7fffffffda00;
(* mulq   0x20(%rsp)                               #! EA = L0x7fffffffd950 *)
mull rdx rax L0x7fffffffd950 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x201a65(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp0;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp1;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp0;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp1;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp0;
(* mov    %rsi,%rdx *)
mov rdx rsi;
(* mov    %r8,%rcx *)
mov rcx r8;
(* mov    %r9,%r11 *)
mov r11 r9;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %r10,%r13 *)
mov r13 r10;
(* add    0x2019df(%rip),%rdx        # 0x603160    #! EA = L0x603160 *)
(* NOTE: ignore carry because it is zero *)
add rdx L0x603160 rdx;
(* add    0x2019e0(%rip),%rcx        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add rcx L0x603168 rcx;
(* add    0x2019d9(%rip),%r11        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r11 L0x603168 r11;
(* add    0x2019d2(%rip),%r12        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r12 L0x603168 r12;
(* add    0x2019cb(%rip),%r13        # 0x603168    #! EA = L0x603168 *)
(* NOTE: ignore carry because it is zero *)
add r13 L0x603168 r13;
(* add    0x28(%rsp),%rsi                          #! EA = L0x7fffffffd958 *)
(* NOTE: ignore carry because it is zero *)
add rsi L0x7fffffffd958 rsi;
(* add    0x30(%rsp),%r8                           #! EA = L0x7fffffffd960 *)
(* NOTE: ignore carry because it is zero *)
add r8 L0x7fffffffd960 r8;
(* add    0x38(%rsp),%r9                           #! EA = L0x7fffffffd968 *)
(* NOTE: ignore carry because it is zero *)
add r9 L0x7fffffffd968 r9;
(* add    0x40(%rsp),%rax                          #! EA = L0x7fffffffd970 *)
(* NOTE: ignore carry because it is zero *)
add rax L0x7fffffffd970 rax;
(* add    0x48(%rsp),%r10                          #! EA = L0x7fffffffd978 *)
(* NOTE: ignore carry because it is zero *)
add r10 L0x7fffffffd978 r10;
(* sub    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd958 *)
sub rdx rdx L0x7fffffffd958;
(* sub    0x30(%rsp),%rcx                          #! EA = L0x7fffffffd960 *)
sub rcx rcx L0x7fffffffd960;
(* sub    0x38(%rsp),%r11                          #! EA = L0x7fffffffd968 *)
sub r11 r11 L0x7fffffffd968;
(* sub    0x40(%rsp),%r12                          #! EA = L0x7fffffffd970 *)
sub r12 r12 L0x7fffffffd970;
(* sub    0x48(%rsp),%r13                          #! EA = L0x7fffffffd978 *)
sub r13 r13 L0x7fffffffd978;
(* mov    %rsi,0x78(%rdi)                          #! EA = L0x7fffffffdb08 *)
mov L0x7fffffffdb08 rsi;
(* mov    %r8,0x80(%rdi)                           #! EA = L0x7fffffffdb10 *)
mov L0x7fffffffdb10 r8;
(* mov    %r9,0x88(%rdi)                           #! EA = L0x7fffffffdb18 *)
mov L0x7fffffffdb18 r9;
(* mov    %rax,0x90(%rdi)                          #! EA = L0x7fffffffdb20 *)
mov L0x7fffffffdb20 rax;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffdb28 *)
mov L0x7fffffffdb28 r10;
(* mov    %rdx,0xa0(%rdi)                          #! EA = L0x7fffffffdb30 *)
mov L0x7fffffffdb30 rdx;
(* mov    %rcx,0xa8(%rdi)                          #! EA = L0x7fffffffdb38 *)
mov L0x7fffffffdb38 rcx;
(* mov    %r11,0xb0(%rdi)                          #! EA = L0x7fffffffdb40 *)
mov L0x7fffffffdb40 r11;
(* mov    %r12,0xb8(%rdi)                          #! EA = L0x7fffffffdb48 *)
mov L0x7fffffffdb48 r12;
(* mov    %r13,0xc0(%rdi)                          #! EA = L0x7fffffffdb50 *)
mov L0x7fffffffdb50 r13;
(* mov    0x78(%rdi),%rax                          #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* mulq   0x78(%rdi)                               #! EA = L0x7fffffffdb08 *)
mull rdx rax L0x7fffffffdb08 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0x78(%rdi),%rax                          #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x80(%rdi)                               #! EA = L0x7fffffffdb10 *)
mull rdx rax L0x7fffffffdb10 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x78(%rdi),%rax                          #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x88(%rdi)                               #! EA = L0x7fffffffdb18 *)
mull rdx rax L0x7fffffffdb18 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0x78(%rdi),%rax                          #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x90(%rdi)                               #! EA = L0x7fffffffdb20 *)
mull rdx rax L0x7fffffffdb20 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0x78(%rdi),%rax                          #! EA = L0x7fffffffdb08 *)
mov rax L0x7fffffffdb08;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x98(%rdi)                               #! EA = L0x7fffffffdb28 *)
mull rdx rax L0x7fffffffdb28 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x80(%rdi),%rax                          #! EA = L0x7fffffffdb10 *)
mov rax L0x7fffffffdb10;
(* mulq   0x80(%rdi)                               #! EA = L0x7fffffffdb10 *)
mull rdx rax L0x7fffffffdb10 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x80(%rdi),%rax                          #! EA = L0x7fffffffdb10 *)
mov rax L0x7fffffffdb10;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x88(%rdi)                               #! EA = L0x7fffffffdb18 *)
mull rdx rax L0x7fffffffdb18 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x80(%rdi),%rax                          #! EA = L0x7fffffffdb10 *)
mov rax L0x7fffffffdb10;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0x90(%rdi)                               #! EA = L0x7fffffffdb20 *)
mull rdx rax L0x7fffffffdb20 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x80(%rdi),%rdx                          #! EA = L0x7fffffffdb10 *)
mov rdx L0x7fffffffdb10;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x98(%rdi)                               #! EA = L0x7fffffffdb28 *)
mull rdx rax L0x7fffffffdb28 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x88(%rdi),%rax                          #! EA = L0x7fffffffdb18 *)
mov rax L0x7fffffffdb18;
(* mulq   0x88(%rdi)                               #! EA = L0x7fffffffdb18 *)
mull rdx rax L0x7fffffffdb18 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x88(%rdi),%rdx                          #! EA = L0x7fffffffdb18 *)
mov rdx L0x7fffffffdb18;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x90(%rdi)                               #! EA = L0x7fffffffdb20 *)
mull rdx rax L0x7fffffffdb20 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x88(%rdi),%rdx                          #! EA = L0x7fffffffdb18 *)
mov rdx L0x7fffffffdb18;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x98(%rdi)                               #! EA = L0x7fffffffdb28 *)
mull rdx rax L0x7fffffffdb28 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x90(%rdi),%rdx                          #! EA = L0x7fffffffdb20 *)
mov rdx L0x7fffffffdb20;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x90(%rdi)                               #! EA = L0x7fffffffdb20 *)
mull rdx rax L0x7fffffffdb20 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x90(%rdi),%rdx                          #! EA = L0x7fffffffdb20 *)
mov rdx L0x7fffffffdb20;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0x98(%rdi)                               #! EA = L0x7fffffffdb28 *)
mull rdx rax L0x7fffffffdb28 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x98(%rdi),%rdx                          #! EA = L0x7fffffffdb28 *)
mov rdx L0x7fffffffdb28;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x98(%rdi)                               #! EA = L0x7fffffffdb28 *)
mull rdx rax L0x7fffffffdb28 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x2017f3(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp 0@uint64 rcx 13;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp;
(* mov    %rsi,0x78(%rdi)                          #! EA = L0x7fffffffdb08 *)
mov L0x7fffffffdb08 rsi;
(* mov    %r8,0x80(%rdi)                           #! EA = L0x7fffffffdb10 *)
mov L0x7fffffffdb10 r8;
(* mov    %r9,0x88(%rdi)                           #! EA = L0x7fffffffdb18 *)
mov L0x7fffffffdb18 r9;
(* mov    %rax,0x90(%rdi)                          #! EA = L0x7fffffffdb20 *)
mov L0x7fffffffdb20 rax;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffdb28 *)
mov L0x7fffffffdb28 r10;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* mulq   0xa0(%rdi)                               #! EA = L0x7fffffffdb30 *)
mull rdx rax L0x7fffffffdb30 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0xa8(%rdi)                               #! EA = L0x7fffffffdb38 *)
mull rdx rax L0x7fffffffdb38 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0xb0(%rdi)                               #! EA = L0x7fffffffdb40 *)
mull rdx rax L0x7fffffffdb40 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0xb8(%rdi)                               #! EA = L0x7fffffffdb48 *)
mull rdx rax L0x7fffffffdb48 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0xc0(%rdi)                               #! EA = L0x7fffffffdb50 *)
mull rdx rax L0x7fffffffdb50 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* mulq   0xa8(%rdi)                               #! EA = L0x7fffffffdb38 *)
mull rdx rax L0x7fffffffdb38 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0xb0(%rdi)                               #! EA = L0x7fffffffdb40 *)
mull rdx rax L0x7fffffffdb40 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* shl    %rax *)
shl rax rax 1;
(* mulq   0xb8(%rdi)                               #! EA = L0x7fffffffdb48 *)
mull rdx rax L0x7fffffffdb48 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xa8(%rdi),%rdx                          #! EA = L0x7fffffffdb38 *)
mov rdx L0x7fffffffdb38;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0xc0(%rdi)                               #! EA = L0x7fffffffdb50 *)
mull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xb0(%rdi),%rax                          #! EA = L0x7fffffffdb40 *)
mov rax L0x7fffffffdb40;
(* mulq   0xb0(%rdi)                               #! EA = L0x7fffffffdb40 *)
mull rdx rax L0x7fffffffdb40 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xb0(%rdi),%rdx                          #! EA = L0x7fffffffdb40 *)
mov rdx L0x7fffffffdb40;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0xb8(%rdi)                               #! EA = L0x7fffffffdb48 *)
mull rdx rax L0x7fffffffdb48 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xb0(%rdi),%rdx                          #! EA = L0x7fffffffdb40 *)
mov rdx L0x7fffffffdb40;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0xc0(%rdi)                               #! EA = L0x7fffffffdb50 *)
mull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xb8(%rdi),%rdx                          #! EA = L0x7fffffffdb48 *)
mov rdx L0x7fffffffdb48;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0xb8(%rdi)                               #! EA = L0x7fffffffdb48 *)
mull rdx rax L0x7fffffffdb48 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xb8(%rdi),%rdx                          #! EA = L0x7fffffffdb48 *)
mov rdx L0x7fffffffdb48;
(* imul   $0x26,%rdx,%rax *)
mul rax 38@uint64 rdx;
(* mulq   0xc0(%rdi)                               #! EA = L0x7fffffffdb50 *)
mull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xc0(%rdi),%rdx                          #! EA = L0x7fffffffdb50 *)
mov rdx L0x7fffffffdb50;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0xc0(%rdi)                               #! EA = L0x7fffffffdb50 *)
mull rdx rax L0x7fffffffdb50 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x2015f6(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp 0@uint64 rcx 13;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp 0@uint64 rcx 13;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp;
(* mov    %rsi,0xa0(%rdi)                          #! EA = L0x7fffffffdb30 *)
mov L0x7fffffffdb30 rsi;
(* mov    %r8,0xa8(%rdi)                           #! EA = L0x7fffffffdb38 *)
mov L0x7fffffffdb38 r8;
(* mov    %r9,0xb0(%rdi)                           #! EA = L0x7fffffffdb40 *)
mov L0x7fffffffdb40 r9;
(* mov    %rax,0xb8(%rdi)                          #! EA = L0x7fffffffdb48 *)
mov L0x7fffffffdb48 rax;
(* mov    %r10,0xc0(%rdi)                          #! EA = L0x7fffffffdb50 *)
mov L0x7fffffffdb50 r10;
(* mov    0xb8(%rdi),%rsi                          #! EA = L0x7fffffffdb48 *)
mov rsi L0x7fffffffdb48;
(* imul   $0x13,%rsi,%rax *)
mul rax 19@uint64 rsi;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd930 *)
mov L0x7fffffffd930 rax;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffdaa0 *)
mull rdx rax L0x7fffffffdaa0 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0xc0(%rdi),%rdx                          #! EA = L0x7fffffffdb50 *)
mov rdx L0x7fffffffdb50;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd938 *)
mov L0x7fffffffd938 rax;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffda98 *)
mull rdx rax L0x7fffffffda98 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffda90 *)
mull rdx rax L0x7fffffffda90 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffda98 *)
mull rdx rax L0x7fffffffda98 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffdaa0 *)
mull rdx rax L0x7fffffffdaa0 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffdaa8 *)
mull rdx rax L0x7fffffffdaa8 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffdb30 *)
mov rax L0x7fffffffdb30;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffdab0 *)
mull rdx rax L0x7fffffffdab0 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffda90 *)
mull rdx rax L0x7fffffffda90 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffda98 *)
mull rdx rax L0x7fffffffda98 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffdaa0 *)
mull rdx rax L0x7fffffffdaa0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xa8(%rdi),%rax                          #! EA = L0x7fffffffdb38 *)
mov rax L0x7fffffffdb38;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffdaa8 *)
mull rdx rax L0x7fffffffdaa8 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xa8(%rdi),%rdx                          #! EA = L0x7fffffffdb38 *)
mov rdx L0x7fffffffdb38;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffdab0 *)
mull rdx rax L0x7fffffffdab0 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xb0(%rdi),%rax                          #! EA = L0x7fffffffdb40 *)
mov rax L0x7fffffffdb40;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffda90 *)
mull rdx rax L0x7fffffffda90 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xb0(%rdi),%rax                          #! EA = L0x7fffffffdb40 *)
mov rax L0x7fffffffdb40;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffda98 *)
mull rdx rax L0x7fffffffda98 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xb0(%rdi),%rax                          #! EA = L0x7fffffffdb40 *)
mov rax L0x7fffffffdb40;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffdaa0 *)
mull rdx rax L0x7fffffffdaa0 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0xb0(%rdi),%rdx                          #! EA = L0x7fffffffdb40 *)
mov rdx L0x7fffffffdb40;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffdaa8 *)
mull rdx rax L0x7fffffffdaa8 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0xb0(%rdi),%rdx                          #! EA = L0x7fffffffdb40 *)
mov rdx L0x7fffffffdb40;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffdab0 *)
mull rdx rax L0x7fffffffdab0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0xb8(%rdi),%rax                          #! EA = L0x7fffffffdb48 *)
mov rax L0x7fffffffdb48;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffda90 *)
mull rdx rax L0x7fffffffda90 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0xb8(%rdi),%rax                          #! EA = L0x7fffffffdb48 *)
mov rax L0x7fffffffdb48;
(* mulq   0x8(%rdi)                                #! EA = L0x7fffffffda98 *)
mull rdx rax L0x7fffffffda98 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffdaa8 *)
mull rdx rax L0x7fffffffdaa8 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffdab0 *)
mull rdx rax L0x7fffffffdab0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0xc0(%rdi),%rax                          #! EA = L0x7fffffffdb50 *)
mov rax L0x7fffffffdb50;
(* mulq   (%rdi)                                   #! EA = L0x7fffffffda90 *)
mull rdx rax L0x7fffffffda90 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x10(%rdi)                               #! EA = L0x7fffffffdaa0 *)
mull rdx rax L0x7fffffffdaa0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x18(%rdi)                               #! EA = L0x7fffffffdaa8 *)
mull rdx rax L0x7fffffffdaa8 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x20(%rdi)                               #! EA = L0x7fffffffdab0 *)
mull rdx rax L0x7fffffffdab0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x201397(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp0;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp1;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp0;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp1;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp0;
(* mov    %rsi,0xa0(%rdi)                          #! EA = L0x7fffffffdb30 *)
mov L0x7fffffffdb30 rsi;
(* mov    %r8,0xa8(%rdi)                           #! EA = L0x7fffffffdb38 *)
mov L0x7fffffffdb38 r8;
(* mov    %r9,0xb0(%rdi)                           #! EA = L0x7fffffffdb40 *)
mov L0x7fffffffdb40 r9;
(* mov    %rax,0xb8(%rdi)                          #! EA = L0x7fffffffdb48 *)
mov L0x7fffffffdb48 rax;
(* mov    %r10,0xc0(%rdi)                          #! EA = L0x7fffffffdb50 *)
mov L0x7fffffffdb50 r10;
(* mov    0x90(%rsp),%rsi                          #! EA = L0x7fffffffd9c0 *)
mov rsi L0x7fffffffd9c0;
(* imul   $0x13,%rsi,%rax *)
mul rax 19@uint64 rsi;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd930 *)
mov L0x7fffffffd930 rax;
(* mulq   0x60(%rsp)                               #! EA = L0x7fffffffd990 *)
mull rdx rax L0x7fffffffd990 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0x98(%rsp),%rdx                          #! EA = L0x7fffffffd9c8 *)
mov rdx L0x7fffffffd9c8;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd938 *)
mov L0x7fffffffd938 rax;
(* mulq   0x58(%rsp)                               #! EA = L0x7fffffffd988 *)
mull rdx rax L0x7fffffffd988 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x78(%rsp),%rax                          #! EA = L0x7fffffffd9a8 *)
mov rax L0x7fffffffd9a8;
(* mulq   0x50(%rsp)                               #! EA = L0x7fffffffd980 *)
mull rdx rax L0x7fffffffd980 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x78(%rsp),%rax                          #! EA = L0x7fffffffd9a8 *)
mov rax L0x7fffffffd9a8;
(* mulq   0x58(%rsp)                               #! EA = L0x7fffffffd988 *)
mull rdx rax L0x7fffffffd988 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x78(%rsp),%rax                          #! EA = L0x7fffffffd9a8 *)
mov rax L0x7fffffffd9a8;
(* mulq   0x60(%rsp)                               #! EA = L0x7fffffffd990 *)
mull rdx rax L0x7fffffffd990 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0x78(%rsp),%rax                          #! EA = L0x7fffffffd9a8 *)
mov rax L0x7fffffffd9a8;
(* mulq   0x68(%rsp)                               #! EA = L0x7fffffffd998 *)
mull rdx rax L0x7fffffffd998 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0x78(%rsp),%rax                          #! EA = L0x7fffffffd9a8 *)
mov rax L0x7fffffffd9a8;
(* mulq   0x70(%rsp)                               #! EA = L0x7fffffffd9a0 *)
mull rdx rax L0x7fffffffd9a0 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x80(%rsp),%rax                          #! EA = L0x7fffffffd9b0 *)
mov rax L0x7fffffffd9b0;
(* mulq   0x50(%rsp)                               #! EA = L0x7fffffffd980 *)
mull rdx rax L0x7fffffffd980 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x80(%rsp),%rax                          #! EA = L0x7fffffffd9b0 *)
mov rax L0x7fffffffd9b0;
(* mulq   0x58(%rsp)                               #! EA = L0x7fffffffd988 *)
mull rdx rax L0x7fffffffd988 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x80(%rsp),%rax                          #! EA = L0x7fffffffd9b0 *)
mov rax L0x7fffffffd9b0;
(* mulq   0x60(%rsp)                               #! EA = L0x7fffffffd990 *)
mull rdx rax L0x7fffffffd990 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x80(%rsp),%rax                          #! EA = L0x7fffffffd9b0 *)
mov rax L0x7fffffffd9b0;
(* mulq   0x68(%rsp)                               #! EA = L0x7fffffffd998 *)
mull rdx rax L0x7fffffffd998 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x80(%rsp),%rdx                          #! EA = L0x7fffffffd9b0 *)
mov rdx L0x7fffffffd9b0;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x70(%rsp)                               #! EA = L0x7fffffffd9a0 *)
mull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x88(%rsp),%rax                          #! EA = L0x7fffffffd9b8 *)
mov rax L0x7fffffffd9b8;
(* mulq   0x50(%rsp)                               #! EA = L0x7fffffffd980 *)
mull rdx rax L0x7fffffffd980 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x88(%rsp),%rax                          #! EA = L0x7fffffffd9b8 *)
mov rax L0x7fffffffd9b8;
(* mulq   0x58(%rsp)                               #! EA = L0x7fffffffd988 *)
mull rdx rax L0x7fffffffd988 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x88(%rsp),%rax                          #! EA = L0x7fffffffd9b8 *)
mov rax L0x7fffffffd9b8;
(* mulq   0x60(%rsp)                               #! EA = L0x7fffffffd990 *)
mull rdx rax L0x7fffffffd990 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x88(%rsp),%rdx                          #! EA = L0x7fffffffd9b8 *)
mov rdx L0x7fffffffd9b8;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x68(%rsp)                               #! EA = L0x7fffffffd998 *)
mull rdx rax L0x7fffffffd998 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x88(%rsp),%rdx                          #! EA = L0x7fffffffd9b8 *)
mov rdx L0x7fffffffd9b8;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0x70(%rsp)                               #! EA = L0x7fffffffd9a0 *)
mull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x90(%rsp),%rax                          #! EA = L0x7fffffffd9c0 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x50(%rsp)                               #! EA = L0x7fffffffd980 *)
mull rdx rax L0x7fffffffd980 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x90(%rsp),%rax                          #! EA = L0x7fffffffd9c0 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x58(%rsp)                               #! EA = L0x7fffffffd988 *)
mull rdx rax L0x7fffffffd988 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   0x68(%rsp)                               #! EA = L0x7fffffffd998 *)
mull rdx rax L0x7fffffffd998 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   0x70(%rsp)                               #! EA = L0x7fffffffd9a0 *)
mull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x98(%rsp),%rax                          #! EA = L0x7fffffffd9c8 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x50(%rsp)                               #! EA = L0x7fffffffd980 *)
mull rdx rax L0x7fffffffd980 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x60(%rsp)                               #! EA = L0x7fffffffd990 *)
mull rdx rax L0x7fffffffd990 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x68(%rsp)                               #! EA = L0x7fffffffd998 *)
mull rdx rax L0x7fffffffd998 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0x70(%rsp)                               #! EA = L0x7fffffffd9a0 *)
mull rdx rax L0x7fffffffd9a0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x201115(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp0;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp1;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp0;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp1;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp0;
(* mov    %rsi,0x28(%rdi)                          #! EA = L0x7fffffffdab8 *)
mov L0x7fffffffdab8 rsi;
(* mov    %r8,0x30(%rdi)                           #! EA = L0x7fffffffdac0 *)
mov L0x7fffffffdac0 r8;
(* mov    %r9,0x38(%rdi)                           #! EA = L0x7fffffffdac8 *)
mov L0x7fffffffdac8 r9;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7fffffffdad0 *)
mov L0x7fffffffdad0 rax;
(* mov    %r10,0x48(%rdi)                          #! EA = L0x7fffffffdad8 *)
mov L0x7fffffffdad8 r10;
(* mov    0xa0(%rsp),%rax                          #! EA = L0x7fffffffd9d0 *)
mov rax L0x7fffffffd9d0;
(* mulq   0x20107a(%rip)        # 0x603158         #! EA = L0x603158 *)
(* mull rdx rax L0x603158 rax; *)
(* shr    $0xd,%rax *)
(* split rax tmp rax 13; *)
(* NOTE: combine 'mulq 0x20107a(%rip)' with 'shr $0xd,%rax' *)
mull rdx rax 121666@uint64 rax;
cshl rdx rax rdx rax 13;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0xa8(%rsp),%rax                          #! EA = L0x7fffffffd9d8 *)
mov rax L0x7fffffffd9d8;
(* mulq   0x201061(%rip)        # 0x603158         #! EA = L0x603158 *)
(* mull rdx rax L0x603158 rax; *)
(* shr    $0xd,%rax *)
(* split rax tmp rax 13; *)
(* NOTE: combine 'mulq 0x20107a(%rip)' with 'shr $0xd,%rax' *)
mull rdx rax 121666@uint64 rax;
cshl rdx rax rdx rax 13;
(* add    %rax,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx rax rcx;
(* mov    %rdx,%r8 *)
mov r8 rdx;
(* mov    0xb0(%rsp),%rax                          #! EA = L0x7fffffffd9e0 *)
mov rax L0x7fffffffd9e0;
(* mulq   0x201048(%rip)        # 0x603158         #! EA = L0x603158 *)
(* mull rdx rax L0x603158 rax; *)
(* shr    $0xd,%rax *)
(* split rax tmp rax 13; *)
(* NOTE: combine 'mulq 0x20107a(%rip)' with 'shr $0xd,%rax' *)
mull rdx rax 121666@uint64 rax;
cshl rdx rax rdx rax 13;
(* add    %rax,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rax r8;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0xb8(%rsp),%rax                          #! EA = L0x7fffffffd9e8 *)
mov rax L0x7fffffffd9e8;
(* mulq   0x20102f(%rip)        # 0x603158         #! EA = L0x603158 *)
(* mull rdx rax L0x603158 rax; *)
(* shr    $0xd,%rax *)
(* split rax tmp rax 13; *)
(* NOTE: combine 'mulq 0x20107a(%rip)' with 'shr $0xd,%rax' *)
mull rdx rax 121666@uint64 rax;
cshl rdx rax rdx rax 13;
(* add    %rax,%r9 *)
(* NOTE: ignore carry because it is zero *)
add r9 rax r9;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mov    0xc0(%rsp),%rax                          #! EA = L0x7fffffffd9f0 *)
mov rax L0x7fffffffd9f0;
(* mulq   0x201016(%rip)        # 0x603158         #! EA = L0x603158 *)
(* mull rdx rax L0x603158 rax; *)
(* shr    $0xd,%rax *)
(* split rax tmp rax 13; *)
(* NOTE: combine 'mulq 0x20107a(%rip)' with 'shr $0xd,%rax' *)
mull rdx rax 121666@uint64 rax;
cshl rdx rax rdx rax 13;
(* add    %rax,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 rax r10;
(* imul   $0x13,%rdx,%rdx *)
mul rdx 19@uint64 rdx;
(* add    %rdx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rdx rsi;
(* add    0x50(%rsp),%rsi                          #! EA = L0x7fffffffd980 *)
(* NOTE: ignore carry because it is zero *)
add rsi L0x7fffffffd980 rsi;
(* add    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd988 *)
(* NOTE: ignore carry because it is zero *)
add rcx L0x7fffffffd988 rcx;
(* add    0x60(%rsp),%r8                           #! EA = L0x7fffffffd990 *)
(* NOTE: ignore carry because it is zero *)
add r8 L0x7fffffffd990 r8;
(* add    0x68(%rsp),%r9                           #! EA = L0x7fffffffd998 *)
(* NOTE: ignore carry because it is zero *)
add r9 L0x7fffffffd998 r9;
(* add    0x70(%rsp),%r10                          #! EA = L0x7fffffffd9a0 *)
(* NOTE: ignore carry because it is zero *)
add r10 L0x7fffffffd9a0 r10;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7fffffffdae0 *)
mov L0x7fffffffdae0 rsi;
(* mov    %rcx,0x58(%rdi)                          #! EA = L0x7fffffffdae8 *)
mov L0x7fffffffdae8 rcx;
(* mov    %r8,0x60(%rdi)                           #! EA = L0x7fffffffdaf0 *)
mov L0x7fffffffdaf0 r8;
(* mov    %r9,0x68(%rdi)                           #! EA = L0x7fffffffdaf8 *)
mov L0x7fffffffdaf8 r9;
(* mov    %r10,0x70(%rdi)                          #! EA = L0x7fffffffdb00 *)
mov L0x7fffffffdb00 r10;
(* mov    0x68(%rdi),%rsi                          #! EA = L0x7fffffffdaf8 *)
mov rsi L0x7fffffffdaf8;
(* imul   $0x13,%rsi,%rax *)
mul rax 19@uint64 rsi;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffd930 *)
mov L0x7fffffffd930 rax;
(* mulq   0xb0(%rsp)                               #! EA = L0x7fffffffd9e0 *)
mull rdx rax L0x7fffffffd9e0 rax;
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    0x70(%rdi),%rdx                          #! EA = L0x7fffffffdb00 *)
mov rdx L0x7fffffffdb00;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffd938 *)
mov L0x7fffffffd938 rax;
(* mulq   0xa8(%rsp)                               #! EA = L0x7fffffffd9d8 *)
mull rdx rax L0x7fffffffd9d8 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffdae0 *)
mov rax L0x7fffffffdae0;
(* mulq   0xa0(%rsp)                               #! EA = L0x7fffffffd9d0 *)
mull rdx rax L0x7fffffffd9d0 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffdae0 *)
mov rax L0x7fffffffdae0;
(* mulq   0xa8(%rsp)                               #! EA = L0x7fffffffd9d8 *)
mull rdx rax L0x7fffffffd9d8 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffdae0 *)
mov rax L0x7fffffffdae0;
(* mulq   0xb0(%rsp)                               #! EA = L0x7fffffffd9e0 *)
mull rdx rax L0x7fffffffd9e0 rax;
(* mov    %rax,%r10 *)
mov r10 rax;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffdae0 *)
mov rax L0x7fffffffdae0;
(* mulq   0xb8(%rsp)                               #! EA = L0x7fffffffd9e8 *)
mull rdx rax L0x7fffffffd9e8 rax;
(* mov    %rax,%r12 *)
mov r12 rax;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffdae0 *)
mov rax L0x7fffffffdae0;
(* mulq   0xc0(%rsp)                               #! EA = L0x7fffffffd9f0 *)
mull rdx rax L0x7fffffffd9f0 rax;
(* mov    %rax,%r14 *)
mov r14 rax;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffdae8 *)
mov rax L0x7fffffffdae8;
(* mulq   0xa0(%rsp)                               #! EA = L0x7fffffffd9d0 *)
mull rdx rax L0x7fffffffd9d0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffdae8 *)
mov rax L0x7fffffffdae8;
(* mulq   0xa8(%rsp)                               #! EA = L0x7fffffffd9d8 *)
mull rdx rax L0x7fffffffd9d8 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffdae8 *)
mov rax L0x7fffffffdae8;
(* mulq   0xb0(%rsp)                               #! EA = L0x7fffffffd9e0 *)
mull rdx rax L0x7fffffffd9e0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffdae8 *)
mov rax L0x7fffffffdae8;
(* mulq   0xb8(%rsp)                               #! EA = L0x7fffffffd9e8 *)
mull rdx rax L0x7fffffffd9e8 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffdae8 *)
mov rdx L0x7fffffffdae8;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0xc0(%rsp)                               #! EA = L0x7fffffffd9f0 *)
mull rdx rax L0x7fffffffd9f0 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x60(%rdi),%rax                          #! EA = L0x7fffffffdaf0 *)
mov rax L0x7fffffffdaf0;
(* mulq   0xa0(%rsp)                               #! EA = L0x7fffffffd9d0 *)
mull rdx rax L0x7fffffffd9d0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x60(%rdi),%rax                          #! EA = L0x7fffffffdaf0 *)
mov rax L0x7fffffffdaf0;
(* mulq   0xa8(%rsp)                               #! EA = L0x7fffffffd9d8 *)
mull rdx rax L0x7fffffffd9d8 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x60(%rdi),%rax                          #! EA = L0x7fffffffdaf0 *)
mov rax L0x7fffffffdaf0;
(* mulq   0xb0(%rsp)                               #! EA = L0x7fffffffd9e0 *)
mull rdx rax L0x7fffffffd9e0 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x60(%rdi),%rdx                          #! EA = L0x7fffffffdaf0 *)
mov rdx L0x7fffffffdaf0;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0xb8(%rsp)                               #! EA = L0x7fffffffd9e8 *)
mull rdx rax L0x7fffffffd9e8 rax;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rcx *)
(* NOTE: ignore carry because it is zero *)
adc rcx rdx rcx carry;
(* mov    0x60(%rdi),%rdx                          #! EA = L0x7fffffffdaf0 *)
mov rdx L0x7fffffffdaf0;
(* imul   $0x13,%rdx,%rax *)
mul rax 19@uint64 rdx;
(* mulq   0xc0(%rsp)                               #! EA = L0x7fffffffd9f0 *)
mull rdx rax L0x7fffffffd9f0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x68(%rdi),%rax                          #! EA = L0x7fffffffdaf8 *)
mov rax L0x7fffffffdaf8;
(* mulq   0xa0(%rsp)                               #! EA = L0x7fffffffd9d0 *)
mull rdx rax L0x7fffffffd9d0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x68(%rdi),%rax                          #! EA = L0x7fffffffdaf8 *)
mov rax L0x7fffffffdaf8;
(* mulq   0xa8(%rsp)                               #! EA = L0x7fffffffd9d8 *)
mull rdx rax L0x7fffffffd9d8 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   0xb8(%rsp)                               #! EA = L0x7fffffffd9e8 *)
mull rdx rax L0x7fffffffd9e8 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd930 *)
mov rax L0x7fffffffd930;
(* mulq   0xc0(%rsp)                               #! EA = L0x7fffffffd9f0 *)
mull rdx rax L0x7fffffffd9f0 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x70(%rdi),%rax                          #! EA = L0x7fffffffdb00 *)
mov rax L0x7fffffffdb00;
(* mulq   0xa0(%rsp)                               #! EA = L0x7fffffffd9d0 *)
mull rdx rax L0x7fffffffd9d0 rax;
(* add    %rax,%r14 *)
adds carry r14 rax r14;
(* adc    %rdx,%r15 *)
(* NOTE: ignore carry because it is zero *)
adc r15 rdx r15 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0xb0(%rsp)                               #! EA = L0x7fffffffd9e0 *)
mull rdx rax L0x7fffffffd9e0 rax;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
(* NOTE: ignore carry because it is zero *)
adc r9 rdx r9 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0xb8(%rsp)                               #! EA = L0x7fffffffd9e8 *)
mull rdx rax L0x7fffffffd9e8 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    %rdx,%r11 *)
(* NOTE: ignore carry because it is zero *)
adc r11 rdx r11 carry;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd938 *)
mov rax L0x7fffffffd938;
(* mulq   0xc0(%rsp)                               #! EA = L0x7fffffffd9f0 *)
mull rdx rax L0x7fffffffd9f0 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
(* NOTE: ignore carry because it is zero *)
adc r13 rdx r13 carry;
(* mov    0x200dea(%rip),%rdx        # 0x603150    #! EA = L0x603150 *)
mov rdx L0x603150;
(* shld   $0xd,%rsi,%rcx *)
(* NOTE: merge 'shld $0xd,%rsi,%rcx' with 'and %rdx,%rsi *)
cshl rcx rsi rcx rsi 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
(* shld   $0xd,%r8,%r9 *)
(* NOTE: merge 'shld $0xd,%r8,%r9' with 'and %rdx,%r8 *)
cshl r9 r8 r9 r8 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
(* add    %rcx,%r8 *)
(* NOTE: ignore carry because it is zero *)
add r8 rcx r8;
(* shld   $0xd,%r10,%r11 *)
(* NOTE: merge 'shld $0xd,%r10,%r11' with 'and %rdx,%r10 *)
cshl r11 r10 r11 r10 13;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
(* add    %r9,%r10 *)
(* NOTE: ignore carry because it is zero *)
add r10 r9 r10;
(* shld   $0xd,%r12,%r13 *)
(* NOTE: merge 'shld $0xd,%r12,%r13' with 'and %rdx,%r12 *)
cshl r13 r12 r13 r12 13;
(* and    %rdx,%r12 *)
(* NOTE: merged, see above *)
(* add    %r11,%r12 *)
(* NOTE: ignore carry because it is zero *)
add r12 r11 r12;
(* shld   $0xd,%r14,%r15 *)
(* NOTE: merge 'shld $0xd,%r14,%r15' with 'and %rdx,%r14 *)
cshl r15 r14 r15 r14 13;
(* and    %rdx,%r14 *)
(* NOTE: merged, see above *)
(* add    %r13,%r14 *)
(* NOTE: ignore carry because it is zero *)
add r14 r13 r14;
(* imul   $0x13,%r15,%rcx *)
mul rcx 19@uint64 r15;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* mov    %rsi,%rcx *)
mov rcx rsi;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rsi' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* add    %r8,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r8 rcx;
(* mov    %rcx,%r8 *)
mov r8 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r8' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%rsi *)
(* NOTE: merged, see above *)
mov rsi tmp0;
(* add    %r10,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r10 rcx;
(* mov    %rcx,%r9 *)
mov r9 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r9' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%r8 *)
(* NOTE: merged, see above *)
mov r8 tmp1;
(* add    %r12,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r12 rcx;
(* mov    %rcx,%rax *)
mov rax rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%rax' *)
cshl rcx tmp1 0@uint64 rcx 13;
(* and    %rdx,%r9 *)
(* NOTE: merged, see above *)
mov r9 tmp0;
(* add    %r14,%rcx *)
(* NOTE: ignore carry because it is zero *)
add rcx r14 rcx;
(* mov    %rcx,%r10 *)
mov r10 rcx;
(* shr    $0x33,%rcx *)
(* NOTE: merge 'shr $0x33,%rcx' with 'and %rdx,%r10' *)
cshl rcx tmp0 0@uint64 rcx 13;
(* and    %rdx,%rax *)
(* NOTE: merged, see above *)
mov rax tmp1;
(* imul   $0x13,%rcx,%rcx *)
mul rcx 19@uint64 rcx;
(* add    %rcx,%rsi *)
(* NOTE: ignore carry because it is zero *)
add rsi rcx rsi;
(* and    %rdx,%r10 *)
(* NOTE: merged, see above *)
mov r10 tmp0;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7fffffffdae0 *)
mov L0x7fffffffdae0 rsi;
(* mov    %r8,0x58(%rdi)                           #! EA = L0x7fffffffdae8 *)
mov L0x7fffffffdae8 r8;
(* mov    %r9,0x60(%rdi)                           #! EA = L0x7fffffffdaf0 *)
mov L0x7fffffffdaf0 r9;
(* mov    %rax,0x68(%rdi)                          #! EA = L0x7fffffffdaf8 *)
mov L0x7fffffffdaf8 rax;
(* mov    %r10,0x70(%rdi)                          #! EA = L0x7fffffffdb00 *)
mov L0x7fffffffdb00 r10;

mov x1p_0 L0x7fffffffda90;
mov x1p_1 L0x7fffffffda98;
mov x1p_2 L0x7fffffffdaa0;
mov x1p_3 L0x7fffffffdaa8;
mov x1p_4 L0x7fffffffdab0;

mov x2p_0 L0x7fffffffdab8;
mov x2p_1 L0x7fffffffdac0;
mov x2p_2 L0x7fffffffdac8;
mov x2p_3 L0x7fffffffdad0;
mov x2p_4 L0x7fffffffdad8;

mov z2p_0 L0x7fffffffdae0;
mov z2p_1 L0x7fffffffdae8;
mov z2p_2 L0x7fffffffdaf0;
mov z2p_3 L0x7fffffffdaf8;
mov z2p_4 L0x7fffffffdb00;

mov x3p_0 L0x7fffffffdb08;
mov x3p_1 L0x7fffffffdb10;
mov x3p_2 L0x7fffffffdb18;
mov x3p_3 L0x7fffffffdb20;
mov x3p_4 L0x7fffffffdb28;

mov z3p_0 L0x7fffffffdb30;
mov z3p_1 L0x7fffffffdb38;
mov z3p_2 L0x7fffffffdb40;
mov z3p_3 L0x7fffffffdb48;
mov z3p_4 L0x7fffffffdb50;

{
     and [
       eqmod
         (limbs 51 [vars x2p|0..4])
         (sq (sub
                  (sq (limbs 51 [vars x2|0..4]))
                  (sq (limbs 51 [vars z2|0..4]))))
         (((2**255 )- 19)),
       eqmod
         (limbs 51 [vars z2p|0..4])
         (muls
            [4,
             limbs 51 [vars x2|0..4],
             limbs 51 [vars z2|0..4],
             adds [sq (limbs 51 [vars x2|0..4]),
                      muls [486662,
                               limbs 51 [vars x2|0..4],
                               limbs 51 [vars z2|0..4]],
                      sq (limbs 51 [vars z2|0..4])]])
         (((2**255 )- 19)),
       eqmod
         (mul (limbs 51 [vars x3p|0..4])
                 (mul (limbs 51 [vars x1|0..4])
                   (sq (sub
                            (mul (limbs 51 [vars x3|0..4])
                                    (limbs 51 [vars z2|0..4]))
                            (mul (limbs 51 [vars x2|0..4])
                                    (limbs 51 [vars z3|0..4]))))))
        (mul (limbs 51 [vars z3p|0..4])
                (sq (sub
                         (mul (limbs 51 [vars x2|0..4])
                                 (limbs 51 [vars x3|0..4]))
                         (mul (limbs 51 [vars z2|0..4])
                                 (limbs 51 [vars z3|0..4])))))
       (((2**255 )- 19))]
  &&
     and [x2p_0 <= const 64 (2**51+2**15),
              x2p_1 <= const 64 (2**51+2**15),
              x2p_2 <= const 64 (2**51+2**15),
              x2p_3 <= const 64 (2**51+2**15),
              x2p_4 <= const 64 (2**51+2**15),
              x3p_0 <= const 64 (2**51+2**15),
              x3p_1 <= const 64 (2**51+2**15),
              x3p_2 <= const 64 (2**51+2**15),
              x3p_3 <= const 64 (2**51+2**15),
              x3p_4 <= const 64 (2**51+2**15),
              z2p_0 <= const 64 (2**51+2**15),
              z2p_1 <= const 64 (2**51+2**15),
              z2p_2 <= const 64 (2**51+2**15),
              z2p_3 <= const 64 (2**51+2**15),
              z2p_4 <= const 64 (2**51+2**15),
              z3p_0 <= const 64 (2**51+2**15),
              z3p_1 <= const 64 (2**51+2**15),
              z3p_2 <= const 64 (2**51+2**15),
              z3p_3 <= const 64 (2**51+2**15),
              z3p_4 <= const 64 (2**51+2**15)]
}
