proc main (uint64 x0, uint64 x1, uint64 y0, uint64 y1, uint64 t0, uint64 t1, uint64 t2, uint64 m0, uint64 m1) =
{
    eqmod
      (
        (limbs 64 [x0, x1])
        *
        (limbs 64 [y0, y1])
      )

      (
        (limbs 64 [0, 0,
                   t0, t1, t2])
      )

      (
        (limbs 64 [m0, m1])
      )
  &&
    and [
      (limbs 64 [t0, t1, t2]) <
      (mul (limbs 64 [m0, m1, const 64 0])
             const 192 2),
      t2 < const 64 2,
      eq const 64 1 (umod m0 const 64 2),
      eq
        const 320 0
        (srem
          (sub
             (limbs 64 [const 64 0, const 64 0,
                        t0, t1, t2])
             (mul
                (limbs 64 [x0, x1,
                           const 64 0, const 64 0, const 64 0])
                (limbs 64 [y0, y1,
                           const 64 0, const 64 0, const 64 0])))
          (limbs 64 [m0, m1,
                     const 64 0, const 64 0, const 64 0]))
      ]
}

mov L0x6060c0 m0;
mov L0x6060c8 m1;
mov r9 2@uint64;

mov L0x7fffffffdc00 t0;
mov L0x7fffffffdc08 t1;
mov L0x7fffffffdc10 t2;

(* final reduction *)

clear carry;

(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* xor    %r14,%r14 *)
mov r14 0@uint64;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffdc00 *)
mov rax L0x7fffffffdc00;
(* lea    (%rsp),%rsi                              #! EA = L0x7fffffffdc00 *)
(* NOTE: store address in rsi *)
(* mov rsi (bvConst L0x7fffffffdc00); *)
(* mov    %r9,%r15 *)
mov r15 r9;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060c0 *)
sbbs carry rax rax L0x6060c0 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc60 *)
mov L0x7fffffffdc60 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffdc08 *)
mov rax L0x7fffffffdc08;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* dec    %r15 *)
sub r15 r15 1@uint64;
(* sbb    (%rcx,%r14,8),%rax                       #! EA = L0x6060c8 *)
sbbs carry rax rax L0x6060c8 carry;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc68 *)
mov L0x7fffffffdc68 rax;
(* mov    0x8(%rsi,%r14,8),%rax                    #! EA = L0x7fffffffdc10 *)
mov rax L0x7fffffffdc10;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
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
cmov rax carry L0x7fffffffdc00 L0x7fffffffdc60;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffdc00 *)
mov L0x7fffffffdc00 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc60 *)
mov L0x7fffffffdc60 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x1 *)
mov r14 1@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;
(* mov    (%rsi,%r14,8),%rax                       #! EA = L0x7fffffffdc68 *)
(* NOTE: conditional move *)
(* mov rax L0x7fffffffdc68; *)
cmov rax carry L0x7fffffffdc08 L0x7fffffffdc68;
(* mov    %r14,(%rsp,%r14,8)                       #! EA = L0x7fffffffdc08 *)
mov L0x7fffffffdc08 r14;
(* mov    %rax,(%rdi,%r14,8)                       #! EA = L0x7fffffffdc68 *)
mov L0x7fffffffdc68 rax;
(* lea    0x1(%r14),%r14                           #! EA = L0x2 *)
mov r14 2@uint64;
(* sub    $0x1,%r15 *)
sub r15 r15 1@uint64;

mov z0 L0x7fffffffdc60;
mov z1 L0x7fffffffdc68;

assert
  true &&
  eq
    const 320 0
    (srem
      (sub
        (limbs 64 [const 64 0, const 64 0,
                   t0, t1, t2])
        (limbs 64 [const 64 0, const 64 0,
                   z0, z1, const 64 0]))
      (limbs 64 [m0, m1,
                 const 64 0, const 64 0, const 64 0]));

assume
  eqmod
    (limbs 64 [0, 0, t0, t1, t2])
    (limbs 64 [0, 0, z0, z1])
    (limbs 64 [m0, m1]) &&
  true;

{
    eqmod
      (limbs 64 [0, 0, z0, z1])
      ((limbs 64 [x0, x1])
       *
       (limbs 64 [y0, y1]))
      (limbs 64 [m0, m1])
  &&
    true
}