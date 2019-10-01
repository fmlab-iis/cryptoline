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

mov L0x427000 p0;

(* mov    (%rsi),%r8                               #! EA = L0x62c080 *)
mov r8 L0x62c080;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
mov carry 0@uint64;
(* mov    0x8(%rsi),%r9                            #! EA = L0x62c088 *)
mov r9 L0x62c088;
(* add    %r8,%r8 *)
adds carry r8 r8 r8;
(* mov    0x10(%rsi),%r10                          #! EA = L0x62c090 *)
mov r10 L0x62c090;
(* adc    %r9,%r9 *)
adcs carry r9 r9 r9 carry;
(* mov    0x18(%rsi),%r11                          #! EA = L0x62c098 *)
mov r11 L0x62c098;
(* lea    -0xe3(%rip),%rsi        # 0x427000       #! EA = L0x427000 *)
mov rsi L0x427000;
(* mov    %r8,%rax *)
mov rax r8;
(* adc    %r10,%r10 *)
adcs carry r10 r10 r10 carry;
(* adc    %r11,%r11 *)
adcs carry r11 r11 r11 carry;
(* mov    %r9,%rdx *)
mov rdx r9;
(* adc    $0x0,%r13 *)
(* adcs carry r13 0@uint64 r13 carry; *)
(* NOTE: ignore carry because it is zero *)
adc r13 0@uint64 r13 carry;
mov carry 0@uint64;
(* mov    %r10,%rcx *)
mov rcx r10;
(* mov    %r11,%r12 *)
mov r12 r11;

mov t0 rax;
mov t1 rdx;
mov t2 rcx;
mov t3 r12;
mov t4 r13;

{
    eqmod
       (
         (limbs 64 [a0, a1, a2, a3])
         *
         2
       )

       (
         (limbs 64 [t0, t1, t2, t3, t4])
       )

       (
         (limbs 64 [p0, p1, p2, p3])
       )
  &&
    t4 < const 64 (2**1)
}
