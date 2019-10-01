(* L0x619030 = B0, L0x619038 = B1 *)
(* L0x619010 = A0, L0x619018 = A1 *)
(* L0x619050 = X0, L0x619058 = X1, L0x619060 = X2, L0x619068 = X3 *)

proc main (uint64 L0x619010, uint64 L0x619018, uint64 L0x619030, uint64 L0x619038) =
{ true }

mov L0x619050 0@uint64;
mov L0x619058 0@uint64;
mov L0x619060 0@uint64;
mov L0x619068 0@uint64;

(* ********** A0 * B1 + A1 * B1 ********** *)

(* mov    (%rax,%r11,1),%rcx                       #! EA = L0x619038 *)
mov rcx L0x619038;
(* mov    %rcx,%rbx *)
mov rbx rcx;
(* xor    %eax,%eax *)
mov rax 0@uint64;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619010 *)
mov rax L0x619010;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619058 *)
adds carry L0x619058 rax L0x619058;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
assert true && eq  carry const 1 0; //
assume eq carry 0 && true; //
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619018 *)
mov rax L0x619018;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619060 *)
adds carry L0x619060 rax L0x619060;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
assert true && eq  carry const 1 0; //
assume eq carry 0 && true; //
(* mov    %rcx,%rax *)
mov rax rcx;
(* add    %rax,(%rdi)                              #! EA = L0x619068 *)
adds carry L0x619068 rax L0x619068;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;

(* ********** A0 * B0 + A1 * B0 ********** *)

(* mov    (%rax,%r11,1),%rcx                       #! EA = L0x619030 *)
mov rcx L0x619030;
(* mov    %rcx,%rbx *)
mov rbx rcx;
(* xor    %eax,%eax *)
mov rax 0@uint64;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619010 *)
mov rax L0x619010;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619050 *)
adds carry L0x619050 rax L0x619050;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
assert true && eq  carry const 1 0; //
assume eq carry 0 && true; //
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619018 *)
mov rax L0x619018;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619058 *)
adds carry L0x619058 rax L0x619058;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
assert true && eq  carry const 1 0; //
assume eq carry 0 && true; //
(* mov    %rcx,%rax *)
mov rax rcx;
(* add    %rax,(%rdi)                              #! EA = L0x619060 *)
adds carry L0x619060 rax L0x619060;
(* assume eq carry 0 && eq  carry const 1 0 *)
assume eq carry 0 && eq  carry const 1 0;

{
  eq (mul
          (limbs 64 [L0x619010, L0x619018])
          (limbs 64 [L0x619030, L0x619038]))
        (limbs 64 [L0x619050, L0x619058, L0x619060, L0x619068])
&&
  true
}
