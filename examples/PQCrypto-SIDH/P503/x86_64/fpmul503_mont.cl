(* The output is much smaller than 2*p503 - 1. *)
(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fpmul503_mont.cl
Parsing Cryptoline file:                [OK]            0.008673 seconds
Checking well-formedness:               [OK]            0.000830 seconds
Transforming to SSA form:               [OK]            0.000277 seconds
Normalizing specification:              [OK]            0.000634 seconds
Rewriting assignments:                  [OK]            0.000279 seconds
Verifying program safety:
         Cut 0
             Round 1 (0 safety conditions, timeout = 14400 seconds)
         Overall                        [OK]            0.000096 seconds
Verifying range assertions:             [OK]            7.781033 seconds
Verifying range specification:          [OK]            7.742570 seconds
Rewriting value-preserved casting:      [OK]            0.000109 seconds
Verifying algebraic assertions:         [OK]            0.000870 seconds
Verifying algebraic specification:      [OK]            0.206199 seconds
Verification result:                    [OK]            15.742310 seconds
*)


(*
const uint64_t p503[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xABFFFFFFFFFFFFFF,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
const uint64_t p503p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xAC00000000000000,
                                                     0x13085BDA2211E7A0, 0x1B9BF6C87B7E7DAF, 0x6045C6BDDA77A4D0, 0x004066F541811E1E };
*)

const p503_0 = 0xFFFFFFFFFFFFFFFF
const p503_1 = 0xFFFFFFFFFFFFFFFF
const p503_2 = 0xFFFFFFFFFFFFFFFF
const p503_3 = 0xABFFFFFFFFFFFFFF
const p503_4 = 0x13085BDA2211E7A0
const p503_5 = 0x1B9BF6C87B7E7DAF
const p503_6 = 0x6045C6BDDA77A4D0
const p503_7 = 0x004066F541811E1E
const p503p1_0 = 0x0000000000000000
const p503p1_1 = 0x0000000000000000
const p503p1_2 = 0x0000000000000000
const p503p1_3 = 0xAC00000000000000
const p503p1_4 = 0x13085BDA2211E7A0
const p503p1_5 = 0x1B9BF6C87B7E7DAF
const p503p1_6 = 0x6045C6BDDA77A4D0
const p503p1_7 = 0x004066F541811E1E

proc main (a0@uint64, a1@uint64, a2@uint64, a3@uint64, a4@uint64, a5@uint64, a6@uint64, a7@uint64,
           b0@uint64, b1@uint64, b2@uint64, b3@uint64, b4@uint64, b5@uint64, b6@uint64, b7@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512),
    limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
  ]
}

(* ===== Initialization ===== *)

mov L0x7fffffffde20 a0;
mov L0x7fffffffde28 a1;
mov L0x7fffffffde30 a2;
mov L0x7fffffffde38 a3;
mov L0x7fffffffde40 a4;
mov L0x7fffffffde48 a5;
mov L0x7fffffffde50 a6;
mov L0x7fffffffde58 a7;
mov L0x7fffffffde60 b0;
mov L0x7fffffffde68 b1;
mov L0x7fffffffde70 b2;
mov L0x7fffffffde78 b3;
mov L0x7fffffffde80 b4;
mov L0x7fffffffde88 b5;
mov L0x7fffffffde90 b6;
mov L0x7fffffffde98 b7;

mov L0x555555569358 $p503p1_3@uint64;
mov L0x555555569360 $p503p1_4@uint64;
mov L0x555555569368 $p503p1_5@uint64;
mov L0x555555569370 $p503p1_6@uint64;
mov L0x555555569378 $p503p1_7@uint64;

nondet rdx@uint64;

(* ===== Program ===== *)

