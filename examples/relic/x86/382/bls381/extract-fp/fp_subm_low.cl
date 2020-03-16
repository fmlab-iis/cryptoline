proc main (uint64 a0, uint64 a1, uint64 a2, uint64 a3, uint64 a4, uint64 a5,
           uint64 b0, uint64 b1, uint64 b2, uint64 b3, uint64 b4, uint64 b5) =
{
  true
&&
  and [
    limbs 64 [a0, a1, a2, a3, a4, a5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64],
    limbs 64 [b0, b1, b2, b3, b4, b5] <
    limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
              0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
              0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
  ]
}

mov L0x7fffffffde40 a0;
mov L0x7fffffffde48 a1;
mov L0x7fffffffde50 a2;
mov L0x7fffffffde58 a3;
mov L0x7fffffffde60 a4;
mov L0x7fffffffde68 a5;

mov L0x7fffffffde10 b0;
mov L0x7fffffffde18 b1;
mov L0x7fffffffde20 b2;
mov L0x7fffffffde28 b3;
mov L0x7fffffffde30 b4;
mov L0x7fffffffde38 b5;

mov L0x405030 0xb9feffffffffaaab@uint64;
mov L0x405038 0x1eabfffeb153ffff@uint64;
mov L0x405040 0x6730d2a0f6b0f624@uint64;
mov L0x405048 0x64774b84f38512bf@uint64;
mov L0x405050 0x4b1ba7b6434bacd7@uint64;
mov L0x405058 0x1a0111ea397fe69a@uint64;

