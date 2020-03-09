(* ALERT: appears to have an unaccounted carry *)

proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3) =
{
  true
&&
  limbs 64 [a0, a1, a2, a3] <
  limbs 64 [0xa700000000000013@64, 0x6121000000000013@64,
            0xba344d8000000008@64, 0x2523648240000001@64]
}

mov L0x7fffffffd9c0 a0;
mov L0x7fffffffd9c8 a1;
mov L0x7fffffffd9d0 a2;
mov L0x7fffffffd9d8 a3;

(* xor    %r10,%r10                                #! PC = 0x93824992236001 *)
mov r10 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992236004 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9c8; PC = 0x93824992236007 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%rax                                #! PC = 0x93824992236011 *)
adds carry rax rax rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992236014 *)
mov r8 rax;
(* adc    %rdx,%rdx                                #! PC = 0x93824992236017 *)
adcs carry rdx rdx rdx carry;
(* mov    %rdx,%r9                                 #! PC = 0x93824992236020 *)
mov r9 rdx;
(* adc    $0x0,%r10                                #! PC = 0x93824992236023 *)
adc r10 r10 0x0@uint64 carry;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992236027 *)
mov rax L0x7fffffffd9c0;
(* mul    %rax                                     #! PC = 0x93824992236030 *)
mull rdx rax rax rax;
(* mov    %rax,(%rdi)                              #! EA = L0x7fffffffda20; PC = 0x93824992236033 *)
mov L0x7fffffffda20 rax;
(* add    %rdx,%r8                                 #! PC = 0x93824992236036 *)
adds carry r8 r8 rdx;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffda28; PC = 0x93824992236039 *)
mov L0x7fffffffda28 r8;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236043 *)
adcs carry r9 r9 0x0@uint64 carry;
(* ALERT: carry != 0 *)
assert true && carry = 0@1;
assume carry = 0 && true;
(* xor    %rcx,%rcx                                #! PC = 0x93824992236047 *)
mov rcx 0@uint64;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992236050 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9d0; PC = 0x93824992236053 *)
mull rdx rax rax L0x7fffffffd9d0;
(* add    %rax,%rax                                #! PC = 0x93824992236057 *)
adds carry rax rax rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992236060 *)
mov r8 rax;
(* adc    %rdx,%rdx                                #! PC = 0x93824992236063 *)
adcs carry rdx rdx rdx carry;
(* mov    %rdx,%r11                                #! PC = 0x93824992236066 *)
mov r11 rdx;
(* adc    $0x0,%rcx                                #! PC = 0x93824992236069 *)
adc rcx rcx 0x0@uint64 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992236073 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x8(%rsi)                                #! EA = L0x7fffffffd9c8; PC = 0x93824992236077 *)
mull rdx rax rax L0x7fffffffd9c8;
(* add    %rax,%r8                                 #! PC = 0x93824992236081 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r11                                #! PC = 0x93824992236084 *)
adcs carry r11 r11 rdx carry;
(* adc    $0x0,%rcx                                #! PC = 0x93824992236087 *)
adc rcx rcx 0x0@uint64 carry;
(* mov    (%rsi),%rax                              #! EA = L0x7fffffffd9c0; Value = 0x0000004000000000; PC = 0x93824992236091 *)
mov rax L0x7fffffffd9c0;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9d8; PC = 0x93824992236094 *)
mull rdx rax rax L0x7fffffffd9d8;
(* add    %r9,%r8                                  #! PC = 0x93824992236098 *)
adds carry r8 r8 r9;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffda30; PC = 0x93824992236101 *)
mov L0x7fffffffda30 r8;
(* adc    %r10,%r11                                #! PC = 0x93824992236105 *)
adcs carry r11 r11 r10 carry;
(* adc    $0x0,%rcx                                #! PC = 0x93824992236108 *)
adc rcx rcx 0x0@uint64 carry;
(* mov    %rax,%r8                                 #! PC = 0x93824992236112 *)
mov r8 rax;
(* mov    %rdx,%r10                                #! PC = 0x93824992236115 *)
mov r10 rdx;
(* xor    %r9,%r9                                  #! PC = 0x93824992236118 *)
mov r9 0@uint64;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992236121 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9d0; PC = 0x93824992236125 *)
mull rdx rax rax L0x7fffffffd9d0;
(* add    %rax,%r8                                 #! PC = 0x93824992236129 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r10                                #! PC = 0x93824992236132 *)
adcs carry r10 r10 rdx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236135 *)
adc r9 r9 0x0@uint64 carry;
(* add    %r8,%r8                                  #! PC = 0x93824992236139 *)
adds carry r8 r8 r8;
(* adc    %r10,%r10                                #! PC = 0x93824992236142 *)
adcs carry r10 r10 r10 carry;
(* adc    %r9,%r9                                  #! PC = 0x93824992236145 *)
adc r9 r9 r9 carry;
(* mov    0x8(%rsi),%rax                           #! EA = L0x7fffffffd9c8; Value = 0x0000040000000200; PC = 0x93824992236148 *)
mov rax L0x7fffffffd9c8;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9d8; PC = 0x93824992236152 *)
mull rdx rax rax L0x7fffffffd9d8;
(* add    %r11,%r8                                 #! PC = 0x93824992236156 *)
adds carry r8 r8 r11;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffda38; PC = 0x93824992236159 *)
mov L0x7fffffffda38 r8;
(* adc    %rcx,%r10                                #! PC = 0x93824992236163 *)
adcs carry r10 r10 rcx carry;
(* adc    $0x0,%r9                                 #! PC = 0x93824992236166 *)
adc r9 r9 0x0@uint64 carry;
(* xor    %rcx,%rcx                                #! PC = 0x93824992236170 *)
mov rcx 0@uint64;
(* add    %rax,%rax                                #! PC = 0x93824992236173 *)
adds carry rax rax rax;
(* mov    %rax,%r8                                 #! PC = 0x93824992236176 *)
mov r8 rax;
(* adc    %rdx,%rdx                                #! PC = 0x93824992236179 *)
adcs carry rdx rdx rdx carry;
(* mov    %rdx,%r11                                #! PC = 0x93824992236182 *)
mov r11 rdx;
(* adc    $0x0,%rcx                                #! PC = 0x93824992236185 *)
adc rcx rcx 0x0@uint64 carry;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992236189 *)
mov rax L0x7fffffffd9d0;
(* mulq   0x10(%rsi)                               #! EA = L0x7fffffffd9d0; PC = 0x93824992236193 *)
mull rdx rax rax L0x7fffffffd9d0;
(* add    %r10,%r8                                 #! PC = 0x93824992236197 *)
adds carry r8 r8 r10;
(* adc    %r11,%r9                                 #! PC = 0x93824992236200 *)
adcs carry r9 r9 r11 carry;
(* adc    $0x0,%rcx                                #! PC = 0x93824992236203 *)
adc rcx rcx 0x0@uint64 carry;
(* add    %rax,%r8                                 #! PC = 0x93824992236207 *)
adds carry r8 r8 rax;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffda40; PC = 0x93824992236210 *)
mov L0x7fffffffda40 r8;
(* adc    %rdx,%r9                                 #! PC = 0x93824992236214 *)
adcs carry r9 r9 rdx carry;
(* adc    $0x0,%rcx                                #! PC = 0x93824992236217 *)
adc rcx rcx 0x0@uint64 carry;
(* xor    %r11,%r11                                #! PC = 0x93824992236221 *)
mov r11 0@uint64;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x00000000ffffffff; PC = 0x93824992236224 *)
mov rax L0x7fffffffd9d0;
(* mulq   0x18(%rsi)                               #! EA = L0x7fffffffd9d8; PC = 0x93824992236228 *)
mull rdx rax rax L0x7fffffffd9d8;
(* add    %rax,%rax                                #! PC = 0x93824992236232 *)
adds carry rax rax rax;
(* adc    %rdx,%rdx                                #! PC = 0x93824992236235 *)
adcs carry rdx rdx rdx carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992236238 *)
adc r11 r11 0x0@uint64 carry;
(* add    %rax,%r9                                 #! PC = 0x93824992236242 *)
adds carry r9 r9 rax;
(* mov    %r9,0x28(%rdi)                           #! EA = L0x7fffffffda48; PC = 0x93824992236245 *)
mov L0x7fffffffda48 r9;
(* adc    %rdx,%rcx                                #! PC = 0x93824992236249 *)
adcs carry rcx rcx rdx carry;
(* adc    $0x0,%r11                                #! PC = 0x93824992236252 *)
adc r11 r11 0x0@uint64 carry;
(* mov    0x18(%rsi),%rax                          #! EA = L0x7fffffffd9d8; Value = 0x0000000000000000; PC = 0x93824992236256 *)
mov rax L0x7fffffffd9d8;
(* mul    %rax                                     #! PC = 0x93824992236260 *)
mull rdx rax rax rax;
(* add    %rax,%rcx                                #! PC = 0x93824992236263 *)
adds carry rcx rcx rax;
(* mov    %rcx,0x30(%rdi)                          #! EA = L0x7fffffffda50; PC = 0x93824992236266 *)
mov L0x7fffffffda50 rcx;
(* adc    %rdx,%r11                                #! PC = 0x93824992236270 *)
adc r11 r11 rdx carry;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7fffffffda58; PC = 0x93824992236273 *)
mov L0x7fffffffda58 r11;
(* #retq                                           #! PC = 0x93824992236277 *)
#retq                                           #! 0x93824992236277 = 0x93824992236277;

mov r0 L0x7fffffffda20;
mov r1 L0x7fffffffda28;
mov r2 L0x7fffffffda30;
mov r3 L0x7fffffffda38;
mov r4 L0x7fffffffda40;
mov r5 L0x7fffffffda48;
mov r6 L0x7fffffffda50;
mov r8 L0x7fffffffda58;

{
  limbs 64 [r0, r1, r2, r3, r4, r5, r6, r8] =
  limbs 64 [a0, a1, a2, a3] * limbs 64 [a0, a1, a2, a3]
&&
  true
}

