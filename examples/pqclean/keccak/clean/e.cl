proc KeccakF1600_StatePermute2Rounds_pqclean
(uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04,
 uint64 a10, uint64 a11, uint64 a12, uint64 a13, uint64 a14,
 uint64 a20, uint64 a21, uint64 a22, uint64 a23, uint64 a24,
 uint64 a30, uint64 a31, uint64 a32, uint64 a33, uint64 a34,
 uint64 a40, uint64 a41, uint64 a42, uint64 a43, uint64 a44,
 uint64 rconst0, uint64 rconst1,
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

mov L0x7fffffffa070 A00; mov L0x7fffffffa078 A01; mov L0x7fffffffa080 A02;
mov L0x7fffffffa088 A03; mov L0x7fffffffa090 A04; mov L0x7fffffffa098 A10;
mov L0x7fffffffa0a0 A11; mov L0x7fffffffa0a8 A12; mov L0x7fffffffa0b0 A13;
mov L0x7fffffffa0b8 A14; mov L0x7fffffffa0c0 A20; mov L0x7fffffffa0c8 A21;
mov             r15 A22; mov L0x7fffffffa0d0 A23; mov L0x7fffffffa0d8 A24;
mov L0x7fffffffa0e0 A30; mov              r8 A31; mov L0x7fffffffa0e8 A32;
mov              r9 A33; mov L0x7fffffffa0f0 A34; mov             rax A40;
mov L0x7fffffffa0f8 A41; mov             rsi A42; mov L0x7fffffffa100 A43;
mov             r12 A44;

mov L0x5555555711a0 rconst0; mov L0x5555555711a8 rconst1;

nondet L0x7fffffffa068@uint64;

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

mov a00 L0x7fffffffa070; mov a01 L0x7fffffffa078; mov a02 L0x7fffffffa080;
mov a03 L0x7fffffffa088; mov a04 L0x7fffffffa090; mov a10 L0x7fffffffa098;
mov a11 L0x7fffffffa0a0; mov a12 L0x7fffffffa0a8; mov a13 L0x7fffffffa0b0;
mov a14 L0x7fffffffa0b8; mov a20 L0x7fffffffa0c0; mov a21 L0x7fffffffa0c8;
mov a22             r15; mov a23 L0x7fffffffa0d0; mov a24 L0x7fffffffa0d8;
mov a30 L0x7fffffffa0e0; mov a31              r8; mov a32 L0x7fffffffa0e8;
mov a33              r9; mov a34 L0x7fffffffa0f0; mov a40             rax;
mov a41 L0x7fffffffa0f8; mov a43             rsi; mov a43 L0x7fffffffa100;
mov a44             r12;

{ true && true }

proc KeccakP1600Round_XKCP (
  uint64 output00, uint64 output01, uint64 output02, uint64 output03, uint64 output04,
  uint64 output05, uint64 output06, uint64 output07, uint64 output08, uint64 output09,
  uint64 output10, uint64 output11, uint64 output12, uint64 output13, uint64 output14,
  uint64 output15, uint64 output16, uint64 output17, uint64 output18, uint64 output19,
  uint64 output20, uint64 output21, uint64 output22, uint64 output23, uint64 output24,
  uint64 RC_i,
  uint64 state00, uint64 state01, uint64 state02, uint64 state03, uint64 state04,
  uint64 state05, uint64 state06, uint64 state07, uint64 state08, uint64 state09,
  uint64 state10, uint64 state11, uint64 state12, uint64 state13, uint64 state14,
  uint64 state15, uint64 state16, uint64 state17, uint64 state18, uint64 state19,
  uint64 state20, uint64 state21, uint64 state22, uint64 state23, uint64 state24) =
{
  true
  &&
  true
}

mov arrayidx_i_0 RC_i;
mov state_0 state00;
mov state_8 state01;
mov state_16 state02;
mov state_24 state03;
mov state_32 state04;
mov state_40 state05;
mov state_48 state06;
mov state_56 state07;
mov state_64 state08;
mov state_72 state09;
mov state_80 state10;
mov state_88 state11;
mov state_96 state12;
mov state_104 state13;
mov state_112 state14;
mov state_120 state15;
mov state_128 state16;
mov state_136 state17;
mov state_144 state18;
mov state_152 state19;
mov state_160 state20;
mov state_168 state21;
mov state_176 state22;
mov state_184 state23;
mov state_192 state24;

(*   %0 = load i64, i64* %state, align 4, !tbaa !4 *)
mov v0 state_0;
(*   %arrayidx5.1.i = getelementptr i64, i64* %state, i32 5 *)
(*   %1 = load i64, i64* %arrayidx5.1.i, align 4, !tbaa !4 *)
mov v1 state_40;
(*   %xor.1.i = xor i64 %1, %0 *)
(* You may need to modify here *)
xor uint64 v_xor_1_i v1 v0;
(*   %arrayidx5.2.i = getelementptr i64, i64* %state, i32 10 *)
(*   %2 = load i64, i64* %arrayidx5.2.i, align 4, !tbaa !4 *)
mov v2 state_80;
(*   %xor.2.i = xor i64 %xor.1.i, %2 *)
(* You may need to modify here *)
xor uint64 v_xor_2_i v_xor_1_i v2;
(*   %arrayidx5.3.i = getelementptr i64, i64* %state, i32 15 *)
(*   %3 = load i64, i64* %arrayidx5.3.i, align 4, !tbaa !4 *)
mov v3 state_120;
(*   %xor.3.i = xor i64 %xor.2.i, %3 *)
(* You may need to modify here *)
xor uint64 v_xor_3_i v_xor_2_i v3;
(*   %arrayidx5.4.i = getelementptr i64, i64* %state, i32 20 *)
(*   %4 = load i64, i64* %arrayidx5.4.i, align 4, !tbaa !4 *)
mov v4 state_160;
(*   %xor.4.i = xor i64 %xor.3.i, %4 *)
(* You may need to modify here *)
xor uint64 v_xor_4_i v_xor_3_i v4;

(* mov output00 v_xor_4_i; C[0] *)

(*   %arrayidx5.187.i = getelementptr inbounds i64, i64* %state, i32 1 *)
(*   %5 = load i64, i64* %arrayidx5.187.i, align 4, !tbaa !4 *)
mov v5 state_8;
(*   %arrayidx5.1.1.i = getelementptr inbounds i64, i64* %state, i32 6 *)
(*   %6 = load i64, i64* %arrayidx5.1.1.i, align 4, !tbaa !4 *)
mov v6 state_48;
(*   %xor.1.1.i = xor i64 %6, %5 *)
(* You may need to modify here *)
xor uint64 v_xor_1_1_i v6 v5;
(*   %arrayidx5.2.1.i = getelementptr inbounds i64, i64* %state, i32 11 *)
(*   %7 = load i64, i64* %arrayidx5.2.1.i, align 4, !tbaa !4 *)
mov v7 state_88;
(*   %xor.2.1.i = xor i64 %xor.1.1.i, %7 *)
(* You may need to modify here *)
xor uint64 v_xor_2_1_i v_xor_1_1_i v7;
(*   %arrayidx5.3.1.i = getelementptr inbounds i64, i64* %state, i32 16 *)
(*   %8 = load i64, i64* %arrayidx5.3.1.i, align 4, !tbaa !4 *)
mov v8 state_128;
(*   %xor.3.1.i = xor i64 %xor.2.1.i, %8 *)
(* You may need to modify here *)
xor uint64 v_xor_3_1_i v_xor_2_1_i v8;
(*   %arrayidx5.4.1.i = getelementptr inbounds i64, i64* %state, i32 21 *)
(*   %9 = load i64, i64* %arrayidx5.4.1.i, align 4, !tbaa !4 *)
mov v9 state_168;
(*   %xor.4.1.i = xor i64 %xor.3.1.i, %9 *)
(* You may need to modify here *)
xor uint64 v_xor_4_1_i v_xor_3_1_i v9;

(* mov output01 v_xor_4_1_i; C[1] *)

(*   %arrayidx5.288.i = getelementptr inbounds i64, i64* %state, i32 2 *)
(*   %10 = load i64, i64* %arrayidx5.288.i, align 4, !tbaa !4 *)
mov v10 state_16;
(*   %arrayidx5.1.2.i = getelementptr inbounds i64, i64* %state, i32 7 *)
(*   %11 = load i64, i64* %arrayidx5.1.2.i, align 4, !tbaa !4 *)
mov v11 state_56;
(*   %xor.1.2.i = xor i64 %11, %10 *)
(* You may need to modify here *)
xor uint64 v_xor_1_2_i v11 v10;
(*   %arrayidx5.2.2.i = getelementptr inbounds i64, i64* %state, i32 12 *)
(*   %12 = load i64, i64* %arrayidx5.2.2.i, align 4, !tbaa !4 *)
mov v12 state_96;
(*   %xor.2.2.i = xor i64 %xor.1.2.i, %12 *)
(* You may need to modify here *)
xor uint64 v_xor_2_2_i v_xor_1_2_i v12;
(*   %arrayidx5.3.2.i = getelementptr inbounds i64, i64* %state, i32 17 *)
(*   %13 = load i64, i64* %arrayidx5.3.2.i, align 4, !tbaa !4 *)
mov v13 state_136;
(*   %xor.3.2.i = xor i64 %xor.2.2.i, %13 *)
(* You may need to modify here *)
xor uint64 v_xor_3_2_i v_xor_2_2_i v13;
(*   %arrayidx5.4.2.i = getelementptr inbounds i64, i64* %state, i32 22 *)
(*   %14 = load i64, i64* %arrayidx5.4.2.i, align 4, !tbaa !4 *)
mov v14 state_176;
(*   %xor.4.2.i = xor i64 %xor.3.2.i, %14 *)
(* You may need to modify here *)
xor uint64 v_xor_4_2_i v_xor_3_2_i v14;

(* mov output02 v_xor_4_2_i; C[2] *)

(*   %arrayidx5.389.i = getelementptr inbounds i64, i64* %state, i32 3 *)
(*   %15 = load i64, i64* %arrayidx5.389.i, align 4, !tbaa !4 *)
mov v15 state_24;
(*   %arrayidx5.1.3.i = getelementptr inbounds i64, i64* %state, i32 8 *)
(*   %16 = load i64, i64* %arrayidx5.1.3.i, align 4, !tbaa !4 *)
mov v16 state_64;
(*   %xor.1.3.i = xor i64 %16, %15 *)
(* You may need to modify here *)
xor uint64 v_xor_1_3_i v16 v15;
(*   %arrayidx5.2.3.i = getelementptr inbounds i64, i64* %state, i32 13 *)
(*   %17 = load i64, i64* %arrayidx5.2.3.i, align 4, !tbaa !4 *)
mov v17 state_104;
(*   %xor.2.3.i = xor i64 %xor.1.3.i, %17 *)
(* You may need to modify here *)
xor uint64 v_xor_2_3_i v_xor_1_3_i v17;
(*   %arrayidx5.3.3.i = getelementptr inbounds i64, i64* %state, i32 18 *)
(*   %18 = load i64, i64* %arrayidx5.3.3.i, align 4, !tbaa !4 *)
mov v18 state_144;
(*   %xor.3.3.i = xor i64 %xor.2.3.i, %18 *)
(* You may need to modify here *)
xor uint64 v_xor_3_3_i v_xor_2_3_i v18;
(*   %arrayidx5.4.3.i = getelementptr inbounds i64, i64* %state, i32 23 *)
(*   %19 = load i64, i64* %arrayidx5.4.3.i, align 4, !tbaa !4 *)
mov v19 state_184;
(*   %xor.4.3.i = xor i64 %xor.3.3.i, %19 *)
(* You may need to modify here *)
xor uint64 v_xor_4_3_i v_xor_3_3_i v19;

(* mov output03 v_xor_4_3_i; C[3] *)

(*   %arrayidx5.490.i = getelementptr inbounds i64, i64* %state, i32 4 *)
(*   %20 = load i64, i64* %arrayidx5.490.i, align 4, !tbaa !4 *)
mov v20 state_32;
(*   %arrayidx5.1.4.i = getelementptr inbounds i64, i64* %state, i32 9 *)
(*   %21 = load i64, i64* %arrayidx5.1.4.i, align 4, !tbaa !4 *)
mov v21 state_72;
(*   %xor.1.4.i = xor i64 %21, %20 *)
(* You may need to modify here *)
xor uint64 v_xor_1_4_i v21 v20;
(*   %arrayidx5.2.4.i = getelementptr inbounds i64, i64* %state, i32 14 *)
(*   %22 = load i64, i64* %arrayidx5.2.4.i, align 4, !tbaa !4 *)
mov v22 state_112;
(*   %xor.2.4.i = xor i64 %xor.1.4.i, %22 *)
(* You may need to modify here *)
xor uint64 v_xor_2_4_i v_xor_1_4_i v22;
(*   %arrayidx5.3.4.i = getelementptr inbounds i64, i64* %state, i32 19 *)
(*   %23 = load i64, i64* %arrayidx5.3.4.i, align 4, !tbaa !4 *)
mov v23 state_152;
(*   %xor.3.4.i = xor i64 %xor.2.4.i, %23 *)
(* You may need to modify here *)
xor uint64 v_xor_3_4_i v_xor_2_4_i v23;
(*   %arrayidx5.4.4.i = getelementptr inbounds i64, i64* %state, i32 24 *)
(*   %24 = load i64, i64* %arrayidx5.4.4.i, align 4, !tbaa !4 *)
mov v24 state_192;
(*   %xor.4.4.i = xor i64 %xor.3.4.i, %24 *)
(* You may need to modify here *)
xor uint64 v_xor_4_4_i v_xor_3_4_i v24;

(* mov output04 v_xor_4_4_i; C[4] *)

(*   %shl.i = shl i64 %xor.4.1.i, 1 *)
shls discard_0 v_shl_i v_xor_4_1_i 1;
(*   %shr.i = lshr i64 %xor.4.1.i, 63 *)
(* You may need to modify here *)
split v_shr_i tmp_to_be_used v_xor_4_1_i 63;
(*   %xor1968.i = or i64 %shl.i, %shr.i *)
(* You may need to modify here *)
or uint64 v_xor1968_i v_shl_i v_shr_i;
(*   %xor23.i = xor i64 %xor.4.4.i, %xor1968.i *)
(* You may need to modify here *)
xor uint64 v_xor23_i v_xor_4_4_i v_xor1968_i;

(* mov output00 v_xor23_i; D[0] *)

(*   %shl.1.i = shl i64 %xor.4.2.i, 1 *)
shls discard_1 v_shl_1_i v_xor_4_2_i 1;
(*   %shr.1.i = lshr i64 %xor.4.2.i, 63 *)
(* You may need to modify here *)
split v_shr_1_i tmp_to_be_used v_xor_4_2_i 63;
(*   %xor1968.1.i = or i64 %shl.1.i, %shr.1.i *)
(* You may need to modify here *)
or uint64 v_xor1968_1_i v_shl_1_i v_shr_1_i;
(*   %xor23.1.i = xor i64 %xor1968.1.i, %xor.4.i *)
(* You may need to modify here *)
xor uint64 v_xor23_1_i v_xor1968_1_i v_xor_4_i;

(* mov output01 v_xor23_1_i; D[1] *)

(*   %shl.2.i = shl i64 %xor.4.3.i, 1 *)
shls discard_2 v_shl_2_i v_xor_4_3_i 1;
(*   %shr.2.i = lshr i64 %xor.4.3.i, 63 *)
(* You may need to modify here *)
split v_shr_2_i tmp_to_be_used v_xor_4_3_i 63;
(*   %xor1968.2.i = or i64 %shl.2.i, %shr.2.i *)
(* You may need to modify here *)
or uint64 v_xor1968_2_i v_shl_2_i v_shr_2_i;
(*   %xor23.2.i = xor i64 %xor1968.2.i, %xor.4.1.i *)
(* You may need to modify here *)
xor uint64 v_xor23_2_i v_xor1968_2_i v_xor_4_1_i;

(* mov output02 v_xor23_2_i; D[2] *)

(*   %shl.3.i = shl i64 %xor.4.4.i, 1 *)
shls discard_3 v_shl_3_i v_xor_4_4_i 1;
(*   %shr.3.i = lshr i64 %xor.4.4.i, 63 *)
(* You may need to modify here *)
split v_shr_3_i tmp_to_be_used v_xor_4_4_i 63;
(*   %xor1968.3.i = or i64 %shl.3.i, %shr.3.i *)
(* You may need to modify here *)
or uint64 v_xor1968_3_i v_shl_3_i v_shr_3_i;
(*   %xor23.3.i = xor i64 %xor1968.3.i, %xor.4.2.i *)
(* You may need to modify here *)
xor uint64 v_xor23_3_i v_xor1968_3_i v_xor_4_2_i;

(* mov output03 v_xor23_3_i; D[3] *)

(*   %shl.4.i = shl i64 %xor.4.i, 1 *)
shls discard_4 v_shl_4_i v_xor_4_i 1;
(*   %shr.4.i = lshr i64 %xor.4.i, 63 *)
(* You may need to modify here *)
split v_shr_4_i tmp_to_be_used v_xor_4_i 63;
(*   %xor1968.4.i = or i64 %shl.4.i, %shr.4.i *)
(* You may need to modify here *)
or uint64 v_xor1968_4_i v_shl_4_i v_shr_4_i;
(*   %xor23.4.i = xor i64 %xor.4.3.i, %xor1968.4.i *)
(* You may need to modify here *)
xor uint64 v_xor23_4_i v_xor_4_3_i v_xor1968_4_i;

(* mov output04 v_xor23_4_i; D[4] *)

(*   %xor40.i = xor i64 %xor23.i, %0 *)
(* You may need to modify here *)
xor uint64 v_xor40_i v_xor23_i v0;
(*   %xor40.1.i = xor i64 %xor23.i, %1 *)
(* You may need to modify here *)
xor uint64 v_xor40_1_i v_xor23_i v1;
(*   %xor40.2.i = xor i64 %xor23.i, %2 *)
(* You may need to modify here *)
xor uint64 v_xor40_2_i v_xor23_i v2;
(*   %xor40.3.i = xor i64 %xor23.i, %3 *)
(* You may need to modify here *)
xor uint64 v_xor40_3_i v_xor23_i v3;
(*   %xor40.4.i = xor i64 %xor23.i, %4 *)
(* You may need to modify here *)
xor uint64 v_xor40_4_i v_xor23_i v4;

(* A[][0] *)

(*   %xor40.180.i = xor i64 %xor23.1.i, %5 *)
(* You may need to modify here *)
xor uint64 v_xor40_180_i v_xor23_1_i v5;
(*   %xor40.1.1.i = xor i64 %xor23.1.i, %6 *)
(* You may need to modify here *)
xor uint64 v_xor40_1_1_i v_xor23_1_i v6;
(*   %xor40.2.1.i = xor i64 %xor23.1.i, %7 *)
(* You may need to modify here *)
xor uint64 v_xor40_2_1_i v_xor23_1_i v7;
(*   %xor40.3.1.i = xor i64 %xor23.1.i, %8 *)
(* You may need to modify here *)
xor uint64 v_xor40_3_1_i v_xor23_1_i v8;
(*   %xor40.4.1.i = xor i64 %xor23.1.i, %9 *)
(* You may need to modify here *)
xor uint64 v_xor40_4_1_i v_xor23_1_i v9;

(* A[][1] *)

(*   %xor40.282.i = xor i64 %xor23.2.i, %10 *)
(* You may need to modify here *)
xor uint64 v_xor40_282_i v_xor23_2_i v10;
(*   %xor40.1.2.i = xor i64 %xor23.2.i, %11 *)
(* You may need to modify here *)
xor uint64 v_xor40_1_2_i v_xor23_2_i v11;
(*   %xor40.2.2.i = xor i64 %xor23.2.i, %12 *)
(* You may need to modify here *)
xor uint64 v_xor40_2_2_i v_xor23_2_i v12;
(*   %xor40.3.2.i = xor i64 %xor23.2.i, %13 *)
(* You may need to modify here *)
xor uint64 v_xor40_3_2_i v_xor23_2_i v13;
(*   %xor40.4.2.i = xor i64 %xor23.2.i, %14 *)
(* You may need to modify here *)
xor uint64 v_xor40_4_2_i v_xor23_2_i v14;

(* A[][2] *)

(*   %xor40.384.i = xor i64 %xor23.3.i, %15 *)
(* You may need to modify here *)
xor uint64 v_xor40_384_i v_xor23_3_i v15;
(*   %xor40.1.3.i = xor i64 %xor23.3.i, %16 *)
(* You may need to modify here *)
xor uint64 v_xor40_1_3_i v_xor23_3_i v16;
(*   %xor40.2.3.i = xor i64 %xor23.3.i, %17 *)
(* You may need to modify here *)
xor uint64 v_xor40_2_3_i v_xor23_3_i v17;
(*   %xor40.3.3.i = xor i64 %xor23.3.i, %18 *)
(* You may need to modify here *)
xor uint64 v_xor40_3_3_i v_xor23_3_i v18;
(*   %xor40.4.3.i = xor i64 %xor23.3.i, %19 *)
(* You may need to modify here *)
xor uint64 v_xor40_4_3_i v_xor23_3_i v19;

(* A[][3] *)

(*   %xor40.486.i = xor i64 %xor23.4.i, %20 *)
(* You may need to modify here *)
xor uint64 v_xor40_486_i v_xor23_4_i v20;
(*   %xor40.1.4.i = xor i64 %21, %xor23.4.i *)
(* You may need to modify here *)
xor uint64 v_xor40_1_4_i v21 v_xor23_4_i;
(*   %xor40.2.4.i = xor i64 %22, %xor23.4.i *)
(* You may need to modify here *)
xor uint64 v_xor40_2_4_i v22 v_xor23_4_i;
(*   %xor40.3.4.i = xor i64 %23, %xor23.4.i *)
(* You may need to modify here *)
xor uint64 v_xor40_3_4_i v23 v_xor23_4_i;
(*   %xor40.4.4.i = xor i64 %24, %xor23.4.i *)
(* You may need to modify here *)
xor uint64 v_xor40_4_4_i v24 v_xor23_4_i;
(*   %shl.1.i11 = shl i64 %xor40.1.i, 36 *)

(* A[][4] *)

(* mov output00 v_xor40_i; C[0] *)

shls discard_5 v_shl_1_i11 v_xor40_1_i 36;
(*   %shr.1.i12 = lshr i64 %xor40.1.i, 28 *)
(* You may need to modify here *)
split v_shr_1_i12 tmp_to_be_used v_xor40_1_i 28;
(*   %xor.1104.i = or i64 %shr.1.i12, %shl.1.i11 *)
(* You may need to modify here *)
or uint64 v_xor_1104_i v_shr_1_i12 v_shl_1_i11;
(*   %shl.2.i13 = shl i64 %xor40.2.i, 3 *)
shls discard_6 v_shl_2_i13 v_xor40_2_i 3;
(*   %shr.2.i14 = lshr i64 %xor40.2.i, 61 *)
(* You may need to modify here *)
split v_shr_2_i14 tmp_to_be_used v_xor40_2_i 61;
(*   %xor.2105.i = or i64 %shr.2.i14, %shl.2.i13 *)
(* You may need to modify here *)
or uint64 v_xor_2105_i v_shr_2_i14 v_shl_2_i13;
(*   %shl.3.i15 = shl i64 %xor40.3.i, 41 *)
shls discard_7 v_shl_3_i15 v_xor40_3_i 41;
(*   %shr.3.i16 = lshr i64 %xor40.3.i, 23 *)
(* You may need to modify here *)
split v_shr_3_i16 tmp_to_be_used v_xor40_3_i 23;
(*   %xor.3106.i = or i64 %shr.3.i16, %shl.3.i15 *)
(* You may need to modify here *)
or uint64 v_xor_3106_i v_shr_3_i16 v_shl_3_i15;
(*   %shl.4.i17 = shl i64 %xor40.4.i, 18 *)
shls discard_8 v_shl_4_i17 v_xor40_4_i 18;
(*   %shr.4.i18 = lshr i64 %xor40.4.i, 46 *)
(* You may need to modify here *)
split v_shr_4_i18 tmp_to_be_used v_xor40_4_i 46;
(*   %xor.4107.i = or i64 %shr.4.i18, %shl.4.i17 *)
(* You may need to modify here *)
or uint64 v_xor_4107_i v_shr_4_i18 v_shl_4_i17;
(*   %shl.163.i = shl i64 %xor40.180.i, 1 *)
shls discard_9 v_shl_163_i v_xor40_180_i 1;
(*   %shr.166.i = lshr i64 %xor40.180.i, 63 *)
(* You may need to modify here *)
split v_shr_166_i tmp_to_be_used v_xor40_180_i 63;
(*   %xor.167108.i = or i64 %shr.166.i, %shl.163.i *)
(* You may need to modify here *)
or uint64 v_xor_167108_i v_shr_166_i v_shl_163_i;
(*   %shl.1.1.i = shl i64 %xor40.1.1.i, 44 *)
shls discard_10 v_shl_1_1_i v_xor40_1_1_i 44;
(*   %shr.1.1.i = lshr i64 %xor40.1.1.i, 20 *)
(* You may need to modify here *)
split v_shr_1_1_i tmp_to_be_used v_xor40_1_1_i 20;
(*   %xor.1.1109.i = or i64 %shr.1.1.i, %shl.1.1.i *)
(* You may need to modify here *)
or uint64 v_xor_1_1109_i v_shr_1_1_i v_shl_1_1_i;

(* mov output01 v_xor_1_1109_i; C[1] *)

(*   %shl.2.1.i = shl i64 %xor40.2.1.i, 10 *)
shls discard_11 v_shl_2_1_i v_xor40_2_1_i 10;
(*   %shr.2.1.i = lshr i64 %xor40.2.1.i, 54 *)
(* You may need to modify here *)
split v_shr_2_1_i tmp_to_be_used v_xor40_2_1_i 54;
(*   %xor.2.1110.i = or i64 %shr.2.1.i, %shl.2.1.i *)
(* You may need to modify here *)
or uint64 v_xor_2_1110_i v_shr_2_1_i v_shl_2_1_i;
(*   %shl.3.1.i = shl i64 %xor40.3.1.i, 45 *)
shls discard_12 v_shl_3_1_i v_xor40_3_1_i 45;
(*   %shr.3.1.i = lshr i64 %xor40.3.1.i, 19 *)
(* You may need to modify here *)
split v_shr_3_1_i tmp_to_be_used v_xor40_3_1_i 19;
(*   %xor.3.1111.i = or i64 %shr.3.1.i, %shl.3.1.i *)
(* You may need to modify here *)
or uint64 v_xor_3_1111_i v_shr_3_1_i v_shl_3_1_i;
(*   %shl.4.1.i = shl i64 %xor40.4.1.i, 2 *)
shls discard_13 v_shl_4_1_i v_xor40_4_1_i 2;
(*   %shr.4.1.i = lshr i64 %xor40.4.1.i, 62 *)
(* You may need to modify here *)
split v_shr_4_1_i tmp_to_be_used v_xor40_4_1_i 62;
(*   %xor.4.1112.i = or i64 %shr.4.1.i, %shl.4.1.i *)
(* You may need to modify here *)
or uint64 v_xor_4_1112_i v_shr_4_1_i v_shl_4_1_i;
(*   %shl.274.i = shl i64 %xor40.282.i, 62 *)
shls discard_14 v_shl_274_i v_xor40_282_i 62;
(*   %shr.277.i = lshr i64 %xor40.282.i, 2 *)
(* You may need to modify here *)
split v_shr_277_i tmp_to_be_used v_xor40_282_i 2;
(*   %xor.278113.i = or i64 %shr.277.i, %shl.274.i *)
(* You may need to modify here *)
or uint64 v_xor_278113_i v_shr_277_i v_shl_274_i;
(*   %shl.1.2.i = shl i64 %xor40.1.2.i, 6 *)
shls discard_15 v_shl_1_2_i v_xor40_1_2_i 6;
(*   %shr.1.2.i = lshr i64 %xor40.1.2.i, 58 *)
(* You may need to modify here *)
split v_shr_1_2_i tmp_to_be_used v_xor40_1_2_i 58;
(*   %xor.1.2114.i = or i64 %shr.1.2.i, %shl.1.2.i *)
(* You may need to modify here *)
or uint64 v_xor_1_2114_i v_shr_1_2_i v_shl_1_2_i;
(*   %shl.2.2.i = shl i64 %xor40.2.2.i, 43 *)
shls discard_16 v_shl_2_2_i v_xor40_2_2_i 43;
(*   %shr.2.2.i = lshr i64 %xor40.2.2.i, 21 *)
(* You may need to modify here *)
split v_shr_2_2_i tmp_to_be_used v_xor40_2_2_i 21;
(*   %xor.2.2115.i = or i64 %shr.2.2.i, %shl.2.2.i *)
(* You may need to modify here *)
or uint64 v_xor_2_2115_i v_shr_2_2_i v_shl_2_2_i;

(* mov output02 v_xor_2_2115_i; C[2] *)

(*   %shl.3.2.i = shl i64 %xor40.3.2.i, 15 *)
shls discard_17 v_shl_3_2_i v_xor40_3_2_i 15;
(*   %shr.3.2.i = lshr i64 %xor40.3.2.i, 49 *)
(* You may need to modify here *)
split v_shr_3_2_i tmp_to_be_used v_xor40_3_2_i 49;
(*   %xor.3.2116.i = or i64 %shr.3.2.i, %shl.3.2.i *)
(* You may need to modify here *)
or uint64 v_xor_3_2116_i v_shr_3_2_i v_shl_3_2_i;
(*   %shl.4.2.i = shl i64 %xor40.4.2.i, 61 *)
shls discard_18 v_shl_4_2_i v_xor40_4_2_i 61;
(*   %shr.4.2.i = lshr i64 %xor40.4.2.i, 3 *)
(* You may need to modify here *)
split v_shr_4_2_i tmp_to_be_used v_xor40_4_2_i 3;
(*   %xor.4.2117.i = or i64 %shr.4.2.i, %shl.4.2.i *)
(* You may need to modify here *)
or uint64 v_xor_4_2117_i v_shr_4_2_i v_shl_4_2_i;
(*   %shl.385.i = shl i64 %xor40.384.i, 28 *)
shls discard_19 v_shl_385_i v_xor40_384_i 28;
(*   %shr.388.i = lshr i64 %xor40.384.i, 36 *)
(* You may need to modify here *)
split v_shr_388_i tmp_to_be_used v_xor40_384_i 36;
(*   %xor.389118.i = or i64 %shr.388.i, %shl.385.i *)
(* You may need to modify here *)
or uint64 v_xor_389118_i v_shr_388_i v_shl_385_i;
(*   %shl.1.3.i = shl i64 %xor40.1.3.i, 55 *)
shls discard_20 v_shl_1_3_i v_xor40_1_3_i 55;
(*   %shr.1.3.i = lshr i64 %xor40.1.3.i, 9 *)
(* You may need to modify here *)
split v_shr_1_3_i tmp_to_be_used v_xor40_1_3_i 9;
(*   %xor.1.3119.i = or i64 %shr.1.3.i, %shl.1.3.i *)
(* You may need to modify here *)
or uint64 v_xor_1_3119_i v_shr_1_3_i v_shl_1_3_i;
(*   %shl.2.3.i = shl i64 %xor40.2.3.i, 25 *)
shls discard_21 v_shl_2_3_i v_xor40_2_3_i 25;
(*   %shr.2.3.i = lshr i64 %xor40.2.3.i, 39 *)
(* You may need to modify here *)
split v_shr_2_3_i tmp_to_be_used v_xor40_2_3_i 39;
(*   %xor.2.3120.i = or i64 %shr.2.3.i, %shl.2.3.i *)
(* You may need to modify here *)
or uint64 v_xor_2_3120_i v_shr_2_3_i v_shl_2_3_i;
(*   %shl.3.3.i = shl i64 %xor40.3.3.i, 21 *)
shls discard_22 v_shl_3_3_i v_xor40_3_3_i 21;
(*   %shr.3.3.i = lshr i64 %xor40.3.3.i, 43 *)
(* You may need to modify here *)
split v_shr_3_3_i tmp_to_be_used v_xor40_3_3_i 43;
(*   %xor.3.3121.i = or i64 %shr.3.3.i, %shl.3.3.i *)
(* You may need to modify here *)
or uint64 v_xor_3_3121_i v_shr_3_3_i v_shl_3_3_i;

(* mov output03 v_xor_3_3121_i; C[3] *)

(*   %shl.4.3.i = shl i64 %xor40.4.3.i, 56 *)
shls discard_23 v_shl_4_3_i v_xor40_4_3_i 56;
(*   %shr.4.3.i = lshr i64 %xor40.4.3.i, 8 *)
(* You may need to modify here *)
split v_shr_4_3_i tmp_to_be_used v_xor40_4_3_i 8;
(*   %xor.4.3122.i = or i64 %shr.4.3.i, %shl.4.3.i *)
(* You may need to modify here *)
or uint64 v_xor_4_3122_i v_shr_4_3_i v_shl_4_3_i;
(*   %shl.496.i = shl i64 %xor40.486.i, 27 *)
shls discard_24 v_shl_496_i v_xor40_486_i 27;
(*   %shr.499.i = lshr i64 %xor40.486.i, 37 *)
(* You may need to modify here *)
split v_shr_499_i tmp_to_be_used v_xor40_486_i 37;
(*   %xor.4100123.i = or i64 %shr.499.i, %shl.496.i *)
(* You may need to modify here *)
or uint64 v_xor_4100123_i v_shr_499_i v_shl_496_i;
(*   %shl.1.4.i = shl i64 %xor40.1.4.i, 20 *)
shls discard_25 v_shl_1_4_i v_xor40_1_4_i 20;
(*   %shr.1.4.i = lshr i64 %xor40.1.4.i, 44 *)
(* You may need to modify here *)
split v_shr_1_4_i tmp_to_be_used v_xor40_1_4_i 44;
(*   %xor.1.4124.i = or i64 %shr.1.4.i, %shl.1.4.i *)
(* You may need to modify here *)
or uint64 v_xor_1_4124_i v_shr_1_4_i v_shl_1_4_i;
(*   %shl.2.4.i = shl i64 %xor40.2.4.i, 39 *)
shls discard_26 v_shl_2_4_i v_xor40_2_4_i 39;
(*   %shr.2.4.i = lshr i64 %xor40.2.4.i, 25 *)
(* You may need to modify here *)
split v_shr_2_4_i tmp_to_be_used v_xor40_2_4_i 25;
(*   %xor.2.4125.i = or i64 %shr.2.4.i, %shl.2.4.i *)
(* You may need to modify here *)
or uint64 v_xor_2_4125_i v_shr_2_4_i v_shl_2_4_i;
(*   %shl.3.4.i = shl i64 %xor40.3.4.i, 8 *)
shls discard_27 v_shl_3_4_i v_xor40_3_4_i 8;
(*   %shr.3.4.i = lshr i64 %xor40.3.4.i, 56 *)
(* You may need to modify here *)
split v_shr_3_4_i tmp_to_be_used v_xor40_3_4_i 56;
(*   %xor.3.4126.i = or i64 %shr.3.4.i, %shl.3.4.i *)
(* You may need to modify here *)
or uint64 v_xor_3_4126_i v_shr_3_4_i v_shl_3_4_i;
(*   %shl.4.4.i = shl i64 %xor40.4.4.i, 14 *)
shls discard_28 v_shl_4_4_i v_xor40_4_4_i 14;
(*   %shr.4.4.i = lshr i64 %xor40.4.4.i, 50 *)
(* You may need to modify here *)
split v_shr_4_4_i tmp_to_be_used v_xor40_4_4_i 50;
(*   %xor.4.4127.i = or i64 %shr.4.4.i, %shl.4.4.i *)
(* You may need to modify here *)
or uint64 v_xor_4_4127_i v_shr_4_4_i v_shl_4_4_i;

(* mov output04 v_xor_4_4127_i; C[4] *)

(*   store i64 %xor.3106.i, i64* %arrayidx5.4.3.i, align 4, !tbaa !4 *)
mov state_184 v_xor_3106_i;
(*   store i64 %xor.4.1112.i, i64* %arrayidx5.4.4.i, align 4, !tbaa !4 *)
mov state_192 v_xor_4_1112_i;
(*   store i64 %xor.278113.i, i64* %arrayidx5.4.i, align 4, !tbaa !4 *)
mov state_160 v_xor_278113_i;
(*   store i64 %xor.1.3119.i, i64* %arrayidx5.4.1.i, align 4, !tbaa !4 *)
mov state_168 v_xor_1_3119_i;
(*   store i64 %xor.2.4125.i, i64* %arrayidx5.4.2.i, align 4, !tbaa !4 *)
mov state_176 v_xor_2_4125_i;
(*   %neg.i = xor i64 %xor.1.1109.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_i v_xor_1_1109_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.i = and i64 %xor.2.2115.i, %neg.i *)
(* You may need to modify here *)
and uint64 v_and_i v_xor_2_2115_i v_neg_i;
(*   %xor.i6 = xor i64 %and.i, %xor40.i *)
(* You may need to modify here *)
xor uint64 v_xor_i6 v_and_i v_xor40_i;
(*   %neg.1.i = xor i64 %xor.2.2115.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_1_i v_xor_2_2115_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.1.i = and i64 %xor.3.3121.i, %neg.1.i *)
(* You may need to modify here *)
and uint64 v_and_1_i v_xor_3_3121_i v_neg_1_i;
(*   %xor.1.i7 = xor i64 %and.1.i, %xor.1.1109.i *)
(* You may need to modify here *)
xor uint64 v_xor_1_i7 v_and_1_i v_xor_1_1109_i;
(*   %neg.2.i = xor i64 %xor.3.3121.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_2_i v_xor_3_3121_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.2.i = and i64 %xor.4.4127.i, %neg.2.i *)
(* You may need to modify here *)
and uint64 v_and_2_i v_xor_4_4127_i v_neg_2_i;
(*   %xor.2.i8 = xor i64 %and.2.i, %xor.2.2115.i *)
(* You may need to modify here *)
xor uint64 v_xor_2_i8 v_and_2_i v_xor_2_2115_i;
(*   %neg.3.i = xor i64 %xor.4.4127.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_3_i v_xor_4_4127_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.3.i = and i64 %xor40.i, %neg.3.i *)
(* You may need to modify here *)
and uint64 v_and_3_i v_xor40_i v_neg_3_i;
(*   %xor.3.i9 = xor i64 %and.3.i, %xor.3.3121.i *)
(* You may need to modify here *)
xor uint64 v_xor_3_i9 v_and_3_i v_xor_3_3121_i;
(*   %neg.4.i = xor i64 %xor40.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_4_i v_xor40_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.4.i = and i64 %xor.1.1109.i, %neg.4.i *)
(* You may need to modify here *)
and uint64 v_and_4_i v_xor_1_1109_i v_neg_4_i;
(*   %xor.4.i10 = xor i64 %xor.4.4127.i, %and.4.i *)
(* You may need to modify here *)
xor uint64 v_xor_4_i10 v_xor_4_4127_i v_and_4_i;
(*   store i64 %xor.1.i7, i64* %arrayidx5.187.i, align 4, !tbaa !4 *)
mov state_8 v_xor_1_i7;
(*   store i64 %xor.2.i8, i64* %arrayidx5.288.i, align 4, !tbaa !4 *)
mov state_16 v_xor_2_i8;
(*   store i64 %xor.3.i9, i64* %arrayidx5.389.i, align 4, !tbaa !4 *)
mov state_24 v_xor_3_i9;
(*   store i64 %xor.4.i10, i64* %arrayidx5.490.i, align 4, !tbaa !4 *)
mov state_32 v_xor_4_i10;
(*   %neg.i.1 = xor i64 %xor.1.4124.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_i_1 v_xor_1_4124_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.i.1 = and i64 %xor.2105.i, %neg.i.1 *)
(* You may need to modify here *)
and uint64 v_and_i_1 v_xor_2105_i v_neg_i_1;
(*   %xor.i6.1 = xor i64 %and.i.1, %xor.389118.i *)
(* You may need to modify here *)
xor uint64 v_xor_i6_1 v_and_i_1 v_xor_389118_i;
(*   %neg.1.i.1 = xor i64 %xor.2105.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_1_i_1 v_xor_2105_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.1.i.1 = and i64 %xor.3.1111.i, %neg.1.i.1 *)
(* You may need to modify here *)
and uint64 v_and_1_i_1 v_xor_3_1111_i v_neg_1_i_1;
(*   %xor.1.i7.1 = xor i64 %and.1.i.1, %xor.1.4124.i *)
(* You may need to modify here *)
xor uint64 v_xor_1_i7_1 v_and_1_i_1 v_xor_1_4124_i;
(*   %neg.2.i.1 = xor i64 %xor.3.1111.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_2_i_1 v_xor_3_1111_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.2.i.1 = and i64 %xor.4.2117.i, %neg.2.i.1 *)
(* You may need to modify here *)
and uint64 v_and_2_i_1 v_xor_4_2117_i v_neg_2_i_1;
(*   %xor.2.i8.1 = xor i64 %and.2.i.1, %xor.2105.i *)
(* You may need to modify here *)
xor uint64 v_xor_2_i8_1 v_and_2_i_1 v_xor_2105_i;
(*   %neg.3.i.1 = xor i64 %xor.4.2117.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_3_i_1 v_xor_4_2117_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.3.i.1 = and i64 %xor.389118.i, %neg.3.i.1 *)
(* You may need to modify here *)
and uint64 v_and_3_i_1 v_xor_389118_i v_neg_3_i_1;
(*   %xor.3.i9.1 = xor i64 %and.3.i.1, %xor.3.1111.i *)
(* You may need to modify here *)
xor uint64 v_xor_3_i9_1 v_and_3_i_1 v_xor_3_1111_i;
(*   %neg.4.i.1 = xor i64 %xor.389118.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_4_i_1 v_xor_389118_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.4.i.1 = and i64 %xor.1.4124.i, %neg.4.i.1 *)
(* You may need to modify here *)
and uint64 v_and_4_i_1 v_xor_1_4124_i v_neg_4_i_1;
(*   %xor.4.i10.1 = xor i64 %xor.4.2117.i, %and.4.i.1 *)
(* You may need to modify here *)
xor uint64 v_xor_4_i10_1 v_xor_4_2117_i v_and_4_i_1;
(*   store i64 %xor.i6.1, i64* %arrayidx5.1.i, align 4, !tbaa !4 *)
mov state_40 v_xor_i6_1;
(*   store i64 %xor.1.i7.1, i64* %arrayidx5.1.1.i, align 4, !tbaa !4 *)
mov state_48 v_xor_1_i7_1;
(*   store i64 %xor.2.i8.1, i64* %arrayidx5.1.2.i, align 4, !tbaa !4 *)
mov state_56 v_xor_2_i8_1;
(*   store i64 %xor.3.i9.1, i64* %arrayidx5.1.3.i, align 4, !tbaa !4 *)
mov state_64 v_xor_3_i9_1;
(*   store i64 %xor.4.i10.1, i64* %arrayidx5.1.4.i, align 4, !tbaa !4 *)
mov state_72 v_xor_4_i10_1;
(*   %neg.i.2 = xor i64 %xor.1.2114.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_i_2 v_xor_1_2114_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.i.2 = and i64 %xor.2.3120.i, %neg.i.2 *)
(* You may need to modify here *)
and uint64 v_and_i_2 v_xor_2_3120_i v_neg_i_2;
(*   %xor.i6.2 = xor i64 %and.i.2, %xor.167108.i *)
(* You may need to modify here *)
xor uint64 v_xor_i6_2 v_and_i_2 v_xor_167108_i;
(*   %neg.1.i.2 = xor i64 %xor.2.3120.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_1_i_2 v_xor_2_3120_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.1.i.2 = and i64 %xor.3.4126.i, %neg.1.i.2 *)
(* You may need to modify here *)
and uint64 v_and_1_i_2 v_xor_3_4126_i v_neg_1_i_2;
(*   %xor.1.i7.2 = xor i64 %and.1.i.2, %xor.1.2114.i *)
(* You may need to modify here *)
xor uint64 v_xor_1_i7_2 v_and_1_i_2 v_xor_1_2114_i;
(*   %neg.2.i.2 = xor i64 %xor.3.4126.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_2_i_2 v_xor_3_4126_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.2.i.2 = and i64 %xor.4107.i, %neg.2.i.2 *)
(* You may need to modify here *)
and uint64 v_and_2_i_2 v_xor_4107_i v_neg_2_i_2;
(*   %xor.2.i8.2 = xor i64 %and.2.i.2, %xor.2.3120.i *)
(* You may need to modify here *)
xor uint64 v_xor_2_i8_2 v_and_2_i_2 v_xor_2_3120_i;
(*   %neg.3.i.2 = xor i64 %xor.4107.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_3_i_2 v_xor_4107_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.3.i.2 = and i64 %xor.167108.i, %neg.3.i.2 *)
(* You may need to modify here *)
and uint64 v_and_3_i_2 v_xor_167108_i v_neg_3_i_2;
(*   %xor.3.i9.2 = xor i64 %and.3.i.2, %xor.3.4126.i *)
(* You may need to modify here *)
xor uint64 v_xor_3_i9_2 v_and_3_i_2 v_xor_3_4126_i;
(*   %neg.4.i.2 = xor i64 %xor.167108.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_4_i_2 v_xor_167108_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.4.i.2 = and i64 %xor.1.2114.i, %neg.4.i.2 *)
(* You may need to modify here *)
and uint64 v_and_4_i_2 v_xor_1_2114_i v_neg_4_i_2;
(*   %xor.4.i10.2 = xor i64 %xor.4107.i, %and.4.i.2 *)
(* You may need to modify here *)
xor uint64 v_xor_4_i10_2 v_xor_4107_i v_and_4_i_2;
(*   store i64 %xor.i6.2, i64* %arrayidx5.2.i, align 4, !tbaa !4 *)
mov state_80 v_xor_i6_2;
(*   store i64 %xor.1.i7.2, i64* %arrayidx5.2.1.i, align 4, !tbaa !4 *)
mov state_88 v_xor_1_i7_2;
(*   store i64 %xor.2.i8.2, i64* %arrayidx5.2.2.i, align 4, !tbaa !4 *)
mov state_96 v_xor_2_i8_2;
(*   store i64 %xor.3.i9.2, i64* %arrayidx5.2.3.i, align 4, !tbaa !4 *)
mov state_104 v_xor_3_i9_2;
(*   store i64 %xor.4.i10.2, i64* %arrayidx5.2.4.i, align 4, !tbaa !4 *)
mov state_112 v_xor_4_i10_2;
(*   %neg.i.3 = xor i64 %xor.1104.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_i_3 v_xor_1104_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.i.3 = and i64 %xor.2.1110.i, %neg.i.3 *)
(* You may need to modify here *)
and uint64 v_and_i_3 v_xor_2_1110_i v_neg_i_3;
(*   %xor.i6.3 = xor i64 %and.i.3, %xor.4100123.i *)
(* You may need to modify here *)
xor uint64 v_xor_i6_3 v_and_i_3 v_xor_4100123_i;
(*   %neg.1.i.3 = xor i64 %xor.2.1110.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_1_i_3 v_xor_2_1110_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.1.i.3 = and i64 %xor.3.2116.i, %neg.1.i.3 *)
(* You may need to modify here *)
and uint64 v_and_1_i_3 v_xor_3_2116_i v_neg_1_i_3;
(*   %xor.1.i7.3 = xor i64 %and.1.i.3, %xor.1104.i *)
(* You may need to modify here *)
xor uint64 v_xor_1_i7_3 v_and_1_i_3 v_xor_1104_i;
(*   %neg.2.i.3 = xor i64 %xor.3.2116.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_2_i_3 v_xor_3_2116_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.2.i.3 = and i64 %xor.4.3122.i, %neg.2.i.3 *)
(* You may need to modify here *)
and uint64 v_and_2_i_3 v_xor_4_3122_i v_neg_2_i_3;
(*   %xor.2.i8.3 = xor i64 %and.2.i.3, %xor.2.1110.i *)
(* You may need to modify here *)
xor uint64 v_xor_2_i8_3 v_and_2_i_3 v_xor_2_1110_i;
(*   %neg.3.i.3 = xor i64 %xor.4.3122.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_3_i_3 v_xor_4_3122_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.3.i.3 = and i64 %xor.4100123.i, %neg.3.i.3 *)
(* You may need to modify here *)
and uint64 v_and_3_i_3 v_xor_4100123_i v_neg_3_i_3;
(*   %xor.3.i9.3 = xor i64 %and.3.i.3, %xor.3.2116.i *)
(* You may need to modify here *)
xor uint64 v_xor_3_i9_3 v_and_3_i_3 v_xor_3_2116_i;
(*   %neg.4.i.3 = xor i64 %xor.4100123.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_4_i_3 v_xor_4100123_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.4.i.3 = and i64 %xor.1104.i, %neg.4.i.3 *)
(* You may need to modify here *)
and uint64 v_and_4_i_3 v_xor_1104_i v_neg_4_i_3;
(*   %xor.4.i10.3 = xor i64 %xor.4.3122.i, %and.4.i.3 *)
(* You may need to modify here *)
xor uint64 v_xor_4_i10_3 v_xor_4_3122_i v_and_4_i_3;
(*   store i64 %xor.i6.3, i64* %arrayidx5.3.i, align 4, !tbaa !4 *)
mov state_120 v_xor_i6_3;
(*   store i64 %xor.1.i7.3, i64* %arrayidx5.3.1.i, align 4, !tbaa !4 *)
mov state_128 v_xor_1_i7_3;
(*   store i64 %xor.2.i8.3, i64* %arrayidx5.3.2.i, align 4, !tbaa !4 *)
mov state_136 v_xor_2_i8_3;
(*   store i64 %xor.3.i9.3, i64* %arrayidx5.3.3.i, align 4, !tbaa !4 *)
mov state_144 v_xor_3_i9_3;
(*   store i64 %xor.4.i10.3, i64* %arrayidx5.3.4.i, align 4, !tbaa !4 *)
mov state_152 v_xor_4_i10_3;
(*   %neg.i.4 = xor i64 %xor.1.3119.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_i_4 v_xor_1_3119_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.i.4 = and i64 %xor.2.4125.i, %neg.i.4 *)
(* You may need to modify here *)
and uint64 v_and_i_4 v_xor_2_4125_i v_neg_i_4;
(*   %xor.i6.4 = xor i64 %and.i.4, %xor.278113.i *)
(* You may need to modify here *)
xor uint64 v_xor_i6_4 v_and_i_4 v_xor_278113_i;
(*   %neg.1.i.4 = xor i64 %xor.2.4125.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_1_i_4 v_xor_2_4125_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %25 = load i64, i64* %arrayidx5.4.3.i, align 4, !tbaa !4 *)
mov v25 state_184;
(*   %and.1.i.4 = and i64 %25, %neg.1.i.4 *)
(* You may need to modify here *)
and uint64 v_and_1_i_4 v25 v_neg_1_i_4;
(*   %xor.1.i7.4 = xor i64 %and.1.i.4, %xor.1.3119.i *)
(* You may need to modify here *)
xor uint64 v_xor_1_i7_4 v_and_1_i_4 v_xor_1_3119_i;
(*   %neg.2.i.4 = xor i64 %25, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_2_i_4 v25 (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %26 = load i64, i64* %arrayidx5.4.4.i, align 4, !tbaa !4 *)
mov v26 state_192;
(*   %and.2.i.4 = and i64 %26, %neg.2.i.4 *)
(* You may need to modify here *)
and uint64 v_and_2_i_4 v26 v_neg_2_i_4;
(*   %xor.2.i8.4 = xor i64 %and.2.i.4, %xor.2.4125.i *)
(* You may need to modify here *)
xor uint64 v_xor_2_i8_4 v_and_2_i_4 v_xor_2_4125_i;
(*   %neg.3.i.4 = xor i64 %26, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_3_i_4 v26 (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.3.i.4 = and i64 %xor.278113.i, %neg.3.i.4 *)
(* You may need to modify here *)
and uint64 v_and_3_i_4 v_xor_278113_i v_neg_3_i_4;
(*   %xor.3.i9.4 = xor i64 %and.3.i.4, %25 *)
(* You may need to modify here *)
xor uint64 v_xor_3_i9_4 v_and_3_i_4 v25;
(*   %neg.4.i.4 = xor i64 %xor.278113.i, -1 *)
(* You may need to modify here *)
xor uint64 v_neg_4_i_4 v_xor_278113_i (0xFFFFFFFFFFFFFFFF)@uint64;
(*   %and.4.i.4 = and i64 %xor.1.3119.i, %neg.4.i.4 *)
(* You may need to modify here *)
and uint64 v_and_4_i_4 v_xor_1_3119_i v_neg_4_i_4;
(*   %xor.4.i10.4 = xor i64 %26, %and.4.i.4 *)
(* You may need to modify here *)
xor uint64 v_xor_4_i10_4 v26 v_and_4_i_4;
(*   store i64 %xor.i6.4, i64* %arrayidx5.4.i, align 4, !tbaa !4 *)
mov state_160 v_xor_i6_4;
(*   store i64 %xor.1.i7.4, i64* %arrayidx5.4.1.i, align 4, !tbaa !4 *)
mov state_168 v_xor_1_i7_4;
(*   store i64 %xor.2.i8.4, i64* %arrayidx5.4.2.i, align 4, !tbaa !4 *)
mov state_176 v_xor_2_i8_4;
(*   store i64 %xor.3.i9.4, i64* %arrayidx5.4.3.i, align 4, !tbaa !4 *)
mov state_184 v_xor_3_i9_4;
(*   store i64 %xor.4.i10.4, i64* %arrayidx5.4.4.i, align 4, !tbaa !4 *)
mov state_192 v_xor_4_i10_4;
(*   %arrayidx.i = getelementptr inbounds [24 x i64], [24 x i64]* @KeccakRoundConstants, i32 0, i32 %indexRound *)
(*   %27 = load i64, i64* %arrayidx.i, align 8, !tbaa !4 *)
mov v27 arrayidx_i_0;
(*   %xor.i = xor i64 %xor.i6, %27 *)
(* You may need to modify here *)
xor uint64 v_xor_i v_xor_i6 v27;
(*   store i64 %xor.i, i64* %state, align 4, !tbaa !4 *)
mov state_0 v_xor_i;
(*   ret void *)


(* Outputs *)
mov output00 state_0@uint64;
mov output01 state_8@uint64;
mov output02 state_16@uint64;
mov output03 state_24@uint64;
mov output04 state_32@uint64;
mov output05 state_40@uint64;
mov output06 state_48@uint64;
mov output07 state_56@uint64;
mov output08 state_64@uint64;
mov output09 state_72@uint64;
mov output10 state_80@uint64;
mov output11 state_88@uint64;
mov output12 state_96@uint64;
mov output13 state_104@uint64;
mov output14 state_112@uint64;
mov output15 state_120@uint64;
mov output16 state_128@uint64;
mov output17 state_136@uint64;
mov output18 state_144@uint64;
mov output19 state_152@uint64;
mov output20 state_160@uint64;
mov output21 state_168@uint64;
mov output22 state_176@uint64;
mov output23 state_184@uint64;
mov output24 state_192@uint64;

{
  true
  &&
  true
}

proc main (uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
           uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
           uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
           uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
           uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44) =
{ true && true }

nondet rconst0@uint64; nondet rconst1@uint64;

nondet a00@uint64; nondet a01@uint64; nondet a02@uint64; nondet a03@uint64; 
nondet a04@uint64; nondet a10@uint64; nondet a11@uint64; nondet a12@uint64; 
nondet a13@uint64; nondet a14@uint64; nondet a20@uint64; nondet a21@uint64; 
nondet a22@uint64; nondet a23@uint64; nondet a24@uint64; nondet a30@uint64; 
nondet a31@uint64; nondet a32@uint64; nondet a33@uint64; nondet a34@uint64; 
nondet a40@uint64; nondet a41@uint64; nondet a42@uint64; nondet a43@uint64; 
nondet a44@uint64;

inline KeccakF1600_StatePermute2Rounds_pqclean
(a00, a01, a02, a03, a04, a10, a11, a12, a13, a14,
 a20, a21, a22, a23, a24, a30, a31, a32, a33, a34,
 a40, a41, a42, a43, a44,
 rconst0, rconst1,
 A00, A01, A02, A03, A04, A10, A11, A12, A13, A14,
 A20, A21, A22, A23, A24, A30, A31, A32, A33, A34,
 A40, A41, A42, A43, A44);

nondet b00@uint64; nondet b01@uint64; nondet b02@uint64; nondet b03@uint64; 
nondet b04@uint64; nondet b10@uint64; nondet b11@uint64; nondet b12@uint64; 
nondet b13@uint64; nondet b14@uint64; nondet b20@uint64; nondet b21@uint64; 
nondet b22@uint64; nondet b23@uint64; nondet b24@uint64; nondet b30@uint64; 
nondet b31@uint64; nondet b32@uint64; nondet b33@uint64; nondet b34@uint64; 
nondet b40@uint64; nondet b41@uint64; nondet b42@uint64; nondet b43@uint64; 
nondet b44@uint64;

inline KeccakP1600Round_XKCP
(A00, A01, A02, A03, A04, A10, A11, A12, A13, A14,
 A20, A21, A22, A23, A24, A30, A31, A32, A33, A34,
 A40, A41, A42, A43, A44,
 rconst0,
 A00, A01, A02, A03, A04, A10, A11, A12, A13, A14,
 A20, A21, A22, A23, A24, A30, A31, A32, A33, A34,
 A40, A41, A42, A43, A44);

inline KeccakP1600Round_XKCP
(b00, b01, b02, b03, b04, b10, b11, b12, b13, b14,
 b20, b21, b22, b23, b24, b30, b31, b32, b33, b34,
 b40, b41, b42, b43, b44,
 rconst1,
 A00, A01, A02, A03, A04, A10, A11, A12, A13, A14,
 A20, A21, A22, A23, A24, A30, A31, A32, A33, A34,
 A40, A41, A42, A43, A44);

{ true &&
  and [a00=b00, a01=b01, a02=b02, a03=b03, a04=b04 (*,
       a10=b10, a11=b11, a12=b12, a13=b13, a14=b14,
       a20=b20, a21=b21, a22=b22, a23=b23, a24=b24,
       a30=b30, a31=b31, a32=b32, a33=b33, a34=b34,
       a40=b40, a41=b41, a42=b42, a43=b43, a44=b44 *)]
  }