(* xor    %rax,%rax                                #! PC = 0x4199696 *)
mov rax 0@uint64;
(* xor    %rcx,%rcx                                #! PC = 0x4199699 *)
mov rcx 0@uint64;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffde40; Value = 0x00007fffffffde6e; PC = 0x4199702 *)
mov r8 L0x7fffffffde40;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffde10; Value = 0x0000000000000001; PC = 0x4199705 *)
subb carry r8 r8 L0x7fffffffde10;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdde0; PC = 0x4199708 *)
mov L0x7fffffffdde0 r8;
(* mov    0x8(%rsi),%r8                            #! EA = L0x7fffffffde48; Value = 0x0000000000000000; PC = 0x4199711 *)
mov r8 L0x7fffffffde48;
(* sbb    0x8(%rdx),%r8                            #! EA = L0x7fffffffde18; Value = 0x00007fffffffde90; PC = 0x4199715 *)
sbbs carry r8 r8 L0x7fffffffde18 carry;
(* mov    %r8,0x8(%rdi)                            #! EA = L0x7fffffffdde8; PC = 0x4199719 *)
mov L0x7fffffffdde8 r8;
(* mov    0x10(%rsi),%r8                           #! EA = L0x7fffffffde50; Value = 0x0000000000402840; PC = 0x4199723 *)
mov r8 L0x7fffffffde50;
(* sbb    0x10(%rdx),%r8                           #! EA = L0x7fffffffde20; Value = 0x00007ffff7ffe168; PC = 0x4199727 *)
sbbs carry r8 r8 L0x7fffffffde20 carry;
(* mov    %r8,0x10(%rdi)                           #! EA = L0x7fffffffddf0; PC = 0x4199731 *)
mov L0x7fffffffddf0 r8;
(* mov    0x18(%rsi),%r8                           #! EA = L0x7fffffffde58; Value = 0x0000000000401050; PC = 0x4199735 *)
mov r8 L0x7fffffffde58;
(* sbb    0x18(%rdx),%r8                           #! EA = L0x7fffffffde28; Value = 0x0000000000f0b5ff; PC = 0x4199739 *)
sbbs carry r8 r8 L0x7fffffffde28 carry;
(* mov    %r8,0x18(%rdi)                           #! EA = L0x7fffffffddf8; PC = 0x4199743 *)
mov L0x7fffffffddf8 r8;
(* mov    0x20(%rsi),%r8                           #! EA = L0x7fffffffde60; Value = 0x00007fffffffdf50; PC = 0x4199747 *)
mov r8 L0x7fffffffde60;
(* sbb    0x20(%rdx),%r8                           #! EA = L0x7fffffffde30; Value = 0x0000000000000001; PC = 0x4199751 *)
sbbs carry r8 r8 L0x7fffffffde30 carry;
(* mov    %r8,0x20(%rdi)                           #! EA = L0x7fffffffde00; PC = 0x4199755 *)
mov L0x7fffffffde00 r8;
(* mov    0x28(%rsi),%r8                           #! EA = L0x7fffffffde68; Value = 0x0000000000000000; PC = 0x4199759 *)
mov r8 L0x7fffffffde68;
(* sbb    0x28(%rdx),%r8                           #! EA = L0x7fffffffde38; Value = 0x000000000040288d; PC = 0x4199763 *)
sbbs carry r8 r8 L0x7fffffffde38 carry;

/* NOTE: keey carry */
mov carry_1 carry;

(* mov    %r8,0x28(%rdi)                           #! EA = L0x7fffffffde08; PC = 0x4199767 *)
mov L0x7fffffffde08 r8;
(* mov    $0x0,%r8                                 #! PC = 0x4199771 *)
mov r8 0x0@uint64;
(* mov    $0x0,%r9                                 #! PC = 0x4199778 *)
mov r9 0x0@uint64;
(* mov    $0x0,%r10                                #! PC = 0x4199785 *)
mov r10 0x0@uint64;
(* mov    $0x0,%r11                                #! PC = 0x4199792 *)
mov r11 0x0@uint64;
(* cmovb  0x3ab1(%rip),%rax        # 0x405030      #! EA = L0x405030; Value = 0xb9feffffffffaaab; PC = 0x4199799 *)
cmov rax carry L0x405030 rax;
(* cmovb  0x3ab1(%rip),%rcx        # 0x405038      #! EA = L0x405038; Value = 0x1eabfffeb153ffff; PC = 0x4199807 *)
cmov rcx carry L0x405038 rcx;
(* cmovb  0x3ab1(%rip),%r8        # 0x405040       #! EA = L0x405040; Value = 0x6730d2a0f6b0f624; PC = 0x4199815 *)
cmov r8 carry L0x405040 r8;
(* cmovb  0x3ab1(%rip),%r9        # 0x405048       #! EA = L0x405048; Value = 0x64774b84f38512bf; PC = 0x4199823 *)
cmov r9 carry L0x405048 r9;
(* cmovb  0x3ab1(%rip),%r10        # 0x405050      #! EA = L0x405050; Value = 0x4b1ba7b6434bacd7; PC = 0x4199831 *)
cmov r10 carry L0x405050 r10;
(* cmovb  0x3ab1(%rip),%r11        # 0x405058      #! EA = L0x405058; Value = 0x1a0111ea397fe69a; PC = 0x4199839 *)
cmov r11 carry L0x405058 r11;
(* add    %rax,(%rdi)                              #! EA = L0x7fffffffdde0; PC = 0x4199847 *)
adds carry L0x7fffffffdde0 L0x7fffffffdde0 rax;
(* adc    %rcx,0x8(%rdi)                           #! EA = L0x7fffffffdde8; PC = 0x4199850 *)
adcs carry L0x7fffffffdde8 L0x7fffffffdde8 rcx carry;
(* adc    %r8,0x10(%rdi)                           #! EA = L0x7fffffffddf0; PC = 0x4199854 *)
adcs carry L0x7fffffffddf0 L0x7fffffffddf0 r8 carry;
(* adc    %r9,0x18(%rdi)                           #! EA = L0x7fffffffddf8; PC = 0x4199858 *)
adcs carry L0x7fffffffddf8 L0x7fffffffddf8 r9 carry;
(* adc    %r10,0x20(%rdi)                          #! EA = L0x7fffffffde00; PC = 0x4199862 *)
adcs carry L0x7fffffffde00 L0x7fffffffde00 r10 carry;
(* adc    %r11,0x28(%rdi)                          #! EA = L0x7fffffffde08; PC = 0x4199866 *)
adcs carry L0x7fffffffde08 L0x7fffffffde08 r11 carry;

assert true && carry = carry_1;
assume carry = carry_1 && true;

(* #retq                                           #! PC = 0x4199870 *)
/* #retq                                           #! 0x4199870 = 0x4199870; */

mov r0 L0x7fffffffdde0;
mov r1 L0x7fffffffdde8;
mov r2 L0x7fffffffddf0;
mov r3 L0x7fffffffddf8;
mov r4 L0x7fffffffde00;
mov r5 L0x7fffffffde08;

{
  eqmod (limbs 64 [r0, r1, r2, r3, r4, r5])
        (limbs 64 [a0, a1, a2, a3, a4, a5] -
         limbs 64 [b0, b1, b2, b3, b4, b5])
         (limbs 64 [0xb9feffffffffaaab, 0x1eabfffeb153ffff,
         0x6730d2a0f6b0f624, 0x64774b84f38512bf,
         0x4b1ba7b6434bacd7, 0x1a0111ea397fe69a])
  &&
  limbs 64 [r0, r1, r2, r3, r4, r5] <
  limbs 64 [0xb9feffffffffaaab@64, 0x1eabfffeb153ffff@64,
  0x6730d2a0f6b0f624@64, 0x64774b84f38512bf@64,
  0x4b1ba7b6434bacd7@64, 0x1a0111ea397fe69a@64]
}
