(*
This file corresponds to the amd64 assembly implementation of p256Mul in golang.

===== System Information =====
Machine: quine
Operating System: Linux quine 4.4.0-119-generic #143-Ubuntu SMP Mon Apr 2 16:08:24 UTC 2018 x86_64
CPU Model: Intel(R) Xeon(R) CPU X5690 @ 3.47GHz
Memory: 132023988 kB
Singular: path=/usr/local/bin/Singular, version=Singular for x86_64-Linux version 4.1.0 (4102, 64 bit) May 17 2017 13:49:11 #UNKNOWN_GIT_VERSION
Boolector: path=/home/mht208/.local/bin/boolector, version=2.4.1
Z3: unavailable
===== Verification =====
Arguments: -v -btor -isafety -no_carry_constraint -vo appearing -qfbv_args "-SE minisat" p256Mul.cl
Parsing Cryptoline file:                [OK]            0.005051 seconds
Checking well-formedness:               [OK]            0.000433 seconds
Transforming to SSA form:               [OK]            0.001206 seconds
Verifying program safety:               [OK]            4.317797 seconds
Verifying assertions:                   [OK]            26.090592 seconds
Verifying range specification:          [OK]            0.774510 seconds
Verifying algebraic specification:      [OK]            0.130877 seconds
Verification result:                    [OK]            31.320878 seconds
*)

proc main (uint64 L0xc82004d958, uint64 L0xc82004d970, uint64 L0xc82004d988,
           uint64 L0xc82006e1c0, uint64 L0xc82006e1c8, uint64 L0xc82006e1d0, uint64 L0xc82006e1d8,
           uint64 L0xc820013480, uint64 L0xc820013488, uint64 L0xc820013490, uint64 L0xc820013498) =
{
  true
  &&
  true
}

