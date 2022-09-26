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

(* fp2sqr434_c1_mont: *)
(* #! -> SP = 0x7fffffffd4a8 *)
#! 0x7fffffffd4a8 = 0x7fffffffd4a8;
(* #jmpq   0x555555564125 <fp2sqr434_c1_asm>       #! PC = 0x5555555622c4 *)
#jmpq   0x555555564125 <fp2sqr434_c1_asm>       #! 0x5555555622c4 = 0x5555555622c4;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd840; Value = 0x051a772902dbc11a; PC = 0x555555564127 *)
mov r8 L0x7fffffffd840;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd848; Value = 0xc6058d9bc9da4757; PC = 0x55555556412a *)
mov r9 L0x7fffffffd848;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd850; Value = 0x9ba3d6293b29d0c1; PC = 0x55555556412e *)
mov r10 L0x7fffffffd850;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd858; Value = 0xf13f189562c50d3b; PC = 0x555555564132 *)
mov r11 L0x7fffffffd858;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd860; Value = 0x287a667aef609ecd; PC = 0x555555564136 *)
mov r12 L0x7fffffffd860;
(* add    %r8,%r8                                  #! PC = 0x55555556413a *)
adds carry r8 r8 r8;
(* adc    %r9,%r9                                  #! PC = 0x55555556413f *)
adcs carry r9 r9 r9@uint64 carry;
(* adc    %r10,%r10                                #! PC = 0x555555564142 *)
adcs carry r10 r10 r10@uint64 carry;
(* adc    %r11,%r11                                #! PC = 0x555555564147 *)
adcs carry r11 r11 r11@uint64 carry;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd868; Value = 0x7bed0dc3769a8a0a; PC = 0x55555556414a *)
mov r13 L0x7fffffffd868;
(* mov    0x30(%rdi),%r14                          #! EA = L0x7fffffffd870; Value = 0x000172dff850db22; PC = 0x55555556414e *)
mov r14 L0x7fffffffd870;
(* adc    %r12,%r12                                #! PC = 0x555555564152 *)
adcs carry r12 r12 r12@uint64 carry;
(* adc    %r13,%r13                                #! PC = 0x555555564157 *)
adcs carry r13 r13 r13@uint64 carry;
(* adc    %r14,%r14                                #! PC = 0x55555556415b *)
adcs carry r14 r14 r14@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* sub    $0x38,%rsp                               #! PC = 0x55555556415e *)
(* sub    $0x38,%rsp                               #! 0x55555556415e = 0x55555556415e; *)
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd450; PC = 0x555555564162 *)
mov L0x7fffffffd450 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd458; PC = 0x555555564167 *)
mov L0x7fffffffd458 r10;
(* mov    %r8,%rdx                                 #! PC = 0x55555556416c *)
mov rdx r8;
(* mulx   0x38(%rdi),%r8,%r9                       #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x55555556416f *)
mull r9 r8 L0x7fffffffd878 rdx;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd460; PC = 0x555555564175 *)
mov L0x7fffffffd460 r11;
(* xor    %rax,%rax                                #! PC = 0x55555556417a *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%r11,%r10                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x55555556417d *)
mull r10 r11 L0x7fffffffd880 rdx;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd468; PC = 0x555555564183 *)
mov L0x7fffffffd468 r12;
(* adox   %r11,%r9                                 #! PC = 0x555555564188 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x48(%rdi),%r12,%r11                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x55555556418e *)
mull r11 r12 L0x7fffffffd888 rdx;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd470; PC = 0x555555564194 *)
mov L0x7fffffffd470 r13;
(* adox   %r12,%r10                                #! PC = 0x555555564199 *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x50(%rdi),%r13,%r12                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x55555556419f *)
mull r12 r13 L0x7fffffffd890 rdx;
(* mov    %r14,0x30(%rsp)                          #! EA = L0x7fffffffd478; PC = 0x5555555641a5 *)
mov L0x7fffffffd478 r14;
(* adox   %r13,%r11                                #! PC = 0x5555555641aa *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x58(%rdi),%r14,%r13                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x5555555641b0 *)
mull r13 r14 L0x7fffffffd898 rdx;
(* adox   %r14,%r12                                #! PC = 0x5555555641b6 *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x60(%rdi),%r15,%r14                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x5555555641bc *)
mull r14 r15 L0x7fffffffd8a0 rdx;
(* adox   %r15,%r13                                #! PC = 0x5555555641c2 *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x68(%rdi),%rbx,%r15                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x5555555641c8 *)
mull r15 rbx L0x7fffffffd8a8 rdx;
(* adox   %rbx,%r14                                #! PC = 0x5555555641ce *)
adcs overflow r14 r14 rbx overflow;
(* adox   %rax,%r15                                #! PC = 0x5555555641d4 *)
adcs overflow r15 r15 rax overflow;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r8,%rdx                                 #! PC = 0x5555555641da *)
mov rdx r8;
(* mulx   0x4092(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555641dd *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555641e6 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r11                                #! PC = 0x5555555641e9 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x5555555641ef *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x4082(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555641f5 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x5555555641fe *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564204 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x4075(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x55555556420a *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564213 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564219 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4068(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x55555556421f *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564228 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556422e *)
adcs overflow r15 r15 rbx overflow;
(* adcx   %rax,%r15                                #! PC = 0x555555564234 *)
adcs carry r15 r15 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd450; Value = 0x8c0b1b3793b48eae; PC = 0x55555556423a *)
mov rdx L0x7fffffffd450;
(* mulx   0x38(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x55555556423f *)
mull rbx rcx L0x7fffffffd878 rdx;
(* xor    %r8,%r8                                  #! PC = 0x555555564245 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r9                                 #! PC = 0x555555564248 *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556424e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x555555564254 *)
mull rbx rcx L0x7fffffffd880 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556425a *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564260 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x555555564266 *)
mull rbx rcx L0x7fffffffd888 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x55555556426c *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564272 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x555555564278 *)
mull rbx rcx L0x7fffffffd890 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x55555556427e *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564284 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x55555556428a *)
mull rbx rcx L0x7fffffffd898 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564290 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564296 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x55555556429c *)
mull rbx rcx L0x7fffffffd8a0 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555642a2 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555642a8 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x5555555642ae *)
mull rbx rcx L0x7fffffffd8a8 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555642b4 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555642ba *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x5555555642c0 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x5555555642c4 *)
mov rdx r9;
(* mulx   0x3fa8(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555642c7 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555642d0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r12                                #! PC = 0x5555555642d3 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x5555555642d9 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3f98(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555642df *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x5555555642e8 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555642ee *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3f8b(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555642f4 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555642fd *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564303 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3f7e(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555564309 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564312 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564318 *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %rax,%r8                                 #! PC = 0x55555556431e *)
adcs carry r8 r8 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd458; Value = 0x3747ac527653a183; PC = 0x555555564324 *)
mov rdx L0x7fffffffd458;
(* mulx   0x38(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x555555564329 *)
mull rbx rcx L0x7fffffffd878 rdx;
(* xor    %r9,%r9                                  #! PC = 0x55555556432f *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r10                                #! PC = 0x555555564332 *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555564338 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x55555556433e *)
mull rbx rcx L0x7fffffffd880 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564344 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556434a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x555555564350 *)
mull rbx rcx L0x7fffffffd888 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564356 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556435c *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x555555564362 *)
mull rbx rcx L0x7fffffffd890 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564368 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556436e *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x555555564374 *)
mull rbx rcx L0x7fffffffd898 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556437a *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564380 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x555555564386 *)
mull rbx rcx L0x7fffffffd8a0 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556438c *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564392 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x555555564398 *)
mull rbx rcx L0x7fffffffd8a8 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x55555556439e *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555643a4 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x5555555643aa *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x5555555643ae *)
mov rdx r10;
(* mulx   0x3ebe(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555643b1 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555643ba *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r13                                #! PC = 0x5555555643bd *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555643c3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3eae(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555643c9 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x5555555643d2 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555643d8 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3ea1(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555643de *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555643e7 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555643ed *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3e94(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555643f3 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555643fc *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564402 *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %rax,%r9                                 #! PC = 0x555555564408 *)
adcs carry r9 r9 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd460; Value = 0xe27e312ac58a1a77; PC = 0x55555556440e *)
mov rdx L0x7fffffffd460;
(* mulx   0x38(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x555555564413 *)
mull rbx rcx L0x7fffffffd878 rdx;
(* xor    %r10,%r10                                #! PC = 0x555555564419 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r11                                #! PC = 0x55555556441c *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555564422 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x555555564428 *)
mull rbx rcx L0x7fffffffd880 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x55555556442e *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x555555564434 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x55555556443a *)
mull rbx rcx L0x7fffffffd888 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564440 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x555555564446 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x55555556444c *)
mull rbx rcx L0x7fffffffd890 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564452 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564458 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x55555556445e *)
mull rbx rcx L0x7fffffffd898 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564464 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556446a *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x555555564470 *)
mull rbx rcx L0x7fffffffd8a0 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564476 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556447c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x555555564482 *)
mull rbx rcx L0x7fffffffd8a8 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564488 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556448e *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555564494 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555564498 *)
mov rdx r11;
(* mulx   0x3dd4(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x55555556449b *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555644a4 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r14                                #! PC = 0x5555555644a7 *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x5555555644ad *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3dc4(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555644b3 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555644bc *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555644c2 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3db7(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555644c8 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555644d1 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555644d7 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3daa(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555644dd *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555644e6 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555644ec *)
adcs overflow r10 r10 rbx overflow;
(* adcx   %rax,%r10                                #! PC = 0x5555555644f2 *)
adcs carry r10 r10 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd468; Value = 0x50f4ccf5dec13d9b; PC = 0x5555555644f8 *)
mov rdx L0x7fffffffd468;
(* mulx   0x38(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x5555555644fd *)
mull rbx rcx L0x7fffffffd878 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555564503 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555564506 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rbx,%r13                                #! PC = 0x55555556450c *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x555555564512 *)
mull rbx rcx L0x7fffffffd880 rdx;
(* adcx   %rcx,%r13                                #! PC = 0x555555564518 *)
adcs carry r13 r13 rcx carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556451e *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x555555564524 *)
mull rbx rcx L0x7fffffffd888 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x55555556452a *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564530 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x555555564536 *)
mull rbx rcx L0x7fffffffd890 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x55555556453c *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555564542 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x555555564548 *)
mull rbx rcx L0x7fffffffd898 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x55555556454e *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564554 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x55555556455a *)
mull rbx rcx L0x7fffffffd8a0 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564560 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564566 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x55555556456c *)
mull rbx rcx L0x7fffffffd8a8 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564572 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564578 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556457e *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555564582 *)
mov rdx r12;
(* mulx   0x3cea(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564585 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556458e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r15                                #! PC = 0x555555564591 *)
adcs overflow r15 r15 rcx overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555564597 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3cda(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x55555556459d *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555645a6 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555645ac *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3ccd(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555645b2 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x5555555645bb *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555645c1 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3cc0(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555645c7 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555645d0 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555645d6 *)
adcs overflow r11 r11 rbx overflow;
(* adcx   %rax,%r11                                #! PC = 0x5555555645dc *)
adcs carry r11 r11 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd470; Value = 0xf7da1b86ed351414; PC = 0x5555555645e2 *)
mov rdx L0x7fffffffd470;
(* mulx   0x38(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x5555555645e7 *)
mull rbx rcx L0x7fffffffd878 rdx;
(* xor    %r12,%r12                                #! PC = 0x5555555645ed *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r13                                #! PC = 0x5555555645f0 *)
adcs overflow r13 r13 rcx overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555645f6 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x5555555645fc *)
mull rbx rcx L0x7fffffffd880 rdx;
(* adcx   %rcx,%r14                                #! PC = 0x555555564602 *)
adcs carry r14 r14 rcx carry;
(* adox   %rbx,%r15                                #! PC = 0x555555564608 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x55555556460e *)
mull rbx rcx L0x7fffffffd888 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x555555564614 *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556461a *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x555555564620 *)
mull rbx rcx L0x7fffffffd890 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x555555564626 *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556462c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x555555564632 *)
mull rbx rcx L0x7fffffffd898 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564638 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556463e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x555555564644 *)
mull rbx rcx L0x7fffffffd8a0 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556464a *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564650 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x555555564656 *)
mull rbx rcx L0x7fffffffd8a8 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x55555556465c *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564662 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555564668 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x55555556466c *)
mov rdx r13;
(* mulx   0x3c00(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x55555556466f *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564678 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r8                                 #! PC = 0x55555556467b *)
adcs overflow r8 r8 rcx overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555564681 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x3bf0(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564687 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564690 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564696 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3be3(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x55555556469c *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x5555555646a5 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555646ab *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3bd6(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555646b1 *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x5555555646ba *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555646c0 *)
adcs overflow r12 r12 rbx overflow;
(* adcx   %rax,%r12                                #! PC = 0x5555555646c6 *)
adcs carry r12 r12 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd478; Value = 0x0002e5bff0a1b644; PC = 0x5555555646cc *)
mov rdx L0x7fffffffd478;
(* mulx   0x38(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd878; Value = 0xf43c6b49048a7be4; PC = 0x5555555646d1 *)
mull rbx rcx L0x7fffffffd878 rdx;
(* xor    %r13,%r13                                #! PC = 0x5555555646d7 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r14                                #! PC = 0x5555555646da *)
adcs overflow r14 r14 rcx overflow;
(* adox   %rbx,%r15                                #! PC = 0x5555555646e0 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x40(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd880; Value = 0xe3e5d46f2585a52a; PC = 0x5555555646e6 *)
mull rbx rcx L0x7fffffffd880 rdx;
(* adcx   %rcx,%r15                                #! PC = 0x5555555646ec *)
adcs carry r15 r15 rcx carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555646f2 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x48(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe01d279974870db9; PC = 0x5555555646f8 *)
mull rbx rcx L0x7fffffffd888 rdx;
(* adcx   %rcx,%r8                                 #! PC = 0x5555555646fe *)
adcs carry r8 r8 rcx carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555564704 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x50(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd890; Value = 0x3b444fd687731cb7; PC = 0x55555556470a *)
mull rbx rcx L0x7fffffffd890 rdx;
(* adcx   %rcx,%r9                                 #! PC = 0x555555564710 *)
adcs carry r9 r9 rcx carry;
(* adox   %rbx,%r10                                #! PC = 0x555555564716 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x58(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd898; Value = 0xa4b6258c172a68ed; PC = 0x55555556471c *)
mull rbx rcx L0x7fffffffd898 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x555555564722 *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564728 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x60(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0x2781d475aa1ec9bf; PC = 0x55555556472e *)
mull rbx rcx L0x7fffffffd8a0 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x555555564734 *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556473a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x68(%rdi),%rcx,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x00008f12dbabbd46; PC = 0x555555564740 *)
mull rbx rcx L0x7fffffffd8a8 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x555555564746 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556474c *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555564752 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555564756 *)
mov rdx r14;
(* mulx   0x3b16(%rip),%rcx,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555564759 *)
mull rbx rcx L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555564762 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rcx,%r9                                 #! PC = 0x555555564765 *)
adcs overflow r9 r9 rcx overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556476b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x3b06(%rip),%rcx,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555564771 *)
mull rbx rcx L0x555555568280 rdx;
(* adcx   %rcx,%r10                                #! PC = 0x55555556477a *)
adcs carry r10 r10 rcx carry;
(* adox   %rbx,%r11                                #! PC = 0x555555564780 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x3af9(%rip),%rcx,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555564786 *)
mull rbx rcx L0x555555568288 rdx;
(* adcx   %rcx,%r11                                #! PC = 0x55555556478f *)
adcs carry r11 r11 rcx carry;
(* adox   %rbx,%r12                                #! PC = 0x555555564795 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3aec(%rip),%rcx,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x55555556479b *)
mull rbx rcx L0x555555568290 rdx;
(* adcx   %rcx,%r12                                #! PC = 0x5555555647a4 *)
adcs carry r12 r12 rcx carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555647aa *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rax,%r13                                #! PC = 0x5555555647b0 *)
adcs carry r13 r13 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* add    $0x38,%rsp                               #! PC = 0x5555555647b6 *)
(* add    $0x38,%rsp                               #! 0x5555555647b6 = 0x5555555647b6; *)
(* mov    %r15,(%rsi)                              #! EA = L0x7fffffffd8e8; PC = 0x5555555647ba *)
mov L0x7fffffffd8e8 r15;
(* mov    %r8,0x8(%rsi)                            #! EA = L0x7fffffffd8f0; PC = 0x5555555647bd *)
mov L0x7fffffffd8f0 r8;
(* mov    %r9,0x10(%rsi)                           #! EA = L0x7fffffffd8f8; PC = 0x5555555647c1 *)
mov L0x7fffffffd8f8 r9;
(* mov    %r10,0x18(%rsi)                          #! EA = L0x7fffffffd900; PC = 0x5555555647c5 *)
mov L0x7fffffffd900 r10;
(* mov    %r11,0x20(%rsi)                          #! EA = L0x7fffffffd908; PC = 0x5555555647c9 *)
mov L0x7fffffffd908 r11;
(* mov    %r12,0x28(%rsi)                          #! EA = L0x7fffffffd910; PC = 0x5555555647cd *)
mov L0x7fffffffd910 r12;
(* mov    %r13,0x30(%rsi)                          #! EA = L0x7fffffffd918; PC = 0x5555555647d1 *)
mov L0x7fffffffd918 r13;
(* #! <- SP = 0x7fffffffd4a8 *)
#! 0x7fffffffd4a8 = 0x7fffffffd4a8;
(* #retq                                           #! PC = 0x5555555647de *)
#retq                                           #! 0x5555555647de = 0x5555555647de;

(* ===== Outputs ===== *)

mov c10 L0x7fffffffd8e8;
mov c11 L0x7fffffffd8f0;
mov c12 L0x7fffffffd8f8;
mov c13 L0x7fffffffd900;
mov c14 L0x7fffffffd908;
mov c15 L0x7fffffffd910;
mov c16 L0x7fffffffd918;

{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16 ])
        ( 2
          *
          (limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ])
          *
          (limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ])
        )
        (limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ])
  &&
  limbs 64 [ c10, c11, c12, c13, c14, c15, c16 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
}
