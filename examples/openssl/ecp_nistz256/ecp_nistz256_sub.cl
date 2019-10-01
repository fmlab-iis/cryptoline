proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
  &&
  and [ (limbs 64 [a0, a1, a2, a3]) <
            (limbs 64 [const 64 18446744073709551615,
                       const 64 4294967295,
                       const 64 0,
                       const 64 18446744069414584321]),
            (limbs 64 [b0, b1, b2, b3]) <
            (limbs 64 [const 64 18446744073709551615,
                       const 64 4294967295,
                       const 64 0,
                       const 64 18446744069414584321])]
}

mov p0 18446744073709551615@uint64; (* FFFFFFFFFFFFFFFF *)
mov p1 4294967295@uint64;           (* 00000000FFFFFFFF *)
mov p2 0@uint64;                    (* 0000000000000000 *)
mov p3 18446744069414584321@uint64; (* FFFFFFFF00000001 *)

mov L0x62c080 a0;
mov L0x62c088 a1;
mov L0x62c090 a2;
mov L0x62c098 a3;

mov L0x62c0a0 b0;
mov L0x62c0a8 b1;
mov L0x62c0b0 b2;
mov L0x62c0b8 b3;

mov L0x427000 p0;
mov L0x427008 p1;
mov L0x427010 p2;
mov L0x427018 p3;

(* mov    (%rsi),%r8                               #! EA = L0x62c080 *)
mov r8 L0x62c080;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
(* mov    0x8(%rsi),%r9                            #! EA = L0x62c088 *)
mov r9 L0x62c088;
(* mov    0x10(%rsi),%r10                          #! EA = L0x62c090 *)
mov r10 L0x62c090;
(* mov    0x18(%rsi),%r11                          #! EA = L0x62c098 *)
mov r11 L0x62c098;
(* lea    -0x37d(%rip),%rsi        # 0x427000      #! EA = L0x427000 *)
mov rsi L0x427000;
(* sub    (%rdx),%r8                               #! EA = L0x62c0a0 *)
subb carry r8 r8 L0x62c0a0;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x62c0a8 *)
sbbs carry r9 r9 L0x62c0a8 carry;
(* mov    %r8,%rax *)
mov rax r8;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x62c0b0 *)
sbbs carry r10 r10 L0x62c0b0 carry;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x62c0b8 *)
sbbs carry r11 r11 L0x62c0b8 carry;
(* mov    %r9,%rdx *)
mov rdx r9;
(* sbb    $0x0,%r13 *)
(* carry == need borrow *)
sbbs carry r13 r13 0@uint64 carry;
(* add    (%rsi),%r8                               #! EA = L0x427000 *)
adds carry r8 r8 L0x427000;
(* mov    %r10,%rcx *)
mov rcx r10;
(* adc    0x8(%rsi),%r9                            #! EA = L0x427008 *)
adcs carry r9 r9 L0x427008 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x427010 *)
adcs carry r10 r10 L0x427010 carry;
(* mov    %r11,%r12 *)
mov r12 r11;
(* adc    0x18(%rsi),%r11                          #! EA = L0x427018 *)
adcs carry r11 r11 L0x427018 carry;
(* test   %r13,%r13 *)
subb zero dontcare r13 1@uint64;
(* cmove  %rax,%r8 *)
cmov r8 zero rax r8;
(* cmove  %rdx,%r9 *)
cmov r9 zero rdx r9;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd6d0 *)
mov L0x7fffffffd6d0 r8;
(* cmove  %rcx,%r10 *)
cmov r10 zero rcx r10;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd6d8 *)
mov L0x7fffffffd6d8 r9;
(* cmove  %r12,%r11 *)
cmov r11 zero r12 r11;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd6e0 *)
mov L0x7fffffffd6e0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd6e8 *)
mov L0x7fffffffd6e8 r11;
mov t0 L0x7fffffffd6d0;
mov t1 L0x7fffffffd6d8;
mov t2 L0x7fffffffd6e0;
mov t3 L0x7fffffffd6e8;

{
    true
  &&
    and [
      (eq
        (umod
          (sub
            (add
              (limbs 64 [p0, p1, p2, p3,
                         const 64 0])
              (limbs 64 [a0, a1, a2, a3,
                         const 64 0]))
            (limbs 64 [b0, b1, b2, b3,
                       const 64 0]))
          (limbs 64 [p0, p1, p2, p3,
                     const 64 0]))

          (limbs 64 [t0, t1, t2, t3,
                     const 64 0])),

     (limbs 64 [t0, t1, t2, t3]) <
     (limbs 64 [const 64 18446744073709551615,
                const 64 4294967295,
                const 64 0,
                const 64 18446744069414584321])
                ]
}