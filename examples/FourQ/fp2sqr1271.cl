proc main (uint64 L0x7fffffffdad0, uint64 L0x7fffffffdad8, uint64 L0x7fffffffdae0, uint64 L0x7fffffffdae8) =
{
  true
  &&
#  true
  and [
    limbs 64 [L0x7fffffffdad0, L0x7fffffffdad8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdae0, L0x7fffffffdae8] < const 128 (2**127)
  ]
}

(* #jmpq   0x40f359 <fp2sqr1271_a> *)
#jmpq   0x40f359 <fp2sqr1271_a>;
(* mov    (%rdi),%r10                              #! EA = L0x7fffffffdad0 *)
mov r10 L0x7fffffffdad0;
(* mov    0x10(%rdi),%r14                          #! EA = L0x7fffffffdae0 *)
mov r14 L0x7fffffffdae0;
(* sub    %r14,%r10 *)
subb carry r10 r10 r14;
(* mov    0x8(%rdi),%r11                           #! EA = L0x7fffffffdad8 *)
mov r11 L0x7fffffffdad8;
(* mov    0x18(%rdi),%rcx                          #! EA = L0x7fffffffdae8 *)
mov rcx L0x7fffffffdae8;
(* sbb    %rcx,%r11 *)
sbbs carry r11 r11 rcx carry;
(* [r11, r10] - [rcx, r14] is a difference of 127-bit numbers *)
(* the carry is the 128th bit, it is equal to the 127th bit   *)
(* btr    $0x3f,%r11 *)
split carry0 r11 r11 63;
 subb carry1 temp 0@uint64 carry0;
 vpc carry0_p@uint1 carry0;
  assert true && eq carry0_p carry;
   assume eq carry0_p carry && true;
    assert true && eq carry0_p carry1;
     assume eq carry0_p carry1 && true;
(* sbb    $0x0,%r10 *)
sbbs carry r10 r10 0x0@uint64 carry;
(* mov    %r10,%rdx *)
mov rdx r10;
(* sbb    $0x0,%r11 *)
(* NOTE This instruction was moved up from below *)
sbbs carry r11 r11 0x0@uint64 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdad0 *)
mov r8 L0x7fffffffdad0;
(* add    %r14,%r8 *)
adds carry r8 r14 r8;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdad8 *)
mov r9 L0x7fffffffdad8;
(* adc    %rcx,%r9 *)
adcs carry r9 rcx r9 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mulx   %r8,%r12,%r13 *)
mull r13 r12 r8 rdx;
(* NOTE the "sbb $0x0,%r11" was here, but seems to be wrong" *)
(* mulx   %r9,%r14,%rax *)
mull rax r14 r9 rdx;
(* mov    %r11,%rdx *)
mov rdx r11;
(* add    %r14,%r13 *)
adds carry r13 r14 r13;
(* mulx   %r9,%r14,%rcx *)
mull rcx r14 r9 rdx;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdad8 *)
mov r9 L0x7fffffffdad8;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%rcx *)
adcs carry rcx 0x0@uint64 rcx carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mulx   %r8,%rdx,%rax *)
mull rax rdx r8 rdx;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdad0 *)
mov r8 L0x7fffffffdad0;
(* add    %rdx,%r13 *)
adds carry r13 rdx r13;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%rcx *)
adcs carry rcx 0x0@uint64 rcx carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* add    %r8,%r8 *)
adds carry r8 r8 r8;
(* adc    %r9,%r9 *)
adcs carry r9 r9 r9 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* shld   $0x1,%r14,%rcx *)
cshl rcx r14 rcx r14 0x1;
(* shld   $0x1,%r13,%r14 *)
cshl r14 r13 r14 r13 0x1;
(* two shld's plus this btr translates to two bvConcatshl's *)
(* btr    $0x3f,%r13 *)
(* split carry0 r13 r13 63; *)
(* subb carry temp 0@uint64 carry0; *)
(* btr    $0x3f,%rcx *)
split carry0 rcx rcx 63;
 subb carry temp 0@uint64 carry0;
vpc carry0_p@uint1 carry0;
  assert true && eq carry0_p carry;
   assume eq carry0_p carry && true;
(* adc    %r14,%r12 *)
adcs carry r12 r14 r12 carry;
(* adc    %rcx,%r13 *)
adcs carry r13 rcx r13 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* btr    $0x3f,%r13 *)
split carry0 r13 r13 63;
 subb carry temp 0@uint64 carry0;
