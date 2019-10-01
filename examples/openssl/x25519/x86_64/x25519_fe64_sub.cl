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

mov subt0 0@uint64;
mov subt1 38@uint64;


(* mov    (%rsi),%r8                               #! EA = L0x603060 *)
mov r8 L0x603060;
(* mov    0x8(%rsi),%r9                            #! EA = L0x603068 *)
mov r9 L0x603068;
(* mov    0x10(%rsi),%r10                          #! EA = L0x603070 *)
mov r10 L0x603070;
(* mov    0x18(%rsi),%r11                          #! EA = L0x603078 *)
mov r11 L0x603078;
(* sub    (%rdx),%r8                               #! EA = L0x6030a0 *)
subb carry r8 r8 L0x6030a0;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x6030a8 *)
sbbs carry r9 r9 L0x6030a8 carry;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x6030b0 *)
sbbs carry r10 r10 L0x6030b0 carry;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x6030b8 *)
sbbs carry r11 r11 L0x6030b8 carry;
(* sbb    %rax,%rax *)
(* sbbs carry rax rax rax carry; *)
(* and    $0x26,%rax *)
cmov rax carry subt1 subt0;
(* sub    %rax,%r8 *)
subb carry r8 r8 rax;
(* sbb    $0x0,%r9 *)
sbbs carry r9 r9 0@uint64 carry;
(* sbb    $0x0,%r10 *)
sbbs carry r10 r10 0@uint64 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdbd8 *)
mov L0x7fffffffdbd8 r9;
(* sbb    $0x0,%r11 *)
sbbs carry r11 r11 0@uint64 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdbe0 *)
mov L0x7fffffffdbe0 r10;
(* sbb    %rax,%rax *)
(* sbbs carry rax rax rax carry; *)
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdbe8 *)
mov L0x7fffffffdbe8 r11;
(* and    $0x26,%rax *)
cmov rax carry subt1 subt0;
(* sub    %rax,%r8 *)
sub  r8 r8 rax;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdbd0 *)
mov L0x7fffffffdbd0 r8;
(* #repz retq *)
#repz retq;


{
  eqmod
     (
        (limbs 64 [a0, a1, a2, a3])
        -
        (limbs 64 [b0, b1, b2, b3])
     )
     (limbs 64 [r8, r9, r10, r11])
     (((2**255 )- 19))
  &&
  true
}
