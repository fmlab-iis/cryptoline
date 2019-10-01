proc main (uint64 b0,uint64 b1,uint64 b2,uint64 b3) =
{
  true
  &&
  true
}


mov L0x6030a0 b0;
mov L0x6030a8 b1;
mov L0x6030b0 b2;
mov L0x6030b8 b3;



(* mov    $0x1db42,%edx *)
mov rdx 121666@uint64;
assert eq rdx 121666 && true;
(* mulx   (%rsi),%r8,%rcx                          #! EA = L0x6030a0 *)
mull rcx r8 L0x6030a0 rdx;

(* mulx   0x8(%rsi),%r9,%rax                       #! EA = L0x6030a8 *)
mull rax r9 L0x6030a8 rdx;
(* add    %rcx,%r9 *)
clear carry;
assert true && eq carry const 1 0;
assume eq carry 0 && true;
adds carry r9 rcx r9;
(* mulx   0x10(%rsi),%r10,%rcx                     #! EA = L0x6030b0 *)
mull rcx r10 L0x6030b0 rdx;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* mulx   0x18(%rsi),%r11,%rax                     #! EA = L0x6030b8 *)
mull rax r11 L0x6030b8 rdx;
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
(* adc    $0x0,%rax *)
adcs carry rax 0@uint64 rax carry;
(* imul   $0x26,%rax,%rax *)
mul rax 38@uint64 rax;
(* add    %rax,%r8 *)
assert true && eq carry const 1 0;
assume eq carry 0 && true;
adds carry r8 rax r8;
(* adc    $0x0,%r9 *)
adcs carry r9 0@uint64 r9 carry;
(* adc    $0x0,%r10 *)
adcs carry r10 0@uint64 r10 carry;
(* adc    $0x0,%r11 *)
adcs carry r11 0@uint64 r11 carry;
cmov rax carry 38@uint64 0@uint64;
(* add    %rax,%r8 *)

adds carry r8 rax r8;


assert true && eq carry const 1 0;
assume eq carry 0 && true;

{
   eqmod
    (
      (limbs 64 [b0, b1, b2, b3])
      *
      121666
    )
    (limbs 64 [r8, r9, r10, r11])
    (((2**255 )- 19))
  &&
  true
}
