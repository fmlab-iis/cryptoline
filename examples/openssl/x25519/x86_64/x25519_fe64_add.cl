proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  true
}

mov L0x7fffffffd970 a0;
mov L0x7fffffffd978 a1;
mov L0x7fffffffd980 a2;
mov L0x7fffffffd988 a3;

mov L0x7fffffffd990 b0;
mov L0x7fffffffd998 b1;
mov L0x7fffffffd9a0 b2;
mov L0x7fffffffd9a8 b3;

nondet rax@uint64;

(* #! -> SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd970; Value = 0x000009c0000009c0; PC = 0x555555555a40 *)
mov r8 L0x7fffffffd970;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd978; Value = 0x000009c0000009c0; PC = 0x555555555a43 *)
mov r9 L0x7fffffffd978;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffd980; Value = 0x000009c0000009c0; PC = 0x555555555a47 *)
mov r10 L0x7fffffffd980;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffd988; Value = 0x00007ffff7e0c0e4; PC = 0x555555555a4b *)
mov r11 L0x7fffffffd988;
(* add    (%rdx),%r8                               #! EA = L0x7fffffffd990; Value = 0x000009c0000009c0; PC = 0x555555555a4f *)
adds carry r8 r8 L0x7fffffffd990;
(* adc    0x8(%rdx),%r9                            #! EA = L0x7fffffffd998; Value = 0x0000555555556560; PC = 0x555555555a52 *)
adcs carry r9 r9 L0x7fffffffd998 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x7fffffffd9a0; Value = 0x0000000000000008; PC = 0x555555555a56 *)
adcs carry r10 r10 L0x7fffffffd9a0 carry;
(* adc    0x18(%rdx),%r11                          #! EA = L0x7fffffffd9a8; Value = 0x0000000000000001; PC = 0x555555555a5a *)
adcs carry r11 r11 L0x7fffffffd9a8 carry;
(* sbb    %rax,%rax                                #! PC = 0x555555555a5e *)
sbbs carry rax rax rax carry;

(* NOTE: mask *)
assert true && or [rax = 0@64, rax = (-1)@64];

(* and    $0x26,%rax                               #! PC = 0x555555555a61 *)
and rax@uint64 rax 0x26@uint64;
(* add    %rax,%r8                                 #! PC = 0x555555555a65 *)
adds carry r8 r8 rax;
(* adc    $0x0,%r9                                 #! PC = 0x555555555a68 *)
adcs carry r9 r9 0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x555555555a6c *)
adcs carry r10 r10 0@uint64 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffd9b8; PC = 0x555555555a70 *)
mov L0x7fffffffd9b8 r9;
(* adc    $0x0,%r11                                #! PC = 0x555555555a74 *)
adcs carry r11 r11 0@uint64 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffd9c0; PC = 0x555555555a78 *)
mov L0x7fffffffd9c0 r10;
(* sbb    %rax,%rax                                #! PC = 0x555555555a7c *)
sbbs carry rax rax rax carry;

(* NOTE: mask *)
assert true && or [rax = 0@64, rax = (-1)@64];

(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffd9c8; PC = 0x555555555a7f *)
mov L0x7fffffffd9c8 r11;
(* and    $0x26,%rax                               #! PC = 0x555555555a83 *)
and rax@uint64 rax 0x26@uint64;
(* add    %rax,%r8                                 #! PC = 0x555555555a87 *)
adds carry r8 r8 rax;

(* NOTE: cannot carry *)
assert true && carry = 0@1;

(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffd9b0; PC = 0x555555555a8a *)
mov L0x7fffffffd9b0 r8;
(* #! <- SP = 0x7fffffffd968 *)
#! 0x7fffffffd968 = 0x7fffffffd968;
(* #repz retq                                      #! PC = 0x555555555a8d *)
#repz retq                                      #! 0x555555555a8d = 0x555555555a8d;

mov r0 L0x7fffffffd9b0;
mov r1 L0x7fffffffd9b8;
mov r2 L0x7fffffffd9c0;
mov r3 L0x7fffffffd9c8;


{
  true
&&
  eqsmod (ulimbs 64 [r0, r1, r2, r3, 0@64])
         (ulimbs 64 [a0, a1, a2, a3, 0@64] + ulimbs 64 [b0, b1, b2, b3, 0@64])
         ((2**255) - 19)@320
}

