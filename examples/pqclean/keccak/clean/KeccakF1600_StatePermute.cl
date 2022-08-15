proc main (* KeccakF1600_StatePermute *)
(uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04,
 uint64 a10, uint64 a11, uint64 a12, uint64 a13, uint64 a14,
 uint64 a20, uint64 a21, uint64 a22, uint64 a23, uint64 a24,
 uint64 a30, uint64 a31, uint64 a32, uint64 a33, uint64 a34,
 uint64 a40, uint64 a41, uint64 a42, uint64 a43, uint64 a44,
 uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
 uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
 uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
 uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
 uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44) =
{
  true
  &&
  true
}

mov L0x7fffffffa180 A00; mov L0x7fffffffa188 A01; mov L0x7fffffffa190 A02;
mov L0x7fffffffa198 A03; mov L0x7fffffffa1a0 A04; mov L0x7fffffffa1a8 A10;
mov L0x7fffffffa1b0 A11; mov L0x7fffffffa1b8 A12; mov L0x7fffffffa1c0 A13;
mov L0x7fffffffa1c8 A14; mov L0x7fffffffa1d0 A20; mov L0x7fffffffa1d8 A21;
mov L0x7fffffffa1e0 A22; mov L0x7fffffffa1e8 A23; mov L0x7fffffffa1f0 A24;
mov L0x7fffffffa1f8 A30; mov L0x7fffffffa200 A31; mov L0x7fffffffa208 A32;
mov L0x7fffffffa210 A33; mov L0x7fffffffa218 A34; mov L0x7fffffffa220 A40;
mov L0x7fffffffa228 A41; mov L0x7fffffffa230 A42; mov L0x7fffffffa238 A43;
mov L0x7fffffffa240 A44;

mov L0x5555555711a0 0x0000000000000001@uint64;
mov L0x5555555711a8 0x0000000000008082@uint64;
mov L0x5555555711b0 0x800000000000808a@uint64;
mov L0x5555555711b8 0x8000000080008000@uint64;
mov L0x5555555711c0 0x000000000000808b@uint64;
mov L0x5555555711c8 0x0000000080000001@uint64;
mov L0x5555555711d0 0x8000000080008081@uint64;
mov L0x5555555711d8 0x8000000000008009@uint64;
mov L0x5555555711e0 0x000000000000008a@uint64;
mov L0x5555555711e8 0x0000000000000088@uint64;
mov L0x5555555711f0 0x0000000080008009@uint64;
mov L0x5555555711f8 0x000000008000000a@uint64;
mov L0x555555571200 0x000000008000808b@uint64;
mov L0x555555571208 0x800000000000008b@uint64;
mov L0x555555571210 0x8000000000008089@uint64;
mov L0x555555571218 0x8000000000008003@uint64;
mov L0x555555571220 0x8000000000008002@uint64;
mov L0x555555571228 0x8000000000000080@uint64;
mov L0x555555571230 0x000000000000800a@uint64;
mov L0x555555571238 0x800000008000000a@uint64;
mov L0x555555571240 0x8000000080008081@uint64;
mov L0x555555571248 0x8000000000008080@uint64;
mov L0x555555571250 0x0000000080000001@uint64;
mov L0x555555571258 0x8000000080008008@uint64;


nondet rsp@uint64; nondet rdi@uint64; nondet rbx@uint64;

