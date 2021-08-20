proc main (uint64 L0x7fffffffe050, uint64 L0x7fffffffe058, uint64 L0x7fffffffe060, uint64 L0x7fffffffe068, uint64 rdx, uint64 rdi) =
{
  true
  &&
  true
}

(* gfp25519nsqr: *)
(* gfp25519nsqr:; *)
(* #! -> SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* push   %rbp                                     #! EA = L0x7fffffffdeb0; PC = 0x401b20 *)
(* push   %rbx                                     #! EA = L0x7fffffffdea8; PC = 0x401b21 *)
(* push   %r12                                     #! EA = L0x7fffffffdea0; PC = 0x401b22 *)
(* push   %r13                                     #! EA = L0x7fffffffde98; PC = 0x401b24 *)
(* push   %r14                                     #! EA = L0x7fffffffde90; PC = 0x401b26 *)
(* push   %r15                                     #! EA = L0x7fffffffde88; PC = 0x401b28 *)
(* push   %rdi                                     #! EA = L0x7fffffffde80; PC = 0x401b2a *)
mov L0x7fffffffde80 rdi;
(* mov    (%rsi),%rbx                              #! EA = L0x7fffffffe050; Value = 0xffffffffffffffec; PC = 0x401b2b *)
mov rbx L0x7fffffffe050;
(* mov    0x8(%rsi),%rbp                           #! EA = L0x7fffffffe058; Value = 0xffffffffffffffff; PC = 0x401b2e *)
mov rbp L0x7fffffffe058;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffe060; Value = 0xffffffffffffffff; PC = 0x401b32 *)
mov rax L0x7fffffffe060;
(* mov    0x18(%rsi),%rsi                          #! EA = L0x7fffffffe068; Value = 0x7fffffffffffffff; PC = 0x401b36 *)
mov rsi L0x7fffffffe068;
(* mov    %rdx,%rdi                                #! PC = 0x401b3a *)
mov rdi rdx;
(* dec    %rdi                                     #! PC = 0x401b3d *)
#dec    %%rdi                                     #! 0x401b3d = 0x401b3d;

mov x_0 rbx;
mov x_1 rbp;
mov x_2 rax;
mov x_3 rsi;

(* xor    %r13,%r13                                #! PC = 0x401b40 *)
mov r13 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401b43 *)
mov rdx rbx;
(* mulx   %rbp,%r9,%r10                            #! PC = 0x401b46 *)
umull r10 r9 rbp rdx;
(* mulx   %rax,%rcx,%r11                           #! PC = 0x401b4b *)
umull r11 rcx rax rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401b50 *)
adcs carry r10 r10 rcx carry;
(* mulx   %rsi,%rcx,%r12                           #! PC = 0x401b56 *)
umull r12 rcx rsi rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b5b *)
adcs carry r11 r11 rcx carry;
(* adcx   %r13,%r12                                #! PC = 0x401b61 *)
adc r12 r12 r13 carry;
(* mov    %rbp,%rdx                                #! PC = 0x401b67 *)
mov rdx rbp;
(* xor    %r14,%r14                                #! PC = 0x401b6a *)
mov r14 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mulx   %rax,%rcx,%rdx                           #! PC = 0x401b6d *)
umull rdx rcx rax rdx;
(* adcx   %rcx,%r11                                #! PC = 0x401b72 *)
adcs carry r11 r11 rcx carry;
(* adox   %rdx,%r12                                #! PC = 0x401b78 *)
adcs overflow r12 r12 rdx overflow;
(* mov    %rbp,%rdx                                #! PC = 0x401b7e *)
mov rdx rbp;
(* mulx   %rsi,%rcx,%rdx                           #! PC = 0x401b81 *)
umull rdx rcx rsi rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401b86 *)
adcs carry r12 r12 rcx carry;
(* adox   %rdx,%r13                                #! PC = 0x401b8c *)
adc r13 r13 rdx overflow;
(* adcx   %r14,%r13                                #! PC = 0x401b92 *)
adc r13 r13 r14 carry;
(* xor    %r15,%r15                                #! PC = 0x401b98 *)
mov r15 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rax,%rdx                                #! PC = 0x401b9b *)
mov rdx rax;
(* mulx   %rsi,%rcx,%r14                           #! PC = 0x401b9e *)
umull r14 rcx rsi rdx;
(* adcx   %rcx,%r13                                #! PC = 0x401ba3 *)
adcs carry r13 r13 rcx carry;
(* adcx   %r15,%r14                                #! PC = 0x401ba9 *)
adc r14 r14 r15 carry;
(* shld   $0x1,%r14,%r15                           #! PC = 0x401baf *)
(* cshl r15 dontcare r15 r14 0x1; *)
(* shld   $0x1,%r13,%r14                           #! PC = 0x401bb4 *)
(* cshl r14 dontcare r14 r13 0x1; *)
(* shld   $0x1,%r12,%r13                           #! PC = 0x401bb9 *)
(* cshl r13 dontcare r13 r12 0x1; *)
(* shld   $0x1,%r11,%r12                           #! PC = 0x401bbe *)
(* cshl r12 dontcare r12 r11 0x1; *)
(* shld   $0x1,%r10,%r11                           #! PC = 0x401bc3 *)
(* cshl r11 dontcare r11 r10 0x1; *)
(* shld   $0x1,%r9,%r10                            #! PC = 0x401bc8 *)
(* cshl r10 dontcare r10 r9 0x1; *)
(* shl    %r9                                      #! PC = 0x401bcd *)
(* shl    %%r9                                      #! 0x401bcd = 0x401bcd; *)

adds carry r9 r9 r9;
adcs carry r10 r10 r10 carry;
adcs carry r11 r11 r11 carry;
adcs carry r12 r12 r12 carry;
adcs carry r13 r13 r13 carry;
adcs carry r14 r14 r14 carry;
adc r15 r15 r15 carry;

(* xor    %rdx,%rdx                                #! PC = 0x401bd0 *)
mov rdx 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    %rbx,%rdx                                #! PC = 0x401bd3 *)
mov rdx rbx;
(* mulx   %rdx,%r8,%rdx                            #! PC = 0x401bd6 *)
umull rdx r8 rdx rdx;
(* adcx   %rdx,%r9                                 #! PC = 0x401bdb *)
adcs carry r9 r9 rdx carry;
(* mov    %rbp,%rdx                                #! PC = 0x401be1 *)
mov rdx rbp;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401be4 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r10                                #! PC = 0x401be9 *)
adcs carry r10 r10 rcx carry;
(* adcx   %rdx,%r11                                #! PC = 0x401bef *)
adcs carry r11 r11 rdx carry;
(* mov    %rax,%rdx                                #! PC = 0x401bf5 *)
mov rdx rax;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401bf8 *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r12                                #! PC = 0x401bfd *)
adcs carry r12 r12 rcx carry;
(* adcx   %rdx,%r13                                #! PC = 0x401c03 *)
adcs carry r13 r13 rdx carry;
(* mov    %rsi,%rdx                                #! PC = 0x401c09 *)
mov rdx rsi;
(* mulx   %rdx,%rcx,%rdx                           #! PC = 0x401c0c *)
umull rdx rcx rdx rdx;
(* adcx   %rcx,%r14                                #! PC = 0x401c11 *)
adcs carry r14 r14 rcx carry;
(* adcx   %rdx,%r15                                #! PC = 0x401c17 *)
adc r15 r15 rdx carry;
(* xor    %rbp,%rbp                                #! PC = 0x401c1d *)
mov rbp 0@uint64;
mov carry 0@uint1;
mov overflow 0@uint1;
(* mov    $0x26,%rdx                               #! PC = 0x401c20 *)
mov rdx 0x26@uint64;
(* mulx   %r12,%rbx,%rbp                           #! PC = 0x401c27 *)
umull rbp rbx r12 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x401c2c *)
adcs carry rbx rbx r8 carry;
(* adox   %r9,%rbp                                 #! PC = 0x401c32 *)
adcs overflow rbp rbp r9 overflow;
(* mulx   %r13,%rcx,%rax                           #! PC = 0x401c38 *)
umull rax rcx r13 rdx;
(* adcx   %rcx,%rbp                                #! PC = 0x401c3d *)
adcs carry rbp rbp rcx carry;
(* adox   %r10,%rax                                #! PC = 0x401c43 *)
adcs overflow rax rax r10 overflow;
(* mulx   %r14,%rcx,%rsi                           #! PC = 0x401c49 *)
umull rsi rcx r14 rdx;
(* adcx   %rcx,%rax                                #! PC = 0x401c4e *)
adcs carry rax rax rcx carry;
(* adox   %r11,%rsi                                #! PC = 0x401c54 *)
adcs overflow rsi rsi r11 overflow;
(* mulx   %r15,%rcx,%r15                           #! PC = 0x401c5a *)
umull r15 rcx r15 rdx;
(* adcx   %rcx,%rsi                                #! PC = 0x401c5f *)
adcs carry rsi rsi rcx carry;
(* adox   0x405068,%r15                            #! PC = 0x401c65 *)
adc r15 0@uint64 r15 overflow;
(* adcx   0x405068,%r15                            #! PC = 0x401c70 *)
adc r15 0@uint64 r15 carry;
(* shld   $0x1,%rsi,%r15                           #! PC = 0x401c7b *)
(* cshl r15 dontcare r15 rsi 0x1; *)
(* and    0x405070,%rsi                            #! PC = 0x401c80 *)
(* split dontcare rsi rsi 63; *)
join t r15 rsi;
split t1 t2 t 63;
vpc rsi@uint64 t2;
vpc r15@uint64 t1;

(* imul   $0x13,%r15,%r15                          #! PC = 0x401c88 *)
mul r15 r15 0x13@uint64;
(* add    %r15,%rbx                                #! PC = 0x401c8c *)
adds carry rbx r15 rbx;
nondet overflow@uint1;
(* adc    $0x0,%rbp                                #! PC = 0x401c8f *)
adcs carry rbp 0x0@uint64 rbp carry;
nondet overflow@uint1;
(* adc    $0x0,%rax                                #! PC = 0x401c93 *)
adcs carry rax 0x0@uint64 rax carry;
nondet overflow@uint1;
(* adc    $0x0,%rsi                                #! PC = 0x401c97 *)
adc rsi 0x0@uint64 rsi carry;
nondet overflow@uint1;

(* cmp    $0x0,%rdi                                #! PC = 0x401c9b *)
#cmp    $0x0,%%rdi                                #! 0x401c9b = 0x401c9b;
(* #jne    0x401b3d <.START>                       #! PC = 0x401c9f *)
#jne    0x401b3d <.START>                       #! 0x401c9f = 0x401c9f;
(* pop    %rdi                                     #! EA = L0x7fffffffde80; Value = 0x00007fffffffdee0; PC = 0x401ca5 *)
mov rdi L0x7fffffffde80; 
(* mov    %rbx,(%rdi)                              #! EA = L0x7fffffffdee0; PC = 0x401ca6 *)
mov L0x7fffffffdee0 rbx;
(* mov    %rbp,0x8(%rdi)                           #! EA = L0x7fffffffdee8; PC = 0x401ca9 *)
mov L0x7fffffffdee8 rbp;
(* mov    %rax,0x10(%rdi)                          #! EA = L0x7fffffffdef0; PC = 0x401cad *)
mov L0x7fffffffdef0 rax;
(* mov    %rsi,0x18(%rdi)                          #! EA = L0x7fffffffdef8; PC = 0x401cb1 *)
mov L0x7fffffffdef8 rsi;
(* pop    %r15                                     #! EA = L0x7fffffffde88; Value = 0x00007fffffffe050; PC = 0x401cb5 *)
(* pop    %r14                                     #! EA = L0x7fffffffde90; Value = 0x00007fffffffe070; PC = 0x401cb7 *)
(* pop    %r13                                     #! EA = L0x7fffffffde98; Value = 0x00000000004050a0; PC = 0x401cb9 *)
(* pop    %r12                                     #! EA = L0x7fffffffdea0; Value = 0x00007fffffffe050; PC = 0x401cbb *)
(* pop    %rbx                                     #! EA = L0x7fffffffdea8; Value = 0x00007fffffffdee0; PC = 0x401cbd *)
(* pop    %rbp                                     #! EA = L0x7fffffffdeb0; Value = 0x00007fffffffdec0; PC = 0x401cbe *)
(* #! <- SP = 0x7fffffffdeb8 *)
#! 0x7fffffffdeb8 = 0x7fffffffdeb8;
(* #retq                                           #! PC = 0x401cbf *)
#retq                                           #! 0x401cbf = 0x401cbf;
mov z_0 L0x7fffffffdee0;
mov z_1 L0x7fffffffdee8;
mov z_2 L0x7fffffffdef0;
mov z_3 L0x7fffffffdef8;

{
    eqmod
      (mul (limbs 64 [vars x|0..3])
           (limbs 64 [vars x|0..3]))
      (limbs 64 [vars z|0..3]) 
      (((2**255 )- 19))
  &&
  limbs 64 [vars z|0..3] < (2**255+2**64)@256
}