vpc carry0_p@uint1 carry0;
  assert true && eq carry0_p carry;
   assume eq carry0_p carry && true;
(* adc    $0x0,%r12 *)
adcs carry r12 0x0@uint64 r12 carry;
(* adc    $0x0,%r13 *)
adcs carry r13 0x0@uint64 r13 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mov    %r12,(%rsi)                              #! EA = L0x7fffffffdaf0 *)
mov L0x7fffffffdaf0 r12;
(* mov    %r13,0x8(%rsi)                           #! EA = L0x7fffffffdaf8 *)
mov L0x7fffffffdaf8 r13;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffdae0 *)
mov rdx L0x7fffffffdae0;
(* mulx   %r8,%r10,%r11 *)
mull r11 r10 r8 rdx;
(* mulx   %r9,%r14,%rax *)
mull rax r14 r9 rdx;
(* add    %r14,%r11 *)
adds carry r11 r14 r11;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffdae8 *)
mov rdx L0x7fffffffdae8;
(* mulx   %r9,%r14,%rcx *)
mull rcx r14 r9 rdx;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%rcx *)
adcs carry rcx 0x0@uint64 rcx carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mulx   %r8,%rdx,%rax *)
mull rax rdx r8 rdx;
(* add    %rdx,%r11 *)
adds carry r11 rdx r11;
(* adc    %rax,%r14 *)
adcs carry r14 rax r14 carry;
(* adc    $0x0,%rcx *)
adcs carry rcx 0x0@uint64 rcx carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* shld   $0x1,%r14,%rcx *)
cshl rcx r14 rcx r14 0x1;
(* shld   $0x1,%r11,%r14 *)
cshl r14 r11 r14 r11 0x1;
(* two shld's plus this btr translates to two bvConcatshl's *)
(* btr    $0x3f,%r11 *)
(* split carry0 r11 r11 63; *)
(* subb carry temp 0@uint64 carry0; *)
(* btr    $0x3f,%rcx *)
split carry0 rcx rcx 63;
 subb carry temp 0@uint64 carry0;
vpc carry0_p@uint1 carry0;
  assert true && eq carry0_p carry;
   assume eq carry0_p carry && true;
(* adc    %r14,%r10 *)
adcs carry r10 r14 r10 carry;
(* adc    %rcx,%r11 *)
adcs carry r11 rcx r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* btr    $0x3f,%r11 *)
split carry0 r11 r11 63;
 subb carry temp 0@uint64 carry0;
vpc carry0_p@uint1 carry0;
  assert true && eq carry0_p carry;
   assume eq carry0_p carry && true;
(* adc    $0x0,%r10 *)
adcs carry r10 0x0@uint64 r10 carry;
(* adc    $0x0,%r11 *)
adcs carry r11 0x0@uint64 r11 carry;
 assert true && eq  carry const 1 0;
  assume eq carry 0 && true;
(* mov    %r10,0x10(%rsi)                          #! EA = L0x7fffffffdb00 *)
mov L0x7fffffffdb00 r10;
(* mov    %r11,0x18(%rsi)                          #! EA = L0x7fffffffdb08 *)
mov L0x7fffffffdb08 r11;
(* #retq *)
#retq;

{
#  true
  and [
    eqmod (
      sub
        ( mul
          (limbs 64 [L0x7fffffffdad0, L0x7fffffffdad8])
          (limbs 64 [L0x7fffffffdad0, L0x7fffffffdad8]) )
        ( mul
          (limbs 64 [L0x7fffffffdae0, L0x7fffffffdae8])
          (limbs 64 [L0x7fffffffdae0, L0x7fffffffdae8]) )
        )
      (limbs 64 [L0x7fffffffdaf0, L0x7fffffffdaf8])
      (((2**127 )- 1) ),
    eqmod (
      add
        ( mul
          (limbs 64 [L0x7fffffffdad0, L0x7fffffffdad8])
          (limbs 64 [L0x7fffffffdae0, L0x7fffffffdae8]) )
        ( mul
          (limbs 64 [L0x7fffffffdae0, L0x7fffffffdae8])
          (limbs 64 [L0x7fffffffdad0, L0x7fffffffdad8]) )
        )
      (limbs 64 [L0x7fffffffdb00, L0x7fffffffdb08])
      (((2**127 )- 1) )
  ]
  &&
#  true
  and [
    limbs 64 [L0x7fffffffdaf0, L0x7fffffffdaf8] < const 128 (2**127),
    limbs 64 [L0x7fffffffdb00, L0x7fffffffdb08] < const 128 (2**127)
  ]
}
