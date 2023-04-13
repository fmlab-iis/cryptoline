(* popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            0.033631 seconds
Checking well-formedness:               [OK]            0.005353 seconds
Parsing CryptoLine file:                [OK]            0.012978 seconds
Checking well-formedness:               [OK]            0.006733 seconds
Equivalence of output group #0:         [OK]            59.025080 seconds
Final result:                           [OK]            59.914085 seconds
*)
(* csweep popper: cv_cec.exe -v -ov a00,a01,a02,a03,a04,a10,a11,a12,a13,a14,a20,a21,a22,a23,a24,a30,a31,a32,a33,a34,a40,a41,a42,a43,a44 KeccakF1600.cl ../KeccakP-1600-reference_KeccakP1600_Permute_24rounds.cl
Parsing CryptoLine file:                [OK]            0.036449 seconds
Checking well-formedness:               [OK]            0.005977 seconds
Parsing CryptoLine file:                [OK]            0.014448 seconds
Checking well-formedness:               [OK]            0.007509 seconds
Equivalence of output group #0:         [OK]            50.998713 seconds
Final result:                           [OK]            52.136450 seconds
*)
proc main (
(* uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04, *)
(* uint64 a10, uint64 a11, uint64 a12, uint64 a13, uint64 a14, *)
(* uint64 a20, uint64 a21, uint64 a22, uint64 a23, uint64 a24, *)
(* uint64 a30, uint64 a31, uint64 a32, uint64 a33, uint64 a34, *)
(* uint64 a40, uint64 a41, uint64 a42, uint64 a43, uint64 a44, *)
uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44

) =
{
  true
  &&
  true
}


mov L0x555555558040 A00; mov L0x555555558048 A01; mov L0x555555558050 A02;
mov L0x555555558058 A03; mov L0x555555558060 A04; mov L0x555555558068 A10;
mov L0x555555558070 A11; mov L0x555555558078 A12; mov L0x555555558080 A13;
mov L0x555555558088 A14; mov L0x555555558090 A20; mov L0x555555558098 A21;
mov L0x5555555580a0 A22; mov L0x5555555580a8 A23; mov L0x5555555580b0 A24;
mov L0x5555555580b8 A30; mov L0x5555555580c0 A31; mov L0x5555555580c8 A32;
mov L0x5555555580d0 A33; mov L0x5555555580d8 A34; mov L0x5555555580e0 A40;
mov L0x5555555580e8 A41; mov L0x5555555580f0 A42; mov L0x5555555580f8 A43;
mov L0x555555558100 A44;


mov L0x555555556020 0x0000000000000001@uint64;
mov L0x555555556028 0x0000000000008082@uint64;
mov L0x555555556030 0x800000000000808a@uint64;
mov L0x555555556038 0x8000000080008000@uint64;
mov L0x555555556040 0x000000000000808b@uint64;
mov L0x555555556048 0x0000000080000001@uint64;
mov L0x555555556050 0x8000000080008081@uint64;
mov L0x555555556058 0x8000000000008009@uint64;
mov L0x555555556060 0x000000000000008a@uint64;
mov L0x555555556068 0x0000000000000088@uint64;
mov L0x555555556070 0x0000000080008009@uint64;
mov L0x555555556078 0x000000008000000a@uint64;
mov L0x555555556080 0x000000008000808b@uint64;
mov L0x555555556088 0x800000000000008b@uint64;
mov L0x555555556090 0x8000000000008089@uint64;
mov L0x555555556098 0x8000000000008003@uint64;
mov L0x5555555560a0 0x8000000000008002@uint64;
mov L0x5555555560a8 0x8000000000000080@uint64;
mov L0x5555555560b0 0x000000000000800a@uint64;
mov L0x5555555560b8 0x800000008000000a@uint64;
mov L0x5555555560c0 0x8000000080008081@uint64;
mov L0x5555555560c8 0x8000000000008080@uint64;
mov L0x5555555560d0 0x0000000080000001@uint64;
mov L0x5555555560d8 0x8000000080008008@uint64;

nondet rax@uint64; nondet rbx@uint64; nondet eax@uint64;

nondet rdi@uint64; nondet rsp@uint64;

