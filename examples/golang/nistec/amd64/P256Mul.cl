(* quine: $ cv -v -isafety P256Mul.cl
Parsing CryptoLine file:    [OK]    0.004327 seconds
Checking well-formedness:   [OK]    0.000635 seconds
Transforming to SSA form:   [OK]    0.000778 seconds
Normalizing specification:    [OK]    0.000449 seconds
Rewriting assignments:      [OK]    0.000339 seconds
Verifying program safety:   
   Cut 0
       Round 1 (4 safety conditions, timeout = 300 seconds)
     Safety condition #0  [OK]
     Safety condition #1  [OK]
     Safety condition #2  [OK]
     Safety condition #3  [OK]
   Overall      [OK]    0.159037 seconds
Verifying range assertions:   [OK]    6.340415 seconds
Verifying range specification:    [OK]    1.327432 seconds
Rewriting value-preserved casting:  [OK]    0.000105 seconds
Verifying algebraic assertions:   [OK]    0.088744 seconds
Verifying algebraic specification:  [OK]    0.160404 seconds
Verification result:      [OK]    8.084298 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3,
           uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  and [ m0 = 0xffffffffffffffff, m1 = 0x00000000ffffffff,
        m2 = 0x0000000000000000, m3 = 0xffffffff00000001
      ]
  &&
  and [ m0 = 0xffffffffffffffff@64, m1 = 0x00000000ffffffff@64,
        m2 = 0x0000000000000000@64, m3 = 0xffffffff00000001@64,
        ulimbs 64 [a0, a1, a2, a3] <u ulimbs 64 [m0, m1, m2, m3],
        ulimbs 64 [b0, b1, b2, b3] <u ulimbs 64 [m0, m1, m2, m3]
      ]
}

mov L0xc00006ff40 0x000000c00001a2e0@uint64;
mov L0xc00006ff48 0x000000c00001a2a0@uint64;
mov L0xc00006ff50 0x000000c00001a2c0@uint64;

mov L0xc00001a2a0 a0;
mov L0xc00001a2a8 a1;
mov L0xc00001a2b0 a2;
mov L0xc00001a2b8 a3;

mov L0xc00001a2c0 b0;
mov L0xc00001a2c8 b1;
mov L0xc00001a2d0 b2;
mov L0xc00001a2d8 b3;

mov L0x4befe0 m1;
mov L0x4befe8 m3;

