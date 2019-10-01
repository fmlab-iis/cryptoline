proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 b0, uint64 b1, uint64 b2, uint64 b3) =
{
  true
&&
  true
}


mov L0x603060 a0;
mov L0x603068 a1;
mov L0x603070 a2;
mov L0x603078 a3;

mov L0x6030a0 b0;
mov L0x6030a8 b1;
mov L0x6030b0 b2;
mov L0x6030b8 b3;

mov rax 0@uint64 ;

mov addt0 0@uint64;
mov addt1 38@uint64;

(* mov    (%rsi),%r8                               #! EA = L0x603060 *)
mov r8 L0x603060;
(* mov    0x8(%rsi),%r9                            #! EA = L0x603068 *)
mov r9 L0x603068;
(* mov    0x10(%rsi),%r10                          #! EA = L0x603070 *)
mov r10 L0x603070;
(* mov    0x18(%rsi),%r11                          #! EA = L0x603078 *)
mov r11 L0x603078;

(* add    (%rdx),%r8                               #! EA = L0x6030a0 *)
adds carry r8 L0x6030a0 r8;
(* adc    0x8(%rdx),%r9                            #! EA = L0x6030a8 *)
adcs carry r9 L0x6030a8 r9 carry;
(* adc    0x10(%rdx),%r10                          #! EA = L0x6030b0 *)
adcs carry r10 L0x6030b0 r10 carry;
(* adc    0x18(%rdx),%r11                          #! EA = L0x6030b8 *)
adcs carry r11 L0x6030b8 r11 carry;
cmov rax carry addt1 addt0;

assume eq carry 0 && eq carry const 1 0;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    $0x0,%r9 *)
adcs  carry  r9 r9 0@uint64 carry;
(* adc    $0x0,%r10 *)
adcs carry r10 r10 0@uint64 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdbd8 *)
mov L0x7fffffffdbd8 r9;
(* adc    $0x0,%r11 *)
adcs carry  r11 r11 0@uint64 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdbe0 *)
mov L0x7fffffffdbe0 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdbe8 *)
mov L0x7fffffffdbe8 r11;
cmov rax carry addt1 addt0;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdbd0 *)
mov L0x7fffffffdbd0 r8;
(* #repz retq *)
#repz retq;
assume eq carry 0 && eq carry const 1 0;

{
    eqmod
     (
        (limbs 64 [a0, a1, a2, a3])
        +
        (limbs 64 [b0, b1, b2, b3])
     )
     (limbs 64 [r8, r9, r10, r11])
     (((2**255 )- 19))
  &&
  true
}