(* #! -> SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #jmpq   0x555555562570 <fpmul503>               #! PC = 0x5555555582e4 *)
#jmpq   0x555555562570 <fpmul503>               #! 0x5555555582e4 = 0x5555555582e4;
(* #jmpq   0x5555555655c7 <fpmul503_asm>           #! PC = 0x555555562574 *)
#jmpq   0x5555555655c7 <fpmul503_asm>           #! 0x555555562574 = 0x555555562574;
(* mov    %rdx,%rcx                                #! PC = 0x5555555655c7 *)
mov rcx rdx;
(* mov    (%rsi),%rdx                              #! EA = L0x7fffffffde60; Value = 0xe8764326b5539b16; PC = 0x5555555655ca *)
mov rdx L0x7fffffffde60;
(* mulx   (%rdi),%r8,%r9                           #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x5555555655cd *)
mull r9 r8 L0x7fffffffde20 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555655d4 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x8(%rdi),%r11,%r10                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x5555555655d7 *)
mull r10 r11 L0x7fffffffde28 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555655df *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x10(%rdi),%r12,%r11                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x5555555655e5 *)
mull r11 r12 L0x7fffffffde30 rdx;
(* adox   %r12,%r10                                #! PC = 0x5555555655ed *)
adcs overflow r10 r10 r12 overflow;
(* mulx   0x18(%rdi),%r13,%r12                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x5555555655f3 *)
mull r12 r13 L0x7fffffffde38 rdx;
(* adox   %r13,%r11                                #! PC = 0x5555555655fb *)
adcs overflow r11 r11 r13 overflow;
(* mulx   0x20(%rdi),%r14,%r13                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565601 *)
mull r13 r14 L0x7fffffffde40 rdx;
(* adox   %r14,%r12                                #! PC = 0x555555565608 *)
adcs overflow r12 r12 r14 overflow;
(* mulx   0x28(%rdi),%r15,%r14                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x55555556560e *)
mull r14 r15 L0x7fffffffde48 rdx;
(* adox   %r15,%r13                                #! PC = 0x555555565615 *)
adcs overflow r13 r13 r15 overflow;
(* mulx   0x30(%rdi),%rbx,%r15                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x55555556561b *)
mull r15 rbx L0x7fffffffde50 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555565621 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x555555565627 *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adox   %rbp,%r15                                #! PC = 0x55555556562d *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555565633 *)
adcs overflow rax rax rbx overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r8,%rdx                                 #! PC = 0x555555565639 *)
mov rdx r8;
(* xor    %rbx,%rbx                                #! PC = 0x55555556563c *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3d10(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556563f *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r11                                #! PC = 0x555555565648 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x55555556564e *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x3d03(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565654 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x55555556565d *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565663 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3cf6(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565669 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565672 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565678 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3ce9(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556567e *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565687 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556568d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3cdc(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565693 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556569c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x5555555656a2 *)
adcs overflow rax rax rbx overflow;
(* adc    $0x0,%rax                                #! PC = 0x5555555656a8 *)
adcs carry rax rax 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x8(%rsi),%rdx                           #! EA = L0x7fffffffde68; Value = 0x560f592b7803dde8; PC = 0x5555555656ac *)
mov rdx L0x7fffffffde68;
(* xor    %r8,%r8                                  #! PC = 0x5555555656b0 *)
mov r8 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x5555555656b3 *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x5555555656b8 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555656be *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x5555555656c4 *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x5555555656ca *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x5555555656d0 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x5555555656d6 *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555656dc *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555656e2 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x5555555656e8 *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555656ee *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555656f4 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x5555555656fa *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565700 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565706 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x55555556570c *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565712 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565718 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x55555556571e *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565724 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556572a *)
adcs overflow rax rax rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x555555565730 *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565736 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556573c *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x555555565742 *)
adcs carry r8 r8 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r9,%rdx                                 #! PC = 0x555555565746 *)
mov rdx r9;
(* xor    %rbx,%rbx                                #! PC = 0x555555565749 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3c03(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x55555556574c *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555565755 *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x55555556575b *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3bf6(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565761 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x55555556576a *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565770 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3be9(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565776 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556577f *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565785 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3bdc(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x55555556578b *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565794 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556579a *)
adcs overflow rax rax rbx overflow;
(* mulx   0x3bcf(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x5555555657a0 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555657a9 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555657af *)
adcs overflow r8 r8 rbx overflow;
(* adc    $0x0,%r8                                 #! PC = 0x5555555657b5 *)
adcs carry r8 r8 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x10(%rsi),%rdx                          #! EA = L0x7fffffffde70; Value = 0xce6ee8344c88f93e; PC = 0x5555555657b9 *)
mov rdx L0x7fffffffde70;
(* xor    %r9,%r9                                  #! PC = 0x5555555657bd *)
mov r9 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x5555555657c0 *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r10                                #! PC = 0x5555555657c5 *)
adcs overflow r10 r10 rbp overflow;
(* adox   %rbx,%r11                                #! PC = 0x5555555657cb *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x5555555657d1 *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x5555555657d7 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x5555555657dd *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x5555555657e3 *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555657e9 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555657ef *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x5555555657f5 *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555657fb *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565801 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565807 *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x55555556580d *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565813 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x555555565819 *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556581f *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555565825 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x55555556582b *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565831 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565837 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x55555556583d *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565843 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565849 *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x55555556584f *)
adcs carry r9 r9 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r10,%rdx                                #! PC = 0x555555565853 *)
mov rdx r10;
(* xor    %rbx,%rbx                                #! PC = 0x555555565856 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3af6(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555565859 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555565862 *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555565868 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x3ae9(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556586e *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565877 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556587d *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x3adc(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565883 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556588c *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555565892 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x3acf(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555565898 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x5555555658a1 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x5555555658a7 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x3ac2(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x5555555658ad *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555658b6 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555658bc *)
adcs overflow r9 r9 rbx overflow;
(* adc    $0x0,%r9                                 #! PC = 0x5555555658c2 *)
adcs carry r9 r9 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x18(%rsi),%rdx                          #! EA = L0x7fffffffde78; Value = 0x07a82c46a8dcedf5; PC = 0x5555555658c6 *)
mov rdx L0x7fffffffde78;
(* xor    %r10,%r10                                #! PC = 0x5555555658ca *)
mov r10 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x5555555658cd *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r11                                #! PC = 0x5555555658d2 *)
adcs overflow r11 r11 rbp overflow;
(* adox   %rbx,%r12                                #! PC = 0x5555555658d8 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x5555555658de *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x5555555658e4 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x5555555658ea *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x5555555658f0 *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555658f6 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555658fc *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x555555565902 *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565908 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x55555556590e *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565914 *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x55555556591a *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555565920 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x555555565926 *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x55555556592c *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565932 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x555555565938 *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556593e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565944 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x55555556594a *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565950 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565956 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x55555556595c *)
adcs carry r10 r10 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r11,%rdx                                #! PC = 0x555555565960 *)
mov rdx r11;
(* xor    %rbx,%rbx                                #! PC = 0x555555565963 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x39e9(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555565966 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r14                                #! PC = 0x55555556596f *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555565975 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x39dc(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x55555556597b *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565984 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x55555556598a *)
adcs overflow rax rax rbx overflow;
(* mulx   0x39cf(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565990 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565999 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x55555556599f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x39c2(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x5555555659a5 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555659ae *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x5555555659b4 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x39b5(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x5555555659ba *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x5555555659c3 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x5555555659c9 *)
adcs overflow r10 r10 rbx overflow;
(* adc    $0x0,%r10                                #! PC = 0x5555555659cf *)
adcs carry r10 r10 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x20(%rsi),%rdx                          #! EA = L0x7fffffffde80; Value = 0x97cd458d20611d9c; PC = 0x5555555659d3 *)
mov rdx L0x7fffffffde80;
(* xor    %r11,%r11                                #! PC = 0x5555555659d7 *)
mov r11 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x5555555659da *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555659df *)
adcs overflow r12 r12 rbp overflow;
(* adox   %rbx,%r13                                #! PC = 0x5555555659e5 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x5555555659eb *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x5555555659f1 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x5555555659f7 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x5555555659fd *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565a03 *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565a09 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x555555565a0f *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565a15 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555565a1b *)
adcs overflow rax rax rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565a21 *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565a27 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565a2d *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x555555565a33 *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565a39 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565a3f *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x555555565a45 *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565a4b *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565a51 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x555555565a57 *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565a5d *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565a63 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555565a69 *)
adcs carry r11 r11 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r12,%rdx                                #! PC = 0x555555565a6d *)
mov rdx r12;
(* xor    %rbx,%rbx                                #! PC = 0x555555565a70 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x38dc(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555565a73 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r15                                #! PC = 0x555555565a7c *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555565a82 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x38cf(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565a88 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565a91 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565a97 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x38c2(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565a9d *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565aa6 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565aac *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x38b5(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555565ab2 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565abb *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565ac1 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x38a8(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565ac7 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565ad0 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565ad6 *)
adcs overflow r11 r11 rbx overflow;
(* adc    $0x0,%r11                                #! PC = 0x555555565adc *)
adcs carry r11 r11 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x28(%rsi),%rdx                          #! EA = L0x7fffffffde88; Value = 0x1bc7e63a695b54e1; PC = 0x555555565ae0 *)
mov rdx L0x7fffffffde88;
(* xor    %r12,%r12                                #! PC = 0x555555565ae4 *)
mov r12 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x555555565ae7 *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r13                                #! PC = 0x555555565aec *)
adcs overflow r13 r13 rbp overflow;
(* adox   %rbx,%r14                                #! PC = 0x555555565af2 *)
adcs overflow r14 r14 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x555555565af8 *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%r14                                #! PC = 0x555555565afe *)
adcs carry r14 r14 rbp carry;
(* adox   %rbx,%r15                                #! PC = 0x555555565b04 *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x555555565b0a *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565b10 *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555565b16 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x555555565b1c *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565b22 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565b28 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565b2e *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565b34 *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565b3a *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x555555565b40 *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565b46 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565b4c *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x555555565b52 *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565b58 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565b5e *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x555555565b64 *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565b6a *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565b70 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555565b76 *)
adcs carry r12 r12 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r13,%rdx                                #! PC = 0x555555565b7a *)
mov rdx r13;
(* xor    %rbx,%rbx                                #! PC = 0x555555565b7d *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x37cf(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555565b80 *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%rax                                #! PC = 0x555555565b89 *)
adcs overflow rax rax rbp overflow;
(* adox   %rbx,%r8                                 #! PC = 0x555555565b8f *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x37c2(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565b95 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565b9e *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565ba4 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x37b5(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565baa *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565bb3 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565bb9 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x37a8(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555565bbf *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565bc8 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565bce *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x379b(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565bd4 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565bdd *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565be3 *)
adcs overflow r12 r12 rbx overflow;
(* adc    $0x0,%r12                                #! PC = 0x555555565be9 *)
adcs carry r12 r12 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x30(%rsi),%rdx                          #! EA = L0x7fffffffde90; Value = 0xf0fcd7e118c4a63a; PC = 0x555555565bed *)
mov rdx L0x7fffffffde90;
(* xor    %r13,%r13                                #! PC = 0x555555565bf1 *)
mov r13 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x555555565bf4 *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r14                                #! PC = 0x555555565bf9 *)
adcs overflow r14 r14 rbp overflow;
(* adox   %rbx,%r15                                #! PC = 0x555555565bff *)
adcs overflow r15 r15 rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x555555565c05 *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%r15                                #! PC = 0x555555565c0b *)
adcs carry r15 r15 rbp carry;
(* adox   %rbx,%rax                                #! PC = 0x555555565c11 *)
adcs overflow rax rax rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x555555565c17 *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565c1d *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565c23 *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x555555565c29 *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565c2f *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565c35 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565c3b *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565c41 *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565c47 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x555555565c4d *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565c53 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565c59 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x555555565c5f *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565c65 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565c6b *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x555555565c71 *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565c77 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565c7d *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555565c83 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r14,%rdx                                #! PC = 0x555555565c87 *)
mov rdx r14;
(* xor    %rbx,%rbx                                #! PC = 0x555555565c8a *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x36c2(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555565c8d *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r8                                 #! PC = 0x555555565c96 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555565c9c *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x36b5(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565ca2 *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565cab *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565cb1 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x36a8(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565cb7 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565cc0 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565cc6 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x369b(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555565ccc *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565cd5 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565cdb *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x368e(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565ce1 *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565cea *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565cf0 *)
adcs overflow r13 r13 rbx overflow;
(* adc    $0x0,%r13                                #! PC = 0x555555565cf6 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffde98; Value = 0x001257d8e49bf74e; PC = 0x555555565cfa *)
mov rdx L0x7fffffffde98;
(* xor    %r14,%r14                                #! PC = 0x555555565cfe *)
mov r14 0@uint64;
clear carry;
clear overflow;
(* mulx   (%rdi),%rbp,%rbx                         #! EA = L0x7fffffffde20; Value = 0x3171ab91449d48d0; PC = 0x555555565d01 *)
mull rbx rbp L0x7fffffffde20 rdx;
(* adox   %rbp,%r15                                #! PC = 0x555555565d06 *)
adcs overflow r15 r15 rbp overflow;
(* adox   %rbx,%rax                                #! PC = 0x555555565d0c *)
adcs overflow rax rax rbx overflow;
(* mulx   0x8(%rdi),%rbp,%rbx                      #! EA = L0x7fffffffde28; Value = 0xd15d010759e0e659; PC = 0x555555565d12 *)
mull rbx rbp L0x7fffffffde28 rdx;
(* adcx   %rbp,%rax                                #! PC = 0x555555565d18 *)
adcs carry rax rax rbp carry;
(* adox   %rbx,%r8                                 #! PC = 0x555555565d1e *)
adcs overflow r8 r8 rbx overflow;
(* mulx   0x10(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde30; Value = 0x4d95201dd9590806; PC = 0x555555565d24 *)
mull rbx rbp L0x7fffffffde30 rdx;
(* adcx   %rbp,%r8                                 #! PC = 0x555555565d2a *)
adcs carry r8 r8 rbp carry;
(* adox   %rbx,%r9                                 #! PC = 0x555555565d30 *)
adcs overflow r9 r9 rbx overflow;
(* mulx   0x18(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde38; Value = 0x27f933abbddc4698; PC = 0x555555565d36 *)
mull rbx rbp L0x7fffffffde38 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565d3c *)
adcs carry r9 r9 rbp carry;
(* adox   %rbx,%r10                                #! PC = 0x555555565d42 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x20(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde40; Value = 0x38ea5a3e499db4dc; PC = 0x555555565d48 *)
mull rbx rbp L0x7fffffffde40 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565d4e *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565d54 *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x28(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde48; Value = 0x9d5fb09e9f40c694; PC = 0x555555565d5a *)
mull rbx rbp L0x7fffffffde48 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565d60 *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565d66 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x30(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde50; Value = 0xa83773f311a7d1d9; PC = 0x555555565d6c *)
mull rbx rbp L0x7fffffffde50 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565d72 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565d78 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x38(%rdi),%rbp,%rbx                     #! EA = L0x7fffffffde58; Value = 0x00155dc14c523867; PC = 0x555555565d7e *)
mull rbx rbp L0x7fffffffde58 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565d84 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565d8a *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555565d90 *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %r15,%rdx                                #! PC = 0x555555565d94 *)
mov rdx r15;
(* xor    %rbx,%rbx                                #! PC = 0x555555565d97 *)
mov rbx 0@uint64;
clear carry;
clear overflow;
(* mulx   0x35b5(%rip),%rbp,%rbx        # 0x555555569358 <p503p1+24>#! EA = L0x555555569358; Value = 0xac00000000000000; PC = 0x555555565d9a *)
mull rbx rbp L0x555555569358 rdx;
(* adox   %rbp,%r9                                 #! PC = 0x555555565da3 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555565da9 *)
adcs overflow r10 r10 rbx overflow;
(* mulx   0x35a8(%rip),%rbp,%rbx        # 0x555555569360 <p503p1+32>#! EA = L0x555555569360; Value = 0x13085bda2211e7a0; PC = 0x555555565daf *)
mull rbx rbp L0x555555569360 rdx;
(* adcx   %rbp,%r10                                #! PC = 0x555555565db8 *)
adcs carry r10 r10 rbp carry;
(* adox   %rbx,%r11                                #! PC = 0x555555565dbe *)
adcs overflow r11 r11 rbx overflow;
(* mulx   0x359b(%rip),%rbp,%rbx        # 0x555555569368 <p503p1+40>#! EA = L0x555555569368; Value = 0x1b9bf6c87b7e7daf; PC = 0x555555565dc4 *)
mull rbx rbp L0x555555569368 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565dcd *)
adcs carry r11 r11 rbp carry;
(* adox   %rbx,%r12                                #! PC = 0x555555565dd3 *)
adcs overflow r12 r12 rbx overflow;
(* mulx   0x358e(%rip),%rbp,%rbx        # 0x555555569370 <p503p1+48>#! EA = L0x555555569370; Value = 0x6045c6bdda77a4d0; PC = 0x555555565dd9 *)
mull rbx rbp L0x555555569370 rdx;
(* adcx   %rbp,%r12                                #! PC = 0x555555565de2 *)
adcs carry r12 r12 rbp carry;
(* adox   %rbx,%r13                                #! PC = 0x555555565de8 *)
adcs overflow r13 r13 rbx overflow;
(* mulx   0x3581(%rip),%rbp,%rbx        # 0x555555569378 <p503p1+56>#! EA = L0x555555569378; Value = 0x004066f541811e1e; PC = 0x555555565dee *)
mull rbx rbp L0x555555569378 rdx;
(* adcx   %rbp,%r13                                #! PC = 0x555555565df7 *)
adcs carry r13 r13 rbp carry;
(* adox   %rbx,%r14                                #! PC = 0x555555565dfd *)
adcs overflow r14 r14 rbx overflow;
(* adc    $0x0,%r14                                #! PC = 0x555555565e03 *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && and [ overflow = 0@1, carry = 0@1 ];
assume and [ overflow = 0, carry = 0 ] && true;
(* mov    %rax,(%rcx)                              #! EA = L0x7fffffffdee0; PC = 0x555555565e07 *)
mov L0x7fffffffdee0 rax;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffdee8; PC = 0x555555565e0a *)
mov L0x7fffffffdee8 r8;
(* mov    %r9,0x10(%rcx)                           #! EA = L0x7fffffffdef0; PC = 0x555555565e0e *)
mov L0x7fffffffdef0 r9;
(* mov    %r10,0x18(%rcx)                          #! EA = L0x7fffffffdef8; PC = 0x555555565e12 *)
mov L0x7fffffffdef8 r10;
(* mov    %r11,0x20(%rcx)                          #! EA = L0x7fffffffdf00; PC = 0x555555565e16 *)
mov L0x7fffffffdf00 r11;
(* mov    %r12,0x28(%rcx)                          #! EA = L0x7fffffffdf08; PC = 0x555555565e1a *)
mov L0x7fffffffdf08 r12;
(* mov    %r13,0x30(%rcx)                          #! EA = L0x7fffffffdf10; PC = 0x555555565e1e *)
mov L0x7fffffffdf10 r13;
(* mov    %r14,0x38(%rcx)                          #! EA = L0x7fffffffdf18; PC = 0x555555565e22 *)
mov L0x7fffffffdf18 r14;
(* #! <- SP = 0x7fffffffdc48 *)
#! 0x7fffffffdc48 = 0x7fffffffdc48;
(* #retq                                           #! PC = 0x555555565e30 *)
#retq                                           #! 0x555555565e30 = 0x555555565e30;

(* ===== Outputs ===== *)

mov c0 L0x7fffffffdee0;
mov c1 L0x7fffffffdee8;
mov c2 L0x7fffffffdef0;
mov c3 L0x7fffffffdef8;
mov c4 L0x7fffffffdf00;
mov c5 L0x7fffffffdf08;
mov c6 L0x7fffffffdf10;
mov c7 L0x7fffffffdf18;

{
  eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, c0, c1, c2, c3, c4, c5, c6, c7 ])
        (
          (limbs 64 [ a0, a1, a2, a3, a4, a5, a6, a7 ])
          *
          (limbs 64 [ b0, b1, b2, b3, b4, b5, b6, b7 ])
        )
        (limbs 64 [ $p503_0, $p503_1, $p503_2, $p503_3, $p503_4, $p503_5, $p503_6, $p503_7 ])
  &&
  limbs 64 [ c0, c1, c2, c3, c4, c5, c6, c7 ] <=u
      (2@512 * limbs 64 [ $p503_0@64, $p503_1@64, $p503_2@64, $p503_3@64,
                          $p503_4@64, $p503_5@64, $p503_6@64, $p503_7@64 ] - 1@512)
}