(* #! -> SP = 0x7fffffffa178 *)
#! 0x7fffffffa178 = 0x7fffffffa178;
(* push   %r15                                     #! EA = L0x7fffffffa170; PC = 0x555555561fa0 *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffa168; PC = 0x555555561fa2 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffa160; PC = 0x555555561fa4 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffa158; PC = 0x555555561fa6 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffa150; PC = 0x555555561fa8 *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffa148; PC = 0x555555561fa9 *)
(* push rbx *)
nop;
(* lea    0xf1ef(%rip),%rbx        # 0x5555555711a0 <KeccakF_RoundConstants>#! PC = 0x555555561faa *)
(* lea 0xf1ef(%rip), %rbx *)
nop;
(* sub    $0x70,%rsp                               #! PC = 0x555555561fb1 *)
subs dc rsp rsp 0x70@uint64;
(* mov    (%rdi),%rax                              #! EA = L0x7fffffffa180; Value = 0x40d72456b3604d93; PC = 0x555555561fb5 *)
mov rax L0x7fffffffa180;
(* mov    %rdi,0x60(%rsp)                          #! EA = L0x7fffffffa138; PC = 0x555555561fb8 *)
mov L0x7fffffffa138 rdi;
(* mov    %rax,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555561fbd *)
mov L0x7fffffffa070 rax;
(* mov    0x8(%rdi),%rax                           #! EA = L0x7fffffffa188; Value = 0x7caef27a227f0ab3; PC = 0x555555561fc2 *)
mov rax L0x7fffffffa188;
(* mov    %rax,-0x60(%rsp)                         #! EA = L0x7fffffffa078; PC = 0x555555561fc6 *)
mov L0x7fffffffa078 rax;
(* mov    0x10(%rdi),%rax                          #! EA = L0x7fffffffa190; Value = 0x505f3ce1044e8e67; PC = 0x555555561fcb *)
mov rax L0x7fffffffa190;
(* mov    %rax,-0x58(%rsp)                         #! EA = L0x7fffffffa080; PC = 0x555555561fcf *)
mov L0x7fffffffa080 rax;
(* mov    0x18(%rdi),%rax                          #! EA = L0x7fffffffa198; Value = 0xe277ea9ab7e2ad9e; PC = 0x555555561fd4 *)
mov rax L0x7fffffffa198;
(* mov    %rax,-0x50(%rsp)                         #! EA = L0x7fffffffa088; PC = 0x555555561fd8 *)
mov L0x7fffffffa088 rax;
(* mov    0x20(%rdi),%rax                          #! EA = L0x7fffffffa1a0; Value = 0x0000000000000006; PC = 0x555555561fdd *)
mov rax L0x7fffffffa1a0;
(* mov    %rax,-0x48(%rsp)                         #! EA = L0x7fffffffa090; PC = 0x555555561fe1 *)
mov L0x7fffffffa090 rax;
(* mov    0x28(%rdi),%rax                          #! EA = L0x7fffffffa1a8; Value = 0x0000000000000000; PC = 0x555555561fe6 *)
mov rax L0x7fffffffa1a8;
(* mov    %rax,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x555555561fea *)
mov L0x7fffffffa098 rax;
(* mov    0x30(%rdi),%rax                          #! EA = L0x7fffffffa1b0; Value = 0x0000000000000000; PC = 0x555555561fef *)
mov rax L0x7fffffffa1b0;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x555555561ff3 *)
mov L0x7fffffffa0a0 rax;
(* mov    0x38(%rdi),%rax                          #! EA = L0x7fffffffa1b8; Value = 0x0000000000000000; PC = 0x555555561ff8 *)
mov rax L0x7fffffffa1b8;
(* mov    %rax,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x555555561ffc *)
mov L0x7fffffffa0a8 rax;
(* mov    0x40(%rdi),%rax                          #! EA = L0x7fffffffa1c0; Value = 0x8000000000000000; PC = 0x555555562001 *)
mov rax L0x7fffffffa1c0;
(* mov    %rax,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x555555562005 *)
mov L0x7fffffffa0b0 rax;
(* mov    0x48(%rdi),%rax                          #! EA = L0x7fffffffa1c8; Value = 0x0000000000000000; PC = 0x55555556200a *)
mov rax L0x7fffffffa1c8;
(* mov    %rax,-0x20(%rsp)                         #! EA = L0x7fffffffa0b8; PC = 0x55555556200e *)
mov L0x7fffffffa0b8 rax;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffa1d0; Value = 0x0000000000000000; PC = 0x555555562013 *)
mov rax L0x7fffffffa1d0;
(* mov    %rax,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x555555562017 *)
mov L0x7fffffffa0c0 rax;
(* mov    0x58(%rdi),%rax                          #! EA = L0x7fffffffa1d8; Value = 0x0000000000000000; PC = 0x55555556201c *)
mov rax L0x7fffffffa1d8;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562020 *)
mov L0x7fffffffa0c8 rax;
(* mov    0x60(%rdi),%r15                          #! EA = L0x7fffffffa1e0; Value = 0x0000000000000000; PC = 0x555555562025 *)
mov r15 L0x7fffffffa1e0;
(* mov    0x68(%rdi),%rax                          #! EA = L0x7fffffffa1e8; Value = 0x0000000000000000; PC = 0x555555562029 *)
mov rax L0x7fffffffa1e8;
(* mov    0xa8(%rdi),%rcx                          #! EA = L0x7fffffffa228; Value = 0x0000000000000000; PC = 0x55555556202d *)
mov rcx L0x7fffffffa228;
(* mov    %rbx,-0x70(%rsp)                         #! EA = L0x7fffffffa068; PC = 0x555555562034 *)
mov L0x7fffffffa068 rbx;
(* mov    0x80(%rdi),%r13                          #! EA = L0x7fffffffa200; Value = 0x0000000000000000; PC = 0x555555562039 *)
mov r13 L0x7fffffffa200;
(* mov    0x90(%rdi),%r14                          #! EA = L0x7fffffffa210; Value = 0x0000000000000000; PC = 0x555555562040 *)
mov r14 L0x7fffffffa210;
(* mov    %rax,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562047 *)
mov L0x7fffffffa0d0 rax;
(* mov    0x70(%rdi),%rax                          #! EA = L0x7fffffffa1f0; Value = 0x0000000000000000; PC = 0x55555556204c *)
mov rax L0x7fffffffa1f0;
(* mov    %rcx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562050 *)
mov L0x7fffffffa0f8 rcx;
(* mov    0xb8(%rdi),%rcx                          #! EA = L0x7fffffffa238; Value = 0x0000000000000000; PC = 0x555555562055 *)
mov rcx L0x7fffffffa238;
(* mov    %r13,%r8                                 #! PC = 0x55555556205c *)
mov r8 r13;
(* mov    %r14,%r9                                 #! PC = 0x55555556205f *)
mov r9 r14;
(* mov    %rax,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x555555562062 *)
mov L0x7fffffffa0d8 rax;
(* mov    0x78(%rdi),%rax                          #! EA = L0x7fffffffa1f8; Value = 0x0000000000000000; PC = 0x555555562066 *)
mov rax L0x7fffffffa1f8;
(* mov    %rcx,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556206a *)
mov L0x7fffffffa100 rcx;
(* mov    0xb0(%rdi),%rsi                          #! EA = L0x7fffffffa230; Value = 0x0000000000000000; PC = 0x55555556206f *)
mov rsi L0x7fffffffa230;
(* mov    %rax,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562076 *)
mov L0x7fffffffa0e0 rax;
(* mov    0x88(%rdi),%rax                          #! EA = L0x7fffffffa208; Value = 0x0000000000000000; PC = 0x55555556207b *)
mov rax L0x7fffffffa208;
(* mov    0xc0(%rdi),%r12                          #! EA = L0x7fffffffa240; Value = 0x0000000000000000; PC = 0x555555562082 *)
mov r12 L0x7fffffffa240;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffa0e8; PC = 0x555555562089 *)
mov L0x7fffffffa0e8 rax;
(* mov    0x98(%rdi),%rax                          #! EA = L0x7fffffffa218; Value = 0x0000000000000000; PC = 0x55555556208e *)
mov rax L0x7fffffffa218;
(* mov    %rax,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x555555562095 *)
mov L0x7fffffffa0f0 rax;
(* mov    0xa0(%rdi),%rax                          #! EA = L0x7fffffffa220; Value = 0x0000000000000000; PC = 0x55555556209a *)
mov rax L0x7fffffffa220;
(* nopl   0x0(%rax)                                #! EA = L0x0; PC = 0x5555555620a1 *)
(* nopl L0x0 *)
nop;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x7caef27a227f0ab3; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x505f3ce1044e8e67; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0x0000000000000000; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x0000000000000000; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0x0000000000000000; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0x0000000000000000; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x0000000000000000; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x0000000000000006; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0x0000000000000000; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x0000000000000000; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0x0000000000000000; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x40d72456b3604d93; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x0000000000000000; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0xe277ea9ab7e2ad9e; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x0000000000000000; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0x8000000000000000; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x0000000000000000; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x0000000000000000; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0x0000000000000000; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x0000000000000000; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0x40d72456b3604d93; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711a0; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x5555555711a0; Value = 0x0000000000000001; PC = 0x55555556218b *)
mov r11 L0x5555555711a0;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x028821c008223040; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0xe277ea9ab7e2ad9e; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0x0000000000000000; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x0000000000000000; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x7caef27a227f0ab3; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x0000000000000000; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x0000000000000000; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0x0000000000000000; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x0000000000000000; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0x0000000000000000; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x0000000000000006; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0x0000000000000000; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x0000000000000000; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x0000000000000000; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x0000000000000000; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x505f3ce1044e8e67; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x0000000000000000; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0x8000000000000000; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x73b8e7bf5f520f62; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0xbb02e162ffbc68b2; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0xd9355e1751994a3d; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0xfb8f53d1a3242bcc; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x1e9f1155971ffd90; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x09ebf1124e82636c; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0xb20109ca09be4a7d; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x9fef2742e7f5e307; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x0d228973bf7a4be6; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0xa2197e1b39b21239; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0xcd260bcf3445750f; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xf1ac7bd40032aa6b; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0x5d60f21f9d5cc764; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0xf74d34e9c93b7aa9; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x939193fa1913a555; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x2c98ea4c8def3bfa; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0x2a301936e1c44cca; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x00005555555711a0; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x5555555711a8; Value = 0x0000000000008082; PC = 0x5555555624ec *)
mov r8 L0x5555555711a8;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x9fef2742e7f5e307; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0xfb8f53d1a3242bcc; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x0d228973bf7a4be6; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0xf74d34e9c93b7aa9; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x5d60f21f9d5cc764; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0xd9355e1751994a3d; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xf1ac7bd40032aa6b; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0x2a301936e1c44cca; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0xcd260bcf3445750f; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x2c98ea4c8def3bfa; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0xc628415babc1da01; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x09ebf1124e82636c; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x73b8e7bf5f520f62; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x1e9f1155971ffd90; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0xa2197e1b39b21239; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x939193fa1913a555; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0xb20109ca09be4a7d; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x59c8ae1c638ac746; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711b0; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x1c4309d9b38baae6; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x64d5294b838bd435; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0x8f0e52e3210d7e15; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x57055df967b23aed; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0x3df34f764e06f75d; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0x032d059ebf0e9fc1; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x316f3af162c74cb8; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x4814a5198097cda8; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0xc24e98e7c9ad14e5; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x1f52a17b813d68ed; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0xf0ba79e4a62caa2c; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x93b9b81ec85a55bc; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0xe2849f8d5187f45a; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0xf33c27d3b1076a6b; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x5d24f10350f04ffe; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0x15d7f7482e89de94; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0xa54ed39a1ae9b6cb; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x9c7f7a67a1c5f48a; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0x8f0e52e3210d7e15; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x942a126861d017e8; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0x93b9b81ec85a55bc; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711b0; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x5555555711b0; Value = 0x800000000000808a; PC = 0x55555556218b *)
mov r11 L0x5555555711b0;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x88010404b0438393; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0xf33c27d3b1076a6b; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0xc24e98e7c9ad14e5; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x5d24f10350f04ffe; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x1c4309d9b38baae6; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x57055df967b23aed; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x9c7f7a67a1c5f48a; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0xf0ba79e4a62caa2c; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xe2849f8d5187f45a; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0x3df34f764e06f75d; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x4814a5198097cda8; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0x032d059ebf0e9fc1; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x1f52a17b813d68ed; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0xa54ed39a1ae9b6cb; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x316f3af162c74cb8; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x64d5294b838bd435; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x942a126861d017e8; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0x15d7f7482e89de94; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x1df5809c8b9c29e5; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0xec769a17b392e172; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x35f26aba06b45c6c; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x611db4deec155efe; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x7f11627b7d0decf1; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x9f500c8e0eee72a9; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x0de1447daed69dd1; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x950ebd6bbfef8949; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x3e5712bea5a079dd; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x21a3ea401987036f; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0xb7574a3c1fd93830; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x13c05c26f26d3cdb; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xa8ec0dda14895b03; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0x43f95a3e5c565d17; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0xa1e1f2bfa02cad50; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0xb7235acf1f011ada; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xc602703b6e89fdfd; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x00005555555711b0; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x5555555711b8; Value = 0x8000000080008000; PC = 0x5555555624ec *)
mov r8 L0x5555555711b8;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x950ebd6bbfef8949; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x611db4deec155efe; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x3e5712bea5a079dd; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0x43f95a3e5c565d17; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xa8ec0dda14895b03; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x35f26aba06b45c6c; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x13c05c26f26d3cdb; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xc602703b6e89fdfd; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0xb7574a3c1fd93830; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0xb7235acf1f011ada; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0xc4793985616deee2; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x9f500c8e0eee72a9; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x1df5809c8b9c29e5; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x7f11627b7d0decf1; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x21a3ea401987036f; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0xa1e1f2bfa02cad50; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x0de1447daed69dd1; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x1d23e28e2758561c; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711c0; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0xaabf349caada8448; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x88c4ddb3aa46219b; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0x1d46b1db30cdcdfe; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x42ca1bb2e90cdac8; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xf34cc291c05fd83a; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0xa5c27348d53c65a3; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0xd2cd02690920a6e8; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0xaf5c89442ee9964c; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0x979a52b8b26b1930; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0xf2763a09072df5a0; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0xa09a1a12dd63c6bc; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x053327828483554c; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x888592b9b71915be; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x87081c64280b1b30; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x82710cd9b71575f1; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0xbfd3630fa2a15d80; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x86726aad5198894f; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x3c2085c352438f58; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0x1d46b1db30cdcdfe; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x78ee2028b86b8ac0; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0x053327828483554c; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711c0; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x5555555711c0; Value = 0x000000000000808b; PC = 0x55555556218b *)
mov r11 L0x5555555711c0;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x4010806204041046; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x87081c64280b1b30; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0x979a52b8b26b1930; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x82710cd9b71575f1; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0xaabf349caada8448; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x42ca1bb2e90cdac8; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x3c2085c352438f58; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0xa09a1a12dd63c6bc; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x888592b9b71915be; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xf34cc291c05fd83a; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0xaf5c89442ee9964c; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0xa5c27348d53c65a3; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0xf2763a09072df5a0; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x86726aad5198894f; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0xd2cd02690920a6e8; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x88c4ddb3aa46219b; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x78ee2028b86b8ac0; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0xbfd3630fa2a15d80; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x4b5645d4002710e6; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0xa6463dea900a5e4c; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x1f8f6985f9f2eeb8; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x3d43356662695314; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x3f48bec5570ba4b3; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x1ef0b968f288d789; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x0e32e8a3e5b44074; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x08e4b6971eefe0b3; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0xb59f19383e132234; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x5e3786d0c9d72e2f; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x74e3fa7603e380d9; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x4f95f1389f815bd6; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xfb44e3b6f218ea3a; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0xdacf3aab87e6b252; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0xe2dd9d5b16dbfaaf; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x712e59d4882050ba; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0x71f5c00ca0a507cd; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x00005555555711c0; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x5555555711c8; Value = 0x0000000080000001; PC = 0x5555555624ec *)
mov r8 L0x5555555711c8;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x08e4b6971eefe0b3; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x3d43356662695314; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0xb59f19383e132234; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0xdacf3aab87e6b252; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xfb44e3b6f218ea3a; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x1f8f6985f9f2eeb8; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x4f95f1389f815bd6; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0x71f5c00ca0a507cd; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x74e3fa7603e380d9; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x712e59d4882050ba; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0x8aa8446b0be1cd81; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x1ef0b968f288d789; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x4b5645d4002710e6; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x3f48bec5570ba4b3; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x5e3786d0c9d72e2f; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0xe2dd9d5b16dbfaaf; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x0e32e8a3e5b44074; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x1abd5ab6b77ee989; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711d0; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x0add523fb19b01a3; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x0979b72f69bf960b; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0x0fd7d97f86dc7f26; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x2dea46baacb29cc7; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xcfd128eb8c9dd64a; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0xbcead3437825e3e7; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0xc6a3430f285ffd42; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0xec5e1c348cfcf094; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0xf00a1f6e45f90d65; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x753a2d354529c62b; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0x07f1709cf7ff2d67; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0xec9bafdcfbbbc859; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0xd4efda2d43f79cfa; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x56cc05651a3bd121; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x619acbacd3507004; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0x63548a015a88fa50; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x9b0e69fd2951dcf9; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xe89e6bc2e61ac2ba; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0x0fd7d97f86dc7f26; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x951b75a8ee09e6e0; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0xec9bafdcfbbbc859; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711d0; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x5555555711d0; Value = 0x8000000080008081; PC = 0x55555556218b *)
mov r11 L0x5555555711d0;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x20d3302aa480d760; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x56cc05651a3bd121; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0xf00a1f6e45f90d65; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x619acbacd3507004; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x0add523fb19b01a3; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x2dea46baacb29cc7; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xe89e6bc2e61ac2ba; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0x07f1709cf7ff2d67; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xd4efda2d43f79cfa; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xcfd128eb8c9dd64a; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0xec5e1c348cfcf094; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0xbcead3437825e3e7; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x753a2d354529c62b; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x9b0e69fd2951dcf9; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0xc6a3430f285ffd42; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x0979b72f69bf960b; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x951b75a8ee09e6e0; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0x63548a015a88fa50; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0xb1c886c5315b98a6; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0x572acd47eeb83add; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0xcf208d95186e080d; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0xb81dd902ff3ccbdb; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x37d61a5585a31384; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0xc71a58c802fc698a; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x8532febeadc4d6b1; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0xd744c8af161f2f09; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x9f0c09cabed79229; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x732fdbbb3f7e79c5; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x99a59e186de45424; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xdf16678364d11ba2; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0x6543f93b78dba245; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0x7f9981c26badb782; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x6190977e4b7987a2; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0xaac5424ea3e58bdc; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0x92ff4d5256907e90; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x00005555555711d0; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x5555555711d8; Value = 0x8000000000008009; PC = 0x5555555624ec *)
mov r8 L0x5555555711d8;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0xd744c8af161f2f09; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0xb81dd902ff3ccbdb; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x9f0c09cabed79229; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0x7f9981c26badb782; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x6543f93b78dba245; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0xcf208d95186e080d; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xdf16678364d11ba2; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0x92ff4d5256907e90; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x99a59e186de45424; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0xaac5424ea3e58bdc; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0x04d63511d876b73b; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0xc71a58c802fc698a; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0xb1c886c5315b98a6; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x37d61a5585a31384; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x732fdbbb3f7e79c5; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x6190977e4b7987a2; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x8532febeadc4d6b1; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x35e57982dbea23c6; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711e0; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x67d9935f61ac8033; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x76328d55e6d85e7b; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xeb3a99e73d8803e2; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0xba454eacd1956905; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xdf1630b44403c7f5; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0xd19e1493cb13f29d; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0xe730e20bfa56c265; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x3a54f77dc19a6813; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0x58f6cb12b7c5a14b; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0xce83606b76d51d02; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0xc5d3f8c0323ba901; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0xe237c4fa0db6ce63; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x04b59e11b28736c6; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0xa4130b43097a35f1; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x5e7d2ac28459e467; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0x2c8f70a0fc4f995a; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0xaf1ee2e906e8f879; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x251e27b62ba0ce80; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xeb3a99e73d8803e2; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0xfaa0a49452c750cd; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0xe237c4fa0db6ce63; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711e0; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x5555555711e0; Value = 0x000000000000008a; PC = 0x55555556218b *)
mov r11 L0x5555555711e0;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x180004b803f20304; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0xa4130b43097a35f1; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0x58f6cb12b7c5a14b; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x5e7d2ac28459e467; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x67d9935f61ac8033; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0xba454eacd1956905; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x251e27b62ba0ce80; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0xc5d3f8c0323ba901; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x04b59e11b28736c6; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xdf1630b44403c7f5; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x3a54f77dc19a6813; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0xd19e1493cb13f29d; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0xce83606b76d51d02; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0xaf1ee2e906e8f879; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0xe730e20bfa56c265; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x76328d55e6d85e7b; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0xfaa0a49452c750cd; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0x2c8f70a0fc4f995a; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0xb58e70c8517c2565; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0x9c0d0624512d5aca; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0xe74ff346ec0ce431; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x1131b3ef2578807a; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0xf07777f0edf229db; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x8fd95852f6f0b7e7; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x6a0e07f7af6e8e65; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0xb27531f6c983dee9; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0xef37bde4eb25c2bc; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x06952321cee6b205; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0xf577709d428fca0a; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xfb25e75bea3245aa; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xdce21f3680d5b68a; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0x32dbf6e37c811e6d; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x0b2299415eebafd5; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x332daf6f4ab9cf70; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xf65159ff94047a0f; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x00005555555711e0; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x5555555711e8; Value = 0x0000000000000088; PC = 0x5555555624ec *)
mov r8 L0x5555555711e8;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0xb27531f6c983dee9; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x1131b3ef2578807a; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0xef37bde4eb25c2bc; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0x32dbf6e37c811e6d; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xdce21f3680d5b68a; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0xe74ff346ec0ce431; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xfb25e75bea3245aa; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xf65159ff94047a0f; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0xf577709d428fca0a; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x332daf6f4ab9cf70; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0x16cfbcb2c2ed18d2; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x8fd95852f6f0b7e7; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0xb58e70c8517c2565; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0xf07777f0edf229db; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x06952321cee6b205; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x0b2299415eebafd5; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x6a0e07f7af6e8e65; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x37910384d05ea0c2; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711f0; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x7200c03e7fbc2fb2; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0xab2924de95a4dad0; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0x3db2c31525427b29; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x7e23c549cb000c30; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0x6700c7bc6dadca91; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0xe444eee72c0329e2; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0xf9263c2f137e4690; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x46fd8da6f90a5a86; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0x9c944dbf9839b8fe; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0xdfa13a5c4ab560b2; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0x876f72d533563e72; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0xc9d0a1e399964bae; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x76aca05490542198; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x556c54de3e3f1e5d; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0xb4c94adfdc6e973d; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0xe10d55b01ae7fc79; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x58c9b67338ca8190; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x0cfa9704bb3dabd5; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0x3db2c31525427b29; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0xf7686758a7316c0a; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0xc9d0a1e399964bae; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x00005555555711f0; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x5555555711f0; Value = 0x0000000080008009; PC = 0x55555556218b *)
mov r11 L0x5555555711f0;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x4521004004184210; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x556c54de3e3f1e5d; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0x9c944dbf9839b8fe; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0xb4c94adfdc6e973d; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x7200c03e7fbc2fb2; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x7e23c549cb000c30; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x0cfa9704bb3dabd5; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0x876f72d533563e72; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x76aca05490542198; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0x6700c7bc6dadca91; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x46fd8da6f90a5a86; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0xe444eee72c0329e2; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0xdfa13a5c4ab560b2; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x58c9b67338ca8190; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0xf9263c2f137e4690; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0xab2924de95a4dad0; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0xf7686758a7316c0a; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0xe10d55b01ae7fc79; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x0dfe0c6d5d78a6e7; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0x0d2e15adaff78076; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x38d07abefbc59529; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x781a162638c6d122; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x53f69761d102eb2a; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0xf2e5967ef580d727; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x65ed407a34dd6231; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x28b7778e701df7c1; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0xf773ddc137735977; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x78277c5aff5e77d1; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x204347693a76d0b4; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x1c92a510864c9ecb; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0x694e2d9977b947e8; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0xe82479ddf2f86c39; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0xee96c1d79b4bb149; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x056fbde3b3c6f169; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0x177c83cbca7d8e14; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x00005555555711f0; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x5555555711f8; Value = 0x000000008000000a; PC = 0x5555555624ec *)
mov r8 L0x5555555711f8;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x28b7778e701df7c1; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x781a162638c6d122; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0xf773ddc137735977; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0xe82479ddf2f86c39; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x694e2d9977b947e8; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x38d07abefbc59529; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x1c92a510864c9ecb; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0x177c83cbca7d8e14; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x204347693a76d0b4; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x056fbde3b3c6f169; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0x4500a1f21566cab4; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0xf2e5967ef580d727; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x0dfe0c6d5d78a6e7; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x53f69761d102eb2a; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x78277c5aff5e77d1; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0xee96c1d79b4bb149; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x65ed407a34dd6231; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x6725d3918e7c4c13; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571200; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0xf67019e27dd23462; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x16a56cbba3a78751; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xa8e656d8519a175a; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x40cb2b3a64278e21; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xf6024580a481d947; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0x1eeae270b12f8913; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x994f437dc5851e38; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x435ece807c5dc031; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0x9879697c28df8fa9; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x333de6c35fddc195; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0xb682a11dbbc28c8e; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x5cbb42f7dc98e01c; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x443094d95f6ca540; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x62eef2f8267db4e8; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x1c28a5c133f495c3; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0xb5650f6c533bc3c3; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x1fa2584a465d3f3c; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x39bb8324c4350792; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xa8e656d8519a175a; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x00009427cd50e1e0; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0x5cbb42f7dc98e01c; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571200; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x555555571200; Value = 0x000000008000808b; PC = 0x55555556218b *)
mov r11 L0x555555571200;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x1258c00820401608; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x62eef2f8267db4e8; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0x9879697c28df8fa9; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x1c28a5c133f495c3; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0xf67019e27dd23462; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x40cb2b3a64278e21; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x39bb8324c4350792; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0xb682a11dbbc28c8e; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x443094d95f6ca540; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xf6024580a481d947; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x435ece807c5dc031; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0x1eeae270b12f8913; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x333de6c35fddc195; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x1fa2584a465d3f3c; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x994f437dc5851e38; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x16a56cbba3a78751; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x00009427cd50e1e0; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0xb5650f6c533bc3c3; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x87f87644c0bebdcd; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0xfaa1e4af38fcc598; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x25a730879bb8e1f7; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x0b6d65d77560e6ee; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0xf90370744eb6da40; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x9faf7168eee0fb65; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0xd358eb4a6bba32ef; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x520b138b1e813fab; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x383a7037ae25b322; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0xaea0a0771724d621; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x3f232e0fbdf13506; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x27fb42439003c38d; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0x74c1f42f4525aab1; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0x4ffc87a4b7441bad; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x81a9ff1b54461a5b; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0xe9143bf56eef9446; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xca0111b11689ebe0; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x0000555555571200; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x555555571208; Value = 0x800000000000008b; PC = 0x5555555624ec *)
mov r8 L0x555555571208;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x520b138b1e813fab; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x0b6d65d77560e6ee; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x383a7037ae25b322; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0x4ffc87a4b7441bad; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x74c1f42f4525aab1; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x25a730879bb8e1f7; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x27fb42439003c38d; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xca0111b11689ebe0; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x3f232e0fbdf13506; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0xe9143bf56eef9446; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0xe2187556507cb400; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x9faf7168eee0fb65; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x87f87644c0bebdcd; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0xf90370744eb6da40; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0xaea0a0771724d621; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x81a9ff1b54461a5b; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0xd358eb4a6bba32ef; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0xd69a5b112e07602d; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571210; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x4c0ba713d3de741a; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0xd6d0fa691fd35297; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xfd2f6923fd83242b; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x3aaf7c70ef9bc329; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0x8ed7cb6f93aaf794; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0x27baf36a681da7d4; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x1f5a21aaaddac658; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0xe068919767a7d8aa; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0xfe07e9e27db49130; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x5fa348c428d196f3; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0x893f6c8b22f8c052; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0xe468270a1e6e939f; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x30018982902d7e57; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x9da060589531215d; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x962fbe0b13d418be; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0xf865b75c2234866c; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x3539e221cef1767c; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xbf014154780b9ff1; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xfd2f6923fd83242b; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x4f0cd399b3fc33a8; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0xe468270a1e6e939f; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571210; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x555555571210; Value = 0x8000000000008089; PC = 0x55555556218b *)
mov r11 L0x555555571210;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x200c5388c001210c; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x9da060589531215d; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0xfe07e9e27db49130; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x962fbe0b13d418be; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x4c0ba713d3de741a; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x3aaf7c70ef9bc329; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xbf014154780b9ff1; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0x893f6c8b22f8c052; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x30018982902d7e57; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0x8ed7cb6f93aaf794; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0xe068919767a7d8aa; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0x27baf36a681da7d4; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x5fa348c428d196f3; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x3539e221cef1767c; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x1f5a21aaaddac658; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0xd6d0fa691fd35297; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x4f0cd399b3fc33a8; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0xf865b75c2234866c; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x34345331b2cf5177; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0x580b3fa941c4c9ab; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x57c1a05635ea5a50; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x7c30250adc949471; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0xfcbb363a9e962a0b; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x6b63fe02a6837ed8; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x359cdf98c61a33c9; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0xdb26c9266bfb506d; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x1ee691a559e4ee30; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x52d89b54d5fa37c2; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x8573be0ac5035d7a; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xe83d02d14d7eb9e9; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xfa681ee7e62c2a94; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0x8b3a597ad0eec45b; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x57553602b34cad85; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x45518cd34613e6c5; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xae8a20e3b70dc821; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x0000555555571210; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x555555571218; Value = 0x8000000000008003; PC = 0x5555555624ec *)
mov r8 L0x555555571218;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0xdb26c9266bfb506d; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x7c30250adc949471; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x1ee691a559e4ee30; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0x8b3a597ad0eec45b; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xfa681ee7e62c2a94; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x57c1a05635ea5a50; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xe83d02d14d7eb9e9; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xae8a20e3b70dc821; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x8573be0ac5035d7a; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x45518cd34613e6c5; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0xd7fb192b837718b2; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x6b63fe02a6837ed8; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x34345331b2cf5177; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0xfcbb363a9e962a0b; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x52d89b54d5fa37c2; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x57553602b34cad85; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x359cdf98c61a33c9; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0xb0251aa398381080; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571220; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0xfafe854d946c2191; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x2ff3e38d15484457; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xbefe7d3d90c878ae; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0xd56f1d0c9d2eaa43; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xba2c8b429fd8a431; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0x2bcae43d00ceddc3; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0xd41aa3b1ff7c5eed; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x58633f64683f9c2e; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0xb19597b0757297be; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x337b404d2efb74a4; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0xd9baed43887f35a9; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0xdb92827229734079; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0xa25a27edde218ad1; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x005842425e27d891; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x0c9d39c998916ae2; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0xafd4d175414fabf1; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x7a932ee1326f79a6; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x6914f60ea3d15ae0; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xbefe7d3d90c878ae; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x62d6645e243283ee; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0xdb92827229734079; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571220; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x555555571220; Value = 0x8000000000008002; PC = 0x55555556218b *)
mov r11 L0x555555571220;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x02a8541c04265121; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x005842425e27d891; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0xb19597b0757297be; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x0c9d39c998916ae2; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0xfafe854d946c2191; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0xd56f1d0c9d2eaa43; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x6914f60ea3d15ae0; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0xd9baed43887f35a9; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xa25a27edde218ad1; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xba2c8b429fd8a431; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x58633f64683f9c2e; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0x2bcae43d00ceddc3; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x337b404d2efb74a4; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x7a932ee1326f79a6; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0xd41aa3b1ff7c5eed; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x2ff3e38d15484457; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x62d6645e243283ee; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0xafd4d175414fabf1; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x9e1f654c0e342352; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0x7bef8175394cc0ea; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x1115a9a3fbd8ae9e; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0xac668174fc8f1abb; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0xd90e507a3e067216; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0xb2b4b56f9940f481; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x328ce95e4d08f133; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x721366406741f899; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x47d283bda548cbcf; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0xdf0fec03a8ff9dd7; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0xf82a1d02f4a0d6d8; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x2d8c96855a858e6a; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xa35db6d803eb2748; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0xdc9ebc64eb422eb2; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0xc9e1e33702b46a40; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x60761e745b3e0416; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xdf447e9a326ae947; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x0000555555571220; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x555555571228; Value = 0x8000000000000080; PC = 0x5555555624ec *)
mov r8 L0x555555571228;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x721366406741f899; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0xac668174fc8f1abb; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x47d283bda548cbcf; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0xdc9ebc64eb422eb2; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xa35db6d803eb2748; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x1115a9a3fbd8ae9e; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x2d8c96855a858e6a; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xdf447e9a326ae947; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0xf82a1d02f4a0d6d8; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x60761e745b3e0416; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0xf8402d358973c514; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0xb2b4b56f9940f481; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x9e1f654c0e342352; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0xd90e507a3e067216; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0xdf0fec03a8ff9dd7; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0xc9e1e33702b46a40; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x328ce95e4d08f133; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0xbd144937841f788f; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571230; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0x932d74a3fbb76540; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x1f23c0fd191e8611; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xdac56dc024d5abb2; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x056cdf39665150e4; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xfe4261e46303bbdd; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0x5cb9c07c7965fc09; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x3fe86e631c3bce2e; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0xd51d85e1a22617fa; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0xdfe589c3507a1234; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x725af788ed11691c; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0xad34c84f2a7371cc; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0xdf929b2aeb071206; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x65aa309e2eb65bdc; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x51b11155ea8a4d20; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0xc0a7f06a7f4e12c1; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0xf054e877c88c693e; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0xf6bce0231a629c15; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xe1665bdee2e7ae1a; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xdac56dc024d5abb2; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x46e1e2efa4347bc8; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0xdf929b2aeb071206; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571230; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x555555571230; Value = 0x000000000000800a; PC = 0x55555556218b *)
mov r11 L0x555555571230;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x3160cc08010d1100; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x51b11155ea8a4d20; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0xdfe589c3507a1234; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0xc0a7f06a7f4e12c1; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0x932d74a3fbb76540; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x056cdf39665150e4; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xe1665bdee2e7ae1a; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0xad34c84f2a7371cc; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x65aa309e2eb65bdc; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xfe4261e46303bbdd; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0xd51d85e1a22617fa; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0x5cb9c07c7965fc09; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x725af788ed11691c; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0xf6bce0231a629c15; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x3fe86e631c3bce2e; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x1f23c0fd191e8611; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x46e1e2efa4347bc8; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0xf054e877c88c693e; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0xaf73c39a8af30a3b; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0xe4f7cc45ceab7741; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0xc89523b30e326a7f; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x47b8a40ec0c64650; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x92eaaba7d87f69f5; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x5be4576e46406425; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0x39c9ee87013d4f28; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x1553196aff260562; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x3314fe50d12ca249; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0xbf8b82bb4d048e79; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x704601902be96272; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x8ede535bc84a8557; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xa6da2110aeec3b95; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0x96cbf998755de4c5; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0xbd162131b375b70a; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0xcbb88a1e800ab654; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xed6ae20262390409; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x0000555555571230; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x555555571238; Value = 0x800000008000000a; PC = 0x5555555624ec *)
mov r8 L0x555555571238;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x1553196aff260562; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x47b8a40ec0c64650; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x3314fe50d12ca249; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0x96cbf998755de4c5; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xa6da2110aeec3b95; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0xc89523b30e326a7f; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x8ede535bc84a8557; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xed6ae20262390409; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x704601902be96272; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0xcbb88a1e800ab654; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0x8454b03962e3483d; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x5be4576e46406425; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0xaf73c39a8af30a3b; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x92eaaba7d87f69f5; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0xbf8b82bb4d048e79; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0xbd162131b375b70a; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0x39c9ee87013d4f28; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x1bb6b2b54ebc9579; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571240; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0xd37d0e805efcce29; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0xa208492acc013614; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xbb866c5b3786b6d8; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0xc41842b5bcaf95a1; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xc4e7f94d2d7ec470; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0xad2a147c6fb9f3ed; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x7fe01f674961bd44; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x18e8970e77004294; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0x916e058982d78e75; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0x078fc83727e1778e; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0x3148cd0c20f1e36c; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x02152019b8f173ba; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0xd150e9a97fa70905; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0x055c9a6860515bb5; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0xd5317cf26c5ba0c2; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0x7531689f82937af6; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x6174823eafcdddd9; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x99d304a969ed0556; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xbb866c5b3786b6d8; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x119923bb100cef0b; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0x02152019b8f173ba; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571240; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x555555571240; Value = 0x8000000080008081; PC = 0x55555556218b *)
mov r11 L0x555555571240;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x0c808284c0e00239; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0x055c9a6860515bb5; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0x916e058982d78e75; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0xd5317cf26c5ba0c2; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0xd37d0e805efcce29; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0xc41842b5bcaf95a1; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x99d304a969ed0556; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0x3148cd0c20f1e36c; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xd150e9a97fa70905; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xc4e7f94d2d7ec470; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x18e8970e77004294; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0xad2a147c6fb9f3ed; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0x078fc83727e1778e; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x6174823eafcdddd9; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x7fe01f674961bd44; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0xa208492acc013614; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x119923bb100cef0b; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0x7531689f82937af6; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0x237a3d94dc4e8844; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0x803c1e39e4ddc877; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0xc07f1d520f1bbd04; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x72b5af81224cf84c; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x490cb7c8e8a29fe9; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x74fb3793965018d8; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0xcd0d0694c861be35; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x8cc68b929458dd3e; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0xf63a6629da25e6a7; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x8ede36982e0b6e67; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x2a80c63cc957e8e8; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0x8602cef6195a8f79; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0xe7b807ccfd9557c2; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0xdcd1ef62376528c1; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x9a51234905fbd5a2; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x47c9815890905c8c; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0xcd20652303129e51; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x0000555555571240; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x555555571248; Value = 0x8000000000008080; PC = 0x5555555624ec *)
mov r8 L0x555555571248;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x8cc68b929458dd3e; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x72b5af81224cf84c; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0xf63a6629da25e6a7; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0xdcd1ef62376528c1; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0xe7b807ccfd9557c2; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0xc07f1d520f1bbd04; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0x8602cef6195a8f79; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0xcd20652303129e51; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x2a80c63cc957e8e8; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x47c9815890905c8c; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0xb3c92b0fdb733532; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x74fb3793965018d8; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0x237a3d94dc4e8844; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x490cb7c8e8a29fe9; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x8ede36982e0b6e67; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x9a51234905fbd5a2; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0xcd0d0694c861be35; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x0173bee8b26685af; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571250; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffa078; Value = 0xbcb9b0d1fed3b314; PC = 0x5555555620a8 *)
mov rbp L0x7fffffffa078;
(* mov    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffa080; Value = 0x1c306e1dabd44dd4; PC = 0x5555555620ad *)
mov rcx L0x7fffffffa080;
(* xor    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffa0a0; Value = 0xd5cd18a17cd350b0; PC = 0x5555555620b2 *)
xor rbp@uint64 rbp L0x7fffffffa0a0;
(* xor    -0x30(%rsp),%rcx                         #! EA = L0x7fffffffa0a8; Value = 0x4dbf7672360bade1; PC = 0x5555555620b7 *)
xor rcx@uint64 rcx L0x7fffffffa0a8;
(* xor    -0x10(%rsp),%rbp                         #! EA = L0x7fffffffa0c8; Value = 0xc78eeb19d60e66ff; PC = 0x5555555620bc *)
xor rbp@uint64 rbp L0x7fffffffa0c8;
(* xor    %r15,%rcx                                #! PC = 0x5555555620c1 *)
xor rcx@uint64 rcx r15;
(* xor    0x10(%rsp),%rcx                          #! EA = L0x7fffffffa0e8; Value = 0xb6c4f6358df3b7e4; PC = 0x5555555620c4 *)
xor rcx@uint64 rcx L0x7fffffffa0e8;
(* xor    %r8,%rbp                                 #! PC = 0x5555555620c9 *)
xor rbp@uint64 rbp r8;
(* xor    0x20(%rsp),%rbp                          #! EA = L0x7fffffffa0f8; Value = 0x9f8e758868e5ae7d; PC = 0x5555555620cc *)
xor rbp@uint64 rbp L0x7fffffffa0f8;
(* mov    %rcx,%r10                                #! PC = 0x5555555620d1 *)
mov r10 rcx;
(* mov    -0x48(%rsp),%rcx                         #! EA = L0x7fffffffa090; Value = 0x0b559d24eabcfa39; PC = 0x5555555620d4 *)
mov rcx L0x7fffffffa090;
(* mov    %rbp,%rbx                                #! PC = 0x5555555620d9 *)
mov rbx rbp;
(* xor    -0x20(%rsp),%rcx                         #! EA = L0x7fffffffa0b8; Value = 0xe14cf37715fbdf23; PC = 0x5555555620dc *)
xor rcx@uint64 rcx L0x7fffffffa0b8;
(* xor    (%rsp),%rcx                              #! EA = L0x7fffffffa0d8; Value = 0xab7df89c4753830f; PC = 0x5555555620e1 *)
xor rcx@uint64 rcx L0x7fffffffa0d8;
(* xor    %rsi,%r10                                #! PC = 0x5555555620e5 *)
xor r10@uint64 r10 rsi;
(* xor    0x18(%rsp),%rcx                          #! EA = L0x7fffffffa0f0; Value = 0x9e29f9c457e36838; PC = 0x5555555620e8 *)
xor rcx@uint64 rcx L0x7fffffffa0f0;
(* rol    %rbx                                     #! PC = 0x5555555620ed *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x3c6a101cc0e199e7; PC = 0x5555555620f0 *)
mov r11 L0x7fffffffa070;
(* mov    %r10,%rdx                                #! PC = 0x5555555620f5 *)
mov rdx r10;
(* xor    %r12,%rcx                                #! PC = 0x5555555620f8 *)
xor rcx@uint64 rcx r12;
(* xor    -0x40(%rsp),%r11                         #! EA = L0x7fffffffa098; Value = 0x3e750238f4c484c1; PC = 0x5555555620fb *)
xor r11@uint64 r11 L0x7fffffffa098;
(* mov    -0x50(%rsp),%rdi                         #! EA = L0x7fffffffa088; Value = 0xf400ded9e2c96b69; PC = 0x555555562100 *)
mov rdi L0x7fffffffa088;
(* rol    %rdx                                     #! PC = 0x555555562105 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %rcx,%rbx                                #! PC = 0x555555562108 *)
xor rbx@uint64 rbx rcx;
(* xor    -0x18(%rsp),%r11                         #! EA = L0x7fffffffa0c0; Value = 0x8913336c2a6890e2; PC = 0x55555556210b *)
xor r11@uint64 r11 L0x7fffffffa0c0;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffa0b0; Value = 0x4a55e9e533617e74; PC = 0x555555562110 *)
xor rdi@uint64 rdi L0x7fffffffa0b0;
(* rol    %rcx                                     #! PC = 0x555555562115 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    0x8(%rsp),%r11                           #! EA = L0x7fffffffa0e0; Value = 0x313bbbccaf69a773; PC = 0x555555562118 *)
xor r11@uint64 r11 L0x7fffffffa0e0;
(* xor    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xcbc41a8d6d755b81; PC = 0x55555556211d *)
xor rdi@uint64 rdi L0x7fffffffa0d0;
(* xor    %r10,%rcx                                #! PC = 0x555555562122 *)
xor rcx@uint64 rcx r10;
(* xor    %rax,%r11                                #! PC = 0x555555562125 *)
xor r11@uint64 r11 rax;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffa0a0; Value = 0xd5cd18a17cd350b0; PC = 0x555555562128 *)
mov r10 L0x7fffffffa0a0;
(* xor    %r9,%rdi                                 #! PC = 0x55555556212d *)
xor rdi@uint64 rdi r9;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffa100; Value = 0x7527576d33749b1e; PC = 0x555555562130 *)
xor rdi@uint64 rdi L0x7fffffffa100;
(* xor    %r11,%rdx                                #! PC = 0x555555562135 *)
xor rdx@uint64 rdx r11;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffa070; Value = 0x3c6a101cc0e199e7; PC = 0x555555562138 *)
mov r14 L0x7fffffffa070;
(* mov    %rdi,%r13                                #! PC = 0x55555556213d *)
mov r13 rdi;
(* rol    %r11                                     #! PC = 0x555555562140 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    %rdi                                     #! PC = 0x555555562143 *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rdx,%r10                                #! PC = 0x555555562146 *)
xor r10@uint64 r10 rdx;
(* xor    %rdi,%rbp                                #! PC = 0x555555562149 *)
xor rbp@uint64 rbp rdi;
(* mov    %r11,%rdi                                #! PC = 0x55555556214c *)
mov rdi r11;
(* xor    %rbx,%r14                                #! PC = 0x55555556214f *)
xor r14@uint64 r14 rbx;
(* xor    %r13,%rdi                                #! PC = 0x555555562152 *)
xor rdi@uint64 rdi r13;
(* ror    $0x14,%r10                               #! PC = 0x555555562155 *)
split r10_h r10_l r10 0x14; shl r10_s r10_l (64-0x14)@uint64; add r10 r10_s r10_h;
(* xor    %rbp,%r15                                #! PC = 0x555555562159 *)
xor r15@uint64 r15 rbp;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571250; PC = 0x55555556215c *)
mov r13 L0x7fffffffa068;
(* mov    %r10,%r11                                #! PC = 0x555555562161 *)
mov r11 r10;
(* ror    $0x15,%r15                               #! PC = 0x555555562164 *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* xor    %rcx,%r9                                 #! PC = 0x555555562168 *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x55555556216b *)
xor r12@uint64 r12 rdi;
(* not    %r11                                     #! PC = 0x55555556216e *)
not r11@uint64 r11;
(* rol    $0x15,%r9                                #! PC = 0x555555562171 *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %rdx,%r8                                 #! PC = 0x555555562175 *)
xor r8@uint64 r8 rdx;
(* xor    %rbp,%rsi                                #! PC = 0x555555562178 *)
xor rsi@uint64 rsi rbp;
(* rol    $0xe,%r12                                #! PC = 0x55555556217b *)
split r12_h r12_l r12 (64-0xe); shl r12_s r12_l 0xe@uint64; add r12 r12_s r12_h;
(* and    %r15,%r11                                #! PC = 0x55555556217f *)
and r11@uint64 r11 r15;
(* ror    $0x13,%r8                                #! PC = 0x555555562182 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x555555562186 *)
mov L0x7fffffffa070 r11;
(* mov    0x0(%r13),%r11                           #! EA = L0x555555571250; Value = 0x0000000080000001; PC = 0x55555556218b *)
mov r11 L0x555555571250;
(* ror    $0x3,%rsi                                #! PC = 0x55555556218f *)
split rsi_h rsi_l rsi 0x3; shl rsi_s rsi_l (64-0x3)@uint64; add rsi rsi_s rsi_h;
(* xor    %r14,%r11                                #! PC = 0x555555562193 *)
xor r11@uint64 r11 r14;
(* mov    %r11,%r13                                #! PC = 0x555555562196 *)
mov r13 r11;
(* mov    -0x68(%rsp),%r11                         #! EA = L0x7fffffffa070; Value = 0x95958004c8851022; PC = 0x555555562199 *)
mov r11 L0x7fffffffa070;
(* xor    %r13,%r11                                #! PC = 0x55555556219e *)
xor r11@uint64 r11 r13;
(* mov    %r9,%r13                                 #! PC = 0x5555555621a1 *)
mov r13 r9;
(* mov    %r11,-0x68(%rsp)                         #! EA = L0x7fffffffa070; PC = 0x5555555621a4 *)
mov L0x7fffffffa070 r11;
(* not    %r13                                     #! PC = 0x5555555621a9 *)
not r13@uint64 r13;
(* mov    %r15,%r11                                #! PC = 0x5555555621ac *)
mov r11 r15;
(* and    %r12,%r13                                #! PC = 0x5555555621af *)
and r13@uint64 r13 r12;
(* not    %r11                                     #! PC = 0x5555555621b2 *)
not r11@uint64 r11;
(* xor    %r15,%r13                                #! PC = 0x5555555621b5 *)
xor r13@uint64 r13 r15;
(* and    %r9,%r11                                 #! PC = 0x5555555621b8 *)
and r11@uint64 r11 r9;
(* mov    %r12,%r15                                #! PC = 0x5555555621bb *)
mov r15 r12;
(* xor    %r10,%r11                                #! PC = 0x5555555621be *)
xor r11@uint64 r11 r10;
(* not    %r15                                     #! PC = 0x5555555621c1 *)
not r15@uint64 r15;
(* mov    %r13,0x38(%rsp)                          #! EA = L0x7fffffffa110; PC = 0x5555555621c4 *)
mov L0x7fffffffa110 r13;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffa108; PC = 0x5555555621c9 *)
mov L0x7fffffffa108 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555621ce *)
mov r11 r15;
(* and    %r14,%r11                                #! PC = 0x5555555621d1 *)
and r11@uint64 r11 r14;
(* not    %r14                                     #! PC = 0x5555555621d4 *)
not r14@uint64 r14;
(* and    %r10,%r14                                #! PC = 0x5555555621d7 *)
and r14@uint64 r14 r10;
(* mov    %r11,%r15                                #! PC = 0x5555555621da *)
mov r15 r11;
(* mov    %r14,%r10                                #! PC = 0x5555555621dd *)
mov r10 r14;
(* xor    %r9,%r15                                 #! PC = 0x5555555621e0 *)
xor r15@uint64 r15 r9;
(* mov    -0x50(%rsp),%r9                          #! EA = L0x7fffffffa088; Value = 0xf400ded9e2c96b69; PC = 0x5555555621e3 *)
mov r9 L0x7fffffffa088;
(* xor    %r12,%r10                                #! PC = 0x5555555621e8 *)
xor r10@uint64 r10 r12;
(* mov    -0x20(%rsp),%r12                         #! EA = L0x7fffffffa0b8; Value = 0xe14cf37715fbdf23; PC = 0x5555555621eb *)
mov r12 L0x7fffffffa0b8;
(* mov    %r15,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555621f0 *)
mov L0x7fffffffa0a0 r15;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffa118; PC = 0x5555555621f5 *)
mov L0x7fffffffa118 r10;
(* xor    %rcx,%r9                                 #! PC = 0x5555555621fa *)
xor r9@uint64 r9 rcx;
(* xor    %rdi,%r12                                #! PC = 0x5555555621fd *)
xor r12@uint64 r12 rdi;
(* rol    $0x1c,%r9                                #! PC = 0x555555562200 *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %r12,%r11                                #! PC = 0x555555562204 *)
mov r11 r12;
(* mov    -0x18(%rsp),%r12                         #! EA = L0x7fffffffa0c0; Value = 0x8913336c2a6890e2; PC = 0x555555562207 *)
mov r12 L0x7fffffffa0c0;
(* mov    -0x60(%rsp),%r14                         #! EA = L0x7fffffffa078; Value = 0xbcb9b0d1fed3b314; PC = 0x55555556220c *)
mov r14 L0x7fffffffa078;
(* rol    $0x14,%r11                               #! PC = 0x555555562211 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* xor    %rbx,%r12                                #! PC = 0x555555562215 *)
xor r12@uint64 r12 rbx;
(* mov    %r12,%r10                                #! PC = 0x555555562218 *)
mov r10 r12;
(* mov    %r11,%r12                                #! PC = 0x55555556221b *)
mov r12 r11;
(* rol    $0x3,%r10                                #! PC = 0x55555556221e *)
split r10_h r10_l r10 (64-0x3); shl r10_s r10_l 0x3@uint64; add r10 r10_s r10_h;
(* not    %r12                                     #! PC = 0x555555562222 *)
not r12@uint64 r12;
(* and    %r10,%r12                                #! PC = 0x555555562225 *)
and r12@uint64 r12 r10;
(* mov    %r10,%r15                                #! PC = 0x555555562228 *)
mov r15 r10;
(* xor    %r9,%r12                                 #! PC = 0x55555556222b *)
xor r12@uint64 r12 r9;
(* not    %r15                                     #! PC = 0x55555556222e *)
not r15@uint64 r15;
(* mov    %r12,0x48(%rsp)                          #! EA = L0x7fffffffa120; PC = 0x555555562231 *)
mov L0x7fffffffa120 r12;
(* mov    %r8,%r12                                 #! PC = 0x555555562236 *)
mov r12 r8;
(* and    %r8,%r15                                 #! PC = 0x555555562239 *)
and r15@uint64 r15 r8;
(* not    %r12                                     #! PC = 0x55555556223c *)
not r12@uint64 r12;
(* xor    %r11,%r15                                #! PC = 0x55555556223f *)
xor r15@uint64 r15 r11;
(* and    %rsi,%r12                                #! PC = 0x555555562242 *)
and r12@uint64 r12 rsi;
(* xor    %rdx,%r14                                #! PC = 0x555555562245 *)
xor r14@uint64 r14 rdx;
(* xor    %rbx,%rax                                #! PC = 0x555555562248 *)
xor rax@uint64 rax rbx;
(* rol    %r14                                     #! PC = 0x55555556224b *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* xor    %r10,%r12                                #! PC = 0x55555556224e *)
xor r12@uint64 r12 r10;
(* mov    %rsi,%r10                                #! PC = 0x555555562251 *)
mov r10 rsi;
(* rol    $0x12,%rax                               #! PC = 0x555555562254 *)
split rax_h rax_l rax (64-0x12); shl rax_s rax_l 0x12@uint64; add rax rax_s rax_h;
(* not    %r10                                     #! PC = 0x555555562258 *)
not r10@uint64 r10;
(* mov    %r12,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556225b *)
mov L0x7fffffffa0c0 r12;
(* mov    %r10,%r12                                #! PC = 0x555555562260 *)
mov r12 r10;
(* and    %r9,%r12                                 #! PC = 0x555555562263 *)
and r12@uint64 r12 r9;
(* not    %r9                                      #! PC = 0x555555562266 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x555555562269 *)
and r9@uint64 r9 r11;
(* mov    %r12,%r10                                #! PC = 0x55555556226c *)
mov r10 r12;
(* xor    %r8,%r10                                 #! PC = 0x55555556226f *)
xor r10@uint64 r10 r8;
(* xor    %rsi,%r9                                 #! PC = 0x555555562272 *)
xor r9@uint64 r9 rsi;
(* mov    -0x30(%rsp),%r8                          #! EA = L0x7fffffffa0a8; Value = 0x4dbf7672360bade1; PC = 0x555555562275 *)
mov r8 L0x7fffffffa0a8;
(* mov    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xcbc41a8d6d755b81; PC = 0x55555556227a *)
mov rsi L0x7fffffffa0d0;
(* mov    %r9,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x55555556227f *)
mov L0x7fffffffa0b8 r9;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffa0f0; Value = 0x9e29f9c457e36838; PC = 0x555555562284 *)
mov r9 L0x7fffffffa0f0;
(* xor    %rbp,%r8                                 #! PC = 0x555555562289 *)
xor r8@uint64 r8 rbp;
(* xor    %rcx,%rsi                                #! PC = 0x55555556228c *)
xor rsi@uint64 rsi rcx;
(* mov    %r10,0x50(%rsp)                          #! EA = L0x7fffffffa128; PC = 0x55555556228f *)
mov L0x7fffffffa128 r10;
(* rol    $0x6,%r8                                 #! PC = 0x555555562294 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* rol    $0x19,%rsi                               #! PC = 0x555555562298 *)
split rsi_h rsi_l rsi (64-0x19); shl rsi_s rsi_l 0x19@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r9                                 #! PC = 0x55555556229c *)
xor r9@uint64 r9 rdi;
(* mov    %rsi,%r11                                #! PC = 0x55555556229f *)
mov r11 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555622a2 *)
mov rsi r8;
(* rol    $0x8,%r9                                 #! PC = 0x5555555622a5 *)
split r9_h r9_l r9 (64-0x8); shl r9_s r9_l 0x8@uint64; add r9 r9_s r9_h;
(* not    %rsi                                     #! PC = 0x5555555622a9 *)
not rsi@uint64 rsi;
(* mov    %r9,%r10                                 #! PC = 0x5555555622ac *)
mov r10 r9;
(* and    %r11,%rsi                                #! PC = 0x5555555622af *)
and rsi@uint64 rsi r11;
(* not    %r10                                     #! PC = 0x5555555622b2 *)
not r10@uint64 r10;
(* xor    %r14,%rsi                                #! PC = 0x5555555622b5 *)
xor rsi@uint64 rsi r14;
(* and    %rax,%r10                                #! PC = 0x5555555622b8 *)
and r10@uint64 r10 rax;
(* mov    %rsi,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555622bb *)
mov L0x7fffffffa0a8 rsi;
(* mov    %r11,%rsi                                #! PC = 0x5555555622c0 *)
mov rsi r11;
(* xor    %r11,%r10                                #! PC = 0x5555555622c3 *)
xor r10@uint64 r10 r11;
(* not    %rsi                                     #! PC = 0x5555555622c6 *)
not rsi@uint64 rsi;
(* and    %r9,%rsi                                 #! PC = 0x5555555622c9 *)
and rsi@uint64 rsi r9;
(* xor    %r8,%rsi                                 #! PC = 0x5555555622cc *)
xor rsi@uint64 rsi r8;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x5555555622cf *)
mov L0x7fffffffa0f0 rsi;
(* mov    %rax,%rsi                                #! PC = 0x5555555622d4 *)
mov rsi rax;
(* not    %rsi                                     #! PC = 0x5555555622d7 *)
not rsi@uint64 rsi;
(* and    %r14,%rsi                                #! PC = 0x5555555622da *)
and rsi@uint64 rsi r14;
(* not    %r14                                     #! PC = 0x5555555622dd *)
not r14@uint64 r14;
(* and    %r8,%r14                                 #! PC = 0x5555555622e0 *)
and r14@uint64 r14 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x3e750238f4c484c1; PC = 0x5555555622e3 *)
mov r8 L0x7fffffffa098;
(* xor    %r9,%rsi                                 #! PC = 0x5555555622e8 *)
xor rsi@uint64 rsi r9;
(* mov    %r14,%r9                                 #! PC = 0x5555555622eb *)
mov r9 r14;
(* mov    -0x10(%rsp),%r14                         #! EA = L0x7fffffffa0c8; Value = 0xc78eeb19d60e66ff; PC = 0x5555555622ee *)
mov r14 L0x7fffffffa0c8;
(* mov    %rsi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x5555555622f3 *)
mov L0x7fffffffa0d0 rsi;
(* xor    %rax,%r9                                 #! PC = 0x5555555622f8 *)
xor r9@uint64 r9 rax;
(* xor    %rbx,%r8                                 #! PC = 0x5555555622fb *)
xor r8@uint64 r8 rbx;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffa090; Value = 0x0b559d24eabcfa39; PC = 0x5555555622fe *)
mov rax L0x7fffffffa090;
(* mov    %r8,%r13                                 #! PC = 0x555555562303 *)
mov r13 r8;
(* mov    0x10(%rsp),%r8                           #! EA = L0x7fffffffa0e8; Value = 0xb6c4f6358df3b7e4; PC = 0x555555562306 *)
mov r8 L0x7fffffffa0e8;
(* xor    %rdx,%r14                                #! PC = 0x55555556230b *)
xor r14@uint64 r14 rdx;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffa130; PC = 0x55555556230e *)
mov L0x7fffffffa130 r9;
(* ror    $0x1c,%r13                               #! PC = 0x555555562313 *)
split r13_h r13_l r13 0x1c; shl r13_s r13_l (64-0x1c)@uint64; add r13 r13_s r13_h;
(* xor    %rdi,%rax                                #! PC = 0x555555562317 *)
xor rax@uint64 rax rdi;
(* rol    $0xa,%r14                                #! PC = 0x55555556231a *)
split r14_h r14_l r14 (64-0xa); shl r14_s r14_l 0xa@uint64; add r14 r14_s r14_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555556231e *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* xor    %rbp,%r8                                 #! PC = 0x555555562322 *)
xor r8@uint64 r8 rbp;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffa0d8; Value = 0xab7df89c4753830f; PC = 0x555555562325 *)
xor rdi@uint64 rdi L0x7fffffffa0d8;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffa0e0; Value = 0x313bbbccaf69a773; PC = 0x555555562329 *)
xor rbx@uint64 rbx L0x7fffffffa0e0;
(* rol    $0xf,%r8                                 #! PC = 0x55555556232e *)
split r8_h r8_l r8 (64-0xf); shl r8_s r8_l 0xf@uint64; add r8 r8_s r8_h;
(* ror    $0x19,%rdi                               #! PC = 0x555555562332 *)
split rdi_h rdi_l rdi 0x19; shl rdi_s rdi_l (64-0x19)@uint64; add rdi rdi_s rdi_h;
(* xor    0x20(%rsp),%rdx                          #! EA = L0x7fffffffa0f8; Value = 0x9f8e758868e5ae7d; PC = 0x555555562336 *)
xor rdx@uint64 rdx L0x7fffffffa0f8;
(* xor    -0x58(%rsp),%rbp                         #! EA = L0x7fffffffa080; Value = 0x1c306e1dabd44dd4; PC = 0x55555556233b *)
xor rbp@uint64 rbp L0x7fffffffa080;
(* ror    $0x17,%rbx                               #! PC = 0x555555562340 *)
split rbx_h rbx_l rbx 0x17; shl rbx_s rbx_l (64-0x17)@uint64; add rbx rbx_s rbx_h;
(* mov    %r8,%r11                                 #! PC = 0x555555562344 *)
mov r11 r8;
(* mov    0x28(%rsp),%r8                           #! EA = L0x7fffffffa100; Value = 0x7527576d33749b1e; PC = 0x555555562347 *)
mov r8 L0x7fffffffa100;
(* rol    $0x2,%rdx                                #! PC = 0x55555556234c *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* mov    %r11,%r9                                 #! PC = 0x555555562350 *)
mov r9 r11;
(* ror    $0x2,%rbp                                #! PC = 0x555555562353 *)
split rbp_h rbp_l rbp 0x2; shl rbp_s rbp_l (64-0x2)@uint64; add rbp rbp_s rbp_h;
(* xor    %rcx,%r8                                 #! PC = 0x555555562357 *)
xor r8@uint64 r8 rcx;
(* not    %r9                                      #! PC = 0x55555556235a *)
not r9@uint64 r9;
(* xor    -0x28(%rsp),%rcx                         #! EA = L0x7fffffffa0b0; Value = 0x4a55e9e533617e74; PC = 0x55555556235d *)
xor rcx@uint64 rcx L0x7fffffffa0b0;
(* mov    %r8,%rsi                                 #! PC = 0x555555562362 *)
mov rsi r8;
(* mov    %r13,%r8                                 #! PC = 0x555555562365 *)
mov r8 r13;
(* ror    $0x8,%rsi                                #! PC = 0x555555562368 *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* not    %r8                                      #! PC = 0x55555556236c *)
not r8@uint64 r8;
(* and    %rsi,%r9                                 #! PC = 0x55555556236f *)
and r9@uint64 r9 rsi;
(* mov    %r8,%r12                                 #! PC = 0x555555562372 *)
mov r12 r8;
(* and    %r14,%r12                                #! PC = 0x555555562375 *)
and r12@uint64 r12 r14;
(* xor    %r14,%r9                                 #! PC = 0x555555562378 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556237b *)
mov L0x7fffffffa0e8 r9;
(* mov    %r12,%r8                                 #! PC = 0x555555562380 *)
mov r8 r12;
(* mov    %rsi,%r9                                 #! PC = 0x555555562383 *)
mov r9 rsi;
(* xor    %rax,%r8                                 #! PC = 0x555555562386 *)
xor r8@uint64 r8 rax;
(* not    %r9                                      #! PC = 0x555555562389 *)
not r9@uint64 r9;
(* mov    %r8,0x28(%rsp)                           #! EA = L0x7fffffffa100; PC = 0x55555556238c *)
mov L0x7fffffffa100 r8;
(* and    %rax,%r9                                 #! PC = 0x555555562391 *)
and r9@uint64 r9 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562394 *)
mov r8 r14;
(* not    %rax                                     #! PC = 0x555555562397 *)
not rax@uint64 rax;
(* mov    %rdi,%r14                                #! PC = 0x55555556239a *)
mov r14 rdi;
(* and    %r13,%rax                                #! PC = 0x55555556239d *)
and rax@uint64 rax r13;
(* not    %r8                                      #! PC = 0x5555555623a0 *)
not r8@uint64 r8;
(* xor    %r11,%r9                                 #! PC = 0x5555555623a3 *)
xor r9@uint64 r9 r11;
(* not    %r14                                     #! PC = 0x5555555623a6 *)
not r14@uint64 r14;
(* xor    %rsi,%rax                                #! PC = 0x5555555623a9 *)
xor rax@uint64 rax rsi;
(* and    %r11,%r8                                 #! PC = 0x5555555623ac *)
and r8@uint64 r8 r11;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffa120; Value = 0xd6e7f67189c5efe2; PC = 0x5555555623af *)
mov r11 L0x7fffffffa120;
(* mov    %r14,%r12                                #! PC = 0x5555555623b4 *)
mov r12 r14;
(* mov    %rax,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x5555555623b7 *)
mov L0x7fffffffa0c8 rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555623bc *)
mov rax rcx;
(* xor    %r13,%r8                                 #! PC = 0x5555555623bf *)
xor r8@uint64 r8 r13;
(* and    %rbx,%r12                                #! PC = 0x5555555623c2 *)
and r12@uint64 r12 rbx;
(* ror    $0x9,%rax                                #! PC = 0x5555555623c5 *)
split rax_h rax_l rax 0x9; shl rax_s rax_l (64-0x9)@uint64; add rax rax_s rax_h;
(* mov    %r8,-0x40(%rsp)                          #! EA = L0x7fffffffa098; PC = 0x5555555623c9 *)
mov L0x7fffffffa098 r8;
(* mov    -0x68(%rsp),%r8                          #! EA = L0x7fffffffa070; Value = 0xaaa0e924724efdb2; PC = 0x5555555623ce *)
mov r8 L0x7fffffffa070;
(* mov    %r12,%r14                                #! PC = 0x5555555623d3 *)
mov r14 r12;
(* mov    %rax,%rsi                                #! PC = 0x5555555623d6 *)
mov rsi rax;
(* mov    %rax,%rcx                                #! PC = 0x5555555623d9 *)
mov rcx rax;
(* xor    %rax,%r14                                #! PC = 0x5555555623dc *)
xor r14@uint64 r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555623df *)
mov rax rbx;
(* not    %rcx                                     #! PC = 0x5555555623e2 *)
not rcx@uint64 rcx;
(* not    %rax                                     #! PC = 0x5555555623e5 *)
not rax@uint64 rax;
(* and    %rdi,%rcx                                #! PC = 0x5555555623e8 *)
and rcx@uint64 rcx rdi;
(* and    %rdx,%rax                                #! PC = 0x5555555623eb *)
and rax@uint64 rax rdx;
(* xor    %rbp,%rcx                                #! PC = 0x5555555623ee *)
xor rcx@uint64 rcx rbp;
(* xor    %rax,%rdi                                #! PC = 0x5555555623f1 *)
xor rdi@uint64 rdi rax;
(* mov    %rdx,%rax                                #! PC = 0x5555555623f4 *)
mov rax rdx;
(* not    %rax                                     #! PC = 0x5555555623f7 *)
not rax@uint64 rax;
(* and    %rbp,%rax                                #! PC = 0x5555555623fa *)
and rax@uint64 rax rbp;
(* not    %rbp                                     #! PC = 0x5555555623fd *)
not rbp@uint64 rbp;
(* xor    %rbx,%rax                                #! PC = 0x555555562400 *)
xor rax@uint64 rax rbx;
(* and    %rsi,%rbp                                #! PC = 0x555555562403 *)
and rbp@uint64 rbp rsi;
(* mov    0x30(%rsp),%rbx                          #! EA = L0x7fffffffa108; Value = 0x2a407b1a353ae6c9; PC = 0x555555562406 *)
mov rbx L0x7fffffffa108;
(* xor    %r8,%r11                                 #! PC = 0x55555556240b *)
xor r11@uint64 r11 r8;
(* xor    %rdx,%rbp                                #! PC = 0x55555556240e *)
xor rbp@uint64 rbp rdx;
(* xor    -0x30(%rsp),%r11                         #! EA = L0x7fffffffa0a8; Value = 0x8826b6399fc4bfd7; PC = 0x555555562411 *)
xor r11@uint64 r11 L0x7fffffffa0a8;
(* xor    0x28(%rsp),%r11                          #! EA = L0x7fffffffa100; Value = 0x42e2b8952a982c0d; PC = 0x555555562416 *)
xor r11@uint64 r11 L0x7fffffffa100;
(* mov    %rax,%r12                                #! PC = 0x55555556241b *)
mov r12 rax;
(* mov    0x18(%rsp),%r13                          #! EA = L0x7fffffffa0f0; Value = 0x0f70d622d985c16a; PC = 0x55555556241e *)
mov r13 L0x7fffffffa0f0;
(* mov    0x38(%rsp),%rdx                          #! EA = L0x7fffffffa110; Value = 0xbd839d332d35308a; PC = 0x555555562423 *)
mov rdx L0x7fffffffa110;
(* xor    %r15,%rbx                                #! PC = 0x555555562428 *)
xor rbx@uint64 rbx r15;
(* xor    %rcx,%r11                                #! PC = 0x55555556242b *)
xor r11@uint64 r11 rcx;
(* xor    -0x18(%rsp),%rdx                         #! EA = L0x7fffffffa0c0; Value = 0x73635682e21794a8; PC = 0x55555556242e *)
xor rdx@uint64 rdx L0x7fffffffa0c0;
(* mov    -0x38(%rsp),%rsi                         #! EA = L0x7fffffffa0a0; Value = 0x3ba1fb4a08295317; PC = 0x555555562433 *)
mov rsi L0x7fffffffa0a0;
(* mov    %r14,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562438 *)
mov L0x7fffffffa0f8 r14;
(* mov    %rbp,%rax                                #! PC = 0x55555556243d *)
mov rax rbp;
(* xor    %r10,%rdx                                #! PC = 0x555555562440 *)
xor rdx@uint64 rdx r10;
(* xor    0x50(%rsp),%rsi                          #! EA = L0x7fffffffa128; Value = 0x8aa6bbfa8f3d4772; PC = 0x555555562443 *)
xor rsi@uint64 rsi L0x7fffffffa128;
(* xor    0x10(%rsp),%rdx                          #! EA = L0x7fffffffa0e8; Value = 0x8002eaeda650e219; PC = 0x555555562448 *)
xor rdx@uint64 rdx L0x7fffffffa0e8;
(* xor    %rbx,%r13                                #! PC = 0x55555556244d *)
xor r13@uint64 r13 rbx;
(* xor    -0x8(%rsp),%rsi                          #! EA = L0x7fffffffa0d0; Value = 0xf12b54c33611ad4e; PC = 0x555555562450 *)
xor rsi@uint64 rsi L0x7fffffffa0d0;
(* xor    -0x40(%rsp),%r13                         #! EA = L0x7fffffffa098; Value = 0x87a21b71d225a5e2; PC = 0x555555562455 *)
xor r13@uint64 r13 L0x7fffffffa098;
(* xor    %rdi,%rdx                                #! PC = 0x55555556245a *)
xor rdx@uint64 rdx rdi;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x55555556245d *)
mov L0x7fffffffa0e0 r12;
(* xor    %r9,%rsi                                 #! PC = 0x555555562462 *)
xor rsi@uint64 rsi r9;
(* xor    %r14,%r13                                #! PC = 0x555555562465 *)
xor r13@uint64 r13 r14;
(* mov    %rdx,%r14                                #! PC = 0x555555562468 *)
mov r14 rdx;
(* mov    -0x20(%rsp),%rdx                         #! EA = L0x7fffffffa0b8; Value = 0xa2bd3e960727f066; PC = 0x55555556246b *)
mov rdx L0x7fffffffa0b8;
(* xor    %r12,%rsi                                #! PC = 0x555555562470 *)
xor rsi@uint64 rsi r12;
(* xor    0x58(%rsp),%rdx                          #! EA = L0x7fffffffa130; Value = 0x756202df997473c6; PC = 0x555555562473 *)
xor rdx@uint64 rdx L0x7fffffffa130;
(* xor    0x40(%rsp),%rdx                          #! EA = L0x7fffffffa118; Value = 0x2116852fc0b8d5bf; PC = 0x555555562478 *)
xor rdx@uint64 rdx L0x7fffffffa118;
(* mov    %r13,%r12                                #! PC = 0x55555556247d *)
mov r12 r13;
(* xor    -0x10(%rsp),%rdx                         #! EA = L0x7fffffffa0c8; Value = 0x8b11385708bc56f7; PC = 0x555555562480 *)
xor rdx@uint64 rdx L0x7fffffffa0c8;
(* mov    %rsi,%rbx                                #! PC = 0x555555562485 *)
mov rbx rsi;
(* rol    %rsi                                     #! PC = 0x555555562488 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* xor    %rbp,%rdx                                #! PC = 0x55555556248b *)
xor rdx@uint64 rdx rbp;
(* mov    %r14,%rbp                                #! PC = 0x55555556248e *)
mov rbp r14;
(* xor    %rsi,%r13                                #! PC = 0x555555562491 *)
xor r13@uint64 r13 rsi;
(* rol    %r12                                     #! PC = 0x555555562494 *)
split r12_h r12_l r12 63; shl r12_s r12_l 1@uint64; add r12 r12_s r12_h;
(* rol    %rbp                                     #! PC = 0x555555562497 *)
split rbp_h rbp_l rbp 63; shl rbp_s rbp_l 1@uint64; add rbp rbp_s rbp_h;
(* mov    %r11,%rsi                                #! PC = 0x55555556249a *)
mov rsi r11;
(* xor    %rdx,%r12                                #! PC = 0x55555556249d *)
xor r12@uint64 r12 rdx;
(* rol    %rdx                                     #! PC = 0x5555555624a0 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* xor    %r11,%rbp                                #! PC = 0x5555555624a3 *)
xor rbp@uint64 rbp r11;
(* rol    %rsi                                     #! PC = 0x5555555624a6 *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %r8,%r11                                 #! PC = 0x5555555624a9 *)
mov r11 r8;
(* xor    %r14,%rdx                                #! PC = 0x5555555624ac *)
xor rdx@uint64 rdx r14;
(* xor    %rbx,%rsi                                #! PC = 0x5555555624af *)
xor rsi@uint64 rsi rbx;
(* xor    %r12,%r11                                #! PC = 0x5555555624b2 *)
xor r11@uint64 r11 r12;
(* xor    %rbp,%r15                                #! PC = 0x5555555624b5 *)
xor r15@uint64 r15 rbp;
(* xor    %r13,%r10                                #! PC = 0x5555555624b8 *)
xor r10@uint64 r10 r13;
(* mov    %r15,%rbx                                #! PC = 0x5555555624bb *)
mov rbx r15;
(* ror    $0x15,%r10                               #! PC = 0x5555555624be *)
split r10_h r10_l r10 0x15; shl r10_s r10_l (64-0x15)@uint64; add r10 r10_s r10_h;
(* xor    %rdx,%r9                                 #! PC = 0x5555555624c2 *)
xor r9@uint64 r9 rdx;
(* xor    %rsi,%rax                                #! PC = 0x5555555624c5 *)
xor rax@uint64 rax rsi;
(* ror    $0x14,%rbx                               #! PC = 0x5555555624c8 *)
split rbx_h rbx_l rbx 0x14; shl rbx_s rbx_l (64-0x14)@uint64; add rbx rbx_s rbx_h;
(* rol    $0x15,%r9                                #! PC = 0x5555555624cc *)
split r9_h r9_l r9 (64-0x15); shl r9_s r9_l 0x15@uint64; add r9 r9_s r9_h;
(* xor    %r13,%rdi                                #! PC = 0x5555555624d0 *)
xor rdi@uint64 rdi r13;
(* rol    $0xe,%rax                                #! PC = 0x5555555624d3 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* mov    %rbx,%r15                                #! PC = 0x5555555624d7 *)
mov r15 rbx;
(* ror    $0x3,%rdi                                #! PC = 0x5555555624da *)
split rdi_h rdi_l rdi 0x3; shl rdi_s rdi_l (64-0x3)@uint64; add rdi rdi_s rdi_h;
(* not    %r15                                     #! PC = 0x5555555624de *)
not r15@uint64 r15;
(* mov    %r15,%r14                                #! PC = 0x5555555624e1 *)
mov r14 r15;
(* mov    -0x70(%rsp),%r15                         #! EA = L0x7fffffffa068; Value = 0x0000555555571250; PC = 0x5555555624e4 *)
mov r15 L0x7fffffffa068;
(* and    %r10,%r14                                #! PC = 0x5555555624e9 *)
and r14@uint64 r14 r10;
(* mov    0x8(%r15),%r8                            #! EA = L0x555555571258; Value = 0x8000000080008008; PC = 0x5555555624ec *)
mov r8 L0x555555571258;
(* xor    %r11,%r8                                 #! PC = 0x5555555624f0 *)
xor r8@uint64 r8 r11;
(* mov    %r8,%r15                                 #! PC = 0x5555555624f3 *)
mov r15 r8;
(* mov    %r14,%r8                                 #! PC = 0x5555555624f6 *)
mov r8 r14;
(* xor    %r15,%r8                                 #! PC = 0x5555555624f9 *)
xor r8@uint64 r8 r15;
(* mov    %r8,-0x68(%rsp)                          #! EA = L0x7fffffffa070; PC = 0x5555555624fc *)
mov L0x7fffffffa070 r8;
(* mov    %r10,%r8                                 #! PC = 0x555555562501 *)
mov r8 r10;
(* not    %r8                                      #! PC = 0x555555562504 *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x555555562507 *)
mov r14 r8;
(* and    %r9,%r14                                 #! PC = 0x55555556250a *)
and r14@uint64 r14 r9;
(* mov    %r14,%r8                                 #! PC = 0x55555556250d *)
mov r8 r14;
(* xor    %rbx,%r8                                 #! PC = 0x555555562510 *)
xor r8@uint64 r8 rbx;
(* mov    %r8,-0x60(%rsp)                          #! EA = L0x7fffffffa078; PC = 0x555555562513 *)
mov L0x7fffffffa078 r8;
(* mov    %r9,%r8                                  #! PC = 0x555555562518 *)
mov r8 r9;
(* not    %r8                                      #! PC = 0x55555556251b *)
not r8@uint64 r8;
(* mov    %r8,%r14                                 #! PC = 0x55555556251e *)
mov r14 r8;
(* and    %rax,%r14                                #! PC = 0x555555562521 *)
and r14@uint64 r14 rax;
(* mov    %r14,%r8                                 #! PC = 0x555555562524 *)
mov r8 r14;
(* mov    -0x18(%rsp),%r14                         #! EA = L0x7fffffffa0c0; Value = 0x73635682e21794a8; PC = 0x555555562527 *)
mov r14 L0x7fffffffa0c0;
(* xor    %r10,%r8                                 #! PC = 0x55555556252c *)
xor r8@uint64 r8 r10;
(* mov    %r8,-0x58(%rsp)                          #! EA = L0x7fffffffa080; PC = 0x55555556252f *)
mov L0x7fffffffa080 r8;
(* mov    %rax,%r8                                 #! PC = 0x555555562534 *)
mov r8 rax;
(* not    %r8                                      #! PC = 0x555555562537 *)
not r8@uint64 r8;
(* mov    %r8,%r10                                 #! PC = 0x55555556253a *)
mov r10 r8;
(* and    %r11,%r10                                #! PC = 0x55555556253d *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x555555562540 *)
not r11@uint64 r11;
(* mov    %r10,%r8                                 #! PC = 0x555555562543 *)
mov r8 r10;
(* and    %rbx,%r11                                #! PC = 0x555555562546 *)
and r11@uint64 r11 rbx;
(* mov    -0x30(%rsp),%rbx                         #! EA = L0x7fffffffa0a8; Value = 0x8826b6399fc4bfd7; PC = 0x555555562549 *)
mov rbx L0x7fffffffa0a8;
(* xor    %r9,%r8                                  #! PC = 0x55555556254e *)
xor r8@uint64 r8 r9;
(* mov    -0x38(%rsp),%r9                          #! EA = L0x7fffffffa0a0; Value = 0x3ba1fb4a08295317; PC = 0x555555562551 *)
mov r9 L0x7fffffffa0a0;
(* mov    %r8,-0x50(%rsp)                          #! EA = L0x7fffffffa088; PC = 0x555555562556 *)
mov L0x7fffffffa088 r8;
(* mov    %r11,%r8                                 #! PC = 0x55555556255b *)
mov r8 r11;
(* xor    %r12,%rbx                                #! PC = 0x55555556255e *)
xor rbx@uint64 rbx r12;
(* xor    %rax,%r8                                 #! PC = 0x555555562561 *)
xor r8@uint64 r8 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffa0b8; Value = 0xa2bd3e960727f066; PC = 0x555555562564 *)
mov rax L0x7fffffffa0b8;
(* rol    $0x3,%rbx                                #! PC = 0x555555562569 *)
split rbx_h rbx_l rbx (64-0x3); shl rbx_s rbx_l 0x3@uint64; add rbx rbx_s rbx_h;
(* xor    %rdx,%r9                                 #! PC = 0x55555556256d *)
xor r9@uint64 r9 rdx;
(* mov    %r8,-0x48(%rsp)                          #! EA = L0x7fffffffa090; PC = 0x555555562570 *)
mov L0x7fffffffa090 r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffa098; Value = 0x87a21b71d225a5e2; PC = 0x555555562575 *)
mov r8 L0x7fffffffa098;
(* rol    $0x1c,%r9                                #! PC = 0x55555556257a *)
split r9_h r9_l r9 (64-0x1c); shl r9_s r9_l 0x1c@uint64; add r9 r9_s r9_h;
(* mov    %rbx,%r10                                #! PC = 0x55555556257e *)
mov r10 rbx;
(* xor    %rsi,%rax                                #! PC = 0x555555562581 *)
xor rax@uint64 rax rsi;
(* not    %r10                                     #! PC = 0x555555562584 *)
not r10@uint64 r10;
(* mov    %rax,%r11                                #! PC = 0x555555562587 *)
mov r11 rax;
(* xor    %rbp,%r8                                 #! PC = 0x55555556258a *)
xor r8@uint64 r8 rbp;
(* rol    $0x14,%r11                               #! PC = 0x55555556258d *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* ror    $0x13,%r8                                #! PC = 0x555555562591 *)
split r8_h r8_l r8 0x13; shl r8_s r8_l (64-0x13)@uint64; add r8 r8_s r8_h;
(* mov    %r11,%r15                                #! PC = 0x555555562595 *)
mov r15 r11;
(* not    %r15                                     #! PC = 0x555555562598 *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x55555556259b *)
mov rax r15;
(* and    %rbx,%rax                                #! PC = 0x55555556259e *)
and rax@uint64 rax rbx;
(* mov    %rax,%r15                                #! PC = 0x5555555625a1 *)
mov r15 rax;
(* xor    %r9,%r15                                 #! PC = 0x5555555625a4 *)
xor r15@uint64 r15 r9;
(* and    %r8,%r10                                 #! PC = 0x5555555625a7 *)
and r10@uint64 r10 r8;
(* xor    %r13,%r14                                #! PC = 0x5555555625aa *)
xor r14@uint64 r14 r13;
(* xor    %r12,%rcx                                #! PC = 0x5555555625ad *)
xor rcx@uint64 rcx r12;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffa098; PC = 0x5555555625b0 *)
mov L0x7fffffffa098 r15;
(* mov    %r8,%r15                                 #! PC = 0x5555555625b5 *)
mov r15 r8;
(* xor    %r11,%r10                                #! PC = 0x5555555625b8 *)
xor r10@uint64 r10 r11;
(* rol    $0x12,%rcx                               #! PC = 0x5555555625bb *)
split rcx_h rcx_l rcx (64-0x12); shl rcx_s rcx_l 0x12@uint64; add rcx rcx_s rcx_h;
(* not    %r15                                     #! PC = 0x5555555625bf *)
not r15@uint64 r15;
(* mov    %r10,-0x38(%rsp)                         #! EA = L0x7fffffffa0a0; PC = 0x5555555625c2 *)
mov L0x7fffffffa0a0 r10;
(* mov    %r15,%rax                                #! PC = 0x5555555625c7 *)
mov rax r15;
(* and    %rdi,%rax                                #! PC = 0x5555555625ca *)
and rax@uint64 rax rdi;
(* mov    %rax,%r15                                #! PC = 0x5555555625cd *)
mov r15 rax;
(* xor    %rbx,%r15                                #! PC = 0x5555555625d0 *)
xor r15@uint64 r15 rbx;
(* mov    %r15,-0x30(%rsp)                         #! EA = L0x7fffffffa0a8; PC = 0x5555555625d3 *)
mov L0x7fffffffa0a8 r15;
(* mov    %rdi,%r15                                #! PC = 0x5555555625d8 *)
mov r15 rdi;
(* not    %r15                                     #! PC = 0x5555555625db *)
not r15@uint64 r15;
(* mov    %r15,%rax                                #! PC = 0x5555555625de *)
mov rax r15;
(* and    %r9,%rax                                 #! PC = 0x5555555625e1 *)
and rax@uint64 rax r9;
(* not    %r9                                      #! PC = 0x5555555625e4 *)
not r9@uint64 r9;
(* and    %r11,%r9                                 #! PC = 0x5555555625e7 *)
and r9@uint64 r9 r11;
(* mov    %rax,%r15                                #! PC = 0x5555555625ea *)
mov r15 rax;
(* mov    0x30(%rsp),%r11                          #! EA = L0x7fffffffa108; Value = 0x2a407b1a353ae6c9; PC = 0x5555555625ed *)
mov r11 L0x7fffffffa108;
(* xor    %r8,%r15                                 #! PC = 0x5555555625f2 *)
xor r15@uint64 r15 r8;
(* mov    %r9,%r8                                  #! PC = 0x5555555625f5 *)
mov r8 r9;
(* xor    %rdi,%r8                                 #! PC = 0x5555555625f8 *)
xor r8@uint64 r8 rdi;
(* mov    %r15,-0x28(%rsp)                         #! EA = L0x7fffffffa0b0; PC = 0x5555555625fb *)
mov L0x7fffffffa0b0 r15;
(* xor    %rbp,%r11                                #! PC = 0x555555562600 *)
xor r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffa0b8; PC = 0x555555562603 *)
mov L0x7fffffffa0b8 r8;
(* mov    -0x8(%rsp),%rdi                          #! EA = L0x7fffffffa0d0; Value = 0xf12b54c33611ad4e; PC = 0x555555562608 *)
mov rdi L0x7fffffffa0d0;
(* mov    %r14,%r8                                 #! PC = 0x55555556260d *)
mov r8 r14;
(* rol    %r11                                     #! PC = 0x555555562610 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* rol    $0x6,%r8                                 #! PC = 0x555555562613 *)
split r8_h r8_l r8 (64-0x6); shl r8_s r8_l 0x6@uint64; add r8 r8_s r8_h;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffa0c8; Value = 0x8b11385708bc56f7; PC = 0x555555562617 *)
mov rax L0x7fffffffa0c8;
(* xor    %rdx,%rdi                                #! PC = 0x55555556261c *)
xor rdi@uint64 rdi rdx;
(* rol    $0x19,%rdi                               #! PC = 0x55555556261f *)
split rdi_h rdi_l rdi (64-0x19); shl rdi_s rdi_l 0x19@uint64; add rdi rdi_s rdi_h;
(* xor    %rsi,%rax                                #! PC = 0x555555562623 *)
xor rax@uint64 rax rsi;
(* mov    %rdi,%r9                                 #! PC = 0x555555562626 *)
mov r9 rdi;
(* mov    %r8,%rdi                                 #! PC = 0x555555562629 *)
mov rdi r8;
(* rol    $0x8,%rax                                #! PC = 0x55555556262c *)
split rax_h rax_l rax (64-0x8); shl rax_s rax_l 0x8@uint64; add rax rax_s rax_h;
(* not    %rdi                                     #! PC = 0x555555562630 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r10                                #! PC = 0x555555562633 *)
mov r10 rdi;
(* and    %r9,%r10                                 #! PC = 0x555555562636 *)
and r10@uint64 r10 r9;
(* mov    %r10,%rdi                                #! PC = 0x555555562639 *)
mov rdi r10;
(* xor    %r11,%rdi                                #! PC = 0x55555556263c *)
xor rdi@uint64 rdi r11;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffa0c0; PC = 0x55555556263f *)
mov L0x7fffffffa0c0 rdi;
(* mov    %r9,%rdi                                 #! PC = 0x555555562644 *)
mov rdi r9;
(* not    %rdi                                     #! PC = 0x555555562647 *)
not rdi@uint64 rdi;
(* mov    %rdi,%r14                                #! PC = 0x55555556264a *)
mov r14 rdi;
(* and    %rax,%r14                                #! PC = 0x55555556264d *)
and r14@uint64 r14 rax;
(* mov    %r14,%rdi                                #! PC = 0x555555562650 *)
mov rdi r14;
(* xor    %r8,%rdi                                 #! PC = 0x555555562653 *)
xor rdi@uint64 rdi r8;
(* mov    %rdi,-0x10(%rsp)                         #! EA = L0x7fffffffa0c8; PC = 0x555555562656 *)
mov L0x7fffffffa0c8 rdi;
(* mov    %rax,%rdi                                #! PC = 0x55555556265b *)
mov rdi rax;
(* not    %rdi                                     #! PC = 0x55555556265e *)
not rdi@uint64 rdi;
(* mov    %rdi,%r15                                #! PC = 0x555555562661 *)
mov r15 rdi;
(* mov    %rcx,%rdi                                #! PC = 0x555555562664 *)
mov rdi rcx;
(* not    %rdi                                     #! PC = 0x555555562667 *)
not rdi@uint64 rdi;
(* and    %rcx,%r15                                #! PC = 0x55555556266a *)
and r15@uint64 r15 rcx;
(* mov    %rdi,%r10                                #! PC = 0x55555556266d *)
mov r10 rdi;
(* xor    %r9,%r15                                 #! PC = 0x555555562670 *)
xor r15@uint64 r15 r9;
(* mov    0x10(%rsp),%r9                           #! EA = L0x7fffffffa0e8; Value = 0x8002eaeda650e219; PC = 0x555555562673 *)
mov r9 L0x7fffffffa0e8;
(* and    %r11,%r10                                #! PC = 0x555555562678 *)
and r10@uint64 r10 r11;
(* not    %r11                                     #! PC = 0x55555556267b *)
not r11@uint64 r11;
(* mov    %r10,%rdi                                #! PC = 0x55555556267e *)
mov rdi r10;
(* and    %r8,%r11                                 #! PC = 0x555555562681 *)
and r11@uint64 r11 r8;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffa118; Value = 0x2116852fc0b8d5bf; PC = 0x555555562684 *)
mov r10 L0x7fffffffa118;
(* xor    %rax,%rdi                                #! PC = 0x555555562689 *)
xor rdi@uint64 rdi rax;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffa0e0; Value = 0x87c6984409ab646e; PC = 0x55555556268c *)
mov rax L0x7fffffffa0e0;
(* mov    %rdi,-0x8(%rsp)                          #! EA = L0x7fffffffa0d0; PC = 0x555555562691 *)
mov L0x7fffffffa0d0 rdi;
(* mov    %r11,%rdi                                #! PC = 0x555555562696 *)
mov rdi r11;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffa0f0; Value = 0x0f70d622d985c16a; PC = 0x555555562699 *)
mov r11 L0x7fffffffa0f0;
(* xor    %rsi,%r10                                #! PC = 0x55555556269e *)
xor r10@uint64 r10 rsi;
(* xor    %rcx,%rdi                                #! PC = 0x5555555626a1 *)
xor rdi@uint64 rdi rcx;
(* mov    0x48(%rsp),%rcx                          #! EA = L0x7fffffffa120; Value = 0xd6e7f67189c5efe2; PC = 0x5555555626a4 *)
mov rcx L0x7fffffffa120;
(* rol    $0x1b,%r10                               #! PC = 0x5555555626a9 *)
split r10_h r10_l r10 (64-0x1b); shl r10_s r10_l 0x1b@uint64; add r10 r10_s r10_h;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffa0d8; PC = 0x5555555626ad *)
mov L0x7fffffffa0d8 rdi;
(* xor    %r12,%rcx                                #! PC = 0x5555555626b1 *)
xor rcx@uint64 rcx r12;
(* ror    $0x1c,%rcx                               #! PC = 0x5555555626b4 *)
split rcx_h rcx_l rcx 0x1c; shl rcx_s rcx_l (64-0x1c)@uint64; add rcx rcx_s rcx_h;
(* xor    %rbp,%r11                                #! PC = 0x5555555626b8 *)
xor r11@uint64 r11 rbp;
(* xor    %r13,%r9                                 #! PC = 0x5555555626bb *)
xor r9@uint64 r9 r13;
(* xor    %rdx,%rax                                #! PC = 0x5555555626be *)
xor rax@uint64 rax rdx;
(* rol    $0xa,%r11                                #! PC = 0x5555555626c1 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* rol    $0xf,%r9                                 #! PC = 0x5555555626c5 *)
split r9_h r9_l r9 (64-0xf); shl r9_s r9_l 0xf@uint64; add r9 r9_s r9_h;
(* mov    %rcx,%rdi                                #! PC = 0x5555555626c9 *)
mov rdi rcx;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffa100; Value = 0x42e2b8952a982c0d; PC = 0x5555555626cc *)
xor r12@uint64 r12 L0x7fffffffa100;
(* mov    %r11,%r8                                 #! PC = 0x5555555626d1 *)
mov r8 r11;
(* ror    $0x8,%rax                                #! PC = 0x5555555626d4 *)
split rax_h rax_l rax 0x8; shl rax_s rax_l (64-0x8)@uint64; add rax rax_s rax_h;
(* mov    %r9,%r14                                 #! PC = 0x5555555626d8 *)
mov r14 r9;
(* not    %rdi                                     #! PC = 0x5555555626db *)
not rdi@uint64 rdi;
(* not    %r8                                      #! PC = 0x5555555626de *)
not r8@uint64 r8;
(* mov    %rdi,%rbx                                #! PC = 0x5555555626e1 *)
mov rbx rdi;
(* xor    0x50(%rsp),%rdx                          #! EA = L0x7fffffffa128; Value = 0x8aa6bbfa8f3d4772; PC = 0x5555555626e4 *)
xor rdx@uint64 rdx L0x7fffffffa128;
(* xor    0x58(%rsp),%rsi                          #! EA = L0x7fffffffa130; Value = 0x756202df997473c6; PC = 0x5555555626e9 *)
xor rsi@uint64 rsi L0x7fffffffa130;
(* and    %r9,%r8                                  #! PC = 0x5555555626ee *)
and r8@uint64 r8 r9;
(* not    %r9                                      #! PC = 0x5555555626f1 *)
not r9@uint64 r9;
(* and    %r11,%rbx                                #! PC = 0x5555555626f4 *)
and rbx@uint64 rbx r11;
(* ror    $0x19,%rsi                               #! PC = 0x5555555626f7 *)
split rsi_h rsi_l rsi 0x19; shl rsi_s rsi_l (64-0x19)@uint64; add rsi rsi_s rsi_h;
(* and    %rax,%r9                                 #! PC = 0x5555555626fb *)
and r9@uint64 r9 rax;
(* mov    %rbx,%rdi                                #! PC = 0x5555555626fe *)
mov rdi rbx;
(* xor    %rcx,%r8                                 #! PC = 0x555555562701 *)
xor r8@uint64 r8 rcx;
(* xor    0x38(%rsp),%r13                          #! EA = L0x7fffffffa110; Value = 0xbd839d332d35308a; PC = 0x555555562704 *)
xor r13@uint64 r13 L0x7fffffffa110;
(* xor    %r11,%r9                                 #! PC = 0x555555562709 *)
xor r9@uint64 r9 r11;
(* xor    %r10,%rdi                                #! PC = 0x55555556270c *)
xor rdi@uint64 rdi r10;
(* ror    $0x2,%r13                                #! PC = 0x55555556270f *)
split r13_h r13_l r13 0x2; shl r13_s r13_l (64-0x2)@uint64; add r13 r13_s r13_h;
(* lea    0xeb46(%rip),%rbx        # 0x555555571260#! PC = 0x555555562713 *)
(* lea 0xeb46(%rip), %rbx *)
nop;
(* mov    %r9,0x10(%rsp)                           #! EA = L0x7fffffffa0e8; PC = 0x55555556271a *)
mov L0x7fffffffa0e8 r9;
(* mov    %rax,%r9                                 #! PC = 0x55555556271f *)
mov r9 rax;
(* not    %r9                                      #! PC = 0x555555562722 *)
not r9@uint64 r9;
(* mov    %rdi,0x8(%rsp)                           #! EA = L0x7fffffffa0e0; PC = 0x555555562725 *)
mov L0x7fffffffa0e0 rdi;
(* mov    %r12,%rdi                                #! PC = 0x55555556272a *)
mov rdi r12;
(* mov    0x20(%rsp),%r12                          #! EA = L0x7fffffffa0f8; Value = 0x2113a4856149c92b; PC = 0x55555556272d *)
mov r12 L0x7fffffffa0f8;
(* and    %r10,%r9                                 #! PC = 0x555555562732 *)
and r9@uint64 r9 r10;
(* not    %r10                                     #! PC = 0x555555562735 *)
not r10@uint64 r10;
(* ror    $0x17,%rdi                               #! PC = 0x555555562738 *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* and    %rcx,%r10                                #! PC = 0x55555556273c *)
and r10@uint64 r10 rcx;
(* mov    %rdx,%rcx                                #! PC = 0x55555556273f *)
mov rcx rdx;
(* xor    %rbp,%r12                                #! PC = 0x555555562742 *)
xor r12@uint64 r12 rbp;
(* xor    %r14,%r9                                 #! PC = 0x555555562745 *)
xor r9@uint64 r9 r14;
(* ror    $0x9,%rcx                                #! PC = 0x555555562748 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    %rax,%r10                                #! PC = 0x55555556274c *)
xor r10@uint64 r10 rax;
(* mov    %r12,%rbp                                #! PC = 0x55555556274f *)
mov rbp r12;
(* mov    %rsi,%r14                                #! PC = 0x555555562752 *)
mov r14 rsi;
(* mov    %rcx,%rax                                #! PC = 0x555555562755 *)
mov rax rcx;
(* rol    $0x2,%rbp                                #! PC = 0x555555562758 *)
split rbp_h rbp_l rbp (64-0x2); shl rbp_s rbp_l 0x2@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,%rdx                                #! PC = 0x55555556275c *)
mov rdx rsi;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffa0f0; PC = 0x55555556275f *)
mov L0x7fffffffa0f0 r10;
(* not    %rax                                     #! PC = 0x555555562764 *)
not rax@uint64 rax;
(* not    %rdx                                     #! PC = 0x555555562767 *)
not rdx@uint64 rdx;
(* mov    %rbp,%r12                                #! PC = 0x55555556276a *)
mov r12 rbp;
(* and    %rsi,%rax                                #! PC = 0x55555556276d *)
and rax@uint64 rax rsi;
(* mov    %rdi,%rsi                                #! PC = 0x555555562770 *)
mov rsi rdi;
(* and    %rdi,%rdx                                #! PC = 0x555555562773 *)
and rdx@uint64 rdx rdi;
(* not    %r12                                     #! PC = 0x555555562776 *)
not r12@uint64 r12;
(* not    %rsi                                     #! PC = 0x555555562779 *)
not rsi@uint64 rsi;
(* xor    %r13,%rax                                #! PC = 0x55555556277c *)
xor rax@uint64 rax r13;
(* xor    %rcx,%rdx                                #! PC = 0x55555556277f *)
xor rdx@uint64 rdx rcx;
(* and    %rbp,%rsi                                #! PC = 0x555555562782 *)
and rsi@uint64 rsi rbp;
(* mov    %rdx,0x20(%rsp)                          #! EA = L0x7fffffffa0f8; PC = 0x555555562785 *)
mov L0x7fffffffa0f8 rdx;
(* xor    %r14,%rsi                                #! PC = 0x55555556278a *)
xor rsi@uint64 rsi r14;
(* and    %r13,%r12                                #! PC = 0x55555556278d *)
and r12@uint64 r12 r13;
(* not    %r13                                     #! PC = 0x555555562790 *)
not r13@uint64 r13;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffa068; PC = 0x555555562793 *)
adds dc L0x7fffffffa068 L0x7fffffffa068 0x10@uint64;
(* xor    %rdi,%r12                                #! PC = 0x555555562799 *)
xor r12@uint64 r12 rdi;
(* and    %rcx,%r13                                #! PC = 0x55555556279c *)
and r13@uint64 r13 rcx;
(* mov    %r12,0x28(%rsp)                          #! EA = L0x7fffffffa100; PC = 0x55555556279f *)
mov L0x7fffffffa100 r12;
(* mov    %r13,%r12                                #! PC = 0x5555555627a4 *)
mov r12 r13;
(* mov    -0x70(%rsp),%r13                         #! EA = L0x7fffffffa068; Value = 0x0000555555571260; PC = 0x5555555627a7 *)
mov r13 L0x7fffffffa068;
(* xor    %rbp,%r12                                #! PC = 0x5555555627ac *)
xor r12@uint64 r12 rbp;
(* cmp    %r13,%rbx                                #! PC = 0x5555555627af *)
(* cmp r13, rbx *)
nop;
(* #jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! PC = 0x5555555627b2 *)
#jne    0x5555555620a8 <KeccakF1600_StatePermute+264>#! 0x5555555627b2 = 0x5555555627b2;
(* movq   -0x68(%rsp),%xmm0                        #! EA = L0x7fffffffa070; Value = 0xb9130a5cc89b2fb7; PC = 0x5555555627b8 *)
mov xmm0_0 L0x7fffffffa070; mov xmm0_1 0@uint64;
(* mov    %rax,%rbx                                #! PC = 0x5555555627be *)
mov rbx rax;
(* mov    0x60(%rsp),%rax                          #! EA = L0x7fffffffa138; Value = 0x00007fffffffa180; PC = 0x5555555627c1 *)
mov rax L0x7fffffffa138;
(* movhps -0x60(%rsp),%xmm0                        #! EA = L0x7fffffffa078; Value = 0xb1fe83d56f5841d0; PC = 0x5555555627c6 *)
mov xmm0_1 L0x7fffffffa078;
(* movups %xmm0,(%rax)                             #! EA = L0x7fffffffa180; PC = 0x5555555627cb *)
mov L0x7fffffffa180 xmm0_0;
(* movq   -0x58(%rsp),%xmm0                        #! EA = L0x7fffffffa080; Value = 0x433bd32d405afd2a; PC = 0x5555555627ce *)
mov xmm0_0 L0x7fffffffa080; mov xmm0_1 0@uint64;
(* movhps -0x50(%rsp),%xmm0                        #! EA = L0x7fffffffa088; Value = 0x8d6c43eba45f3f54; PC = 0x5555555627d4 *)
mov xmm0_1 L0x7fffffffa088;
(* movups %xmm0,0x10(%rax)                         #! EA = L0x7fffffffa190; PC = 0x5555555627d9 *)
mov L0x7fffffffa190 xmm0_0;
(* movq   -0x48(%rsp),%xmm0                        #! EA = L0x7fffffffa090; Value = 0x46b16a0917308eb1; PC = 0x5555555627dd *)
mov xmm0_0 L0x7fffffffa090; mov xmm0_1 0@uint64;
(* movhps -0x40(%rsp),%xmm0                        #! EA = L0x7fffffffa098; Value = 0xa9a6593d2a276262; PC = 0x5555555627e3 *)
mov xmm0_1 L0x7fffffffa098;
(* movups %xmm0,0x20(%rax)                         #! EA = L0x7fffffffa1a0; PC = 0x5555555627e8 *)
mov L0x7fffffffa1a0 xmm0_0;
(* movq   -0x38(%rsp),%xmm0                        #! EA = L0x7fffffffa0a0; Value = 0xa1b85dcca98f67d2; PC = 0x5555555627ec *)
mov xmm0_0 L0x7fffffffa0a0; mov xmm0_1 0@uint64;
(* movhps -0x30(%rsp),%xmm0                        #! EA = L0x7fffffffa0a8; Value = 0xfda8eb4ded868488; PC = 0x5555555627f2 *)
mov xmm0_1 L0x7fffffffa0a8;
(* movups %xmm0,0x30(%rax)                         #! EA = L0x7fffffffa1b0; PC = 0x5555555627f7 *)
mov L0x7fffffffa1b0 xmm0_0;
(* movq   -0x28(%rsp),%xmm0                        #! EA = L0x7fffffffa0b0; Value = 0xd6dc3d602be271ef; PC = 0x5555555627fb *)
mov xmm0_0 L0x7fffffffa0b0; mov xmm0_1 0@uint64;
(* movhps -0x20(%rsp),%xmm0                        #! EA = L0x7fffffffa0b8; Value = 0xf5899dc0c6f05e19; PC = 0x555555562801 *)
mov xmm0_1 L0x7fffffffa0b8;
(* movups %xmm0,0x40(%rax)                         #! EA = L0x7fffffffa1c0; PC = 0x555555562806 *)
mov L0x7fffffffa1c0 xmm0_0;
(* movq   -0x18(%rsp),%xmm0                        #! EA = L0x7fffffffa0c0; Value = 0xa64c6c8bf4b0e9f0; PC = 0x55555556280a *)
mov xmm0_0 L0x7fffffffa0c0; mov xmm0_1 0@uint64;
(* movhps -0x10(%rsp),%xmm0                        #! EA = L0x7fffffffa0c8; Value = 0xd5812c9ad5a8ea11; PC = 0x555555562810 *)
mov xmm0_1 L0x7fffffffa0c8;
(* movups %xmm0,0x50(%rax)                         #! EA = L0x7fffffffa1d0; PC = 0x555555562815 *)
mov L0x7fffffffa1d0 xmm0_0;
(* movq   %r15,%xmm0                               #! PC = 0x555555562819 *)
mov xmm0_0 r15; mov xmm0_1 0@uint64;
(* movhps -0x8(%rsp),%xmm0                         #! EA = L0x7fffffffa0d0; Value = 0x657ce72b96ee0fd8; PC = 0x55555556281e *)
mov xmm0_1 L0x7fffffffa0d0;
(* movups %xmm0,0x60(%rax)                         #! EA = L0x7fffffffa1e0; PC = 0x555555562823 *)
mov L0x7fffffffa1e0 xmm0_0;
(* movq   (%rsp),%xmm0                             #! EA = L0x7fffffffa0d8; Value = 0x5ba6e61e4f69cfe5; PC = 0x555555562827 *)
mov xmm0_0 L0x7fffffffa0d8; mov xmm0_1 0@uint64;
(* movhps 0x8(%rsp),%xmm0                          #! EA = L0x7fffffffa0e0; Value = 0xf359f760110f1fcc; PC = 0x55555556282c *)
mov xmm0_1 L0x7fffffffa0e0;
(* movups %xmm0,0x70(%rax)                         #! EA = L0x7fffffffa1f0; PC = 0x555555562831 *)
mov L0x7fffffffa1f0 xmm0_0;
(* movq   %r8,%xmm0                                #! PC = 0x555555562835 *)
mov xmm0_0 r8; mov xmm0_1 0@uint64;
(* movhps 0x10(%rsp),%xmm0                         #! EA = L0x7fffffffa0e8; Value = 0xc05afe5a3a15dd4c; PC = 0x55555556283a *)
mov xmm0_1 L0x7fffffffa0e8;
(* movups %xmm0,0x80(%rax)                         #! EA = L0x7fffffffa200; PC = 0x55555556283f *)
mov L0x7fffffffa200 xmm0_0;
(* movq   %r9,%xmm0                                #! PC = 0x555555562846 *)
mov xmm0_0 r9; mov xmm0_1 0@uint64;
(* movhps 0x18(%rsp),%xmm0                         #! EA = L0x7fffffffa0f0; Value = 0xbb3f11c1e51b3596; PC = 0x55555556284b *)
mov xmm0_1 L0x7fffffffa0f0;
(* movups %xmm0,0x90(%rax)                         #! EA = L0x7fffffffa210; PC = 0x555555562850 *)
mov L0x7fffffffa210 xmm0_0;
(* movq   %rbx,%xmm0                               #! PC = 0x555555562857 *)
mov xmm0_0 rbx; mov xmm0_1 0@uint64;
(* movhps 0x20(%rsp),%xmm0                         #! EA = L0x7fffffffa0f8; Value = 0x4b092c53adaa31d3; PC = 0x55555556285c *)
mov xmm0_1 L0x7fffffffa0f8;
(* movups %xmm0,0xa0(%rax)                         #! EA = L0x7fffffffa220; PC = 0x555555562861 *)
mov L0x7fffffffa220 xmm0_0;
(* movq   %rsi,%xmm0                               #! PC = 0x555555562868 *)
mov xmm0_0 rsi; mov xmm0_1 0@uint64;
(* movhps 0x28(%rsp),%xmm0                         #! EA = L0x7fffffffa100; Value = 0xd42c1323a3538b80; PC = 0x55555556286d *)
mov xmm0_1 L0x7fffffffa100;
(* movups %xmm0,0xb0(%rax)                         #! EA = L0x7fffffffa230; PC = 0x555555562872 *)
mov L0x7fffffffa230 xmm0_0;
(* mov    %r12,0xc0(%rax)                          #! EA = L0x7fffffffa240; PC = 0x555555562879 *)
mov L0x7fffffffa240 r12;
(* add    $0x70,%rsp                               #! PC = 0x555555562880 *)
adds dc rsp rsp 0x70@uint64;
(* pop    %rbx                                     #! EA = L0x7fffffffa148; Value = 0x00007fffffffc770; PC = 0x555555562884 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffa150; Value = 0x0000000000000020; PC = 0x555555562885 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffa158; Value = 0x00007fffffffa180; PC = 0x555555562886 *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffa160; Value = 0x00007fffffffc750; PC = 0x555555562888 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffa168; Value = 0x00007fffffffa350; PC = 0x55555556288a *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffa170; Value = 0x00007fffffffb550; PC = 0x55555556288c *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffa178 *)
#! 0x7fffffffa178 = 0x7fffffffa178;
(* #retq                                           #! PC = 0x55555556288e *)
#retq                                           #! 0x55555556288e = 0x55555556288e;

mov a00 L0x7fffffffa180; mov a01 L0x7fffffffa188; mov a02 L0x7fffffffa190;
mov a03 L0x7fffffffa198; mov a04 L0x7fffffffa1a0; mov a10 L0x7fffffffa1a8;
mov a11 L0x7fffffffa1b0; mov a12 L0x7fffffffa1b8; mov a13 L0x7fffffffa1c0;
mov a14 L0x7fffffffa1c8; mov a20 L0x7fffffffa1d0; mov a21 L0x7fffffffa1d8;
mov a22 L0x7fffffffa1e0; mov a23 L0x7fffffffa1e8; mov a24 L0x7fffffffa1f0;
mov a30 L0x7fffffffa1f8; mov a31 L0x7fffffffa200; mov a32 L0x7fffffffa208;
mov a33 L0x7fffffffa210; mov a34 L0x7fffffffa218; mov a40 L0x7fffffffa220;
mov a41 L0x7fffffffa228; mov a42 L0x7fffffffa230; mov a43 L0x7fffffffa238;
mov a44 L0x7fffffffa240;

{
  true
  &&
  true
}

