(*
const uint64_t p434[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFDC1767AE2FFFFFF, 
                                                     0x7BC65C783158AEA3, 0x6CFC5FD681C52056, 0x0002341F27177344 };
const uint64_t p434p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xFDC1767AE3000000,
                                                     0x7BC65C783158AEA3, 0x6CFC5FD681C52056, 0x0002341f27177344 }; 
*)

const p434_0 = 0xFFFFFFFFFFFFFFFF
const p434_1 = 0xFFFFFFFFFFFFFFFF
const p434_2 = 0xFFFFFFFFFFFFFFFF
const p434_3 = 0xFDC1767AE2FFFFFF
const p434_4 = 0x7BC65C783158AEA3
const p434_5 = 0x6CFC5FD681C52056
const p434_6 = 0x0002341F27177344 

const p434x4_0 = 0xfffffffffffffffc
const p434x4_1 = 0xffffffffffffffff
const p434x4_2 = 0xffffffffffffffff
const p434x4_3 = 0xf705d9eb8bffffff
const p434x4_4 = 0xef1971e0c562ba8f
const p434x4_5 = 0xb3f17f5a07148159
const p434x4_6 = 0x0008d07c9c5dcd11

const p434p1_0 = 0x0000000000000000
const p434p1_1 = 0x0000000000000000
const p434p1_2 = 0x0000000000000000
const p434p1_3 = 0xFDC1767AE3000000
const p434p1_4 = 0x7BC65C783158AEA3
const p434p1_5 = 0x6CFC5FD681C52056
const p434p1_6 = 0x0002341f27177344

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
  ]
}

(* ===== Initialization ===== *)

mov  L0x7fffffffd840 a00;
mov  L0x7fffffffd848 a01;
mov  L0x7fffffffd850 a02;
mov  L0x7fffffffd858 a03;
mov  L0x7fffffffd860 a04;
mov  L0x7fffffffd868 a05;
mov  L0x7fffffffd870 a06;

mov  L0x7fffffffd878 a10;
mov  L0x7fffffffd880 a11;
mov  L0x7fffffffd888 a12;
mov  L0x7fffffffd890 a13;
mov  L0x7fffffffd898 a14;
mov  L0x7fffffffd8a0 a15;
mov  L0x7fffffffd8a8 a16;


mov L0x5555555682e0 $p434x4_0@uint64;
mov L0x5555555682e8 $p434x4_1@uint64;
mov L0x5555555682f8 $p434x4_3@uint64;
mov L0x555555568300 $p434x4_4@uint64;
mov L0x555555568308 $p434x4_5@uint64;
mov L0x555555568310 $p434x4_6@uint64;

mov L0x555555568278 $p434p1_3@uint64;
mov L0x555555568280 $p434p1_4@uint64;
mov L0x555555568288 $p434p1_5@uint64;
mov L0x555555568290 $p434p1_6@uint64;


nondet rdx@uint64;

(* ===== Program ===== *)

