proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{ true && true }

mov p0 18446744073709551615@uint64; (* FFFFFFFFFFFFFFFF *)
mov p1 4294967295@uint64;           (* 00000000FFFFFFFF *)
mov p2 0@uint64;                    (* 0000000000000000 *)
mov p3 18446744069414584321@uint64; (* FFFFFFFF00000001 *)

mov L0x62c080 a0;
mov L0x62c088 a1;
mov L0x62c090 a2;
mov L0x62c098 a3;
mov L0x427008 p1;
mov L0x427018 p3;

(* multiplication *)

(* mov    (%rsi),%rax                              #! %ea = %L0x62c080 *)
mov rax L0x62c080;
(* mov    0x8(%rsi),%r14                           #! %ea = %L0x62c088 *)
mov r14 L0x62c088;
(* mov    0x10(%rsi),%r15                          #! %ea = %L0x62c090 *)
mov r15 L0x62c090;
(* mov    0x18(%rsi),%r8                           #! %ea = %L0x62c098 *)
mov r8 L0x62c098;
(* #callq  0x4277e0 <__ecp_nistz256_sqr_montq> *)
(* mov    %rax,%r13 *)
mov r13 rax;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* mov    %rax,%r9 *)
mov r9 rax;
(* mov    %r15,%rax *)
mov rax r15;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %r15,%rax *)
mov rax r15;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r12 *)
mov r12 rdx;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rbp *)
mov rbp rdx;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rbp,%r12 *)
adds carry r12 rbp r12;
(* mov    %rdx,%r13 *)
mov r13 rdx;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;
(* mul    %r15 *)
mull rdx rax r15 rax;
(* xor    %r15,%r15 *)
mov r15 0@uint64;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* mov    (%rsi),%rax                              #! %ea = %L0x62c080 *)
mov rax L0x62c080;
(* mov    %rdx,%r14 *)
mov r14 rdx;
(* adc    $0x0,%r14 *)
adc r14 r14 0@uint64 carry;
(* add    %r9,%r9 *)
adds carry r9 r9 r9;
(* adc    %r10,%r10 *)
adcs carry r10 r10 r10 carry;
(* adc    %r11,%r11 *)
adcs carry r11 r11 r11 carry;
(* adc    %r12,%r12 *)
adcs carry r12 r12 r12 carry;
(* adc    %r13,%r13 *)
adcs carry r13 r13 r13 carry;
(* adc    %r14,%r14 *)
adcs carry r14 r14 r14 carry;
(* adc    $0x0,%r15 *)
adc r15 r15 0@uint64 carry;
(* mul    %rax *)
mull rdx rax rax rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    0x8(%rsi),%rax                           #! %ea = %L0x62c088 *)
mov rax L0x62c088;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mul    %rax *)
mull rdx rax rax rax;
(* add    %rcx,%r9 *)
adds carry r9 rcx r9;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* mov    0x10(%rsi),%rax                          #! %ea = %L0x62c090 *)
mov rax L0x62c090;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mul    %rax *)
mull rdx rax rax rax;
(* add    %rcx,%r11 *)
adds carry r11 rcx r11;
(* adc    %rax,%r12 *)
adcs carry r12 rax r12 carry;
(* mov    0x18(%rsi),%rax                          #! %ea = %L0x62c098 *)
mov rax L0x62c098;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mul    %rax *)
mull rdx rax rax rax;
(* add    %rcx,%r13 *)
adds carry r13 rcx r13;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    %rdx,%r15 *)
(* adcs carry r15 rdx r15 carry; *)
(* NOTE: ignore carry because it should be zero *)
adc r15 rdx r15 carry;

(* reduction *)

(* mov    -0x8a2(%rip),%rsi        # 0x427008      #! %ea = %L0x427008 *)
mov rsi L0x427008;
(* mov    -0x899(%rip),%rbp        # 0x427018      #! %ea = %L0x427018 *)
mov rbp L0x427018;
(* mov    %r8,%rcx *)
mov rcx r8;
(* shl    $0x20,%r8 *)
(* shl r8 r8 32; *)
(* mul    %rbp *)
mull rdx rax rbp rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r8' and 'shr $0x20,%rcs' *)
split rcx r8 r8 32;
shl r8 r8 32;
(* add    %r8,%r9 *)
adds carry r9 r8 r9;
(* adc    %rcx,%r10 *)
adcs carry r10 rcx r10 carry;
(* adc    %rax,%r11 *)
adcs carry r11 rax r11 carry;
(* mov    %r9,%rax *)
mov rax r9;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;

(* mov    %r9,%rcx *)
mov rcx r9;
(* shl    $0x20,%r9 *)
(* shl r9 r9 32; *)
(* mov    %rdx,%r8 *)
mov r8 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r9' and 'shr $0x20,%rcs' *)
split rcx r9 r9 32;
shl r9 r9 32;
(* add    %r9,%r10 *)
adds carry r10 r9 r10;
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adc    %rax,%r8 *)
adcs carry r8 rax r8 carry;
(* mov    %r10,%rax *)
mov rax r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;

(* mov    %r10,%rcx *)
mov rcx r10;
(* shl    $0x20,%r10 *)
(* shl r10 r10 32; *)
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r10' and 'shr $0x20,%rcs' *)
split rcx r10 r10 32;
shl r10 r10 32;
(* add    %r10,%r11 *)
adds carry r11 r10 r11;
(* adc    %rcx,%r8 *)
adcs carry r8 rcx r8 carry;
(* adc    %rax,%r9 *)
adcs carry r9 rax r9 carry;
(* mov    %r11,%rax *)
mov rax r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;

(* mov    %r11,%rcx *)
mov rcx r11;
(* shl    $0x20,%r11 *)
(* shl r11 r11 32; *)
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %rbp *)
mull rdx rax rbp rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r11' and 'shr $0x20,%rcs' *)
split rcx r11 r11 32;
shl r11 r11 32;
(* add    %r11,%r8 *)
adds carry r8 r11 r8;
(* adc    %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;

(* xor    %r11,%r11 *)
mov r11 0@uint64;
(* add    %r8,%r12 *)
adds carry r12 r8 r12;
(* adc    %r9,%r13 *)
adcs carry r13 r9 r13 carry;
(* mov    %r12,%r8 *)
mov r8 r12;
(* adc    %r10,%r14 *)
adcs carry r14 r10 r14 carry;
(* adc    %rdx,%r15 *)
adcs carry r15 rdx r15 carry;
(* mov    %r13,%r9 *)
mov r9 r13;
(* adc    $0x0,%r11 *)
adc r11 r11 0@uint64 carry;

mov t0  r12;
mov t1  r13;
mov t2  r14;
mov t3  r15;
mov t4  r11;

{
     eqmod
       (
         (limbs 64 [a0, a1, a2, a3])
         *
         (limbs 64 [a0, a1, a2, a3])
       )

       (
         (limbs 64 [0, 0, 0, 0,
                    t0, t1, t2, t3,
                    t4])
       )

       (
         (limbs 64 [p0, p1, p2, p3])
       )
  &&
     t4 < const 64 (2**1)
}