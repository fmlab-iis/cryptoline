proc main (uint64 L0x7fffffffe330, uint64 L0x7fffffffe338, uint64 L0x7fffffffe340, uint64 L0x7fffffffe348, uint64 L0x7fffffffe350, uint64 L0x7fffffffe358, uint64 L0x7fffffffe360, uint64 L0x7fffffffe368, uint64 rdx, uint64 rsi) =
{
  true
  &&
  and [
    limbs 64 [L0x7fffffffe330, L0x7fffffffe338] < const 128 (2**127),
    limbs 64 [L0x7fffffffe340, L0x7fffffffe348] < const 128 (2**127),
    limbs 64 [L0x7fffffffe350, L0x7fffffffe358] < const 128 (2**127),
    limbs 64 [L0x7fffffffe360, L0x7fffffffe368] < const 128 (2**127)
  ]
}

(* mov    (%rdi),%rax                              #! EA = L0x7fffffffe330 *)
mov rax L0x7fffffffe330;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* add    (%rsi),%rax                              #! EA = L0x7fffffffe350 *)
adds carry rax L0x7fffffffe350 rax;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffe338 *)
mov rdx L0x7fffffffe338;
(* movabs $0x7fffffffffffffff,%r8 *)
mov r8 0x7fffffffffffffff@uint64;
(* adc    0x8(%rsi),%rdx                           #! EA = L0x7fffffffe358 *)
(* NOTE: add assertion and assumption *)
adcs carry rdx L0x7fffffffe358 rdx carry;
assert true && eq carry const 1 0;
assume eq carry 0 && true;
(* xor    %r12d,%r12d *)
(* NOTE: this instruction actually sets r12 to 0 *)
#split r12d_H r12d_L r12 32;
#shl r12 r12d_H 32;
mov r12 0@uint64;
(* mov    %rsi,%r9 *)
mov r9 rsi;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* shr    $0x3f,%r11 *)
split r11 tmp r11 0x3f;
(* add    %r11,%rax *)
adds carry rax r11 rax;
(* adc    %r12,%rdx *)
(* NOTE: rename the last carry *)
adcs carry2 rdx r12 rdx carry;
assert true && eq carry2 const 1 0;
assume eq carry2 0 && true;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffe370 *)
mov L0x7fffffffe370 rax;
(* mov    %rdx,%rax *)
mov rax rdx;
(* and    %r8,%rax *)
(* NOTE: add assertion and assumption *)
and rax@uint64 r8 rax;
vpc carry@uint64 carry;
assert true && eq rax (add tmp carry);
assume eq rax (add tmp carry) && true;
(* mov    %rax,0x8(%rcx)                           #! EA = L0x7fffffffe378 *)
mov L0x7fffffffe378 rax;
(* mov    0x10(%rdi),%rsi                          #! EA = L0x7fffffffe340 *)
mov rsi L0x7fffffffe340;
(* mov    0x10(%r9),%rax                           #! EA = L0x7fffffffe360 *)
mov rax L0x7fffffffe360;
(* mov    0x18(%r9),%rdx                           #! EA = L0x7fffffffe368 *)
mov rdx L0x7fffffffe368;
(* mov    0x18(%rdi),%rdi                          #! EA = L0x7fffffffe348 *)
mov rdi L0x7fffffffe348;
(* add    %rax,%rsi *)
adds carry rsi rax rsi;
(* adc    %rdx,%rdi *)
adcs carry rdi rdx rdi carry;
assert true && eq carry const 1 0;
assume eq carry 0 && true;
(* xor    %edx,%edx *)
(* NOTE: this instruction actually sets rdx to 0 *)
#mov edx 0@uint64;
mov rdx 0@uint64;
(* mov    %rdi,%rax *)
mov rax rdi;
(* shr    $0x3f,%rax *)
split rax tmp rax 0x3f;
(* add    %rsi,%rax *)
adds carry rax rsi rax;
(* adc    %rdi,%rdx *)
(* NOTE: rename the last carry *)
adcs carry2 rdx rdi rdx carry;
assert true && eq carry2 const 1 0;
assume eq carry2 0 && true;
(* mov    %rax,0x10(%rcx)                          #! EA = L0x7fffffffe380 *)
mov L0x7fffffffe380 rax;
(* and    %rdx,%r8 *)
(* NOTE: add assertion and assumption *)
and r8@uint64 rdx r8;
vpc carry@uint64 carry;
assert true && eq r8 (add tmp carry);
assume eq r8 (add tmp carry) && true;
(* mov    %r8,0x18(%rcx)                           #! EA = L0x7fffffffe388 *)
mov L0x7fffffffe388 r8;
(* #retq *)
#retq;

{
  and [
    eqmod
      (
        add
        (limbs 64 [L0x7fffffffe330, L0x7fffffffe338])
        (limbs 64 [L0x7fffffffe350, L0x7fffffffe358])
      )
      (limbs 64 [L0x7fffffffe370, L0x7fffffffe378])
      (((2**127 )- 1)),
    eqmod
      (
        add
        (limbs 64 [L0x7fffffffe340, L0x7fffffffe348])
        (limbs 64 [L0x7fffffffe360, L0x7fffffffe368])
      )
      (limbs 64 [L0x7fffffffe380, L0x7fffffffe388])
      (((2**127 )- 1))
  ]
  &&
  and [
    limbs 64 [L0x7fffffffe370, L0x7fffffffe378] < const 128 (2**127),
    limbs 64 [L0x7fffffffe380, L0x7fffffffe388] < const 128 (2**127)
  ]
}