(* mov    0x8(%rsp),%rdi                           #! EA = L0xc82004d958 *)
mov rdi L0xc82004d958;
(* mov    0x20(%rsp),%rsi                          #! EA = L0xc82004d970 *)
mov rsi L0xc82004d970;
(* mov    0x38(%rsp),%rcx                          #! EA = L0xc82004d988 *)
mov rcx L0xc82004d988;
(* mov    (%rcx),%r14                              #! EA = L0xc82006e1c0 *)
mov r14 L0xc82006e1c0;
(* mov    (%rsi),%rax                              #! EA = L0xc820013480 *)
mov rax L0xc820013480;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* mov    %rax,%r8 *)
mov r8 rax;
(* mov    %rdx,%r9 *)
mov r9 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc820013488 *)
mov rax L0xc820013488;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r10 *)
mov r10 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc820013490 *)
mov rax L0xc820013490;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r11 *)
mov r11 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc820013498 *)
mov rax L0xc820013498;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r12 *)
mov r12 rdx;
(* xor    %r13,%r13 *)
mov r13 0@uint64;
(* mov    %r8,%rax *)
mov rax r8;
(* mov    %r8,%r15 *)
(*mov r15 r8;*)
(* shl    $0x20,%r8 *)
(*shl r8 r8 32;*)
(* mulq   0x109d63(%rip)        # 0x5993b8 <p256const1>#! EA = L0x5993b8 *)
mull rdx rax 0xffffffff00000001@uint64 rax;
(* shr    $0x20,%r15 *)
(*split r15 tmp r15 32;*)
(** NOTE: merge mov    %r8,%r15; shl    $0x20,%r8; shr    $0x20,%r15 **)
split r15 r8 r8 32;
shl r8 r8 32;
(* add    %r8,%r9 *)
adds carry r9 r8 r9;
(* adc    %r15,%r10 *)
adcs carry r10 r15 r10 carry;
(* adc    %rax,%r11 *)
adcs carry r11 rax r11 carry;
(* adc    %rdx,%r12 *)
adcs carry r12 rdx r12 carry;
(* adc    $0x0,%r13 *)
adc r13 r13 0@uint64 carry;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    0x8(%rcx),%r14                           #! EA = L0xc82006e1c8 *)
mov r14 L0xc82006e1c8;
(* mov    (%rsi),%rax                              #! EA = L0xc820013480 *)
mov rax L0xc820013480;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r9 *)
adds carry r9 rax r9;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc820013488 *)
mov rax L0xc820013488;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r10 *)
adds carry r10 r15 r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc820013490 *)
mov rax L0xc820013490;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r11 *)
adds carry r11 r15 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc820013498 *)
mov rax L0xc820013498;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r12 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    %rdx,%r13 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* mov    %r9,%rax *)
mov rax r9;
(* mov    %r9,%r15 *)
(*mov r15 r9;*)
(* shl    $0x20,%r9 *)
(*shl r9 r9 32;*)
(* mulq   0x109cdf(%rip)        # 0x5993b8 <p256const1>#! EA = L0x5993b8 *)
mull rdx rax 0xffffffff00000001@uint64 rax;
(* shr    $0x20,%r15 *)
(*split r15 tmp r15 32;*)
(** NOTE: merge mov    %r9,%r15; shl    $0x20,%r9; shr    $0x20,%r15 **)
split r15 r9 r9 32;
shl r9 r9 32;
(* add    %r9,%r10 *)
adds carry r10 r9 r10;
(* adc    %r15,%r11 *)
adcs carry r11 r15 r11 carry;
(* adc    %rax,%r12 *)
adcs carry r12 rax r12 carry;
(* adc    %rdx,%r13 *)
adcs carry r13 rdx r13 carry;
(* adc    $0x0,%r8 *)
adc r8 r8 0@uint64 carry;
(* xor    %r9,%r9 *)
mov r9 0@uint64;
(* mov    0x10(%rcx),%r14                          #! EA = L0xc82006e1d0 *)
mov r14 L0xc82006e1d0;
(* mov    (%rsi),%rax                              #! EA = L0xc820013480 *)
mov rax L0xc820013480;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r10 *)
adds carry r10 rax r10;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc820013488 *)
mov rax L0xc820013488;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r11 *)
adds carry r11 r15 r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc820013490 *)
mov rax L0xc820013490;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r12 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc820013498 *)
mov rax L0xc820013498;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r13 *)
adds carry r13 r15 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* adc    %rdx,%r8 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* mov    %r10,%rax *)
mov rax r10;
(* mov    %r10,%r15 *)
(*mov r15 r10;*)
(* shl    $0x20,%r10 *)
(*shl r10 r10 32;*)
(* mulq   0x109c5b(%rip)        # 0x5993b8 <p256const1>#! EA = L0x5993b8 *)
mull rdx rax 0xffffffff00000001@uint64 rax;
(* shr    $0x20,%r15 *)
(*split r15 tmp r15 32;*)
(** NOTE: merge mov    %r10,%r15; shl    $0x20,%r10; shr    $0x20,%r15 **)
split r15 r10 r10 32;
shl r10 r10 32;
(* add    %r10,%r11 *)
adds carry r11 r10 r11;
(* adc    %r15,%r12 *)
adcs carry r12 r15 r12 carry;
(* adc    %rax,%r13 *)
adcs carry r13 rax r13 carry;
(* adc    %rdx,%r8 *)
adcs carry r8 rdx r8 carry;
(* adc    $0x0,%r9 *)
adc r9 r9 0@uint64 carry;
(* xor    %r10,%r10 *)
mov r10 0@uint64;
(* mov    0x18(%rcx),%r14                          #! EA = L0xc82006e1d8 *)
mov r14 L0xc82006e1d8;
(* mov    (%rsi),%rax                              #! EA = L0xc820013480 *)
mov rax L0xc820013480;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %rax,%r11 *)
adds carry r11 rax r11;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc820013488 *)
mov rax L0xc820013488;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r12 *)
adds carry r12 r15 r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r12 *)
adds carry r12 rax r12;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc820013490 *)
mov rax L0xc820013490;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r13 *)
adds carry r13 r15 r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r13 *)
adds carry r13 rax r13;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* mov    %rdx,%r15 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc820013498 *)
mov rax L0xc820013498;
(* mul    %r14 *)
mull rdx rax r14 rax;
(* add    %r15,%r8 *)
adds carry r8 r15 r8;
(* adc    $0x0,%rdx *)
adc rdx rdx 0@uint64 carry;
(* add    %rax,%r8 *)
adds carry r8 rax r8;
(* adc    %rdx,%r9 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;
(* mov    %r11,%rax *)
mov rax r11;
(* mov    %r11,%r15 *)
(*mov r15 r11;*)
(* shl    $0x20,%r11 *)
(*shl r11 r11 32;*)
(* mulq   0x109bd7(%rip)        # 0x5993b8 <p256const1>#! EA = L0x5993b8 *)
mull rdx rax 0xffffffff00000001@uint64 rax;
(* shr    $0x20,%r15 *)
(*split r15 tmp r15 32;*)
(** NOTE: merge mov    %r11,%r15; shl    $0x20,%r11; shr    $0x20,%r15 **)
split r15 r11 r11 32;
shl r11 r11 32;
(* add    %r11,%r12 *)
adds carry r12 r11 r12;
(* adc    %r15,%r13 *)
adcs carry r13 r15 r13 carry;
(* adc    %rax,%r8 *)
adcs carry r8 rax r8 carry;
(* adc    %rdx,%r9 *)
adcs carry r9 rdx r9 carry;
(* adc    $0x0,%r10 *)
adc r10 r10 0@uint64 carry;

ecut
  eqmod
    (
      (limbs 64 [L0xc82006e1c0, L0xc82006e1c8, L0xc82006e1d0, L0xc82006e1d8])
      *
      (limbs 64 [L0xc820013480, L0xc820013488, L0xc820013490, L0xc820013498])
    )
    (
      (limbs 64 [0, 0, 0, 0,
                 r12, r13, r8, r9,
                 r10])
    )
    (
      (limbs 64 [0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF, 0x0000000000000000, 0xFFFFFFFF00000001])
    );
rcut
  and [
    r10 < const 64 2,
    (
      (limbs 64 [r12, r13, r8, r9,
                 r10])
    )
    <
    (mul
      const 320 2
      (limbs 64 [const 64 0xFFFFFFFFFFFFFFFF, const 64 0x00000000FFFFFFFF, const 64 0x0000000000000000, const 64 0xFFFFFFFF00000001,
                 const 64 0])
    )
  ];

assume
  true
  &&
  eq
    (srem
      (sub
        (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                   r12, r13, r8, r9,
                   r10])
        (mul
          (limbs 64 [L0xc82006e1c0, L0xc82006e1c8, L0xc82006e1d0, L0xc82006e1d8,
                     const 64 0, const 64 0, const 64 0, const 64 0,
                     const 64 0])
          (limbs 64 [L0xc820013480, L0xc820013488, L0xc820013490, L0xc820013498,
                     const 64 0, const 64 0, const 64 0, const 64 0,
                     const 64 0])
        ))
      (limbs 64 [const 64 0xFFFFFFFFFFFFFFFF, const 64 0x00000000FFFFFFFF, const 64 0x0000000000000000, const 64 0xFFFFFFFF00000001,
                 const 64 0, const 64 0, const 64 0, const 64 0,
                 const 64 0]))
    const 576 0;

mov z0 r12; //
mov z1 r13; //
mov z2 r8; //
mov z3 r9; //
mov z4 r10; //

(* mov    %r12,%rsi *)
mov rsi r12;
(* mov    %r13,%r11 *)
mov r11 r13;
(* mov    %r8,%r14 *)
mov r14 r8;
(* mov    %r9,%r15 *)
mov r15 r9;
(* sub    $0xffffffffffffffff,%r12 *)
subb carry r12 r12 0xffffffffffffffff@uint64;
(* sbb    0x109ba4(%rip),%r13        # 0x5993b0 <p256const0>#! EA = L0x5993b0 *)
sbbs carry r13 r13 0x00000000ffffffff@uint64 carry;
(* sbb    $0x0,%r8 *)
sbbs carry r8 r8 0@uint64 carry;
(* sbb    0x109ba1(%rip),%r9        # 0x5993b8 <p256const1>#! EA = L0x5993b8 *)
sbbs carry r9 r9 0xffffffff00000001@uint64 carry;
(* sbb    $0x0,%r10 *)
sbbs carry r10 r10 0@uint64 carry;
(* cmovb  %rsi,%r12 *)
cmov r12 carry rsi r12;
(* cmovb  %r11,%r13 *)
cmov r13 carry r11 r13;
(* cmovb  %r14,%r8 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9 *)
cmov r9 carry r15 r9;
(* mov    %r12,(%rdi)                              #! EA = L0xc8200be000 *)
mov L0xc8200be000 r12;
(* mov    %r13,0x8(%rdi)                           #! EA = L0xc8200be008 *)
mov L0xc8200be008 r13;
(* mov    %r8,0x10(%rdi)                           #! EA = L0xc8200be010 *)
mov L0xc8200be010 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0xc8200be018 *)
mov L0xc8200be018 r9;

assert
  true
  &&
  eq
    (srem
      (sub
        (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                   z0, z1, z2, z3,
                   z4])
        (limbs 64 [const 64 0, const 64 0, const 64 0, const 64 0,
                   L0xc8200be000, L0xc8200be008, L0xc8200be010, L0xc8200be018,
                   const 64 0]))
      (limbs 64 [const 64 0xFFFFFFFFFFFFFFFF, const 64 0x00000000FFFFFFFF, const 64 0x0000000000000000, const 64 0xFFFFFFFF00000001,
                 const 64 0, const 64 0, const 64 0, const 64 0,
                 const 64 0]))
    const 576 0;

ecut
  eqmod
    (
      (limbs 64 [L0xc82006e1c0, L0xc82006e1c8, L0xc82006e1d0, L0xc82006e1d8])
      *
      (limbs 64 [L0xc820013480, L0xc820013488, L0xc820013490, L0xc820013498])
    )
    (
      (limbs 64 [0, 0, 0, 0,
                 z0, z1, z2, z3,
                 z4])
    )
    (
      (limbs 64 [0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF, 0x0000000000000000, 0xFFFFFFFF00000001])
    );

assume
  eqmod
    (limbs 64 [0, 0, 0, 0,
               z0, z1, z2, z3,
               z4])
    (limbs 64 [0, 0, 0, 0,
               L0xc8200be000, L0xc8200be008, L0xc8200be010, L0xc8200be018])
    (
      (limbs 64 [0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF, 0x0000000000000000, 0xFFFFFFFF00000001])
    )
  &&
  true;

{
  eqmod
    (
      (limbs 64 [L0xc82006e1c0, L0xc82006e1c8, L0xc82006e1d0, L0xc82006e1d8])
      *
      (limbs 64 [L0xc820013480, L0xc820013488, L0xc820013490, L0xc820013498])
    )
    (
      (limbs 64 [0, 0, 0, 0,
                 L0xc8200be000, L0xc8200be008, L0xc8200be010, L0xc8200be018])
    )
    (
      (limbs 64 [0xFFFFFFFFFFFFFFFF, 0x00000000FFFFFFFF, 0x0000000000000000, 0xFFFFFFFF00000001])
    )
  &&
  true
}
