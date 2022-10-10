(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2mul434_mont.cl

*)

const p434_0 = 0xFFFFFFFFFFFFFFFF
const p434_1 = 0xFFFFFFFFFFFFFFFF
const p434_2 = 0xFFFFFFFFFFFFFFFF
const p434_3 = 0xFDC1767AE2FFFFFF
const p434_4 = 0x7BC65C783158AEA3
const p434_5 = 0x6CFC5FD681C52056
const p434_6 = 0x0002341F27177344

const p434x8_0 = 0xFFFFFFFFFFFFFFF8
const p434x8_1 = 0xFFFFFFFFFFFFFFFF
const p434x8_2 = 0xFFFFFFFFFFFFFFFF
const p434x8_3 = 0xEE0BB3D717FFFFFF
const p434x8_4 = 0xDE32E3C18AC5751F
const p434x8_5 = 0x67E2FEB40E2902B3
const p434x8_6 = 0x0011A0F938BB9A23

const p434p1_0 = 0x0000000000000000
const p434p1_1 = 0x0000000000000000
const p434p1_2 = 0x0000000000000000
const p434p1_3 = 0xFDC1767AE3000000
const p434p1_4 = 0x7BC65C783158AEA3
const p434p1_5 = 0x6CFC5FD681C52056
const p434p1_6 = 0x0002341F27177344

