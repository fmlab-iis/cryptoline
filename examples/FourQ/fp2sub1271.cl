proc main (uint64 L0x7fffffffdcc0, uint64 L0x7fffffffdcc8, uint64 L0x7fffffffdcd0, uint64 L0x7fffffffdcd8, uint64 L0x7fffffffdce0, uint64 L0x7fffffffdce8, uint64 L0x7fffffffdcf0, uint64 L0x7fffffffdcf8, uint64 rdx, uint64 sign) =
{
  true
  &&
  and [
    limbs 64 [L0x7fffffffdcc0, L0x7fffffffdcc8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdcd0, L0x7fffffffdcd8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdce0, L0x7fffffffdce8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdcf0, L0x7fffffffdcf8] < const 128 (2**127)
  ]
}

(* movabs $0x7fffffffffffffff,%r8 *)
mov r8 0x7fffffffffffffff@uint64;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffdcc0 *)
mov rax L0x7fffffffdcc0;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* sub    (%rsi),%rax                              #! EA = L0x7fffffffdce0 *)
subb carry rax rax L0x7fffffffdce0;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffdcc8 *)
mov rdx L0x7fffffffdcc8;
(* sbb    0x8(%rsi),%rdx                           #! EA = L0x7fffffffdce8 *)
sbbs carry rdx rdx L0x7fffffffdce8 carry;
(* NOTE:  127th bit, minus of "sar $0x3f,%rdx", equals 128th bit, the carry *)
(* mov    %rax,%r9 *)
mov r9 rax;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* sar    $0x3f,%rdx *)
split sign tmp rdx 63; subb carry0 rdx 0@uint64 sign;
(* NOTE: add assertion and assumption *)
assert true && eq carry0 carry;
assume eq carry0 carry && true;
(* NOTE: the 127th bit equals the 128th bit *)
vpc sign@uint1 sign;
assert true && eq sign carry;
assume eq sign carry && true;
(* mov    %rdx,%rax *)
mov rax rdx;
(* add    %r9,%rax *)
adds carry rax r9 rax;
(* adc    %r10,%rdx *)
adcs carry2 rdx r10 rdx carry;
assert true && eq sign carry2;
assume eq sign carry2 && true;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffdd00 *)
mov L0x7fffffffdd00 rax;
(* mov    %rdx,%rax *)
mov rax rdx;
(* and    %r8,%rax *)
and rax@uint64 r8 rax;
vpc sign_p@uint64 sign;
vpc carry_p@uint64 carry;
assert true && eq rax (add carry_p (sub tmp sign_p));
assume eq rax (add carry_p (sub tmp sign_p)) && true;
(* mov    %rax,0x8(%rcx)                           #! EA = L0x7fffffffdd08 *)
mov L0x7fffffffdd08 rax;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffdcd0 *)
mov rax L0x7fffffffdcd0;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffdcd8 *)
mov rdx L0x7fffffffdcd8;
(* sub    0x10(%rsi),%rax                          #! EA = L0x7fffffffdcf0 *)
subb carry rax rax L0x7fffffffdcf0;
(* sbb    0x18(%rsi),%rdx                          #! EA = L0x7fffffffdcf8 *)
sbbs carry rdx rdx L0x7fffffffdcf8 carry;
(* carry, rdx, rax = 129-bit signed rep of a1-b1 *)
(* NOTE:  127th bit, minus of "sar $0x3f,%rdx", equals 128th bit, the carry *)
(* mov    %rax,%rsi *)
mov rsi rax;
(* mov    %rdx,%rdi *)
mov rdi rdx;
(* sar    $0x3f,%rdx *)
split sign tmp rdx 63; subb carry0 rdx 0@uint64 sign;
(* NOTE: add assertion and assumption *)
assert true && eq carry0 carry;
assume eq carry0 carry && true;
(* NOTE: the 127th bit equals the 128th bit *)
vpc sign@uint1 sign;
assert true && eq sign carry;
assume eq sign carry && true;
(* mov    %rdx,%rax *)
mov rax rdx;
(* add    %rsi,%rax *)
adds carry rax rsi rax;
(* adc    %rdi,%rdx *)
adcs carry2 rdx rdi rdx carry;
assert true && eq sign carry2;
assume eq sign carry2 && true;
(* mov    %rax,0x10(%rcx)                          #! EA = L0x7fffffffdd10 *)
mov L0x7fffffffdd10 rax;
(* and    %rdx,%r8 *)
and r8@uint64 rdx r8;
vpc sign_p@uint64 sign;
vpc carry_p@uint64 carry;
assert true && eq r8 (add carry_p (sub tmp sign_p));
assume eq r8 (add carry_p (sub tmp sign_p)) && true;
(* mov    %r8,0x18(%rcx)                           #! EA = L0x7fffffffdd18 *)
mov L0x7fffffffdd18 r8;
(* #retq *)
#retq;

{
  and [
    eqmod
      (
        sub
        (limbs 64 [L0x7fffffffdcc0, L0x7fffffffdcc8])
        (limbs 64 [L0x7fffffffdce0, L0x7fffffffdce8])
      )
      (limbs 64 [L0x7fffffffdd00, L0x7fffffffdd08])
      (((2**127 )- 1)),
    eqmod
      (
        sub
        (limbs 64 [L0x7fffffffdcd0, L0x7fffffffdcd8])
        (limbs 64 [L0x7fffffffdcf0, L0x7fffffffdcf8])
      )
      (limbs 64 [L0x7fffffffdd10, L0x7fffffffdd18])
      (((2**127 )- 1))
  ]
  &&
  and [
    limbs 64 [L0x7fffffffdd00, L0x7fffffffdd08] < const 128 (2**127),
    limbs 64 [L0x7fffffffdd10, L0x7fffffffdd18] < const 128 (2**127)
  ]
}