(* go_testing_env/nistec.P256Mul: *)
#go_testing_env/nistec.P256Mul:;
(* #! -> SP = 0xc00006ff38 *)
#! 0xc00006ff38 = 0xc00006ff38;
(* mov    0x8(%rsp),%rdi                           #! EA = L0xc00006ff40; Value = 0x000000c00001a2e0; PC = 0x47c920 *)
mov rdi L0xc00006ff40;
(* mov    0x10(%rsp),%rsi                          #! EA = L0xc00006ff48; Value = 0x000000c00001a2a0; PC = 0x47c925 *)
mov rsi L0xc00006ff48;
(* mov    0x18(%rsp),%rcx                          #! EA = L0xc00006ff50; Value = 0x000000c00001a2c0; PC = 0x47c92a *)
mov rcx L0xc00006ff50;
(* mov    (%rcx),%r14                              #! EA = L0xc00001a2c0; Value = 0x0000000000000000; PC = 0x47c92f *)
mov r14 L0xc00001a2c0;
(* mov    (%rsi),%rax                              #! EA = L0xc00001a2a0; Value = 0x0000000000000000; PC = 0x47c932 *)
mov rax L0xc00001a2a0;
(* mul    %r14                                     #! PC = 0x47c935 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* mov    %rax,%r8                                 #! PC = 0x47c938 *)
mov r8 rax;
(* mov    %rdx,%r9                                 #! PC = 0x47c93b *)
mov r9 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47c93e *)
mov rax L0xc00001a2a8;
(* mul    %r14                                     #! PC = 0x47c942 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r9                                 #! PC = 0x47c945 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c948 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r10                                #! PC = 0x47c94c *)
mov r10 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47c94f *)
mov rax L0xc00001a2b0;
(* mul    %r14                                     #! PC = 0x47c953 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r10                                #! PC = 0x47c956 *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c959 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r11                                #! PC = 0x47c95d *)
mov r11 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47c960 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47c964 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r11                                #! PC = 0x47c967 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c96a *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r12                                #! PC = 0x47c96e *)
mov r12 rdx;
(* xor    %r13,%r13                                #! PC = 0x47c971 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mov    %r8,%rax                                 #! PC = 0x47c974 *)
mov rax r8;
(* mov    %r8,%r15                                 #! PC = 0x47c977 *)
mov r15 r8;
(* shl    $0x20,%r8                                #! PC = 0x47c97a *)
split ddc r8 r8 32;
shl r8 r8 32;
(* mulq   0x42663(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47c97e *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47c985 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r8,%r9                                  #! PC = 0x47c989 *)
adds carry r9 r9 r8;
(* adc    %r15,%r10                                #! PC = 0x47c98c *)
adcs carry r10 r10 r15 carry;
(* adc    %rax,%r11                                #! PC = 0x47c98f *)
adcs carry r11 r11 rax carry;
(* adc    %rdx,%r12                                #! PC = 0x47c992 *)
adcs carry r12 r12 rdx carry;
(* adc    $0x0,%r13                                #! PC = 0x47c995 *)
adcs carry r13 r13 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r8,%r8                                  #! PC = 0x47c999 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mov    0x8(%rcx),%r14                           #! EA = L0xc00001a2c8; Value = 0x0000000000000000; PC = 0x47c99c *)
mov r14 L0xc00001a2c8;
(* mov    (%rsi),%rax                              #! EA = L0xc00001a2a0; Value = 0x0000000000000000; PC = 0x47c9a0 *)
mov rax L0xc00001a2a0;
(* mul    %r14                                     #! PC = 0x47c9a3 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r9                                 #! PC = 0x47c9a6 *)
adds carry r9 r9 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c9a9 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47c9ad *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47c9b0 *)
mov rax L0xc00001a2a8;
(* mul    %r14                                     #! PC = 0x47c9b4 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r10                                #! PC = 0x47c9b7 *)
adds carry r10 r10 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47c9ba *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r10                                #! PC = 0x47c9be *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c9c1 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47c9c5 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47c9c8 *)
mov rax L0xc00001a2b0;
(* mul    %r14                                     #! PC = 0x47c9cc *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r11                                #! PC = 0x47c9cf *)
adds carry r11 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47c9d2 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r11                                #! PC = 0x47c9d6 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47c9d9 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47c9dd *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47c9e0 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47c9e4 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r12                                #! PC = 0x47c9e7 *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47c9ea *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r12                                #! PC = 0x47c9ee *)
adds carry r12 r12 rax;
(* adc    %rdx,%r13                                #! PC = 0x47c9f1 *)
adcs carry r13 r13 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x47c9f4 *)
adcs carry r8 r8 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %r9,%rax                                 #! PC = 0x47c9f8 *)
mov rax r9;
(* mov    %r9,%r15                                 #! PC = 0x47c9fb *)
mov r15 r9;
(* shl    $0x20,%r9                                #! PC = 0x47c9fe *)
split ddc r9 r9 32;
shl r9 r9 32;
(* mulq   0x425df(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47ca02 *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47ca09 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r9,%r10                                 #! PC = 0x47ca0d *)
adds carry r10 r10 r9;
(* adc    %r15,%r11                                #! PC = 0x47ca10 *)
adcs carry r11 r11 r15 carry;
(* adc    %rax,%r12                                #! PC = 0x47ca13 *)
adcs carry r12 r12 rax carry;
(* adc    %rdx,%r13                                #! PC = 0x47ca16 *)
adcs carry r13 r13 rdx carry;
(* adc    $0x0,%r8                                 #! PC = 0x47ca19 *)
adcs carry r8 r8 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r9,%r9                                  #! PC = 0x47ca1d *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mov    0x10(%rcx),%r14                          #! EA = L0xc00001a2d0; Value = 0x0000000000000000; PC = 0x47ca20 *)
mov r14 L0xc00001a2d0;
(* mov    (%rsi),%rax                              #! EA = L0xc00001a2a0; Value = 0x0000000000000000; PC = 0x47ca24 *)
mov rax L0xc00001a2a0;
(* mul    %r14                                     #! PC = 0x47ca27 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r10                                #! PC = 0x47ca2a *)
adds carry r10 r10 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47ca2d *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47ca31 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47ca34 *)
mov rax L0xc00001a2a8;
(* mul    %r14                                     #! PC = 0x47ca38 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r11                                #! PC = 0x47ca3b *)
adds carry r11 r11 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47ca3e *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r11                                #! PC = 0x47ca42 *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47ca45 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47ca49 *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47ca4c *)
mov rax L0xc00001a2b0;
(* mul    %r14                                     #! PC = 0x47ca50 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r12                                #! PC = 0x47ca53 *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47ca56 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r12                                #! PC = 0x47ca5a *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47ca5d *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47ca61 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47ca64 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47ca68 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r13                                #! PC = 0x47ca6b *)
adds carry r13 r13 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47ca6e *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r13                                #! PC = 0x47ca72 *)
adds carry r13 r13 rax;
(* adc    %rdx,%r8                                 #! PC = 0x47ca75 *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x47ca78 *)
adcs carry r9 r9 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %r10,%rax                                #! PC = 0x47ca7c *)
mov rax r10;
(* mov    %r10,%r15                                #! PC = 0x47ca7f *)
mov r15 r10;
(* shl    $0x20,%r10                               #! PC = 0x47ca82 *)
split ddc r10 r10 32;
shl r10 r10 32;
(* mulq   0x4255b(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47ca86 *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47ca8d *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r10,%r11                                #! PC = 0x47ca91 *)
adds carry r11 r11 r10;
(* adc    %r15,%r12                                #! PC = 0x47ca94 *)
adcs carry r12 r12 r15 carry;
(* adc    %rax,%r13                                #! PC = 0x47ca97 *)
adcs carry r13 r13 rax carry;
(* adc    %rdx,%r8                                 #! PC = 0x47ca9a *)
adcs carry r8 r8 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x47ca9d *)
adcs carry r9 r9 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* xor    %r10,%r10                                #! PC = 0x47caa1 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mov    0x18(%rcx),%r14                          #! EA = L0xc00001a2d8; Value = 0x0000000000000000; PC = 0x47caa4 *)
mov r14 L0xc00001a2d8;
(* mov    (%rsi),%rax                              #! EA = L0xc00001a2a0; Value = 0x0000000000000000; PC = 0x47caa8 *)
mov rax L0xc00001a2a0;
(* mul    %r14                                     #! PC = 0x47caab *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %rax,%r11                                #! PC = 0x47caae *)
adds carry r11 r11 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47cab1 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47cab5 *)
mov r15 rdx;
(* mov    0x8(%rsi),%rax                           #! EA = L0xc00001a2a8; Value = 0x0000000000000000; PC = 0x47cab8 *)
mov rax L0xc00001a2a8;
(* mul    %r14                                     #! PC = 0x47cabc *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r12                                #! PC = 0x47cabf *)
adds carry r12 r12 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47cac2 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r12                                #! PC = 0x47cac6 *)
adds carry r12 r12 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47cac9 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47cacd *)
mov r15 rdx;
(* mov    0x10(%rsi),%rax                          #! EA = L0xc00001a2b0; Value = 0x0000000000000000; PC = 0x47cad0 *)
mov rax L0xc00001a2b0;
(* mul    %r14                                     #! PC = 0x47cad4 *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r13                                #! PC = 0x47cad7 *)
adds carry r13 r13 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47cada *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r13                                #! PC = 0x47cade *)
adds carry r13 r13 rax;
(* adc    $0x0,%rdx                                #! PC = 0x47cae1 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %rdx,%r15                                #! PC = 0x47cae5 *)
mov r15 rdx;
(* mov    0x18(%rsi),%rax                          #! EA = L0xc00001a2b8; Value = 0x0000000000000000; PC = 0x47cae8 *)
mov rax L0xc00001a2b8;
(* mul    %r14                                     #! PC = 0x47caec *)
mull rdx rax rax r14;
subb tmp dontcare rdx 1@uint64;
not carry@bit tmp;
not overflow@bit tmp;
(* add    %r15,%r8                                 #! PC = 0x47caef *)
adds carry r8 r8 r15;
(* adc    $0x0,%rdx                                #! PC = 0x47caf2 *)
adcs carry rdx rdx 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* add    %rax,%r8                                 #! PC = 0x47caf6 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x47caf9 *)
adcs carry r9 r9 rdx carry;

ghost carryo1@bit:
      carryo1 = carry && carryo1 = carry;

(* adc    $0x0,%r10                                #! PC = 0x47cafc *)
adcs carry r10 r10 0x0@uint64 carry;

(* Note: No Carry *)
assert true && carry = 0@1;
assume carry=0 && true;

(* mov    %r11,%rax                                #! PC = 0x47cb00 *)
mov rax r11;
(* mov    %r11,%r15                                #! PC = 0x47cb03 *)
mov r15 r11;
(* shl    $0x20,%r11                               #! PC = 0x47cb06 *)
split ddc r11 r11 32;
shl r11 r11 32;
(* mulq   0x424d7(%rip)        # 0x4befe8 <p256const1>#! EA = L0x4befe8; PC = 0x47cb0a *)
mull rdx rax rax L0x4befe8;
(* shr    $0x20,%r15                               #! PC = 0x47cb11 *)
split r15 ddcc r15 32;

assert true && ddc = r15;
assume ddc = r15 && true;

(* add    %r11,%r12                                #! PC = 0x47cb15 *)
adds carry r12 r12 r11;
(* adc    %r15,%r13                                #! PC = 0x47cb18 *)
adcs carry r13 r13 r15 carry;
(* adc    %rax,%r8                                 #! PC = 0x47cb1b *)
adcs carry r8 r8 rax carry;
(* adc    %rdx,%r9                                 #! PC = 0x47cb1e *)
adcs carry r9 r9 rdx carry;

ghost carryo2@bit:
      carryo2 = carry && carryo2 = carry;

(* adc    $0x0,%r10                                #! PC = 0x47cb21 *)
adcs carry r10 r10 0x0@uint64 carry;
(* mov    %r12,%rsi                                #! PC = 0x47cb25 *)
mov rsi r12;
(* mov    %r13,%r11                                #! PC = 0x47cb28 *)
mov r11 r13;
(* mov    %r8,%r14                                 #! PC = 0x47cb2b *)
mov r14 r8;
(* mov    %r9,%r15                                 #! PC = 0x47cb2e *)
mov r15 r9;
(* sub    $0xffffffffffffffff,%r12                 #! PC = 0x47cb31 *)
subb carry r12 r12 0xffffffffffffffff@uint64;
(* sbb    0x424a4(%rip),%r13        # 0x4befe0 <p256const0>#! EA = L0x4befe0; Value = 0x00000000ffffffff; PC = 0x47cb35 *)
sbbs carry r13 r13 L0x4befe0 carry;
(* sbb    $0x0,%r8                                 #! PC = 0x47cb3c *)
sbbs carry r8 r8 0x0@uint64 carry;
(* sbb    0x424a1(%rip),%r9        # 0x4befe8 <p256const1>#! EA = L0x4befe8; Value = 0xffffffff00000001; PC = 0x47cb40 *)
sbbs carry r9 r9 L0x4befe8 carry;

ghost carryo3@bit:
      carryo3 = carry && carryo3 = carry;

(* sbb    $0x0,%r10                                #! PC = 0x47cb47 *)
sbbs carry r10 r10 0x0@uint64 carry;

ghost carryo4@bit:
      carryo4 = carry && carryo4 = carry;

(* cmovb  %rsi,%r12                                #! PC = 0x47cb4b *)
cmov r12 carry rsi r12;
(* cmovb  %r11,%r13                                #! PC = 0x47cb4f *)
cmov r13 carry r11 r13;
(* cmovb  %r14,%r8                                 #! PC = 0x47cb53 *)
cmov r8 carry r14 r8;
(* cmovb  %r15,%r9                                 #! PC = 0x47cb57 *)
cmov r9 carry r15 r9;
(* mov    %r12,(%rdi)                              #! EA = L0xc00001a2e0; PC = 0x47cb5b *)
mov L0xc00001a2e0 r12;
(* mov    %r13,0x8(%rdi)                           #! EA = L0xc00001a2e8; PC = 0x47cb5e *)
mov L0xc00001a2e8 r13;
(* mov    %r8,0x10(%rdi)                           #! EA = L0xc00001a2f0; PC = 0x47cb62 *)
mov L0xc00001a2f0 r8;
(* mov    %r9,0x18(%rdi)                           #! EA = L0xc00001a2f8; PC = 0x47cb66 *)
mov L0xc00001a2f8 r9;
(* #! <- SP = 0xc00006ff38 *)
#! 0xc00006ff38 = 0xc00006ff38;
(* #ret                                            #! PC = 0x47cb6a *)
#ret                                            #! 0x47cb6a = 0x47cb6a;

assert true && or [and [carryo3=0@1, carryo1=0@1, carryo2=0@1, carryo4=0@1],
                   and [carryo3=1@1, carryo1=1@1, carryo2=0@1, carryo4=0@1],
                   and [carryo3=1@1, carryo1=0@1, carryo2=1@1, carryo4=0@1],
                   and [carryo3=1@1, carryo1=0@1, carryo2=0@1, carryo4=1@1]];

assume (carryo3 - 0) * (carryo1 - 1) * (carryo2 - 1) * (carryo4 - 1) = 0 && true;
assume (carryo1 - 0) * (carryo2 - 0) = 0 && true;
assume (carryo1 - 0) * (carryo4 - 0) = 0 && true;
assume (carryo2 - 0) * (carryo4 - 0) = 0 && true;

assume (carryo3 - 1) * (carryo1 - 1) = 1 && true;
assume (carryo3 - 1) * (carryo2 - 1) = 1 && true;
assume (carryo3 - 1) * (carryo4 - 1) = 1 && true;

mov c0 L0xc00001a2e0;
mov c1 L0xc00001a2e8;
mov c2 L0xc00001a2f0;
mov c3 L0xc00001a2f8;


{
  eqmod (limbs 64 [0, 0, 0, 0, c0, c1, c2, c3])
        (limbs 64 [a0, a1, a2, a3] * limbs 64 [b0, b1, b2, b3])
        (limbs 64 [m0, m1, m2, m3])
  &&
  limbs 64 [c0, c1, c2, c3] <u limbs 64 [m0, m1, m2, m3]
}