proc main (a00@uint64, a01@uint64, a02@uint64, a03@uint64, a04@uint64, a05@uint64, a06@uint64,
           a10@uint64, a11@uint64, a12@uint64, a13@uint64, a14@uint64, a15@uint64, a16@uint64,
           b00@uint64, b01@uint64, b02@uint64, b03@uint64, b04@uint64, b05@uint64, b06@uint64,
           b10@uint64, b11@uint64, b12@uint64, b13@uint64, b14@uint64, b15@uint64, b16@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448),
    limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448),
    limbs 64 [ b00, b01, b02, b03, b04, b05, b06 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448),
    limbs 64 [ b10, b11, b12, b13, b14, b15, b16 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffd840 a00;
mov L0x7fffffffd848 a01;
mov L0x7fffffffd850 a02;
mov L0x7fffffffd858 a03;
mov L0x7fffffffd860 a04;
mov L0x7fffffffd868 a05;
mov L0x7fffffffd870 a06;
mov L0x7fffffffd878 a10;
mov L0x7fffffffd880 a11;
mov L0x7fffffffd888 a12;
mov L0x7fffffffd890 a13;
mov L0x7fffffffd898 a14;
mov L0x7fffffffd8a0 a15;
mov L0x7fffffffd8a8 a16;

mov L0x7fffffffd8b0 b00;
mov L0x7fffffffd8b8 b01;
mov L0x7fffffffd8c0 b02;
mov L0x7fffffffd8c8 b03;
mov L0x7fffffffd8d0 b04;
mov L0x7fffffffd8d8 b05;
mov L0x7fffffffd8e0 b06;
mov L0x7fffffffd8e8 b10;
mov L0x7fffffffd8f0 b11;
mov L0x7fffffffd8f8 b12;
mov L0x7fffffffd900 b13;
mov L0x7fffffffd908 b14;
mov L0x7fffffffd910 b15;
mov L0x7fffffffd918 b16;

mov L0x5555555682a0 $p434x8_0@uint64;
mov L0x5555555682a8 $p434x8_1@uint64;
mov L0x5555555682b8 $p434x8_3@uint64;
mov L0x5555555682c0 $p434x8_4@uint64;
mov L0x5555555682c8 $p434x8_5@uint64;
mov L0x5555555682d0 $p434x8_6@uint64;

mov L0x555555568278 $p434p1_3@uint64;
mov L0x555555568280 $p434p1_4@uint64;
mov L0x555555568288 $p434p1_5@uint64;
mov L0x555555568290 $p434p1_6@uint64;

nondet rdx@uint64;
nondet rdi@uint64;
nondet rsi@uint64;
nondet rsp@uint64;
nondet fs0x28@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* mov    %rsi,%r12                                #! PC = 0x555555558486 *)
mov r12 rsi;
(* mov    %rdi,%rbp                                #! PC = 0x55555555848a *)
mov rbp rdi;
(* mov    %rdx,%rbx                                #! PC = 0x55555555848e *)
mov rbx rdx;
(* sub    $0x40,%rsp                               #! PC = 0x555555558491 *)
subb carry rsp rsp 0x40@uint64;
(* mov    %rsp,%rdx                                #! PC = 0x555555558495 *)
mov rdx rsp;
(* mov    %fs:0x28,%rax                            #! PC = 0x555555558498 *)
mov rax fs0x28;
(* mov    %rax,0x38(%rsp)                          #! EA = L0x7fffffffd528; PC = 0x5555555584a1 *)
mov L0x7fffffffd528 rax;
(* xor    %eax,%eax                                #! PC = 0x5555555584a6 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* #callq  0x555555562290 <fp2mul434_c0_mont>      #! PC = 0x5555555584a8 *)
#callq  0x555555562290 <fp2mul434_c0_mont>      #! 0x5555555584a8 = 0x5555555584a8;
(* #! -> SP = 0x7fffffffd4e8 *)
#! 0x7fffffffd4e8 = 0x7fffffffd4e8;
(* #jmpq   0x555555562555 <fp2mul434_c0_asm>       #! PC = 0x555555562294 *)
#jmpq   0x555555562555 <fp2mul434_c0_asm>       #! 0x555555562294 = 0x555555562294;
(* mov    %rdx,%rcx                                #! PC = 0x555555562557 *)
mov rcx rdx;
(* mov    0x5d3f(%rip),%r8        # 0x5555555682a0 <p434x8>#! EA = L0x5555555682a0; Value = 0xfffffffffffffff8; PC = 0x55555556255a *)
mov r8 L0x5555555682a0;
(* mov    0x5d40(%rip),%r9        # 0x5555555682a8 <p434x8+8>#! EA = L0x5555555682a8; Value = 0xffffffffffffffff; PC = 0x555555562561 *)
mov r9 L0x5555555682a8;
(* mov    0x5d49(%rip),%r11        # 0x5555555682b8 <p434x8+24>#! EA = L0x5555555682b8; Value = 0xee0bb3d717ffffff; PC = 0x555555562568 *)
mov r11 L0x5555555682b8;
(* mov    0x5d4a(%rip),%r12        # 0x5555555682c0 <p434x8+32>#! EA = L0x5555555682c0; Value = 0xde32e3c18ac5751f; PC = 0x55555556256f *)
mov r12 L0x5555555682c0;
(* mov    0x38(%rsi),%rax                          #! EA = L0x7fffffffd8e8; Value = 0xffefdec24f75d4a3; PC = 0x555555562576 *)
mov rax L0x7fffffffd8e8;
(* mov    0x40(%rsi),%rdx                          #! EA = L0x7fffffffd8f0; Value = 0x725902266e9cfa7b; PC = 0x55555556257a *)
mov rdx L0x7fffffffd8f0;
(* mov    %r9,%r10                                 #! PC = 0x55555556257e *)
mov r10 r9;
(* sub    %rax,%r8                                 #! PC = 0x555555562581 *)
subb carry r8 r8 rax;
(* sbb    %rdx,%r9                                 #! PC = 0x555555562586 *)
sbbs carry r9 r9 rdx carry;
(* mov    0x48(%rsi),%rax                          #! EA = L0x7fffffffd8f8; Value = 0x52a34e5f50e13232; PC = 0x555555562589 *)
mov rax L0x7fffffffd8f8;
(* mov    0x50(%rsi),%rdx                          #! EA = L0x7fffffffd900; Value = 0x03a71ab8c369fe1a; PC = 0x55555556258d *)
mov rdx L0x7fffffffd900;
(* sbb    %rax,%r10                                #! PC = 0x555555562591 *)
sbbs carry r10 r10 rax carry;
(* sbb    %rdx,%r11                                #! PC = 0x555555562596 *)
sbbs carry r11 r11 rdx carry;
(* mov    0x58(%rsi),%rax                          #! EA = L0x7fffffffd908; Value = 0x7aa1ccd7d940c358; PC = 0x555555562599 *)
mov rax L0x7fffffffd908;
(* mov    0x60(%rsi),%rdx                          #! EA = L0x7fffffffd910; Value = 0x2053d72df63c9836; PC = 0x55555556259d *)
mov rdx L0x7fffffffd910;
(* mov    0x5d20(%rip),%r13        # 0x5555555682c8 <p434x8+40>#! EA = L0x5555555682c8; Value = 0x67e2feb40e2902b3; PC = 0x5555555625a1 *)
mov r13 L0x5555555682c8;
(* mov    0x5d21(%rip),%r14        # 0x5555555682d0 <p434x8+48>#! EA = L0x5555555682d0; Value = 0x0011a0f938bb9a23; PC = 0x5555555625a8 *)
mov r14 L0x5555555682d0;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd4f0; PC = 0x5555555625af *)
mov L0x7fffffffd4f0 r8;
(* sbb    %rax,%r12                                #! PC = 0x5555555625b2 *)
sbbs carry r12 r12 rax carry;
(* sbb    %rdx,%r13                                #! PC = 0x5555555625b7 *)
sbbs carry r13 r13 rdx carry;
(* mov    0x68(%rsi),%rax                          #! EA = L0x7fffffffd918; Value = 0x0001febb2472823d; PC = 0x5555555625ba *)
mov rax L0x7fffffffd918;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd4f8; PC = 0x5555555625be *)
mov L0x7fffffffd4f8 r9;
(* sbb    %rax,%r14                                #! PC = 0x5555555625c2 *)
sbbs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd500; PC = 0x5555555625c5 *)
mov L0x7fffffffd500 r10;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffd8b0; Value = 0x254d450f84202d69; PC = 0x5555555625c9 *)
mov rdx L0x7fffffffd8b0;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x5555555625cc *)
mull r9 r8 L0x7fffffffd840 rdx;
(* mov    %r11,0x18(%rcx)                          #! EA = L0x7fffffffd508; PC = 0x5555555625d1 *)
mov L0x7fffffffd508 r11;
(* xor    %rax,%rax                                #! PC = 0x5555555625d5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x8(%rdi),%r11,%r10                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x5555555625d8 *)
mull r10 r11 L0x7fffffffd848 rdx;
(* mov    %r12,0x20(%rcx)                          #! EA = L0x7fffffffd510; PC = 0x5555555625de *)
mov L0x7fffffffd510 r12;
(* adox   %r11,%r9                                 #! PC = 0x5555555625e2 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x10(%rdi),%r12,%r11                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x5555555625e8 *)
mull r11 r12 L0x7fffffffd850 rdx;
(* mov    %r13,0x28(%rcx)                          #! EA = L0x7fffffffd518; PC = 0x5555555625ee *)
mov L0x7fffffffd518 r13;
(* adox   %r12,%r10                                #! PC = 0x5555555625f2 *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x18(%rdi),%r13,%r12                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x5555555625f8 *)
mull r12 r13 L0x7fffffffd858 rdx;
(* mov    %r14,0x30(%rcx)                          #! EA = L0x7fffffffd520; PC = 0x5555555625fe *)
mov L0x7fffffffd520 r14;
(* adox   %r13,%r11                                #! PC = 0x555555562602 *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x20(%rdi),%r14,%r13                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555562608 *)
mull r13 r14 L0x7fffffffd860 rdx;
(* adox   %r14,%r12                                #! PC = 0x55555556260f *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x28(%rdi),%r15,%r14                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x555555562615 *)
mull r14 r15 L0x7fffffffd868 rdx;
(* adox   %r15,%r13                                #! PC = 0x55555556261c *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x30(%rdi),%rbx,%r15                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555562622 *)
mull r15 rbx L0x7fffffffd870 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555562628 *)
adcs overflow r14 r14 rbx overflow;
(* adox   %rax,%r15                                #! PC = 0x55555556262e *)
adcs overflow r15 r15 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    (%rcx),%rdx                              #! EA = L0x7fffffffd4f0; Value = 0x0010213db08a2b55; PC = 0x555555562634 *)
mov rdx L0x7fffffffd4f0;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562637 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556263d *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555562640 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555562646 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x55555556264c *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562652 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562658 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x55555556265e *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562664 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556266a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555562670 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562676 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556267c *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555562682 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562688 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556268e *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562694 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556269a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555626a0 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x5555555626a6 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555626ac *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555626b2 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x5555555626b8 *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r8,%rdx                                 #! PC = 0x5555555626bc *)
mov rdx r8;
(* mulx   0x5bb0(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555626bf *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555626c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x5555555626cb *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x5555555626d1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x5ba0(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555626d7 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555626e0 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555626e6 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5b93(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555626ec *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555626f5 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555626fb *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5b86(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555562701 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556270a *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562710 *)
adcs overflow r15 r15 rbx overflow;
(* adcx   %rax,%r15                                #! PC = 0x555555562716 *)
adcs carry r15 r15 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd8b8; Value = 0xe56665a46763f164; PC = 0x55555556271c *)
mov rdx L0x7fffffffd8b8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555562720 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %r8,%r8                                  #! PC = 0x555555562725 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x555555562728 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556272e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555562734 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556273a *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562740 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555562746 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556274c *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562752 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555562758 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556275e *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562764 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x55555556276a *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562770 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562776 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x55555556277c *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562782 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562788 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x55555556278e *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562794 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556279a *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x5555555627a0 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd4f8; Value = 0x8da6fdd991630584; PC = 0x5555555627a4 *)
mov rdx L0x7fffffffd4f8;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x5555555627a8 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555627ae *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x5555555627b1 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555627b7 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x5555555627bd *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555627c3 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555627c9 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x5555555627cf *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555627d5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555627db *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x5555555627e1 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555627e7 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555627ed *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x5555555627f3 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555627f9 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555627ff *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562805 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556280b *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562811 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555562817 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556281d *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562823 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555562829 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x55555556282d *)
mov rdx r9;
(* mulx   0x5a3f(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555562830 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562839 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x55555556283c *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555562842 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5a2f(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555562848 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562851 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562857 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5a22(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x55555556285d *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562866 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556286c *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x5a15(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555562872 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556287b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562881 *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %rax,%r8                                 #! PC = 0x555555562887 *)
adcs carry r8 r8 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd8c0; Value = 0x81bd35201f6cdf17; PC = 0x55555556288d *)
mov rdx L0x7fffffffd8c0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555562891 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %r9,%r9                                  #! PC = 0x555555562896 *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555562899 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556289f *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x5555555628a5 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555628ab *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555628b1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x5555555628b7 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555628bd *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555628c3 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x5555555628c9 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555628cf *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555628d5 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x5555555628db *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555628e1 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555628e7 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x5555555628ed *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555628f3 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555628f9 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x5555555628ff *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562905 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556290b *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555562911 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rcx),%rdx                          #! EA = L0x7fffffffd500; Value = 0xad5cb1a0af1ecdcd; PC = 0x555555562915 *)
mov rdx L0x7fffffffd500;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562919 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556291f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555562922 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555562928 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x55555556292e *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562934 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556293a *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555562940 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562946 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556294c *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555562952 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562958 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556295e *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555562964 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556296a *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562970 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562976 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556297c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562982 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555562988 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556298e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562994 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x55555556299a *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x55555556299e *)
mov rdx r10;
(* mulx   0x58ce(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555629a1 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555629aa *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x5555555629ad *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555629b3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58be(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555629b9 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555629c2 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555629c8 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58b1(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555629ce *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555629d7 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555629dd *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58a4(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555629e3 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555629ec *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555629f2 *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %rax,%r9                                 #! PC = 0x5555555629f8 *)
adcs carry r9 r9 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd8c8; Value = 0x36b2c3b918a70e12; PC = 0x5555555629fe *)
mov rdx L0x7fffffffd8c8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555562a02 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %r10,%r10                                #! PC = 0x555555562a07 *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555562a0a *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555562a10 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555562a16 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562a1c *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562a22 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555562a28 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562a2e *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562a34 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555562a3a *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562a40 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562a46 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555562a4c *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562a52 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562a58 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x555555562a5e *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562a64 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562a6a *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555562a70 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562a76 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562a7c *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555562a82 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rcx),%rdx                          #! EA = L0x7fffffffd508; Value = 0xea64991e549601e5; PC = 0x555555562a86 *)
mov rdx L0x7fffffffd508;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562a8a *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562a90 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555562a93 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555562a99 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x555555562a9f *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562aa5 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562aab *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555562ab1 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562ab7 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562abd *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555562ac3 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562ac9 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562acf *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555562ad5 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562adb *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562ae1 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562ae7 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562aed *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562af3 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555562af9 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562aff *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562b05 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555562b0b *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555562b0f *)
mov rdx r11;
(* mulx   0x575d(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555562b12 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562b1b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555562b1e *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555562b24 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x574d(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555562b2a *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562b33 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562b39 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x5740(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555562b3f *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562b48 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562b4e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x5733(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555562b54 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562b5d *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562b63 *)
adcs overflow r10 r10 rbx overflow;
(* adcx   %rax,%r10                                #! PC = 0x555555562b69 *)
adcs carry r10 r10 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd8d0; Value = 0x9e1daa21200173ae; PC = 0x555555562b6f *)
mov rdx L0x7fffffffd8d0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555562b73 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %r11,%r11                                #! PC = 0x555555562b78 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555562b7b *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555562b81 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555562b87 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562b8d *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562b93 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555562b99 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562b9f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562ba5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555562bab *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562bb1 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562bb7 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555562bbd *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562bc3 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562bc9 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x555555562bcf *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562bd5 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562bdb *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555562be1 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562be7 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562bed *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555562bf3 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rcx),%rdx                          #! EA = L0x7fffffffd510; Value = 0x639116e9b184b1c7; PC = 0x555555562bf7 *)
mov rdx L0x7fffffffd510;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562bfb *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562c01 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555562c04 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555562c0a *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x555555562c10 *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555562c16 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555562c1c *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555562c22 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562c28 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562c2e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555562c34 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562c3a *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562c40 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555562c46 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562c4c *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562c52 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562c58 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562c5e *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562c64 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555562c6a *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562c70 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562c76 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555562c7c *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555562c80 *)
mov rdx r12;
(* mulx   0x55ec(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555562c83 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562c8c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x555555562c8f *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555562c95 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x55dc(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555562c9b *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562ca4 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562caa *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x55cf(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555562cb0 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562cb9 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562cbf *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x55c2(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555562cc5 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562cce *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562cd4 *)
adcs overflow r11 r11 rbx overflow;
(* adcx   %rax,%r11                                #! PC = 0x555555562cda *)
adcs carry r11 r11 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd8d8; Value = 0xd7cf7d2844888be7; PC = 0x555555562ce0 *)
mov rdx L0x7fffffffd8d8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555562ce4 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %r12,%r12                                #! PC = 0x555555562ce9 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555562cec *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555562cf2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555562cf8 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562cfe *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562d04 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555562d0a *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562d10 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562d16 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555562d1c *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562d22 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562d28 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555562d2e *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562d34 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562d3a *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x555555562d40 *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562d46 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562d4c *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555562d52 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562d58 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562d5e *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555562d64 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rcx),%rdx                          #! EA = L0x7fffffffd518; Value = 0x478f278617ec6a7d; PC = 0x555555562d68 *)
mov rdx L0x7fffffffd518;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562d6c *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562d72 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555562d75 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555562d7b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x555555562d81 *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555562d87 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555562d8d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555562d93 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562d99 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562d9f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555562da5 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562dab *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562db1 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555562db7 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562dbd *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562dc3 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562dc9 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562dcf *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562dd5 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555562ddb *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562de1 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562de7 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555562ded *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555562df1 *)
mov rdx r13;
(* mulx   0x547b(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555562df4 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562dfd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555562e00 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555562e06 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x546b(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555562e0c *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562e15 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562e1b *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x545e(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555562e21 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562e2a *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562e30 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x5451(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555562e36 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562e3f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562e45 *)
adcs overflow r12 r12 rbx overflow;
(* adcx   %rax,%r12                                #! PC = 0x555555562e4b *)
adcs carry r12 r12 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd8e0; Value = 0x00010d558f5173b6; PC = 0x555555562e51 *)
mov rdx L0x7fffffffd8e0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555562e55 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %r13,%r13                                #! PC = 0x555555562e5a *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555562e5d *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555562e63 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555562e69 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562e6f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562e75 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555562e7b *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562e81 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562e87 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555562e8d *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562e93 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562e99 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555562e9f *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562ea5 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562eab *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x555555562eb1 *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562eb7 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562ebd *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555562ec3 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562ec9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562ecf *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555562ed5 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rcx),%rdx                          #! EA = L0x7fffffffd520; Value = 0x000fa23e144917e6; PC = 0x555555562ed9 *)
mov rdx L0x7fffffffd520;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562edd *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562ee3 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555562ee6 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555562eec *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x555555562ef2 *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555562ef8 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555562efe *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555562f04 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555562f0a *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555562f10 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555562f16 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555562f1c *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555562f22 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555562f28 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555562f2e *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555562f34 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555562f3a *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555562f40 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555562f46 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555562f4c *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555562f52 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555562f58 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555562f5e *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,(%rcx)                              #! EA = L0x7fffffffd4f0; PC = 0x555555562f63 *)
mov L0x7fffffffd4f0 r15;
(* mov    %r14,%rdx                                #! PC = 0x555555562f66 *)
mov rdx r14;
(* mulx   0x5306(%rip),%r15,%r14        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555562f69 *)
mull r14 r15 L0x555555568278 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555562f73 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555562f79 *)
adcs overflow r10 r10 r14 overflow;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd4f8; PC = 0x555555562f7f *)
mov L0x7fffffffd4f8 r8;
(* mulx   0x52f4(%rip),%r15,%r14        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555562f83 *)
mull r14 r15 L0x555555568280 rdx;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffd500; PC = 0x555555562f8c *)
mov L0x7fffffffd500 r9;
(* adcx   %r15,%r10                                #! PC = 0x555555562f90 *)
adcs carry r10 r10 r15 carry;
(* adox   %r14,%r11                                #! PC = 0x555555562f96 *)
adcs overflow r11 r11 r14 overflow;
(* mov    %r10,0x18(%rcx)                          #! EA = L0x7fffffffd508; PC = 0x555555562f9c *)
mov L0x7fffffffd508 r10;
(* mulx   0x52df(%rip),%r9,%r10        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555562fa0 *)
mull r10 r9 L0x555555568288 rdx;
(* adcx   %r9,%r11                                 #! PC = 0x555555562fab *)
adcs carry r11 r11 r9 carry;
(* adox   %r10,%r12                                #! PC = 0x555555562fb1 *)
adcs overflow r12 r12 r10 overflow;
(* mov    %r11,0x20(%rcx)                          #! EA = L0x7fffffffd510; PC = 0x555555562fb7 *)
mov L0x7fffffffd510 r11;
(* mulx   0x52cc(%rip),%r9,%r10        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555562fbb *)
mull r10 r9 L0x555555568290 rdx;
(* adcx   %r9,%r12                                 #! PC = 0x555555562fc6 *)
adcs carry r12 r12 r9 carry;
(* adox   %r10,%r13                                #! PC = 0x555555562fcc *)
adcs overflow r13 r13 r10 overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555562fd2 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,0x28(%rcx)                          #! EA = L0x7fffffffd518; PC = 0x555555562fd6 *)
mov L0x7fffffffd518 r12;
(* mov    %r13,0x30(%rcx)                          #! EA = L0x7fffffffd520; PC = 0x555555562fda *)
mov L0x7fffffffd520 r13;
(* #! <- SP = 0x7fffffffd4e8 *)
#! 0x7fffffffd4e8 = 0x7fffffffd4e8;
(* #retq                                           #! PC = 0x555555562fe2 *)
#retq                                           #! 0x555555562fe2 = 0x555555562fe2;
(* mov    %r12,%rsi                                #! PC = 0x5555555584b1 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x5555555584b4 *)
mov rdi rbp;
(* #callq  0x5555555622a0 <fp2mul434_c1_mont>      #! PC = 0x5555555584b7 *)
#callq  0x5555555622a0 <fp2mul434_c1_mont>      #! 0x5555555584b7 = 0x5555555584b7;
(* #! -> SP = 0x7fffffffd4e8 *)
#! 0x7fffffffd4e8 = 0x7fffffffd4e8;
(* #jmpq   0x555555562fe3 <fp2mul434_c1_asm>       #! PC = 0x5555555622a4 *)
#jmpq   0x555555562fe3 <fp2mul434_c1_asm>       #! 0x5555555622a4 = 0x5555555622a4;
(* mov    %rdx,%rcx                                #! PC = 0x555555562fe3 *)
mov rcx rdx;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffd8b0; Value = 0x254d450f84202d69; PC = 0x555555562fe6 *)
mov rdx L0x7fffffffd8b0;
(* mulx   0x38(%rdi),%r8,%r9                       #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555562fe9 *)
mull r9 r8 L0x7fffffffd878 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555562fef *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rdi),%r11,%r10                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x555555562ff4 *)
mull r10 r11 L0x7fffffffd880 rdx;
(* adox   %r11,%r9                                 #! PC = 0x555555562ffc *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x48(%rdi),%r12,%r11                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555563002 *)
mull r11 r12 L0x7fffffffd888 rdx;
(* adox   %r12,%r10                                #! PC = 0x55555556300a *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x50(%rdi),%r13,%r12                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555563010 *)
mull r12 r13 L0x7fffffffd890 rdx;
(* adox   %r13,%r11                                #! PC = 0x555555563018 *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x58(%rdi),%r14,%r13                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x55555556301e *)
mull r13 r14 L0x7fffffffd898 rdx;
(* adox   %r14,%r12                                #! PC = 0x555555563025 *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x60(%rdi),%r15,%r14                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x55555556302b *)
mull r14 r15 L0x7fffffffd8a0 rdx;
(* adox   %r15,%r13                                #! PC = 0x555555563032 *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x68(%rdi),%rbx,%r15                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555563038 *)
mull r15 rbx L0x7fffffffd8a8 rdx;
(* adox   %rbx,%r14                                #! PC = 0x55555556303e *)
adcs overflow r14 r14 rbx overflow;
(* adox   %rax,%r15                                #! PC = 0x555555563044 *)
adcs overflow r15 r15 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffd8e8; Value = 0xffefdec24f75d4a3; PC = 0x55555556304a *)
mov rdx L0x7fffffffd8e8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x55555556304e *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563053 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555563056 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x55555556305c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555563062 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563068 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556306e *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555563074 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556307a *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563080 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555563086 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556308c *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563092 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555563098 *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556309e *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555630a4 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x5555555630aa *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555630b0 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555630b6 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x5555555630bc *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555630c2 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555630c8 *)
adcs overflow r15 r15 rbx overflow;
(* adc    $0x0,%r15                                #! PC = 0x5555555630ce *)
adcs carry r15 r15 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r8,%rdx                                 #! PC = 0x5555555630d2 *)
mov rdx r8;
(* mulx   0x519a(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555630d5 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555630de *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x5555555630e1 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x5555555630e7 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x518a(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555630ed *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555630f6 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555630fc *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x517d(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563102 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556310b *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563111 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x5170(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563117 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563120 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563126 *)
adcs overflow r15 r15 rbx overflow;
(* adcx   %rax,%r15                                #! PC = 0x55555556312c *)
adcs carry r15 r15 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffd8b8; Value = 0xe56665a46763f164; PC = 0x555555563132 *)
mov rdx L0x7fffffffd8b8;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555563136 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %r8,%r8                                  #! PC = 0x55555556313c *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x55555556313f *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555563145 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x55555556314b *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563151 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563157 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x55555556315d *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563163 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563169 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x55555556316f *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563175 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556317b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555563181 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563187 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556318d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555563193 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563199 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556319f *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x5555555631a5 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555631ab *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555631b1 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x5555555631b7 *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x40(%rsi),%rdx                          #! EA = L0x7fffffffd8f0; Value = 0x725902266e9cfa7b; PC = 0x5555555631bb *)
mov rdx L0x7fffffffd8f0;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x5555555631bf *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555631c4 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r9                                 #! PC = 0x5555555631c7 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555631cd *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x5555555631d3 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555631d9 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555631df *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x5555555631e5 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555631eb *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555631f1 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x5555555631f7 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555631fd *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563203 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x555555563209 *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556320f *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563215 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x55555556321b *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563221 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563227 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x55555556322d *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563233 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563239 *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x55555556323f *)
adcs carry r8 r8 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x555555563243 *)
mov rdx r9;
(* mulx   0x5029(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563246 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556324f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555563252 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563258 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x5019(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x55555556325e *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563267 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556326d *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x500c(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563273 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556327c *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563282 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4fff(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x555555563288 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563291 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563297 *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %rax,%r8                                 #! PC = 0x55555556329d *)
adcs carry r8 r8 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffd8c0; Value = 0x81bd35201f6cdf17; PC = 0x5555555632a3 *)
mov rdx L0x7fffffffd8c0;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x5555555632a7 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %r9,%r9                                  #! PC = 0x5555555632ad *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x5555555632b0 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x5555555632b6 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x5555555632bc *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555632c2 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555632c8 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x5555555632ce *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555632d4 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555632da *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x5555555632e0 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555632e6 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555632ec *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x5555555632f2 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555632f8 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555632fe *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555563304 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556330a *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563310 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555563316 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556331c *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563322 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x555555563328 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x48(%rsi),%rdx                          #! EA = L0x7fffffffd8f8; Value = 0x52a34e5f50e13232; PC = 0x55555556332c *)
mov rdx L0x7fffffffd8f8;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555563330 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563335 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555563338 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556333e *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555563344 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556334a *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563350 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555563356 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556335c *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563362 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x555555563368 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556336e *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563374 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x55555556337a *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563380 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563386 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x55555556338c *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563392 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563398 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x55555556339e *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555633a4 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555633aa *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x5555555633b0 *)
adcs carry r9 r9 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x5555555633b4 *)
mov rdx r10;
(* mulx   0x4eb8(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x5555555633b7 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555633c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x5555555633c3 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x5555555633c9 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x4ea8(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555633cf *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555633d8 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555633de *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4e9b(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555633e4 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555633ed *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555633f3 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4e8e(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555633f9 *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563402 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563408 *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %rax,%r9                                 #! PC = 0x55555556340e *)
adcs carry r9 r9 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffd8c8; Value = 0x36b2c3b918a70e12; PC = 0x555555563414 *)
mov rdx L0x7fffffffd8c8;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555563418 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %r10,%r10                                #! PC = 0x55555556341e *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x555555563421 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x555555563427 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x55555556342d *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563433 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555563439 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x55555556343f *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555563445 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x55555556344b *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555563451 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563457 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556345d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555563463 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563469 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556346f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555563475 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556347b *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563481 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555563487 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556348d *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563493 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555563499 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x50(%rsi),%rdx                          #! EA = L0x7fffffffd900; Value = 0x03a71ab8c369fe1a; PC = 0x55555556349d *)
mov rdx L0x7fffffffd900;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x5555555634a1 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555634a6 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r11                                #! PC = 0x5555555634a9 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x5555555634af *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x5555555634b5 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555634bb *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555634c1 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x5555555634c7 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555634cd *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555634d3 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x5555555634d9 *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555634df *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555634e5 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x5555555634eb *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555634f1 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555634f7 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x5555555634fd *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563503 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563509 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x55555556350f *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563515 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556351b *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x555555563521 *)
adcs carry r10 r10 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555563525 *)
mov rdx r11;
(* mulx   0x4d47(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563528 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563531 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555563534 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556353a *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x4d37(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563540 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563549 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556354f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4d2a(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563555 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556355e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563564 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4d1d(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x55555556356a *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563573 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563579 *)
adcs overflow r10 r10 rbx overflow;
(* adcx   %rax,%r10                                #! PC = 0x55555556357f *)
adcs carry r10 r10 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffd8d0; Value = 0x9e1daa21200173ae; PC = 0x555555563585 *)
mov rdx L0x7fffffffd8d0;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x555555563589 *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %r11,%r11                                #! PC = 0x55555556358f *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x555555563592 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563598 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x55555556359e *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555635a4 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555635aa *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x5555555635b0 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x5555555635b6 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555635bc *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x5555555635c2 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555635c8 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555635ce *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x5555555635d4 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555635da *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555635e0 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x5555555635e6 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555635ec *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555635f2 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x5555555635f8 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555635fe *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563604 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x55555556360a *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x58(%rsi),%rdx                          #! EA = L0x7fffffffd908; Value = 0x7aa1ccd7d940c358; PC = 0x55555556360e *)
mov rdx L0x7fffffffd908;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555563612 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563617 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r12                                #! PC = 0x55555556361a *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x555555563620 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555563626 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556362c *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555563632 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x555555563638 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556363e *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555563644 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x55555556364a *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563650 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563656 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x55555556365c *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563662 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563668 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x55555556366e *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563674 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x55555556367a *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555563680 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563686 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556368c *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555563692 *)
adcs carry r11 r11 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555563696 *)
mov rdx r12;
(* mulx   0x4bd6(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x555555563699 *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555636a2 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r15                                #! PC = 0x5555555636a5 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x5555555636ab *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x4bc6(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x5555555636b1 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555636ba *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555636c0 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4bb9(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555636c6 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555636cf *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555636d5 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4bac(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555636db *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555636e4 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555636ea *)
adcs overflow r11 r11 rbx overflow;
(* adcx   %rax,%r11                                #! PC = 0x5555555636f0 *)
adcs carry r11 r11 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffd8d8; Value = 0xd7cf7d2844888be7; PC = 0x5555555636f6 *)
mov rdx L0x7fffffffd8d8;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x5555555636fa *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %r12,%r12                                #! PC = 0x555555563700 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x555555563703 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563709 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x55555556370f *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555563715 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556371b *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555563721 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563727 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556372d *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x555555563733 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563739 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556373f *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x555555563745 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556374b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563751 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x555555563757 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x55555556375d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563763 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x555555563769 *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x55555556376f *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555563775 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x55555556377b *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x60(%rsi),%rdx                          #! EA = L0x7fffffffd910; Value = 0x2053d72df63c9836; PC = 0x55555556377f *)
mov rdx L0x7fffffffd910;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x555555563783 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563788 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r13                                #! PC = 0x55555556378b *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555563791 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555563797 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556379d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x5555555637a3 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x5555555637a9 *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x5555555637af *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555637b5 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x5555555637bb *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555637c1 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555637c7 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x5555555637cd *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555637d3 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555637d9 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x5555555637df *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555637e5 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555637eb *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x5555555637f1 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555637f7 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555637fd *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555563803 *)
adcs carry r12 r12 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555563807 *)
mov rdx r13;
(* mulx   0x4a65(%rip),%rbp,%rbx        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x55555556380a *)
mull rbx rbp L0x555555568278 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555563813 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r8                                 #! PC = 0x555555563816 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x55555556381c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x4a55(%rip),%rbp,%rbx        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563822 *)
mull rbx rbp L0x555555568280 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x55555556382b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563831 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x4a48(%rip),%rbp,%rbx        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x555555563837 *)
mull rbx rbp L0x555555568288 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563840 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555563846 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x4a3b(%rip),%rbp,%rbx        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x55555556384c *)
mull rbx rbp L0x555555568290 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563855 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556385b *)
adcs overflow r12 r12 rbx overflow;
(* adcx   %rax,%r12                                #! PC = 0x555555563861 *)
adcs carry r12 r12 rax carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffd8e0; Value = 0x00010d558f5173b6; PC = 0x555555563867 *)
mov rdx L0x7fffffffd8e0;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd878; Value = 0x8c61d70138480051; PC = 0x55555556386b *)
mull rbx rbp L0x7fffffffd878 rdx;
(* xor    %r13,%r13                                #! PC = 0x555555563871 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x555555563874 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x55555556387a *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x40(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd880; Value = 0x69f1bcb80cd1b4b7; PC = 0x555555563880 *)
mull rbx rbp L0x7fffffffd880 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555563886 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556388c *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x48(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd888; Value = 0xe7ccd1b09f0a9c00; PC = 0x555555563892 *)
mull rbx rbp L0x7fffffffd888 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563898 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x55555556389e *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x50(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd890; Value = 0x0b290a92b4ca335f; PC = 0x5555555638a4 *)
mull rbx rbp L0x7fffffffd890 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555638aa *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555638b0 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x58(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd898; Value = 0x35b566b83e165846; PC = 0x5555555638b6 *)
mull rbx rbp L0x7fffffffd898 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555638bc *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555638c2 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x60(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a0; Value = 0xbdd5b4771e545884; PC = 0x5555555638c8 *)
mull rbx rbp L0x7fffffffd8a0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555638ce *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555638d4 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x68(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd8a8; Value = 0x0000d563aaffd71d; PC = 0x5555555638da *)
mull rbx rbp L0x7fffffffd8a8 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555638e0 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555638e6 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x5555555638ec *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x68(%rsi),%rdx                          #! EA = L0x7fffffffd918; Value = 0x0001febb2472823d; PC = 0x5555555638f0 *)
mov rdx L0x7fffffffd918;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffd840; Value = 0x4350d897eb938fb1; PC = 0x5555555638f4 *)
mull rbx rbp L0x7fffffffd840 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555638f9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adox   %rbp,%r14                                #! PC = 0x5555555638fc *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555563902 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffd848; Value = 0x4c17ee226a17abd8; PC = 0x555555563908 *)
mull rbx rbp L0x7fffffffd848 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556390e *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555563914 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd850; Value = 0x277c2127655a5018; PC = 0x55555556391a *)
mull rbx rbp L0x7fffffffd850 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555563920 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555563926 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd858; Value = 0x96d6d2f6a170d757; PC = 0x55555556392c *)
mull rbx rbp L0x7fffffffd858 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555563932 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555563938 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd860; Value = 0x2a039e3faeaf550c; PC = 0x55555556393e *)
mull rbx rbp L0x7fffffffd860 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555563944 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x55555556394a *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd868; Value = 0xd07756a2612e5fd9; PC = 0x555555563950 *)
mull rbx rbp L0x7fffffffd868 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555563956 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x55555556395c *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffd870; Value = 0x00013d3a90c3437c; PC = 0x555555563962 *)
mull rbx rbp L0x7fffffffd870 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555563968 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x55555556396e *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555563974 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,(%rcx)                              #! EA = L0x7fffffffd9c8; PC = 0x555555563979 *)
mov L0x7fffffffd9c8 r15;
(* mov    %r14,%rdx                                #! PC = 0x55555556397c *)
mov rdx r14;
(* mulx   0x48f0(%rip),%r15,%r14        # 0x555555568278 <p434p1+24>#! EA = L0x555555568278; Value = 0xfdc1767ae3000000; PC = 0x55555556397f *)
mull r14 r15 L0x555555568278 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555563989 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x55555556398f *)
adcs overflow r10 r10 r14 overflow;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd9d0; PC = 0x555555563995 *)
mov L0x7fffffffd9d0 r8;
(* mulx   0x48de(%rip),%r15,%r14        # 0x555555568280 <p434p1+32>#! EA = L0x555555568280; Value = 0x7bc65c783158aea3; PC = 0x555555563999 *)
mull r14 r15 L0x555555568280 rdx;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffd9d8; PC = 0x5555555639a2 *)
mov L0x7fffffffd9d8 r9;
(* adcx   %r15,%r10                                #! PC = 0x5555555639a6 *)
adcs carry r10 r10 r15 carry;
(* adox   %r14,%r11                                #! PC = 0x5555555639ac *)
adcs overflow r11 r11 r14 overflow;
(* mov    %r10,0x18(%rcx)                          #! EA = L0x7fffffffd9e0; PC = 0x5555555639b2 *)
mov L0x7fffffffd9e0 r10;
(* mulx   0x48c9(%rip),%r9,%r10        # 0x555555568288 <p434p1+40>#! EA = L0x555555568288; Value = 0x6cfc5fd681c52056; PC = 0x5555555639b6 *)
mull r10 r9 L0x555555568288 rdx;
(* adcx   %r9,%r11                                 #! PC = 0x5555555639c1 *)
adcs carry r11 r11 r9 carry;
(* adox   %r10,%r12                                #! PC = 0x5555555639c7 *)
adcs overflow r12 r12 r10 overflow;
(* mov    %r11,0x20(%rcx)                          #! EA = L0x7fffffffd9e8; PC = 0x5555555639cd *)
mov L0x7fffffffd9e8 r11;
(* mulx   0x48b6(%rip),%r9,%r10        # 0x555555568290 <p434p1+48>#! EA = L0x555555568290; Value = 0x0002341f27177344; PC = 0x5555555639d1 *)
mull r10 r9 L0x555555568290 rdx;
(* adcx   %r9,%r12                                 #! PC = 0x5555555639dc *)
adcs carry r12 r12 r9 carry;
(* adox   %r10,%r13                                #! PC = 0x5555555639e2 *)
adcs overflow r13 r13 r10 overflow;
(* adc    $0x0,%r13                                #! PC = 0x5555555639e8 *)
adcs carry r13 r13 0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,0x28(%rcx)                          #! EA = L0x7fffffffd9f0; PC = 0x5555555639ec *)
mov L0x7fffffffd9f0 r12;
(* mov    %r13,0x30(%rcx)                          #! EA = L0x7fffffffd9f8; PC = 0x5555555639f0 *)
mov L0x7fffffffd9f8 r13;
(* #! <- SP = 0x7fffffffd4e8 *)
#! 0x7fffffffd4e8 = 0x7fffffffd4e8;
(* #retq                                           #! PC = 0x5555555639f8 *)
#retq                                           #! 0x5555555639f8 = 0x5555555639f8;
(* mov    0x30(%rsp),%rax                          #! EA = L0x7fffffffd520; Value = 0x0000c24ed998ad87; PC = 0x5555555584bc *)
mov rax L0x7fffffffd520;
(* vmovdqa64 (%rsp),%xmm0                          #! EA = L0x7fffffffd4f0; Value = 0x324c10af1f69569a; PC = 0x5555555584c1 *)
mov xmm0_L L0x7fffffffd4f0;
mov xmm0_H L0x7fffffffd4f8;
(* mov    %rax,0x30(%rbx)                          #! EA = L0x7fffffffd9c0; PC = 0x5555555584c8 *)
mov L0x7fffffffd9c0 rax;
(* vmovdqa64 0x10(%rsp),%xmm1                      #! EA = L0x7fffffffd500; Value = 0x83da5050a3930c70; PC = 0x5555555584cc *)
mov xmm1_L L0x7fffffffd500;
mov xmm1_H L0x7fffffffd508;
(* vmovdqa64 0x20(%rsp),%xmm2                      #! EA = L0x7fffffffd510; Value = 0xa48647d30ad332c3; PC = 0x5555555584d4 *)
mov xmm2_L L0x7fffffffd510;
mov xmm2_H L0x7fffffffd518;
(* vmovups %xmm0,(%rbx)                            #! EA = L0x7fffffffd990; PC = 0x5555555584dc *)
mov L0x7fffffffd990 xmm0_L;
mov L0x7fffffffd998 xmm0_H;
(* vmovups %xmm1,0x10(%rbx)                        #! EA = L0x7fffffffd9a0; PC = 0x5555555584e0 *)
mov L0x7fffffffd9a0 xmm1_L;
mov L0x7fffffffd9a8 xmm1_H;
(* vmovups %xmm2,0x20(%rbx)                        #! EA = L0x7fffffffd9b0; PC = 0x5555555584e5 *)
mov L0x7fffffffd9b0 xmm2_L;
mov L0x7fffffffd9b8 xmm2_H;
(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffd528; Value = 0x8a804b085d1f3c00; PC = 0x5555555584ea *)
mov rax L0x7fffffffd528;
(* xor    %fs:0x28,%rax                            #! PC = 0x5555555584ef *)
xor rax@uint64 rax fs0x28;
(* #jne    0x555555558503 <fp2mul434_mont+131>     #! PC = 0x5555555584f8 *)
#jne    0x555555558503 <fp2mul434_mont+131>     #! 0x5555555584f8 = 0x5555555584f8;
(* add    $0x40,%rsp                               #! PC = 0x5555555584fa *)
adds carry rsp rsp 0x40@uint64;
(* #! <- SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* #retq                                           #! PC = 0x555555558502 *)
#retq                                           #! 0x555555558502 = 0x555555558502;

(* ===== Outputs ===== *)

mov c00 L0x7fffffffd990;
mov c01 L0x7fffffffd998;
mov c02 L0x7fffffffd9a0;
mov c03 L0x7fffffffd9a8;
mov c04 L0x7fffffffd9b0;
mov c05 L0x7fffffffd9b8;
mov c06 L0x7fffffffd9c0;

mov c10 L0x7fffffffd9c8;
mov c11 L0x7fffffffd9d0;
mov c12 L0x7fffffffd9d8;
mov c13 L0x7fffffffd9e0;
mov c14 L0x7fffffffd9e8;
mov c15 L0x7fffffffd9f0;
mov c16 L0x7fffffffd9f8;

ghost i@uint64 : true && true;

{
  and [
    eqmod ((limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c00, c01, c02, c03, c04, c05, c06 ]) + (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16 ]) * i)
          (
            ((limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ]) + (limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ]) * i)
            *
            ((limbs 64 [ b00, b01, b02, b03, b04, b05, b06 ]) + (limbs 64 [ b10, b11, b12, b13, b14, b15, b16 ]) * i)
          )
          [i**2 + 1, limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ]],
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c00, c01, c02, c03, c04, c05, c06])
          (
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ])
              *
              (limbs 64 [ b00, b01, b02, b03, b04, b05, b06 ]) )
            -
            ( (limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ])
              *
              (limbs 64 [ b10, b11, b12, b13, b14, b15, b16 ]) )
          )
          (limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ]),
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, c10, c11, c12, c13, c14, c15, c16])
          (
            ( (limbs 64 [ a00, a01, a02, a03, a04, a05, a06 ])
              *
              (limbs 64 [ b10, b11, b12, b13, b14, b15, b16 ]) )
            +
            ( (limbs 64 [ a10, a11, a12, a13, a14, a15, a16 ])
              *
              (limbs 64 [ b00, b01, b02, b03, b04, b05, b06 ]) )
          )
          (limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ])
  ]
  &&
  and [
    limbs 64 [ c00, c01, c02, c03, c04, c05, c06 ] <=u
        (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                            $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448),
    limbs 64 [ c10, c11, c12, c13, c14, c15, c16 ] <=u
        (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                            $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
  ]
}

