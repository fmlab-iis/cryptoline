proc main (uint64 L0x7fffffffdbe0, uint64 L0x7fffffffdbe8, uint64 L0x7fffffffdbf0, uint64 L0x7fffffffdbf8, uint64 L0x7fffffffdc00, uint64 L0x7fffffffdc08, uint64 L0x7fffffffdc10, uint64 L0x7fffffffdc18, uint64 rdx) =
{
  true
  &&
#  true
  and [
    limbs 64 [L0x7fffffffdbe0, L0x7fffffffdbe8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdbf0, L0x7fffffffdbf8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdc00, L0x7fffffffdc08] < const 128 (2**127),
    limbs 64 [L0x7fffffffdc10, L0x7fffffffdc18] < const 128 (2**127)
  ]
}


(* #jmpq   0x40f1fb <fp2mul1271_a> *)
#jmpq   0x40f1fb <fp2mul1271_a>;
(* mov    %rdx,%rcx *)
mov rcx rdx;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdc00 *)
mov rdx L0x7fffffffdc00;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffdbe0 *)
mull r9 r8 L0x7fffffffdbe0 rdx;
(* mulx   0x8(%rdi),%r10,%rax                      #! EA = L0x7fffffffdbe8 *)
mull rax r10 L0x7fffffffdbe8 rdx;
(* add    %r10,%r9 *)
adds carry r9 r10 r9;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffdc08 *)
mov rdx L0x7fffffffdc08;
(* mulx   0x8(%rdi),%r10,%r11                      #! EA = L0x7fffffffdbe8 *)
mull r11 r10 L0x7fffffffdbe8 rdx;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* mulx   (%rdi),%rdx,%rax                         #! EA = L0x7fffffffdbe0 *)
mull rax rdx L0x7fffffffdbe0 rdx;
(* adc    $0x0,%r11 *)
adcs carry r11 0x0@uint64 r11 carry;
 assert true && eq carry const 1 0;
  assume eq carry 0 && true;
(* add    %rdx,%r9 *)
adds carry r9 rdx r9;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffdc10 *)
mov rdx L0x7fffffffdc10;
(* mulx   0x10(%rdi),%r12,%r13                     #! EA = L0x7fffffffdbf0 *)
mull r13 r12 L0x7fffffffdbf0 rdx;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* mulx   0x18(%rdi),%r14,%rax                     #! EA = L0x7fffffffdbf8 *)
mull rax r14 L0x7fffffffdbf8 rdx;
(* adc    $0x0,%r11 *)
adcs carry r11 0x0@uint64 r11 carry;
 assert true && eq carry const 1 0;
  assume eq carry 0 && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffdc18 *)
mov rdx L0x7fffffffdc18;
(* add    %r14,%r13 *)
adds carry r13 r14 r13;
(* mulx   0x18(%rdi),%r14,%r15                     #! EA = L0x7fffffffdbf8 *)
mull r15 r14 L0x7fffffffdbf8 rdx;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%r15 *)
adcs carry r15 0x0@uint64 r15 carry;
 assert true && eq carry const 1 0;
  assume eq carry 0 && true;
(* mulx   0x10(%rdi),%rdx,%rax                     #! EA = L0x7fffffffdbf0 *)
mull rax rdx L0x7fffffffdbf0 rdx;
(* add    %rdx,%r13 *)
adds carry r13 rdx r13;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%r15 *)
adcs carry r15 0x0@uint64 r15 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* xor    %rax,%rax *)
mov rax 0@uint64;
(* sub    %r12,%r8 *)
subb carry r8 r8 r12;
(* sbb    %r13,%r9 *)
sbbs carry r9 r9 r13 carry;
(* sbb    %r14,%r10 *)
sbbs carry r10 r10 r14 carry;
(* sbb    %r15,%r11 *)
sbbs carry r11 r11 r15 carry;
(* shld   $0x1,%r10,%r11 *)
(* NOTE split r11 prior to cshl *)
split r11s r11 r11 63;
vpc carry@uint64 carry;
  assert true && eq r11s carry;
   assume eq r11s carry && true;
cshl r11 r10 r11 r10 0x1;
(* shld   $0x1,%r9,%r10 *)
cshl r10 r9 r10 r9 0x1;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffdc10 *)
mov rdx L0x7fffffffdc10;
(* btr    $0x3f,%r9 *)
(* split carry0 r9 r9 63; *)
(* subb carry temp 0@uint64 carry0; *)
(* mulx   (%rdi),%r12,%r13                         #! EA = L0x7fffffffdbe0 *)
mull r13 r12 L0x7fffffffdbe0 rdx;
(* btr    $0x3f,%r11 *)
split carry0 r11 r11 63;
 subb carry temp 0@uint64 carry0;
vpc carry_p@uint64 carry;
  assert true && eq r11s carry_p;
   assume eq r11s carry_p && true;
    assert true && eq carry_p carry0;
     assume eq carry_p carry0 && true;
(* sbb    $0x0,%r10 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* sbb    $0x0,%r11 *)
sbbs carry r11 r11 0x0@uint64 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mulx   0x8(%rdi),%r14,%rax                      #! EA = L0x7fffffffdbe8 *)
mull rax r14 L0x7fffffffdbe8 rdx;
(* add    %r14,%r13 *)
adds carry r13 r14 r13;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffdc18 *)
mov rdx L0x7fffffffdc18;
(* mulx   0x8(%rdi),%r14,%r15                      #! EA = L0x7fffffffdbe8 *)
mull r15 r14 L0x7fffffffdbe8 rdx;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%r15 *)
adcs carry r15 0x0@uint64 r15 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mulx   (%rdi),%rdx,%rax                         #! EA = L0x7fffffffdbe0 *)
mull rax rdx L0x7fffffffdbe0 rdx;
(* add    %rdx,%r13 *)
adds carry r13 rdx r13;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%r15 *)
adcs carry r15 0x0@uint64 r15 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* add    %r8,%r10 *)
adds carry r10 r8 r10;
(* adc    %r9,%r11 *)
adcs carry r11 r9 r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* btr    $0x3f,%r11 *)
split carry0 r11 r11 63;
vpc carry0_p@uint1 carry0;
 subb carry temp 0@uint64 carry0;
  assert true && eq carry carry0_p;
   assume eq carry carry0_p && true;
