proc main(uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 x4) =
{ true }
mov rax x0;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
mov r0 rax;
mov r1 rdx;
      (*    *)
mov rax x1;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r1 r1 rax;
mov r2 rdx;
      (*    *)
mov rax x2;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r2 r2 rax;
mov r3 rdx;
      (*    *)
mov rax x3;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r3 r3 rax;
mov r4 rdx;
      (*    *)
mov rax x4;
mull rdx rax rax 121666@uint64;
cshl rdx rax rdx rax 13;
add r4 r4 rax;
mul rdx rdx 19@uint64;
add r0 r0 rdx;
{
  eqmod (
      (limbs 51 [x0, x1, x2, x3, x4])
      *
      121666
    )
    (limbs 51 [r0, r1, r2, r3, r4])
    (((2**255 )- 19))
  &&
  and [
     r0 <= const 64 (2**52),
     r1 <= const 64 (2**52),
     r2 <= const 64 (2**52),
     r3 <= const 64 (2**52),
     r4 <= const 64 (2**52)
  ]
}
