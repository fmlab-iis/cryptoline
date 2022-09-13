proc main (* KeccakF1600 *)
(
(* uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04, *)
(* uint64 a10, uint64 a11, uint64 a12, uint64 a13, uint64 a14, *)
(* uint64 a20, uint64 a21, uint64 a22, uint64 a23, uint64 a24, *)
(* uint64 a30, uint64 a31, uint64 a32, uint64 a33, uint64 a34, *)
(* uint64 a40, uint64 a41, uint64 a42, uint64 a43, uint64 a44, *)
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

mov L0x555555558040 A00; mov L0x555555558048 A01; mov L0x555555558050 A02;
mov L0x555555558058 A03; mov L0x555555558060 A04; mov L0x555555558068 A10;
mov L0x555555558070 A11; mov L0x555555558078 A12; mov L0x555555558080 A13;
mov L0x555555558088 A14; mov L0x555555558090 A20; mov L0x555555558098 A21;
mov L0x5555555580a0 A22; mov L0x5555555580a8 A23; mov L0x5555555580b0 A24;
mov L0x5555555580b8 A30; mov L0x5555555580c0 A31; mov L0x5555555580c8 A32;
mov L0x5555555580d0 A33; mov L0x5555555580d8 A34; mov L0x5555555580e0 A40;
mov L0x5555555580e8 A41; mov L0x5555555580f0 A42; mov L0x5555555580f8 A43;
mov L0x555555558100 A44;

(* iotas *)

mov L0x555555555840 0x0000000000000001@uint64;
mov L0x555555555848 0x0000000000008082@uint64;
mov L0x555555555850 0x800000000000808a@uint64;
mov L0x555555555858 0x8000000080008000@uint64;
mov L0x555555555860 0x000000000000808b@uint64;
mov L0x555555555868 0x0000000080000001@uint64;
mov L0x555555555870 0x8000000080008081@uint64;
mov L0x555555555878 0x8000000000008009@uint64;
mov L0x555555555880 0x000000000000008a@uint64;
mov L0x555555555888 0x0000000000000088@uint64;
mov L0x555555555890 0x0000000080008009@uint64;
mov L0x555555555898 0x000000008000000a@uint64;
mov L0x5555555558a0 0x000000008000808b@uint64;
mov L0x5555555558a8 0x800000000000008b@uint64;
mov L0x5555555558b0 0x8000000000008089@uint64;
mov L0x5555555558b8 0x8000000000008003@uint64;
mov L0x5555555558c0 0x8000000000008002@uint64;
mov L0x5555555558c8 0x8000000000000080@uint64;
mov L0x5555555558d0 0x000000000000800a@uint64;
mov L0x5555555558d8 0x800000008000000a@uint64;
mov L0x5555555558e0 0x8000000080008081@uint64;
mov L0x5555555558e8 0x8000000000008080@uint64;
mov L0x5555555558f0 0x0000000080000001@uint64;
mov L0x5555555558f8 0x8000000080008008@uint64;

nondet rsp@uint64;
nondet rdi@uint64;
nondet rsi@uint64;

(* #! -> SP = 0x7fffffffdbb8 *)
#! 0x7fffffffdbb8 = 0x7fffffffdbb8;
(* push   %rbx                                     #! EA = L0x7fffffffdbb0; PC = 0x5555555555e0 *)
(* push rbx *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffdba8; PC = 0x5555555555e1 *)
(* push rbp *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffdba0; PC = 0x5555555555e2 *)
(* push r12 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffdb98; PC = 0x5555555555e4 *)
(* push r13 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffdb90; PC = 0x5555555555e6 *)
(* push r14 *)
nop;
(* push   %r15                                     #! EA = L0x7fffffffdb88; PC = 0x5555555555e8 *)
(* push r15 *)
nop;
(* lea    0x64(%rdi),%rdi                          #! PC = 0x5555555555ea *)
(* lea EA, rdi *)
nop;
(* sub    $0xc8,%rsp                               #! PC = 0x5555555555ee *)
subs dc rsp rsp 0xc8@uint64;
(* notq   -0x5c(%rdi)                              #! EA = L0x555555558048; PC = 0x5555555555f5 *)
not L0x555555558048@uint64 L0x555555558048;
(* notq   -0x54(%rdi)                              #! EA = L0x555555558050; PC = 0x5555555555f9 *)
not L0x555555558050@uint64 L0x555555558050;
(* notq   -0x24(%rdi)                              #! EA = L0x555555558080; PC = 0x5555555555fd *)
not L0x555555558080@uint64 L0x555555558080;
(* notq   -0x4(%rdi)                               #! EA = L0x5555555580a0; PC = 0x555555555601 *)
not L0x5555555580a0@uint64 L0x5555555580a0;
(* notq   0x24(%rdi)                               #! EA = L0x5555555580c8; PC = 0x555555555605 *)
not L0x5555555580c8@uint64 L0x5555555580c8;
(* notq   0x3c(%rdi)                               #! EA = L0x5555555580e0; PC = 0x555555555609 *)
not L0x5555555580e0@uint64 L0x5555555580e0;
(* lea    0x22c(%rip),%r15        # 0x555555555840 <iotas>#! PC = 0x55555555560d *)
(* lea EA, r15 *)
nop;
(* lea    0x64(%rsp),%rsi                          #! PC = 0x555555555614 *)
(* lea EA, rsi *)
nop;
(* #callq  0x555555555300 <__KeccakF1600>          #! PC = 0x555555555619 *)
#callq  0x555555555300 <__KeccakF1600>          #! 0x555555555619 = 0x555555555619;
(* #! -> SP = 0x7fffffffdab8 *)
#! 0x7fffffffdab8 = 0x7fffffffdab8;
(* mov    0x3c(%rdi),%rax                          #! EA = L0x5555555580e0; Value = 0xffffffffffffffff; PC = 0x555555555300 *)
mov rax L0x5555555580e0;
(* mov    0x44(%rdi),%rbx                          #! EA = L0x5555555580e8; Value = 0x0000000000000000; PC = 0x555555555304 *)
mov rbx L0x5555555580e8;
(* mov    0x4c(%rdi),%rcx                          #! EA = L0x5555555580f0; Value = 0x0000000000000000; PC = 0x555555555308 *)
mov rcx L0x5555555580f0;
(* mov    0x54(%rdi),%rdx                          #! EA = L0x5555555580f8; Value = 0x0000000000000000; PC = 0x55555555530c *)
mov rdx L0x5555555580f8;
(* mov    0x5c(%rdi),%rbp                          #! EA = L0x555555558100; Value = 0x0000000000000000; PC = 0x555555555310 *)
mov rbp L0x555555558100;
(* #jmp    0x555555555320 <__KeccakF1600+32>       #! PC = 0x555555555314 *)
#jmp    0x555555555320 <__KeccakF1600+32>       #! 0x555555555314 = 0x555555555314;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x0000000000000000; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x0000000000000000; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0xffffffffffffffff; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x0000000000000000; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0xffffffffffffffff; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x0000000000000000; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0xffffffffffffffff; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x0000000000000000; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x0000000000000000; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0xffffffffffffffff; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x0000000000000000; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0xffffffffffffffff; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x0000000000000000; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x0000000000000000; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x0000000000000000; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x0000000000000000; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x0000000000000000; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x0000000000000000; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555840; Value = 0x0000000000000001; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555840;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x0000000000000000; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x0000000000000000; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x0000000000000000; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x0000000000000000; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x0000000000000000; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0xffffffffffffffff; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0xffffffffffffffff; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x0000000000000000; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x0000000000000000; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x0000000000000000; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x0000000000000000; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0xffffffffffffffff; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x0000000000000000; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0xffffffffffffffff; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0xffffffffffffffff; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x0000000000000000; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x0000000000000000; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x0000000000000000; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x0000000000000001; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x0000000000000000; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0xffffffffffffffff; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x0000000000000000; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0xffffffffffffffff; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x0000000000000000; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0xffffffffffffffff; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x0000000000000000; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x0000000000000000; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x0000000000000000; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x0000000000000000; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0xffffffffffffffff; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0x0000000000000000; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xffffffffffffffff; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x0000000000000000; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x0000000000000000; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x0000000000000000; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x0000000000000000; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x0000000000000000; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x0000000000000000; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555848; Value = 0x0000000000008082; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555848;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x0000000000000000; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0x0000000000000000; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x0000000000000000; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x0000000000000000; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x0000000000000000; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0xffffffffffffffff; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x0000000000000000; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0xffffffffffffffff; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x0000000000000000; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x0000000000000000; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x0000000000000000; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x0000000000000000; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x0000000000000000; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xffffffffffffffff; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x0000000000000000; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0xffffffffffffffff; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0xffffffffffffffff; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0x0000000000000000; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x0000000000000000; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x0000000000000000; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x0000000000008083; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x0000200000200000; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0xffffffffffffffff; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x0000000010000000; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0xffffffffffff7fff; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x0000000000000001; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0xffffefffffffffff; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x0000100000008000; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x0000000000000002; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0xffffdfffffffffff; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x0000000000200000; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0xfffffffffffffbff; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x0000000010000400; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x0000000000000202; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x0000000000000200; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x0000000000000000; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x0000000000000000; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x0000000000000000; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555850; Value = 0x800000000000808a; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555850;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x0000010000000004; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x0000000000200000; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x0000000000000002; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x0000000000000001; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x0000000000000000; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0xffffefffffffffff; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0xfffffeffffffffff; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x0000000000000202; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x0000000000000000; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x0000000000000200; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x0000000000000000; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0xfffffffffffffbff; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x0000100000008000; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0xffffffffffff7fff; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0xffffdfffffffffff; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x0000000000000000; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x0000000000000000; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x0000000010000400; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x8030500001e0840c; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x11932210b0700202; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x3bff7d71f3efffbc; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x39801c4809030010; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0xf74fcbffbe3ebefe; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x2002783081a00483; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0xc73567cf7dcffef9; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x40038e20070020f0; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x00049840d3042220; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x10488c0040d14100; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x0000a50434031950; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0xce6acfbf2f9fffef; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0x60030c30241400c2; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xfbf3ff9ef9c59a7b; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x01840c580e382590; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x0022263021081812; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x003e0038090a8080; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0xc41c018a18108081; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x3e08505001060000; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x0a08402100074184; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555858; Value = 0x8000000080008000; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555858;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x008584804017321c; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0x60030c30241400c2; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x0000a50434031950; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x2002783081a00483; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x3e08505001060000; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0xc73567cf7dcffef9; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x40038e20070020f0; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x7f7a637ff7e6de66; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x0022263021081812; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x0a08402100074184; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x003e0038090a8080; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x4100180008e801a1; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x00049840d3042220; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xfbf3ff9ef9c59a7b; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x10488c0040d14100; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0xf74fcbffbe3ebefe; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0xce6acfbf2f9fffef; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xc700080080e020e2; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0xc41c018a18108081; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x01840c580e382590; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x0838573a4deb6243; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0xcaf94e2ea308a3de; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x6f7d432a5eda91eb; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x9c1ed728fdc103ad; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0xaa7585efc21e5608; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x7ebf8bcaa7384087; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x30a85f388796db6b; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x84157265ed62c980; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x8b4b752fe1ff3dd4; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0xc20e7c2f247f1fc3; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x43149ae4f34cae4e; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x6a14bb3249d5e06c; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x10401cdb131f356a; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x454a14282e9dc3e8; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0xdd83725682ce30ad; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x57c528940923d229; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0xc7ff1e37f2a46df1; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0xd68102405f743186; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0xa99560e9a64817a1; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0xe8a581be707cb952; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555860; Value = 0x000000000000808b; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555860;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x4f75a9de463907d4; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x10401cdb131f356a; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x43149ae4f34cae4e; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x7ebf8bcaa7384087; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0xa99560e9a64817a1; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x30a85f388796db6b; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x84157265ed62c980; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x7e439abdd8bd4caa; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x57c528940923d229; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0xe8a581be707cb952; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0xc7ff1e37f2a46df1; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0xe90eb8a4080a858f; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x8b4b752fe1ff3dd4; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x454a14282e9dc3e8; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0xc20e7c2f247f1fc3; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0xaa7585efc21e5608; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x6a14bb3249d5e06c; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x9c66d82b94503aa2; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0xd68102405f743186; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0xdd83725682ce30ad; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x6a00840802752a6f; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x70e8b5d763274728; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x853dda6697b4fe7d; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x105a64a116516b0e; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0x924678daa8e0e9fb; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x96ba275ba7474a93; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x06563c54ff3636ce; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x0fe03a842f22afcb; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x73fe33c9b1038c36; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x9b5e7a3feeb7e41e; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x2728e4f2b7aeebe8; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x26a3f5b136b529e6; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xe57a1a2bb2ae09c2; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0x0c887bb9df0d2b66; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0xb8e36f84d019b15f; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0xc17e6a6ab6526eb1; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0xa81edbeb54d20fe1; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0xa1c3cee067ab9f52; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x1cf47f1f04738ad9; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x965393ca1b42f1db; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555868; Value = 0x0000000080000001; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555868;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x916d0713d86acc2a; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xe57a1a2bb2ae09c2; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x2728e4f2b7aeebe8; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x96ba275ba7474a93; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x1cf47f1f04738ad9; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x06563c54ff3636ce; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x0fe03a842f22afcb; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0xe3d37b62c02d63e0; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0xc17e6a6ab6526eb1; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x965393ca1b42f1db; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0xa81edbeb54d20fe1; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0xe5dc85ffad78d9b0; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x73fe33c9b1038c36; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x0c887bb9df0d2b66; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x9b5e7a3feeb7e41e; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0x924678daa8e0e9fb; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x26a3f5b136b529e6; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xab89b3623f5f6964; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0xa1c3cee067ab9f52; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0xb8e36f84d019b15f; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x43e30b96ff110a58; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x44f0fbf5606f647a; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x5bfc928150ba8ea8; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x1cee752edb4b48f6; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x40299f201d1ffae2; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0xa303b734f55677e6; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x29bd3820dd4be8c3; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x34fe5a6214181ed1; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x0b5033314f45c5cb; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x37c05e405b01af0c; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x2d6cbeb27c4bc219; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x4bd543a218c7222a; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x7a8e099fe258e5d8; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0xc8ab9c178b50d8e3; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x4fcb128386812f6e; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x5f252e8e367f3dc8; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0xa58159b967a3ad93; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x5e8f6ad5d330526e; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x02c154103bd90dd0; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x36e67b423707dcb0; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555870; Value = 0x8000000080008081; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555870;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x7fc73c7b61494b4c; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x7a8e099fe258e5d8; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x2d6cbeb27c4bc219; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0xa303b734f55677e6; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x02c154103bd90dd0; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x29bd3820dd4be8c3; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x34fe5a6214181ed1; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x0c94574fbc870a85; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x5f252e8e367f3dc8; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x36e67b423707dcb0; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0xa58159b967a3ad93; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0xb913d9d348a8e89a; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x0b5033314f45c5cb; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0xc8ab9c178b50d8e3; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x37c05e405b01af0c; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x40299f201d1ffae2; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x4bd543a218c7222a; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0xcfcd9cecd3ade3d5; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x5e8f6ad5d330526e; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x4fcb128386812f6e; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x0c77f40134a70cbc; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0xa42f64e793328d4f; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x7453253f9ce9cbb3; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0xd809ca879d35da1c; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0x969b39dec32cdfd2; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0xf5841db03d841837; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x909af34003a854fe; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x5640794d9b8e0201; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x42b502eff3fce7df; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0xa7158bb1a7922376; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x179b677365470e31; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0xd530f6e5f3edefe7; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xe7c314743c763a96; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xc78b143c30a3b510; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0xaf39326eb3d059f6; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x6989c2111a451228; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x28bb4a3ea45041a4; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x14bc213555dcb238; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x213d3c0c7d694b60; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x41ad501b5eaa2c21; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555878; Value = 0x8000000000008009; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555878;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x87ed62a9c0e907db; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xe7c314743c763a96; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x179b677365470e31; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0xf5841db03d841837; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x213d3c0c7d694b60; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x909af34003a854fe; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x5640794d9b8e0201; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0xd8d8081e2fb4a9f6; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x6989c2111a451228; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x41ad501b5eaa2c21; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x28bb4a3ea45041a4; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0xefd2f940cf583917; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x42b502eff3fce7df; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xc78b143c30a3b510; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0xa7158bb1a7922376; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0x969b39dec32cdfd2; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0xd530f6e5f3edefe7; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0x4f40bfbf5114b70e; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x14bc213555dcb238; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0xaf39326eb3d059f6; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0xe71990f66e5c3199; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x90d8ccbb6e0c2505; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x664b2e8916c1b393; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0xc09f6d8491b94fe3; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x852149cf72f88576; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x1bcf81ec65528647; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x67ea58010368f7ed; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x71fa1d117d2f0d2b; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x9debe90720187a5e; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0xfb3f99d0c00b9d77; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0xd0316755555ceec9; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x81d2fb33e8ede8a9; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0xc31e4540d69f88c9; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x9be1e87c7d8f5850; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x3de51a3100441002; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x2a1c42a54f48b263; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x5dcd9aa3fcdad534; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x439eb6c088b33bb8; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x0092fd96a29fb9ca; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0xdb137cc98c3c8239; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555880; Value = 0x000000000000008a; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555880;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x965f3f9b90b4ba79; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0xc31e4540d69f88c9; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0xd0316755555ceec9; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x1bcf81ec65528647; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x0092fd96a29fb9ca; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x67ea58010368f7ed; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x71fa1d117d2f0d2b; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x52c4113ef0c64f80; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x2a1c42a54f48b263; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0xdb137cc98c3c8239; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x5dcd9aa3fcdad534; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x5e28c4ce78bd2190; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x9debe90720187a5e; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x9be1e87c7d8f5850; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0xfb3f99d0c00b9d77; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x852149cf72f88576; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x81d2fb33e8ede8a9; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x6b62b259d8ff954c; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x439eb6c088b33bb8; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x3de51a3100441002; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x309632a97ced9ce8; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x7063b2fd56e7e2e5; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x2f9302c54b739667; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x2adef1f0f476bc2f; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0x474befd2aaab9c5f; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x781cb76c1b390af6; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x69331c898dd87d77; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x5c202896127a3201; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x8c004295c6f66cea; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x5efe9079fbd06374; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x4735c6634ea08aa2; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x21ee80880bfa2bb4; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0x93350e8d9591bc9e; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xb58e58099b872266; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x31a6e97ccae2238d; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0xe4c33c7972e95e5c; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x479dabb00fd1751d; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x525049f077812bc0; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x43976056b7e1952d; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0xe9231008af083f0c; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555888; Value = 0x0000000000000088; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555888;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x3aba6fb87aad63aa; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0x93350e8d9591bc9e; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x4735c6634ea08aa2; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x781cb76c1b390af6; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x43976056b7e1952d; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x69331c898dd87d77; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x5c202896127a3201; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x0e62e78c41b62356; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0xe4c33c7972e95e5c; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0xe9231008af083f0c; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x479dabb00fd1751d; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x73f3b6a47154402f; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x8c004295c6f66cea; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xb58e58099b872266; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x5efe9079fbd06374; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0x474befd2aaab9c5f; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x21ee80880bfa2bb4; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xf7cc92e1c5618e18; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x525049f077812bc0; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x31a6e97ccae2238d; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x31cbb7f055d0efc0; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x33386e70b4edfae2; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x863a8cab42c62143; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0xa68326239c1e7d24; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x625d0d6fab31e911; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x7e8db0b9132d1f74; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x1b4da38f223df72e; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0xd14705c13c413b26; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x0c639e6d4dbb1c52; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0xb563450ecb53cae8; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x1a235d324d3e8a10; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x704c5e369dcdcf0e; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x928ac03bb01eb0a4; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x69725a7f24adc8be; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x759959b043b15e3e; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0xf068bde5cf48f1b5; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x23b9113dc331409e; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x5b22dd2d64fec38f; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x9d7e94ca55db4480; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0xb534d89df4ee2434; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555890; Value = 0x0000000080008009; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555890;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0xbb6d3c3549da2b97; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x928ac03bb01eb0a4; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x1a235d324d3e8a10; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x7e8db0b9132d1f74; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x9d7e94ca55db4480; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x1b4da38f223df72e; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0xd14705c13c413b26; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x9a7960ddf09d1bd1; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0xf068bde5cf48f1b5; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0xb534d89df4ee2434; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x23b9113dc331409e; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x61089150769da6cf; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x0c639e6d4dbb1c52; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x69725a7f24adc8be; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0xb563450ecb53cae8; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x625d0d6fab31e911; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x704c5e369dcdcf0e; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x28fedc4ead93fed0; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x5b22dd2d64fec38f; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x759959b043b15e3e; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x736d2c1d55c4ef73; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0xf17d3c1327115fef; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x99f16dca4b2389fd; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x69de925622c194c6; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0x4050e858fe16d1c9; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x5c9b10c4952fd875; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0xd18cb4fd318fbc87; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0xe4af9f9f755c1079; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0xf5f58fa9fc4545d6; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0xcdc8e10f6ba13c50; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0xe14da812846248af; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0xa5e62cb71444477f; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xa4e4fc5a17f63732; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xc99f3f8452b49f50; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0xa164d352b18499c4; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0xc4e603913394eb11; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0xd3376cb3ecec921b; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0xd31cfcdcd9c4cdb2; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x82f35ee1f69f9f8e; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0xaad25dd9c221c271; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x555555555898; Value = 0x000000008000000a; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x555555555898;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x31a0e879e2535099; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xa4e4fc5a17f63732; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0xe14da812846248af; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x5c9b10c4952fd875; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x82f35ee1f69f9f8e; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0xd18cb4fd318fbc87; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0xe4af9f9f755c1079; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0xfb351c1ff473b297; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0xc4e603913394eb11; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0xaad25dd9c221c271; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0xd3376cb3ecec921b; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x5defaffe64a1e6a4; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0xf5f58fa9fc4545d6; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xc99f3f8452b49f50; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0xcdc8e10f6ba13c50; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0x4050e858fe16d1c9; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0xa5e62cb71444477f; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xa717f1200b3b94b2; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0xd31cfcdcd9c4cdb2; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0xa164d352b18499c4; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x4089b1d2ef5d3a26; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x3671348a3fbd6487; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x248fbc30f78a844d; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x5da108d19209739f; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0xed9a82a5ba97152a; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x4d9f3e32387e66d3; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x7bf6093641dc6134; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x81e9f633f01dcf03; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x61ed7fb0ce6ca6af; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x3be7f6680bb1c847; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x3229e84a8e1704c2; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x54a1105c71aab926; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x8298d4e430062494; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x3f77884c2e58560c; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x9af85d4549fb53c7; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x52de6de69935b888; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x56f221867a1b3140; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x98a1c2d38194eda1; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x667e09de6b59e740; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0xe0e096ffe4ff71ea; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558a0; Value = 0x000000008000808b; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558a0;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0xf8ae145adffbe076; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x8298d4e430062494; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x3229e84a8e1704c2; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x4d9f3e32387e66d3; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x667e09de6b59e740; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x7bf6093641dc6134; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x81e9f633f01dcf03; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x8845250402bc29fd; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x52de6de69935b888; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0xe0e096ffe4ff71ea; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x56f221867a1b3140; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x366d5164bb8f0bb5; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x61ed7fb0ce6ca6af; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x3f77884c2e58560c; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x3be7f6680bb1c847; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0xed9a82a5ba97152a; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x54a1105c71aab926; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x50a13329b93c785f; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x98a1c2d38194eda1; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x9af85d4549fb53c7; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x648de89c6833c102; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x7aa01437721057c0; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x96b47ae29fb405fe; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x0212da229e198439; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0xd608745ead6c6e8a; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x915f4042be658083; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x9a936d296fa3cbdc; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0xa1ffa1e15ff0bd68; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x1322254abe46649e; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x1ef11c5578706c33; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x4e6245814643330b; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x050a74c540a79d20; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xb22b9af8df7d5fe7; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0x11e4c7e72a57c7da; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x329a908710cd5a85; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x091010d55fa046ca; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x02c931b528b695b9; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x1acec2cda2b1c6c6; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0xa89186e775f2fb74; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x45428a665086ac41; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558a8; Value = 0x800000000000008b; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558a8;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x08360adfb6db369d; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xb22b9af8df7d5fe7; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x4e6245814643330b; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x915f4042be658083; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0xa89186e775f2fb74; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x9a936d296fa3cbdc; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0xa1ffa1e15ff0bd68; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x280a24156523b652; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x091010d55fa046ca; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x45428a665086ac41; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x02c931b528b695b9; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0xee429201d6040138; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x1322254abe46649e; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x11e4c7e72a57c7da; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x1ef11c5578706c33; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0xd608745ead6c6e8a; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x050a74c540a79d20; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0x752f2fec3448e9b2; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x1acec2cda2b1c6c6; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x329a908710cd5a85; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0xf204ab825ec1b98c; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0xa8efb92313ac7e44; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x7799678e16bf8b8f; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0xfa2d09f00f8b19be; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x2d176b5efa31894f; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x75da76bd87d37a73; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0xfcdecd6cd12d69f1; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x83371dd98c8b09f1; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0xae399b7b6c84633d; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x8c6c05a408afc4ba; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0xf42645f1aeb80189; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x830f092250a6d11b; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x8aad4677926b6a65; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x218b514df56a24fc; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x38f5de3ed1cbf84f; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0xe5bbddf2601ea85b; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x41ff2cbc6c803fdd; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x77129c370664d096; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x99cedbf1933437f0; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x04754b7b9faeff7b; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558b0; Value = 0x8000000000008089; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558b0;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0xbe340816f1a99ed0; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x8aad4677926b6a65; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0xf42645f1aeb80189; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x75da76bd87d37a73; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x99cedbf1933437f0; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0xfcdecd6cd12d69f1; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x83371dd98c8b09f1; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x4c9f924162493b8e; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0xe5bbddf2601ea85b; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x04754b7b9faeff7b; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x41ff2cbc6c803fdd; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x1ea140c98ab9faef; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0xae399b7b6c84633d; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x218b514df56a24fc; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x8c6c05a408afc4ba; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x2d176b5efa31894f; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x830f092250a6d11b; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x31b09e98df7db202; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x77129c370664d096; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x38f5de3ed1cbf84f; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x06ee364e771b6bcf; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0xf55fd4ddbf081e7d; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x9a2119aa3ca5be6a; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x11c0069f4d346280; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0x263ae1af69655496; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x9473996fe1bb4ceb; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x19a70155bfd0b42a; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0xf666c3286f380b1d; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0xd2ea3cac414eb63b; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0xf51cb0626da6f085; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x03fb7294d1438d9b; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x361b814190af104d; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xd19df82730ea16b5; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xb9dcf196b6ea0ec1; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0xf135e2a8960f74e2; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x53e3c5f2892e6bdb; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x40b5bb60943d81fe; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x908c33b016575e0b; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x4c225dea370a687d; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x50b4ad11e821c365; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558b8; Value = 0x8000000000008003; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558b8;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0xe5800698cb3ae5b5; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xd19df82730ea16b5; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x03fb7294d1438d9b; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x9473996fe1bb4ceb; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x4c225dea370a687d; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x19a70155bfd0b42a; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0xf666c3286f380b1d; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x5fd82b1f1e327b25; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x53e3c5f2892e6bdb; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x50b4ad11e821c365; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x40b5bb60943d81fe; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x637658693c47003f; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0xd2ea3cac414eb63b; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xb9dcf196b6ea0ec1; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0xf51cb0626da6f085; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0x263ae1af69655496; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x361b814190af104d; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0x29ff28d8da171496; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x908c33b016575e0b; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0xf135e2a8960f74e2; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x0294d0853009a2e9; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x8ca51c558e7b125f; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0xb71253a3a0fd9068; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x197659ff2edcc466; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x79566ce24441d7df; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x5c3ce9b0ea86020e; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x92b46d5f502b5894; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x780c883422dea4d0; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x2dfca2b3ca5eda71; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x322c45cc79b07a6c; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x7e1ba84748e80bee; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0xc3101c409ba239e0; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0xc54f3e2ef42a032e; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x8fbcc02af5d035a9; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0xc3d4c4c0a4002291; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x8e5c9db63e29f72a; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0xc777b862349466ae; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0xdc8e9ad663eb67f4; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x6cdaf1c7e7ddf7c0; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0xcf709311541f6f05; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558c0; Value = 0x8000000000008002; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558c0;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x747a4ce4ebd89471; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0xc54f3e2ef42a032e; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x7e1ba84748e80bee; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x5c3ce9b0ea86020e; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x6cdaf1c7e7ddf7c0; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x92b46d5f502b5894; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x780c883422dea4d0; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0xfe763bf88acae234; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x8e5c9db63e29f72a; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0xcf709311541f6f05; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0xc777b862349466ae; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x2bd80f68cc4e6008; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x2dfca2b3ca5eda71; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x8fbcc02af5d035a9; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x322c45cc79b07a6c; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x79566ce24441d7df; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0xc3101c409ba239e0; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x39f99b067422b547; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0xdc8e9ad663eb67f4; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0xc3d4c4c0a4002291; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x5d350f71494fc8f7; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0xb6ea17c2a22bcb5e; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x1d9b54422309f271; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x03c9b4bf3af2dc5d; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0xd937f3c77cef4612; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0xa284df955f5574b8; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x1c840a8c275501d2; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x8e03bdc59cf78585; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x2f3b2ad03fba7fb4; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x3807beb7e976fca5; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x3525810e4ec2258f; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x67d8cc1d29c49c95; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0x7734677d193a2578; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0x90468c9faebbd33f; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x9c4e438b1642898e; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x3ce653f16dc02838; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0xf1d6dfc015c6d99d; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x87bcb30fe85bd280; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x10c59ecbc76705e4; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x84501b4167d1303f; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558c8; Value = 0x8000000000000080; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558c8;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x5ff558f3797f4c78; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0x7734677d193a2578; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x3525810e4ec2258f; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0xa284df955f5574b8; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x10c59ecbc76705e4; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x1c840a8c275501d2; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x8e03bdc59cf78585; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x6abf88b948905a11; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x3ce653f16dc02838; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x84501b4167d1303f; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0xf1d6dfc015c6d99d; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x2e9689056e4699b8; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x2f3b2ad03fba7fb4; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x90468c9faebbd33f; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x3807beb7e976fca5; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0xd937f3c77cef4612; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x67d8cc1d29c49c95; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xe9e1987c2ef60a70; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x87bcb30fe85bd280; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x9c4e438b1642898e; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0xfbdf32a8511a215a; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x795330566efd965c; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0xb8e54dbe56894cca; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x853d1f0e8d821215; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x5e28ba922bc4df67; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0x628b689b07200e95; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0xf883373d63bf8f2e; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x12e5367ba3ec4777; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x4bc8b925db11fc4e; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x67a8fa7ccafb6fcc; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x91282d2c07d3c3ea; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x9da9f99f7a5e3af6; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x9a956cbbb31fa973; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x7b4fca95bcc40657; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0xf35acbbfb66c85ca; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x8099b9e1f6f6e869; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x55c1963ad365f063; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x321a2cfbb72874a4; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x56b6b30b89e00255; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x508c1b026dafdc95; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558d0; Value = 0x000000000000800a; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558d0;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x3a624359f6a8b2b5; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x9a956cbbb31fa973; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x91282d2c07d3c3ea; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0x628b689b07200e95; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x56b6b30b89e00255; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0xf883373d63bf8f2e; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x12e5367ba3ec4777; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x8cba519e14837f5d; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x8099b9e1f6f6e869; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x508c1b026dafdc95; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x55c1963ad365f063; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x6da5463417ce143f; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x4bc8b925db11fc4e; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x7b4fca95bcc40657; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x67a8fa7ccafb6fcc; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x5e28ba922bc4df67; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x9da9f99f7a5e3af6; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x87ccc9784dd9d4bf; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x321a2cfbb72874a4; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0xf35acbbfb66c85ca; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x599d6ef52fd9ae41; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x66c66703bb4d90a6; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0xcc247451513490dc; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x8ed9bdd71948545e; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0xf772a5ec4038bbf9; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0xfc80d28cc5cc542e; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x40cb3f2fd629fb1a; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0xdf7213b7f0a141c9; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x8bf1357228f2736e; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0x3be9b37a46dfa823; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x62e2cafa15d2e5b2; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x4bf65735dc387e10; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xa627237129eee7a1; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xef11ca801a98ba7a; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x5ce481e8d139a791; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x5211152025d6cffa; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x720fede69ef73316; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0x347937f914e65553; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x9330bdde8ca5f7d9; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0xcd893f7adababc47; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558d8; Value = 0x800000008000000a; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558d8;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0xc1932a104f10527a; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xa627237129eee7a1; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x62e2cafa15d2e5b2; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0xfc80d28cc5cc542e; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x9330bdde8ca5f7d9; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x40cb3f2fd629fb1a; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0xdf7213b7f0a141c9; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x5df16f8b8614c703; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x5211152025d6cffa; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0xcd893f7adababc47; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x720fede69ef73316; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x7c5fb2e3e371aef9; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x8bf1357228f2736e; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xef11ca801a98ba7a; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0x3be9b37a46dfa823; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0xf772a5ec4038bbf9; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x4bf65735dc387e10; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0x63076cb5f51fcd4b; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0x347937f914e65553; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x5ce481e8d139a791; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x1a1ad63ea6de94cd; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x7a0765a0cd8d0b02; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0xaaa14e2e960587f7; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x371ab1a61efdcd8a; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0x5a62932f914d53d1; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0xe3b85e2e2fccb614; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0x8908ebd2eb256403; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x8b60d78abfae9861; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x689cbc39b01c0cb9; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0xc36e991c1a383054; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0x632b5576588a026d; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0xca0e09018d1f57d0; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x8f4eeff944e0c2d4; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x5401cb32bf44ccb5; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x1852407bda60f6dc; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0x6c5d7fd109030bd9; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x2b12597baf864e64; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0x05ec69b93ee6cf97; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0xab561f9c9be28b10; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x58a7ac24ec3ffe99; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558e0; Value = 0x8000000080008081; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558e0;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0xa8fc47e37729343d; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x8f4eeff944e0c2d4; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0x632b5576588a026d; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0xe3b85e2e2fccb614; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0xab561f9c9be28b10; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0x8908ebd2eb256403; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x8b60d78abfae9861; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x55693a25868ae9e5; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0x6c5d7fd109030bd9; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x58a7ac24ec3ffe99; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x2b12597baf864e64; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0x5decaa3cdbd5c36e; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x689cbc39b01c0cb9; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x5401cb32bf44ccb5; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0xc36e991c1a383054; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0x5a62932f914d53d1; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0xca0e09018d1f57d0; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x21b79a41e0bc679b; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0x05ec69b93ee6cf97; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x1852407bda60f6dc; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0xcb967722d7e71945; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x88f1abd844d153fd; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x0d611cfa88b0a2be; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0x1064930f71891b9d; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0x100f553679d1979c; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0xcbcfe6fa8917f50f; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0x718d3c4d24ed5990; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x093ca1652def39a7; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x76c4ebd02adac11a; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0xf0388aed43035577; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0x5bbcb96cfede2e86; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0x5042a15055dffbed; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0x3cb75a7d2f1410e1; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0x312d36efb5743659; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x96cf2f872c22d061; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0xdf8594cb00c06448; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0xedb9f9068bf73fef; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0xb22a75014d2fbb08; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0x50bcac8b9823c48c; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0x6a81ca651589b15e; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558e8; Value = 0x8000000000008080; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558e8;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0xa980d201aecc693b; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0x3cb75a7d2f1410e1; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0x5bbcb96cfede2e86; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0xcbcfe6fa8917f50f; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0x50bcac8b9823c48c; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0x718d3c4d24ed5990; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x093ca1652def39a7; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x5da93d8dab5b1559; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0xdf8594cb00c06448; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0x6a81ca651589b15e; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0xedb9f9068bf73fef; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0xcb631a23adca9452; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x76c4ebd02adac11a; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x312d36efb5743659; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0xf0388aed43035577; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0x100f553679d1979c; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0x5042a15055dffbed; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xf79babacba12d714; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0xb22a75014d2fbb08; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x96cf2f872c22d061; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x555555558040; Value = 0x1dd2da9769da011f; PC = 0x555555555320 *)
mov r8 L0x555555558040;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x555555558070; Value = 0x79822e30740f8a94; PC = 0x555555555324 *)
mov r9 L0x555555558070;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x5555555580a0; Value = 0x7bc15d47501d0f74; PC = 0x555555555328 *)
mov r10 L0x5555555580a0;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x5555555580d0; Value = 0x084f23e7133a9197; PC = 0x55555555532c *)
mov r11 L0x5555555580d0;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x555555558050; Value = 0xee534e14e50ea6bf; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x555555558050;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x555555558058; Value = 0xdacf89ea70fddb42; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x555555558058;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x555555558048; Value = 0xc1d38c33e7bd4911; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x555555558048;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x555555558078; Value = 0x274f2636a613dacd; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x555555558078;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x555555558068; Value = 0x3329889348e3611e; PC = 0x555555555343 *)
xor rax@uint64 rax L0x555555558068;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x555555558060; Value = 0x76cd1ada7bddb391; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x555555558060;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x555555558090; Value = 0xf129d553258ac6c9; PC = 0x555555555351 *)
xor rax@uint64 rax L0x555555558090;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x555555558080; Value = 0x648bbb76ad8eece7; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x555555558080;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x555555558088; Value = 0x841de7cdc8f8ba3d; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x555555558088;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x5555555580c8; Value = 0x818715f35150f4f0; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x5555555580c8;
(* xor    0x14(%rdi),%rax                          #! EA = L0x5555555580b8; Value = 0x604b94ba87023ffa; PC = 0x555555555364 *)
xor rax@uint64 rax L0x5555555580b8;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x5555555580a8; Value = 0xdef7504ff47bd92e; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x5555555580a8;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x555555558098; Value = 0x2ade13fd70a45485; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x555555558098;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x5555555580b0; Value = 0xbfc5ae08ed82cf6b; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x5555555580b0;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x5555555580c0; Value = 0x55660ce1001cc5f9; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x5555555580c0;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x5555555580d8; Value = 0x5c0794ebaa3e4dfd; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x5555555580d8;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558f0; Value = 0x0000000080000001; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558f0;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x7fffffffdac0; PC = 0x5555555553d5 *)
mov L0x7fffffffdac0 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x7fffffffdad0; PC = 0x5555555553df *)
mov L0x7fffffffdad0 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x5555555580f0; Value = 0x2ba8d5e7db313e6a; PC = 0x5555555553e6 *)
mov r12 L0x5555555580f0;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x7fffffffdac8; PC = 0x5555555553ed *)
mov L0x7fffffffdac8 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x555555558088; Value = 0x841de7cdc8f8ba3d; PC = 0x5555555553f4 *)
mov r9 L0x555555558088;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x555555558090; Value = 0xf129d553258ac6c9; PC = 0x5555555553fb *)
mov r10 L0x555555558090;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x7fffffffdae0; PC = 0x5555555553ff *)
mov L0x7fffffffdae0 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x555555558058; Value = 0xdacf89ea70fddb42; PC = 0x555555555406 *)
mov r8 L0x555555558058;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x5555555580c0; Value = 0x55660ce1001cc5f9; PC = 0x55555555540d *)
mov r11 L0x5555555580c0;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x7fffffffdad8; PC = 0x555555555411 *)
mov L0x7fffffffdad8 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x7fffffffdb00; PC = 0x555555555441 *)
mov L0x7fffffffdb00 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x555555558048; Value = 0xc1d38c33e7bd4911; PC = 0x55555555544b *)
mov r8 L0x555555558048;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x7fffffffdb08; PC = 0x555555555455 *)
mov L0x7fffffffdb08 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x555555558078; Value = 0x274f2636a613dacd; PC = 0x55555555545c *)
mov r9 L0x555555558078;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x7fffffffdaf8; PC = 0x555555555463 *)
mov L0x7fffffffdaf8 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x5555555580e0; Value = 0x4f60b42e2c8f1ed3; PC = 0x55555555546a *)
mov r12 L0x5555555580e0;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x7fffffffdaf0; PC = 0x555555555471 *)
mov L0x7fffffffdaf0 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x5555555580a8; Value = 0xdef7504ff47bd92e; PC = 0x555555555478 *)
mov r10 L0x5555555580a8;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x5555555580d8; Value = 0x5c0794ebaa3e4dfd; PC = 0x55555555547f *)
mov r11 L0x5555555580d8;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x7fffffffdae8; PC = 0x555555555483 *)
mov L0x7fffffffdae8 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x7fffffffdb18; PC = 0x5555555554b5 *)
mov L0x7fffffffdb18 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x555555558098; Value = 0x2ade13fd70a45485; PC = 0x5555555554bf *)
mov r10 L0x555555558098;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x7fffffffdb20; PC = 0x5555555554c6 *)
mov L0x7fffffffdb20 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x5555555580f8; Value = 0xcc0258a30644e223; PC = 0x5555555554cd *)
mov r12 L0x5555555580f8;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x7fffffffdb10; PC = 0x5555555554d4 *)
mov L0x7fffffffdb10 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x7fffffffdb30; PC = 0x5555555554de *)
mov L0x7fffffffdb30 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x555555558068; Value = 0x3329889348e3611e; PC = 0x5555555554e5 *)
mov r9 L0x555555558068;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x5555555580c8; Value = 0x818715f35150f4f0; PC = 0x5555555554ec *)
mov r11 L0x5555555580c8;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x7fffffffdb28; PC = 0x5555555554f0 *)
mov L0x7fffffffdb28 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x555555558060; Value = 0x76cd1ada7bddb391; PC = 0x5555555554f4 *)
mov r8 L0x555555558060;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x7fffffffdb40; PC = 0x555555555527 *)
mov L0x7fffffffdb40 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x7fffffffdb48; PC = 0x555555555534 *)
mov L0x7fffffffdb48 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x7fffffffdb38; PC = 0x55555555553e *)
mov L0x7fffffffdb38 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x7fffffffdb58; PC = 0x555555555548 *)
mov L0x7fffffffdb58 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x7fffffffdb50; PC = 0x555555555552 *)
mov L0x7fffffffdb50 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x555555558050; Value = 0xee534e14e50ea6bf; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x555555558050;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x555555558080; Value = 0x648bbb76ad8eece7; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x555555558080;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x5555555580e8; Value = 0x50a2a1d79f1ef2b3; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x5555555580e8;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x5555555580b0; Value = 0xbfc5ae08ed82cf6b; PC = 0x55555555556a *)
xor rax@uint64 rax L0x5555555580b0;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x5555555580b8; Value = 0x604b94ba87023ffa; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x5555555580b8;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x55555555558d *)
mov L0x7fffffffdb80 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x7fffffffdb60; PC = 0x55555555559a *)
mov L0x7fffffffdb60 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x7fffffffdb78; PC = 0x5555555555a4 *)
mov L0x7fffffffdb78 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x7fffffffdb70; PC = 0x5555555555ae *)
mov L0x7fffffffdb70 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x7fffffffdb68; PC = 0x5555555555b8 *)
mov L0x7fffffffdb68 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* mov    -0x64(%rdi),%r8                          #! EA = L0x7fffffffdac0; Value = 0x0e2e4980d944da77; PC = 0x555555555320 *)
mov r8 L0x7fffffffdac0;
(* mov    -0x34(%rdi),%r9                          #! EA = L0x7fffffffdaf0; Value = 0x3ddead3d8c1401b7; PC = 0x555555555324 *)
mov r9 L0x7fffffffdaf0;
(* mov    -0x4(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x2c2f3a8761e6f65c; PC = 0x555555555328 *)
mov r10 L0x7fffffffdb20;
(* mov    0x2c(%rdi),%r11                          #! EA = L0x7fffffffdb50; Value = 0xf235e528401d5007; PC = 0x55555555532c *)
mov r11 L0x7fffffffdb50;
(* xor    -0x54(%rdi),%rcx                         #! EA = L0x7fffffffdad0; Value = 0xbdb8076bb2b51801; PC = 0x555555555330 *)
xor rcx@uint64 rcx L0x7fffffffdad0;
(* xor    -0x4c(%rdi),%rdx                         #! EA = L0x7fffffffdad8; Value = 0x602c35affe556148; PC = 0x555555555334 *)
xor rdx@uint64 rdx L0x7fffffffdad8;
(* xor    %r8,%rax                                 #! PC = 0x555555555338 *)
xor rax@uint64 rax r8;
(* xor    -0x5c(%rdi),%rbx                         #! EA = L0x7fffffffdac8; Value = 0xfc3b205dbbdff960; PC = 0x55555555533b *)
xor rbx@uint64 rbx L0x7fffffffdac8;
(* xor    -0x2c(%rdi),%rcx                         #! EA = L0x7fffffffdaf8; Value = 0x0ea0ddc0d9366302; PC = 0x55555555533f *)
xor rcx@uint64 rcx L0x7fffffffdaf8;
(* xor    -0x3c(%rdi),%rax                         #! EA = L0x7fffffffdae8; Value = 0x04a77bfa126fc093; PC = 0x555555555343 *)
xor rax@uint64 rax L0x7fffffffdae8;
(* mov    %rbp,%r12                                #! PC = 0x555555555347 *)
mov r12 rbp;
(* xor    -0x44(%rdi),%rbp                         #! EA = L0x7fffffffdae0; Value = 0xd8f2b86d8510572f; PC = 0x55555555534a *)
xor rbp@uint64 rbp L0x7fffffffdae0;
(* xor    %r10,%rcx                                #! PC = 0x55555555534e *)
xor rcx@uint64 rcx r10;
(* xor    -0x14(%rdi),%rax                         #! EA = L0x7fffffffdb10; Value = 0xffb9fc9a0f77452e; PC = 0x555555555351 *)
xor rax@uint64 rax L0x7fffffffdb10;
(* xor    -0x24(%rdi),%rdx                         #! EA = L0x7fffffffdb00; Value = 0xd9dfed4af7c36e53; PC = 0x555555555355 *)
xor rdx@uint64 rdx L0x7fffffffdb00;
(* xor    %r9,%rbx                                 #! PC = 0x555555555359 *)
xor rbx@uint64 rbx r9;
(* xor    -0x1c(%rdi),%rbp                         #! EA = L0x7fffffffdb08; Value = 0xe7fb7b40b7e90583; PC = 0x55555555535c *)
xor rbp@uint64 rbp L0x7fffffffdb08;
(* xor    0x24(%rdi),%rcx                          #! EA = L0x7fffffffdb48; Value = 0xf28e8adaac7c03d8; PC = 0x555555555360 *)
xor rcx@uint64 rcx L0x7fffffffdb48;
(* xor    0x14(%rdi),%rax                          #! EA = L0x7fffffffdb38; Value = 0x58c5f58b0b1e40ce; PC = 0x555555555364 *)
xor rax@uint64 rax L0x7fffffffdb38;
(* xor    0x4(%rdi),%rdx                           #! EA = L0x7fffffffdb28; Value = 0x16e2aa8036b5013d; PC = 0x555555555368 *)
xor rdx@uint64 rdx L0x7fffffffdb28;
(* xor    -0xc(%rdi),%rbx                          #! EA = L0x7fffffffdb18; Value = 0x76004ea89b563e26; PC = 0x55555555536c *)
xor rbx@uint64 rbx L0x7fffffffdb18;
(* xor    0xc(%rdi),%rbp                           #! EA = L0x7fffffffdb30; Value = 0xe249aeb39c95d7db; PC = 0x555555555370 *)
xor rbp@uint64 rbp L0x7fffffffdb30;
(* mov    %rcx,%r13                                #! PC = 0x555555555374 *)
mov r13 rcx;
(* rol    %rcx                                     #! PC = 0x555555555377 *)
split rcx_H rcx_L rcx 63;
shl rcx_S rcx_L 1@uint64;
add rcx rcx_S rcx_H;
(* xor    %rax,%rcx                                #! PC = 0x55555555537a *)
xor rcx@uint64 rcx rax;
(* xor    %r11,%rdx                                #! PC = 0x55555555537d *)
xor rdx@uint64 rdx r11;
(* rol    %rax                                     #! PC = 0x555555555380 *)
split rax_H rax_L rax 63;
shl rax_S rax_L 1@uint64;
add rax rax_S rax_H;
(* xor    %rdx,%rax                                #! PC = 0x555555555383 *)
xor rax@uint64 rax rdx;
(* xor    0x1c(%rdi),%rbx                          #! EA = L0x7fffffffdb40; Value = 0xe1f0b375845fbd47; PC = 0x555555555386 *)
xor rbx@uint64 rbx L0x7fffffffdb40;
(* rol    %rdx                                     #! PC = 0x55555555538a *)
split rdx_H rdx_L rdx 63;
shl rdx_S rdx_L 1@uint64;
add rdx rdx_S rdx_H;
(* xor    %rbx,%rdx                                #! PC = 0x55555555538d *)
xor rdx@uint64 rdx rbx;
(* xor    0x34(%rdi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0xc52e05ccf15f628f; PC = 0x555555555390 *)
xor rbp@uint64 rbp L0x7fffffffdb58;
(* rol    %rbx                                     #! PC = 0x555555555394 *)
split rbx_H rbx_L rbx 63;
shl rbx_S rbx_L 1@uint64;
add rbx rbx_S rbx_H;
(* xor    %rbp,%rbx                                #! PC = 0x555555555397 *)
xor rbx@uint64 rbx rbp;
(* rol    %rbp                                     #! PC = 0x55555555539a *)
split rbp_H rbp_L rbp 63;
shl rbp_S rbp_L 1@uint64;
add rbp rbp_S rbp_H;
(* xor    %r13,%rbp                                #! PC = 0x55555555539d *)
xor rbp@uint64 rbp r13;
(* xor    %rcx,%r9                                 #! PC = 0x5555555553a0 *)
xor r9@uint64 r9 rcx;
(* xor    %rdx,%r10                                #! PC = 0x5555555553a3 *)
xor r10@uint64 r10 rdx;
(* rol    $0x2c,%r9                                #! PC = 0x5555555553a6 *)
split r9_H r9_L r9 (64-0x2c);
shl r9_S r9_L 0x2c@uint64;
add r9 r9_S r9_H;
(* xor    %rbp,%r11                                #! PC = 0x5555555553aa *)
xor r11@uint64 r11 rbp;
(* xor    %rax,%r12                                #! PC = 0x5555555553ad *)
xor r12@uint64 r12 rax;
(* rol    $0x2b,%r10                               #! PC = 0x5555555553b0 *)
split r10_H r10_L r10 (64-0x2b);
shl r10_S r10_L 0x2b@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r8                                 #! PC = 0x5555555553b4 *)
xor r8@uint64 r8 rbx;
(* mov    %r9,%r13                                 #! PC = 0x5555555553b7 *)
mov r13 r9;
(* rol    $0x15,%r11                               #! PC = 0x5555555553ba *)
split r11_H r11_L r11 (64-0x15);
shl r11_S r11_L 0x15@uint64;
add r11 r11_S r11_H;
(* or     %r10,%r9                                 #! PC = 0x5555555553be *)
or r9@uint64 r9 r10;
(* xor    %r8,%r9                                  #! PC = 0x5555555553c1 *)
xor r9@uint64 r9 r8;
(* rol    $0xe,%r12                                #! PC = 0x5555555553c4 *)
split r12_H r12_L r12 (64-0xe);
shl r12_S r12_L 0xe@uint64;
add r12 r12_S r12_H;
(* xor    (%r15),%r9                               #! EA = L0x5555555558f8; Value = 0x8000000080008008; PC = 0x5555555553c8 *)
xor r9@uint64 r9 L0x5555555558f8;
(* lea    0x8(%r15),%r15                           #! PC = 0x5555555553cb *)
(* lea EA, r15 *)
nop;
(* mov    %r12,%r14                                #! PC = 0x5555555553cf *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555553d2 *)
and r12@uint64 r12 r11;
(* mov    %r9,-0x64(%rsi)                          #! EA = L0x555555558040; PC = 0x5555555553d5 *)
mov L0x555555558040 r9;
(* xor    %r10,%r12                                #! PC = 0x5555555553d9 *)
xor r12@uint64 r12 r10;
(* not    %r10                                     #! PC = 0x5555555553dc *)
not r10@uint64 r10;
(* mov    %r12,-0x54(%rsi)                         #! EA = L0x555555558050; PC = 0x5555555553df *)
mov L0x555555558050 r12;
(* or     %r11,%r10                                #! PC = 0x5555555553e3 *)
or r10@uint64 r10 r11;
(* mov    0x4c(%rdi),%r12                          #! EA = L0x7fffffffdb70; Value = 0x867edb7567fc04c7; PC = 0x5555555553e6 *)
mov r12 L0x7fffffffdb70;
(* xor    %r13,%r10                                #! PC = 0x5555555553ea *)
xor r10@uint64 r10 r13;
(* mov    %r10,-0x5c(%rsi)                         #! EA = L0x555555558048; PC = 0x5555555553ed *)
mov L0x555555558048 r10;
(* and    %r8,%r13                                 #! PC = 0x5555555553f1 *)
and r13@uint64 r13 r8;
(* mov    -0x1c(%rdi),%r9                          #! EA = L0x7fffffffdb08; Value = 0xe7fb7b40b7e90583; PC = 0x5555555553f4 *)
mov r9 L0x7fffffffdb08;
(* xor    %r14,%r13                                #! PC = 0x5555555553f8 *)
xor r13@uint64 r13 r14;
(* mov    -0x14(%rdi),%r10                         #! EA = L0x7fffffffdb10; Value = 0xffb9fc9a0f77452e; PC = 0x5555555553fb *)
mov r10 L0x7fffffffdb10;
(* mov    %r13,-0x44(%rsi)                         #! EA = L0x555555558060; PC = 0x5555555553ff *)
mov L0x555555558060 r13;
(* or     %r8,%r14                                 #! PC = 0x555555555403 *)
or r14@uint64 r14 r8;
(* mov    -0x4c(%rdi),%r8                          #! EA = L0x7fffffffdad8; Value = 0x602c35affe556148; PC = 0x555555555406 *)
mov r8 L0x7fffffffdad8;
(* xor    %r11,%r14                                #! PC = 0x55555555540a *)
xor r14@uint64 r14 r11;
(* mov    0x1c(%rdi),%r11                          #! EA = L0x7fffffffdb40; Value = 0xe1f0b375845fbd47; PC = 0x55555555540d *)
mov r11 L0x7fffffffdb40;
(* mov    %r14,-0x4c(%rsi)                         #! EA = L0x555555558058; PC = 0x555555555411 *)
mov L0x555555558058 r14;
(* xor    %rbp,%r8                                 #! PC = 0x555555555415 *)
xor r8@uint64 r8 rbp;
(* xor    %rdx,%r12                                #! PC = 0x555555555418 *)
xor r12@uint64 r12 rdx;
(* rol    $0x1c,%r8                                #! PC = 0x55555555541b *)
split r8_H r8_L r8 (64-0x1c);
shl r8_S r8_L 0x1c@uint64;
add r8 r8_S r8_H;
(* xor    %rcx,%r11                                #! PC = 0x55555555541f *)
xor r11@uint64 r11 rcx;
(* xor    %rax,%r9                                 #! PC = 0x555555555422 *)
xor r9@uint64 r9 rax;
(* rol    $0x3d,%r12                               #! PC = 0x555555555425 *)
split r12_H r12_L r12 (64-0x3d);
shl r12_S r12_L 0x3d@uint64;
add r12 r12_S r12_H;
(* rol    $0x2d,%r11                               #! PC = 0x555555555429 *)
split r11_H r11_L r11 (64-0x2d);
shl r11_S r11_L 0x2d@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r10                                #! PC = 0x55555555542d *)
xor r10@uint64 r10 rbx;
(* rol    $0x14,%r9                                #! PC = 0x555555555430 *)
split r9_H r9_L r9 (64-0x14);
shl r9_S r9_L 0x14@uint64;
add r9 r9_S r9_H;
(* mov    %r8,%r13                                 #! PC = 0x555555555434 *)
mov r13 r8;
(* or     %r12,%r8                                 #! PC = 0x555555555437 *)
or r8@uint64 r8 r12;
(* rol    $0x3,%r10                                #! PC = 0x55555555543a *)
split r10_H r10_L r10 (64-0x3);
shl r10_S r10_L 0x3@uint64;
add r10 r10_S r10_H;
(* xor    %r11,%r8                                 #! PC = 0x55555555543e *)
xor r8@uint64 r8 r11;
(* mov    %r8,-0x24(%rsi)                          #! EA = L0x555555558080; PC = 0x555555555441 *)
mov L0x555555558080 r8;
(* mov    %r9,%r14                                 #! PC = 0x555555555445 *)
mov r14 r9;
(* and    %r13,%r9                                 #! PC = 0x555555555448 *)
and r9@uint64 r9 r13;
(* mov    -0x5c(%rdi),%r8                          #! EA = L0x7fffffffdac8; Value = 0xfc3b205dbbdff960; PC = 0x55555555544b *)
mov r8 L0x7fffffffdac8;
(* xor    %r12,%r9                                 #! PC = 0x55555555544f *)
xor r9@uint64 r9 r12;
(* not    %r12                                     #! PC = 0x555555555452 *)
not r12@uint64 r12;
(* mov    %r9,-0x1c(%rsi)                          #! EA = L0x555555558088; PC = 0x555555555455 *)
mov L0x555555558088 r9;
(* or     %r11,%r12                                #! PC = 0x555555555459 *)
or r12@uint64 r12 r11;
(* mov    -0x2c(%rdi),%r9                          #! EA = L0x7fffffffdaf8; Value = 0x0ea0ddc0d9366302; PC = 0x55555555545c *)
mov r9 L0x7fffffffdaf8;
(* xor    %r10,%r12                                #! PC = 0x555555555460 *)
xor r12@uint64 r12 r10;
(* mov    %r12,-0x2c(%rsi)                         #! EA = L0x555555558078; PC = 0x555555555463 *)
mov L0x555555558078 r12;
(* and    %r10,%r11                                #! PC = 0x555555555467 *)
and r11@uint64 r11 r10;
(* mov    0x3c(%rdi),%r12                          #! EA = L0x7fffffffdb60; Value = 0x8c335b51f825c762; PC = 0x55555555546a *)
mov r12 L0x7fffffffdb60;
(* xor    %r14,%r11                                #! PC = 0x55555555546e *)
xor r11@uint64 r11 r14;
(* mov    %r11,-0x34(%rsi)                         #! EA = L0x555555558070; PC = 0x555555555471 *)
mov L0x555555558070 r11;
(* or     %r10,%r14                                #! PC = 0x555555555475 *)
or r14@uint64 r14 r10;
(* mov    0x4(%rdi),%r10                           #! EA = L0x7fffffffdb28; Value = 0x16e2aa8036b5013d; PC = 0x555555555478 *)
mov r10 L0x7fffffffdb28;
(* xor    %r13,%r14                                #! PC = 0x55555555547c *)
xor r14@uint64 r14 r13;
(* mov    0x34(%rdi),%r11                          #! EA = L0x7fffffffdb58; Value = 0xc52e05ccf15f628f; PC = 0x55555555547f *)
mov r11 L0x7fffffffdb58;
(* mov    %r14,-0x3c(%rsi)                         #! EA = L0x555555558068; PC = 0x555555555483 *)
mov L0x555555558068 r14;
(* xor    %rbp,%r10                                #! PC = 0x555555555487 *)
xor r10@uint64 r10 rbp;
(* xor    %rax,%r11                                #! PC = 0x55555555548a *)
xor r11@uint64 r11 rax;
(* rol    $0x19,%r10                               #! PC = 0x55555555548d *)
split r10_H r10_L r10 (64-0x19);
shl r10_S r10_L 0x19@uint64;
add r10 r10_S r10_H;
(* xor    %rdx,%r9                                 #! PC = 0x555555555491 *)
xor r9@uint64 r9 rdx;
(* rol    $0x8,%r11                                #! PC = 0x555555555494 *)
split r11_H r11_L r11 (64-0x8);
shl r11_S r11_L 0x8@uint64;
add r11 r11_S r11_H;
(* xor    %rbx,%r12                                #! PC = 0x555555555498 *)
xor r12@uint64 r12 rbx;
(* rol    $0x6,%r9                                 #! PC = 0x55555555549b *)
split r9_H r9_L r9 (64-0x6);
shl r9_S r9_L 0x6@uint64;
add r9 r9_S r9_H;
(* xor    %rcx,%r8                                 #! PC = 0x55555555549f *)
xor r8@uint64 r8 rcx;
(* rol    $0x12,%r12                               #! PC = 0x5555555554a2 *)
split r12_H r12_L r12 (64-0x12);
shl r12_S r12_L 0x12@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x5555555554a6 *)
mov r13 r10;
(* and    %r11,%r10                                #! PC = 0x5555555554a9 *)
and r10@uint64 r10 r11;
(* rol    %r8                                      #! PC = 0x5555555554ac *)
split r8_H r8_L r8 63;
shl r8_S r8_L 1@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x5555555554af *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b2 *)
xor r10@uint64 r10 r9;
(* mov    %r10,-0xc(%rsi)                          #! EA = L0x555555558098; PC = 0x5555555554b5 *)
mov L0x555555558098 r10;
(* mov    %r12,%r14                                #! PC = 0x5555555554b9 *)
mov r14 r12;
(* and    %r11,%r12                                #! PC = 0x5555555554bc *)
and r12@uint64 r12 r11;
(* mov    -0xc(%rdi),%r10                          #! EA = L0x7fffffffdb18; Value = 0x76004ea89b563e26; PC = 0x5555555554bf *)
mov r10 L0x7fffffffdb18;
(* xor    %r13,%r12                                #! PC = 0x5555555554c3 *)
xor r12@uint64 r12 r13;
(* mov    %r12,-0x4(%rsi)                          #! EA = L0x5555555580a0; PC = 0x5555555554c6 *)
mov L0x5555555580a0 r12;
(* or     %r9,%r13                                 #! PC = 0x5555555554ca *)
or r13@uint64 r13 r9;
(* mov    0x54(%rdi),%r12                          #! EA = L0x7fffffffdb78; Value = 0x9d2fe354084dd32a; PC = 0x5555555554cd *)
mov r12 L0x7fffffffdb78;
(* xor    %r8,%r13                                 #! PC = 0x5555555554d1 *)
xor r13@uint64 r13 r8;
(* mov    %r13,-0x14(%rsi)                         #! EA = L0x555555558090; PC = 0x5555555554d4 *)
mov L0x555555558090 r13;
(* and    %r8,%r9                                  #! PC = 0x5555555554d8 *)
and r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x5555555554db *)
xor r9@uint64 r9 r14;
(* mov    %r9,0xc(%rsi)                            #! EA = L0x5555555580b0; PC = 0x5555555554de *)
mov L0x5555555580b0 r9;
(* or     %r8,%r14                                 #! PC = 0x5555555554e2 *)
or r14@uint64 r14 r8;
(* mov    -0x3c(%rdi),%r9                          #! EA = L0x7fffffffdae8; Value = 0x04a77bfa126fc093; PC = 0x5555555554e5 *)
mov r9 L0x7fffffffdae8;
(* xor    %r11,%r14                                #! PC = 0x5555555554e9 *)
xor r14@uint64 r14 r11;
(* mov    0x24(%rdi),%r11                          #! EA = L0x7fffffffdb48; Value = 0xf28e8adaac7c03d8; PC = 0x5555555554ec *)
mov r11 L0x7fffffffdb48;
(* mov    %r14,0x4(%rsi)                           #! EA = L0x5555555580a8; PC = 0x5555555554f0 *)
mov L0x5555555580a8 r14;
(* mov    -0x44(%rdi),%r8                          #! EA = L0x7fffffffdae0; Value = 0xd8f2b86d8510572f; PC = 0x5555555554f4 *)
mov r8 L0x7fffffffdae0;
(* xor    %rcx,%r10                                #! PC = 0x5555555554f8 *)
xor r10@uint64 r10 rcx;
(* xor    %rdx,%r11                                #! PC = 0x5555555554fb *)
xor r11@uint64 r11 rdx;
(* rol    $0xa,%r10                                #! PC = 0x5555555554fe *)
split r10_H r10_L r10 (64-0xa);
shl r10_S r10_L 0xa@uint64;
add r10 r10_S r10_H;
(* xor    %rbx,%r9                                 #! PC = 0x555555555502 *)
xor r9@uint64 r9 rbx;
(* rol    $0xf,%r11                                #! PC = 0x555555555505 *)
split r11_H r11_L r11 (64-0xf);
shl r11_S r11_L 0xf@uint64;
add r11 r11_S r11_H;
(* xor    %rbp,%r12                                #! PC = 0x555555555509 *)
xor r12@uint64 r12 rbp;
(* rol    $0x24,%r9                                #! PC = 0x55555555550c *)
split r9_H r9_L r9 (64-0x24);
shl r9_S r9_L 0x24@uint64;
add r9 r9_S r9_H;
(* xor    %rax,%r8                                 #! PC = 0x555555555510 *)
xor r8@uint64 r8 rax;
(* rol    $0x38,%r12                               #! PC = 0x555555555513 *)
split r12_H r12_L r12 (64-0x38);
shl r12_S r12_L 0x38@uint64;
add r12 r12_S r12_H;
(* mov    %r10,%r13                                #! PC = 0x555555555517 *)
mov r13 r10;
(* or     %r11,%r10                                #! PC = 0x55555555551a *)
or r10@uint64 r10 r11;
(* rol    $0x1b,%r8                                #! PC = 0x55555555551d *)
split r8_H r8_L r8 (64-0x1b);
shl r8_S r8_L 0x1b@uint64;
add r8 r8_S r8_H;
(* not    %r11                                     #! PC = 0x555555555521 *)
not r11@uint64 r11;
(* xor    %r9,%r10                                 #! PC = 0x555555555524 *)
xor r10@uint64 r10 r9;
(* mov    %r10,0x1c(%rsi)                          #! EA = L0x5555555580c0; PC = 0x555555555527 *)
mov L0x5555555580c0 r10;
(* mov    %r12,%r14                                #! PC = 0x55555555552b *)
mov r14 r12;
(* or     %r11,%r12                                #! PC = 0x55555555552e *)
or r12@uint64 r12 r11;
(* xor    %r13,%r12                                #! PC = 0x555555555531 *)
xor r12@uint64 r12 r13;
(* mov    %r12,0x24(%rsi)                          #! EA = L0x5555555580c8; PC = 0x555555555534 *)
mov L0x5555555580c8 r12;
(* and    %r9,%r13                                 #! PC = 0x555555555538 *)
and r13@uint64 r13 r9;
(* xor    %r8,%r13                                 #! PC = 0x55555555553b *)
xor r13@uint64 r13 r8;
(* mov    %r13,0x14(%rsi)                          #! EA = L0x5555555580b8; PC = 0x55555555553e *)
mov L0x5555555580b8 r13;
(* or     %r8,%r9                                  #! PC = 0x555555555542 *)
or r9@uint64 r9 r8;
(* xor    %r14,%r9                                 #! PC = 0x555555555545 *)
xor r9@uint64 r9 r14;
(* mov    %r9,0x34(%rsi)                           #! EA = L0x5555555580d8; PC = 0x555555555548 *)
mov L0x5555555580d8 r9;
(* and    %r14,%r8                                 #! PC = 0x55555555554c *)
and r8@uint64 r8 r14;
(* xor    %r11,%r8                                 #! PC = 0x55555555554f *)
xor r8@uint64 r8 r11;
(* mov    %r8,0x2c(%rsi)                           #! EA = L0x5555555580d0; PC = 0x555555555552 *)
mov L0x5555555580d0 r8;
(* xor    -0x54(%rdi),%rdx                         #! EA = L0x7fffffffdad0; Value = 0xbdb8076bb2b51801; PC = 0x555555555556 *)
xor rdx@uint64 rdx L0x7fffffffdad0;
(* xor    -0x24(%rdi),%rbp                         #! EA = L0x7fffffffdb00; Value = 0xd9dfed4af7c36e53; PC = 0x55555555555a *)
xor rbp@uint64 rbp L0x7fffffffdb00;
(* rol    $0x3e,%rdx                               #! PC = 0x55555555555e *)
split rdx_H rdx_L rdx (64-0x3e);
shl rdx_S rdx_L 0x3e@uint64;
add rdx rdx_S rdx_H;
(* xor    0x44(%rdi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xd6a59cd027a68607; PC = 0x555555555562 *)
xor rcx@uint64 rcx L0x7fffffffdb68;
(* rol    $0x37,%rbp                               #! PC = 0x555555555566 *)
split rbp_H rbp_L rbp (64-0x37);
shl rbp_S rbp_L 0x37@uint64;
add rbp rbp_S rbp_H;
(* xor    0xc(%rdi),%rax                           #! EA = L0x7fffffffdb30; Value = 0xe249aeb39c95d7db; PC = 0x55555555556a *)
xor rax@uint64 rax L0x7fffffffdb30;
(* rol    $0x2,%rcx                                #! PC = 0x55555555556e *)
split rcx_H rcx_L rcx (64-0x2);
shl rcx_S rcx_L 0x2@uint64;
add rcx rcx_S rcx_H;
(* xor    0x14(%rdi),%rbx                          #! EA = L0x7fffffffdb38; Value = 0x58c5f58b0b1e40ce; PC = 0x555555555572 *)
xor rbx@uint64 rbx L0x7fffffffdb38;
(* xchg   %rsi,%rdi                                #! PC = 0x555555555576 *)
mov rdi_T rdi;
mov rdi rsi;
mov rsi rdi_T;
(* rol    $0x27,%rax                               #! PC = 0x555555555579 *)
split rax_H rax_L rax (64-0x27);
shl rax_S rax_L 0x27@uint64;
add rax rax_S rax_H;
(* rol    $0x29,%rbx                               #! PC = 0x55555555557d *)
split rbx_H rbx_L rbx (64-0x29);
shl rbx_S rbx_L 0x29@uint64;
add rbx rbx_S rbx_H;
(* mov    %rdx,%r13                                #! PC = 0x555555555581 *)
mov r13 rdx;
(* and    %rbp,%rdx                                #! PC = 0x555555555584 *)
and rdx@uint64 rdx rbp;
(* not    %rbp                                     #! PC = 0x555555555587 *)
not rbp@uint64 rbp;
(* xor    %rcx,%rdx                                #! PC = 0x55555555558a *)
xor rdx@uint64 rdx rcx;
(* mov    %rdx,0x5c(%rdi)                          #! EA = L0x555555558100; PC = 0x55555555558d *)
mov L0x555555558100 rdx;
(* mov    %rax,%r14                                #! PC = 0x555555555591 *)
mov r14 rax;
(* and    %rbp,%rax                                #! PC = 0x555555555594 *)
and rax@uint64 rax rbp;
(* xor    %r13,%rax                                #! PC = 0x555555555597 *)
xor rax@uint64 rax r13;
(* mov    %rax,0x3c(%rdi)                          #! EA = L0x5555555580e0; PC = 0x55555555559a *)
mov L0x5555555580e0 rax;
(* or     %rcx,%r13                                #! PC = 0x55555555559e *)
or r13@uint64 r13 rcx;
(* xor    %rbx,%r13                                #! PC = 0x5555555555a1 *)
xor r13@uint64 r13 rbx;
(* mov    %r13,0x54(%rdi)                          #! EA = L0x5555555580f8; PC = 0x5555555555a4 *)
mov L0x5555555580f8 r13;
(* and    %rbx,%rcx                                #! PC = 0x5555555555a8 *)
and rcx@uint64 rcx rbx;
(* xor    %r14,%rcx                                #! PC = 0x5555555555ab *)
xor rcx@uint64 rcx r14;
(* mov    %rcx,0x4c(%rdi)                          #! EA = L0x5555555580f0; PC = 0x5555555555ae *)
mov L0x5555555580f0 rcx;
(* or     %r14,%rbx                                #! PC = 0x5555555555b2 *)
or rbx@uint64 rbx r14;
(* xor    %rbp,%rbx                                #! PC = 0x5555555555b5 *)
xor rbx@uint64 rbx rbp;
(* mov    %rbx,0x44(%rdi)                          #! EA = L0x5555555580e8; PC = 0x5555555555b8 *)
mov L0x5555555580e8 rbx;
(* mov    %rdx,%rbp                                #! PC = 0x5555555555bc *)
mov rbp rdx;
(* mov    %r13,%rdx                                #! PC = 0x5555555555bf *)
mov rdx r13;
(* test   $0xff,%r15                               #! PC = 0x5555555555c2 *)
(* test 0xff, r15 *)
nop;
(* #jne    0x555555555320 <__KeccakF1600+32>       #! PC = 0x5555555555c9 *)
#jne    0x555555555320 <__KeccakF1600+32>       #! 0x5555555555c9 = 0x5555555555c9;
(* lea    -0xc0(%r15),%r15                         #! PC = 0x5555555555cf *)
(* lea EA, r15 *)
nop;
(* #! <- SP = 0x7fffffffdab8 *)
#! 0x7fffffffdab8 = 0x7fffffffdab8;
(* #repz retq                                      #! PC = 0x5555555555d6 *)
#repz retq                                      #! 0x5555555555d6 = 0x5555555555d6;
(* notq   -0x5c(%rdi)                              #! EA = L0x555555558048; PC = 0x55555555561e *)
not L0x555555558048@uint64 L0x555555558048;
(* notq   -0x54(%rdi)                              #! EA = L0x555555558050; PC = 0x555555555622 *)
not L0x555555558050@uint64 L0x555555558050;
(* notq   -0x24(%rdi)                              #! EA = L0x555555558080; PC = 0x555555555626 *)
not L0x555555558080@uint64 L0x555555558080;
(* notq   -0x4(%rdi)                               #! EA = L0x5555555580a0; PC = 0x55555555562a *)
not L0x5555555580a0@uint64 L0x5555555580a0;
(* notq   0x24(%rdi)                               #! EA = L0x5555555580c8; PC = 0x55555555562e *)
not L0x5555555580c8@uint64 L0x5555555580c8;
(* notq   0x3c(%rdi)                               #! EA = L0x5555555580e0; PC = 0x555555555632 *)
not L0x5555555580e0@uint64 L0x5555555580e0;
(* lea    -0x64(%rdi),%rdi                         #! PC = 0x555555555636 *)
(* lea EA, rdi *)
nop;
(* add    $0xc8,%rsp                               #! PC = 0x55555555563a *)
adds dc rsp rsp 0xc8@uint64;
(* pop    %r15                                     #! EA = L0x7fffffffdb88; Value = 0x0000000000000000; PC = 0x555555555641 *)
(* pop r15 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffdb90; Value = 0x0000000000000015; PC = 0x555555555643 *)
(* pop r14 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffdb98; Value = 0x0000000000000158; PC = 0x555555555645 *)
(* pop r13 *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffdba0; Value = 0x00007fffffffdc88; PC = 0x555555555647 *)
(* pop r12 *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffdba8; Value = 0x00007fffffffddf0; PC = 0x555555555649 *)
(* pop rbp *)
nop;
(* pop    %rbx                                     #! EA = L0x7fffffffdbb0; Value = 0x0000555555555950; PC = 0x55555555564a *)
(* pop rbx *)
nop;
(* #! <- SP = 0x7fffffffdbb8 *)
#! 0x7fffffffdbb8 = 0x7fffffffdbb8;
(* #repz retq                                      #! PC = 0x55555555564b *)
#repz retq                                      #! 0x55555555564b = 0x55555555564b;


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