(* fp2sqr434_c0_mont: *)
(* #! -> SP = 0x7fffffffd4a8 *)
#! 0x7fffffffd4a8 = 0x7fffffffd4a8;
(* #jmpq   0x5555555639f9 <fp2sqr434_c0_asm>       #! PC = 0x5555555622b4 *)
#jmpq   0x5555555639f9 <fp2sqr434_c0_asm>       #! 0x5555555622b4 = 0x5555555622b4;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd840; Value = 0x051a772902dbc11a; PC = 0x5555555639fb *)
mov r8 L0x7fffffffd840;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd848; Value = 0xc6058d9bc9da4757; PC = 0x5555555639fe *)
mov r9 L0x7fffffffd848;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0x9ba3d6293b29d0c1; PC = 0x555555563a02 *)
mov r10 L0x7fffffffd850;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd858; Value = 0xf13f189562c50d3b; PC = 0x555555563a06 *)
mov r11 L0x7fffffffd858;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd860; Value = 0x287a667aef609ecd; PC = 0x555555563a0a *)
mov r12 L0x7fffffffd860;
(* add    0x38(%rdi),%r8                           #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x555555563a0e *)
adds carry r8 r8 L0x7fffffffd878;
(* adc    0x40(%rdi),%r9                           #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x555555563a14 *)
adcs carry r9 r9 L0x7fffffffd880 carry;
(* adc    0x48(%rdi),%r10                          #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x555555563a18 *)
adcs carry r10 r10 L0x7fffffffd888 carry;
(* adc    0x50(%rdi),%r11                          #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x555555563a1e *)
adcs carry r11 r11 L0x7fffffffd890 carry;
(* adc    0x58(%rdi),%r12                          #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x555555563a22 *)
adcs carry r12 r12 L0x7fffffffd898 carry;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd868; Value = 0x7bed0dc3769a8a0a; PC = 0x555555563a26 *)
mov r13 L0x7fffffffd868;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd870; Value = 0x000172dff850db22; PC = 0x555555563a2a *)
mov r14 L0x7fffffffd870;
(* adc    0x60(%rdi),%r13                          #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x555555563a2e *)
adcs carry r13 r13 L0x7fffffffd8a0 carry;
(* adc    0x68(%rdi),%r14                          #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x555555563a32 *)
adcs carry r14 r14 L0x7fffffffd8a8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,(%rsi)                               #! EA = L0x7fffffffd4b0; PC = 0x555555563a36 *)
mov L0x7fffffffd4b0 r8;
(* mov    %r9,0x8(%rsi)                            #! EA = L0x7fffffffd4b8; PC = 0x555555563a39 *)
mov L0x7fffffffd4b8 r9;
(* mov    %r10,0x10(%rsi)                          #! EA = L0x7fffffffd4c0; PC = 0x555555563a3d *)
mov L0x7fffffffd4c0 r10;
(* mov    %r11,0x18(%rsi)                          #! EA = L0x7fffffffd4c8; PC = 0x555555563a41 *)
mov L0x7fffffffd4c8 r11;
(* mov    %r12,0x20(%rsi)                          #! EA = L0x7fffffffd4d0; PC = 0x555555563a45 *)
mov L0x7fffffffd4d0 r12;
(* mov    %r13,0x28(%rsi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555563a49 *)
mov L0x7fffffffd4d8 r13;
(* mov    %r14,0x30(%rsi)                          #! EA = L0x7fffffffd4e0; PC = 0x555555563a4d *)
mov L0x7fffffffd4e0 r14;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffd840; Value = 0x051a772902dbc11a; PC = 0x555555563a51 *)
mov rax L0x7fffffffd840;
(* mov    0x8(%rdi),%r10                           #! EA = L0x7fffffffd848; Value = 0xc6058d9bc9da4757; PC = 0x555555563a54 *)
mov r10 L0x7fffffffd848;
(* mov    0x10(%rdi),%r12                          #! EA = L0x7fffffffd850; Value = 0x9ba3d6293b29d0c1; PC = 0x555555563a58 *)
mov r12 L0x7fffffffd850;
(* mov    0x18(%rdi),%r13                          #! EA = L0x7fffffffd858; Value = 0xf13f189562c50d3b; PC = 0x555555563a5c *)
mov r13 L0x7fffffffd858;
(* mov    0x20(%rdi),%r14                          #! EA = L0x7fffffffd860; Value = 0x287a667aef609ecd; PC = 0x555555563a60 *)
mov r14 L0x7fffffffd860;
(* sub    0x38(%rdi),%rax                          #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x555555563a64 *)
subb carry rax rax L0x7fffffffd878;
(* sbb    0x40(%rdi),%r10                          #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x555555563a68 *)
sbbs carry r10 r10 L0x7fffffffd880 carry;
(* sbb    0x48(%rdi),%r12                          #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x555555563a6c *)
sbbs carry r12 r12 L0x7fffffffd888 carry;
(* sbb    0x50(%rdi),%r13                          #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x555555563a72 *)
sbbs carry r13 r13 L0x7fffffffd890 carry;
(* sbb    0x58(%rdi),%r14                          #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x555555563a76 *)
sbbs carry r14 r14 L0x7fffffffd898 carry;
(* mov    0x28(%rdi),%r15                          #! EA = L0x7fffffffd868; Value = 0x7bed0dc3769a8a0a; PC = 0x555555563a7a *)
mov r15 L0x7fffffffd868;
(* mov    0x30(%rdi),%rcx                          #! EA = L0x7fffffffd870; Value = 0x000172dff850db22; PC = 0x555555563a7e *)
mov rcx L0x7fffffffd870;
(* sbb    0x60(%rdi),%r15                          #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x555555563a82 *)
sbbs carry r15 r15 L0x7fffffffd8a0 carry;
(* sbb    0x68(%rdi),%rcx                          #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x555555563a86 *)
sbbs carry rcx rcx L0x7fffffffd8a8 carry;
ghost borrow@uint1 : borrow = carry && borrow = carry;
(* add    0x484f(%rip),%rax        # 0x5555555682e0 <p434x4>#! EA = L0x5555555682e0; Value = 0xfffffffffffffffc; PC = 0x555555563a8a *)
adds carry rax rax L0x5555555682e0;
(* mov    0x4850(%rip),%rdx        # 0x5555555682e8 <p434x4+8>#! EA = L0x5555555682e8; Value = 0xffffffffffffffff; PC = 0x555555563a91 *)
mov rdx L0x5555555682e8;
(* adc    %rdx,%r10                                #! PC = 0x555555563a98 *)
adcs carry r10 r10 rdx@uint64 carry;
(* adc    %rdx,%r12                                #! PC = 0x555555563a9b *)
adcs carry r12 r12 rdx@uint64 carry;
(* adc    0x4853(%rip),%r13        # 0x5555555682f8 <p434x4+24>#! EA = L0x5555555682f8; Value = 0xf705d9eb8bffffff; PC = 0x555555563a9e *)
adcs carry r13 r13 L0x5555555682f8 carry;
(* adc    0x4854(%rip),%r14        # 0x555555568300 <p434x4+32>#! EA = L0x555555568300; Value = 0xef1971e0c562ba8f; PC = 0x555555563aa5 *)
adcs carry r14 r14 L0x555555568300 carry;
(* adc    0x4855(%rip),%r15        # 0x555555568308 <p434x4+40>#! EA = L0x555555568308; Value = 0xb3f17f5a07148159; PC = 0x555555563aac *)
adcs carry r15 r15 L0x555555568308 carry;
(* adc    0x4856(%rip),%rcx        # 0x555555568310 <p434x4+48>#! EA = L0x555555568310; Value = 0x0008d07c9c5dcd11; PC = 0x555555563ab3 *)
adcs carry rcx rcx L0x555555568310 carry;
assert true && borrow = carry;
assume borrow = carry && true;
(* mov    %rax,0x38(%rsi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555563aba *)
mov L0x7fffffffd4e8 rax;
(* mov    %r8,%rdx                                 #! PC = 0x555555563abe *)
mov rdx r8;
(* mulx   %rax,%r8,%r9                             #! PC = 0x555555563ac1 *)
mull r9 r8 rax rdx;
(* mov    %r10,0x40(%rsi)                          #! EA = L0x7fffffffd4f0; PC = 0x555555563ac6 *)
mov L0x7fffffffd4f0 r10;
(* xor    %rax,%rax                                #! PC = 0x555555563aca *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   %r10,%r11,%r10                           #! PC = 0x555555563ace *)
mull r10 r11 r10 rdx;
(* mov    %r12,0x48(%rsi)                          #! EA = L0x7fffffffd4f8; PC = 0x555555563ad3 *)
mov L0x7fffffffd4f8 r12;
(* adox   %r11,%r9                                 #! PC = 0x555555563ad7 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   %r12,%r12,%r11                           #! PC = 0x555555563add *)
mull r11 r12 r12 rdx;
(* mov    %r13,0x50(%rsi)                          #! EA = L0x7fffffffd500; PC = 0x555555563ae2 *)
mov L0x7fffffffd500 r13;
(* adox   %r12,%r10                                #! PC = 0x555555563ae6 *)
adcs overflow r10 r10 r12 overflow;
(* mulx   %r13,%r13,%r12                           #! PC = 0x555555563aec *)
mull r12 r13 r13 rdx;
(* mov    %r14,0x58(%rsi)                          #! EA = L0x7fffffffd508; PC = 0x555555563af1 *)
mov L0x7fffffffd508 r14;
(* adox   %r13,%r11                                #! PC = 0x555555563af5 *)
adcs overflow r11 r11 r13 overflow;
(* mulx   %r14,%r14,%r13                           #! PC = 0x555555563afb *)
mull r13 r14 r14 rdx;
(* mov    %r15,0x60(%rsi)                          #! EA = L0x7fffffffd510; PC = 0x555555563b00 *)
mov L0x7fffffffd510 r15;
(* adox   %r14,%r12                                #! PC = 0x555555563b04 *)
adcs overflow r12 r12 r14 overflow;
(* mulx   %r15,%r15,%r14                           #! PC = 0x555555563b0a *)
mull r14 r15 r15 rdx;
(* mov    %rcx,0x68(%rsi)                          #! EA = L0x7fffffffd518; PC = 0x555555563b0f *)
mov L0x7fffffffd518 rcx;
(* adox   %r15,%r13                                #! PC = 0x555555563b13 *)
adcs overflow r13 r13 r15 overflow;
(* mulx   %rcx,%rbx,%r15                           #! PC = 0x555555563b19 *)
mull r15 rbx rcx rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555563b1e *)
adcs overflow r14 r14 rbx overflow;
(* adox   %rax,%r15                                #! PC = 0x555555563b24 *)
adcs overflow r15 r15 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r8,%rdx                                 #! PC = 0x555555563b2a *)
mov rdx r8;
(* mulx   0x4742(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563b2d *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563b36 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555563b39 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555563b3f *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x4732(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563b45 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555563b4e *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563b54 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4725(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563b5a *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555563b63 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563b69 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4718(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563b6f *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563b78 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563b7e *)
adcs overflow r15 r15 rbx overflow;
(* adcx   %rax,%r15                                #! PC = 0x555555563b84 *)
adcs carry r15 r15 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd4b8; Value = 0xa9eb620aef5fec81; PC = 0x555555563b8a *)
mov rdx L0x7fffffffd4b8;
(* mulx   0x38(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4e8; Value = 0x10de0bdffe514532; PC = 0x555555563b8e *)
mull rbx rcx L0x7fffffffd4e8 rdx;
(* xor    %r8,%r8                                  #! PC = 0x555555563b94 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r9                                 #! PC = 0x555555563b97 *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555563b9d *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f0; Value = 0xe21fb92ca454a22c; PC = 0x555555563ba3 *)
mull rbx rcx L0x7fffffffd4f0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555563ba9 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563baf *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f8; Value = 0xbb86ae8fc6a2c307; PC = 0x555555563bb5 *)
mull rbx rcx L0x7fffffffd4f8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555563bbb *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563bc1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd500; Value = 0xad00a2aa6751f083; PC = 0x555555563bc7 *)
mull rbx rcx L0x7fffffffd500 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555563bcd *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563bd3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd508; Value = 0x72ddb2cf9d98f070; PC = 0x555555563bd9 *)
mull rbx rcx L0x7fffffffd508 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555563bdf *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563be5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd510; Value = 0x085cb8a7d39041a4; PC = 0x555555563beb *)
mull rbx rcx L0x7fffffffd510 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563bf1 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563bf7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd518; Value = 0x0009b449b902eaee; PC = 0x555555563bfd *)
mull rbx rcx L0x7fffffffd518 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563c03 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563c09 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555563c0f *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x555555563c13 *)
mov rdx r9;
(* mulx   0x4659(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563c16 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563c1f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555563c22 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563c28 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4649(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563c2e *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555563c37 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563c3d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x463c(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563c43 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563c4c *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563c52 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x462f(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563c58 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563c61 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563c67 *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %rax,%r8                                 #! PC = 0x555555563c6d *)
adcs carry r8 r8 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd4c0; Value = 0x7bc0fdc2afb0de7b; PC = 0x555555563c73 *)
mov rdx L0x7fffffffd4c0;
(* mulx   0x38(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4e8; Value = 0x10de0bdffe514532; PC = 0x555555563c77 *)
mull rbx rcx L0x7fffffffd4e8 rdx;
(* xor    %r9,%r9                                  #! PC = 0x555555563c7d *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r10                                #! PC = 0x555555563c80 *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555563c86 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f0; Value = 0xe21fb92ca454a22c; PC = 0x555555563c8c *)
mull rbx rcx L0x7fffffffd4f0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555563c92 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563c98 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f8; Value = 0xbb86ae8fc6a2c307; PC = 0x555555563c9e *)
mull rbx rcx L0x7fffffffd4f8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555563ca4 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563caa *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd500; Value = 0xad00a2aa6751f083; PC = 0x555555563cb0 *)
mull rbx rcx L0x7fffffffd500 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555563cb6 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563cbc *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd508; Value = 0x72ddb2cf9d98f070; PC = 0x555555563cc2 *)
mull rbx rcx L0x7fffffffd508 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563cc8 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563cce *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd510; Value = 0x085cb8a7d39041a4; PC = 0x555555563cd4 *)
mull rbx rcx L0x7fffffffd510 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563cda *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563ce0 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd518; Value = 0x0009b449b902eaee; PC = 0x555555563ce6 *)
mull rbx rcx L0x7fffffffd518 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563cec *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563cf2 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555563cf8 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x555555563cfc *)
mov rdx r10;
(* mulx   0x4570(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563cff *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563d08 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r13                                #! PC = 0x555555563d0b *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563d11 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4560(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563d17 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563d20 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563d26 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4553(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563d2c *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563d35 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563d3b *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4546(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563d41 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563d4a *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563d50 *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %rax,%r9                                 #! PC = 0x555555563d56 *)
adcs carry r9 r9 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd4c8; Value = 0x2c83686bea3829f3; PC = 0x555555563d5c *)
mov rdx L0x7fffffffd4c8;
(* mulx   0x38(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4e8; Value = 0x10de0bdffe514532; PC = 0x555555563d60 *)
mull rbx rcx L0x7fffffffd4e8 rdx;
(* xor    %r10,%r10                                #! PC = 0x555555563d66 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555563d69 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555563d6f *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f0; Value = 0xe21fb92ca454a22c; PC = 0x555555563d75 *)
mull rbx rcx L0x7fffffffd4f0 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555563d7b *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563d81 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f8; Value = 0xbb86ae8fc6a2c307; PC = 0x555555563d87 *)
mull rbx rcx L0x7fffffffd4f8 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555563d8d *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563d93 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd500; Value = 0xad00a2aa6751f083; PC = 0x555555563d99 *)
mull rbx rcx L0x7fffffffd500 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563d9f *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563da5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd508; Value = 0x72ddb2cf9d98f070; PC = 0x555555563dab *)
mull rbx rcx L0x7fffffffd508 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563db1 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563db7 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd510; Value = 0x085cb8a7d39041a4; PC = 0x555555563dbd *)
mull rbx rcx L0x7fffffffd510 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563dc3 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563dc9 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd518; Value = 0x0009b449b902eaee; PC = 0x555555563dcf *)
mull rbx rcx L0x7fffffffd518 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555563dd5 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563ddb *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555563de1 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555563de5 *)
mov rdx r11;
(* mulx   0x4487(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563de8 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563df1 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r14                                #! PC = 0x555555563df4 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555563dfa *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4477(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563e00 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563e09 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563e0f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x446a(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563e15 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563e1e *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563e24 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x445d(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563e2a *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555563e33 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563e39 *)
adcs overflow r10 r10 rbx overflow;
(* adcx   %rax,%r10                                #! PC = 0x555555563e3f *)
adcs carry r10 r10 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd4d0; Value = 0xcd308c07068b07bb; PC = 0x555555563e45 *)
mov rdx L0x7fffffffd4d0;
(* mulx   0x38(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4e8; Value = 0x10de0bdffe514532; PC = 0x555555563e49 *)
mull rbx rcx L0x7fffffffd4e8 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555563e4f *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555563e52 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563e58 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f0; Value = 0xe21fb92ca454a22c; PC = 0x555555563e5e *)
mull rbx rcx L0x7fffffffd4f0 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555563e64 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563e6a *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f8; Value = 0xbb86ae8fc6a2c307; PC = 0x555555563e70 *)
mull rbx rcx L0x7fffffffd4f8 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563e76 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563e7c *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd500; Value = 0xad00a2aa6751f083; PC = 0x555555563e82 *)
mull rbx rcx L0x7fffffffd500 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563e88 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563e8e *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd508; Value = 0x72ddb2cf9d98f070; PC = 0x555555563e94 *)
mull rbx rcx L0x7fffffffd508 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563e9a *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563ea0 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd510; Value = 0x085cb8a7d39041a4; PC = 0x555555563ea6 *)
mull rbx rcx L0x7fffffffd510 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555563eac *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563eb2 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd518; Value = 0x0009b449b902eaee; PC = 0x555555563eb8 *)
mull rbx rcx L0x7fffffffd518 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555563ebe *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563ec4 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563eca *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555563ece *)
mov rdx r12;
(* mulx   0x439e(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563ed1 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563eda *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r15                                #! PC = 0x555555563edd *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555563ee3 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x438e(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563ee9 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563ef2 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563ef8 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4381(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563efe *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555563f07 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563f0d *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4374(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563f13 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555563f1c *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563f22 *)
adcs overflow r11 r11 rbx overflow;
(* adcx   %rax,%r11                                #! PC = 0x555555563f28 *)
adcs carry r11 r11 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd4d8; Value = 0xa36ee23920b953c9; PC = 0x555555563f2e *)
mov rdx L0x7fffffffd4d8;
(* mulx   0x38(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4e8; Value = 0x10de0bdffe514532; PC = 0x555555563f32 *)
mull rbx rcx L0x7fffffffd4e8 rdx;
(* xor    %r12,%r12                                #! PC = 0x555555563f38 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r13                                #! PC = 0x555555563f3b *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563f41 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f0; Value = 0xe21fb92ca454a22c; PC = 0x555555563f47 *)
mull rbx rcx L0x7fffffffd4f0 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555563f4d *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563f53 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f8; Value = 0xbb86ae8fc6a2c307; PC = 0x555555563f59 *)
mull rbx rcx L0x7fffffffd4f8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555563f5f *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563f65 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd500; Value = 0xad00a2aa6751f083; PC = 0x555555563f6b *)
mull rbx rcx L0x7fffffffd500 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555563f71 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563f77 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd508; Value = 0x72ddb2cf9d98f070; PC = 0x555555563f7d *)
mull rbx rcx L0x7fffffffd508 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555563f83 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563f89 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd510; Value = 0x085cb8a7d39041a4; PC = 0x555555563f8f *)
mull rbx rcx L0x7fffffffd510 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555563f95 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563f9b *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd518; Value = 0x0009b449b902eaee; PC = 0x555555563fa1 *)
mull rbx rcx L0x7fffffffd518 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555563fa7 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563fad *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555563fb3 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555563fb7 *)
mov rdx r13;
(* mulx   0x42b5(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563fba *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563fc3 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r8                                 #! PC = 0x555555563fc6 *)
adcs overflow r8 r8 rcx overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555563fcc *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x42a5(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563fd2 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555563fdb *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563fe1 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4298(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563fe7 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555563ff0 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563ff6 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x428b(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563ffc *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564005 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556400b *)
adcs overflow r12 r12 rbx overflow;
(* adcx   %rax,%r12                                #! PC = 0x555555564011 *)
adcs carry r12 r12 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd4e0; Value = 0x000201f2d3fc9868; PC = 0x555555564017 *)
mov rdx L0x7fffffffd4e0;
(* mulx   0x38(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4e8; Value = 0x10de0bdffe514532; PC = 0x55555556401b *)
mull rbx rcx L0x7fffffffd4e8 rdx;
(* xor    %r13,%r13                                #! PC = 0x555555564021 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r14                                #! PC = 0x555555564024 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556402a *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x40(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f0; Value = 0xe21fb92ca454a22c; PC = 0x555555564030 *)
mull rbx rcx L0x7fffffffd4f0 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564036 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556403c *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x48(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd4f8; Value = 0xbb86ae8fc6a2c307; PC = 0x555555564042 *)
mull rbx rcx L0x7fffffffd4f8 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564048 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556404e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x50(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd500; Value = 0xad00a2aa6751f083; PC = 0x555555564054 *)
mull rbx rcx L0x7fffffffd500 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x55555556405a *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564060 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x58(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd508; Value = 0x72ddb2cf9d98f070; PC = 0x555555564066 *)
mull rbx rcx L0x7fffffffd508 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556406c *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564072 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x60(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd510; Value = 0x085cb8a7d39041a4; PC = 0x555555564078 *)
mull rbx rcx L0x7fffffffd510 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x55555556407e *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564084 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x68(%rsi),%rcx,%rbx                     #! EA = L0x7fffffffd518; Value = 0x0009b449b902eaee; PC = 0x55555556408a *)
mull rbx rcx L0x7fffffffd518 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564090 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564096 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x55555556409c *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x5555555640a0 *)
mov rdx r14;
(* mulx   0x41cc(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555640a3 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555640ac *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r9                                 #! PC = 0x5555555640af *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555640b5 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x41bc(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555640bb *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555640c4 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555640ca *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x41af(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555640d0 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555640d9 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555640df *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x41a2(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555640e5 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x5555555640ee *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555640f4 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rax,%r13                                #! PC = 0x5555555640fa *)
adcs carry r13 r13 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,(%rsi)                              #! EA = L0x7fffffffd4b0; PC = 0x555555564100 *)
mov L0x7fffffffd4b0 r15;
(* mov    %r8,0x8(%rsi)                            #! EA = L0x7fffffffd4b8; PC = 0x555555564103 *)
mov L0x7fffffffd4b8 r8;
(* mov    %r9,0x10(%rsi)                           #! EA = L0x7fffffffd4c0; PC = 0x555555564107 *)
mov L0x7fffffffd4c0 r9;
(* mov    %r10,0x18(%rsi)                          #! EA = L0x7fffffffd4c8; PC = 0x55555556410b *)
mov L0x7fffffffd4c8 r10;
(* mov    %r11,0x20(%rsi)                          #! EA = L0x7fffffffd4d0; PC = 0x55555556410f *)
mov L0x7fffffffd4d0 r11;
(* mov    %r12,0x28(%rsi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555564113 *)
mov L0x7fffffffd4d8 r12;
(* mov    %r13,0x30(%rsi)                          #! EA = L0x7fffffffd4e0; PC = 0x555555564117 *)
mov L0x7fffffffd4e0 r13;
(* #! <- SP = 0x7fffffffd4a8 *)
#! 0x7fffffffd4a8 = 0x7fffffffd4a8;
(* #retq                                           #! PC = 0x555555564124 *)
#retq                                           #! 0x555555564124 = 0x555555564124;


(* ===== Outputs ===== *)

mov c00 L0x7fffffffd4b0;
mov c01 L0x7fffffffd4b8;
mov c02 L0x7fffffffd4c0;
mov c03 L0x7fffffffd4c8;
mov c04 L0x7fffffffd4d0;
mov c05 L0x7fffffffd4d8;
mov c06 L0x7fffffffd4e0;


{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c00, c01, c02, c03, c04, c05, c06 ])
        (
          ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ])
            +
            (limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ]) )
          *
          ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ])
            -
            (limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ]) )
        )
        (limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ])
  &&
  limbs 64 [ c00, c01, c02, c03, c04, c05, c06 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
}