(*
by: x86_64> cv -v -isafety -isafety_timeout 14400 -jobs 4 -slicing -no_carry_constraint fp2mul434_c0_mont.cl
Parsing CryptoLine file:		[OK]		0.005070 seconds
Checking well-formedness:		[OK]		0.000924 seconds
Transforming to SSA form:		[OK]		0.000557 seconds
Normalizing specification:		[OK]		0.000651 seconds
Rewriting assignments:			[OK]		0.000411 seconds
Verifying program safety:		
	 Cut 0
	     Round 1 (0 safety conditions, timeout = 14400 seconds)
	 Overall			[OK]		0.000538 seconds
Verifying range assertions:		[OK]		30.747111 seconds
Verifying range specification:		[OK]		4.476871 seconds
Rewriting value-preserved casting:	[OK]		0.000033 seconds
Verifying algebraic assertions:		[OK]		0.002068 seconds
Verifying algebraic specification:	[OK]		0.118366 seconds
Verification result:			[OK]		35.353106 seconds
*)


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

const p434x8_0 = 0xfffffffffffffff8
const p434x8_1 = 0xffffffffffffffff
const p434x8_2 = 0xffffffffffffffff
const p434x8_3 = 0xee0bb3d717ffffff
const p434x8_4 = 0xde32e3c18ac5751f
const p434x8_5 = 0x67e2feb40e2902b3
const p434x8_6 = 0x0011a0f938bb9a23

const p434p1_0 = 0x0000000000000000
const p434p1_1 = 0x0000000000000000
const p434p1_2 = 0x0000000000000000
const p434p1_3 = 0xFDC1767AE3000000
const p434p1_4 = 0x7BC65C783158AEA3
const p434p1_5 = 0x6CFC5FD681C52056
const p434p1_6 = 0x0002341f27177344

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

(* ===== Program ===== *)


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
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
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
adcs carry r15 r15 0x0@uint64 carry;
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
adcs carry r8 r8 0x0@uint64 carry;
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
adcs carry r8 r8 0x0@uint64 carry;
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
adcs carry r9 r9 0x0@uint64 carry;
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
adcs carry r9 r9 0x0@uint64 carry;
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
adcs carry r10 r10 0x0@uint64 carry;
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
adcs carry r10 r10 0x0@uint64 carry;
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
adcs carry r11 r11 0x0@uint64 carry;
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
adcs carry r11 r11 0x0@uint64 carry;
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
adcs carry r12 r12 0x0@uint64 carry;
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
adcs carry r12 r12 0x0@uint64 carry;
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
adcs carry r13 r13 0x0@uint64 carry;
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
adcs carry r13 r13 0x0@uint64 carry;
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
adcs carry r13 r13 0x0@uint64 carry;
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

mov c00 L0x7fffffffd4f0;
mov c01 L0x7fffffffd4f8;
mov c02 L0x7fffffffd500;
mov c03 L0x7fffffffd508;
mov c04 L0x7fffffffd510;
mov c05 L0x7fffffffd518;
mov c06 L0x7fffffffd520;


{
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
        (limbs 64 [ $p434_0, $p434_1, $p434_2, $p434_3, $p434_4, $p434_5, $p434_6 ])
  &&
  limbs 64 [ c00, c01, c02, c03, c04, c05, c06 ] <=u
      (2@448 * limbs 64 [ $p434_0@64, $p434_1@64, $p434_2@64, $p434_3@64,
                          $p434_4@64, $p434_5@64, $p434_6@64 ] - 1@448)
}


