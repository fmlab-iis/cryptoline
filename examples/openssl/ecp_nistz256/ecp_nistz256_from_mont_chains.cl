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

(* mov    (%rsi),%rax                              #! EA = L0x62c080 *)
mov rax L0x62c080;
(* mov    -0xdb6(%rip),%r13        # 0x427018      #! EA = L0x427018 *)
mov r13 L0x427018;
(* mov    0x8(%rsi),%r9                            #! EA = L0x62c088 *)
mov r9 L0x62c088;
(* mov    0x10(%rsi),%r10                          #! EA = L0x62c090 *)
mov r10 L0x62c090;
(* mov    0x18(%rsi),%r11                          #! EA = L0x62c098 *)
mov r11 L0x62c098;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    -0xddc(%rip),%r12        # 0x427008      #! EA = L0x427008 *)
mov r12 L0x427008;
(* mov    %rax,%rcx *)
mov rcx rax;
(* shl    $0x20,%r8 *)
(* shl r8 r8 32; *)
(* mul    %r13 *)
mull rdx rax r13 rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r8' with 'shr $0x20,%rcx' *)
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
(* adcs carry rdx rdx 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
adc rdx rdx 0@uint64 carry;
mov carry 0@uint64;
(* mov    %r9,%rcx *)
mov rcx r9;
(* shl    $0x20,%r9 *)
(* shl r9 r9 32; *)
(* mov    %rdx,%r8 *)
mov r8 rdx;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r9' with 'shr $0x20,%rcx' *)
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
(* adcs carry rdx rdx 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
adc rdx rdx 0@uint64 carry;
mov carry 0@uint64;
(* mov    %r10,%rcx *)
mov rcx r10;
(* shl    $0x20,%r10 *)
(* shl r10 r10 32; *)
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r10' with 'shr $0x20,%rcx' *)
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
(* adcs carry rdx rdx 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
adc rdx rdx 0@uint64 carry;
mov carry 0@uint64;
(* mov    %r11,%rcx *)
mov rcx r11;
(* shl    $0x20,%r11 *)
(* shl r11 r11 32; *)
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mul    %r13 *)
mull rdx rax r13 rax;
(* shr    $0x20,%rcx *)
(* split rcx tmp rcx 32; *)
(* NOTE: merge 'shl $0x20,%r11' with 'shr $0x20,%rcx' *)
split rcx r11 r11 32;
shl r11 r11 32;
(* add    %r11,%r8 *)
adds carry r8 r11 r8;
(* adc    %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* adc    $0x0,%rdx *)
(* adcs carry rdx rdx 0@uint64 carry; *)
(* NOTE: ignore carry because it is zero *)
adc rdx rdx 0@uint64 carry;
mov carry 0@uint64;
(* mov    %r10,%rax *)
mov rax r10;
(* mov    %rdx,%r11 *)
mov r11 rdx;

mov t0 r8;
mov t1 r9;
mov t2 r10;
mov t3 r11;

{
   eqmod
       (
         (limbs 64 [a0, a1, a2, a3])
       )

       (
         (limbs 64 [0, 0, 0, 0,
                    t0, t1, t2, t3])
       )

       (
         (limbs 64 [p0, p1, p2, p3])
       )
  &&
    true
}
