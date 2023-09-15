proc main (mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f, re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f) =
{
  true
  &&
  true
}

(* #! -> SP = 0x7fffffffa358 *)
#! 0x7fffffffa358 = 0x7fffffffa358;
(* #endbr64                                         #! PC = 0x55555556d170 *)
#endbr64                                         #! 0x55555556d170 = 0x55555556d170;
(* #push   %rbx                                     #! EA = L0x7fffffffa350; PC = 0x55555556d174 *)
#push   %rbx                                     #! L0x7fffffffa350 = L0x7fffffffa350; 0x55555556d174 = 0x55555556d174;
(* #mov    %rdi,%rbx                                #! PC = 0x55555556d175 *)
#mov    %rdi,%rbx                                #! 0x55555556d175 = 0x55555556d175;
(* #callq  0x55555556c8f0 <PQCLEAN_KYBER768_AVX2_poly_ntt>#! PC = 0x55555556d178 *)
#callq  0x55555556c8f0 <PQCLEAN_KYBER768_AVX2_poly_ntt>#! 0x55555556d178 = 0x55555556d178;
(* #! -> SP = 0x7fffffffa348 *)
#! 0x7fffffffa348 = 0x7fffffffa348;
(* #endbr64                                         #! PC = 0x55555556c8f0 *)
#endbr64                                         #! 0x55555556c8f0 = 0x55555556c8f0;
(* #lea    0xccce5(%rip),%rsi        # 0x5555556395e0 <PQCLEAN_KYBER768_AVX2_qdata>#! PC = 0x55555556c8f4 *)
#lea    0xccce5(%rip),%rsi        # 0x5555556395e0 <PQCLEAN_KYBER768_AVX2_qdata>#! 0x55555556c8f4 = 0x55555556c8f4;
(* #jmpq   0x55555556eb4f <_PQCLEAN_KYBER768_AVX2_ntt_avx>#! PC = 0x55555556c8fb *)
#jmpq   0x55555556eb4f <_PQCLEAN_KYBER768_AVX2_ntt_avx>#! 0x55555556c8fb = 0x55555556c8fb;
(* vmovdqa (%rsi),%ymm0                            #! EA = L0x5555556395e0; Value = 0x0d010d010d010d01; PC = 0x55555556eb4f *)
mov %ymm0 [L0x5555556395e0, L0x5555556395e2, L0x5555556395e4, L0x5555556395e6, L0x5555556395e8, L0x5555556395ea, L0x5555556395ec, L0x5555556395ee, L0x5555556395f0, L0x5555556395f2, L0x5555556395f4, L0x5555556395f6, L0x5555556395f8, L0x5555556395fa, L0x5555556395fc, L0x5555556395fe];
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x555555639720; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556eb53 *)
broadcast %ymm15 16 [L0x555555639720, L0x555555639722];
(* vmovdqa 0x100(%rdi),%ymm8                       #! EA = L0x7fffffffb080; Value = 0xffff0000ffff0001; PC = 0x55555556eb5c *)
mov %ymm8 [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e];
(* vmovdqa 0x120(%rdi),%ymm9                       #! EA = L0x7fffffffb0a0; Value = 0x00010001ffffffff; PC = 0x55555556eb64 *)
mov %ymm9 [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be];
(* vmovdqa 0x140(%rdi),%ymm10                      #! EA = L0x7fffffffb0c0; Value = 0x0000000000010000; PC = 0x55555556eb6c *)
mov %ymm10 [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de];
(* vmovdqa 0x160(%rdi),%ymm11                      #! EA = L0x7fffffffb0e0; Value = 0x0000fffe00000000; PC = 0x55555556eb74 *)
mov %ymm11 [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe];
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x555555639728; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556eb7c *)
broadcast %ymm2 16 [L0x555555639728, L0x55555563972a];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556eb85 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556eb8a *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556eb8f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eb94 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eb99 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556eb9d *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eba1 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eba5 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffaf80; Value = 0x0000ffff00000000; PC = 0x55555556eba9 *)
mov %ymm4 [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffafa0; Value = 0x00010001ffffffff; PC = 0x55555556ebad *)
mov %ymm5 [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffafc0; Value = 0x00010000ffff0000; PC = 0x55555556ebb2 *)
mov %ymm6 [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffafe0; Value = 0x000100010001ffff; PC = 0x55555556ebb7 *)
mov %ymm7 [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ebbc *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ebc0 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ebc4 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ebc8 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ebcc *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ebd1 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ebd6 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ebdb *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ebe0 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ebe5 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ebea *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ebef *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ebf4 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ebf9 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ebfe *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ec03 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ec08 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ec0d *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ec12 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ec17 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm3,(%rdi)                            #! EA = L0x7fffffffaf80; PC = 0x55555556ec1c *)
mov [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e] %ymm3;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffafa0; PC = 0x55555556ec20 *)
mov [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe] %ymm4;
(* vmovdqa %ymm5,0x40(%rdi)                        #! EA = L0x7fffffffafc0; PC = 0x55555556ec25 *)
mov [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde] %ymm5;
(* vmovdqa %ymm6,0x60(%rdi)                        #! EA = L0x7fffffffafe0; PC = 0x55555556ec2a *)
mov [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe] %ymm6;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb080; PC = 0x55555556ec2f *)
mov [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e] %ymm8;
(* vmovdqa %ymm9,0x120(%rdi)                       #! EA = L0x7fffffffb0a0; PC = 0x55555556ec37 *)
mov [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be] %ymm9;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb0c0; PC = 0x55555556ec3f *)
mov [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de] %ymm10;
(* vmovdqa %ymm11,0x160(%rdi)                      #! EA = L0x7fffffffb0e0; PC = 0x55555556ec47 *)
mov [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe] %ymm11;
(* vpbroadcastq 0x140(%rsi),%ymm15                 #! EA = L0x555555639720; Value = 0x7b0a7b0a7b0a7b0a; PC = 0x55555556ec4f *)
broadcast %ymm15 16 [L0x555555639720, L0x555555639722];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb100; Value = 0x00000000ffffffff; PC = 0x55555556ec58 *)
mov %ymm8 [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb120; Value = 0x0001ffffffffffff; PC = 0x55555556ec60 *)
mov %ymm9 [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb140; Value = 0x00010001ffff0000; PC = 0x55555556ec68 *)
mov %ymm10 [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb160; Value = 0x0000ffff00010001; PC = 0x55555556ec70 *)
mov %ymm11 [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e];
(* vpbroadcastq 0x148(%rsi),%ymm2                  #! EA = L0x555555639728; Value = 0xfd0afd0afd0afd0a; PC = 0x55555556ec78 *)
broadcast %ymm2 16 [L0x555555639728, L0x55555563972a];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ec81 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ec86 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ec8b *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ec90 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ec95 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ec99 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ec9d *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556eca1 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa 0x80(%rdi),%ymm4                        #! EA = L0x7fffffffb000; Value = 0xfffe0000ffff0000; PC = 0x55555556eca5 *)
mov %ymm4 [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e];
(* vmovdqa 0xa0(%rdi),%ymm5                        #! EA = L0x7fffffffb020; Value = 0xfffe000000010000; PC = 0x55555556ecad *)
mov %ymm5 [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e];
(* vmovdqa 0xc0(%rdi),%ymm6                        #! EA = L0x7fffffffb040; Value = 0x0001ffff0000ffff; PC = 0x55555556ecb5 *)
mov %ymm6 [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e];
(* vmovdqa 0xe0(%rdi),%ymm7                        #! EA = L0x7fffffffb060; Value = 0xfffeffff00000000; PC = 0x55555556ecbd *)
mov %ymm7 [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ecc5 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ecc9 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556eccd *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ecd1 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556ecd5 *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ecda *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ecdf *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556ece4 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556ece9 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556ecee *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556ecf3 *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556ecf8 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ecfd *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ed02 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ed07 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ed0c *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ed11 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ed16 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ed1b *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ed20 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm3,0x80(%rdi)                        #! EA = L0x7fffffffb000; PC = 0x55555556ed25 *)
mov [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e] %ymm3;
(* vmovdqa %ymm4,0xa0(%rdi)                        #! EA = L0x7fffffffb020; PC = 0x55555556ed2d *)
mov [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e] %ymm4;
(* vmovdqa %ymm5,0xc0(%rdi)                        #! EA = L0x7fffffffb040; PC = 0x55555556ed35 *)
mov [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e] %ymm5;
(* vmovdqa %ymm6,0xe0(%rdi)                        #! EA = L0x7fffffffb060; PC = 0x55555556ed3d *)
mov [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e] %ymm6;
(* vmovdqa %ymm8,0x180(%rdi)                       #! EA = L0x7fffffffb100; PC = 0x55555556ed45 *)
mov [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e] %ymm8;
(* vmovdqa %ymm9,0x1a0(%rdi)                       #! EA = L0x7fffffffb120; PC = 0x55555556ed4d *)
mov [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e] %ymm9;
(* vmovdqa %ymm10,0x1c0(%rdi)                      #! EA = L0x7fffffffb140; PC = 0x55555556ed55 *)
mov [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e] %ymm10;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb160; PC = 0x55555556ed5d *)
mov [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e] %ymm11;
(* vmovdqa 0x160(%rsi),%ymm15                      #! EA = L0x555555639740; Value = 0x3999399939993999; PC = 0x55555556ed65 *)
mov %ymm15 [L0x555555639740, L0x555555639742, L0x555555639744, L0x555555639746, L0x555555639748, L0x55555563974a, L0x55555563974c, L0x55555563974e, L0x555555639750, L0x555555639752, L0x555555639754, L0x555555639756, L0x555555639758, L0x55555563975a, L0x55555563975c, L0x55555563975e];
(* vmovdqa 0x80(%rdi),%ymm8                        #! EA = L0x7fffffffb000; Value = 0xfffe0000063f0640; PC = 0x55555556ed6d *)
mov %ymm8 [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e];
(* vmovdqa 0xa0(%rdi),%ymm9                        #! EA = L0x7fffffffb020; Value = 0xf9be064006410640; PC = 0x55555556ed75 *)
mov %ymm9 [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e];
(* vmovdqa 0xc0(%rdi),%ymm10                       #! EA = L0x7fffffffb040; Value = 0xf9c1f9bf0640ffff; PC = 0x55555556ed7d *)
mov %ymm10 [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e];
(* vmovdqa 0xe0(%rdi),%ymm11                       #! EA = L0x7fffffffb060; Value = 0xfffe063ff9c0f9c0; PC = 0x55555556ed85 *)
mov %ymm11 [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e];
(* vmovdqa 0x180(%rsi),%ymm2                       #! EA = L0x555555639760; Value = 0xfe99fe99fe99fe99; PC = 0x55555556ed8d *)
mov %ymm2 [L0x555555639760, L0x555555639762, L0x555555639764, L0x555555639766, L0x555555639768, L0x55555563976a, L0x55555563976c, L0x55555563976e, L0x555555639770, L0x555555639772, L0x555555639774, L0x555555639776, L0x555555639778, L0x55555563977a, L0x55555563977c, L0x55555563977e];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556ed95 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556ed9a *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556ed9f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556eda4 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eda9 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556edad *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556edb1 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556edb5 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa (%rdi),%ymm4                            #! EA = L0x7fffffffaf80; Value = 0x0640ffff0640f9c0; PC = 0x55555556edb9 *)
mov %ymm4 [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e];
(* vmovdqa 0x20(%rdi),%ymm5                        #! EA = L0x7fffffffafa0; Value = 0xf9c1f9c1063f063f; PC = 0x55555556edbd *)
mov %ymm5 [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe];
(* vmovdqa 0x40(%rdi),%ymm6                        #! EA = L0x7fffffffafc0; Value = 0x00010000f9bf0000; PC = 0x55555556edc2 *)
mov %ymm6 [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde];
(* vmovdqa 0x60(%rdi),%ymm7                        #! EA = L0x7fffffffafe0; Value = 0x0001ff800001ffff; PC = 0x55555556edc7 *)
mov %ymm7 [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556edcc *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556edd0 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556edd4 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556edd8 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556eddc *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ede1 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556ede6 *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556edeb *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556edf0 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556edf5 *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556edfa *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556edff *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556ee04 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556ee09 *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556ee0e *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556ee13 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556ee18 *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556ee1d *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556ee22 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ee27 *)
add %ymm11 %ymm15 %ymm11;
(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556ee2c *)
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
_, _, _, _] %ymm5;
mov [ymm7_8, ymm7_9, ymm7_a, ymm7_b,
ymm7_c, ymm7_d, ymm7_e, ymm7_f,
_, _, _, _,
_, _, _, _] %ymm10;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556ee32 *)
mov [_, _, _, _,
_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
ymm10_4, ymm10_5, ymm10_6, ymm10_7] %ymm5;
mov [_, _, _, _,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556ee38 *)
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
_, _, _, _] %ymm6;
mov [ymm5_8, ymm5_9, ymm5_a, ymm5_b,
ymm5_c, ymm5_d, ymm5_e, ymm5_f,
_, _, _, _,
_, _, _, _] %ymm11;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556ee3e *)
mov [_, _, _, _,
_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
ymm11_4, ymm11_5, ymm11_6, ymm11_7] %ymm6;
mov [_, _, _, _,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x1a0(%rsi),%ymm15                      #! EA = L0x555555639780; Value = 0x34d534d534d534d5; PC = 0x55555556ee44 *)
mov %ymm15 [L0x555555639780, L0x555555639782, L0x555555639784, L0x555555639786, L0x555555639788, L0x55555563978a, L0x55555563978c, L0x55555563978e, L0x555555639790, L0x555555639792, L0x555555639794, L0x555555639796, L0x555555639798, L0x55555563979a, L0x55555563979c, L0x55555563979e];
(* vmovdqa 0x1c0(%rsi),%ymm2                       #! EA = L0x5555556397a0; Value = 0x05d505d505d505d5; PC = 0x55555556ee4c *)
mov %ymm2 [L0x5555556397a0, L0x5555556397a2, L0x5555556397a4, L0x5555556397a6, L0x5555556397a8, L0x5555556397aa, L0x5555556397ac, L0x5555556397ae, L0x5555556397b0, L0x5555556397b2, L0x5555556397b4, L0x5555556397b6, L0x5555556397b8, L0x5555556397ba, L0x5555556397bc, L0x5555556397be];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556ee54 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556ee59 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556ee5e *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ee63 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556ee68 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556ee6c *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ee70 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ee74 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556ee78 *)
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3,
ymm6_4, ymm6_5, ymm6_6, ymm6_7,
_, _, _, _,
_, _, _, _] %ymm3;
mov [ymm6_8, ymm6_9, ymm6_a, ymm6_b,
ymm6_c, ymm6_d, ymm6_e, ymm6_f,
_, _, _, _,
_, _, _, _] %ymm8;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556ee7e *)
mov [_, _, _, _,
_, _, _, _,
ymm8_0, ymm8_1, ymm8_2, ymm8_3,
ymm8_4, ymm8_5, ymm8_6, ymm8_7] %ymm3;
mov [_, _, _, _,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556ee84 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
_, _, _, _] %ymm4;
mov [ymm3_8, ymm3_9, ymm3_a, ymm3_b,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _,
_, _, _, _] %ymm9;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556ee8a *)
mov [_, _, _, _,
_, _, _, _,
ymm9_0, ymm9_1, ymm9_2, ymm9_3,
ymm9_4, ymm9_5, ymm9_6, ymm9_7] %ymm4;
mov [_, _, _, _,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ee90 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ee94 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ee98 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ee9c *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556eea0 *)
add %ymm4 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556eea4 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556eea8 *)
add %ymm6 %ymm10 %ymm8;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556eead *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556eeb2 *)
add %ymm8 %ymm5 %ymm3;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556eeb6 *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556eeba *)
add %ymm3 %ymm11 %ymm9;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556eebf *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556eec4 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556eec9 *)
add %ymm7 %ymm12 %ymm7;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556eece *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556eed3 *)
add %ymm10 %ymm13 %ymm10;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556eed8 *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556eedd *)
add %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556eee2 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556eee7 *)
add %ymm11 %ymm15 %ymm11;
(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556eeec *)
mov [ymm9_4, ymm9_5, ymm9_6, ymm9_7,
_, _, _, _,
ymm9_c, ymm9_d, ymm9_e, ymm9_f,
_, _, _, _] %ymm5;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
_, _, _, _] %ymm8;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556eef0 *)
mov [_, _, _, _,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [_, _, _, _,
ymm5_0, ymm5_1, ymm5_2, ymm5_3,
_, _, _, _,
ymm5_8, ymm5_9, ymm5_a, ymm5_b] %ymm8;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556eef4 *)
mov [ymm8_4, ymm8_5, ymm8_6, ymm8_7,
_, _, _, _,
ymm8_c, ymm8_d, ymm8_e, ymm8_f,
_, _, _, _] %ymm11;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
_, _, _, _] %ymm3;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556eef9 *)
mov [_, _, _, _,
ymm11_4, ymm11_5, ymm11_6, ymm11_7,
_, _, _, _,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov [_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b] %ymm3;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x1e0(%rsi),%ymm15                      #! EA = L0x5555556397c0; Value = 0xae55ae55ae55ae55; PC = 0x55555556eefe *)
mov %ymm15 [L0x5555556397c0, L0x5555556397c2, L0x5555556397c4, L0x5555556397c6, L0x5555556397c8, L0x5555556397ca, L0x5555556397cc, L0x5555556397ce, L0x5555556397d0, L0x5555556397d2, L0x5555556397d4, L0x5555556397d6, L0x5555556397d8, L0x5555556397da, L0x5555556397dc, L0x5555556397de];
(* vmovdqa 0x200(%rsi),%ymm2                       #! EA = L0x5555556397e0; Value = 0xff55ff55ff55ff55; PC = 0x55555556ef06 *)
mov %ymm2 [L0x5555556397e0, L0x5555556397e2, L0x5555556397e4, L0x5555556397e6, L0x5555556397e8, L0x5555556397ea, L0x5555556397ec, L0x5555556397ee, L0x5555556397f0, L0x5555556397f2, L0x5555556397f4, L0x5555556397f6, L0x5555556397f8, L0x5555556397fa, L0x5555556397fc, L0x5555556397fe];
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556ef0e *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556ef13 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556ef18 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556ef1d *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556ef22 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556ef26 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556ef2a *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556ef2e *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556ef32 *)
mov [ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _] %ymm7;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
_, _, _, _,
ymm3_8, ymm3_9, ymm3_a, ymm3_b,
_, _, _, _] %ymm4;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556ef36 *)
mov [_, _, _, _,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [_, _, _, _,
ymm7_0, ymm7_1, ymm7_2, ymm7_3,
_, _, _, _,
ymm7_8, ymm7_9, ymm7_a, ymm7_b] %ymm4;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556ef3a *)
mov [ymm4_4, ymm4_5, ymm4_6, ymm4_7,
_, _, _, _,
ymm4_c, ymm4_d, ymm4_e, ymm4_f,
_, _, _, _] %ymm10;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3,
_, _, _, _,
ymm4_8, ymm4_9, ymm4_a, ymm4_b,
_, _, _, _] %ymm6;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556ef3f *)
mov [_, _, _, _,
ymm10_4, ymm10_5, ymm10_6, ymm10_7,
_, _, _, _,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b] %ymm6;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556ef44 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556ef48 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556ef4c *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556ef50 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556ef54 *)
add %ymm6 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556ef59 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556ef5e *)
add %ymm3 %ymm5 %ymm7;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556ef62 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556ef66 *)
add %ymm7 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556ef6b *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556ef70 *)
add %ymm4 %ymm11 %ymm10;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556ef75 *)
sub %ymm11 %ymm10 %ymm11;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556ef7a *)
sub %ymm6 %ymm6 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556ef7f *)
add %ymm9 %ymm12 %ymm9;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556ef84 *)
sub %ymm3 %ymm3 %ymm13;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556ef89 *)
add %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556ef8e *)
sub %ymm7 %ymm7 %ymm14;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556ef93 *)
add %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556ef98 *)
sub %ymm4 %ymm4 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556ef9d *)
add %ymm11 %ymm15 %ymm11;
(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556efa2 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm8;
mov %ymm10 [
ymm8_0, ymm8_1, ymm8_0, ymm8_1,
ymm8_4, ymm8_5, ymm8_4, ymm8_5,
ymm8_8, ymm8_9, ymm8_8, ymm8_9,
ymm8_c, ymm8_d, ymm8_c, ymm8_d];
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556efa7 *)
mov [ymm10_0, ymm10_1, _, _,
ymm10_4, ymm10_5, _, _,
ymm10_8, ymm10_9, _, _,
ymm10_c, ymm10_d, _, _] %ymm7;
mov [_, _, ymm10_2, ymm10_3,
_, _, ymm10_6, ymm10_7,
_, _, ymm10_a, ymm10_b,
_, _, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556efad *)
mov [_, _, ymm7_0010, ymm7_0011,
_, _, ymm7_0110, ymm7_0111,
_, _, ymm7_1010, ymm7_1011,
_, _, ymm7_1110, ymm7_1111] %ymm7;
mov %ymm7 [ymm7_0010, ymm7_0011, 0@sint16, 0@sint16,
ymm7_0110, ymm7_0111, 0@sint16, 0@sint16,
ymm7_1010, ymm7_1011, 0@sint16, 0@sint16,
ymm7_1110, ymm7_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556efb2 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm7;
mov [_, _, ymm8_2, ymm8_3,
_, _, ymm8_6, ymm8_7,
_, _, ymm8_a, ymm8_b,
_, _, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556efb8 *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm11;
mov %ymm7 [
ymm11_0, ymm11_1, ymm11_0, ymm11_1,
ymm11_4, ymm11_5, ymm11_4, ymm11_5,
ymm11_8, ymm11_9, ymm11_8, ymm11_9,
ymm11_c, ymm11_d, ymm11_c, ymm11_d];
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556efbd *)
mov [ymm7_0, ymm7_1, _, _,
ymm7_4, ymm7_5, _, _,
ymm7_8, ymm7_9, _, _,
ymm7_c, ymm7_d, _, _] %ymm4;
mov [_, _, ymm7_2, ymm7_3,
_, _, ymm7_6, ymm7_7,
_, _, ymm7_a, ymm7_b,
_, _, ymm7_e, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556efc3 *)
mov [_, _, ymm4_0010, ymm4_0011,
_, _, ymm4_0110, ymm4_0111,
_, _, ymm4_1010, ymm4_1011,
_, _, ymm4_1110, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0010, ymm4_0011, 0@sint16, 0@sint16,
ymm4_0110, ymm4_0111, 0@sint16, 0@sint16,
ymm4_1010, ymm4_1011, 0@sint16, 0@sint16,
ymm4_1110, ymm4_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556efc8 *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm4;
mov [_, _, ymm11_2, ymm11_3,
_, _, ymm11_6, ymm11_7,
_, _, ymm11_a, ymm11_b,
_, _, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x220(%rsi),%ymm15                      #! EA = L0x555555639800; Value = 0x43d343d3e93de93d; PC = 0x55555556efce *)
mov %ymm15 [L0x555555639800, L0x555555639802, L0x555555639804, L0x555555639806, L0x555555639808, L0x55555563980a, L0x55555563980c, L0x55555563980e, L0x555555639810, L0x555555639812, L0x555555639814, L0x555555639816, L0x555555639818, L0x55555563981a, L0x55555563981c, L0x55555563981e];
(* vmovdqa 0x240(%rsi),%ymm2                       #! EA = L0x555555639820; Value = 0xfad3fad3023d023d; PC = 0x55555556efd6 *)
mov %ymm2 [L0x555555639820, L0x555555639822, L0x555555639824, L0x555555639826, L0x555555639828, L0x55555563982a, L0x55555563982c, L0x55555563982e, L0x555555639830, L0x555555639832, L0x555555639834, L0x555555639836, L0x555555639838, L0x55555563983a, L0x55555563983c, L0x55555563983e];
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556efde *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556efe3 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556efe8 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556efed *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556eff2 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556eff6 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556effa *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556effe *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556f002 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm9;
mov %ymm4 [
ymm9_0, ymm9_1, ymm9_0, ymm9_1,
ymm9_4, ymm9_5, ymm9_4, ymm9_5,
ymm9_8, ymm9_9, ymm9_8, ymm9_9,
ymm9_c, ymm9_d, ymm9_c, ymm9_d];
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556f007 *)
mov [ymm4_0, ymm4_1, _, _,
ymm4_4, ymm4_5, _, _,
ymm4_8, ymm4_9, _, _,
ymm4_c, ymm4_d, _, _] %ymm6;
mov [_, _, ymm4_2, ymm4_3,
_, _, ymm4_6, ymm4_7,
_, _, ymm4_a, ymm4_b,
_, _, ymm4_e, ymm4_f] %ymm4;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556f00d *)
mov [_, _, ymm6_0010, ymm6_0011,
_, _, ymm6_0110, ymm6_0111,
_, _, ymm6_1010, ymm6_1011,
_, _, ymm6_1110, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0010, ymm6_0011, 0@sint16, 0@sint16,
ymm6_0110, ymm6_0111, 0@sint16, 0@sint16,
ymm6_1010, ymm6_1011, 0@sint16, 0@sint16,
ymm6_1110, ymm6_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f012 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm6;
mov [_, _, ymm9_2, ymm9_3,
_, _, ymm9_6, ymm9_7,
_, _, ymm9_a, ymm9_b,
_, _, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556f018 *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm5;
mov %ymm6 [
ymm5_0, ymm5_1, ymm5_0, ymm5_1,
ymm5_4, ymm5_5, ymm5_4, ymm5_5,
ymm5_8, ymm5_9, ymm5_8, ymm5_9,
ymm5_c, ymm5_d, ymm5_c, ymm5_d];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f01c *)
mov [ymm6_0, ymm6_1, _, _,
ymm6_4, ymm6_5, _, _,
ymm6_8, ymm6_9, _, _,
ymm6_c, ymm6_d, _, _] %ymm3;
mov [_, _, ymm6_2, ymm6_3,
_, _, ymm6_6, ymm6_7,
_, _, ymm6_a, ymm6_b,
_, _, ymm6_e, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556f022 *)
mov [_, _, ymm3_0010, ymm3_0011,
_, _, ymm3_0110, ymm3_0111,
_, _, ymm3_1010, ymm3_1011,
_, _, ymm3_1110, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0010, ymm3_0011, 0@sint16, 0@sint16,
ymm3_0110, ymm3_0111, 0@sint16, 0@sint16,
ymm3_1010, ymm3_1011, 0@sint16, 0@sint16,
ymm3_1110, ymm3_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556f027 *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm3;
mov [_, _, ymm5_2, ymm5_3,
_, _, ymm5_6, ymm5_7,
_, _, ymm5_a, ymm5_b,
_, _, ymm5_e, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f02d *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f031 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f035 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f039 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556f03d *)
add %ymm3 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f042 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556f047 *)
add %ymm4 %ymm8 %ymm9;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556f04c *)
sub %ymm8 %ymm9 %ymm8;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556f051 *)
add %ymm9 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f055 *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556f059 *)
add %ymm6 %ymm11 %ymm5;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556f05e *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f063 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f068 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f06d *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556f072 *)
add %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f077 *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f07c *)
add %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f081 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f086 *)
add %ymm11 %ymm15 %ymm11;
(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556f08b *)
mov [ymm7_0000, _, ymm7_0010, _,
ymm7_0100, _, ymm7_0110, _,
ymm7_1000, _, ymm7_1010, _,
ymm7_1100, _, ymm7_1110, _] %ymm7;
mov %ymm5 [0@sint16, ymm7_0000, 0@sint16, ymm7_0010,
0@sint16, ymm7_0100, 0@sint16, ymm7_0110,
0@sint16, ymm7_1000, 0@sint16, ymm7_1010,
0@sint16, ymm7_1100, 0@sint16, ymm7_1110];
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556f090 *)
mov [ymm5_0, _, ymm5_2, _,
ymm5_4, _, ymm5_6, _,
ymm5_8, _, ymm5_a, _,
ymm5_c, _, ymm5_e, _] %ymm9;
mov [_, ymm5_1, _, ymm5_3,
_, ymm5_5, _, ymm5_7,
_, ymm5_9, _, ymm5_b,
_, ymm5_d, _, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556f096 *)
mov [_, ymm9_0001, _, ymm9_0011,
_, ymm9_0101, _, ymm9_0111,
_, ymm9_1001, _, ymm9_1011,
_, ymm9_1101, _, ymm9_1111] %ymm9;
mov %ymm9 [ymm9_0001, 0@sint16, ymm9_0011, 0@sint16,
ymm9_0101, 0@sint16, ymm9_0111, 0@sint16,
ymm9_1001, 0@sint16, ymm9_1011, 0@sint16,
ymm9_1101, 0@sint16, ymm9_1111, 0@sint16];
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556f09c *)
mov [ymm7_0, _, ymm7_2, _,
ymm7_4, _, ymm7_6, _,
ymm7_8, _, ymm7_a, _,
ymm7_c, _, ymm7_e, _] %ymm9;
mov [_, ymm7_1, _, ymm7_3,
_, ymm7_5, _, ymm7_7,
_, ymm7_9, _, ymm7_b,
_, ymm7_d, _, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556f0a2 *)
mov [ymm11_0000, _, ymm11_0010, _,
ymm11_0100, _, ymm11_0110, _,
ymm11_1000, _, ymm11_1010, _,
ymm11_1100, _, ymm11_1110, _] %ymm11;
mov %ymm9 [0@sint16, ymm11_0000, 0@sint16, ymm11_0010,
0@sint16, ymm11_0100, 0@sint16, ymm11_0110,
0@sint16, ymm11_1000, 0@sint16, ymm11_1010,
0@sint16, ymm11_1100, 0@sint16, ymm11_1110];
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f0a8 *)
mov [ymm9_0, _, ymm9_2, _,
ymm9_4, _, ymm9_6, _,
ymm9_8, _, ymm9_a, _,
ymm9_c, _, ymm9_e, _] %ymm6;
mov [_, ymm9_1, _, ymm9_3,
_, ymm9_5, _, ymm9_7,
_, ymm9_9, _, ymm9_b,
_, ymm9_d, _, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556f0ae *)
mov [_, ymm6_0001, _, ymm6_0011,
_, ymm6_0101, _, ymm6_0111,
_, ymm6_1001, _, ymm6_1011,
_, ymm6_1101, _, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0001, 0@sint16, ymm6_0011, 0@sint16,
ymm6_0101, 0@sint16, ymm6_0111, 0@sint16,
ymm6_1001, 0@sint16, ymm6_1011, 0@sint16,
ymm6_1101, 0@sint16, ymm6_1111, 0@sint16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556f0b3 *)
mov [ymm11_0, _, ymm11_2, _,
ymm11_4, _, ymm11_6, _,
ymm11_8, _, ymm11_a, _,
ymm11_c, _, ymm11_e, _] %ymm6;
mov [_, ymm11_1, _, ymm11_3,
_, ymm11_5, _, ymm11_7,
_, ymm11_9, _, ymm11_b,
_, ymm11_d, _, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x260(%rsi),%ymm15                      #! EA = L0x555555639840; Value = 0x78f705d8e68ce9c7; PC = 0x55555556f0b9 *)
mov %ymm15 [L0x555555639840, L0x555555639842, L0x555555639844, L0x555555639846, L0x555555639848, L0x55555563984a, L0x55555563984c, L0x55555563984e, L0x555555639850, L0x555555639852, L0x555555639854, L0x555555639856, L0x555555639858, L0x55555563985a, L0x55555563985c, L0x55555563985e];
(* vmovdqa 0x280(%rsi),%ymm2                       #! EA = L0x555555639860; Value = 0x03f7fdd8028c04c7; PC = 0x55555556f0c1 *)
mov %ymm2 [L0x555555639860, L0x555555639862, L0x555555639864, L0x555555639866, L0x555555639868, L0x55555563986a, L0x55555563986c, L0x55555563986e, L0x555555639870, L0x555555639872, L0x555555639874, L0x555555639876, L0x555555639878, L0x55555563987a, L0x55555563987c, L0x55555563987e];
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556f0c9 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556f0ce *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f0d3 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f0d8 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f0dd *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f0e1 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f0e5 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f0e9 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556f0ed *)
mov [ymm10_0000, _, ymm10_0010, _,
ymm10_0100, _, ymm10_0110, _,
ymm10_1000, _, ymm10_1010, _,
ymm10_1100, _, ymm10_1110, _] %ymm10;
mov %ymm6 [0@sint16, ymm10_0000, 0@sint16, ymm10_0010,
0@sint16, ymm10_0100, 0@sint16, ymm10_0110,
0@sint16, ymm10_1000, 0@sint16, ymm10_1010,
0@sint16, ymm10_1100, 0@sint16, ymm10_1110];
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f0f3 *)
mov [ymm6_0, _, ymm6_2, _,
ymm6_4, _, ymm6_6, _,
ymm6_8, _, ymm6_a, _,
ymm6_c, _, ymm6_e, _] %ymm3;
mov [_, ymm6_1, _, ymm6_3,
_, ymm6_5, _, ymm6_7,
_, ymm6_9, _, ymm6_b,
_, ymm6_d, _, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556f0f9 *)
mov [_, ymm3_0001, _, ymm3_0011,
_, ymm3_0101, _, ymm3_0111,
_, ymm3_1001, _, ymm3_1011,
_, ymm3_1101, _, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0001, 0@sint16, ymm3_0011, 0@sint16,
ymm3_0101, 0@sint16, ymm3_0111, 0@sint16,
ymm3_1001, 0@sint16, ymm3_1011, 0@sint16,
ymm3_1101, 0@sint16, ymm3_1111, 0@sint16];
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556f0fe *)
mov [ymm10_0, _, ymm10_2, _,
ymm10_4, _, ymm10_6, _,
ymm10_8, _, ymm10_a, _,
ymm10_c, _, ymm10_e, _] %ymm3;
mov [_, ymm10_1, _, ymm10_3,
_, ymm10_5, _, ymm10_7,
_, ymm10_9, _, ymm10_b,
_, ymm10_d, _, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556f104 *)
mov [ymm8_0000, _, ymm8_0010, _,
ymm8_0100, _, ymm8_0110, _,
ymm8_1000, _, ymm8_1010, _,
ymm8_1100, _, ymm8_1110, _] %ymm8;
mov %ymm3 [0@sint16, ymm8_0000, 0@sint16, ymm8_0010,
0@sint16, ymm8_0100, 0@sint16, ymm8_0110,
0@sint16, ymm8_1000, 0@sint16, ymm8_1010,
0@sint16, ymm8_1100, 0@sint16, ymm8_1110];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556f10a *)
mov [ymm3_0, _, ymm3_2, _,
ymm3_4, _, ymm3_6, _,
ymm3_8, _, ymm3_a, _,
ymm3_c, _, ymm3_e, _] %ymm4;
mov [_, ymm3_1, _, ymm3_3,
_, ymm3_5, _, ymm3_7,
_, ymm3_9, _, ymm3_b,
_, ymm3_d, _, ymm3_f] %ymm3;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556f110 *)
mov [_, ymm4_0001, _, ymm4_0011,
_, ymm4_0101, _, ymm4_0111,
_, ymm4_1001, _, ymm4_1011,
_, ymm4_1101, _, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0001, 0@sint16, ymm4_0011, 0@sint16,
ymm4_0101, 0@sint16, ymm4_0111, 0@sint16,
ymm4_1001, 0@sint16, ymm4_1011, 0@sint16,
ymm4_1101, 0@sint16, ymm4_1111, 0@sint16];
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556f115 *)
mov [ymm8_0, _, ymm8_2, _,
ymm8_4, _, ymm8_6, _,
ymm8_8, _, ymm8_a, _,
ymm8_c, _, ymm8_e, _] %ymm4;
mov [_, ymm8_1, _, ymm8_3,
_, ymm8_5, _, ymm8_7,
_, ymm8_9, _, ymm8_b,
_, ymm8_d, _, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f11b *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f11f *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f123 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f127 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556f12b *)
add %ymm4 %ymm5 %ymm6;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556f12f *)
sub %ymm5 %ymm6 %ymm5;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556f133 *)
add %ymm6 %ymm7 %ymm10;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556f137 *)
sub %ymm7 %ymm10 %ymm7;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556f13b *)
add %ymm10 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f140 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556f145 *)
add %ymm3 %ymm11 %ymm8;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556f14a *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f14f *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556f154 *)
add %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f159 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556f15e *)
add %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f163 *)
sub %ymm10 %ymm10 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f168 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f16d *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f172 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa 0x2a0(%rsi),%ymm14                      #! EA = L0x555555639880; Value = 0x500e821dd32bfeb1; PC = 0x55555556f177 *)
mov %ymm14 [L0x555555639880, L0x555555639882, L0x555555639884, L0x555555639886, L0x555555639888, L0x55555563988a, L0x55555563988c, L0x55555563988e, L0x555555639890, L0x555555639892, L0x555555639894, L0x555555639896, L0x555555639898, L0x55555563989a, L0x55555563989c, L0x55555563989e];
(* vmovdqa 0x2e0(%rsi),%ymm15                      #! EA = L0x5555556398c0; Value = 0xab69c867344b2bae; PC = 0x55555556f17f *)
mov %ymm15 [L0x5555556398c0, L0x5555556398c2, L0x5555556398c4, L0x5555556398c6, L0x5555556398c8, L0x5555556398ca, L0x5555556398cc, L0x5555556398ce, L0x5555556398d0, L0x5555556398d2, L0x5555556398d4, L0x5555556398d6, L0x5555556398d8, L0x5555556398da, L0x5555556398dc, L0x5555556398de];
(* vmovdqa 0x2c0(%rsi),%ymm8                       #! EA = L0x5555556398a0; Value = 0x060efb1d022bfbb1; PC = 0x55555556f187 *)
mov %ymm8 [L0x5555556398a0, L0x5555556398a2, L0x5555556398a4, L0x5555556398a6, L0x5555556398a8, L0x5555556398aa, L0x5555556398ac, L0x5555556398ae, L0x5555556398b0, L0x5555556398b2, L0x5555556398b4, L0x5555556398b6, L0x5555556398b8, L0x5555556398ba, L0x5555556398bc, L0x5555556398be];
(* vmovdqa 0x300(%rsi),%ymm2                       #! EA = L0x5555556398e0; Value = 0x00690367034b01ae; PC = 0x55555556f18f *)
mov %ymm2 [L0x5555556398e0, L0x5555556398e2, L0x5555556398e4, L0x5555556398e6, L0x5555556398e8, L0x5555556398ea, L0x5555556398ec, L0x5555556398ee, L0x5555556398f0, L0x5555556398f2, L0x5555556398f4, L0x5555556398f6, L0x5555556398f8, L0x5555556398fa, L0x5555556398fc, L0x5555556398fe];
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556f197 *)
smull %mulHymm10 %mulL %ymm14 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556f19c *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f1a1 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f1a6 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f1ab *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f1b0 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f1b5 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f1b9 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f1bd *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f1c1 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f1c5 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f1c9 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f1cd *)
add %ymm8 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f1d2 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f1d7 *)
add %ymm4 %ymm3 %ymm6;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f1db *)
sub %ymm3 %ymm6 %ymm3;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f1df *)
add %ymm6 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f1e4 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f1e9 *)
add %ymm5 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f1ee *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f1f3 *)
sub %ymm8 %ymm8 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f1f8 *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f1fd *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f202 *)
add %ymm3 %ymm13 %ymm3;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f207 *)
sub %ymm6 %ymm6 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f20c *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f211 *)
sub %ymm5 %ymm5 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f216 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm8,(%rdi)                            #! EA = L0x7fffffffaf80; PC = 0x55555556f21b *)
mov [L0x7fffffffaf80, L0x7fffffffaf82, L0x7fffffffaf84, L0x7fffffffaf86, L0x7fffffffaf88, L0x7fffffffaf8a, L0x7fffffffaf8c, L0x7fffffffaf8e, L0x7fffffffaf90, L0x7fffffffaf92, L0x7fffffffaf94, L0x7fffffffaf96, L0x7fffffffaf98, L0x7fffffffaf9a, L0x7fffffffaf9c, L0x7fffffffaf9e] %ymm8;
(* vmovdqa %ymm4,0x20(%rdi)                        #! EA = L0x7fffffffafa0; PC = 0x55555556f21f *)
mov [L0x7fffffffafa0, L0x7fffffffafa2, L0x7fffffffafa4, L0x7fffffffafa6, L0x7fffffffafa8, L0x7fffffffafaa, L0x7fffffffafac, L0x7fffffffafae, L0x7fffffffafb0, L0x7fffffffafb2, L0x7fffffffafb4, L0x7fffffffafb6, L0x7fffffffafb8, L0x7fffffffafba, L0x7fffffffafbc, L0x7fffffffafbe] %ymm4;
(* vmovdqa %ymm10,0x40(%rdi)                       #! EA = L0x7fffffffafc0; PC = 0x55555556f224 *)
mov [L0x7fffffffafc0, L0x7fffffffafc2, L0x7fffffffafc4, L0x7fffffffafc6, L0x7fffffffafc8, L0x7fffffffafca, L0x7fffffffafcc, L0x7fffffffafce, L0x7fffffffafd0, L0x7fffffffafd2, L0x7fffffffafd4, L0x7fffffffafd6, L0x7fffffffafd8, L0x7fffffffafda, L0x7fffffffafdc, L0x7fffffffafde] %ymm10;
(* vmovdqa %ymm3,0x60(%rdi)                        #! EA = L0x7fffffffafe0; PC = 0x55555556f229 *)
mov [L0x7fffffffafe0, L0x7fffffffafe2, L0x7fffffffafe4, L0x7fffffffafe6, L0x7fffffffafe8, L0x7fffffffafea, L0x7fffffffafec, L0x7fffffffafee, L0x7fffffffaff0, L0x7fffffffaff2, L0x7fffffffaff4, L0x7fffffffaff6, L0x7fffffffaff8, L0x7fffffffaffa, L0x7fffffffaffc, L0x7fffffffaffe] %ymm3;
(* vmovdqa %ymm6,0x80(%rdi)                        #! EA = L0x7fffffffb000; PC = 0x55555556f22e *)
mov [L0x7fffffffb000, L0x7fffffffb002, L0x7fffffffb004, L0x7fffffffb006, L0x7fffffffb008, L0x7fffffffb00a, L0x7fffffffb00c, L0x7fffffffb00e, L0x7fffffffb010, L0x7fffffffb012, L0x7fffffffb014, L0x7fffffffb016, L0x7fffffffb018, L0x7fffffffb01a, L0x7fffffffb01c, L0x7fffffffb01e] %ymm6;
(* vmovdqa %ymm5,0xa0(%rdi)                        #! EA = L0x7fffffffb020; PC = 0x55555556f236 *)
mov [L0x7fffffffb020, L0x7fffffffb022, L0x7fffffffb024, L0x7fffffffb026, L0x7fffffffb028, L0x7fffffffb02a, L0x7fffffffb02c, L0x7fffffffb02e, L0x7fffffffb030, L0x7fffffffb032, L0x7fffffffb034, L0x7fffffffb036, L0x7fffffffb038, L0x7fffffffb03a, L0x7fffffffb03c, L0x7fffffffb03e] %ymm5;
(* vmovdqa %ymm9,0xc0(%rdi)                        #! EA = L0x7fffffffb040; PC = 0x55555556f23e *)
mov [L0x7fffffffb040, L0x7fffffffb042, L0x7fffffffb044, L0x7fffffffb046, L0x7fffffffb048, L0x7fffffffb04a, L0x7fffffffb04c, L0x7fffffffb04e, L0x7fffffffb050, L0x7fffffffb052, L0x7fffffffb054, L0x7fffffffb056, L0x7fffffffb058, L0x7fffffffb05a, L0x7fffffffb05c, L0x7fffffffb05e] %ymm9;
(* vmovdqa %ymm11,0xe0(%rdi)                       #! EA = L0x7fffffffb060; PC = 0x55555556f246 *)
mov [L0x7fffffffb060, L0x7fffffffb062, L0x7fffffffb064, L0x7fffffffb066, L0x7fffffffb068, L0x7fffffffb06a, L0x7fffffffb06c, L0x7fffffffb06e, L0x7fffffffb070, L0x7fffffffb072, L0x7fffffffb074, L0x7fffffffb076, L0x7fffffffb078, L0x7fffffffb07a, L0x7fffffffb07c, L0x7fffffffb07e] %ymm11;
(* vmovdqa 0x320(%rsi),%ymm15                      #! EA = L0x555555639900; Value = 0x0313031303130313; PC = 0x55555556f24e *)
mov %ymm15 [L0x555555639900, L0x555555639902, L0x555555639904, L0x555555639906, L0x555555639908, L0x55555563990a, L0x55555563990c, L0x55555563990e, L0x555555639910, L0x555555639912, L0x555555639914, L0x555555639916, L0x555555639918, L0x55555563991a, L0x55555563991c, L0x55555563991e];
(* vmovdqa 0x180(%rdi),%ymm8                       #! EA = L0x7fffffffb100; Value = 0xfffe0000f9bff9c0; PC = 0x55555556f256 *)
mov %ymm8 [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e];
(* vmovdqa 0x1a0(%rdi),%ymm9                       #! EA = L0x7fffffffb120; Value = 0x063ef9c0f9c1f9c0; PC = 0x55555556f25e *)
mov %ymm9 [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e];
(* vmovdqa 0x1c0(%rdi),%ymm10                      #! EA = L0x7fffffffb140; Value = 0x0641063ff9c0ffff; PC = 0x55555556f266 *)
mov %ymm10 [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e];
(* vmovdqa 0x1e0(%rdi),%ymm11                      #! EA = L0x7fffffffb160; Value = 0xfffef9bf06400640; PC = 0x55555556f26e *)
mov %ymm11 [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e];
(* vmovdqa 0x340(%rsi),%ymm2                       #! EA = L0x555555639920; Value = 0xfa13fa13fa13fa13; PC = 0x55555556f276 *)
mov %ymm2 [L0x555555639920, L0x555555639922, L0x555555639924, L0x555555639926, L0x555555639928, L0x55555563992a, L0x55555563992c, L0x55555563992e, L0x555555639930, L0x555555639932, L0x555555639934, L0x555555639936, L0x555555639938, L0x55555563993a, L0x55555563993c, L0x55555563993e];
(* vpmullw %ymm15,%ymm8,%ymm12                     #! PC = 0x55555556f27e *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm13                     #! PC = 0x55555556f283 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm14                    #! PC = 0x55555556f288 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f28d *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f292 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f296 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f29a *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f29e *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovdqa 0x100(%rdi),%ymm4                       #! EA = L0x7fffffffb080; Value = 0xf9c0fffff9c00640; PC = 0x55555556f2a2 *)
mov %ymm4 [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e];
(* vmovdqa 0x120(%rdi),%ymm5                       #! EA = L0x7fffffffb0a0; Value = 0x06410641f9bff9bf; PC = 0x55555556f2aa *)
mov %ymm5 [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be];
(* vmovdqa 0x140(%rdi),%ymm6                       #! EA = L0x7fffffffb0c0; Value = 0x00010000063f0000; PC = 0x55555556f2b2 *)
mov %ymm6 [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de];
(* vmovdqa 0x160(%rdi),%ymm7                       #! EA = L0x7fffffffb0e0; Value = 0x000100820001ffff; PC = 0x55555556f2ba *)
mov %ymm7 [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f2c2 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f2c6 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f2ca *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f2ce *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm8,%ymm4,%ymm3                        #! PC = 0x55555556f2d2 *)
add %ymm3 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556f2d7 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm9,%ymm5,%ymm4                        #! PC = 0x55555556f2dc *)
add %ymm4 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f2e1 *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm10,%ymm6,%ymm5                       #! PC = 0x55555556f2e6 *)
add %ymm5 %ymm10 %ymm6;
(* vpsubw %ymm10,%ymm6,%ymm10                      #! PC = 0x55555556f2eb *)
sub %ymm10 %ymm6 %ymm10;
(* vpaddw %ymm11,%ymm7,%ymm6                       #! PC = 0x55555556f2f0 *)
add %ymm6 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f2f5 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f2fa *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f2ff *)
add %ymm8 %ymm12 %ymm8;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f304 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm9,%ymm9                       #! PC = 0x55555556f309 *)
add %ymm9 %ymm13 %ymm9;
(* vpsubw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f30e *)
sub %ymm5 %ymm5 %ymm14;
(* vpaddw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f313 *)
add %ymm10 %ymm14 %ymm10;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f318 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f31d *)
add %ymm11 %ymm15 %ymm11;
(* vperm2i128 $0x20,%ymm10,%ymm5,%ymm7             #! PC = 0x55555556f322 *)
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
_, _, _, _] %ymm5;
mov [ymm7_8, ymm7_9, ymm7_a, ymm7_b,
ymm7_c, ymm7_d, ymm7_e, ymm7_f,
_, _, _, _,
_, _, _, _] %ymm10;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vperm2i128 $0x31,%ymm10,%ymm5,%ymm10            #! PC = 0x55555556f328 *)
mov [_, _, _, _,
_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
ymm10_4, ymm10_5, ymm10_6, ymm10_7] %ymm5;
mov [_, _, _, _,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vperm2i128 $0x20,%ymm11,%ymm6,%ymm5             #! PC = 0x55555556f32e *)
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
_, _, _, _] %ymm6;
mov [ymm5_8, ymm5_9, ymm5_a, ymm5_b,
ymm5_c, ymm5_d, ymm5_e, ymm5_f,
_, _, _, _,
_, _, _, _] %ymm11;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vperm2i128 $0x31,%ymm11,%ymm6,%ymm11            #! PC = 0x55555556f334 *)
mov [_, _, _, _,
_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
ymm11_4, ymm11_5, ymm11_6, ymm11_7] %ymm6;
mov [_, _, _, _,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x360(%rsi),%ymm15                      #! EA = L0x555555639940; Value = 0x6e1f6e1f6e1f6e1f; PC = 0x55555556f33a *)
mov %ymm15 [L0x555555639940, L0x555555639942, L0x555555639944, L0x555555639946, L0x555555639948, L0x55555563994a, L0x55555563994c, L0x55555563994e, L0x555555639950, L0x555555639952, L0x555555639954, L0x555555639956, L0x555555639958, L0x55555563995a, L0x55555563995c, L0x55555563995e];
(* vmovdqa 0x380(%rsi),%ymm2                       #! EA = L0x555555639960; Value = 0x011f011f011f011f; PC = 0x55555556f342 *)
mov %ymm2 [L0x555555639960, L0x555555639962, L0x555555639964, L0x555555639966, L0x555555639968, L0x55555563996a, L0x55555563996c, L0x55555563996e, L0x555555639970, L0x555555639972, L0x555555639974, L0x555555639976, L0x555555639978, L0x55555563997a, L0x55555563997c, L0x55555563997e];
(* vpmullw %ymm15,%ymm7,%ymm12                     #! PC = 0x55555556f34a *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm10,%ymm13                    #! PC = 0x55555556f34f *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm14                     #! PC = 0x55555556f354 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f359 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f35e *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f362 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f366 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f36a *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vperm2i128 $0x20,%ymm8,%ymm3,%ymm6              #! PC = 0x55555556f36e *)
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3,
ymm6_4, ymm6_5, ymm6_6, ymm6_7,
_, _, _, _,
_, _, _, _] %ymm3;
mov [ymm6_8, ymm6_9, ymm6_a, ymm6_b,
ymm6_c, ymm6_d, ymm6_e, ymm6_f,
_, _, _, _,
_, _, _, _] %ymm8;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vperm2i128 $0x31,%ymm8,%ymm3,%ymm8              #! PC = 0x55555556f374 *)
mov [_, _, _, _,
_, _, _, _,
ymm8_0, ymm8_1, ymm8_2, ymm8_3,
ymm8_4, ymm8_5, ymm8_6, ymm8_7] %ymm3;
mov [_, _, _, _,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vperm2i128 $0x20,%ymm9,%ymm4,%ymm3              #! PC = 0x55555556f37a *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
_, _, _, _] %ymm4;
mov [ymm3_8, ymm3_9, ymm3_a, ymm3_b,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _,
_, _, _, _] %ymm9;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vperm2i128 $0x31,%ymm9,%ymm4,%ymm9              #! PC = 0x55555556f380 *)
mov [_, _, _, _,
_, _, _, _,
ymm9_0, ymm9_1, ymm9_2, ymm9_3,
ymm9_4, ymm9_5, ymm9_6, ymm9_7] %ymm4;
mov [_, _, _, _,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
ymm9_c, ymm9_d, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f386 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f38a *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f38e *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f392 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm7,%ymm6,%ymm4                        #! PC = 0x55555556f396 *)
add %ymm4 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f39a *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm10,%ymm8,%ymm6                       #! PC = 0x55555556f39e *)
add %ymm6 %ymm10 %ymm8;
(* vpsubw %ymm10,%ymm8,%ymm10                      #! PC = 0x55555556f3a3 *)
sub %ymm10 %ymm8 %ymm10;
(* vpaddw %ymm5,%ymm3,%ymm8                        #! PC = 0x55555556f3a8 *)
add %ymm8 %ymm5 %ymm3;
(* vpsubw %ymm5,%ymm3,%ymm5                        #! PC = 0x55555556f3ac *)
sub %ymm5 %ymm3 %ymm5;
(* vpaddw %ymm11,%ymm9,%ymm3                       #! PC = 0x55555556f3b0 *)
add %ymm3 %ymm11 %ymm9;
(* vpsubw %ymm11,%ymm9,%ymm11                      #! PC = 0x55555556f3b5 *)
sub %ymm11 %ymm9 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f3ba *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm7,%ymm7                       #! PC = 0x55555556f3bf *)
add %ymm7 %ymm12 %ymm7;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f3c4 *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm10,%ymm10                     #! PC = 0x55555556f3c9 *)
add %ymm10 %ymm13 %ymm10;
(* vpsubw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f3ce *)
sub %ymm8 %ymm8 %ymm14;
(* vpaddw %ymm14,%ymm5,%ymm5                       #! PC = 0x55555556f3d3 *)
add %ymm5 %ymm14 %ymm5;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f3d8 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f3dd *)
add %ymm11 %ymm15 %ymm11;
(* vpunpcklqdq %ymm5,%ymm8,%ymm9                   #! PC = 0x55555556f3e2 *)
mov [ymm9_4, ymm9_5, ymm9_6, ymm9_7,
_, _, _, _,
ymm9_c, ymm9_d, ymm9_e, ymm9_f,
_, _, _, _] %ymm5;
mov [ymm9_0, ymm9_1, ymm9_2, ymm9_3,
_, _, _, _,
ymm9_8, ymm9_9, ymm9_a, ymm9_b,
_, _, _, _] %ymm8;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpunpckhqdq %ymm5,%ymm8,%ymm5                   #! PC = 0x55555556f3e6 *)
mov [_, _, _, _,
ymm5_4, ymm5_5, ymm5_6, ymm5_7,
_, _, _, _,
ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
mov [_, _, _, _,
ymm5_0, ymm5_1, ymm5_2, ymm5_3,
_, _, _, _,
ymm5_8, ymm5_9, ymm5_a, ymm5_b] %ymm8;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpunpcklqdq %ymm11,%ymm3,%ymm8                  #! PC = 0x55555556f3ea *)
mov [ymm8_4, ymm8_5, ymm8_6, ymm8_7,
_, _, _, _,
ymm8_c, ymm8_d, ymm8_e, ymm8_f,
_, _, _, _] %ymm11;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3,
_, _, _, _,
ymm8_8, ymm8_9, ymm8_a, ymm8_b,
_, _, _, _] %ymm3;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpunpckhqdq %ymm11,%ymm3,%ymm11                 #! PC = 0x55555556f3ef *)
mov [_, _, _, _,
ymm11_4, ymm11_5, ymm11_6, ymm11_7,
_, _, _, _,
ymm11_c, ymm11_d, ymm11_e, ymm11_f] %ymm11;
mov [_, _, _, _,
ymm11_0, ymm11_1, ymm11_2, ymm11_3,
_, _, _, _,
ymm11_8, ymm11_9, ymm11_a, ymm11_b] %ymm3;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x3a0(%rsi),%ymm15                      #! EA = L0x555555639980; Value = 0x29c229c229c229c2; PC = 0x55555556f3f4 *)
mov %ymm15 [L0x555555639980, L0x555555639982, L0x555555639984, L0x555555639986, L0x555555639988, L0x55555563998a, L0x55555563998c, L0x55555563998e, L0x555555639990, L0x555555639992, L0x555555639994, L0x555555639996, L0x555555639998, L0x55555563999a, L0x55555563999c, L0x55555563999e];
(* vmovdqa 0x3c0(%rsi),%ymm2                       #! EA = L0x5555556399a0; Value = 0x03c203c203c203c2; PC = 0x55555556f3fc *)
mov %ymm2 [L0x5555556399a0, L0x5555556399a2, L0x5555556399a4, L0x5555556399a6, L0x5555556399a8, L0x5555556399aa, L0x5555556399ac, L0x5555556399ae, L0x5555556399b0, L0x5555556399b2, L0x5555556399b4, L0x5555556399b6, L0x5555556399b8, L0x5555556399ba, L0x5555556399bc, L0x5555556399be];
(* vpmullw %ymm15,%ymm9,%ymm12                     #! PC = 0x55555556f404 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm5,%ymm13                     #! PC = 0x55555556f409 *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm14                     #! PC = 0x55555556f40e *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f413 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f418 *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f41c *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f420 *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f424 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpunpcklqdq %ymm7,%ymm4,%ymm3                   #! PC = 0x55555556f428 *)
mov [ymm3_4, ymm3_5, ymm3_6, ymm3_7,
_, _, _, _,
ymm3_c, ymm3_d, ymm3_e, ymm3_f,
_, _, _, _] %ymm7;
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3,
_, _, _, _,
ymm3_8, ymm3_9, ymm3_a, ymm3_b,
_, _, _, _] %ymm4;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpunpckhqdq %ymm7,%ymm4,%ymm7                   #! PC = 0x55555556f42c *)
mov [_, _, _, _,
ymm7_4, ymm7_5, ymm7_6, ymm7_7,
_, _, _, _,
ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
mov [_, _, _, _,
ymm7_0, ymm7_1, ymm7_2, ymm7_3,
_, _, _, _,
ymm7_8, ymm7_9, ymm7_a, ymm7_b] %ymm4;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpunpcklqdq %ymm10,%ymm6,%ymm4                  #! PC = 0x55555556f430 *)
mov [ymm4_4, ymm4_5, ymm4_6, ymm4_7,
_, _, _, _,
ymm4_c, ymm4_d, ymm4_e, ymm4_f,
_, _, _, _] %ymm10;
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3,
_, _, _, _,
ymm4_8, ymm4_9, ymm4_a, ymm4_b,
_, _, _, _] %ymm6;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpunpckhqdq %ymm10,%ymm6,%ymm10                 #! PC = 0x55555556f435 *)
mov [_, _, _, _,
ymm10_4, ymm10_5, ymm10_6, ymm10_7,
_, _, _, _,
ymm10_c, ymm10_d, ymm10_e, ymm10_f] %ymm10;
mov [_, _, _, _,
ymm10_0, ymm10_1, ymm10_2, ymm10_3,
_, _, _, _,
ymm10_8, ymm10_9, ymm10_a, ymm10_b] %ymm6;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f43a *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f43e *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f442 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f446 *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm9,%ymm3,%ymm6                        #! PC = 0x55555556f44a *)
add %ymm6 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f44f *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm5,%ymm7,%ymm3                        #! PC = 0x55555556f454 *)
add %ymm3 %ymm5 %ymm7;
(* vpsubw %ymm5,%ymm7,%ymm5                        #! PC = 0x55555556f458 *)
sub %ymm5 %ymm7 %ymm5;
(* vpaddw %ymm8,%ymm4,%ymm7                        #! PC = 0x55555556f45c *)
add %ymm7 %ymm8 %ymm4;
(* vpsubw %ymm8,%ymm4,%ymm8                        #! PC = 0x55555556f461 *)
sub %ymm8 %ymm4 %ymm8;
(* vpaddw %ymm11,%ymm10,%ymm4                      #! PC = 0x55555556f466 *)
add %ymm4 %ymm11 %ymm10;
(* vpsubw %ymm11,%ymm10,%ymm11                     #! PC = 0x55555556f46b *)
sub %ymm11 %ymm10 %ymm11;
(* vpsubw %ymm12,%ymm6,%ymm6                       #! PC = 0x55555556f470 *)
sub %ymm6 %ymm6 %ymm12;
(* vpaddw %ymm12,%ymm9,%ymm9                       #! PC = 0x55555556f475 *)
add %ymm9 %ymm12 %ymm9;
(* vpsubw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f47a *)
sub %ymm3 %ymm3 %ymm13;
(* vpaddw %ymm13,%ymm5,%ymm5                       #! PC = 0x55555556f47f *)
add %ymm5 %ymm13 %ymm5;
(* vpsubw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f484 *)
sub %ymm7 %ymm7 %ymm14;
(* vpaddw %ymm14,%ymm8,%ymm8                       #! PC = 0x55555556f489 *)
add %ymm8 %ymm14 %ymm8;
(* vpsubw %ymm15,%ymm4,%ymm4                       #! PC = 0x55555556f48e *)
sub %ymm4 %ymm4 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f493 *)
add %ymm11 %ymm15 %ymm11;
(* vmovsldup %ymm8,%ymm10                          #! PC = 0x55555556f498 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm8;
mov %ymm10 [
ymm8_0, ymm8_1, ymm8_0, ymm8_1,
ymm8_4, ymm8_5, ymm8_4, ymm8_5,
ymm8_8, ymm8_9, ymm8_8, ymm8_9,
ymm8_c, ymm8_d, ymm8_c, ymm8_d];
(* vpblendd $0xaa,%ymm10,%ymm7,%ymm10              #! PC = 0x55555556f49d *)
mov [ymm10_0, ymm10_1, _, _,
ymm10_4, ymm10_5, _, _,
ymm10_8, ymm10_9, _, _,
ymm10_c, ymm10_d, _, _] %ymm7;
mov [_, _, ymm10_2, ymm10_3,
_, _, ymm10_6, ymm10_7,
_, _, ymm10_a, ymm10_b,
_, _, ymm10_e, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpsrlq $0x20,%ymm7,%ymm7                        #! PC = 0x55555556f4a3 *)
mov [_, _, ymm7_0010, ymm7_0011,
_, _, ymm7_0110, ymm7_0111,
_, _, ymm7_1010, ymm7_1011,
_, _, ymm7_1110, ymm7_1111] %ymm7;
mov %ymm7 [ymm7_0010, ymm7_0011, 0@sint16, 0@sint16,
ymm7_0110, ymm7_0111, 0@sint16, 0@sint16,
ymm7_1010, ymm7_1011, 0@sint16, 0@sint16,
ymm7_1110, ymm7_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm8,%ymm7,%ymm8                #! PC = 0x55555556f4a8 *)
mov [ymm8_0, ymm8_1, _, _,
ymm8_4, ymm8_5, _, _,
ymm8_8, ymm8_9, _, _,
ymm8_c, ymm8_d, _, _] %ymm7;
mov [_, _, ymm8_2, ymm8_3,
_, _, ymm8_6, ymm8_7,
_, _, ymm8_a, ymm8_b,
_, _, ymm8_e, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vmovsldup %ymm11,%ymm7                          #! PC = 0x55555556f4ae *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm11;
mov %ymm7 [
ymm11_0, ymm11_1, ymm11_0, ymm11_1,
ymm11_4, ymm11_5, ymm11_4, ymm11_5,
ymm11_8, ymm11_9, ymm11_8, ymm11_9,
ymm11_c, ymm11_d, ymm11_c, ymm11_d];
(* vpblendd $0xaa,%ymm7,%ymm4,%ymm7                #! PC = 0x55555556f4b3 *)
mov [ymm7_0, ymm7_1, _, _,
ymm7_4, ymm7_5, _, _,
ymm7_8, ymm7_9, _, _,
ymm7_c, ymm7_d, _, _] %ymm4;
mov [_, _, ymm7_2, ymm7_3,
_, _, ymm7_6, ymm7_7,
_, _, ymm7_a, ymm7_b,
_, _, ymm7_e, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpsrlq $0x20,%ymm4,%ymm4                        #! PC = 0x55555556f4b9 *)
mov [_, _, ymm4_0010, ymm4_0011,
_, _, ymm4_0110, ymm4_0111,
_, _, ymm4_1010, ymm4_1011,
_, _, ymm4_1110, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0010, ymm4_0011, 0@sint16, 0@sint16,
ymm4_0110, ymm4_0111, 0@sint16, 0@sint16,
ymm4_1010, ymm4_1011, 0@sint16, 0@sint16,
ymm4_1110, ymm4_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm11,%ymm4,%ymm11              #! PC = 0x55555556f4be *)
mov [ymm11_0, ymm11_1, _, _,
ymm11_4, ymm11_5, _, _,
ymm11_8, ymm11_9, _, _,
ymm11_c, ymm11_d, _, _] %ymm4;
mov [_, _, ymm11_2, ymm11_3,
_, _, ymm11_6, ymm11_7,
_, _, ymm11_a, ymm11_b,
_, _, ymm11_e, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x3e0(%rsi),%ymm15                      #! EA = L0x5555556399c0; Value = 0x5ef95ef992579257; PC = 0x55555556f4c4 *)
mov %ymm15 [L0x5555556399c0, L0x5555556399c2, L0x5555556399c4, L0x5555556399c6, L0x5555556399c8, L0x5555556399ca, L0x5555556399cc, L0x5555556399ce, L0x5555556399d0, L0x5555556399d2, L0x5555556399d4, L0x5555556399d6, L0x5555556399d8, L0x5555556399da, L0x5555556399dc, L0x5555556399de];
(* vmovdqa 0x400(%rsi),%ymm2                       #! EA = L0x5555556399e0; Value = 0x03f903f9fd57fd57; PC = 0x55555556f4cc *)
mov %ymm2 [L0x5555556399e0, L0x5555556399e2, L0x5555556399e4, L0x5555556399e6, L0x5555556399e8, L0x5555556399ea, L0x5555556399ec, L0x5555556399ee, L0x5555556399f0, L0x5555556399f2, L0x5555556399f4, L0x5555556399f6, L0x5555556399f8, L0x5555556399fa, L0x5555556399fc, L0x5555556399fe];
(* vpmullw %ymm15,%ymm10,%ymm12                    #! PC = 0x55555556f4d4 *)
smull %mulHymm10 %mulL %ymm15 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm8,%ymm13                     #! PC = 0x55555556f4d9 *)
smull %mulHymm8 %mulL %ymm15 %ymm8;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm14                     #! PC = 0x55555556f4de *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f4e3 *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm10,%ymm10                     #! PC = 0x55555556f4e8 *)
smull %ymm10 %mulLymm10 %ymm2 %ymm10;
(* vpmulhw %ymm2,%ymm8,%ymm8                       #! PC = 0x55555556f4ec *)
smull %ymm8 %mulLymm8 %ymm2 %ymm8;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f4f0 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f4f4 *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vmovsldup %ymm9,%ymm4                           #! PC = 0x55555556f4f8 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm9;
mov %ymm4 [
ymm9_0, ymm9_1, ymm9_0, ymm9_1,
ymm9_4, ymm9_5, ymm9_4, ymm9_5,
ymm9_8, ymm9_9, ymm9_8, ymm9_9,
ymm9_c, ymm9_d, ymm9_c, ymm9_d];
(* vpblendd $0xaa,%ymm4,%ymm6,%ymm4                #! PC = 0x55555556f4fd *)
mov [ymm4_0, ymm4_1, _, _,
ymm4_4, ymm4_5, _, _,
ymm4_8, ymm4_9, _, _,
ymm4_c, ymm4_d, _, _] %ymm6;
mov [_, _, ymm4_2, ymm4_3,
_, _, ymm4_6, ymm4_7,
_, _, ymm4_a, ymm4_b,
_, _, ymm4_e, ymm4_f] %ymm4;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7, ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpsrlq $0x20,%ymm6,%ymm6                        #! PC = 0x55555556f503 *)
mov [_, _, ymm6_0010, ymm6_0011,
_, _, ymm6_0110, ymm6_0111,
_, _, ymm6_1010, ymm6_1011,
_, _, ymm6_1110, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0010, ymm6_0011, 0@sint16, 0@sint16,
ymm6_0110, ymm6_0111, 0@sint16, 0@sint16,
ymm6_1010, ymm6_1011, 0@sint16, 0@sint16,
ymm6_1110, ymm6_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f508 *)
mov [ymm9_0, ymm9_1, _, _,
ymm9_4, ymm9_5, _, _,
ymm9_8, ymm9_9, _, _,
ymm9_c, ymm9_d, _, _] %ymm6;
mov [_, _, ymm9_2, ymm9_3,
_, _, ymm9_6, ymm9_7,
_, _, ymm9_a, ymm9_b,
_, _, ymm9_e, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vmovsldup %ymm5,%ymm6                           #! PC = 0x55555556f50e *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm5;
mov %ymm6 [
ymm5_0, ymm5_1, ymm5_0, ymm5_1,
ymm5_4, ymm5_5, ymm5_4, ymm5_5,
ymm5_8, ymm5_9, ymm5_8, ymm5_9,
ymm5_c, ymm5_d, ymm5_c, ymm5_d];
(* vpblendd $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f512 *)
mov [ymm6_0, ymm6_1, _, _,
ymm6_4, ymm6_5, _, _,
ymm6_8, ymm6_9, _, _,
ymm6_c, ymm6_d, _, _] %ymm3;
mov [_, _, ymm6_2, ymm6_3,
_, _, ymm6_6, ymm6_7,
_, _, ymm6_a, ymm6_b,
_, _, ymm6_e, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrlq $0x20,%ymm3,%ymm3                        #! PC = 0x55555556f518 *)
mov [_, _, ymm3_0010, ymm3_0011,
_, _, ymm3_0110, ymm3_0111,
_, _, ymm3_1010, ymm3_1011,
_, _, ymm3_1110, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0010, ymm3_0011, 0@sint16, 0@sint16,
ymm3_0110, ymm3_0111, 0@sint16, 0@sint16,
ymm3_1010, ymm3_1011, 0@sint16, 0@sint16,
ymm3_1110, ymm3_1111, 0@sint16, 0@sint16];
(* vpblendd $0xaa,%ymm5,%ymm3,%ymm5                #! PC = 0x55555556f51d *)
mov [ymm5_0, ymm5_1, _, _,
ymm5_4, ymm5_5, _, _,
ymm5_8, ymm5_9, _, _,
ymm5_c, ymm5_d, _, _] %ymm3;
mov [_, _, ymm5_2, ymm5_3,
_, _, ymm5_6, ymm5_7,
_, _, ymm5_a, ymm5_b,
_, _, ymm5_e, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f523 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f527 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f52b *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f52f *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm3                       #! PC = 0x55555556f533 *)
add %ymm3 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f538 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm8,%ymm9,%ymm4                        #! PC = 0x55555556f53d *)
add %ymm4 %ymm8 %ymm9;
(* vpsubw %ymm8,%ymm9,%ymm8                        #! PC = 0x55555556f542 *)
sub %ymm8 %ymm9 %ymm8;
(* vpaddw %ymm7,%ymm6,%ymm9                        #! PC = 0x55555556f547 *)
add %ymm9 %ymm7 %ymm6;
(* vpsubw %ymm7,%ymm6,%ymm7                        #! PC = 0x55555556f54b *)
sub %ymm7 %ymm6 %ymm7;
(* vpaddw %ymm11,%ymm5,%ymm6                       #! PC = 0x55555556f54f *)
add %ymm6 %ymm11 %ymm5;
(* vpsubw %ymm11,%ymm5,%ymm11                      #! PC = 0x55555556f554 *)
sub %ymm11 %ymm5 %ymm11;
(* vpsubw %ymm12,%ymm3,%ymm3                       #! PC = 0x55555556f559 *)
sub %ymm3 %ymm3 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f55e *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f563 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm8,%ymm8                       #! PC = 0x55555556f568 *)
add %ymm8 %ymm13 %ymm8;
(* vpsubw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f56d *)
sub %ymm9 %ymm9 %ymm14;
(* vpaddw %ymm14,%ymm7,%ymm7                       #! PC = 0x55555556f572 *)
add %ymm7 %ymm14 %ymm7;
(* vpsubw %ymm15,%ymm6,%ymm6                       #! PC = 0x55555556f577 *)
sub %ymm6 %ymm6 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f57c *)
add %ymm11 %ymm15 %ymm11;
(* vpslld $0x10,%ymm7,%ymm5                        #! PC = 0x55555556f581 *)
mov [ymm7_0000, _, ymm7_0010, _,
ymm7_0100, _, ymm7_0110, _,
ymm7_1000, _, ymm7_1010, _,
ymm7_1100, _, ymm7_1110, _] %ymm7;
mov %ymm5 [0@sint16, ymm7_0000, 0@sint16, ymm7_0010,
0@sint16, ymm7_0100, 0@sint16, ymm7_0110,
0@sint16, ymm7_1000, 0@sint16, ymm7_1010,
0@sint16, ymm7_1100, 0@sint16, ymm7_1110];
(* vpblendw $0xaa,%ymm5,%ymm9,%ymm5                #! PC = 0x55555556f586 *)
mov [ymm5_0, _, ymm5_2, _,
ymm5_4, _, ymm5_6, _,
ymm5_8, _, ymm5_a, _,
ymm5_c, _, ymm5_e, _] %ymm9;
mov [_, ymm5_1, _, ymm5_3,
_, ymm5_5, _, ymm5_7,
_, ymm5_9, _, ymm5_b,
_, ymm5_d, _, ymm5_f] %ymm5;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7, ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpsrld $0x10,%ymm9,%ymm9                        #! PC = 0x55555556f58c *)
mov [_, ymm9_0001, _, ymm9_0011,
_, ymm9_0101, _, ymm9_0111,
_, ymm9_1001, _, ymm9_1011,
_, ymm9_1101, _, ymm9_1111] %ymm9;
mov %ymm9 [ymm9_0001, 0@sint16, ymm9_0011, 0@sint16,
ymm9_0101, 0@sint16, ymm9_0111, 0@sint16,
ymm9_1001, 0@sint16, ymm9_1011, 0@sint16,
ymm9_1101, 0@sint16, ymm9_1111, 0@sint16];
(* vpblendw $0xaa,%ymm7,%ymm9,%ymm7                #! PC = 0x55555556f592 *)
mov [ymm7_0, _, ymm7_2, _,
ymm7_4, _, ymm7_6, _,
ymm7_8, _, ymm7_a, _,
ymm7_c, _, ymm7_e, _] %ymm9;
mov [_, ymm7_1, _, ymm7_3,
_, ymm7_5, _, ymm7_7,
_, ymm7_9, _, ymm7_b,
_, ymm7_d, _, ymm7_f] %ymm7;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7, ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpslld $0x10,%ymm11,%ymm9                       #! PC = 0x55555556f598 *)
mov [ymm11_0000, _, ymm11_0010, _,
ymm11_0100, _, ymm11_0110, _,
ymm11_1000, _, ymm11_1010, _,
ymm11_1100, _, ymm11_1110, _] %ymm11;
mov %ymm9 [0@sint16, ymm11_0000, 0@sint16, ymm11_0010,
0@sint16, ymm11_0100, 0@sint16, ymm11_0110,
0@sint16, ymm11_1000, 0@sint16, ymm11_1010,
0@sint16, ymm11_1100, 0@sint16, ymm11_1110];
(* vpblendw $0xaa,%ymm9,%ymm6,%ymm9                #! PC = 0x55555556f59e *)
mov [ymm9_0, _, ymm9_2, _,
ymm9_4, _, ymm9_6, _,
ymm9_8, _, ymm9_a, _,
ymm9_c, _, ymm9_e, _] %ymm6;
mov [_, ymm9_1, _, ymm9_3,
_, ymm9_5, _, ymm9_7,
_, ymm9_9, _, ymm9_b,
_, ymm9_d, _, ymm9_f] %ymm9;
mov %ymm9 [ymm9_0, ymm9_1, ymm9_2, ymm9_3, ymm9_4, ymm9_5, ymm9_6, ymm9_7, ymm9_8, ymm9_9, ymm9_a, ymm9_b, ymm9_c, ymm9_d, ymm9_e, ymm9_f];
(* vpsrld $0x10,%ymm6,%ymm6                        #! PC = 0x55555556f5a4 *)
mov [_, ymm6_0001, _, ymm6_0011,
_, ymm6_0101, _, ymm6_0111,
_, ymm6_1001, _, ymm6_1011,
_, ymm6_1101, _, ymm6_1111] %ymm6;
mov %ymm6 [ymm6_0001, 0@sint16, ymm6_0011, 0@sint16,
ymm6_0101, 0@sint16, ymm6_0111, 0@sint16,
ymm6_1001, 0@sint16, ymm6_1011, 0@sint16,
ymm6_1101, 0@sint16, ymm6_1111, 0@sint16];
(* vpblendw $0xaa,%ymm11,%ymm6,%ymm11              #! PC = 0x55555556f5a9 *)
mov [ymm11_0, _, ymm11_2, _,
ymm11_4, _, ymm11_6, _,
ymm11_8, _, ymm11_a, _,
ymm11_c, _, ymm11_e, _] %ymm6;
mov [_, ymm11_1, _, ymm11_3,
_, ymm11_5, _, ymm11_7,
_, ymm11_9, _, ymm11_b,
_, ymm11_d, _, ymm11_f] %ymm11;
mov %ymm11 [ymm11_0, ymm11_1, ymm11_2, ymm11_3, ymm11_4, ymm11_5, ymm11_6, ymm11_7, ymm11_8, ymm11_9, ymm11_a, ymm11_b, ymm11_c, ymm11_d, ymm11_e, ymm11_f];
(* vmovdqa 0x420(%rsi),%ymm15                      #! EA = L0x555555639a00; Value = 0xdd3ec1f191a64dab; PC = 0x55555556f5af *)
mov %ymm15 [L0x555555639a00, L0x555555639a02, L0x555555639a04, L0x555555639a06, L0x555555639a08, L0x555555639a0a, L0x555555639a0c, L0x555555639a0e, L0x555555639a10, L0x555555639a12, L0x555555639a14, L0x555555639a16, L0x555555639a18, L0x555555639a1a, L0x555555639a1c, L0x555555639a1e];
(* vmovdqa 0x440(%rsi),%ymm2                       #! EA = L0x555555639a20; Value = 0x033efef1ffa6fcab; PC = 0x55555556f5b7 *)
mov %ymm2 [L0x555555639a20, L0x555555639a22, L0x555555639a24, L0x555555639a26, L0x555555639a28, L0x555555639a2a, L0x555555639a2c, L0x555555639a2e, L0x555555639a30, L0x555555639a32, L0x555555639a34, L0x555555639a36, L0x555555639a38, L0x555555639a3a, L0x555555639a3c, L0x555555639a3e];
(* vpmullw %ymm15,%ymm5,%ymm12                     #! PC = 0x55555556f5bf *)
smull %mulHymm5 %mulL %ymm15 %ymm5;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm7,%ymm13                     #! PC = 0x55555556f5c4 *)
smull %mulHymm7 %mulL %ymm15 %ymm7;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f5c9 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f5ce *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm2,%ymm5,%ymm5                       #! PC = 0x55555556f5d3 *)
smull %ymm5 %mulLymm5 %ymm2 %ymm5;
(* vpmulhw %ymm2,%ymm7,%ymm7                       #! PC = 0x55555556f5d7 *)
smull %ymm7 %mulLymm7 %ymm2 %ymm7;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f5db *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f5df *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpslld $0x10,%ymm10,%ymm6                       #! PC = 0x55555556f5e3 *)
mov [ymm10_0000, _, ymm10_0010, _,
ymm10_0100, _, ymm10_0110, _,
ymm10_1000, _, ymm10_1010, _,
ymm10_1100, _, ymm10_1110, _] %ymm10;
mov %ymm6 [0@sint16, ymm10_0000, 0@sint16, ymm10_0010,
0@sint16, ymm10_0100, 0@sint16, ymm10_0110,
0@sint16, ymm10_1000, 0@sint16, ymm10_1010,
0@sint16, ymm10_1100, 0@sint16, ymm10_1110];
(* vpblendw $0xaa,%ymm6,%ymm3,%ymm6                #! PC = 0x55555556f5e9 *)
mov [ymm6_0, _, ymm6_2, _,
ymm6_4, _, ymm6_6, _,
ymm6_8, _, ymm6_a, _,
ymm6_c, _, ymm6_e, _] %ymm3;
mov [_, ymm6_1, _, ymm6_3,
_, ymm6_5, _, ymm6_7,
_, ymm6_9, _, ymm6_b,
_, ymm6_d, _, ymm6_f] %ymm6;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7, ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpsrld $0x10,%ymm3,%ymm3                        #! PC = 0x55555556f5ef *)
mov [_, ymm3_0001, _, ymm3_0011,
_, ymm3_0101, _, ymm3_0111,
_, ymm3_1001, _, ymm3_1011,
_, ymm3_1101, _, ymm3_1111] %ymm3;
mov %ymm3 [ymm3_0001, 0@sint16, ymm3_0011, 0@sint16,
ymm3_0101, 0@sint16, ymm3_0111, 0@sint16,
ymm3_1001, 0@sint16, ymm3_1011, 0@sint16,
ymm3_1101, 0@sint16, ymm3_1111, 0@sint16];
(* vpblendw $0xaa,%ymm10,%ymm3,%ymm10              #! PC = 0x55555556f5f4 *)
mov [ymm10_0, _, ymm10_2, _,
ymm10_4, _, ymm10_6, _,
ymm10_8, _, ymm10_a, _,
ymm10_c, _, ymm10_e, _] %ymm3;
mov [_, ymm10_1, _, ymm10_3,
_, ymm10_5, _, ymm10_7,
_, ymm10_9, _, ymm10_b,
_, ymm10_d, _, ymm10_f] %ymm10;
mov %ymm10 [ymm10_0, ymm10_1, ymm10_2, ymm10_3, ymm10_4, ymm10_5, ymm10_6, ymm10_7, ymm10_8, ymm10_9, ymm10_a, ymm10_b, ymm10_c, ymm10_d, ymm10_e, ymm10_f];
(* vpslld $0x10,%ymm8,%ymm3                        #! PC = 0x55555556f5fa *)
mov [ymm8_0000, _, ymm8_0010, _,
ymm8_0100, _, ymm8_0110, _,
ymm8_1000, _, ymm8_1010, _,
ymm8_1100, _, ymm8_1110, _] %ymm8;
mov %ymm3 [0@sint16, ymm8_0000, 0@sint16, ymm8_0010,
0@sint16, ymm8_0100, 0@sint16, ymm8_0110,
0@sint16, ymm8_1000, 0@sint16, ymm8_1010,
0@sint16, ymm8_1100, 0@sint16, ymm8_1110];
(* vpblendw $0xaa,%ymm3,%ymm4,%ymm3                #! PC = 0x55555556f600 *)
mov [ymm3_0, _, ymm3_2, _,
ymm3_4, _, ymm3_6, _,
ymm3_8, _, ymm3_a, _,
ymm3_c, _, ymm3_e, _] %ymm4;
mov [_, ymm3_1, _, ymm3_3,
_, ymm3_5, _, ymm3_7,
_, ymm3_9, _, ymm3_b,
_, ymm3_d, _, ymm3_f] %ymm3;
mov %ymm3 [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7, ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f];
(* vpsrld $0x10,%ymm4,%ymm4                        #! PC = 0x55555556f606 *)
mov [_, ymm4_0001, _, ymm4_0011,
_, ymm4_0101, _, ymm4_0111,
_, ymm4_1001, _, ymm4_1011,
_, ymm4_1101, _, ymm4_1111] %ymm4;
mov %ymm4 [ymm4_0001, 0@sint16, ymm4_0011, 0@sint16,
ymm4_0101, 0@sint16, ymm4_0111, 0@sint16,
ymm4_1001, 0@sint16, ymm4_1011, 0@sint16,
ymm4_1101, 0@sint16, ymm4_1111, 0@sint16];
(* vpblendw $0xaa,%ymm8,%ymm4,%ymm8                #! PC = 0x55555556f60b *)
mov [ymm8_0, _, ymm8_2, _,
ymm8_4, _, ymm8_6, _,
ymm8_8, _, ymm8_a, _,
ymm8_c, _, ymm8_e, _] %ymm4;
mov [_, ymm8_1, _, ymm8_3,
_, ymm8_5, _, ymm8_7,
_, ymm8_9, _, ymm8_b,
_, ymm8_d, _, ymm8_f] %ymm8;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7, ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f611 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f615 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f619 *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f61d *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm5,%ymm6,%ymm4                        #! PC = 0x55555556f621 *)
add %ymm4 %ymm5 %ymm6;
(* vpsubw %ymm5,%ymm6,%ymm5                        #! PC = 0x55555556f625 *)
sub %ymm5 %ymm6 %ymm5;
(* vpaddw %ymm7,%ymm10,%ymm6                       #! PC = 0x55555556f629 *)
add %ymm6 %ymm7 %ymm10;
(* vpsubw %ymm7,%ymm10,%ymm7                       #! PC = 0x55555556f62d *)
sub %ymm7 %ymm10 %ymm7;
(* vpaddw %ymm9,%ymm3,%ymm10                       #! PC = 0x55555556f631 *)
add %ymm10 %ymm9 %ymm3;
(* vpsubw %ymm9,%ymm3,%ymm9                        #! PC = 0x55555556f636 *)
sub %ymm9 %ymm3 %ymm9;
(* vpaddw %ymm11,%ymm8,%ymm3                       #! PC = 0x55555556f63b *)
add %ymm3 %ymm11 %ymm8;
(* vpsubw %ymm11,%ymm8,%ymm11                      #! PC = 0x55555556f640 *)
sub %ymm11 %ymm8 %ymm11;
(* vpsubw %ymm12,%ymm4,%ymm4                       #! PC = 0x55555556f645 *)
sub %ymm4 %ymm4 %ymm12;
(* vpaddw %ymm12,%ymm5,%ymm5                       #! PC = 0x55555556f64a *)
add %ymm5 %ymm12 %ymm5;
(* vpsubw %ymm13,%ymm6,%ymm6                       #! PC = 0x55555556f64f *)
sub %ymm6 %ymm6 %ymm13;
(* vpaddw %ymm13,%ymm7,%ymm7                       #! PC = 0x55555556f654 *)
add %ymm7 %ymm13 %ymm7;
(* vpsubw %ymm14,%ymm10,%ymm10                     #! PC = 0x55555556f659 *)
sub %ymm10 %ymm10 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f65e *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm3,%ymm3                       #! PC = 0x55555556f663 *)
sub %ymm3 %ymm3 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f668 *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa 0x460(%rsi),%ymm14                      #! EA = L0x555555639a40; Value = 0x5f47e32a635b8631; PC = 0x55555556f66d *)
mov %ymm14 [L0x555555639a40, L0x555555639a42, L0x555555639a44, L0x555555639a46, L0x555555639a48, L0x555555639a4a, L0x555555639a4c, L0x555555639a4e, L0x555555639a50, L0x555555639a52, L0x555555639a54, L0x555555639a56, L0x555555639a58, L0x555555639a5a, L0x555555639a5c, L0x555555639a5e];
(* vmovdqa 0x4a0(%rsi),%ymm15                      #! EA = L0x555555639a80; Value = 0x81803bfb08624f49; PC = 0x55555556f675 *)
mov %ymm15 [L0x555555639a80, L0x555555639a82, L0x555555639a84, L0x555555639a86, L0x555555639a88, L0x555555639a8a, L0x555555639a8c, L0x555555639a8e, L0x555555639a90, L0x555555639a92, L0x555555639a94, L0x555555639a96, L0x555555639a98, L0x555555639a9a, L0x555555639a9c, L0x555555639a9e];
(* vmovdqa 0x480(%rsi),%ymm8                       #! EA = L0x555555639a60; Value = 0xfa47052a025b0331; PC = 0x55555556f67d *)
mov %ymm8 [L0x555555639a60, L0x555555639a62, L0x555555639a64, L0x555555639a66, L0x555555639a68, L0x555555639a6a, L0x555555639a6c, L0x555555639a6e, L0x555555639a70, L0x555555639a72, L0x555555639a74, L0x555555639a76, L0x555555639a78, L0x555555639a7a, L0x555555639a7c, L0x555555639a7e];
(* vmovdqa 0x4c0(%rsi),%ymm2                       #! EA = L0x555555639aa0; Value = 0x0180fafb02620449; PC = 0x55555556f685 *)
mov %ymm2 [L0x555555639aa0, L0x555555639aa2, L0x555555639aa4, L0x555555639aa6, L0x555555639aa8, L0x555555639aaa, L0x555555639aac, L0x555555639aae, L0x555555639ab0, L0x555555639ab2, L0x555555639ab4, L0x555555639ab6, L0x555555639ab8, L0x555555639aba, L0x555555639abc, L0x555555639abe];
(* vpmullw %ymm14,%ymm10,%ymm12                    #! PC = 0x55555556f68d *)
smull %mulHymm10 %mulL %ymm14 %ymm10;
cast %ymm12@sint16[16] %mulL;
(* vpmullw %ymm14,%ymm3,%ymm13                     #! PC = 0x55555556f692 *)
smull %mulHymm3 %mulL %ymm14 %ymm3;
cast %ymm13@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm9,%ymm14                     #! PC = 0x55555556f697 *)
smull %mulHymm9 %mulL %ymm15 %ymm9;
cast %ymm14@sint16[16] %mulL;
(* vpmullw %ymm15,%ymm11,%ymm15                    #! PC = 0x55555556f69c *)
smull %mulHymm11 %mulL %ymm15 %ymm11;
cast %ymm15@sint16[16] %mulL;
(* vpmulhw %ymm8,%ymm10,%ymm10                     #! PC = 0x55555556f6a1 *)
smull %ymm10 %mulLymm10 %ymm8 %ymm10;
(* vpmulhw %ymm8,%ymm3,%ymm3                       #! PC = 0x55555556f6a6 *)
smull %ymm3 %mulLymm3 %ymm8 %ymm3;
(* vpmulhw %ymm2,%ymm9,%ymm9                       #! PC = 0x55555556f6ab *)
smull %ymm9 %mulLymm9 %ymm2 %ymm9;
(* vpmulhw %ymm2,%ymm11,%ymm11                     #! PC = 0x55555556f6af *)
smull %ymm11 %mulLymm11 %ymm2 %ymm11;
(* vpmulhw %ymm0,%ymm12,%ymm12                     #! PC = 0x55555556f6b3 *)
smull %ymm12 %red %ymm12 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm13,%ymm13                     #! PC = 0x55555556f6b7 *)
smull %ymm13 %red %ymm13 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm14,%ymm14                     #! PC = 0x55555556f6bb *)
smull %ymm14 %red %ymm14 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpmulhw %ymm0,%ymm15,%ymm15                     #! PC = 0x55555556f6bf *)
smull %ymm15 %red %ymm15 %ymm0;
mov [re_0, re_1, re_2, re_3, re_4, re_5, re_6, re_7, re_8, re_9, re_a, re_b, re_c, re_d, re_e, re_f] %red;
mov [mL_0, mL_1, mL_2, mL_3, mL_4, mL_5, mL_6, mL_7, mL_8, mL_9, mL_a, mL_b, mL_c, mL_d, mL_e, mL_f] %mulLymm;
assert true && and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f];
assume and [mL_0 = re_0, mL_1 = re_1, mL_2 = re_2, mL_3 = re_3, mL_4 = re_4, mL_5 = re_5, mL_6 = re_6, mL_7 = re_7, mL_8 = re_8, mL_9 = re_9, mL_a = re_a, mL_b = re_b, mL_c = re_c, mL_d = re_d, mL_e = re_e, mL_f = re_f] && true;
(* vpaddw %ymm10,%ymm4,%ymm8                       #! PC = 0x55555556f6c3 *)
add %ymm8 %ymm10 %ymm4;
(* vpsubw %ymm10,%ymm4,%ymm10                      #! PC = 0x55555556f6c8 *)
sub %ymm10 %ymm4 %ymm10;
(* vpaddw %ymm3,%ymm6,%ymm4                        #! PC = 0x55555556f6cd *)
add %ymm4 %ymm3 %ymm6;
(* vpsubw %ymm3,%ymm6,%ymm3                        #! PC = 0x55555556f6d1 *)
sub %ymm3 %ymm6 %ymm3;
(* vpaddw %ymm9,%ymm5,%ymm6                        #! PC = 0x55555556f6d5 *)
add %ymm6 %ymm9 %ymm5;
(* vpsubw %ymm9,%ymm5,%ymm9                        #! PC = 0x55555556f6da *)
sub %ymm9 %ymm5 %ymm9;
(* vpaddw %ymm11,%ymm7,%ymm5                       #! PC = 0x55555556f6df *)
add %ymm5 %ymm11 %ymm7;
(* vpsubw %ymm11,%ymm7,%ymm11                      #! PC = 0x55555556f6e4 *)
sub %ymm11 %ymm7 %ymm11;
(* vpsubw %ymm12,%ymm8,%ymm8                       #! PC = 0x55555556f6e9 *)
sub %ymm8 %ymm8 %ymm12;
(* vpaddw %ymm12,%ymm10,%ymm10                     #! PC = 0x55555556f6ee *)
add %ymm10 %ymm12 %ymm10;
(* vpsubw %ymm13,%ymm4,%ymm4                       #! PC = 0x55555556f6f3 *)
sub %ymm4 %ymm4 %ymm13;
(* vpaddw %ymm13,%ymm3,%ymm3                       #! PC = 0x55555556f6f8 *)
add %ymm3 %ymm13 %ymm3;
(* vpsubw %ymm14,%ymm6,%ymm6                       #! PC = 0x55555556f6fd *)
sub %ymm6 %ymm6 %ymm14;
(* vpaddw %ymm14,%ymm9,%ymm9                       #! PC = 0x55555556f702 *)
add %ymm9 %ymm14 %ymm9;
(* vpsubw %ymm15,%ymm5,%ymm5                       #! PC = 0x55555556f707 *)
sub %ymm5 %ymm5 %ymm15;
(* vpaddw %ymm15,%ymm11,%ymm11                     #! PC = 0x55555556f70c *)
add %ymm11 %ymm15 %ymm11;
(* vmovdqa %ymm8,0x100(%rdi)                       #! EA = L0x7fffffffb080; PC = 0x55555556f711 *)
mov [L0x7fffffffb080, L0x7fffffffb082, L0x7fffffffb084, L0x7fffffffb086, L0x7fffffffb088, L0x7fffffffb08a, L0x7fffffffb08c, L0x7fffffffb08e, L0x7fffffffb090, L0x7fffffffb092, L0x7fffffffb094, L0x7fffffffb096, L0x7fffffffb098, L0x7fffffffb09a, L0x7fffffffb09c, L0x7fffffffb09e] %ymm8;
(* vmovdqa %ymm4,0x120(%rdi)                       #! EA = L0x7fffffffb0a0; PC = 0x55555556f719 *)
mov [L0x7fffffffb0a0, L0x7fffffffb0a2, L0x7fffffffb0a4, L0x7fffffffb0a6, L0x7fffffffb0a8, L0x7fffffffb0aa, L0x7fffffffb0ac, L0x7fffffffb0ae, L0x7fffffffb0b0, L0x7fffffffb0b2, L0x7fffffffb0b4, L0x7fffffffb0b6, L0x7fffffffb0b8, L0x7fffffffb0ba, L0x7fffffffb0bc, L0x7fffffffb0be] %ymm4;
(* vmovdqa %ymm10,0x140(%rdi)                      #! EA = L0x7fffffffb0c0; PC = 0x55555556f721 *)
mov [L0x7fffffffb0c0, L0x7fffffffb0c2, L0x7fffffffb0c4, L0x7fffffffb0c6, L0x7fffffffb0c8, L0x7fffffffb0ca, L0x7fffffffb0cc, L0x7fffffffb0ce, L0x7fffffffb0d0, L0x7fffffffb0d2, L0x7fffffffb0d4, L0x7fffffffb0d6, L0x7fffffffb0d8, L0x7fffffffb0da, L0x7fffffffb0dc, L0x7fffffffb0de] %ymm10;
(* vmovdqa %ymm3,0x160(%rdi)                       #! EA = L0x7fffffffb0e0; PC = 0x55555556f729 *)
mov [L0x7fffffffb0e0, L0x7fffffffb0e2, L0x7fffffffb0e4, L0x7fffffffb0e6, L0x7fffffffb0e8, L0x7fffffffb0ea, L0x7fffffffb0ec, L0x7fffffffb0ee, L0x7fffffffb0f0, L0x7fffffffb0f2, L0x7fffffffb0f4, L0x7fffffffb0f6, L0x7fffffffb0f8, L0x7fffffffb0fa, L0x7fffffffb0fc, L0x7fffffffb0fe] %ymm3;
(* vmovdqa %ymm6,0x180(%rdi)                       #! EA = L0x7fffffffb100; PC = 0x55555556f731 *)
mov [L0x7fffffffb100, L0x7fffffffb102, L0x7fffffffb104, L0x7fffffffb106, L0x7fffffffb108, L0x7fffffffb10a, L0x7fffffffb10c, L0x7fffffffb10e, L0x7fffffffb110, L0x7fffffffb112, L0x7fffffffb114, L0x7fffffffb116, L0x7fffffffb118, L0x7fffffffb11a, L0x7fffffffb11c, L0x7fffffffb11e] %ymm6;
(* vmovdqa %ymm5,0x1a0(%rdi)                       #! EA = L0x7fffffffb120; PC = 0x55555556f739 *)
mov [L0x7fffffffb120, L0x7fffffffb122, L0x7fffffffb124, L0x7fffffffb126, L0x7fffffffb128, L0x7fffffffb12a, L0x7fffffffb12c, L0x7fffffffb12e, L0x7fffffffb130, L0x7fffffffb132, L0x7fffffffb134, L0x7fffffffb136, L0x7fffffffb138, L0x7fffffffb13a, L0x7fffffffb13c, L0x7fffffffb13e] %ymm5;
(* vmovdqa %ymm9,0x1c0(%rdi)                       #! EA = L0x7fffffffb140; PC = 0x55555556f741 *)
mov [L0x7fffffffb140, L0x7fffffffb142, L0x7fffffffb144, L0x7fffffffb146, L0x7fffffffb148, L0x7fffffffb14a, L0x7fffffffb14c, L0x7fffffffb14e, L0x7fffffffb150, L0x7fffffffb152, L0x7fffffffb154, L0x7fffffffb156, L0x7fffffffb158, L0x7fffffffb15a, L0x7fffffffb15c, L0x7fffffffb15e] %ymm9;
(* vmovdqa %ymm11,0x1e0(%rdi)                      #! EA = L0x7fffffffb160; PC = 0x55555556f749 *)
mov [L0x7fffffffb160, L0x7fffffffb162, L0x7fffffffb164, L0x7fffffffb166, L0x7fffffffb168, L0x7fffffffb16a, L0x7fffffffb16c, L0x7fffffffb16e, L0x7fffffffb170, L0x7fffffffb172, L0x7fffffffb174, L0x7fffffffb176, L0x7fffffffb178, L0x7fffffffb17a, L0x7fffffffb17c, L0x7fffffffb17e] %ymm11;
(* #! <- SP = 0x7fffffffa348 *)
#! 0x7fffffffa348 = 0x7fffffffa348;
(* #retq                                           #! PC = 0x55555556f751 *)
#retq                                           #! 0x55555556f751 = 0x55555556f751;

{
  true
  &&
  true
}

