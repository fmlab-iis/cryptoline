
(* A0 = L0x619010, A1 = L0x619018, A2 = L0x619020, A3 = L0x619028 *)
(* B0 = L0x619040, B1 = L0x619048, B2 = L0x619050, B3 = L0x619058 *)
(* X0 = L0x619070, X1 = L0x619078, X2 = L0x619080, X3 = L0x619088, X4 = L0x619090, X5 = L0x619098, X6 = L0x6190a0, X7 = L0x6190a8 *)

proc main (uint64 L0x619010, uint64 L0x619018, uint64 L0x619020, uint64 L0x619028, uint64 L0x619040, uint64 L0x619048, uint64 L0x619050, uint64 L0x619058) =
{ true }

mov L0x619070 0@uint64;
mov L0x619078 0@uint64;
mov L0x619080 0@uint64;
mov L0x619088 0@uint64;
mov L0x619090 0@uint64;
mov L0x619098 0@uint64;
mov L0x6190a0 0@uint64;
mov L0x6190a8 0@uint64;

(* mov    (%rax,%r11,1),%rcx                       #! EA = L0x619058 *)
mov rcx L0x619058;
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
(* add    %rax,(%rdi)                              #! EA = L0x619088 *)
adds carry L0x619088 rax L0x619088;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
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
(* add    %rax,(%rdi)                              #! EA = L0x619090 *)
adds carry L0x619090 rax L0x619090;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619020 *)
mov rax L0x619020;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619098 *)
adds carry L0x619098 rax L0x619098;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619028 *)
mov rax L0x619028;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x6190a0 *)
adds carry L0x6190a0 rax L0x6190a0;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* add    %rax,(%rdi)                              #! EA = L0x6190a8 *)
adds carry L0x6190a8 rax L0x6190a8;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    (%rax,%r11,1),%rcx                       #! EA = L0x619050 *)
mov rcx L0x619050;
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
(* add    %rax,(%rdi)                              #! EA = L0x619080 *)
adds carry L0x619080 rax L0x619080;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
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
(* add    %rax,(%rdi)                              #! EA = L0x619088 *)
adds carry L0x619088 rax L0x619088;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619020 *)
mov rax L0x619020;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619090 *)
adds carry L0x619090 rax L0x619090;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619028 *)
mov rax L0x619028;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619098 *)
adds carry L0x619098 rax L0x619098;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* add    %rax,(%rdi)                              #! EA = L0x6190a0 *)
adds carry L0x6190a0 rax L0x6190a0;
(* assume eq carry 1 && eq  carry const 1 1 *)
assume eq carry 1 && eq  carry const 1 1;
(* mov rax carry *)
mov rax carry;
vpc uint64 rax rax;
(* add    %rax,(%rdi)                              #! EA = L0x6190a8 *)
adds carry L0x6190a8 rax L0x6190a8;
(* assume eq carry 0 && eq  carry const 1 0 *)
assume eq carry 0 && eq  carry const 1 0;
(* mov    (%rax,%r11,1),%rcx                       #! EA = L0x619048 *)
mov rcx L0x619048;
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
(* add    %rax,(%rdi)                              #! EA = L0x619078 *)
adds carry L0x619078 rax L0x619078;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
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
(* add    %rax,(%rdi)                              #! EA = L0x619080 *)
adds carry L0x619080 rax L0x619080;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619020 *)
mov rax L0x619020;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619088 *)
adds carry L0x619088 rax L0x619088;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619028 *)
mov rax L0x619028;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619090 *)
adds carry L0x619090 rax L0x619090;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* add    %rax,(%rdi)                              #! EA = L0x619098 *)
adds carry L0x619098 rax L0x619098;
(* assume eq carry 1 && eq  carry const 1 1 *)
assume eq carry 1 && eq  carry const 1 1;
(* mov rax carry *)
mov rax carry;
vpc uint64 rax rax;
(* add    %rax,(%rdi)                              #! EA = L0x6190a0 *)
adds carry L0x6190a0 rax L0x6190a0;
(* assume eq carry 0 && eq  carry const 1 0 *)
assume eq carry 0 && eq  carry const 1 0;
(* mov    (%rax,%r11,1),%rcx                       #! EA = L0x619040 *)
mov rcx L0x619040;
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
(* add    %rax,(%rdi)                              #! EA = L0x619070 *)
adds carry L0x619070 rax L0x619070;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
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
(* add    %rax,(%rdi)                              #! EA = L0x619078 *)
adds carry L0x619078 rax L0x619078;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619020 *)
mov rax L0x619020;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619080 *)
adds carry L0x619080 rax L0x619080;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* mov    %rax,%rcx *)
mov rcx rax;
(* xor    %r8,%r8 *)
mov r8 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x619028 *)
mov rax L0x619028;
(* mul    %rbx *)
mull rdx rax rbx rax;
(* add    %rcx,%rax *)
adds carry rax rcx rax;
(* mov    %r8,%rcx *)
mov rcx r8;
(* adc    $0x0,%rdx *)
adc rdx 0@uint64 rdx carry;
(* add    %rax,(%rdi)                              #! EA = L0x619088 *)
adds carry L0x619088 rax L0x619088;
(* adc    %rdx,%rcx *)
adcs carry rcx rdx rcx carry;
(* assert true && eq  carry const 1 0 *)
assert true && eq  carry const 1 0;
(* assume eq carry 0 && true *)
assume eq carry 0 && true;
(* mov    %rcx,%rax *)
mov rax rcx;
(* add    %rax,(%rdi)                              #! EA = L0x619090 *)
adds carry L0x619090 rax L0x619090;
(* assume eq carry 1 && eq  carry const 1 1 *)
assume eq carry 1 && eq  carry const 1 1;
(* mov rax carry *)
mov rax carry;
vpc uint64 rax rax;
(* add    %rax,(%rdi)                              #! EA = L0x619098 *)
adds carry L0x619098 rax L0x619098;
(* assume eq carry 1 && eq  carry const 1 1 *)
assume eq carry 1 && eq  carry const 1 1;
(* mov rax carry *)
mov rax carry;
vpc uint64 rax rax;
(* add    %rax,(%rdi)                              #! EA = L0x6190a0 *)
adds carry L0x6190a0 rax L0x6190a0;
(* assume eq carry 1 && eq  carry const 1 1 *)
assume eq carry 1 && eq  carry const 1 1;
(* mov rax carry *)
mov rax carry;
vpc uint64 rax rax;
(* add    %rax,(%rdi)                              #! EA = L0x6190a8 *)
adds carry L0x6190a8 rax L0x6190a8;
(* assume eq carry 0 && eq  carry const 1 0 *)
assume eq carry 0 && eq  carry const 1 0;

{
  eq (mul
          (limbs 64 [L0x619010, L0x619018, L0x619020, L0x619028])
          (limbs 64 [L0x619040, L0x619048, L0x619050, L0x619058]))
        (limbs 64 [L0x619070, L0x619078, L0x619080, L0x619088, L0x619090, L0x619098, L0x6190a0, L0x6190a8])
&&
  true
}