(* #! -> SP = 0x7fffffffd9f8 *)
#! 0x7fffffffd9f8 = 0x7fffffffd9f8;
(* push   %r12                                     #! EA = L0x7fffffffd9f0; PC = 0x55555555550e *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd9e8; PC = 0x555555555510 *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd9e0; PC = 0x555555555511 *)
(* push rbx *)
nop;
(* sub    $0xd0,%rsp                               #! PC = 0x555555555512 *)
subs dc rsp rsp 0xd0@uint64;
(* mov    %rdi,%rbp                                #! PC = 0x555555555519 *)
mov rbp rdi;
(* mov    %fs:0x28,%rax                            #! PC = 0x55555555551c *)
(* mov %fs:0x28,%rax *)
nop;
(* mov    %rax,0xc8(%rsp)                          #! EA = L0x7fffffffd9d8; PC = 0x555555555525 *)
mov L0x7fffffffd9d8 rax;
(* xor    %eax,%eax                                #! PC = 0x55555555552d *)
xor eax@uint64 eax eax;
(* notq   0x8(%rdi)                                #! EA = L0x555555558048; PC = 0x55555555552f *)
not L0x555555558048@uint64 L0x555555558048;
(* notq   0x10(%rdi)                               #! EA = L0x555555558050; PC = 0x555555555533 *)
not L0x555555558050@uint64 L0x555555558050;
(* notq   0x40(%rdi)                               #! EA = L0x555555558080; PC = 0x555555555537 *)
not L0x555555558080@uint64 L0x555555558080;
(* notq   0x60(%rdi)                               #! EA = L0x5555555580a0; PC = 0x55555555553b *)
not L0x5555555580a0@uint64 L0x5555555580a0;
(* notq   0x88(%rdi)                               #! EA = L0x5555555580c8; PC = 0x55555555553f *)
not L0x5555555580c8@uint64 L0x5555555580c8;
(* notq   0xa0(%rdi)                               #! EA = L0x5555555580e0; PC = 0x555555555546 *)
not L0x5555555580e0@uint64 L0x5555555580e0;
(* mov    $0x0,%ebx                                #! PC = 0x55555555554d *)
mov ebx 0x0@uint64;
(* mov    %rsp,%r12                                #! PC = 0x555555555552 *)
mov r12 rsp;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x0000004000000000; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x0000555555554040; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x00005555555557cd; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0xffff80000000241f; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x0000000000000000; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0xfffffbfffffffdff; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x0000000000f0b5ff; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x00007ffff7fb02e8; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x0000000000000000; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0xffffffffffffffff; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0xffffffffffffff3d; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0xffffaaaaaaaaa87f; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0x0000000000000000; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x0000000000000000; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0xffffffffffffffff; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x00007fffffffdad7; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x0000000000000000; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x0000000000000000; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x0000000000000000; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x0000000000000000; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x00007fffffffdad6; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x0000555555555060; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x0000000000000000; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0xffffffffffffff3d; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x0000000000000000; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x0000000000000000; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556020; Value = 0x0000000000000001; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556020;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x0000000000000000; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x0000000000000000; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x0000555555554040; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x00007ffff7fb02e8; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0x0000000000000000; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0xfffffbfffffffdff; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x00007fffffffdad7; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x0000555555555060; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0xffff80000000241f; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x0000000000000000; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x0000000000f0b5ff; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0xffffaaaaaaaaa87f; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x0000000000000000; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0xffffffffffffffff; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0xffffffffffffffff; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x00007fffffffdad6; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x00005555555557cd; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x0000000000000000; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0xa0019515449de09b; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x000444226f0506c0; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xffdf5d1b68aac16d; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x00005646ff500c04; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x5733b37ffdbd400f; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0xc400200430c8501d; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0xa9d16ff7b36eaaaa; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x0021004638124340; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x2374a300288d5554; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x1722820001000021; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x7fdc27ffebdcbfb8; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x200450808f4786c2; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0x8a2a28c6a51fff02; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xfaabaaa968a3a7bd; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0xffcd39d5543a347b; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0x0000dd1d01fca098; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x33ffdbdd0aa2abaa; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x00d4d7775718acd0; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x68aaacc0c39c8404; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x916e8b0003380029; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x760e000019c35545; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x2800108401ce801f; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x8a8aed08f8e02e02; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x65de0980000dd112; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x1703545555558ba5; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0x8a2a28c6a51fff02; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x68aaacc0c39c8404; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x1703545555558ba5; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556028; Value = 0x0000000000008082; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556028;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0x0000dd1d01fca098; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x2800108401ce801f; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xffdf5d1b68aac16d; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x2374a300288d5554; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0xffcd39d5543a347b; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0xa9d16ff7b36eaaaa; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x200450808f4786c2; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x00d4d7775718acd0; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x65de0980000dd112; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x5733b37ffdbd400f; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x760e000019c35545; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x000444226f0506c0; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x0021004638124340; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xfaabaaa968a3a7bd; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x916e8b0003380029; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x7fdc27ffebdcbfb8; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x33ffdbdd0aa2abaa; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x8a8aed08f8e02e02; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x00005646ff500c04; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x1722820001000021; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x6eb116d94806f005; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0xe6a94200422d8ae1; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x1fd5c12f7ead222b; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x6c379f06d5699925; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x76c17ae95a28c588; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x5f91e861d0cef3f6; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0x26da6b0363b6371e; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x1c746b9c6fabd14d; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x7bcc011e8f4f8ae0; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0xe4c5cc7ed1c77f5e; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0x06a2ea30d1d0f173; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x6dfaf89141121248; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x1b92fd95c1a8eeb7; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x6c4c3d5821b3ec31; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xf6e41182f1f2aa77; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0xabdc47f593612adb; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0xeddc2e2975892593; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x25e59d1e5d4c859e; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0xa3825757fdaeec94; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0xd3003551d1c9ad72; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x0d06d2865a8dbb3f; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0xcf663e56e77ac2fe; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x3915876ce3935d4b; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0xa43ab6b0a3eed739; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x9f48a253bb9f418e; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x1b92fd95c1a8eeb7; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0xa3825757fdaeec94; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x9f48a253bb9f418e; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556030; Value = 0x800000000000808a; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556030;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0xabdc47f593612adb; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0xcf663e56e77ac2fe; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x1fd5c12f7ead222b; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x7bcc011e8f4f8ae0; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xf6e41182f1f2aa77; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0x26da6b0363b6371e; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x6dfaf89141121248; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x25e59d1e5d4c859e; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0xa43ab6b0a3eed739; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x76c17ae95a28c588; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x0d06d2865a8dbb3f; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0xe6a94200422d8ae1; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x1c746b9c6fabd14d; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x6c4c3d5821b3ec31; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0xd3003551d1c9ad72; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0x06a2ea30d1d0f173; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0xeddc2e2975892593; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x3915876ce3935d4b; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x6c379f06d5699925; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0xe4c5cc7ed1c77f5e; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000002; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x2c1c54c4f55a5172; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x8619eb2f5ce5e0d7; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0x22b580704bd0563e; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x81a701de7822dd23; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0xd89aff99dd43a882; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0xcb3ad33050e6677d; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0xadff8dba1501af48; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x487c20fb318d0cec; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0xb20868c2c1089f7e; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x1163784ef83d7695; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0xe4ee72eb7f3436e7; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0xa64956a6be81eff6; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0x8c8cb97c02961140; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xcd881f90dad406b1; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x7b8b11b8a32a4de7; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0x3f052327ce07da52; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x1ec55730f1449170; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x2a52c393a2a478a9; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0xe4c839c832da2ea7; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x6128a059460d7ac9; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x272936d6a03ee793; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x8d43b362ab9ddca1; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x7a6443a1ee000269; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x4a46e3f77dfb36a1; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0xe4ee36e13d5bb226; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0x8c8cb97c02961140; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0xe4c839c832da2ea7; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0xe4ee36e13d5bb226; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556038; Value = 0x8000000080008000; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556038;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0x3f052327ce07da52; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x8d43b362ab9ddca1; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0x22b580704bd0563e; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0xb20868c2c1089f7e; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x7b8b11b8a32a4de7; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0xadff8dba1501af48; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0xa64956a6be81eff6; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x2a52c393a2a478a9; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x4a46e3f77dfb36a1; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0xd89aff99dd43a882; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x272936d6a03ee793; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x8619eb2f5ce5e0d7; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x487c20fb318d0cec; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xcd881f90dad406b1; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x6128a059460d7ac9; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0xe4ee72eb7f3436e7; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x1ec55730f1449170; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x7a6443a1ee000269; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x81a701de7822dd23; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x1163784ef83d7695; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000002; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0xb6a344d2bdbac026; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x6e132d6528d997d8; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0xc7bb29a220b71914; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0xdf38cd2c387045fd; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x8d563c05f8f5f547; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0xcdd49b43727f8e93; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0x85cee9b488e349b6; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0xd5dd44086bd763a8; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0xa23f0413c3d53299; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0xa6c7d2e527007e04; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0xcd4dc8f5545164ec; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x9e532fb11a907245; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0xda257ce105d4aaed; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x7ce08d13ad9cb604; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0x94d4c82a8cf50cc0; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x7507dea73de3837a; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x7e96a4154e430394; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x0d767a1e56643861; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0xbf7cd10a0dc9d522; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0xe18b4b4631bdb108; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0xefc78cb1fe280460; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x5dbb66651480b5c2; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0xddc39ff173eeb4a9; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x895cb3fb7e448a7d; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x47ba6e863a234f80; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0xda257ce105d4aaed; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0xbf7cd10a0dc9d522; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x47ba6e863a234f80; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556040; Value = 0x000000000000808b; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556040;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x7507dea73de3837a; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x5dbb66651480b5c2; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0xc7bb29a220b71914; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0xa23f0413c3d53299; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0x94d4c82a8cf50cc0; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0x85cee9b488e349b6; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x9e532fb11a907245; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x0d767a1e56643861; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x895cb3fb7e448a7d; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x8d563c05f8f5f547; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0xefc78cb1fe280460; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x6e132d6528d997d8; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0xd5dd44086bd763a8; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x7ce08d13ad9cb604; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0xe18b4b4631bdb108; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0xcd4dc8f5545164ec; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x7e96a4154e430394; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0xddc39ff173eeb4a9; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0xdf38cd2c387045fd; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0xa6c7d2e527007e04; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000004; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x5a58932376db2f47; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x4123bf3888124b13; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xe217741f4948a221; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0xc469e90afb28a3c1; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0xbb548545849b0ded; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x6ff67c39fd79ba03; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0x8327cac48283c0d2; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0xd476bd1b0bc0d7a5; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x5135074628bbb90e; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x7dbb3c755ecb3d61; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x3b5e0dd1d4a84211; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x1c95b2ab12e6b255; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0x3738af5c981d9468; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x6af28ce695b2365c; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0xfe68068f9431b0d0; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0x817c0016d21469f2; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x67c4e655dc6913f4; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x2dcb67957e80fa79; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x93d29b4f25305720; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x675dab5723e57161; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x4003964492c53169; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0xf96503bd2d28ffbb; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x4057b1a784c03c0d; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x89bbce3a909d71c7; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x9ef3fe831ead3910; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0x3738af5c981d9468; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x93d29b4f25305720; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x9ef3fe831ead3910; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556048; Value = 0x0000000080000001; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556048;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0x817c0016d21469f2; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0xf96503bd2d28ffbb; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xe217741f4948a221; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x5135074628bbb90e; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0xfe68068f9431b0d0; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0x8327cac48283c0d2; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x1c95b2ab12e6b255; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x2dcb67957e80fa79; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x89bbce3a909d71c7; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0xbb548545849b0ded; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x4003964492c53169; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x4123bf3888124b13; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0xd476bd1b0bc0d7a5; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0x6af28ce695b2365c; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x675dab5723e57161; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x3b5e0dd1d4a84211; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x67c4e655dc6913f4; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x4057b1a784c03c0d; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0xc469e90afb28a3c1; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x7dbb3c755ecb3d61; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000004; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x2b8a189900bc2cc6; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0xc193412beaf088c4; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0xe0b56adc55df3629; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x7b167aef63124f3b; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0xd003d7b70aacf7ec; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0xaeccbcde536ee35c; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0x7886216ffdf1b5c1; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0xf16e3aefaf77cc35; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x664d8f2d9d7352a8; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x1bd7ae6890b7c108; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0x3e6a60df55c1c291; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x2e2af56036f0bf14; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x2ab642d096a214ed; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x02c8ffca9a9c8a84; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0x06a1b23901947fb4; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0xc415e506e5ce865e; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0xfc7d240a1f2d105a; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0xc18348e2d1954aba; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x500c00335570750e; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x9e7009a22ad6476a; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0xc987183e14a5ab43; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0xdcfbbcf8de49798f; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0xd168c468bd6d3d6b; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x2b81bce7a488e19c; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x4ce77522afc680a7; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x2ab642d096a214ed; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x500c00335570750e; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x4ce77522afc680a7; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556050; Value = 0x8000000080008081; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556050;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0xc415e506e5ce865e; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0xdcfbbcf8de49798f; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0xe0b56adc55df3629; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x664d8f2d9d7352a8; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0x06a1b23901947fb4; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0x7886216ffdf1b5c1; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x2e2af56036f0bf14; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0xc18348e2d1954aba; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x2b81bce7a488e19c; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0xd003d7b70aacf7ec; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0xc987183e14a5ab43; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0xc193412beaf088c4; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0xf16e3aefaf77cc35; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x02c8ffca9a9c8a84; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x9e7009a22ad6476a; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0x3e6a60df55c1c291; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0xfc7d240a1f2d105a; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0xd168c468bd6d3d6b; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x7b167aef63124f3b; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x1bd7ae6890b7c108; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000006; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0xc29632395b569d54; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x78dadc4e5109272b; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xb6dcf73412acb41c; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0xc5207c0234a35901; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x20ffdd8e7a2b2ca9; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x2eb678352aced1fd; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0xc0ec78ba6c825b78; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0xaedcc070dd085907; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x58a6db14c6b3b8d7; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x99da92d328049618; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x7c0a8c6b32c0a799; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x4c4b8374e5b9aff0; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0xda242b361af2f321; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xe9a9ec664f861260; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0xfac720c8e48b7921; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0xf0f5f349e30eb093; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0xef7231a29b438538; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x5156b64c10721f9b; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x400868f6504af453; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x54599344cd082994; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0xff4d10d72ec80e02; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x004626abbe41b5b1; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x83a9b8ad60d15233; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0xec97764e95528daf; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x1d86141c4eb7499b; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0xda242b361af2f321; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x400868f6504af453; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x1d86141c4eb7499b; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556058; Value = 0x8000000000008009; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556058;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0xf0f5f349e30eb093; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x004626abbe41b5b1; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xb6dcf73412acb41c; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x58a6db14c6b3b8d7; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0xfac720c8e48b7921; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0xc0ec78ba6c825b78; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x4c4b8374e5b9aff0; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x5156b64c10721f9b; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0xec97764e95528daf; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x20ffdd8e7a2b2ca9; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0xff4d10d72ec80e02; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x78dadc4e5109272b; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0xaedcc070dd085907; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xe9a9ec664f861260; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x54599344cd082994; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x7c0a8c6b32c0a799; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0xef7231a29b438538; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x83a9b8ad60d15233; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0xc5207c0234a35901; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x99da92d328049618; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000006; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x137e9bb466f3a54d; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x4bf15900ee9201b1; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x092f3f081087749e; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0xf39c187a7bb8bda2; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x1315665be1502d56; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x064e3495cb0a8c05; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0xa65dad91076194c0; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0xa4051c567d6b11da; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x2a81ed1091a9d526; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x2cc40d68310d53a5; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0xfda813b1ff95682d; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x7aa9a741416ca226; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x9f3535aad174458f; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0xe451f2a307f58b20; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xaf2165871622301c; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x5019fb087d0aa3f4; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x618e5f80a92356c4; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0xc889d1c4c9888b7e; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x22f7079afe268534; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x6923b24822fedca7; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x722585859372af7d; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0xd9c9b2507e78e97c; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0xa9f6e9114272baa4; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x03092dddbe064b19; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x0a0fea4acc9b3a04; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x9f3535aad174458f; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x22f7079afe268534; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x0a0fea4acc9b3a04; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556060; Value = 0x000000000000008a; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556060;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x5019fb087d0aa3f4; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0xd9c9b2507e78e97c; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x092f3f081087749e; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x2a81ed1091a9d526; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xaf2165871622301c; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0xa65dad91076194c0; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x7aa9a741416ca226; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0xc889d1c4c9888b7e; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x03092dddbe064b19; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x1315665be1502d56; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x722585859372af7d; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x4bf15900ee9201b1; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0xa4051c567d6b11da; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0xe451f2a307f58b20; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x6923b24822fedca7; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0xfda813b1ff95682d; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x618e5f80a92356c4; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0xa9f6e9114272baa4; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0xf39c187a7bb8bda2; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x2cc40d68310d53a5; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000008; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x02bb3f6c67e0dc1c; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x6466493c3889e80a; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0x1820f21c1c2c91a2; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x0878aa4829b54251; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0xaf17bfe98831e8c1; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x6bc3b1f0f88eb5e7; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0xe1a9cfe38641b6b5; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x4bd8e4fdef916985; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x9837ed4ba15b53be; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0xd233e93eacde5d08; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x1c4e45b29981da35; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0xcb546f929e005d0a; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0x7f0835c9f10bf9c6; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xed6121b19f1f8d39; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0xa3982a1cbb03b3cb; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0xf798bc0ae0f3c689; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x0405ff57d9b0f21d; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x98edf97763ed6cd3; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x7e85adaa5b795c25; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0xc7c1f817f26b1004; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x833f826d3f2235ec; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x621540f2d0ee8b02; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x96a07a527dc872fb; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x64d5e4cafc5a8d82; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x6b84b10eb6eda10c; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0x7f0835c9f10bf9c6; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x7e85adaa5b795c25; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x6b84b10eb6eda10c; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556068; Value = 0x0000000000000088; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556068;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0xf798bc0ae0f3c689; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x621540f2d0ee8b02; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0x1820f21c1c2c91a2; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x9837ed4ba15b53be; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0xa3982a1cbb03b3cb; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0xe1a9cfe38641b6b5; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0xcb546f929e005d0a; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x98edf97763ed6cd3; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x64d5e4cafc5a8d82; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0xaf17bfe98831e8c1; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x833f826d3f2235ec; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x6466493c3889e80a; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x4bd8e4fdef916985; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xed6121b19f1f8d39; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0xc7c1f817f26b1004; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x1c4e45b29981da35; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x0405ff57d9b0f21d; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x96a07a527dc872fb; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x0878aa4829b54251; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0xd233e93eacde5d08; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000008; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x1aa2b8ac7d4e1b3b; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x27cf5964b5d1b8fe; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x891154f47e8718f2; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x180ce5deae19e25d; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x27d00362e00aaaa2; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x537f7c0e7ad5fc9a; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0xcc5afa8397d47058; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x62cb89732cc349bd; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0xe9baf3df4ed36952; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x940a2998a35d30f3; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0x1aab529619abee71; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x6346a29906a23304; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x7b5519cadf7f60ee; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x8e8bfb162c2f47cf; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xfbe86a30541f47a4; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x00fafe6d4de0cdc9; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x22295cf13499a33b; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0xc40894ea18072177; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0xc7bd8c979f240cb1; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x3d2953a4203b007e; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x7e5de764ea4982e1; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x39a8c97d1a141fec; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x9d972dda0227638c; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0xa11c78c8ff8868ec; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x19dd416b2cc7684f; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x7b5519cadf7f60ee; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0xc7bd8c979f240cb1; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x19dd416b2cc7684f; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556070; Value = 0x0000000080008009; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556070;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x00fafe6d4de0cdc9; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x39a8c97d1a141fec; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x891154f47e8718f2; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0xe9baf3df4ed36952; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xfbe86a30541f47a4; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0xcc5afa8397d47058; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x6346a29906a23304; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0xc40894ea18072177; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0xa11c78c8ff8868ec; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x27d00362e00aaaa2; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x7e5de764ea4982e1; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x27cf5964b5d1b8fe; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x62cb89732cc349bd; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x8e8bfb162c2f47cf; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x3d2953a4203b007e; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0x1aab529619abee71; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x22295cf13499a33b; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x9d972dda0227638c; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x180ce5deae19e25d; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x940a2998a35d30f3; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x000000000000000a; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0xc7630ec0391583d2; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x9083b7fc6059845b; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xa375cf6db14a8b56; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x42a52b21c6ae9141; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0xc0b934aa2659f808; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x6bbd471bbb613232; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0x41e5da9d624a22b5; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0xf2ed6e240dc67096; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0xb96928c5e2da5853; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0xd2dc0a28fa617a31; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x895da63480d3c66f; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0xe7c1fccf962127a5; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0xdb0436c986dc2b21; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xbf43676ec0f922c0; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x68a1afbf68594e39; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0xed734897d74978a4; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x5752ac5251856777; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0xb51384b7bfc63fae; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x83ec11bed2b7709b; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x82b13b898b8666c0; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0xb3c3e19a77c59890; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0xab756da3cbb0019d; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x094a4619bef5479a; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x0d784b6a5864812c; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x80fa3f548f2fbb6f; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0xdb0436c986dc2b21; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x83ec11bed2b7709b; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x80fa3f548f2fbb6f; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556078; Value = 0x000000008000000a; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556078;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0xed734897d74978a4; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0xab756da3cbb0019d; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xa375cf6db14a8b56; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0xb96928c5e2da5853; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x68a1afbf68594e39; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0x41e5da9d624a22b5; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0xe7c1fccf962127a5; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0xb51384b7bfc63fae; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x0d784b6a5864812c; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0xc0b934aa2659f808; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0xb3c3e19a77c59890; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x9083b7fc6059845b; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0xf2ed6e240dc67096; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xbf43676ec0f922c0; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x82b13b898b8666c0; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x895da63480d3c66f; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x5752ac5251856777; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x094a4619bef5479a; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x42a52b21c6ae9141; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0xd2dc0a28fa617a31; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x000000000000000a; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0xc4a4edff238a9f94; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x593abe9e120092ab; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x30cc0ba49c9278b5; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x1918abac79c562c1; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x9979f8b97ab24a77; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x8d3fa7ed687f93ad; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0xe6673047fa0fc3d1; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x07bed886a81e463a; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x0693a17a00b52e9c; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x0e06f8300671448c; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0xc820c62713816c36; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x376abc955214a8d5; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x72749a726b5fe1a8; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x3ac2de23d4fc6ebb; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0x145de8251fc8b462; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0xd1b54a3e11e0d698; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x02d3dc1d5ee45e62; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x1d92992c346e260e; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x36ba3bb32b80e4b0; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x18421d8fdb50bf0a; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0xf0b17fbdc5e938c1; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0xdceefd4e85fb2c04; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0xa78fecf860aced1a; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0xa026d94da8d768da; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x8280406a4c170409; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x72749a726b5fe1a8; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x36ba3bb32b80e4b0; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x8280406a4c170409; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556080; Value = 0x000000008000808b; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556080;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0xd1b54a3e11e0d698; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0xdceefd4e85fb2c04; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x30cc0ba49c9278b5; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x0693a17a00b52e9c; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0x145de8251fc8b462; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0xe6673047fa0fc3d1; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x376abc955214a8d5; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x1d92992c346e260e; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0xa026d94da8d768da; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x9979f8b97ab24a77; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0xf0b17fbdc5e938c1; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x593abe9e120092ab; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x07bed886a81e463a; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x3ac2de23d4fc6ebb; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x18421d8fdb50bf0a; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0xc820c62713816c36; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x02d3dc1d5ee45e62; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0xa78fecf860aced1a; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x1918abac79c562c1; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x0e06f8300671448c; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x000000000000000c; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x768f68ebe05be8e1; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0xa8699bc60de97fc4; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xfed1d3ca54e57c76; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x483f0badb8d6dfab; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x5b12f0853cf7baa5; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0xbd45a9f633e6c0ec; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0x2ed7bf1bd767ffa5; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x84dcfe7971ce2ba6; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x0f548f24751e981d; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0xf559e6f24c0db1e1; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x06331ef4fcbb5404; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x731f2dde743d5704; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0xe7badbe70781bee7; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x8a14e17920677e5c; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x744956bff269ad5a; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0xda3666b9f99700fe; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0xc61e5829d66b1adb; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x2e771ef5f3a7f050; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x326e8a4b13d5e2a3; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x05c53b4cbf7f2776; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x1eae20c842cfce2e; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x2382f5b4b484e45d; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x8d493a74bd556024; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x7b56f59aaa448c81; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0xc1c9b935af9c28d0; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0xe7badbe70781bee7; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x326e8a4b13d5e2a3; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0xc1c9b935af9c28d0; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556088; Value = 0x800000000000008b; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556088;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0xda3666b9f99700fe; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x2382f5b4b484e45d; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xfed1d3ca54e57c76; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x0f548f24751e981d; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x744956bff269ad5a; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0x2ed7bf1bd767ffa5; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x731f2dde743d5704; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x2e771ef5f3a7f050; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x7b56f59aaa448c81; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x5b12f0853cf7baa5; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x1eae20c842cfce2e; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0xa8699bc60de97fc4; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x84dcfe7971ce2ba6; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0x8a14e17920677e5c; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x05c53b4cbf7f2776; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x06331ef4fcbb5404; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0xc61e5829d66b1adb; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x8d493a74bd556024; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x483f0badb8d6dfab; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0xf559e6f24c0db1e1; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x000000000000000c; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0xd9057cb569e68712; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0xb67ac4ee4ecfc152; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0xe5d0630bdae88f98; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0xa2281dbb22abdc30; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x5c86600bec454d9e; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x65ebfd8f602b0634; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0x68ed4a83e13f04f6; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x6d21d08e3863c7ed; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0xda0109a92ea459be; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x101ff0a80cabd774; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0xff37c82883032253; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0xa8904ab9c980fce6; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x206ace81d8aeb6a8; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x9d9278e9d01f1e0c; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xf4bf9b57410b4d03; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0xe62883c3ff3e96d0; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0xaaad231c22a541a0; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0xa69326fb1d57191a; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x5cc4d232709331b1; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0xafe17acf28b2d2a0; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x07c0682892f2d0c2; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x32dd57a607cafdcc; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x4ebf3e209a177dd8; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x200244dcaa9405e4; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x67500caf09a6cc6c; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x206ace81d8aeb6a8; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x5cc4d232709331b1; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x67500caf09a6cc6c; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556090; Value = 0x8000000000008089; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556090;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0xe62883c3ff3e96d0; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x32dd57a607cafdcc; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0xe5d0630bdae88f98; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0xda0109a92ea459be; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xf4bf9b57410b4d03; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0x68ed4a83e13f04f6; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0xa8904ab9c980fce6; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0xa69326fb1d57191a; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x200244dcaa9405e4; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x5c86600bec454d9e; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x07c0682892f2d0c2; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0xb67ac4ee4ecfc152; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x6d21d08e3863c7ed; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x9d9278e9d01f1e0c; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0xafe17acf28b2d2a0; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0xff37c82883032253; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0xaaad231c22a541a0; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x4ebf3e209a177dd8; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0xa2281dbb22abdc30; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x101ff0a80cabd774; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x000000000000000e; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x5639f7ac4b64b6d9; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x01bc7669edaeb502; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xbdb58c06417f2a35; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x8b46c25e44358058; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x49ca2396496a40c2; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x6167059e05bc3ebf; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0xbc6110fde7b449a8; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x23e6e258e93b5f5d; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x9fc001031034fdba; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x276c46afacbdf3a9; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x65d8edc4a80beb08; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x946748713ea6ff13; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0x9dccb08061a7a631; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xaa7f2bd301d50148; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x575427cf817c5ca2; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0x7f0acfc8f4989502; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x41225987c3750880; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x9e87c454748b5972; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x285342e3f243fd40; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0xf25b6d43b9292fa9; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x3b6bbd87e47de49f; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x47df8a9afd652153; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x5107b8f984ac855c; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0xc5a61f3935cc3386; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x663e26d6e7f3a419; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0x9dccb08061a7a631; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x285342e3f243fd40; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x663e26d6e7f3a419; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x555555556098; Value = 0x8000000000008003; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x555555556098;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0x7f0acfc8f4989502; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x47df8a9afd652153; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xbdb58c06417f2a35; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x9fc001031034fdba; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x575427cf817c5ca2; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0xbc6110fde7b449a8; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x946748713ea6ff13; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x9e87c454748b5972; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0xc5a61f3935cc3386; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x49ca2396496a40c2; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x3b6bbd87e47de49f; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x01bc7669edaeb502; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x23e6e258e93b5f5d; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xaa7f2bd301d50148; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0xf25b6d43b9292fa9; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x65d8edc4a80beb08; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x41225987c3750880; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x5107b8f984ac855c; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x8b46c25e44358058; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x276c46afacbdf3a9; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x000000000000000e; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0xe96dd77e9464d356; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x8ab81692810797f8; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0xb3a3637e9f0da1d0; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0xd9dd22b36027a845; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0xe5b669a063607250; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0xcb4adbdf5227c013; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0xeb1bd84926488bce; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x8978f006511a4f6b; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x6debbc4bed5db863; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0xeeae36d64f44e1b6; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0x0de0dff4e7eb0d30; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x03472be8b7eafbf2; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x55795c26322f1963; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0xd70ffb6e27d95fc8; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0x2ea295afcc8cbeec; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x8f5cf07d684f94fa; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x44a33f744410994c; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x799ed54807f777ea; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x1fabacc40a6ffb01; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x618120c80fc189b1; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x305eae0ab1a23378; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x4dc8c4c99efb8adb; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x9a8922572dcd73ea; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0xaba0bfeb0cbe21b3; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x1024635ae4437570; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x55795c26322f1963; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x1fabacc40a6ffb01; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x1024635ae4437570; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560a0; Value = 0x8000000000008002; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560a0;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x8f5cf07d684f94fa; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x4dc8c4c99efb8adb; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0xb3a3637e9f0da1d0; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x6debbc4bed5db863; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0x2ea295afcc8cbeec; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0xeb1bd84926488bce; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x03472be8b7eafbf2; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x799ed54807f777ea; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0xaba0bfeb0cbe21b3; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0xe5b669a063607250; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x305eae0ab1a23378; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x8ab81692810797f8; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x8978f006511a4f6b; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0xd70ffb6e27d95fc8; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x618120c80fc189b1; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0x0de0dff4e7eb0d30; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x44a33f744410994c; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x9a8922572dcd73ea; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0xd9dd22b36027a845; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0xeeae36d64f44e1b6; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000010; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x9f814e7f6b2ae8c7; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x0c24508966a43e01; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0x787cc7a48dc2a523; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x2e2eb1221c957fdc; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x2fc6ea9fd391d0ea; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x4b7a02fdd701b748; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0x41fccec0f4486162; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0xbfaf3bdbc0e8521b; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x0416c437b20a3438; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x7ccaf7f06148bc23; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x722eff3d104d0e4a; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0xa074d5f922e3c310; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0xdeb4a4cde6e58337; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xa2aa06c46be2c139; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0xc592ea446cba8781; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0xa7254fbce2d76af7; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x809f02d580fa313e; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x90fe25b06ed7809c; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x88e981a96e46ac1f; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x92cff938e3e6c472; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x89a30605c002550f; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0xc3d112718afc1fc2; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x3979071e7a5ee5d8; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x5f157ea447e51664; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x37d7a80b906fdf19; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0xdeb4a4cde6e58337; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x88e981a96e46ac1f; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x37d7a80b906fdf19; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560a8; Value = 0x8000000000000080; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560a8;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0xa7254fbce2d76af7; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0xc3d112718afc1fc2; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0x787cc7a48dc2a523; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x0416c437b20a3438; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0xc592ea446cba8781; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0x41fccec0f4486162; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0xa074d5f922e3c310; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x90fe25b06ed7809c; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x5f157ea447e51664; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x2fc6ea9fd391d0ea; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x89a30605c002550f; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x0c24508966a43e01; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0xbfaf3bdbc0e8521b; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xa2aa06c46be2c139; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x92cff938e3e6c472; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x722eff3d104d0e4a; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x809f02d580fa313e; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x3979071e7a5ee5d8; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x2e2eb1221c957fdc; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x7ccaf7f06148bc23; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000010; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x604874969395699d; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x110459967249f79c; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x0d2c60b505b62feb; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x9e7e4a7c87e49094; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x3b5644635c87d904; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0xfc59526105abe564; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0x825dead1a3ae8639; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0xd52f724c0f7221cd; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0xfd7ebf369f9c4a23; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x98e6717629c86e33; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0x9a2d02652b437f20; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x7d5fee292d0db39b; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0xece7652fa2db7309; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0xb63f4793a0836f3a; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xcaf563b03c900512; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0xaa8903d4febd0272; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x70d54ccedf86f497; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x17779a596abcfb6f; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0x180bd935a8cae532; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0x8f5c05af71669659; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0xb8c4608151218157; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x242d63bf8e4f95bb; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x4c2147b69316ef96; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0xe930c1ecfd1b71fe; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x1c188453681f1d69; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0xece7652fa2db7309; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0x180bd935a8cae532; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x1c188453681f1d69; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560b0; Value = 0x000000000000800a; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560b0;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0xaa8903d4febd0272; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x242d63bf8e4f95bb; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x0d2c60b505b62feb; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0xfd7ebf369f9c4a23; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xcaf563b03c900512; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0x825dead1a3ae8639; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x7d5fee292d0db39b; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x17779a596abcfb6f; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0xe930c1ecfd1b71fe; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x3b5644635c87d904; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0xb8c4608151218157; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x110459967249f79c; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0xd52f724c0f7221cd; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0xb63f4793a0836f3a; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0x8f5c05af71669659; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0x9a2d02652b437f20; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x70d54ccedf86f497; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x4c2147b69316ef96; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x9e7e4a7c87e49094; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x98e6717629c86e33; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000012; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x27ac8066931a0784; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x483b4874979e86f0; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0x86aa2870050a5c84; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x24c0597a82814af9; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x2c0945588249b820; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0xd2272620aebf442f; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0x309f5b511ada4f04; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x097f49859c5df641; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x3ed50af563db7222; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0x2bed2bd1f9b1fc87; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x75465cb487d514c1; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x46befeae2ba0760a; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0xcd7108e45257d52a; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0xbe1e6aab5c319666; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x2b346113f6e4f97f; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0x19bbab7a1abbedf3; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0xb47256c6dd3e61fc; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x5847711903f7ba11; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0xd611722e854298a5; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x01c955366fb99b3f; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0xdaf58d91807b4d0d; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x8513e996c89cfbc4; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x71a6af7395a22d00; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x6e491cd01a5e4695; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x9445a4211f384df6; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0xcd7108e45257d52a; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0xd611722e854298a5; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x9445a4211f384df6; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560b8; Value = 0x800000008000000a; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560b8;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0x19bbab7a1abbedf3; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x8513e996c89cfbc4; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0x86aa2870050a5c84; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x3ed50af563db7222; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x2b346113f6e4f97f; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0x309f5b511ada4f04; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x46befeae2ba0760a; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x5847711903f7ba11; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x6e491cd01a5e4695; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x2c0945588249b820; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0xdaf58d91807b4d0d; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x483b4874979e86f0; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x097f49859c5df641; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0xbe1e6aab5c319666; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x01c955366fb99b3f; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x75465cb487d514c1; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0xb47256c6dd3e61fc; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x71a6af7395a22d00; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x24c0597a82814af9; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0x2bed2bd1f9b1fc87; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000012; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0x71f1b7bbf4438552; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0x851f7af820d7511c; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0xb7b6448c1dd858c5; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0x54fef564c15a56f7; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x60c54cc792476311; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0xf23d499dc53753c7; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0xa053d007ac216f36; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x9b618d37613ff371; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x8642e1adcf63e7fd; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x08bfa0ad569d87cf; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0x322b67f51b5270ae; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0x851cf92912a62663; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0xa87e9c8e5d66ec0e; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0xc822d284aa0d1d04; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xd7d97bd848feaf24; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x33b3e2834e9fd8b9; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x2273947b393ba799; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0x7449e9f2d8250a8e; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0xebbdd65569257db9; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0xfb84cfed3a677705; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0xb1c9448f40041d5f; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x388cc576221496f4; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0x7df9fa0a1c57b5d6; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x673d0f65a2505e95; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x55fb50f54465ca78; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0xa87e9c8e5d66ec0e; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0xebbdd65569257db9; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x55fb50f54465ca78; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560c0; Value = 0x8000000080008081; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560c0;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x33b3e2834e9fd8b9; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x388cc576221496f4; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0xb7b6448c1dd858c5; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x8642e1adcf63e7fd; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xd7d97bd848feaf24; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0xa053d007ac216f36; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0x851cf92912a62663; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0x7449e9f2d8250a8e; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x673d0f65a2505e95; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x60c54cc792476311; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0xb1c9448f40041d5f; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0x851f7af820d7511c; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x9b618d37613ff371; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0xc822d284aa0d1d04; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0xfb84cfed3a677705; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0x322b67f51b5270ae; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x2273947b393ba799; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0x7df9fa0a1c57b5d6; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0x54fef564c15a56f7; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x08bfa0ad569d87cf; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000014; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x4791f0e43160039c; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x5d5f47ba08102fbb; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0xdb56161208987065; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0xb4eb2a88395ab516; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0x35a60a8f5a40e84c; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x309cfb49a3e33eac; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0xbc2937bf2d033c4c; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0x21417a74ad8de15e; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x6f0535f27f7027f4; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0xcdf6ea3fe15e98fd; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x9c6960276f4e028b; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0x48b8a238cbd6eeb0; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0x72a9e2aed274be17; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x6052c4a34cd1841a; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x119a0d41c7be887b; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0xce724fa770928cc1; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0xe603227f2f0478e8; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x1be91f7b30590d7c; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0x3e9a9ed5f9a22ca5; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0xf0a919c51c0c452a; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x6581ab0273727381; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0x6fe9e423b7dfefd6; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0x2f54ce26eed12865; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x739caca0dde31e35; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0xdf6111f9d87875dd; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0x72a9e2aed274be17; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0x3e9a9ed5f9a22ca5; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0xdf6111f9d87875dd; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560c8; Value = 0x8000000000008080; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560c8;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0xce724fa770928cc1; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0x6fe9e423b7dfefd6; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0xdb56161208987065; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x6f0535f27f7027f4; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x119a0d41c7be887b; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0xbc2937bf2d033c4c; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0x48b8a238cbd6eeb0; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x1be91f7b30590d7c; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x739caca0dde31e35; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0x35a60a8f5a40e84c; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x6581ab0273727381; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x5d5f47ba08102fbb; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0x21417a74ad8de15e; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0x6052c4a34cd1841a; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0xf0a919c51c0c452a; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x9c6960276f4e028b; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0xe603227f2f0478e8; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0x2f54ce26eed12865; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0xb4eb2a88395ab516; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0xcdf6ea3fe15e98fd; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000014; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* mov    %rbx,%rdx                                #! PC = 0x555555555555 *)
mov rdx rbx;
(* mov    %rbp,%rsi                                #! PC = 0x555555555558 *)
mov rsi rbp;
(* mov    %r12,%rdi                                #! PC = 0x55555555555b *)
mov rdi r12;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555555e *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555555e = 0x55555555555e;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x555555558040; Value = 0xae64e3d2af8f9657; PC = 0x5555555551b2 *)
mov r10 L0x555555558040;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x555555558068; Value = 0xf9c2216c6f6db37f; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x555555558068;
(* xor    0x50(%rsi),%r12                          #! EA = L0x555555558090; Value = 0x9c16e77e9450fc21; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x555555558090;
(* xor    0x78(%rsi),%r12                          #! EA = L0x5555555580b8; Value = 0xeee3bf1bf9ce1dd0; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x5555555580b8;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x5555555580e0; Value = 0x78423fa3d3ab9e42; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x5555555580e0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x555555558070; Value = 0x302745b5ff01ac11; PC = 0x5555555551cb *)
mov rbx L0x555555558070;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x555555558048; Value = 0x87dd822b35758d80; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x555555558048;
(* xor    0x58(%rsi),%r9                           #! EA = L0x555555558098; Value = 0x320805c895287ba2; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x555555558098;
(* xor    0x80(%rsi),%r9                           #! EA = L0x5555555580c0; Value = 0x20f3624554f5e88e; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x5555555580c0;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x5555555580e8; Value = 0x8811a0c9dc25c84b; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x5555555580e8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x555555558050; Value = 0xc71b91eee28973df; PC = 0x5555555551e8 *)
mov rax L0x555555558050;
(* xor    0x38(%rsi),%rax                          #! EA = L0x555555558078; Value = 0xb781388c11334d5a; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x555555558078;
(* xor    0x60(%rsi),%rax                          #! EA = L0x5555555580a0; Value = 0x280413dd10ddb7bd; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x5555555580a0;
(* xor    0x88(%rsi),%rax                          #! EA = L0x5555555580c8; Value = 0x0a18ffcece8c82c5; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x5555555580c8;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x5555555580f0; Value = 0xab5f03edaa941138; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x5555555580f0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x555555558058; Value = 0x1eb44226d672b8f9; PC = 0x555555555205 *)
mov rdi L0x555555558058;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x555555558080; Value = 0x2ef307e99124053f; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x555555558080;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x5555555580a8; Value = 0xd49e86aaa29cab4f; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x5555555580a8;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x5555555580d0; Value = 0xce9e965f0bffb55e; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x5555555580d0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x5555555580f8; Value = 0xaca9bb89ba330d22; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x5555555580f8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x555555558060; Value = 0x29a521df79cda8f8; PC = 0x555555555222 *)
mov rax L0x555555558060;
(* xor    0x48(%rsi),%rax                          #! EA = L0x555555558088; Value = 0x3c90d56ebd47d22f; PC = 0x555555555226 *)
xor rax@uint64 rax L0x555555558088;
(* xor    0x70(%rsi),%rax                          #! EA = L0x5555555580b0; Value = 0xb3303c863a468929; PC = 0x55555555522a *)
xor rax@uint64 rax L0x5555555580b0;
(* xor    0x98(%rsi),%rax                          #! EA = L0x5555555580d8; Value = 0x2dc32477d370df51; PC = 0x55555555522e *)
xor rax@uint64 rax L0x5555555580d8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x555555558100; Value = 0x810affcce2aa11b8; PC = 0x555555555235 *)
xor rax@uint64 rax L0x555555558100;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x5555555580a0; Value = 0x280413dd10ddb7bd; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x5555555580a0;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x5555555580d0; Value = 0xce9e965f0bffb55e; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x5555555580d0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x555555558100; Value = 0x810affcce2aa11b8; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x555555558100;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560d0; Value = 0x0000000080000001; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560d0;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x7fffffffd910; PC = 0x5555555552ae *)
mov L0x7fffffffd910 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x7fffffffd918; PC = 0x5555555552bd *)
mov L0x7fffffffd918 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x7fffffffd920; PC = 0x5555555552ca *)
mov L0x7fffffffd920 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x7fffffffd928; PC = 0x5555555552d7 *)
mov L0x7fffffffd928 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x7fffffffd930; PC = 0x5555555552e1 *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x555555558058; Value = 0x1eb44226d672b8f9; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x555555558058;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x555555558088; Value = 0x3c90d56ebd47d22f; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x555555558088;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x555555558090; Value = 0x9c16e77e9450fc21; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x555555558090;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x5555555580c0; Value = 0x20f3624554f5e88e; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x5555555580c0;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x5555555580f0; Value = 0xab5f03edaa941138; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x5555555580f0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x7fffffffd938; PC = 0x55555555532e *)
mov L0x7fffffffd938 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x7fffffffd940; PC = 0x55555555533b *)
mov L0x7fffffffd940 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x7fffffffd948; PC = 0x55555555534b *)
mov L0x7fffffffd948 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x7fffffffd950; PC = 0x555555555358 *)
mov L0x7fffffffd950 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x7fffffffd958; PC = 0x555555555362 *)
mov L0x7fffffffd958 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x555555558048; Value = 0x87dd822b35758d80; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x555555558048;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x555555558078; Value = 0xb781388c11334d5a; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x555555558078;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x5555555580a8; Value = 0xd49e86aaa29cab4f; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x5555555580a8;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x5555555580d8; Value = 0x2dc32477d370df51; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x5555555580e0; Value = 0x78423fa3d3ab9e42; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x5555555580e0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x7fffffffd960; PC = 0x5555555553b4 *)
mov L0x7fffffffd960 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x7fffffffd968; PC = 0x5555555553c1 *)
mov L0x7fffffffd968 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x7fffffffd970; PC = 0x5555555553d1 *)
mov L0x7fffffffd970 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x7fffffffd978; PC = 0x5555555553e1 *)
mov L0x7fffffffd978 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x7fffffffd980; PC = 0x5555555553eb *)
mov L0x7fffffffd980 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x555555558060; Value = 0x29a521df79cda8f8; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x555555558060;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x555555558068; Value = 0xf9c2216c6f6db37f; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x555555558068;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x555555558098; Value = 0x320805c895287ba2; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x555555558098;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x5555555580c8; Value = 0x0a18ffcece8c82c5; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x5555555580c8;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x5555555580f8; Value = 0xaca9bb89ba330d22; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x5555555580f8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x7fffffffd988; PC = 0x55555555543e *)
mov L0x7fffffffd988 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x7fffffffd990; PC = 0x55555555544b *)
mov L0x7fffffffd990 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x7fffffffd998; PC = 0x55555555545e *)
mov L0x7fffffffd998 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x7fffffffd9a0; PC = 0x555555555471 *)
mov L0x7fffffffd9a0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x7fffffffd9a8; PC = 0x55555555547e *)
mov L0x7fffffffd9a8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x555555558050; Value = 0xc71b91eee28973df; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x555555558050;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x555555558080; Value = 0x2ef307e99124053f; PC = 0x55555555548d *)
xor rax@uint64 rax L0x555555558080;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x5555555580b0; Value = 0xb3303c863a468929; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x5555555580b0;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x5555555580b8; Value = 0xeee3bf1bf9ce1dd0; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x5555555580b8;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x5555555580e8; Value = 0x8811a0c9dc25c84b; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x5555555580e8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x7fffffffd9b0; PC = 0x5555555554bc *)
mov L0x7fffffffd9b0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x7fffffffd9b8; PC = 0x5555555554cf *)
mov L0x7fffffffd9b8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x7fffffffd9c0; PC = 0x5555555554df *)
mov L0x7fffffffd9c0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x7fffffffd9c8; PC = 0x5555555554ef *)
mov L0x7fffffffd9c8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x7fffffffd9d0; PC = 0x5555555554fc *)
mov L0x7fffffffd9d0 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000016; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* lea    0x1(%rbx),%rdx                           #! PC = 0x555555555563 *)
(* lea 0x1(%rbx), rdx *)
nop;
(* mov    %r12,%rsi                                #! PC = 0x555555555567 *)
mov rsi r12;
(* mov    %rbp,%rdi                                #! PC = 0x55555555556a *)
mov rdi rbp;
(* #callq  0x5555555551a2 <Round>                  #! PC = 0x55555555556d *)
#callq  0x5555555551a2 <Round>                  #! 0x55555555556d = 0x55555555556d;
(* #! -> SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* push   %r15                                     #! EA = L0x7fffffffd900; PC = 0x5555555551a2 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffd8f8; PC = 0x5555555551a4 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd8f0; PC = 0x5555555551a6 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd8e8; PC = 0x5555555551a8 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd8e0; PC = 0x5555555551aa *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd8d8; PC = 0x5555555551ab *)
(* push rbx *)
nop;
(* mov    %rdi,%r8                                 #! PC = 0x5555555551ac *)
mov r8 rdi;
(* mov    %rdx,%rbp                                #! PC = 0x5555555551af *)
mov rbp rdx;
(* mov    (%rsi),%r10                              #! EA = L0x7fffffffd910; Value = 0x123de805017e1557; PC = 0x5555555551b2 *)
mov r10 L0x7fffffffd910;
(* mov    %r10,%r12                                #! PC = 0x5555555551b5 *)
mov r12 r10;
(* xor    0x28(%rsi),%r12                          #! EA = L0x7fffffffd938; Value = 0x4b25f37e91def5ed; PC = 0x5555555551b8 *)
xor r12@uint64 r12 L0x7fffffffd938;
(* xor    0x50(%rsi),%r12                          #! EA = L0x7fffffffd960; Value = 0x8d828b4b66427acf; PC = 0x5555555551bc *)
xor r12@uint64 r12 L0x7fffffffd960;
(* xor    0x78(%rsi),%r12                          #! EA = L0x7fffffffd988; Value = 0x42b50d99d8e9447c; PC = 0x5555555551c0 *)
xor r12@uint64 r12 L0x7fffffffd988;
(* xor    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd9b0; Value = 0xacfdb7506fca5579; PC = 0x5555555551c4 *)
xor r12@uint64 r12 L0x7fffffffd9b0;
(* mov    0x30(%rsi),%rbx                          #! EA = L0x7fffffffd940; Value = 0x1202cef69e808145; PC = 0x5555555551cb *)
mov rbx L0x7fffffffd940;
(* mov    %rbx,%r9                                 #! PC = 0x5555555551cf *)
mov r9 rbx;
(* xor    0x8(%rsi),%r9                            #! EA = L0x7fffffffd918; Value = 0x774ae653f173b70d; PC = 0x5555555551d2 *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x58(%rsi),%r9                           #! EA = L0x7fffffffd968; Value = 0xdd395809e4da03e5; PC = 0x5555555551d6 *)
xor r9@uint64 r9 L0x7fffffffd968;
(* xor    0x80(%rsi),%r9                           #! EA = L0x7fffffffd990; Value = 0x4b88c7dc441dea2a; PC = 0x5555555551da *)
xor r9@uint64 r9 L0x7fffffffd990;
(* xor    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd9b8; Value = 0xe275d1b33665a3b6; PC = 0x5555555551e1 *)
xor r9@uint64 r9 L0x7fffffffd9b8;
(* mov    0x10(%rsi),%rax                          #! EA = L0x7fffffffd920; Value = 0x36c750c6ccf7400a; PC = 0x5555555551e8 *)
mov rax L0x7fffffffd920;
(* xor    0x38(%rsi),%rax                          #! EA = L0x7fffffffd948; Value = 0xb9285fc06fac7b6d; PC = 0x5555555551ec *)
xor rax@uint64 rax L0x7fffffffd948;
(* xor    0x60(%rsi),%rax                          #! EA = L0x7fffffffd970; Value = 0xef1d55124a519f66; PC = 0x5555555551f0 *)
xor rax@uint64 rax L0x7fffffffd970;
(* xor    0x88(%rsi),%rax                          #! EA = L0x7fffffffd998; Value = 0x4370c86f29e1208f; PC = 0x5555555551f4 *)
xor rax@uint64 rax L0x7fffffffd998;
(* xor    0xb0(%rsi),%rax                          #! EA = L0x7fffffffd9c0; Value = 0x77c37767eede67e9; PC = 0x5555555551fb *)
xor rax@uint64 rax L0x7fffffffd9c0;
(* mov    %rax,%r13                                #! PC = 0x555555555202 *)
mov r13 rax;
(* mov    0x18(%rsi),%rdi                          #! EA = L0x7fffffffd928; Value = 0x05a9a671793ba403; PC = 0x555555555205 *)
mov rdi L0x7fffffffd928;
(* xor    0x40(%rsi),%rdi                          #! EA = L0x7fffffffd950; Value = 0x2d018e0136ef7265; PC = 0x555555555209 *)
xor rdi@uint64 rdi L0x7fffffffd950;
(* xor    0x68(%rsi),%rdi                          #! EA = L0x7fffffffd978; Value = 0x07801550fdc68a56; PC = 0x55555555520d *)
xor rdi@uint64 rdi L0x7fffffffd978;
(* xor    0x90(%rsi),%rdi                          #! EA = L0x7fffffffd9a0; Value = 0xaec68fe125b0aab9; PC = 0x555555555211 *)
xor rdi@uint64 rdi L0x7fffffffd9a0;
(* xor    0xb8(%rsi),%rdi                          #! EA = L0x7fffffffd9c8; Value = 0x3a55e44aa828d84f; PC = 0x555555555218 *)
xor rdi@uint64 rdi L0x7fffffffd9c8;
(* mov    %rdi,%r11                                #! PC = 0x55555555521f *)
mov r11 rdi;
(* mov    0x20(%rsi),%rax                          #! EA = L0x7fffffffd930; Value = 0x5ae3c328c41fa7d1; PC = 0x555555555222 *)
mov rax L0x7fffffffd930;
(* xor    0x48(%rsi),%rax                          #! EA = L0x7fffffffd958; Value = 0xa1a2574a34a2a6d6; PC = 0x555555555226 *)
xor rax@uint64 rax L0x7fffffffd958;
(* xor    0x70(%rsi),%rax                          #! EA = L0x7fffffffd980; Value = 0xe4538a85d27c2398; PC = 0x55555555522a *)
xor rax@uint64 rax L0x7fffffffd980;
(* xor    0x98(%rsi),%rax                          #! EA = L0x7fffffffd9a8; Value = 0x3ff75501d6481511; PC = 0x55555555522e *)
xor rax@uint64 rax L0x7fffffffd9a8;
(* xor    0xc0(%rsi),%rax                          #! EA = L0x7fffffffd9d0; Value = 0x32ab333296728c5c; PC = 0x555555555235 *)
xor rax@uint64 rax L0x7fffffffd9d0;
(* mov    %r9,%rcx                                 #! PC = 0x55555555523c *)
mov rcx r9;
(* rol    %rcx                                     #! PC = 0x55555555523f *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555242 *)
xor rcx@uint64 rcx rax;
(* mov    %r13,%rdx                                #! PC = 0x555555555245 *)
mov rdx r13;
(* rol    %rdx                                     #! PC = 0x555555555248 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r12,%rdx                                #! PC = 0x55555555524b *)
xor rdx@uint64 rdx r12;
(* rol    %rdi                                     #! PC = 0x55555555524e *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdi,%r9                                 #! PC = 0x555555555251 *)
xor r9@uint64 r9 rdi;
(* rol    %rax                                     #! PC = 0x555555555254 *)
split rax_h rax_l rax 63; shl rax_s rax_l 1@uint64; add rax rax_s rax_h;
(* xor    %r13,%rax                                #! PC = 0x555555555257 *)
xor rax@uint64 rax r13;
(* mov    %r12,%rdi                                #! PC = 0x55555555525a *)
mov rdi r12;
(* rol    %rdi                                     #! PC = 0x55555555525d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %r11,%rdi                                #! PC = 0x555555555260 *)
xor rdi@uint64 rdi r11;
(* xor    %rcx,%r10                                #! PC = 0x555555555263 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%rbx                                #! PC = 0x555555555266 *)
xor rbx@uint64 rbx rdx;
(* ror    $0x14,%rbx                               #! PC = 0x555555555269 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r13                                 #! PC = 0x55555555526d *)
mov r13 r9;
(* xor    0x60(%rsi),%r13                          #! EA = L0x7fffffffd970; Value = 0xef1d55124a519f66; PC = 0x555555555270 *)
xor r13@uint64 r13 L0x7fffffffd970;
(* ror    $0x15,%r13                               #! PC = 0x555555555274 *)
split r13_h r13_l r13 0x15; shl r13_s r13_l (64-0x15)@uint64; add r13 r13_s r13_h;
(* mov    %rax,%r12                                #! PC = 0x555555555278 *)
mov r12 rax;
(* xor    0x90(%rsi),%r12                          #! EA = L0x7fffffffd9a0; Value = 0xaec68fe125b0aab9; PC = 0x55555555527b *)
xor r12@uint64 r12 L0x7fffffffd9a0;
(* rol    $0x15,%r12                               #! PC = 0x555555555282 *)
split r12_h r12_l r12 (64-0x15); shl r12_s r12_l 0x15@uint64; add r12 r12_s r12_h;
(* mov    %rdi,%r11                                #! PC = 0x555555555286 *)
mov r11 rdi;
(* xor    0xc0(%rsi),%r11                          #! EA = L0x7fffffffd9d0; Value = 0x32ab333296728c5c; PC = 0x555555555289 *)
xor r11@uint64 r11 L0x7fffffffd9d0;
(* rol    $0xe,%r11                                #! PC = 0x555555555290 *)
split r11_h r11_l r11 (64-0xe); shl r11_s r11_l 0xe@uint64; add r11 r11_s r11_h;
(* lea    0xd85(%rip),%r14        # 0x555555556020 <iotas>#! PC = 0x555555555294 *)
(* lea 0xd85(%rip), r14 *)
nop;
(* mov    %r10,%r15                                #! PC = 0x55555555529b *)
mov r15 r10;
(* xor    (%r14,%rbp,8),%r15                       #! EA = L0x5555555560d8; Value = 0x8000000080008008; PC = 0x55555555529e *)
xor r15@uint64 r15 L0x5555555560d8;
(* mov    %r15,%rbp                                #! PC = 0x5555555552a2 *)
mov rbp r15;
(* mov    %r13,%r14                                #! PC = 0x5555555552a5 *)
mov r14 r13;
(* or     %rbx,%r14                                #! PC = 0x5555555552a8 *)
or r14@uint64 r14 rbx;
(* xor    %r14,%rbp                                #! PC = 0x5555555552ab *)
xor rbp@uint64 rbp r14;
(* mov    %rbp,(%r8)                               #! EA = L0x555555558040; PC = 0x5555555552ae *)
mov L0x555555558040 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555552b1 *)
mov rbp r13;
(* not    %rbp                                     #! PC = 0x5555555552b4 *)
not rbp@uint64 rbp;
(* or     %r12,%rbp                                #! PC = 0x5555555552b7 *)
or rbp@uint64 rbp r12;
(* xor    %rbx,%rbp                                #! PC = 0x5555555552ba *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x8(%r8)                            #! EA = L0x555555558048; PC = 0x5555555552bd *)
mov L0x555555558048 rbp;
(* mov    %r11,%rbp                                #! PC = 0x5555555552c1 *)
mov rbp r11;
(* and    %r12,%rbp                                #! PC = 0x5555555552c4 *)
and rbp@uint64 rbp r12;
(* xor    %rbp,%r13                                #! PC = 0x5555555552c7 *)
xor r13@uint64 r13 rbp;
(* mov    %r13,0x10(%r8)                           #! EA = L0x555555558050; PC = 0x5555555552ca *)
mov L0x555555558050 r13;
(* mov    %r10,%rbp                                #! PC = 0x5555555552ce *)
mov rbp r10;
(* or     %r11,%rbp                                #! PC = 0x5555555552d1 *)
or rbp@uint64 rbp r11;
(* xor    %rbp,%r12                                #! PC = 0x5555555552d4 *)
xor r12@uint64 r12 rbp;
(* mov    %r12,0x18(%r8)                           #! EA = L0x555555558058; PC = 0x5555555552d7 *)
mov L0x555555558058 r12;
(* and    %rbx,%r10                                #! PC = 0x5555555552db *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555552de *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x20(%r8)                           #! EA = L0x555555558060; PC = 0x5555555552e1 *)
mov L0x555555558060 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555552e5 *)
mov r10 rax;
(* xor    0x18(%rsi),%r10                          #! EA = L0x7fffffffd928; Value = 0x05a9a671793ba403; PC = 0x5555555552e8 *)
xor r10@uint64 r10 L0x7fffffffd928;
(* rol    $0x1c,%r10                               #! PC = 0x5555555552ec *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* mov    %r10,%rbp                                #! PC = 0x5555555552f0 *)
mov rbp r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555552f3 *)
mov r10 rdi;
(* xor    0x48(%rsi),%r10                          #! EA = L0x7fffffffd958; Value = 0xa1a2574a34a2a6d6; PC = 0x5555555552f6 *)
xor r10@uint64 r10 L0x7fffffffd958;
(* rol    $0x14,%r10                               #! PC = 0x5555555552fa *)
split r10_h r10_l r10 (64-0x14); shl r10_s r10_l 0x14@uint64; add r10 r10_s r10_h;
(* mov    %rcx,%r11                                #! PC = 0x5555555552fe *)
mov r11 rcx;
(* xor    0x50(%rsi),%r11                          #! EA = L0x7fffffffd960; Value = 0x8d828b4b66427acf; PC = 0x555555555301 *)
xor r11@uint64 r11 L0x7fffffffd960;
(* rol    $0x3,%r11                                #! PC = 0x555555555305 *)
split r11_h r11_l r11 (64-0x3); shl r11_s r11_l 0x3@uint64; add r11 r11_s r11_h;
(* mov    %r11,%r13                                #! PC = 0x555555555309 *)
mov r13 r11;
(* mov    %rdx,%r12                                #! PC = 0x55555555530c *)
mov r12 rdx;
(* xor    0x80(%rsi),%r12                          #! EA = L0x7fffffffd990; Value = 0x4b88c7dc441dea2a; PC = 0x55555555530f *)
xor r12@uint64 r12 L0x7fffffffd990;
(* ror    $0x13,%r12                               #! PC = 0x555555555316 *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* mov    %r9,%rbx                                 #! PC = 0x55555555531a *)
mov rbx r9;
(* xor    0xb0(%rsi),%rbx                          #! EA = L0x7fffffffd9c0; Value = 0x77c37767eede67e9; PC = 0x55555555531d *)
xor rbx@uint64 rbx L0x7fffffffd9c0;
(* ror    $0x3,%rbx                                #! PC = 0x555555555324 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* or     %r10,%r11                                #! PC = 0x555555555328 *)
or r11@uint64 r11 r10;
(* xor    %rbp,%r11                                #! PC = 0x55555555532b *)
xor r11@uint64 r11 rbp;
(* mov    %r11,0x28(%r8)                           #! EA = L0x555555558068; PC = 0x55555555532e *)
mov L0x555555558068 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555332 *)
mov r11 r12;
(* and    %r13,%r11                                #! PC = 0x555555555335 *)
and r11@uint64 r11 r13;
(* xor    %r10,%r11                                #! PC = 0x555555555338 *)
xor r11@uint64 r11 r10;
(* mov    %r11,0x30(%r8)                           #! EA = L0x555555558070; PC = 0x55555555533b *)
mov L0x555555558070 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555533f *)
mov r11 rbx;
(* not    %r11                                     #! PC = 0x555555555342 *)
not r11@uint64 r11;
(* or     %r12,%r11                                #! PC = 0x555555555345 *)
or r11@uint64 r11 r12;
(* xor    %r13,%r11                                #! PC = 0x555555555348 *)
xor r11@uint64 r11 r13;
(* mov    %r11,0x38(%r8)                           #! EA = L0x555555558078; PC = 0x55555555534b *)
mov L0x555555558078 r11;
(* mov    %rbx,%r11                                #! PC = 0x55555555534f *)
mov r11 rbx;
(* or     %rbp,%r11                                #! PC = 0x555555555352 *)
or r11@uint64 r11 rbp;
(* xor    %r11,%r12                                #! PC = 0x555555555355 *)
xor r12@uint64 r12 r11;
(* mov    %r12,0x40(%r8)                           #! EA = L0x555555558080; PC = 0x555555555358 *)
mov L0x555555558080 r12;
(* and    %rbp,%r10                                #! PC = 0x55555555535c *)
and r10@uint64 r10 rbp;
(* xor    %rbx,%r10                                #! PC = 0x55555555535f *)
xor r10@uint64 r10 rbx;
(* mov    %r10,0x48(%r8)                           #! EA = L0x555555558088; PC = 0x555555555362 *)
mov L0x555555558088 r10;
(* mov    %rdx,%r10                                #! PC = 0x555555555366 *)
mov r10 rdx;
(* xor    0x8(%rsi),%r10                           #! EA = L0x7fffffffd918; Value = 0x774ae653f173b70d; PC = 0x555555555369 *)
xor r10@uint64 r10 L0x7fffffffd918;
(* mov    %r10,%rbx                                #! PC = 0x55555555536d *)
mov rbx r10;
(* rol    %rbx                                     #! PC = 0x555555555370 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    %r9,%r10                                 #! PC = 0x555555555373 *)
mov r10 r9;
(* xor    0x38(%rsi),%r10                          #! EA = L0x7fffffffd948; Value = 0xb9285fc06fac7b6d; PC = 0x555555555376 *)
xor r10@uint64 r10 L0x7fffffffd948;
(* rol    $0x6,%r10                                #! PC = 0x55555555537a *)
split r10_h r10_l r10 (64-0x6); shl r10_s r10_l 0x6@uint64; add r10 r10_s r10_h;
(* mov    %rax,%r12                                #! PC = 0x55555555537e *)
mov r12 rax;
(* xor    0x68(%rsi),%r12                          #! EA = L0x7fffffffd978; Value = 0x07801550fdc68a56; PC = 0x555555555381 *)
xor r12@uint64 r12 L0x7fffffffd978;
(* mov    %r12,%r14                                #! PC = 0x555555555385 *)
mov r14 r12;
(* rol    $0x19,%r14                               #! PC = 0x555555555388 *)
split r14_h r14_l r14 (64-0x19); shl r14_s r14_l 0x19@uint64; add r14 r14_s r14_h;
(* mov    %rdi,%rbp                                #! PC = 0x55555555538c *)
mov rbp rdi;
(* xor    0x98(%rsi),%rbp                          #! EA = L0x7fffffffd9a8; Value = 0x3ff75501d6481511; PC = 0x55555555538f *)
xor rbp@uint64 rbp L0x7fffffffd9a8;
(* rol    $0x8,%rbp                                #! PC = 0x555555555396 *)
split rbp_h rbp_l rbp (64-0x8); shl rbp_s rbp_l 0x8@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x55555555539a *)
mov r13 rbp;
(* mov    %rcx,%r11                                #! PC = 0x55555555539d *)
mov r11 rcx;
(* xor    0xa0(%rsi),%r11                          #! EA = L0x7fffffffd9b0; Value = 0xacfdb7506fca5579; PC = 0x5555555553a0 *)
xor r11@uint64 r11 L0x7fffffffd9b0;
(* rol    $0x12,%r11                               #! PC = 0x5555555553a7 *)
split r11_h r11_l r11 (64-0x12); shl r11_s r11_l 0x12@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x5555555553ab *)
mov rbp r14;
(* or     %r10,%rbp                                #! PC = 0x5555555553ae *)
or rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x5555555553b1 *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x50(%r8)                           #! EA = L0x555555558090; PC = 0x5555555553b4 *)
mov L0x555555558090 rbp;
(* mov    %r13,%rbp                                #! PC = 0x5555555553b8 *)
mov rbp r13;
(* and    %r14,%rbp                                #! PC = 0x5555555553bb *)
and rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x5555555553be *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x58(%r8)                           #! EA = L0x555555558098; PC = 0x5555555553c1 *)
mov L0x555555558098 rbp;
(* mov    %r13,%r12                                #! PC = 0x5555555553c5 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x5555555553c8 *)
not r12@uint64 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553cb *)
and r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x5555555553ce *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x60(%r8)                           #! EA = L0x5555555580a0; PC = 0x5555555553d1 *)
mov L0x5555555580a0 r12;
(* mov    %r11,%rbp                                #! PC = 0x5555555553d5 *)
mov rbp r11;
(* or     %rbx,%rbp                                #! PC = 0x5555555553d8 *)
or rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x5555555553db *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x5555555553de *)
not rbp@uint64 rbp;
(* mov    %rbp,0x68(%r8)                           #! EA = L0x5555555580a8; PC = 0x5555555553e1 *)
mov L0x5555555580a8 rbp;
(* and    %rbx,%r10                                #! PC = 0x5555555553e5 *)
and r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x5555555553e8 *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x70(%r8)                           #! EA = L0x5555555580b0; PC = 0x5555555553eb *)
mov L0x5555555580b0 r10;
(* mov    %rdi,%r10                                #! PC = 0x5555555553ef *)
mov r10 rdi;
(* xor    0x20(%rsi),%r10                          #! EA = L0x7fffffffd930; Value = 0x5ae3c328c41fa7d1; PC = 0x5555555553f2 *)
xor r10@uint64 r10 L0x7fffffffd930;
(* mov    %r10,%rbx                                #! PC = 0x5555555553f6 *)
mov rbx r10;
(* rol    $0x1b,%rbx                               #! PC = 0x5555555553f9 *)
split rbx_h rbx_l rbx (64-0x1b); shl rbx_s rbx_l 0x1b@uint64; add rbx rbx_s rbx_h;
(* mov    %rcx,%r10                                #! PC = 0x5555555553fd *)
mov r10 rcx;
(* xor    0x28(%rsi),%r10                          #! EA = L0x7fffffffd938; Value = 0x4b25f37e91def5ed; PC = 0x555555555400 *)
xor r10@uint64 r10 L0x7fffffffd938;
(* ror    $0x1c,%r10                               #! PC = 0x555555555404 *)
split r10_h r10_l r10 0x1c; shl r10_s r10_l (64-0x1c)@uint64; add r10 r10_s r10_h;
(* mov    %rdx,%r12                                #! PC = 0x555555555408 *)
mov r12 rdx;
(* xor    0x58(%rsi),%r12                          #! EA = L0x7fffffffd968; Value = 0xdd395809e4da03e5; PC = 0x55555555540b *)
xor r12@uint64 r12 L0x7fffffffd968;
(* mov    %r12,%r14                                #! PC = 0x55555555540f *)
mov r14 r12;
(* rol    $0xa,%r14                                #! PC = 0x555555555412 *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* mov    %r9,%rbp                                 #! PC = 0x555555555416 *)
mov rbp r9;
(* xor    0x88(%rsi),%rbp                          #! EA = L0x7fffffffd998; Value = 0x4370c86f29e1208f; PC = 0x555555555419 *)
xor rbp@uint64 rbp L0x7fffffffd998;
(* rol    $0xf,%rbp                                #! PC = 0x555555555420 *)
split rbp_h rbp_l rbp (64-0xf); shl rbp_s rbp_l 0xf@uint64; add rbp rbp_s rbp_h;
(* mov    %rbp,%r13                                #! PC = 0x555555555424 *)
mov r13 rbp;
(* mov    %rax,%r11                                #! PC = 0x555555555427 *)
mov r11 rax;
(* xor    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd9c8; Value = 0x3a55e44aa828d84f; PC = 0x55555555542a *)
xor r11@uint64 r11 L0x7fffffffd9c8;
(* ror    $0x8,%r11                                #! PC = 0x555555555431 *)
split r11_h r11_l r11 0x8; shl r11_s r11_l (64-0x8)@uint64; add r11 r11_s r11_h;
(* mov    %r14,%rbp                                #! PC = 0x555555555435 *)
mov rbp r14;
(* and    %r10,%rbp                                #! PC = 0x555555555438 *)
and rbp@uint64 rbp r10;
(* xor    %rbx,%rbp                                #! PC = 0x55555555543b *)
xor rbp@uint64 rbp rbx;
(* mov    %rbp,0x78(%r8)                           #! EA = L0x5555555580b8; PC = 0x55555555543e *)
mov L0x5555555580b8 rbp;
(* mov    %r13,%rbp                                #! PC = 0x555555555442 *)
mov rbp r13;
(* or     %r14,%rbp                                #! PC = 0x555555555445 *)
or rbp@uint64 rbp r14;
(* xor    %r10,%rbp                                #! PC = 0x555555555448 *)
xor rbp@uint64 rbp r10;
(* mov    %rbp,0x80(%r8)                           #! EA = L0x5555555580c0; PC = 0x55555555544b *)
mov L0x5555555580c0 rbp;
(* mov    %r13,%r12                                #! PC = 0x555555555452 *)
mov r12 r13;
(* not    %r12                                     #! PC = 0x555555555455 *)
not r12@uint64 r12;
(* or     %r11,%r12                                #! PC = 0x555555555458 *)
or r12@uint64 r12 r11;
(* xor    %r14,%r12                                #! PC = 0x55555555545b *)
xor r12@uint64 r12 r14;
(* mov    %r12,0x88(%r8)                           #! EA = L0x5555555580c8; PC = 0x55555555545e *)
mov L0x5555555580c8 r12;
(* mov    %r11,%rbp                                #! PC = 0x555555555465 *)
mov rbp r11;
(* and    %rbx,%rbp                                #! PC = 0x555555555468 *)
and rbp@uint64 rbp rbx;
(* xor    %r13,%rbp                                #! PC = 0x55555555546b *)
xor rbp@uint64 rbp r13;
(* not    %rbp                                     #! PC = 0x55555555546e *)
not rbp@uint64 rbp;
(* mov    %rbp,0x90(%r8)                           #! EA = L0x5555555580d0; PC = 0x555555555471 *)
mov L0x5555555580d0 rbp;
(* or     %rbx,%r10                                #! PC = 0x555555555478 *)
or r10@uint64 r10 rbx;
(* xor    %r11,%r10                                #! PC = 0x55555555547b *)
xor r10@uint64 r10 r11;
(* mov    %r10,0x98(%r8)                           #! EA = L0x5555555580d8; PC = 0x55555555547e *)
mov L0x5555555580d8 r10;
(* xor    0x10(%rsi),%r9                           #! EA = L0x7fffffffd920; Value = 0x36c750c6ccf7400a; PC = 0x555555555485 *)
xor r9@uint64 r9 L0x7fffffffd920;
(* ror    $0x2,%r9                                 #! PC = 0x555555555489 *)
split r9_h r9_l r9 0x2; shl r9_s r9_l (64-0x2)@uint64; add r9 r9_s r9_h;
(* xor    0x40(%rsi),%rax                          #! EA = L0x7fffffffd950; Value = 0x2d018e0136ef7265; PC = 0x55555555548d *)
xor rax@uint64 rax L0x7fffffffd950;
(* ror    $0x9,%rax                                #! PC = 0x555555555491 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* xor    0x70(%rsi),%rdi                          #! EA = L0x7fffffffd980; Value = 0xe4538a85d27c2398; PC = 0x555555555495 *)
xor rdi@uint64 rdi L0x7fffffffd980;
(* ror    $0x19,%rdi                               #! PC = 0x555555555499 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x78(%rsi),%rcx                          #! EA = L0x7fffffffd988; Value = 0x42b50d99d8e9447c; PC = 0x55555555549d *)
xor rcx@uint64 rcx L0x7fffffffd988;
(* ror    $0x17,%rcx                               #! PC = 0x5555555554a1 *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* xor    0xa8(%rsi),%rdx                          #! EA = L0x7fffffffd9b8; Value = 0xe275d1b33665a3b6; PC = 0x5555555554a5 *)
xor rdx@uint64 rdx L0x7fffffffd9b8;
(* rol    $0x2,%rdx                                #! PC = 0x5555555554ac *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %rax,%rsi                                #! PC = 0x5555555554b0 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554b3 *)
not rsi@uint64 rsi;
(* and    %rdi,%rsi                                #! PC = 0x5555555554b6 *)
and rsi@uint64 rsi rdi;
(* xor    %r9,%rsi                                 #! PC = 0x5555555554b9 *)
xor rsi@uint64 rsi r9;
(* mov    %rsi,0xa0(%r8)                           #! EA = L0x5555555580e0; PC = 0x5555555554bc *)
mov L0x5555555580e0 rsi;
(* mov    %rcx,%rsi                                #! PC = 0x5555555554c3 *)
mov rsi rcx;
(* or     %rdi,%rsi                                #! PC = 0x5555555554c6 *)
or rsi@uint64 rsi rdi;
(* xor    %rax,%rsi                                #! PC = 0x5555555554c9 *)
xor rsi@uint64 rsi rax;
(* not    %rsi                                     #! PC = 0x5555555554cc *)
not rsi@uint64 rsi;
(* mov    %rsi,0xa8(%r8)                           #! EA = L0x5555555580e8; PC = 0x5555555554cf *)
mov L0x5555555580e8 rsi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554d6 *)
mov rsi rdx;
(* and    %rcx,%rsi                                #! PC = 0x5555555554d9 *)
and rsi@uint64 rsi rcx;
(* xor    %rsi,%rdi                                #! PC = 0x5555555554dc *)
xor rdi@uint64 rdi rsi;
(* mov    %rdi,0xb0(%r8)                           #! EA = L0x5555555580f0; PC = 0x5555555554df *)
mov L0x5555555580f0 rdi;
(* mov    %rdx,%rsi                                #! PC = 0x5555555554e6 *)
mov rsi rdx;
(* or     %r9,%rsi                                 #! PC = 0x5555555554e9 *)
or rsi@uint64 rsi r9;
(* xor    %rsi,%rcx                                #! PC = 0x5555555554ec *)
xor rcx@uint64 rcx rsi;
(* mov    %rcx,0xb8(%r8)                           #! EA = L0x5555555580f8; PC = 0x5555555554ef *)
mov L0x5555555580f8 rcx;
(* and    %r9,%rax                                 #! PC = 0x5555555554f6 *)
and rax@uint64 rax r9;
(* xor    %rdx,%rax                                #! PC = 0x5555555554f9 *)
xor rax@uint64 rax rdx;
(* mov    %rax,0xc0(%r8)                           #! EA = L0x555555558100; PC = 0x5555555554fc *)
mov L0x555555558100 rax;
(* pop    %rbx                                     #! EA = L0x7fffffffd8d8; Value = 0x0000000000000016; PC = 0x555555555503 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd8e0; Value = 0x0000555555558040; PC = 0x555555555504 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd8e8; Value = 0x00007fffffffd910; PC = 0x555555555505 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd8f0; Value = 0x00000000000000a8; PC = 0x555555555507 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd8f8; Value = 0x00007fffffffdae8; PC = 0x555555555509 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd900; Value = 0x00000000000000a8; PC = 0x55555555550b *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd908 *)
#! 0x7fffffffd908 = 0x7fffffffd908;
(* #retq                                           #! PC = 0x55555555550d *)
#retq                                           #! 0x55555555550d = 0x55555555550d;
(* add    $0x2,%rbx                                #! PC = 0x555555555572 *)
adds dc rbx rbx 0x2@uint64;
(* cmp    $0x18,%rbx                               #! PC = 0x555555555576 *)
(* cmp 0x18, rbx *)
nop;
(* #jne    0x555555555555 <KeccakF1600+71>         #! PC = 0x55555555557a *)
#jne    0x555555555555 <KeccakF1600+71>         #! 0x55555555557a = 0x55555555557a;
(* notq   0x8(%rbp)                                #! EA = L0x555555558048; PC = 0x55555555557c *)
not L0x555555558048@uint64 L0x555555558048;
(* notq   0x10(%rbp)                               #! EA = L0x555555558050; PC = 0x555555555580 *)
not L0x555555558050@uint64 L0x555555558050;
(* notq   0x40(%rbp)                               #! EA = L0x555555558080; PC = 0x555555555584 *)
not L0x555555558080@uint64 L0x555555558080;
(* notq   0x60(%rbp)                               #! EA = L0x5555555580a0; PC = 0x555555555588 *)
not L0x5555555580a0@uint64 L0x5555555580a0;
(* notq   0x88(%rbp)                               #! EA = L0x5555555580c8; PC = 0x55555555558c *)
not L0x5555555580c8@uint64 L0x5555555580c8;
(* notq   0xa0(%rbp)                               #! EA = L0x5555555580e0; PC = 0x555555555593 *)
not L0x5555555580e0@uint64 L0x5555555580e0;
(* mov    0xc8(%rsp),%rax                          #! EA = L0x7fffffffd9d8; Value = 0x845e71e517ffa400; PC = 0x55555555559a *)
mov rax L0x7fffffffd9d8;
(* sub    %fs:0x28,%rax                            #! PC = 0x5555555555a2 *)
(* sub %fs:0x28,%rax *)
nop;
(* #jne    0x5555555555b9 <KeccakF1600+171>        #! PC = 0x5555555555ab *)
#jne    0x5555555555b9 <KeccakF1600+171>        #! 0x5555555555ab = 0x5555555555ab;
(* add    $0xd0,%rsp                               #! PC = 0x5555555555ad *)
adds dc rsp rsp 0xd0@uint64;
(* pop    %rbx                                     #! EA = L0x7fffffffd9e0; Value = 0x0000555555558040; PC = 0x5555555555b4 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd9e8; Value = 0x0000000000000015; PC = 0x5555555555b5 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd9f0; Value = 0x00000000000000a8; PC = 0x5555555555b6 *)
(* pop r12 *)
nop;
(* #! <- SP = 0x7fffffffd9f8 *)
#! 0x7fffffffd9f8 = 0x7fffffffd9f8;
(* #retq                                           #! PC = 0x5555555555b8 *)
#retq                                           #! 0x5555555555b8 = 0x5555555555b8;


mov a00 L0x555555558040; mov a01 L0x555555558048; mov a02 L0x555555558050;
mov a03 L0x555555558058; mov a04 L0x555555558060; mov a10 L0x555555558068;
mov a11 L0x555555558070; mov a12 L0x555555558078; mov a13 L0x555555558080;
mov a14 L0x555555558088; mov a20 L0x555555558090; mov a21 L0x555555558098;
mov a22 L0x5555555580a0; mov a23 L0x5555555580a8; mov a24 L0x5555555580b0;
mov a30 L0x5555555580b8; mov a31 L0x5555555580c0; mov a32 L0x5555555580c8;
mov a33 L0x5555555580d0; mov a34 L0x5555555580d8; mov a40 L0x5555555580e0;
mov a41 L0x5555555580e8; mov a42 L0x5555555580f0; mov a43 L0x5555555580f8;
mov a44 L0x555555558100;

{
  true
  &&
  true
}