(* adc    $0x0,%r10 *)
adcs carry r10 0x0@uint64 r10 carry;
(* adc    $0x0,%r11 *)
adcs carry r11 0x0@uint64 r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffdc00 *)
mov rdx L0x7fffffffdc00;
(* mulx   0x10(%rdi),%r8,%r9                       #! EA = L0x7fffffffdbf0 *)
mull r9 r8 L0x7fffffffdbf0 rdx;
(* mov    %r10,(%rcx)                              #! EA = L0x7fffffffdc40 *)
mov L0x7fffffffdc40 r10;
(* mulx   0x18(%rdi),%r10,%rax                     #! EA = L0x7fffffffdbf8 *)
mull rax r10 L0x7fffffffdbf8 rdx;
(* mov    %r11,0x8(%rcx)                           #! EA = L0x7fffffffdc48 *)
mov L0x7fffffffdc48 r11;
(* add    %r10,%r9 *)
adds carry r9 r10 r9;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffdc08 *)
mov rdx L0x7fffffffdc08;
(* mulx   0x18(%rdi),%r10,%r11                     #! EA = L0x7fffffffdbf8 *)
mull r11 r10 L0x7fffffffdbf8 rdx;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* adc    $0x0,%r11 *)
adcs carry r11 0x0@uint64 r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mulx   0x10(%rdi),%rdx,%rax                     #! EA = L0x7fffffffdbf0 *)
mull rax rdx L0x7fffffffdbf0 rdx;
(* add    %rdx,%r9 *)
adds carry r9 rdx r9;
(* adc    %rax,%r10 *)
adcs carry r10 rax r10 carry;
(* adc    $0x0,%r11 *)
adcs carry r11 0x0@uint64 r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* add    %r12,%r8 *)
adds carry r8 r12 r8;
(* adc    %r13,%r9 *)
adcs carry r9 r13 r9 carry;
(* adc    %r14,%r10 *)
adcs carry r10 r14 r10 carry;
(* adc    %r15,%r11 *)
adcs carry r11 r15 r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* shld   $0x1,%r10,%r11 *)
cshl r11 r10 r11 r10 0x1;
(* shld   $0x1,%r9,%r10 *)
cshl r10 r9 r10 r9 0x1;
(* btr    $0x3f,%r9 *)
(* split carry0 r9 r9 63; *)
(* subb carry temp 0@uint64 carry0; *)
(* btr    $0x3f,%r11 *)
split carry0 r11 r11 63;
 subb carry temp 0@uint64 carry0;
 vpc carry0_p@uint1 carry0;
  assert true && eq carry carry0_p;
   assume eq carry carry0_p && true;
(* adc    %r10,%r8 *)
adcs carry r8 r10 r8 carry;
(* adc    %r11,%r9 *)
adcs carry r9 r11 r9 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* btr    $0x3f,%r9 *)
split carry0 r9 r9 63;
 subb carry temp 0@uint64 carry0;
 vpc carry0_p@uint1 carry0;
  assert true && eq carry carry0_p;
   assume eq carry carry0_p && true;
(* adc    $0x0,%r8 *)
adcs carry r8 0x0@uint64 r8 carry;
(* adc    $0x0,%r9 *)
adcs carry r9 0x0@uint64 r9 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mov    %r8,0x10(%rcx)                           #! EA = L0x7fffffffdc50 *)
mov L0x7fffffffdc50 r8;
(* mov    %r9,0x18(%rcx)                           #! EA = L0x7fffffffdc58 *)
mov L0x7fffffffdc58 r9;
(* #retq *)
#retq;

{
#  true
  and [
    eqmod (
      sub
        ( mul
          (limbs 64 [L0x7fffffffdc00, L0x7fffffffdc08])
          (limbs 64 [L0x7fffffffdbe0, L0x7fffffffdbe8]) )
        ( mul
          (limbs 64 [L0x7fffffffdc10, L0x7fffffffdc18])
          (limbs 64 [L0x7fffffffdbf0, L0x7fffffffdbf8]) )
        )
      (limbs 64 [L0x7fffffffdc40, L0x7fffffffdc48])
      (((2**127 )- 1) ),
    eqmod (
      add
        ( mul
          (limbs 64 [L0x7fffffffdc00, L0x7fffffffdc08])
          (limbs 64 [L0x7fffffffdbf0, L0x7fffffffdbf8]) )
        ( mul
          (limbs 64 [L0x7fffffffdc10, L0x7fffffffdc18])
          (limbs 64 [L0x7fffffffdbe0, L0x7fffffffdbe8]) )
        )
      (limbs 64 [L0x7fffffffdc50, L0x7fffffffdc58])
      (((2**127 )- 1) )
  ]
  &&
  and [
    limbs 64 [L0x7fffffffdc40, L0x7fffffffdc48] < const 128 (2**127),
    limbs 64 [L0x7fffffffdc50, L0x7fffffffdc58] < const 128 (2**127)
  ]

}
