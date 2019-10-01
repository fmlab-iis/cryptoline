(* frege: -isafety -no_carry_constraint -vo appearing
Parsing Cryptoline file:                [OK]            0.002235 seconds
Checking well-formedness:               [OK]            0.000293 seconds
Transforming to SSA form:               [OK]            0.000366 seconds
Verifying program safety:               [OK]            0.261599 seconds
Verifying assertions:                   [OK]            4994.892356 seconds
Verifying range specification:          [OK]            0.023594 seconds
Verifying algebraic specification:      [OK]            0.023593 seconds
Verification result:                    [OK]            4995.204251 seconds
*)
(* quine: -isafety -no_carry_constraint -vo appearing
Parsing Cryptoline file:                [OK]            0.002027 seconds
Checking well-formedness:               [OK]            0.000250 seconds
Transforming to SSA form:               [OK]            0.000307 seconds
Verifying program safety:               [OK]            0.206614 seconds
Verifying assertions:                   [OK]            6165.688959 seconds
Verifying range specification:          [OK]            0.026887 seconds
Verifying algebraic specification:      [OK]            0.024197 seconds
Verification result:                    [OK]            6165.949460 seconds
*)

proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3,
          uint64  t0, uint64 t1, uint64 t2, uint64 t3, uint64 t4, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
    eqmod
      (
        (limbs 64 [x0, x1, x2, x3])
        *
        (limbs 64 [y0, y1, y2, y3])
      )

      (
        (limbs 64 [0, 0, 0, 0,
                   t0, t1, t2, t3, t4])
      )

      (
        (limbs 64 [m0, m1, m2, m3])
      )
  &&
    and [
      (limbs 64 [t0, t1, t2, t3, t4]) <
      (mul (limbs 64 [m0, m1, m2, m3,
                        const 64 0])
             const 320 2),
      t4 < const 64 2,
      eq const 64 1 (umod m0 const 64 2),
      eq
        const 576 0
        (srem
          (sub
             (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                        t0, t1, t2, t3, t4])
             (mul
                (limbs 64 [x0, x1, x2, x3,
                           const 64 0, const 64 0, const 64 0,
                           const 64 0, const 64 0])
                (limbs 64 [y0, y1, y2, y3,
                           const 64 0, const 64 0, const 64 0,
                           const 64 0, const 64 0])))
          (limbs 64 [m0, m1, m2, m3,
                     const 64 0, const 64 0, const 64 0,
                     const 64 0, const 64 0]))
      ]
}


mov r9 4@uint64;

mov L0x6060c0 m0;
mov L0x6060c8 m1;
mov L0x6060d0 m2;
mov L0x6060d8 m3;
mov L0x7fffffffd800 t0;
mov L0x7fffffffd808 t1;
mov L0x7fffffffd810 t2;
mov L0x7fffffffd818 t3;
mov L0x7fffffffd820 t4;

clear carry;

(* reduction *)

(* xor    %r14,%r14 *)
mov r14 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd800 *)
mov rax L0x7fffffffd800;
(* lea    (%rsp),%rsi                              #! EA = L0x7fffffffd800 *)
(* NOTE: store rsp in rsi *)
(* mov rsi (bvConst L0x7fffffffd800); *)
(* mov    %r9,%r15 *)
mov r15 r9;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060c0 *)
sbbs carry rax rax L0x6060c0 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc60 *)
mov L0x7fffffffdc60 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd808 *)
mov rax L0x7fffffffd808;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060c8 *)
sbbs carry rax rax L0x6060c8 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc68 *)
mov L0x7fffffffdc68 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd810 *)
mov rax L0x7fffffffd810;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060d0 *)
sbbs carry rax rax L0x6060d0 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc70 *)
mov L0x7fffffffdc70 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd818 *)
mov rax L0x7fffffffd818;
(* lea    0x1(%r14),%r14                           #! EA = L0x3 *)
mov r14 3@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060d8 *)
sbbs carry rax rax L0x6060d8 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc78 *)
mov L0x7fffffffdc78 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffd820 *)
mov rax L0x7fffffffd820;
(* lea    0x1(%r14),%r14                           #! EA = L0x4 *)
mov r14 4@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    $0x0,%rax *)
sbbs carry rax rax 0@uint64 carry;
(* the following code = carry ? rsi : rdi *)
(* xor    %r14,%r14 *)
mov r14 0@uint64;
(* and    %rax,%rsi *)
(* not    %rax *)
(* mov    %rdi,%rcx *)
(* and    %rax,%rcx *)
(* mov    %r9,%r15 *)
mov r15 r9;
(* or     %rcx,%rsi *)
(* nop *)
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc60 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc60; *)
cmov rax carry L0x7fffffffd800 L0x7fffffffdc60;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd800 *)
mov L0x7fffffffd800 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc60 *)
mov L0x7fffffffdc60 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc68 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc68; *)
cmov rax carry L0x7fffffffd808 L0x7fffffffdc68;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd808 *)
mov L0x7fffffffd808 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc68 *)
mov L0x7fffffffdc68 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc70 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc70; *)
cmov rax carry L0x7fffffffd810 L0x7fffffffdc70;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd810 *)
mov L0x7fffffffd810 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc70 *)
mov L0x7fffffffdc70 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x3 *)
mov r14 3@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc78 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc78; *)
cmov rax carry L0x7fffffffd818 L0x7fffffffdc78;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffd818 *)
mov L0x7fffffffd818 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc78 *)
mov L0x7fffffffdc78 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x4 *)
mov r14 4@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;

mov z0 L0x7fffffffdc60;
mov z1 L0x7fffffffdc68;
mov z2 L0x7fffffffdc70;
mov z3 L0x7fffffffdc78;

assert
  true
&&
  eq
    const 576 0
      (srem
        (sub
           (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                      t0, t1, t2, t3, t4])
           (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                      z0, z1, z2, z3, const 64 0]))
        (limbs 64 [m0, m1, m2, m3,
                   const 64 0, const 64 0, const 64 0,
                   const 64 0, const 64 0]));

assume
  eqmod
    (limbs 64 [0, 0, 0, 0,
               t0, t1, t2, t3, t4])
    (limbs 64 [0, 0, 0, 0,
               z0, z1, z2, z3])
    (limbs 64 [m0, m1, m2, m3])
&&
  true;

{
  eqmod
    (limbs 64 [0, 0, 0, 0,
               z0, z1, z2, z3])
    ((limbs 64 [x0, x1, x2, x3])
     *
     (limbs 64 [y0, y1, y2, y3]))
    (limbs 64 [m0, m1, m2, m3])
&&
  true
}
