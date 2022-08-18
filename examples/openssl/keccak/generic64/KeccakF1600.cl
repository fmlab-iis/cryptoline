proc main (* KeccakF1600 *)
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
  true && true
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

nondet rdi@uint64; nondet rsp@uint64;

(* #! -> SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* push   %r15                                     #! EA = L0x7fffffffd9b0; PC = 0x5555555551b0 *)
(* push r15 *)
nop;
(* mov    %rdi,%rax                                #! PC = 0x5555555551b2 *)
mov rax rdi;
(* push   %r14                                     #! EA = L0x7fffffffd9a8; PC = 0x5555555551b5 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffd9a0; PC = 0x5555555551b7 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffd998; PC = 0x5555555551b9 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffd990; PC = 0x5555555551bb *)
(* push rbp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffd988; PC = 0x5555555551bc *)
(* push rbx *)
nop;
(* sub    $0x70,%rsp                               #! PC = 0x5555555551bd *)
subs dc rsp rsp 0x70@uint64;
(* mov    0x40(%rax),%rdx                          #! EA = L0x555555558080; Value = 0x0000000000000000; PC = 0x5555555551c1 *)
mov rdx L0x555555558080;
(* mov    0x78(%rax),%rcx                          #! EA = L0x5555555580b8; Value = 0x0000555555555ced; PC = 0x5555555551c5 *)
mov rcx L0x5555555580b8;
(* mov    %rdi,0x60(%rsp)                          #! EA = L0x7fffffffd978; PC = 0x5555555551c9 *)
mov L0x7fffffffd978 rdi;
(* mov    0x8(%rdi),%rdi                           #! EA = L0x555555558048; Value = 0x0000040000000200; PC = 0x5555555551ce *)
mov rdi L0x555555558048;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdx                                     #! PC = 0x5555555551d2 *)
(* not rdx@uint64 rdx; *)
(* mov    %rcx,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555551d5 *)
mov L0x7fffffffd8c8 rcx;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdi                                     #! PC = 0x5555555551da *)
(* not rdi@uint64 rdi; *)
(* mov    %rdx,0x40(%rax)                          #! EA = L0x555555558080; PC = 0x5555555551dd *)
mov L0x555555558080 rdx;
(* mov    %rdi,0x8(%rax)                           #! EA = L0x555555558048; PC = 0x5555555551e1 *)
mov L0x555555558048 rdi;
(* mov    %rdi,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x5555555551e5 *)
mov L0x7fffffffd8d0 rdi;
(* mov    0x10(%rax),%rdi                          #! EA = L0x555555558050; Value = 0x0000000000000000; PC = 0x5555555551ea *)
mov rdi L0x555555558050;
(* mov    %rdx,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555551ee *)
mov L0x7fffffffd910 rdx;
(* mov    0x88(%rax),%rdx                          #! EA = L0x5555555580c8; Value = 0x0000555555555ca0; PC = 0x5555555551f3 *)
mov rdx L0x5555555580c8;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdi                                     #! PC = 0x5555555551fa *)
(* not rdi@uint64 rdi; *)
(* mov    %rdi,0x10(%rax)                          #! EA = L0x555555558050; PC = 0x5555555551fd *)
mov L0x555555558050 rdi;
(* mov    %rdi,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x555555555201 *)
mov L0x7fffffffd8f0 rdi;
(* mov    0x60(%rax),%rdi                          #! EA = L0x5555555580a0; Value = 0x00000000000000c2; PC = 0x555555555206 *)
mov rdi L0x5555555580a0;
(* mov    %rdi,%r15                                #! PC = 0x55555555520a *)
mov r15 rdi;
(* mov    %rdx,%rdi                                #! PC = 0x55555555520d *)
mov rdi rdx;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdi                                     #! PC = 0x555555555210 *)
(* not rdi@uint64 rdi; *)
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %r15                                     #! PC = 0x555555555213 *)
(* not r15@uint64 r15; *)
(* mov    %rdi,0x88(%rax)                          #! EA = L0x5555555580c8; PC = 0x555555555216 *)
mov L0x5555555580c8 rdi;
(* mov    %rdi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555521d *)
mov L0x7fffffffd930 rdi;
(* mov    0xa0(%rax),%rdi                          #! EA = L0x5555555580e0; Value = 0x00007fffffffdbc0; PC = 0x555555555222 *)
mov rdi L0x5555555580e0;
(* mov    %r15,0x60(%rax)                          #! EA = L0x5555555580a0; PC = 0x555555555229 *)
mov L0x5555555580a0 r15;
(* mov    %rdi,%rdx                                #! PC = 0x55555555522d *)
mov rdx rdi;
(* mov    (%rax),%rdi                              #! EA = L0x555555558040; Value = 0x0000004000000000; PC = 0x555555555230 *)
mov rdi L0x555555558040;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdx                                     #! PC = 0x555555555233 *)
(* not rdx@uint64 rdx; *)
(* mov    %rdi,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555236 *)
mov L0x7fffffffd8b0 rdi;
(* mov    0x28(%rax),%rdi                          #! EA = L0x555555558068; Value = 0x0000000000000000; PC = 0x55555555523b *)
mov rdi L0x555555558068;
(* mov    %rdx,0xa0(%rax)                          #! EA = L0x5555555580e0; PC = 0x55555555523f *)
mov L0x5555555580e0 rdx;
(* mov    %rdi,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x555555555246 *)
mov L0x7fffffffd8b8 rdi;
(* mov    0x50(%rax),%rdi                          #! EA = L0x555555558090; Value = 0x0000555555554040; PC = 0x55555555524b *)
mov rdi L0x555555558090;
(* mov    %rdi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x55555555524f *)
mov L0x7fffffffd8c0 rdi;
(* mov    0x30(%rax),%rdi                          #! EA = L0x555555558070; Value = 0x0000000000000000; PC = 0x555555555254 *)
mov rdi L0x555555558070;
(* mov    0x58(%rax),%rcx                          #! EA = L0x555555558098; Value = 0x0000000000f0b5ff; PC = 0x555555555258 *)
mov rcx L0x555555558098;
(* mov    0xc0(%rax),%rbp                          #! EA = L0x555555558100; Value = 0x0000000000000000; PC = 0x55555555525c *)
mov rbp L0x555555558100;
(* mov    %rdi,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555263 *)
mov L0x7fffffffd8d8 rdi;
(* mov    0xa8(%rax),%rdi                          #! EA = L0x5555555580e8; Value = 0x0000000000000000; PC = 0x555555555268 *)
mov rdi L0x5555555580e8;
(* mov    %rcx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x55555555526f *)
mov L0x7fffffffd8e0 rcx;
(* mov    0x38(%rax),%rcx                          #! EA = L0x555555558078; Value = 0x0000000000000000; PC = 0x555555555274 *)
mov rcx L0x555555558078;
(* mov    %rbp,%rsi                                #! PC = 0x555555555278 *)
mov rsi rbp;
(* mov    %rdx,%rbp                                #! PC = 0x55555555527b *)
mov rbp rdx;
(* mov    %rdi,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555527e *)
mov L0x7fffffffd8e8 rdi;
(* mov    0x18(%rax),%rdi                          #! EA = L0x555555558058; Value = 0x0000000000000000; PC = 0x555555555283 *)
mov rdi L0x555555558058;
(* mov    %rcx,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555287 *)
mov L0x7fffffffd8f8 rcx;
(* mov    0x68(%rax),%rcx                          #! EA = L0x5555555580a8; Value = 0x00007fffffffdab7; PC = 0x55555555528c *)
mov rcx L0x5555555580a8;
(* mov    %rdi,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555290 *)
mov L0x7fffffffd900 rdi;
(* mov    0xb8(%rax),%rdi                          #! EA = L0x5555555580f8; Value = 0x0000000000000000; PC = 0x555555555295 *)
mov rdi L0x5555555580f8;
(* mov    %rcx,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x55555555529c *)
mov L0x7fffffffd920 rcx;
(* mov    0x20(%rax),%rcx                          #! EA = L0x555555558060; Value = 0x0000000000000000; PC = 0x5555555552a1 *)
mov rcx L0x555555558060;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x5555555552a5 *)
mov L0x7fffffffd940 rdi;
(* mov    0x48(%rax),%rdi                          #! EA = L0x555555558088; Value = 0x0000000000000000; PC = 0x5555555552aa *)
mov rdi L0x555555558088;
(* mov    %rcx,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x5555555552ae *)
mov L0x7fffffffd908 rcx;
(* mov    0x70(%rax),%rcx                          #! EA = L0x5555555580b0; Value = 0x00007fffffffdab6; PC = 0x5555555552b3 *)
mov rcx L0x5555555580b0;
(* mov    %rdi,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555552b7 *)
mov L0x7fffffffd918 rdi;
(* mov    0x98(%rax),%rdi                          #! EA = L0x5555555580d8; Value = 0x0000555555555060; PC = 0x5555555552bb *)
mov rdi L0x5555555580d8;
(* mov    0x90(%rax),%r14                          #! EA = L0x5555555580d0; Value = 0x0000000000000000; PC = 0x5555555552c2 *)
mov r14 L0x5555555580d0;
(* mov    0x80(%rax),%r12                          #! EA = L0x5555555580c0; Value = 0x00007ffff7fb02e8; PC = 0x5555555552c9 *)
mov r12 L0x5555555580c0;
(* mov    %rcx,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x5555555552d0 *)
mov L0x7fffffffd928 rcx;
(* mov    0xb0(%rax),%r8                           #! EA = L0x5555555580f0; Value = 0x0000000000000000; PC = 0x5555555552d5 *)
mov r8 L0x5555555580f0;
(* lea    0xd3d(%rip),%rax        # 0x555555556020 <iotas>#! PC = 0x5555555552dc *)
(* lea 0xd3d\(%rip\), rax *)
nop;
(* mov    %rdi,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555552e3 *)
mov L0x7fffffffd938 rdi;
(* mov    %rax,-0x70(%rsp)                         #! EA = L0x7fffffffd8a8; PC = 0x5555555552e8 *)
mov L0x7fffffffd8a8 rax;
(* mov    %r14,%r10                                #! PC = 0x5555555552ed *)
mov r10 r14;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0xffffffffffffffff; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x0000000000000000; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xffffaaaaaaaaa35f; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0x0000000000000000; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0xffffffffffffffff; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x00007fffffffdab7; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x0000004000000000; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xfffffbfffffffdff; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x0000000000000000; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x0000000000000000; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x0000000000f0b5ff; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x0000555555554040; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x0000555555555ced; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x0000000000000000; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x0000000000000000; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x00007fffffffdab6; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0x0000555555555060; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x0000000000000000; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x0000004000000000; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556020; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556020; Value = 0x0000000000000001; PC = 0x5555555553bb *)
mov r13 L0x555555556020;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x0000000000000000; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0x0000000000000000; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x0000555555554040; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xfffffbfffffffdff; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0x0000555555555060; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x00007fffffffdab7; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x0000000000000000; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x0000000000000000; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0xffffaaaaaaaaa35f; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x0000000000000000; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x0000000000f0b5ff; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x0000000000000000; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x00007fffffffdab6; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x0000555555555ced; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x0000000000000000; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0xffffffffffffffff; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0xffffffffffffffff; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x0004449c690505c0; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x7fda27ffffc4bfb8; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0xffdf5d0e68aafbed; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x000052f5ff200c04; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x0021005338041340; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0xa0059515449de0fb; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x200450808f4785ca; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0xa8056ff6cb6eaaaa; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x0000dd1c7964a0f8; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0x3057dbe30aa2abaa; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0x00d4d777570ef650; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x8a8aed08f9e00402; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0x77da00001c5b5505; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x2800108107ce8007; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x85de0d00000dd119; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556020; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xa0059515449de0fb; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556028; Value = 0x0000000000008082; PC = 0x5555555556ca *)
mov r15 L0x555555556028;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x2800108107ce8007; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xffdf5d0e68aafbed; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x0000dd1c7964a0f8; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x200450808f4785ca; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0xa8056ff6cb6eaaaa; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x85de0d00000dd119; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0x00d4d777570ef650; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0x77da00001c5b5505; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x0004449c690505c0; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x0021005338041340; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x7aabaaa968d6a7b6; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x91780b0003380039; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x000052f5ff200c04; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0x3057dbe30aa2abaa; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0xe738020001000024; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x8a8aed08f9e00402; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x7fda27ffffc4bfb8; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556030; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x4787dd7b01769213; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x31a2bbe18c343c55; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x7cfd124a47c796b8; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0x9d25c606baa502aa; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0xb7ec38a341c83257; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x47f7612e8e1176b1; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x75d61d7737091895; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xcf20d308639131d5; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x4eb8f7ea65732e79; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x0e1ed4d1ec900a7b; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x817b2338156bee7c; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x583535b0a83e6c22; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x9a1c494d113d92d7; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x4844e86f5a793d63; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0xdcc76b09a057cfae; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0xbe25ee6540d8e3cf; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x3ed0575589ed2073; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x5a0879af3aa250d3; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0xc0d215e1317f2ea1; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x0e1ed4d1ec900a7b; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x75d61d7737091895; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556030; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556030; Value = 0x800000000000808a; PC = 0x5555555553bb *)
mov r13 L0x555555556030;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x3ed0575589ed2073; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0x9d25c606baa502aa; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x9a1c494d113d92d7; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xcf20d308639131d5; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0xc0d215e1317f2ea1; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x47f7612e8e1176b1; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x31a2bbe18c343c55; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x817b2338156bee7c; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x7cfd124a47c796b8; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0xbe25ee6540d8e3cf; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x583535b0a83e6c22; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x4eb8f7ea65732e79; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x5a0879af3aa250d3; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x4844e86f5a793d63; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0xdcc76b09a057cfae; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x4787dd7b01769213; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0xb7ec38a341c83257; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xe92179d4fd65d317; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x2a3f7e3b3a64eb41; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x81311c261a064f00; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x8c4447c9f890346b; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x4e72823c70e79733; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x21b06314e89dbb17; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x76c1bd447d94ecfa; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x0199931059563341; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0xb52f7e0ef747959f; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0x0d1d1fb76749e400; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0xb77ab9793ba5542c; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x2b911961e3787a4b; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0x780436bb13aee5d3; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x1f008eba185ac928; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0xecc2d04e30941b23; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556030; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x21b06314e89dbb17; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556038; Value = 0x8000000080008000; PC = 0x5555555556ca *)
mov r15 L0x555555556038;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x1f008eba185ac928; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x81311c261a064f00; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0xb52f7e0ef747959f; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x76c1bd447d94ecfa; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x0199931059563341; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0xecc2d04e30941b23; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0xb77ab9793ba5542c; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0x780436bb13aee5d3; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xe92179d4fd65d317; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x4e72823c70e79733; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x3b086b08a120060f; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xfb785d7c453a0931; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x8c4447c9f890346b; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0x0d1d1fb76749e400; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x81bfb39d03a77fa8; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x2b911961e3787a4b; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x2a3f7e3b3a64eb41; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556040; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0xba18ff26cf669276; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0xad43b756b7e660a1; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xf961af3f406050e7; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xc4d89eeb0954d3dc; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x4c182e5b7a7489cc; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x74af0a18cafdbbe1; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x1c692d9004992913; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0x08cef5b3b6f6b406; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x98ccd7f468529a3c; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x8fcf54e7e38af9ab; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0xa1e9d6e9ae1ebbf5; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x6675eef882c0c6f4; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0xe5a8e7c499c610ec; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xebb54eda26f0d126; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0xf5f381621f682a30; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x0bbf2d939820a4fd; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x8144eeeac7fcdc8a; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x8714cdfa8b8224c3; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0xa1e6adb9ebadc472; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x8fcf54e7e38af9ab; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x1c692d9004992913; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556040; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556040; Value = 0x000000000000808b; PC = 0x5555555553bb *)
mov r13 L0x555555556040;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x8144eeeac7fcdc8a; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xc4d89eeb0954d3dc; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0xe5a8e7c499c610ec; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0x08cef5b3b6f6b406; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0xa1e6adb9ebadc472; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x74af0a18cafdbbe1; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xad43b756b7e660a1; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0xa1e9d6e9ae1ebbf5; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0xf961af3f406050e7; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x0bbf2d939820a4fd; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x6675eef882c0c6f4; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x98ccd7f468529a3c; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x8714cdfa8b8224c3; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0xebb54eda26f0d126; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0xf5f381621f682a30; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0xba18ff26cf669276; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x4c182e5b7a7489cc; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xf2d3c61962807397; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x66084be5e9b25c8b; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x7ccc53214c2e3c57; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0xe8730b8b670446b6; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x2d17b38a250a8d7d; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x8fffac9044f6f952; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0xec86b2741f2b3931; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x1e3032517ade8fa9; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x05a35fc9468763e1; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0x5cff0c5355653142; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0xed52f949e443b50f; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x903fb25dd0eda81b; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0x53c521dd4f0ff056; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0xa5d17c7633cdadbe; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x559e1380cebc3861; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556040; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x8fffac9044f6f952; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556048; Value = 0x0000000080000001; PC = 0x5555555556ca *)
mov r15 L0x555555556048;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0xa5d17c7633cdadbe; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x7ccc53214c2e3c57; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x05a35fc9468763e1; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0xec86b2741f2b3931; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x1e3032517ade8fa9; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x559e1380cebc3861; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0xed52f949e443b50f; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0x53c521dd4f0ff056; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xf2d3c61962807397; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x2d17b38a250a8d7d; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xe2415e3d637b638a; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xb381b0c424bf74b9; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0xe8730b8b670446b6; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0x5cff0c5355653142; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x39d9ccbb297648bb; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x903fb25dd0eda81b; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x66084be5e9b25c8b; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556050; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x15a5b4a6dc1061c2; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x4d2d7a9ccaace17f; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xcff32eed94071a44; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xb043f5b7992febfd; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x7e9021e7d266478b; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x094a627506ef650c; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xb446149f7388910d; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xbda0ded31ec168a6; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x278d3c8fa5cdabe4; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0xd98e1667eaaedea2; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x4fa78e8814b9b4ed; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0xf4facaa7e153c0a0; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x6c2599a107625f5c; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x9ce5610af119b243; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x7a378d6ba03818ce; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x21d68fb63a94e63b; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x2bc96b1cf821f246; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x1378f2840a70fe57; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0x1beda5400558105a; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0xd98e1667eaaedea2; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0xb446149f7388910d; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556050; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556050; Value = 0x8000000080008081; PC = 0x5555555553bb *)
mov r13 L0x555555556050;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x2bc96b1cf821f246; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xb043f5b7992febfd; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x6c2599a107625f5c; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xbda0ded31ec168a6; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0x1beda5400558105a; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x094a627506ef650c; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x4d2d7a9ccaace17f; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x4fa78e8814b9b4ed; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0xcff32eed94071a44; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x21d68fb63a94e63b; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0xf4facaa7e153c0a0; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x278d3c8fa5cdabe4; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x1378f2840a70fe57; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x9ce5610af119b243; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x7a378d6ba03818ce; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x15a5b4a6dc1061c2; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x7e9021e7d266478b; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x875cc3fb7b38a0df; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x8a6caa009b8ee2dd; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x18f59e664c75f823; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0xefe842b2cc8e923b; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x4c771cb2cad697d4; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x999d2f9ff9036e13; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x3bf5964b62f9d82d; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0xde8c5309dd769755; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x83227b36db37c36a; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0xf8b31baf0d36767b; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0x557d9244c4f482af; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x63d6e583453b6133; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0x5a5198e1bf50c6e7; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x794733055cf9019b; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x0ac9e18a8722063b; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556050; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x999d2f9ff9036e13; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556058; Value = 0x8000000000008009; PC = 0x5555555556ca *)
mov r15 L0x555555556058;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x794733055cf9019b; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x18f59e664c75f823; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x83227b36db37c36a; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x3bf5964b62f9d82d; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0xde8c5309dd769755; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x0ac9e18a8722063b; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0x557d9244c4f482af; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0x5a5198e1bf50c6e7; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x875cc3fb7b38a0df; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x4c771cb2cad697d4; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x8aefddac83525840; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x0528525734163473; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0xefe842b2cc8e923b; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0xf8b31baf0d36767b; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x48a5e33a41e70c56; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x63d6e583453b6133; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x8a6caa009b8ee2dd; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556060; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x31d8f75e0c4816a1; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0xce05024196cc560c; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xe52ed1dd4c91eccf; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xb9c21c8016bd2fd1; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x0b37d9a584b61d3d; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x3332d9533a3e4ca1; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xf5adab91a53aaf94; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xdc17053872c1f3cc; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x3c417adfb6cf4784; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x45e6eb3df6586b0c; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x32c7776ca8dd203b; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x8c058023ba03cf89; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0xb2a5e292f53309ae; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x90b851a44c775ad1; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x56459ffbc714551c; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0xb044c131f40912c7; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x999d51988eeefaa3; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0xa7da9988a4ed41a0; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0x9b08f872f862738f; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x45e6eb3df6586b0c; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0xf5adab91a53aaf94; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556060; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556060; Value = 0x000000000000008a; PC = 0x5555555553bb *)
mov r13 L0x555555556060;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x999d51988eeefaa3; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xb9c21c8016bd2fd1; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0xb2a5e292f53309ae; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xdc17053872c1f3cc; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0x9b08f872f862738f; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x3332d9533a3e4ca1; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xce05024196cc560c; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x32c7776ca8dd203b; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0xe52ed1dd4c91eccf; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0xb044c131f40912c7; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x8c058023ba03cf89; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x3c417adfb6cf4784; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0xa7da9988a4ed41a0; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x90b851a44c775ad1; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x56459ffbc714551c; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x31d8f75e0c4816a1; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x0b37d9a584b61d3d; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xf1ae9f72ac5f297a; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0xbc801d7ac39484c0; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x23c1343c54e77954; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0xa57e6901f1972620; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x82653d28b6b8ea70; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x4e53203458075829; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0xb199700ad2ba2198; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x1ee6970113d13a6e; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0xd2f5f6c554b799d1; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0xa86e6ffbbbc52548; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0xea7cd73f93c19b1c; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0xb95b3232ce63b2b2; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0xe92fe4fd90295dec; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0xe0f6693657668d74; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x2145415974fce38b; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556060; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x4e53203458075829; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556068; Value = 0x0000000000000088; PC = 0x5555555556ca *)
mov r15 L0x555555556068;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0xe0f6693657668d74; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x23c1343c54e77954; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0xd2f5f6c554b799d1; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0xb199700ad2ba2198; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x1ee6970113d13a6e; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x2145415974fce38b; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0xea7cd73f93c19b1c; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0xe92fe4fd90295dec; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xf1ae9f72ac5f297a; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x82653d28b6b8ea70; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xd27c479bec9bb7f7; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x9fa7cb04463200e2; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0xa57e6901f1972620; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0xa86e6ffbbbc52548; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x0fc0ac34ba08d795; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0xb95b3232ce63b2b2; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0xbc801d7ac39484c0; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556070; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x87f456ab858a6588; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x981a33216e65d2e0; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x5e59585e695b8f33; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xd8dd2793870b2d53; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x3f590aa8cb6383d0; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0xef4c6789c47406a4; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x3738636069a0db83; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0x4baa319fedd6c486; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0xe98b08227e363108; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x036723af0f0f59df; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x4bcf41aaacdb8a62; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x9ca54b9e3aa91888; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x823abccfb07569b9; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x3d69844b6af0050c; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0xa5ed6a5930362d2c; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x4de05c9aa4b1f466; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x4498e7c2055c04fc; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x38bcf92b5c3077cd; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0xdd04c31df860a222; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x036723af0f0f59df; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x3738636069a0db83; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556070; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556070; Value = 0x0000000080008009; PC = 0x5555555553bb *)
mov r13 L0x555555556070;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x4498e7c2055c04fc; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xd8dd2793870b2d53; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x823abccfb07569b9; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0x4baa319fedd6c486; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0xdd04c31df860a222; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0xef4c6789c47406a4; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x981a33216e65d2e0; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x4bcf41aaacdb8a62; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x5e59585e695b8f33; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x4de05c9aa4b1f466; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x9ca54b9e3aa91888; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0xe98b08227e363108; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x38bcf92b5c3077cd; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x3d69844b6af0050c; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0xa5ed6a5930362d2c; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x87f456ab858a6588; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x3f590aa8cb6383d0; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x6fe8338f5ad66fcc; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x24219686011ba726; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x1d944651737ff2af; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x3b6c711beaf4493d; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0xb0394aef781b5b44; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0xe1e69169f0f8343e; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0xe84977971ce938a2; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x4340b20e67ba239c; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x58efff68631bb60d; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0xfd6a01c1e7810ace; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0x25eef0d88d633e9a; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x880067c20509b6e7; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0xc2e6fdedf7a8e0a1; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0xc5ecf1db6dd65c3b; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0xaa98bc35704e8fc0; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556070; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xe1e69169f0f8343e; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556078; Value = 0x000000008000000a; PC = 0x5555555556ca *)
mov r15 L0x555555556078;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0xc5ecf1db6dd65c3b; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x1d944651737ff2af; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x58efff68631bb60d; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0xe84977971ce938a2; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x4340b20e67ba239c; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0xaa98bc35704e8fc0; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0x25eef0d88d633e9a; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0xc2e6fdedf7a8e0a1; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x6fe8338f5ad66fcc; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0xb0394aef781b5b44; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x5206b430119b3b7c; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x48654ac5e5a09425; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x3b6c711beaf4493d; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0xfd6a01c1e7810ace; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0xa6c4cfd6282a1fa7; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x880067c20509b6e7; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x24219686011ba726; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556080; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x9b613388f74725cb; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x60ea0a57889c7388; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x073ffb5eef9cc771; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0x85e3b9dd8a9227ee; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x0156edaf43088d4c; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x5371f794be5ff8bf; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x5ccf4ab3b635594f; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xedaa3bf8e4868da4; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x5a58cd51964d1b55; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x599aaa6bf02e02a3; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x931969a085ca6b0f; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x9dcfdcf55f2f65d4; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x1c706c2d32e437ca; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x69ea5484e4f80587; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x780f68a1eba45bd8; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x4d41dcb4acbbea62; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0xb55c3490e1efde0c; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0xf07f2dd9498730eb; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0xe0c50aee16b36da9; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x599aaa6bf02e02a3; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x5ccf4ab3b635594f; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556080; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556080; Value = 0x000000008000808b; PC = 0x5555555553bb *)
mov r13 L0x555555556080;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0xb55c3490e1efde0c; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0x85e3b9dd8a9227ee; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x1c706c2d32e437ca; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xedaa3bf8e4868da4; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0xe0c50aee16b36da9; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x5371f794be5ff8bf; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x60ea0a57889c7388; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x931969a085ca6b0f; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x073ffb5eef9cc771; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x4d41dcb4acbbea62; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x9dcfdcf55f2f65d4; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x5a58cd51964d1b55; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0xf07f2dd9498730eb; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x69ea5484e4f80587; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x780f68a1eba45bd8; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x9b613388f74725cb; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x0156edaf43088d4c; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xeb844e5e540ecafd; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x89b988e2e67bf688; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x861c8db8c1eeda3e; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x3d94e73200d19933; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0xb871e506e6f9f5a2; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0xa81330c6536ae689; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x6572a39afd900e17; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x47ca8d2baf17c94d; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x95be0edef2a7ddcd; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0x9652789030fd2841; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0xe3f633a5d53159c1; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0xd3fbc15f9dfd15b8; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0xf2c45b6467ab0c78; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x2c1997be018ba316; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0xb35f471e5892f425; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556080; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xa81330c6536ae689; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556088; Value = 0x800000000000008b; PC = 0x5555555556ca *)
mov r15 L0x555555556088;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x2c1997be018ba316; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x861c8db8c1eeda3e; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x95be0edef2a7ddcd; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x6572a39afd900e17; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x47ca8d2baf17c94d; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0xb35f471e5892f425; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0xe3f633a5d53159c1; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0xf2c45b6467ab0c78; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xeb844e5e540ecafd; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0xb871e506e6f9f5a2; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xb597720f7695ac8a; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xc2671d206e1f7112; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x3d94e73200d19933; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0x9652789030fd2841; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x4cbc4072f2d92552; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0xd3fbc15f9dfd15b8; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x89b988e2e67bf688; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556090; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x5a2559eaae1dd960; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x2ff38beb5de7fd76; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x92231d4258fcddbc; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0x39c11de673944bb2; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x7664238d1ef35e06; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0xaf3ae12d18a23ff2; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xedb18847ca635810; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xc6acd65490eb996a; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0x806e77f07055c612; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x5012845d70387ed3; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x3933ff14f4db46d4; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0xfe2a287cff1ab9b3; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x653e975c14e70e7e; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xdf719be267d81344; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x881ceefa181b4b34; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0xf0dfe6e3dda9b7b8; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0xd7290eee1ca8e455; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x5938a62051885014; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0xb080517837b0bb7e; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x5012845d70387ed3; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0xedb18847ca635810; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556090; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x555555556090; Value = 0x8000000000008089; PC = 0x5555555553bb *)
mov r13 L0x555555556090;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0xd7290eee1ca8e455; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0x39c11de673944bb2; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x653e975c14e70e7e; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xc6acd65490eb996a; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0xb080517837b0bb7e; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0xaf3ae12d18a23ff2; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x2ff38beb5de7fd76; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x3933ff14f4db46d4; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x92231d4258fcddbc; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0xf0dfe6e3dda9b7b8; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0xfe2a287cff1ab9b3; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0x806e77f07055c612; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x5938a62051885014; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0xdf719be267d81344; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x881ceefa181b4b34; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x5a2559eaae1dd960; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x7664238d1ef35e06; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xb9f46c64e63a95d9; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0xc0c5b0271ce72496; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0xf921702a4bf9dd37; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0xd088e56afe576e7f; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x1f81af9e33efb74a; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x2864528c378eb1ce; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x078e70af9865d86a; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x30139b823ec3e8a2; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x7897e3b1c3eb9cb8; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0x90661099e034a5b2; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0x3035912b72f8a99a; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0xed952c3b38bd8db7; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0x7ff2e917c5640e0e; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0xe8d58bdfeafff070; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0xcdb91e2704b421c9; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x0000555555556090; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x2864528c378eb1ce; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x555555556098; Value = 0x8000000000008003; PC = 0x5555555556ca *)
mov r15 L0x555555556098;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0xe8d58bdfeafff070; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xf921702a4bf9dd37; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x7897e3b1c3eb9cb8; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x078e70af9865d86a; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x30139b823ec3e8a2; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0xcdb91e2704b421c9; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0x3035912b72f8a99a; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0x7ff2e917c5640e0e; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0xb9f46c64e63a95d9; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x1f81af9e33efb74a; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x6993351232892811; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xe3f461556895d66d; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0xd088e56afe576e7f; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0x90661099e034a5b2; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x6baf5a886312afef; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0xed952c3b38bd8db7; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0xc0c5b0271ce72496; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560a0; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x3b90dbe6feb8ddf4; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x91dd108c739d2b53; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x28babf3bcdc107a1; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xa0028f6701811592; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0xb4b505ad2ec7bbad; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0x5298d824ac7525bc; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x826830ae7e1a59bf; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xb19211df0806e5ef; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0xffe4e5d60107a07f; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x91086c80c5f8f37c; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x4f3976f2f9aef744; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x0320a9b0113a6c19; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x719eb7f0857a4e37; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x406b8e5508f2975b; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x2512826c5d98da17; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x1ff9d1f73a5043e1; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x1f2756c634a3c211; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0xf40b279714371ca4; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0x41a1bc76a6168085; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x91086c80c5f8f37c; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x826830ae7e1a59bf; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560a0; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x5555555560a0; Value = 0x8000000000008002; PC = 0x5555555553bb *)
mov r13 L0x5555555560a0;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x1f2756c634a3c211; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xa0028f6701811592; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x719eb7f0857a4e37; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xb19211df0806e5ef; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0x41a1bc76a6168085; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0x5298d824ac7525bc; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x91dd108c739d2b53; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x4f3976f2f9aef744; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x28babf3bcdc107a1; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x1ff9d1f73a5043e1; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x0320a9b0113a6c19; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0xffe4e5d60107a07f; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0xf40b279714371ca4; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x406b8e5508f2975b; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x2512826c5d98da17; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x3b90dbe6feb8ddf4; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0xb4b505ad2ec7bbad; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x48cdeeb542ba4c13; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x86459648c12f7938; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0xbe4a2f2f13256f90; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x5dbd263134929f12; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0xc9b4ac29cfd44c4f; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0xb219a0941691faa4; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x832aaa3340cdc8ee; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x5d9d2281b50e5cd7; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0xa52a3cdc6b362d72; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0xfcda92678f2643ed; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0xa387300fe40544a0; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x120681b95f3f5999; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0xdc9113e3380938cf; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x903add6d625b015e; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x9b1c437745811a53; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560a0; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xb219a0941691faa4; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x5555555560a8; Value = 0x8000000000000080; PC = 0x5555555556ca *)
mov r15 L0x5555555560a8;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x903add6d625b015e; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xbe4a2f2f13256f90; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0xa52a3cdc6b362d72; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x832aaa3340cdc8ee; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x5d9d2281b50e5cd7; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x9b1c437745811a53; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0xa387300fe40544a0; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0xdc9113e3380938cf; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x48cdeeb542ba4c13; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0xc9b4ac29cfd44c4f; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x5e02cc13781ef9f8; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x8144b16536499c88; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x5dbd263134929f12; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0xfcda92678f2643ed; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x5b74763326df3a9f; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x120681b95f3f5999; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x86459648c12f7938; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560b0; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x08cf14a64ba1c3f6; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0x832003b048467151; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xc252d5e9c941a48e; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xd87401e1ac50839b; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x04de37598edd655d; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0xa03ef776015a9563; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0xacbe109cae34ef15; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0x9c481bf69a00bc89; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0xee3d4436f07a561e; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0xf6c495b520ca1802; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x1708c98a4de5432c; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0xa301d980ffeca9d7; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0xebe0030f4141dae3; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x3c3f4d463f2d1a32; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x844432b9cfac3298; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x95a5900282b76942; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x7fa87c28d54d1414; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x715326a0e327723a; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0x53fabe5b68bf35cd; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0xf6c495b520ca1802; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0xacbe109cae34ef15; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560b0; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x5555555560b0; Value = 0x000000000000800a; PC = 0x5555555553bb *)
mov r13 L0x5555555560b0;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x7fa87c28d54d1414; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xd87401e1ac50839b; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0xebe0030f4141dae3; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0x9c481bf69a00bc89; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0x53fabe5b68bf35cd; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0xa03ef776015a9563; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x832003b048467151; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x1708c98a4de5432c; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0xc252d5e9c941a48e; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x95a5900282b76942; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0xa301d980ffeca9d7; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0xee3d4436f07a561e; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x715326a0e327723a; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0x3c3f4d463f2d1a32; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x844432b9cfac3298; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x08cf14a64ba1c3f6; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x04de37598edd655d; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x3dac336c9a710c13; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x80afefc69fb63d57; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0xe4ed61de169dc618; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x34f26a408233abd5; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x0bb20b485a66e149; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x99d0b89a5b2057bd; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0xb5f0400f00c583ca; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x84d2054d545cea06; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0xfb1bec5aaa5f2809; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0x45d576d7846c91e4; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0x9420bd3c743055b3; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x5dca97bf4ef1b50c; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0x76d405d96f009b64; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x5d47111be4a04991; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x4f909926e4c3fde9; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560b0; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x99d0b89a5b2057bd; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x5555555560b8; Value = 0x800000008000000a; PC = 0x5555555556ca *)
mov r15 L0x5555555560b8;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x5d47111be4a04991; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xe4ed61de169dc618; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0xfb1bec5aaa5f2809; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0xb5f0400f00c583ca; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x84d2054d545cea06; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x4f909926e4c3fde9; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0x9420bd3c743055b3; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0x76d405d96f009b64; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x3dac336c9a710c13; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x0bb20b485a66e149; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x623a6efdbaf335f6; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x62e428138bd085ac; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x34f26a408233abd5; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0x45d576d7846c91e4; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0xdc0602862d83c213; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x5dca97bf4ef1b50c; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x80afefc69fb63d57; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560c0; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x99ec033cc6ffca82; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0xc9b35093e741be3e; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0xcaf5b2a67392a831; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0x04c036ea8adc50e7; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0xec9f4da2218d9801; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0xef2d0238d3638065; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x30371320b564b549; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0xaf3de06ae27d1ea1; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0xcf9696fb10277d9b; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0x5392313d6ed5f34a; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0xc7253a1fad877368; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0x43bf86eed38c15f3; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0x30753fc3170edf43; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xe910bb0050b10b04; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0xecc6e7685612a4eb; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0x13aec72925f487b0; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0x8ade229574caaad5; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x06fc1deed0afe9b7; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0x771e4c72921b8847; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0x5392313d6ed5f34a; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x30371320b564b549; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560c0; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x5555555560c0; Value = 0x8000000080008081; PC = 0x5555555553bb *)
mov r13 L0x5555555560c0;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0x8ade229574caaad5; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0x04c036ea8adc50e7; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0x30753fc3170edf43; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0xaf3de06ae27d1ea1; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0x771e4c72921b8847; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0xef2d0238d3638065; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xc9b35093e741be3e; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0xc7253a1fad877368; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0xcaf5b2a67392a831; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0x13aec72925f487b0; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0x43bf86eed38c15f3; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0xcf9696fb10277d9b; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x06fc1deed0afe9b7; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0xe910bb0050b10b04; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0xecc6e7685612a4eb; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x99ec033cc6ffca82; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0xec9f4da2218d9801; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x33ad55dfffe1776e; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x95a9d2a739fa27d7; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x3206b55826cffdb8; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0xb0323e59865da32c; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0xe977c42d5cfd2828; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x968f31f3baba857d; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0xdb45c9e086ae2e1a; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0xe5adfefea98d0b68; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x007b1cf3f3847b64; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0xc91acba0b2cdb1ee; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0x80eed1f34444d9e5; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0xbf8ea21d2b6b55b5; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0xf7809570eb4ee114; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x63bc73a3454316ef; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x8e77617ffaa6ae96; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560c0; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x968f31f3baba857d; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x5555555560c8; Value = 0x8000000000008080; PC = 0x5555555556ca *)
mov r15 L0x5555555560c8;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x63bc73a3454316ef; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x3206b55826cffdb8; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x007b1cf3f3847b64; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0xdb45c9e086ae2e1a; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0xe5adfefea98d0b68; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x8e77617ffaa6ae96; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0x80eed1f34444d9e5; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0xf7809570eb4ee114; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x33ad55dfffe1776e; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0xe977c42d5cfd2828; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x9fe3c59feffd1da7; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x87664684c06f0b16; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0xb0323e59865da32c; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0xc91acba0b2cdb1ee; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x3254b93ec6d54b41; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0xbf8ea21d2b6b55b5; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x95a9d2a739fa27d7; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560d0; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x28(%rsp),%r9                          #! EA = L0x7fffffffd8f0; Value = 0x7df225c0f372c19f; PC = 0x5555555552f0 *)
mov r9 L0x7fffffffd8f0;
(* xor    -0x20(%rsp),%r9                          #! EA = L0x7fffffffd8f8; Value = 0xb1789404cda66a9d; PC = 0x5555555552f5 *)
xor r9@uint64 r9 L0x7fffffffd8f8;
(* xor    %r15,%r9                                 #! PC = 0x5555555552fa *)
xor r9@uint64 r9 r15;
(* xor    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x3631daea1aba0ed7; PC = 0x5555555552fd *)
xor r9@uint64 r9 L0x7fffffffd930;
(* mov    -0x18(%rsp),%rbx                         #! EA = L0x7fffffffd900; Value = 0xa90aadc708b0d0ef; PC = 0x555555555302 *)
mov rbx L0x7fffffffd900;
(* mov    %r9,%rdx                                 #! PC = 0x555555555307 *)
mov rdx r9;
(* xor    -0x8(%rsp),%rbx                          #! EA = L0x7fffffffd910; Value = 0x827d7542df40111a; PC = 0x55555555530a *)
xor rbx@uint64 rbx L0x7fffffffd910;
(* xor    0x8(%rsp),%rbx                           #! EA = L0x7fffffffd920; Value = 0xa262f31c5e53b87f; PC = 0x55555555530f *)
xor rbx@uint64 rbx L0x7fffffffd920;
(* xor    %r8,%rdx                                 #! PC = 0x555555555314 *)
xor rdx@uint64 rdx r8;
(* xor    %r10,%rbx                                #! PC = 0x555555555317 *)
xor rbx@uint64 rbx r10;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x92af10356b8d2c16; PC = 0x55555555531a *)
mov r13 L0x7fffffffd8b0;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0x18020756e4e49f0d; PC = 0x55555555531f *)
mov rdi L0x7fffffffd8d0;
(* mov    %rdx,%r14                                #! PC = 0x555555555324 *)
mov r14 rdx;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd940; Value = 0xafb94af124f712e7; PC = 0x555555555327 *)
mov rdx L0x7fffffffd940;
(* xor    -0x40(%rsp),%rdi                         #! EA = L0x7fffffffd8d8; Value = 0xc269b1b2b8008fdd; PC = 0x55555555532c *)
xor rdi@uint64 rdi L0x7fffffffd8d8;
(* xor    -0x60(%rsp),%r13                         #! EA = L0x7fffffffd8b8; Value = 0x3c5da69e7c1e7f20; PC = 0x555555555331 *)
xor r13@uint64 r13 L0x7fffffffd8b8;
(* xor    -0x38(%rsp),%rdi                         #! EA = L0x7fffffffd8e0; Value = 0xfd1d954cf6f44857; PC = 0x555555555336 *)
xor rdi@uint64 rdi L0x7fffffffd8e0;
(* xor    %rbx,%rdx                                #! PC = 0x55555555533b *)
xor rdx@uint64 rdx rbx;
(* xor    -0x58(%rsp),%r13                         #! EA = L0x7fffffffd8c0; Value = 0xd46fc55e07de4aaf; PC = 0x55555555533e *)
xor r13@uint64 r13 L0x7fffffffd8c0;
(* xor    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0xa4f7c647570619f2; PC = 0x555555555343 *)
xor r13@uint64 r13 L0x7fffffffd8c8;
(* xor    %r12,%rdi                                #! PC = 0x555555555348 *)
xor rdi@uint64 rdi r12;
(* mov    %rdx,%r11                                #! PC = 0x55555555534b *)
mov r11 rdx;
(* xor    %rbp,%r13                                #! PC = 0x55555555534e *)
xor r13@uint64 r13 rbp;
(* xor    -0x30(%rsp),%rdi                         #! EA = L0x7fffffffd8e8; Value = 0x78770d25560e0489; PC = 0x555555555351 *)
xor rdi@uint64 rdi L0x7fffffffd8e8;
(* mov    %r14,%rdx                                #! PC = 0x555555555356 *)
mov rdx r14;
(* mov    %r11,%rbx                                #! PC = 0x555555555359 *)
mov rbx r11;
(* mov    %rdi,%rcx                                #! PC = 0x55555555535c *)
mov rcx rdi;
(* mov    -0x10(%rsp),%r9                          #! EA = L0x7fffffffd908; Value = 0xa4003e0e2be8d5a3; PC = 0x55555555535f *)
mov r9 L0x7fffffffd908;
(* rol    %rdx                                     #! PC = 0x555555555364 *)
split rdx_h rdx_l rdx 63; shl rdx_s rdx_l 1@uint64; add rdx rdx_s rdx_h;
(* rol    %rbx                                     #! PC = 0x555555555367 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    (%rsp),%r9                               #! EA = L0x7fffffffd918; Value = 0xc3ee2bc7d47e5219; PC = 0x55555555536a *)
xor r9@uint64 r9 L0x7fffffffd918;
(* xor    0x10(%rsp),%r9                           #! EA = L0x7fffffffd928; Value = 0x7e15eed7c50e38d5; PC = 0x55555555536e *)
xor r9@uint64 r9 L0x7fffffffd928;
(* xor    %r13,%rdx                                #! PC = 0x555555555373 *)
xor rdx@uint64 rdx r13;
(* xor    %rbx,%rdi                                #! PC = 0x555555555376 *)
xor rdi@uint64 rdi rbx;
(* mov    %r13,%rbx                                #! PC = 0x555555555379 *)
mov rbx r13;
(* xor    0x20(%rsp),%r9                           #! EA = L0x7fffffffd938; Value = 0xd45885b05f36315d; PC = 0x55555555537c *)
xor r9@uint64 r9 L0x7fffffffd938;
(* rol    %rcx                                     #! PC = 0x555555555381 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* rol    %rbx                                     #! PC = 0x555555555384 *)
split rbx_h rbx_l rbx 63; shl rbx_s rbx_l 1@uint64; add rbx rbx_s rbx_h;
(* xor    %rsi,%r9                                 #! PC = 0x555555555387 *)
xor r9@uint64 r9 rsi;
(* xor    %r11,%rbx                                #! PC = 0x55555555538a *)
xor rbx@uint64 rbx r11;
(* mov    -0x40(%rsp),%r11                         #! EA = L0x7fffffffd8d8; Value = 0xc269b1b2b8008fdd; PC = 0x55555555538d *)
mov r11 L0x7fffffffd8d8;
(* xor    %r9,%rcx                                 #! PC = 0x555555555392 *)
xor rcx@uint64 rcx r9;
(* rol    %r9                                      #! PC = 0x555555555395 *)
split r9_h r9_l r9 63; shl r9_s r9_l 1@uint64; add r9 r9_s r9_h;
(* xor    %r14,%r9                                 #! PC = 0x555555555398 *)
xor r9@uint64 r9 r14;
(* mov    -0x68(%rsp),%r14                         #! EA = L0x7fffffffd8b0; Value = 0x92af10356b8d2c16; PC = 0x55555555539b *)
mov r14 L0x7fffffffd8b0;
(* xor    %rdx,%r11                                #! PC = 0x5555555553a0 *)
xor r11@uint64 r11 rdx;
(* mov    %r11,%rax                                #! PC = 0x5555555553a3 *)
mov rax r11;
(* mov    -0x70(%rsp),%r11                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560d0; PC = 0x5555555553a6 *)
mov r11 L0x7fffffffd8a8;
(* xor    %rcx,%r14                                #! PC = 0x5555555553ab *)
xor r14@uint64 r14 rcx;
(* ror    $0x14,%rax                               #! PC = 0x5555555553ae *)
split rax_h rax_l rax 0x14; shl rax_s rax_l (64-0x14)@uint64; add rax rax_s rax_h;
(* xor    %rdi,%r15                                #! PC = 0x5555555553b2 *)
xor r15@uint64 r15 rdi;
(* xor    %r9,%r10                                 #! PC = 0x5555555553b5 *)
xor r10@uint64 r10 r9;
(* xor    %rbx,%rsi                                #! PC = 0x5555555553b8 *)
xor rsi@uint64 rsi rbx;
(* mov    (%r11),%r13                              #! EA = L0x5555555560d0; Value = 0x0000000080000001; PC = 0x5555555553bb *)
mov r13 L0x5555555560d0;
(* ror    $0x15,%r15                               #! PC = 0x5555555553be *)
split r15_h r15_l r15 0x15; shl r15_s r15_l (64-0x15)@uint64; add r15 r15_s r15_h;
(* mov    %rax,%r11                                #! PC = 0x5555555553c2 *)
mov r11 rax;
(* rol    $0x15,%r10                               #! PC = 0x5555555553c5 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* or     %r15,%r11                                #! PC = 0x5555555553c9 *)
or r11@uint64 r11 r15;
(* rol    $0xe,%rsi                                #! PC = 0x5555555553cc *)
split rsi_h rsi_l rsi (64-0xe); shl rsi_s rsi_l 0xe@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%r8                                 #! PC = 0x5555555553d0 *)
xor r8@uint64 r8 rdi;
(* xor    %rdx,%r12                                #! PC = 0x5555555553d3 *)
xor r12@uint64 r12 rdx;
(* ror    $0x3,%r8                                 #! PC = 0x5555555553d6 *)
split r8_h r8_l r8 0x3; shl r8_s r8_l (64-0x3)@uint64; add r8 r8_s r8_h;
(* xor    %r14,%r13                                #! PC = 0x5555555553da *)
xor r13@uint64 r13 r14;
(* ror    $0x13,%r12                               #! PC = 0x5555555553dd *)
split r12_h r12_l r12 0x13; shl r12_s r12_l (64-0x13)@uint64; add r12 r12_s r12_h;
(* xor    %r11,%r13                                #! PC = 0x5555555553e1 *)
xor r13@uint64 r13 r11;
(* mov    %r15,%r11                                #! PC = 0x5555555553e4 *)
mov r11 r15;
(* not    %r11                                     #! PC = 0x5555555553e7 *)
not r11@uint64 r11;
(* mov    %r13,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x5555555553ea *)
mov L0x7fffffffd8b0 r13;
(* or     %r10,%r11                                #! PC = 0x5555555553ef *)
or r11@uint64 r11 r10;
(* xor    %rax,%r11                                #! PC = 0x5555555553f2 *)
xor r11@uint64 r11 rax;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd948; PC = 0x5555555553f5 *)
mov L0x7fffffffd948 r11;
(* mov    %r10,%r11                                #! PC = 0x5555555553fa *)
mov r11 r10;
(* and    %rsi,%r11                                #! PC = 0x5555555553fd *)
and r11@uint64 r11 rsi;
(* xor    %r15,%r11                                #! PC = 0x555555555400 *)
xor r11@uint64 r11 r15;
(* mov    %r14,%r15                                #! PC = 0x555555555403 *)
mov r15 r14;
(* and    %rax,%r14                                #! PC = 0x555555555406 *)
and r14@uint64 r14 rax;
(* xor    %rsi,%r14                                #! PC = 0x555555555409 *)
xor r14@uint64 r14 rsi;
(* or     %rsi,%r15                                #! PC = 0x55555555540c *)
or r15@uint64 r15 rsi;
(* mov    (%rsp),%rsi                              #! EA = L0x7fffffffd918; Value = 0xc3ee2bc7d47e5219; PC = 0x55555555540f *)
mov rsi L0x7fffffffd918;
(* mov    %r11,0x38(%rsp)                          #! EA = L0x7fffffffd950; PC = 0x555555555413 *)
mov L0x7fffffffd950 r11;
(* xor    %r10,%r15                                #! PC = 0x555555555418 *)
xor r15@uint64 r15 r10;
(* mov    -0x18(%rsp),%r10                         #! EA = L0x7fffffffd900; Value = 0xa90aadc708b0d0ef; PC = 0x55555555541b *)
mov r10 L0x7fffffffd900;
(* mov    %r14,0x40(%rsp)                          #! EA = L0x7fffffffd958; PC = 0x555555555420 *)
mov L0x7fffffffd958 r14;
(* xor    %rbx,%rsi                                #! PC = 0x555555555425 *)
xor rsi@uint64 rsi rbx;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555428 *)
mov L0x7fffffffd8d8 r15;
(* mov    %rsi,%r11                                #! PC = 0x55555555542d *)
mov r11 rsi;
(* mov    -0x58(%rsp),%rsi                         #! EA = L0x7fffffffd8c0; Value = 0xd46fc55e07de4aaf; PC = 0x555555555430 *)
mov rsi L0x7fffffffd8c0;
(* xor    %r9,%r10                                 #! PC = 0x555555555435 *)
xor r10@uint64 r10 r9;
(* rol    $0x14,%r11                               #! PC = 0x555555555438 *)
split r11_h r11_l r11 (64-0x14); shl r11_s r11_l 0x14@uint64; add r11 r11_s r11_h;
(* rol    $0x1c,%r10                               #! PC = 0x55555555543c *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* xor    %rcx,%rsi                                #! PC = 0x555555555440 *)
xor rsi@uint64 rsi rcx;
(* mov    %rsi,%rax                                #! PC = 0x555555555443 *)
mov rax rsi;
(* mov    %r11,%rsi                                #! PC = 0x555555555446 *)
mov rsi r11;
(* rol    $0x3,%rax                                #! PC = 0x555555555449 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* or     %rax,%rsi                                #! PC = 0x55555555544d *)
or rsi@uint64 rsi rax;
(* mov    %rax,%r15                                #! PC = 0x555555555450 *)
mov r15 rax;
(* xor    %r10,%rsi                                #! PC = 0x555555555453 *)
xor rsi@uint64 rsi r10;
(* and    %r12,%r15                                #! PC = 0x555555555456 *)
and r15@uint64 r15 r12;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffd960; PC = 0x555555555459 *)
mov L0x7fffffffd960 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x55555555545e *)
mov rsi r8;
(* xor    %r11,%r15                                #! PC = 0x555555555461 *)
xor r15@uint64 r15 r11;
(* not    %rsi                                     #! PC = 0x555555555464 *)
not rsi@uint64 rsi;
(* or     %r12,%rsi                                #! PC = 0x555555555467 *)
or rsi@uint64 rsi r12;
(* xor    %rcx,%rbp                                #! PC = 0x55555555546a *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%rsi                                #! PC = 0x55555555546d *)
xor rsi@uint64 rsi rax;
(* rol    $0x12,%rbp                               #! PC = 0x555555555470 *)
split rbp_h rbp_l rbp (64-0x12); shl rbp_s rbp_l 0x12@uint64; add rbp rbp_s rbp_h;
(* mov    %rsi,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x555555555474 *)
mov L0x7fffffffd8c0 rsi;
(* mov    -0x48(%rsp),%rax                         #! EA = L0x7fffffffd8d0; Value = 0x18020756e4e49f0d; PC = 0x555555555479 *)
mov rax L0x7fffffffd8d0;
(* mov    %r10,%rsi                                #! PC = 0x55555555547e *)
mov rsi r10;
(* and    %r11,%r10                                #! PC = 0x555555555481 *)
and r10@uint64 r10 r11;
(* xor    %r8,%r10                                 #! PC = 0x555555555484 *)
xor r10@uint64 r10 r8;
(* or     %r8,%rsi                                 #! PC = 0x555555555487 *)
or rsi@uint64 rsi r8;
(* mov    0x20(%rsp),%r8                           #! EA = L0x7fffffffd938; Value = 0xd45885b05f36315d; PC = 0x55555555548a *)
mov r8 L0x7fffffffd938;
(* xor    %rdx,%rax                                #! PC = 0x55555555548f *)
xor rax@uint64 rax rdx;
(* xor    %r12,%rsi                                #! PC = 0x555555555492 *)
xor rsi@uint64 rsi r12;
(* mov    %r10,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x555555555495 *)
mov L0x7fffffffd918 r10;
(* mov    0x8(%rsp),%r10                           #! EA = L0x7fffffffd920; Value = 0xa262f31c5e53b87f; PC = 0x555555555499 *)
mov r10 L0x7fffffffd920;
(* mov    %rax,%r14                                #! PC = 0x55555555549e *)
mov r14 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0xb1789404cda66a9d; PC = 0x5555555554a1 *)
mov rax L0x7fffffffd8f8;
(* xor    %rbx,%r8                                 #! PC = 0x5555555554a6 *)
xor r8@uint64 r8 rbx;
(* mov    %rsi,0x50(%rsp)                          #! EA = L0x7fffffffd968; PC = 0x5555555554a9 *)
mov L0x7fffffffd968 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x5555555554ae *)
mov rsi r8;
(* xor    %r9,%r10                                 #! PC = 0x5555555554b1 *)
xor r10@uint64 r10 r9;
(* rol    %r14                                     #! PC = 0x5555555554b4 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* rol    $0x8,%rsi                                #! PC = 0x5555555554b7 *)
split rsi_h rsi_l rsi (64-0x8); shl rsi_s rsi_l 0x8@uint64; add rsi rsi_s rsi_h;
(* xor    %rdi,%rax                                #! PC = 0x5555555554bb *)
xor rax@uint64 rax rdi;
(* rol    $0x19,%r10                               #! PC = 0x5555555554be *)
split r10_h r10_l r10 (64-0x19); shl r10_s r10_l 0x19@uint64; add r10 r10_s r10_h;
(* rol    $0x6,%rax                                #! PC = 0x5555555554c2 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* mov    %rsi,%r12                                #! PC = 0x5555555554c6 *)
mov r12 rsi;
(* mov    %rax,%r8                                 #! PC = 0x5555555554c9 *)
mov r8 rax;
(* not    %r12                                     #! PC = 0x5555555554cc *)
not r12@uint64 r12;
(* or     %r10,%r8                                 #! PC = 0x5555555554cf *)
or r8@uint64 r8 r10;
(* mov    %r12,%r11                                #! PC = 0x5555555554d2 *)
mov r11 r12;
(* mov    %r14,%r12                                #! PC = 0x5555555554d5 *)
mov r12 r14;
(* xor    %r14,%r8                                 #! PC = 0x5555555554d8 *)
xor r8@uint64 r8 r14;
(* or     %rbp,%r12                                #! PC = 0x5555555554db *)
or r12@uint64 r12 rbp;
(* and    %rax,%r14                                #! PC = 0x5555555554de *)
and r14@uint64 r14 rax;
(* and    %rbp,%r11                                #! PC = 0x5555555554e1 *)
and r11@uint64 r11 rbp;
(* mov    %r8,-0x20(%rsp)                          #! EA = L0x7fffffffd8f8; PC = 0x5555555554e4 *)
mov L0x7fffffffd8f8 r8;
(* mov    %r10,%r8                                 #! PC = 0x5555555554e9 *)
mov r8 r10;
(* xor    %rbp,%r14                                #! PC = 0x5555555554ec *)
xor r14@uint64 r14 rbp;
(* mov    -0x60(%rsp),%rbp                         #! EA = L0x7fffffffd8b8; Value = 0x3c5da69e7c1e7f20; PC = 0x5555555554ef *)
mov rbp L0x7fffffffd8b8;
(* and    %rsi,%r8                                 #! PC = 0x5555555554f4 *)
and r8@uint64 r8 rsi;
(* xor    %r12,%rsi                                #! PC = 0x5555555554f7 *)
xor rsi@uint64 rsi r12;
(* xor    %r10,%r11                                #! PC = 0x5555555554fa *)
xor r11@uint64 r11 r10;
(* mov    0x18(%rsp),%r10                          #! EA = L0x7fffffffd930; Value = 0x3631daea1aba0ed7; PC = 0x5555555554fd *)
mov r10 L0x7fffffffd930;
(* mov    %rsi,%r12                                #! PC = 0x555555555502 *)
mov r12 rsi;
(* xor    %rcx,%rbp                                #! PC = 0x555555555505 *)
xor rbp@uint64 rbp rcx;
(* xor    %rax,%r8                                 #! PC = 0x555555555508 *)
xor r8@uint64 r8 rax;
(* mov    -0x10(%rsp),%rax                         #! EA = L0x7fffffffd908; Value = 0xa4003e0e2be8d5a3; PC = 0x55555555550b *)
mov rax L0x7fffffffd908;
(* not    %r12                                     #! PC = 0x555555555510 *)
not r12@uint64 r12;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd938; PC = 0x555555555513 *)
mov L0x7fffffffd938 r8;
(* mov    %r12,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555518 *)
mov L0x7fffffffd920 r12;
(* mov    %rbp,%r12                                #! PC = 0x55555555551d *)
mov r12 rbp;
(* mov    -0x38(%rsp),%rbp                         #! EA = L0x7fffffffd8e0; Value = 0xfd1d954cf6f44857; PC = 0x555555555520 *)
mov rbp L0x7fffffffd8e0;
(* xor    %rbx,%rax                                #! PC = 0x555555555525 *)
xor rax@uint64 rax rbx;
(* ror    $0x1c,%r12                               #! PC = 0x555555555528 *)
split r12_h r12_l r12 0x1c; shl r12_s r12_l (64-0x1c)@uint64; add r12 r12_s r12_h;
(* rol    $0x1b,%rax                               #! PC = 0x55555555552c *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r14,0x58(%rsp)                          #! EA = L0x7fffffffd970; PC = 0x555555555530 *)
mov L0x7fffffffd970 r14;
(* xor    %rdx,%rbp                                #! PC = 0x555555555535 *)
xor rbp@uint64 rbp rdx;
(* mov    %rbp,%r8                                 #! PC = 0x555555555538 *)
mov r8 rbp;
(* mov    0x28(%rsp),%rbp                          #! EA = L0x7fffffffd940; Value = 0xafb94af124f712e7; PC = 0x55555555553b *)
mov rbp L0x7fffffffd940;
(* rol    $0xa,%r8                                 #! PC = 0x555555555540 *)
split r8_h r8_l r8 (64-0xa); shl r8_s r8_l 0xa@uint64; add r8 r8_s r8_h;
(* xor    %rdi,%r10                                #! PC = 0x555555555544 *)
xor r10@uint64 r10 rdi;
(* xor    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd928; Value = 0x7e15eed7c50e38d5; PC = 0x555555555547 *)
xor rbx@uint64 rbx L0x7fffffffd928;
(* xor    -0x50(%rsp),%rcx                         #! EA = L0x7fffffffd8c8; Value = 0xa4f7c647570619f2; PC = 0x55555555554c *)
xor rcx@uint64 rcx L0x7fffffffd8c8;
(* rol    $0xf,%r10                                #! PC = 0x555555555551 *)
split r10_h r10_l r10 (64-0xf); shl r10_s r10_l 0xf@uint64; add r10 r10_s r10_h;
(* xor    %r9,%rbp                                 #! PC = 0x555555555555 *)
xor rbp@uint64 rbp r9;
(* ror    $0x19,%rbx                               #! PC = 0x555555555558 *)
split rbx_h rbx_l rbx 0x19; shl rbx_s rbx_l (64-0x19)@uint64; add rbx rbx_s rbx_h;
(* xor    -0x30(%rsp),%rdx                         #! EA = L0x7fffffffd8e8; Value = 0x78770d25560e0489; PC = 0x55555555555c *)
xor rdx@uint64 rdx L0x7fffffffd8e8;
(* mov    %rbp,%rsi                                #! PC = 0x555555555561 *)
mov rsi rbp;
(* mov    %r10,%r13                                #! PC = 0x555555555564 *)
mov r13 r10;
(* mov    %r12,%rbp                                #! PC = 0x555555555567 *)
mov rbp r12;
(* ror    $0x17,%rcx                               #! PC = 0x55555555556a *)
split rcx_h rcx_l rcx 0x17; shl rcx_s rcx_l (64-0x17)@uint64; add rcx rcx_s rcx_h;
(* ror    $0x8,%rsi                                #! PC = 0x55555555556e *)
split rsi_h rsi_l rsi 0x8; shl rsi_s rsi_l (64-0x8)@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x555555555572 *)
and rbp@uint64 rbp r8;
(* not    %r13                                     #! PC = 0x555555555575 *)
not r13@uint64 r13;
(* rol    $0x2,%rdx                                #! PC = 0x555555555578 *)
split rdx_h rdx_l rdx (64-0x2); shl rdx_s rdx_l 0x2@uint64; add rdx rdx_s rdx_h;
(* xor    %rax,%rbp                                #! PC = 0x55555555557c *)
xor rbp@uint64 rbp rax;
(* or     %rsi,%r13                                #! PC = 0x55555555557f *)
or r13@uint64 r13 rsi;
(* xor    -0x28(%rsp),%rdi                         #! EA = L0x7fffffffd8f0; Value = 0x7df225c0f372c19f; PC = 0x555555555582 *)
xor rdi@uint64 rdi L0x7fffffffd8f0;
(* xor    %r8,%r13                                 #! PC = 0x555555555587 *)
xor r13@uint64 r13 r8;
(* mov    %rbp,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x55555555558a *)
mov L0x7fffffffd940 rbp;
(* mov    %r8,%rbp                                 #! PC = 0x55555555558f *)
mov rbp r8;
(* mov    %rax,%r8                                 #! PC = 0x555555555592 *)
mov r8 rax;
(* or     %r12,%rax                                #! PC = 0x555555555595 *)
or rax@uint64 rax r12;
(* and    %rsi,%r8                                 #! PC = 0x555555555598 *)
and r8@uint64 r8 rsi;
(* ror    $0x2,%rdi                                #! PC = 0x55555555559b *)
split rdi_h rdi_l rdi 0x2; shl rdi_s rdi_l (64-0x2)@uint64; add rdi rdi_s rdi_h;
(* or     %r10,%rbp                                #! PC = 0x55555555559f *)
or rbp@uint64 rbp r10;
(* xor    %rsi,%rax                                #! PC = 0x5555555555a2 *)
xor rax@uint64 rax rsi;
(* xor    %r12,%rbp                                #! PC = 0x5555555555a5 *)
xor rbp@uint64 rbp r12;
(* xor    %r8,%r10                                 #! PC = 0x5555555555a8 *)
xor r10@uint64 r10 r8;
(* mov    %r13,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x5555555555ab *)
mov L0x7fffffffd8c8 r13;
(* mov    %rax,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x5555555555b0 *)
mov L0x7fffffffd8e0 rax;
(* mov    -0x8(%rsp),%rax                          #! EA = L0x7fffffffd910; Value = 0x827d7542df40111a; PC = 0x5555555555b5 *)
mov rax L0x7fffffffd910;
(* not    %r10                                     #! PC = 0x5555555555ba *)
not r10@uint64 r10;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x5048bf72cdc9fef0; PC = 0x5555555555bd *)
mov r12 L0x7fffffffd960;
(* xor    %r9,%rax                                 #! PC = 0x5555555555c2 *)
xor rax@uint64 rax r9;
(* mov    %rax,%r14                                #! PC = 0x5555555555c5 *)
mov r14 rax;
(* mov    %rbx,%rax                                #! PC = 0x5555555555c8 *)
mov rax rbx;
(* ror    $0x9,%r14                                #! PC = 0x5555555555cb *)
split r14_h r14_l r14 0x9; shl r14_s r14_l (64-0x9)@uint64; add r14 r14_s r14_h;
(* or     %rcx,%rax                                #! PC = 0x5555555555cf *)
or rax@uint64 rax rcx;
(* mov    %r14,%r9                                 #! PC = 0x5555555555d2 *)
mov r9 r14;
(* mov    %rax,%rsi                                #! PC = 0x5555555555d5 *)
mov rsi rax;
(* mov    %rcx,%rax                                #! PC = 0x5555555555d8 *)
mov rax rcx;
(* and    %rdx,%rax                                #! PC = 0x5555555555db *)
and rax@uint64 rax rdx;
(* not    %r9                                      #! PC = 0x5555555555de *)
not r9@uint64 r9;
(* xor    %r14,%rsi                                #! PC = 0x5555555555e1 *)
xor rsi@uint64 rsi r14;
(* and    %rbx,%r9                                 #! PC = 0x5555555555e4 *)
and r9@uint64 r9 rbx;
(* xor    %rax,%rbx                                #! PC = 0x5555555555e7 *)
xor rbx@uint64 rbx rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555555ea *)
mov rax rdi;
(* mov    %rsi,%r8                                 #! PC = 0x5555555555ed *)
mov r8 rsi;
(* or     %rdx,%rax                                #! PC = 0x5555555555f0 *)
or rax@uint64 rax rdx;
(* xor    %rdi,%r9                                 #! PC = 0x5555555555f3 *)
xor r9@uint64 r9 rdi;
(* not    %r8                                      #! PC = 0x5555555555f6 *)
not r8@uint64 r8;
(* xor    %rcx,%rax                                #! PC = 0x5555555555f9 *)
xor rax@uint64 rax rcx;
(* and    %r14,%rdi                                #! PC = 0x5555555555fc *)
and rdi@uint64 rdi r14;
(* mov    0x38(%rsp),%rcx                          #! EA = L0x7fffffffd950; Value = 0x2a7defdfa3197872; PC = 0x5555555555ff *)
mov rcx L0x7fffffffd950;
(* xor    -0x20(%rsp),%r12                         #! EA = L0x7fffffffd8f8; Value = 0x8313ceb2255969bd; PC = 0x555555555604 *)
xor r12@uint64 r12 L0x7fffffffd8f8;
(* mov    %rax,%rsi                                #! PC = 0x555555555609 *)
mov rsi rax;
(* mov    %rdi,%rax                                #! PC = 0x55555555560c *)
mov rax rdi;
(* xor    0x28(%rsp),%r12                          #! EA = L0x7fffffffd940; Value = 0x28cae58ddb34d13f; PC = 0x55555555560f *)
xor r12@uint64 r12 L0x7fffffffd940;
(* mov    %r8,-0x30(%rsp)                          #! EA = L0x7fffffffd8e8; PC = 0x555555555614 *)
mov L0x7fffffffd8e8 r8;
(* xor    %rdx,%rax                                #! PC = 0x555555555619 *)
xor rax@uint64 rax rdx;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd938; Value = 0x3cf4c2407c1c7289; PC = 0x55555555561c *)
mov rdx L0x7fffffffd938;
(* xor    -0x68(%rsp),%r12                         #! EA = L0x7fffffffd8b0; Value = 0x70d5b0bf73fb5c5c; PC = 0x555555555621 *)
xor r12@uint64 r12 L0x7fffffffd8b0;
(* xor    %rbx,%rcx                                #! PC = 0x555555555626 *)
xor rcx@uint64 rcx rbx;
(* xor    -0x58(%rsp),%rcx                         #! EA = L0x7fffffffd8c0; Value = 0x01cf6ff7f7d9ffc1; PC = 0x555555555629 *)
xor rcx@uint64 rcx L0x7fffffffd8c0;
(* xor    %r9,%r12                                 #! PC = 0x55555555562e *)
xor r12@uint64 r12 r9;
(* xor    %r15,%rdx                                #! PC = 0x555555555631 *)
xor rdx@uint64 rdx r15;
(* xor    %r11,%rcx                                #! PC = 0x555555555634 *)
xor rcx@uint64 rcx r11;
(* xor    %rbp,%rdx                                #! PC = 0x555555555637 *)
xor rdx@uint64 rdx rbp;
(* xor    0x30(%rsp),%rdx                          #! EA = L0x7fffffffd948; Value = 0x840872e1c6927080; PC = 0x55555555563a *)
xor rdx@uint64 rdx L0x7fffffffd948;
(* xor    %r13,%rcx                                #! PC = 0x55555555563f *)
xor rcx@uint64 rcx r13;
(* xor    %r8,%rdx                                 #! PC = 0x555555555642 *)
xor rdx@uint64 rdx r8;
(* mov    -0x40(%rsp),%r8                          #! EA = L0x7fffffffd8d8; Value = 0x22b087dcc42a1c7c; PC = 0x555555555645 *)
mov r8 L0x7fffffffd8d8;
(* xor    0x50(%rsp),%r8                           #! EA = L0x7fffffffd968; Value = 0xb53f71552e4828e9; PC = 0x55555555564a *)
xor r8@uint64 r8 L0x7fffffffd968;
(* mov    %rcx,%r14                                #! PC = 0x55555555564f *)
mov r14 rcx;
(* xor    %rsi,%r8                                 #! PC = 0x555555555652 *)
xor r8@uint64 r8 rsi;
(* xor    0x8(%rsp),%r8                            #! EA = L0x7fffffffd920; Value = 0xb2c13469a455c88d; PC = 0x555555555655 *)
xor r8@uint64 r8 L0x7fffffffd920;
(* mov    0x58(%rsp),%rcx                          #! EA = L0x7fffffffd970; Value = 0x9f62a6e298f26385; PC = 0x55555555565a *)
mov rcx L0x7fffffffd970;
(* mov    %rsi,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x55555555565f *)
mov L0x7fffffffd930 rsi;
(* mov    %r8,%rdi                                 #! PC = 0x555555555664 *)
mov rdi r8;
(* mov    %r14,%rsi                                #! PC = 0x555555555667 *)
mov rsi r14;
(* xor    %r10,%rdi                                #! PC = 0x55555555566a *)
xor rdi@uint64 rdi r10;
(* rol    %rsi                                     #! PC = 0x55555555566d *)
split rsi_h rsi_l rsi 63; shl rsi_s rsi_l 1@uint64; add rsi rsi_s rsi_h;
(* mov    %rdi,%r13                                #! PC = 0x555555555670 *)
mov r13 rdi;
(* mov    0x40(%rsp),%rdi                          #! EA = L0x7fffffffd958; Value = 0xd42dd36c9d1519f1; PC = 0x555555555673 *)
mov rdi L0x7fffffffd958;
(* xor    (%rsp),%rdi                              #! EA = L0x7fffffffd918; Value = 0x928089d29f18fbe3; PC = 0x555555555678 *)
xor rdi@uint64 rdi L0x7fffffffd918;
(* xor    %r12,%rsi                                #! PC = 0x55555555567c *)
xor rsi@uint64 rsi r12;
(* xor    %rdi,%rcx                                #! PC = 0x55555555567f *)
xor rcx@uint64 rcx rdi;
(* mov    %rdx,%rdi                                #! PC = 0x555555555682 *)
mov rdi rdx;
(* xor    -0x38(%rsp),%rcx                         #! EA = L0x7fffffffd8e0; Value = 0x6267234a1aecfc55; PC = 0x555555555685 *)
xor rcx@uint64 rcx L0x7fffffffd8e0;
(* mov    %r13,%r8                                 #! PC = 0x55555555568a *)
mov r8 r13;
(* rol    %rdi                                     #! PC = 0x55555555568d *)
split rdi_h rdi_l rdi 63; shl rdi_s rdi_l 1@uint64; add rdi rdi_s rdi_h;
(* xor    %rax,%rcx                                #! PC = 0x555555555690 *)
xor rcx@uint64 rcx rax;
(* rol    %r8                                      #! PC = 0x555555555693 *)
split r8_h r8_l r8 63; shl r8_s r8_l 1@uint64; add r8 r8_s r8_h;
(* xor    %rcx,%rdi                                #! PC = 0x555555555696 *)
xor rdi@uint64 rdi rcx;
(* rol    %rcx                                     #! PC = 0x555555555699 *)
split rcx_h rcx_l rcx 63; shl rcx_s rcx_l 1@uint64; add rcx rcx_s rcx_h;
(* xor    %r8,%rdx                                 #! PC = 0x55555555569c *)
xor rdx@uint64 rdx r8;
(* xor    %r14,%rcx                                #! PC = 0x55555555569f *)
xor rcx@uint64 rcx r14;
(* mov    %r12,%r14                                #! PC = 0x5555555556a2 *)
mov r14 r12;
(* rol    %r14                                     #! PC = 0x5555555556a5 *)
split r14_h r14_l r14 63; shl r14_s r14_l 1@uint64; add r14 r14_s r14_h;
(* mov    %r14,%r8                                 #! PC = 0x5555555556a8 *)
mov r8 r14;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560d0; PC = 0x5555555556ab *)
mov r14 L0x7fffffffd8a8;
(* xor    %r13,%r8                                 #! PC = 0x5555555556b0 *)
xor r8@uint64 r8 r13;
(* mov    -0x68(%rsp),%r13                         #! EA = L0x7fffffffd8b0; Value = 0x70d5b0bf73fb5c5c; PC = 0x5555555556b3 *)
mov r13 L0x7fffffffd8b0;
(* xor    %rdi,%r13                                #! PC = 0x5555555556b8 *)
xor r13@uint64 r13 rdi;
(* xor    %rsi,%r15                                #! PC = 0x5555555556bb *)
xor r15@uint64 r15 rsi;
(* xor    %rdx,%r11                                #! PC = 0x5555555556be *)
xor r11@uint64 r11 rdx;
(* xor    %rcx,%r10                                #! PC = 0x5555555556c1 *)
xor r10@uint64 r10 rcx;
(* mov    %r13,%r12                                #! PC = 0x5555555556c4 *)
mov r12 r13;
(* mov    %r15,%r13                                #! PC = 0x5555555556c7 *)
mov r13 r15;
(* mov    0x8(%r14),%r15                           #! EA = L0x5555555560d8; Value = 0x8000000080008008; PC = 0x5555555556ca *)
mov r15 L0x5555555560d8;
(* ror    $0x15,%r11                               #! PC = 0x5555555556ce *)
split r11_h r11_l r11 0x15; shl r11_s r11_l (64-0x15)@uint64; add r11 r11_s r11_h;
(* ror    $0x14,%r13                               #! PC = 0x5555555556d2 *)
split r13_h r13_l r13 0x14; shl r13_s r13_l (64-0x14)@uint64; add r13 r13_s r13_h;
(* rol    $0x15,%r10                               #! PC = 0x5555555556d6 *)
split r10_h r10_l r10 (64-0x15); shl r10_s r10_l 0x15@uint64; add r10 r10_s r10_h;
(* xor    %r8,%rax                                 #! PC = 0x5555555556da *)
xor rax@uint64 rax r8;
(* xor    %rsi,%rbp                                #! PC = 0x5555555556dd *)
xor rbp@uint64 rbp rsi;
(* mov    %r13,%r14                                #! PC = 0x5555555556e0 *)
mov r14 r13;
(* xor    %r12,%r15                                #! PC = 0x5555555556e3 *)
xor r15@uint64 r15 r12;
(* rol    $0xe,%rax                                #! PC = 0x5555555556e6 *)
split rax_h rax_l rax (64-0xe); shl rax_s rax_l 0xe@uint64; add rax rax_s rax_h;
(* xor    %rdx,%rbx                                #! PC = 0x5555555556ea *)
xor rbx@uint64 rbx rdx;
(* ror    $0x13,%rbp                               #! PC = 0x5555555556ed *)
split rbp_h rbp_l rbp 0x13; shl rbp_s rbp_l (64-0x13)@uint64; add rbp rbp_s rbp_h;
(* or     %r11,%r14                                #! PC = 0x5555555556f1 *)
or r14@uint64 r14 r11;
(* ror    $0x3,%rbx                                #! PC = 0x5555555556f4 *)
split rbx_h rbx_l rbx 0x3; shl rbx_s rbx_l (64-0x3)@uint64; add rbx rbx_s rbx_h;
(* xor    %r14,%r15                                #! PC = 0x5555555556f8 *)
xor r15@uint64 r15 r14;
(* mov    %r11,%r14                                #! PC = 0x5555555556fb *)
mov r14 r11;
(* not    %r14                                     #! PC = 0x5555555556fe *)
not r14@uint64 r14;
(* mov    %r15,-0x68(%rsp)                         #! EA = L0x7fffffffd8b0; PC = 0x555555555701 *)
mov L0x7fffffffd8b0 r15;
(* or     %r10,%r14                                #! PC = 0x555555555706 *)
or r14@uint64 r14 r10;
(* xor    %r13,%r14                                #! PC = 0x555555555709 *)
xor r14@uint64 r14 r13;
(* and    %r12,%r13                                #! PC = 0x55555555570c *)
and r13@uint64 r13 r12;
(* mov    %r14,-0x48(%rsp)                         #! EA = L0x7fffffffd8d0; PC = 0x55555555570f *)
mov L0x7fffffffd8d0 r14;
(* mov    %r10,%r14                                #! PC = 0x555555555714 *)
mov r14 r10;
(* mov    %r13,%r15                                #! PC = 0x555555555717 *)
mov r15 r13;
(* mov    (%rsp),%r13                              #! EA = L0x7fffffffd918; Value = 0x928089d29f18fbe3; PC = 0x55555555571a *)
mov r13 L0x7fffffffd918;
(* and    %rax,%r14                                #! PC = 0x55555555571e *)
and r14@uint64 r14 rax;
(* xor    %rax,%r15                                #! PC = 0x555555555721 *)
xor r15@uint64 r15 rax;
(* xor    %r11,%r14                                #! PC = 0x555555555724 *)
xor r14@uint64 r14 r11;
(* mov    %r12,%r11                                #! PC = 0x555555555727 *)
mov r11 r12;
(* xor    %r8,%r13                                 #! PC = 0x55555555572a *)
xor r13@uint64 r13 r8;
(* mov    %r15,-0x10(%rsp)                         #! EA = L0x7fffffffd908; PC = 0x55555555572d *)
mov L0x7fffffffd908 r15;
(* or     %rax,%r11                                #! PC = 0x555555555732 *)
or r11@uint64 r11 rax;
(* mov    -0x20(%rsp),%rax                         #! EA = L0x7fffffffd8f8; Value = 0x8313ceb2255969bd; PC = 0x555555555735 *)
mov rax L0x7fffffffd8f8;
(* rol    $0x14,%r13                               #! PC = 0x55555555573a *)
split r13_h r13_l r13 (64-0x14); shl r13_s r13_l 0x14@uint64; add r13 r13_s r13_h;
(* mov    %r14,-0x28(%rsp)                         #! EA = L0x7fffffffd8f0; PC = 0x55555555573e *)
mov L0x7fffffffd8f0 r14;
(* xor    %r10,%r11                                #! PC = 0x555555555743 *)
xor r11@uint64 r11 r10;
(* mov    -0x40(%rsp),%r10                         #! EA = L0x7fffffffd8d8; Value = 0x22b087dcc42a1c7c; PC = 0x555555555746 *)
mov r10 L0x7fffffffd8d8;
(* mov    %r13,%r12                                #! PC = 0x55555555574b *)
mov r12 r13;
(* xor    %rdi,%rax                                #! PC = 0x55555555574e *)
xor rax@uint64 rax rdi;
(* mov    %r11,-0x18(%rsp)                         #! EA = L0x7fffffffd900; PC = 0x555555555751 *)
mov L0x7fffffffd900 r11;
(* mov    %rbx,%r11                                #! PC = 0x555555555756 *)
mov r11 rbx;
(* rol    $0x3,%rax                                #! PC = 0x555555555759 *)
split rax_h rax_l rax (64-0x3); shl rax_s rax_l 0x3@uint64; add rax rax_s rax_h;
(* xor    %rcx,%r10                                #! PC = 0x55555555575d *)
xor r10@uint64 r10 rcx;
(* not    %r11                                     #! PC = 0x555555555760 *)
not r11@uint64 r11;
(* rol    $0x1c,%r10                               #! PC = 0x555555555763 *)
split r10_h r10_l r10 (64-0x1c); shl r10_s r10_l 0x1c@uint64; add r10 r10_s r10_h;
(* or     %rax,%r12                                #! PC = 0x555555555767 *)
or r12@uint64 r12 rax;
(* mov    %rax,%r15                                #! PC = 0x55555555576a *)
mov r15 rax;
(* xor    %r10,%r12                                #! PC = 0x55555555576d *)
xor r12@uint64 r12 r10;
(* and    %rbp,%r15                                #! PC = 0x555555555770 *)
and r15@uint64 r15 rbp;
(* or     %rbp,%r11                                #! PC = 0x555555555773 *)
or r11@uint64 r11 rbp;
(* mov    %r10,%r14                                #! PC = 0x555555555776 *)
mov r14 r10;
(* xor    %r13,%r15                                #! PC = 0x555555555779 *)
xor r15@uint64 r15 r13;
(* xor    %rax,%r11                                #! PC = 0x55555555577c *)
xor r11@uint64 r11 rax;
(* mov    -0x58(%rsp),%rax                         #! EA = L0x7fffffffd8c0; Value = 0x01cf6ff7f7d9ffc1; PC = 0x55555555577f *)
mov rax L0x7fffffffd8c0;
(* and    %r13,%r10                                #! PC = 0x555555555784 *)
and r10@uint64 r10 r13;
(* mov    %r15,-0x40(%rsp)                         #! EA = L0x7fffffffd8d8; PC = 0x555555555787 *)
mov L0x7fffffffd8d8 r15;
(* mov    0x30(%rsp),%r15                          #! EA = L0x7fffffffd948; Value = 0x840872e1c6927080; PC = 0x55555555578c *)
mov r15 L0x7fffffffd948;
(* or     %rbx,%r14                                #! PC = 0x555555555791 *)
or r14@uint64 r14 rbx;
(* xor    %rdi,%r9                                 #! PC = 0x555555555794 *)
xor r9@uint64 r9 rdi;
(* mov    %r11,-0x20(%rsp)                         #! EA = L0x7fffffffd8f8; PC = 0x555555555797 *)
mov L0x7fffffffd8f8 r11;
(* xor    %rdx,%rax                                #! PC = 0x55555555579c *)
xor rax@uint64 rax rdx;
(* xor    %rbp,%r14                                #! PC = 0x55555555579f *)
xor r14@uint64 r14 rbp;
(* mov    %r10,%rbp                                #! PC = 0x5555555557a2 *)
mov rbp r10;
(* xor    %rsi,%r15                                #! PC = 0x5555555557a5 *)
xor r15@uint64 r15 rsi;
(* rol    $0x6,%rax                                #! PC = 0x5555555557a8 *)
split rax_h rax_l rax (64-0x6); shl rax_s rax_l 0x6@uint64; add rax rax_s rax_h;
(* xor    %rbx,%rbp                                #! PC = 0x5555555557ac *)
xor rbp@uint64 rbp rbx;
(* mov    -0x38(%rsp),%r10                         #! EA = L0x7fffffffd8e0; Value = 0x6267234a1aecfc55; PC = 0x5555555557af *)
mov r10 L0x7fffffffd8e0;
(* mov    %r15,%r11                                #! PC = 0x5555555557b4 *)
mov r11 r15;
(* mov    0x8(%rsp),%r15                           #! EA = L0x7fffffffd920; Value = 0xb2c13469a455c88d; PC = 0x5555555557b7 *)
mov r15 L0x7fffffffd920;
(* mov    %rax,%rbx                                #! PC = 0x5555555557bc *)
mov rbx rax;
(* rol    $0x12,%r9                                #! PC = 0x5555555557bf *)
split r9_h r9_l r9 (64-0x12); shl r9_s r9_l 0x12@uint64; add r9 r9_s r9_h;
(* rol    %r11                                     #! PC = 0x5555555557c3 *)
split r11_h r11_l r11 63; shl r11_s r11_l 1@uint64; add r11 r11_s r11_h;
(* xor    %r8,%r10                                 #! PC = 0x5555555557c6 *)
xor r10@uint64 r10 r8;
(* mov    %rbp,(%rsp)                              #! EA = L0x7fffffffd918; PC = 0x5555555557c9 *)
mov L0x7fffffffd918 rbp;
(* xor    %rcx,%r15                                #! PC = 0x5555555557cd *)
xor r15@uint64 r15 rcx;
(* rol    $0x8,%r10                                #! PC = 0x5555555557d0 *)
split r10_h r10_l r10 (64-0x8); shl r10_s r10_l 0x8@uint64; add r10 r10_s r10_h;
(* mov    %r12,-0x60(%rsp)                         #! EA = L0x7fffffffd8b8; PC = 0x5555555557d4 *)
mov L0x7fffffffd8b8 r12;
(* rol    $0x19,%r15                               #! PC = 0x5555555557d9 *)
split r15_h r15_l r15 (64-0x19); shl r15_s r15_l 0x19@uint64; add r15 r15_s r15_h;
(* mov    %r14,-0x8(%rsp)                          #! EA = L0x7fffffffd910; PC = 0x5555555557dd *)
mov L0x7fffffffd910 r14;
(* or     %r15,%rbx                                #! PC = 0x5555555557e2 *)
or rbx@uint64 rbx r15;
(* mov    %r15,%rbp                                #! PC = 0x5555555557e5 *)
mov rbp r15;
(* xor    %r11,%rbx                                #! PC = 0x5555555557e8 *)
xor rbx@uint64 rbx r11;
(* mov    %rbx,-0x58(%rsp)                         #! EA = L0x7fffffffd8c0; PC = 0x5555555557eb *)
mov L0x7fffffffd8c0 rbx;
(* mov    %r15,%rbx                                #! PC = 0x5555555557f0 *)
mov rbx r15;
(* mov    %r10,%r15                                #! PC = 0x5555555557f3 *)
mov r15 r10;
(* and    %r10,%rbx                                #! PC = 0x5555555557f6 *)
and rbx@uint64 rbx r10;
(* not    %r15                                     #! PC = 0x5555555557f9 *)
not r15@uint64 r15;
(* xor    %rax,%rbx                                #! PC = 0x5555555557fc *)
xor rbx@uint64 rbx rax;
(* and    %r11,%rax                                #! PC = 0x5555555557ff *)
and rax@uint64 rax r11;
(* and    %r9,%r15                                 #! PC = 0x555555555802 *)
and r15@uint64 r15 r9;
(* mov    %rbx,-0x38(%rsp)                         #! EA = L0x7fffffffd8e0; PC = 0x555555555805 *)
mov L0x7fffffffd8e0 rbx;
(* mov    %r11,%rbx                                #! PC = 0x55555555580a *)
mov rbx r11;
(* xor    %r9,%rax                                 #! PC = 0x55555555580d *)
xor rax@uint64 rax r9;
(* xor    %rbp,%r15                                #! PC = 0x555555555810 *)
xor r15@uint64 r15 rbp;
(* or     %r9,%rbx                                 #! PC = 0x555555555813 *)
or rbx@uint64 rbx r9;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffd928; PC = 0x555555555816 *)
mov L0x7fffffffd928 rax;
(* xor    %rbx,%r10                                #! PC = 0x55555555581b *)
xor r10@uint64 r10 rbx;
(* not    %r10                                     #! PC = 0x55555555581e *)
not r10@uint64 r10;
(* mov    %r10,0x8(%rsp)                           #! EA = L0x7fffffffd920; PC = 0x555555555821 *)
mov L0x7fffffffd920 r10;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffd958; Value = 0xd42dd36c9d1519f1; PC = 0x555555555826 *)
mov rax L0x7fffffffd958;
(* mov    0x48(%rsp),%r12                          #! EA = L0x7fffffffd960; Value = 0x5048bf72cdc9fef0; PC = 0x55555555582b *)
mov r12 L0x7fffffffd960;
(* mov    0x20(%rsp),%rbx                          #! EA = L0x7fffffffd938; Value = 0x3cf4c2407c1c7289; PC = 0x555555555830 *)
mov rbx L0x7fffffffd938;
(* xor    %r8,%rax                                 #! PC = 0x555555555835 *)
xor rax@uint64 rax r8;
(* mov    -0x50(%rsp),%r13                         #! EA = L0x7fffffffd8c8; Value = 0x2df45277e8840d83; PC = 0x555555555838 *)
mov r13 L0x7fffffffd8c8;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffd930; Value = 0x4532a4cd8a5e1a52; PC = 0x55555555583d *)
mov r9 L0x7fffffffd930;
(* xor    %rdi,%r12                                #! PC = 0x555555555842 *)
xor r12@uint64 r12 rdi;
(* rol    $0x1b,%rax                               #! PC = 0x555555555845 *)
split rax_h rax_l rax (64-0x1b); shl rax_s rax_l 0x1b@uint64; add rax rax_s rax_h;
(* mov    %r12,%r14                                #! PC = 0x555555555849 *)
mov r14 r12;
(* ror    $0x1c,%r14                               #! PC = 0x55555555584c *)
split r14_h r14_l r14 0x1c; shl r14_s r14_l (64-0x1c)@uint64; add r14 r14_s r14_h;
(* xor    %rsi,%rbx                                #! PC = 0x555555555850 *)
xor rbx@uint64 rbx rsi;
(* xor    %rdx,%r13                                #! PC = 0x555555555853 *)
xor r13@uint64 r13 rdx;
(* xor    %rcx,%r9                                 #! PC = 0x555555555856 *)
xor r9@uint64 r9 rcx;
(* mov    %rbx,%r11                                #! PC = 0x555555555859 *)
mov r11 rbx;
(* mov    %r14,%r10                                #! PC = 0x55555555585c *)
mov r10 r14;
(* rol    $0xf,%r13                                #! PC = 0x55555555585f *)
split r13_h r13_l r13 (64-0xf); shl r13_s r13_l 0xf@uint64; add r13 r13_s r13_h;
(* xor    0x28(%rsp),%rdi                          #! EA = L0x7fffffffd940; Value = 0x28cae58ddb34d13f; PC = 0x555555555863 *)
xor rdi@uint64 rdi L0x7fffffffd940;
(* rol    $0xa,%r11                                #! PC = 0x555555555868 *)
split r11_h r11_l r11 (64-0xa); shl r11_s r11_l 0xa@uint64; add r11 r11_s r11_h;
(* ror    $0x8,%r9                                 #! PC = 0x55555555586c *)
split r9_h r9_l r9 0x8; shl r9_s r9_l (64-0x8)@uint64; add r9 r9_s r9_h;
(* xor    0x50(%rsp),%rcx                          #! EA = L0x7fffffffd968; Value = 0xb53f71552e4828e9; PC = 0x555555555870 *)
xor rcx@uint64 rcx L0x7fffffffd968;
(* xor    -0x30(%rsp),%rsi                         #! EA = L0x7fffffffd8e8; Value = 0x339b95dc3b105074; PC = 0x555555555875 *)
xor rsi@uint64 rsi L0x7fffffffd8e8;
(* and    %r11,%r10                                #! PC = 0x55555555587a *)
and r10@uint64 r10 r11;
(* mov    %r11,%r12                                #! PC = 0x55555555587d *)
mov r12 r11;
(* ror    $0x9,%rcx                                #! PC = 0x555555555880 *)
split rcx_h rcx_l rcx 0x9; shl rcx_s rcx_l (64-0x9)@uint64; add rcx rcx_s rcx_h;
(* xor    0x58(%rsp),%r8                           #! EA = L0x7fffffffd970; Value = 0x9f62a6e298f26385; PC = 0x555555555884 *)
xor r8@uint64 r8 L0x7fffffffd970;
(* xor    %rax,%r10                                #! PC = 0x555555555889 *)
xor r10@uint64 r10 rax;
(* ror    $0x17,%rdi                               #! PC = 0x55555555588c *)
split rdi_h rdi_l rdi 0x17; shl rdi_s rdi_l (64-0x17)@uint64; add rdi rdi_s rdi_h;
(* mov    %rcx,%rbp                                #! PC = 0x555555555890 *)
mov rbp rcx;
(* or     %r13,%r12                                #! PC = 0x555555555893 *)
or r12@uint64 r12 r13;
(* mov    %r10,-0x50(%rsp)                         #! EA = L0x7fffffffd8c8; PC = 0x555555555896 *)
mov L0x7fffffffd8c8 r10;
(* mov    %r13,%r10                                #! PC = 0x55555555589b *)
mov r10 r13;
(* ror    $0x19,%r8                                #! PC = 0x55555555589e *)
split r8_h r8_l r8 0x19; shl r8_s r8_l (64-0x19)@uint64; add r8 r8_s r8_h;
(* not    %rbp                                     #! PC = 0x5555555558a2 *)
not rbp@uint64 rbp;
(* not    %r10                                     #! PC = 0x5555555558a5 *)
not r10@uint64 r10;
(* rol    $0x2,%rsi                                #! PC = 0x5555555558a8 *)
split rsi_h rsi_l rsi (64-0x2); shl rsi_s rsi_l 0x2@uint64; add rsi rsi_s rsi_h;
(* and    %r8,%rbp                                 #! PC = 0x5555555558ac *)
and rbp@uint64 rbp r8;
(* xor    %r14,%r12                                #! PC = 0x5555555558af *)
xor r12@uint64 r12 r14;
(* or     %r9,%r10                                 #! PC = 0x5555555558b2 *)
or r10@uint64 r10 r9;
(* xor    %r11,%r10                                #! PC = 0x5555555558b5 *)
xor r10@uint64 r10 r11;
(* mov    0x38(%rsp),%r11                          #! EA = L0x7fffffffd950; Value = 0x2a7defdfa3197872; PC = 0x5555555558b8 *)
mov r11 L0x7fffffffd950;
(* mov    %r10,0x18(%rsp)                          #! EA = L0x7fffffffd930; PC = 0x5555555558bd *)
mov L0x7fffffffd930 r10;
(* mov    %rax,%r10                                #! PC = 0x5555555558c2 *)
mov r10 rax;
(* or     %r14,%rax                                #! PC = 0x5555555558c5 *)
or rax@uint64 rax r14;
(* xor    %r9,%rax                                 #! PC = 0x5555555558c8 *)
xor rax@uint64 rax r9;
(* xor    %rdx,%r11                                #! PC = 0x5555555558cb *)
xor r11@uint64 r11 rdx;
(* mov    %r8,%rdx                                 #! PC = 0x5555555558ce *)
mov rdx r8;
(* and    %r9,%r10                                 #! PC = 0x5555555558d1 *)
and r10@uint64 r10 r9;
(* mov    %rax,0x20(%rsp)                          #! EA = L0x7fffffffd938; PC = 0x5555555558d4 *)
mov L0x7fffffffd938 rax;
(* mov    %rdi,%rax                                #! PC = 0x5555555558d9 *)
mov rax rdi;
(* ror    $0x2,%r11                                #! PC = 0x5555555558dc *)
split r11_h r11_l r11 0x2; shl r11_s r11_l (64-0x2)@uint64; add r11 r11_s r11_h;
(* or     %rdi,%rdx                                #! PC = 0x5555555558e0 *)
or rdx@uint64 rdx rdi;
(* and    %rsi,%rax                                #! PC = 0x5555555558e3 *)
and rax@uint64 rax rsi;
(* xor    %rcx,%rdx                                #! PC = 0x5555555558e6 *)
xor rdx@uint64 rdx rcx;
(* xor    %r13,%r10                                #! PC = 0x5555555558e9 *)
xor r10@uint64 r10 r13;
(* xor    %r11,%rbp                                #! PC = 0x5555555558ec *)
xor rbp@uint64 rbp r11;
(* xor    %rax,%r8                                 #! PC = 0x5555555558ef *)
xor r8@uint64 r8 rax;
(* mov    %r11,%rax                                #! PC = 0x5555555558f2 *)
mov rax r11;
(* not    %rdx                                     #! PC = 0x5555555558f5 *)
not rdx@uint64 rdx;
(* not    %r10                                     #! PC = 0x5555555558f8 *)
not r10@uint64 r10;
(* or     %rsi,%rax                                #! PC = 0x5555555558fb *)
or rax@uint64 rax rsi;
(* addq   $0x10,-0x70(%rsp)                        #! EA = L0x7fffffffd8a8; PC = 0x5555555558fe *)
adds dc L0x7fffffffd8a8 L0x7fffffffd8a8 0x10@uint64;
(* mov    -0x70(%rsp),%r14                         #! EA = L0x7fffffffd8a8; Value = 0x00005555555560e0; PC = 0x555555555904 *)
mov r14 L0x7fffffffd8a8;
(* and    %r11,%rcx                                #! PC = 0x555555555909 *)
and rcx@uint64 rcx r11;
(* xor    %rdi,%rax                                #! PC = 0x55555555590c *)
xor rax@uint64 rax rdi;
(* mov    %rdx,-0x30(%rsp)                         #! EA = L0x7fffffffd8e8; PC = 0x55555555590f *)
mov L0x7fffffffd8e8 rdx;
(* xor    %rcx,%rsi                                #! PC = 0x555555555914 *)
xor rsi@uint64 rsi rcx;
(* mov    %rax,0x28(%rsp)                          #! EA = L0x7fffffffd940; PC = 0x555555555917 *)
mov L0x7fffffffd940 rax;
(* lea    0x7bd(%rip),%rax        # 0x5555555560e0 #! PC = 0x55555555591c *)
(* lea 0x7bd\(%rip\), rax *)
nop;
(* cmp    %rax,%r14                                #! PC = 0x555555555923 *)
(* cmp rax, r14 *)
nop;
(* #jne    0x5555555552f0 <KeccakF1600+320>        #! PC = 0x555555555926 *)
#jne    0x5555555552f0 <KeccakF1600+320>        #! 0x555555555926 = 0x555555555926;
(* mov    -0x48(%rsp),%rdi                         #! EA = L0x7fffffffd8d0; Value = 0x7b657ae6194753d6; PC = 0x55555555592c *)
mov rdi L0x7fffffffd8d0;
(* movq   -0x68(%rsp),%xmm0                        #! EA = L0x7fffffffd8b0; Value = 0x6e0ed7102b7132be; PC = 0x555555555931 *)
mov xmm0_0 L0x7fffffffd8b0; mov xmm0_1 0@uint64;
(* mov    %rbp,%r9                                 #! PC = 0x555555555937 *)
mov r9 rbp;
(* mov    0x60(%rsp),%rax                          #! EA = L0x7fffffffd978; Value = 0x0000555555558040; PC = 0x55555555593a *)
mov rax L0x7fffffffd978;
(* mov    -0x28(%rsp),%rdx                         #! EA = L0x7fffffffd8f0; Value = 0x8116ababe2f9e060; PC = 0x55555555593f *)
mov rdx L0x7fffffffd8f0;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %r9                                      #! PC = 0x555555555944 *)
(* not r9@uint64 r9; *)
(* movq   %rdi,%xmm2                               #! PC = 0x555555555947 *)
mov xmm2_0 rdi; mov xmm2_1 0@uint64;
(* mov    -0x8(%rsp),%rcx                          #! EA = L0x7fffffffd910; Value = 0x6b976b75e4b5c166; PC = 0x55555555594c *)
mov rcx L0x7fffffffd910;
(* mov    0x18(%rsp),%rbx                          #! EA = L0x7fffffffd930; Value = 0x6c444a1b5f3775a8; PC = 0x555555555951 *)
mov rbx L0x7fffffffd930;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdi                                     #! PC = 0x555555555956 *)
(* not rdi@uint64 rdi; *)
(* punpcklqdq %xmm2,%xmm0                          #! PC = 0x555555555959 *)
mov lqdq_l xmm0_0; mov lqdq_h xmm2_0;
mov xmm0_0 lqdq_l; mov xmm0_1 lqdq_h;
(* movups %xmm0,(%rax)                             #! EA = L0x555555558040; PC = 0x55555555595d *)
mov L0x555555558040 xmm0_0; mov L0x555555558048 xmm0_1;
(* movq   %rdx,%xmm0                               #! PC = 0x555555555960 *)
mov xmm0_0 rdx; mov xmm0_1 0@uint64;
(* movq   %rbx,%xmm1                               #! PC = 0x555555555965 *)
mov xmm1_0 rbx; mov xmm1_1 0@uint64;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdx                                     #! PC = 0x55555555596a *)
(* not rdx@uint64 rdx; *)
(* movhps -0x18(%rsp),%xmm0                        #! EA = L0x7fffffffd900; Value = 0x4c741e0393ff745f; PC = 0x55555555596d *)
mov xmm0_1 L0x7fffffffd900;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rbx                                     #! PC = 0x555555555972 *)
(* not rbx@uint64 rbx; *)
(* movups %xmm0,0x10(%rax)                         #! EA = L0x555555558050; PC = 0x555555555975 *)
mov L0x555555558050 xmm0_0; mov L0x555555558058 xmm0_1;
(* movq   -0x10(%rsp),%xmm0                        #! EA = L0x7fffffffd908; Value = 0x8262e8cd7eb10f03; PC = 0x555555555979 *)
mov xmm0_0 L0x7fffffffd908; mov xmm0_1 0@uint64;
(* movhps -0x60(%rsp),%xmm0                        #! EA = L0x7fffffffd8b8; Value = 0x13d4e470d058de50; PC = 0x55555555597f *)
mov xmm0_1 L0x7fffffffd8b8;
(* movups %xmm0,0x20(%rax)                         #! EA = L0x555555558060; PC = 0x555555555984 *)
mov L0x555555558060 xmm0_0; mov L0x555555558068 xmm0_1;
(* movq   -0x40(%rsp),%xmm0                        #! EA = L0x7fffffffd8d8; Value = 0x3656fe11a1ac5b0a; PC = 0x555555555988 *)
mov xmm0_0 L0x7fffffffd8d8; mov xmm0_1 0@uint64;
(* movhps -0x20(%rsp),%xmm0                        #! EA = L0x7fffffffd8f8; Value = 0x664d8fef2218bf0b; PC = 0x55555555598e *)
mov xmm0_1 L0x7fffffffd8f8;
(* movups %xmm0,0x30(%rax)                         #! EA = L0x555555558070; PC = 0x555555555993 *)
mov L0x555555558070 xmm0_0; mov L0x555555558078 xmm0_1;
(* movq   %rcx,%xmm0                               #! PC = 0x555555555997 *)
mov xmm0_0 rcx; mov xmm0_1 0@uint64;
(* movhps (%rsp),%xmm0                             #! EA = L0x7fffffffd918; Value = 0x6f235d837c50340a; PC = 0x55555555599c *)
mov xmm0_1 L0x7fffffffd918;
(* movups %xmm0,0x40(%rax)                         #! EA = L0x555555558080; PC = 0x5555555559a0 *)
mov L0x555555558080 xmm0_0; mov L0x555555558088 xmm0_1;
(* movq   -0x58(%rsp),%xmm0                        #! EA = L0x7fffffffd8c0; Value = 0xe2ff026e0a39ef0d; PC = 0x5555555559a4 *)
mov xmm0_0 L0x7fffffffd8c0; mov xmm0_1 0@uint64;
(* movhps -0x38(%rsp),%xmm0                        #! EA = L0x7fffffffd8e0; Value = 0x0aefa6b680719c1f; PC = 0x5555555559aa *)
mov xmm0_1 L0x7fffffffd8e0;
(* movups %xmm0,0x50(%rax)                         #! EA = L0x555555558090; PC = 0x5555555559af *)
mov L0x555555558090 xmm0_0; mov L0x555555558098 xmm0_1;
(* movq   %r15,%xmm0                               #! PC = 0x5555555559b3 *)
mov xmm0_0 r15; mov xmm0_1 0@uint64;
(* movhps 0x8(%rsp),%xmm0                          #! EA = L0x7fffffffd920; Value = 0xf948f4cd0706ba11; PC = 0x5555555559b8 *)
mov xmm0_1 L0x7fffffffd920;
(* movups %xmm0,0x60(%rax)                         #! EA = L0x5555555580a0; PC = 0x5555555559bd *)
mov L0x5555555580a0 xmm0_0; mov L0x5555555580a8 xmm0_1;
(* movq   0x10(%rsp),%xmm0                         #! EA = L0x7fffffffd928; Value = 0x11b6c5da6cad7dad; PC = 0x5555555559c1 *)
mov xmm0_0 L0x7fffffffd928; mov xmm0_1 0@uint64;
(* movhps -0x50(%rsp),%xmm0                        #! EA = L0x7fffffffd8c8; Value = 0x10dcdaac65f98d85; PC = 0x5555555559c7 *)
mov xmm0_1 L0x7fffffffd8c8;
(* movups %xmm0,0x70(%rax)                         #! EA = L0x5555555580b0; PC = 0x5555555559cc *)
mov L0x5555555580b0 xmm0_0; mov L0x5555555580b8 xmm0_1;
(* movq   %r12,%xmm0                               #! PC = 0x5555555559d0 *)
mov xmm0_0 r12; mov xmm0_1 0@uint64;
(* punpcklqdq %xmm1,%xmm0                          #! PC = 0x5555555559d5 *)
mov lqdq_l xmm0_0; mov lqdq_h xmm1_0;
mov xmm0_0 lqdq_l; mov xmm0_1 lqdq_h;
(* movups %xmm0,0x80(%rax)                         #! EA = L0x5555555580c0; PC = 0x5555555559d9 *)
mov L0x5555555580c0 xmm0_0; mov L0x5555555580c8 xmm0_1;
(* movq   %r10,%xmm0                               #! PC = 0x5555555559e0 *)
mov xmm0_0 r10; mov xmm0_1 0@uint64;
(* movhps 0x20(%rsp),%xmm0                         #! EA = L0x7fffffffd938; Value = 0x830205c50ae5ba1f; PC = 0x5555555559e5 *)
mov xmm0_1 L0x7fffffffd938;
(* movups %xmm0,0x90(%rax)                         #! EA = L0x5555555580d0; PC = 0x5555555559ea *)
mov L0x5555555580d0 xmm0_0; mov L0x5555555580d8 xmm0_1;
(* movq   %rbp,%xmm0                               #! PC = 0x5555555559f1 *)
mov xmm0_0 rbp; mov xmm0_1 0@uint64;
(* movhps -0x30(%rsp),%xmm0                        #! EA = L0x7fffffffd8e8; Value = 0x319cf85ef3f969c1; PC = 0x5555555559f6 *)
mov xmm0_1 L0x7fffffffd8e8;
(* movups %xmm0,0xa0(%rax)                         #! EA = L0x5555555580e0; PC = 0x5555555559fb *)
mov L0x5555555580e0 xmm0_0; mov L0x5555555580e8 xmm0_1;
(* movq   %r8,%xmm0                                #! PC = 0x555555555a02 *)
mov xmm0_0 r8; mov xmm0_1 0@uint64;
(* movhps 0x28(%rsp),%xmm0                         #! EA = L0x7fffffffd940; Value = 0x685f979f602eddac; PC = 0x555555555a07 *)
mov xmm0_1 L0x7fffffffd940;
(* movups %xmm0,0xb0(%rax)                         #! EA = L0x5555555580f0; PC = 0x555555555a0c *)
mov L0x5555555580f0 xmm0_0; mov L0x5555555580f8 xmm0_1;
(* mov    %rsi,0xc0(%rax)                          #! EA = L0x555555558100; PC = 0x555555555a13 *)
mov L0x555555558100 rsi;
(* mov    %rdi,0x8(%rax)                           #! EA = L0x555555558048; PC = 0x555555555a1a *)
mov L0x555555558048 rdi;
(* mov    %r15,%rdi                                #! PC = 0x555555555a1e *)
mov rdi r15;
(* mov    %rdx,0x10(%rax)                          #! EA = L0x555555558050; PC = 0x555555555a21 *)
mov L0x555555558050 rdx;
(* mov    %rcx,%rdx                                #! PC = 0x555555555a25 *)
mov rdx rcx;
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdi                                     #! PC = 0x555555555a28 *)
(* not rdi@uint64 rdi; *)
(* NOTE: disable KECCAK_COMPLEMENTING_TRANSFORM *)
(* not    %rdx                                     #! PC = 0x555555555a2b *)
(* not rdx@uint64 rdx; *)
(* mov    %rdi,0x60(%rax)                          #! EA = L0x5555555580a0; PC = 0x555555555a2e *)
mov L0x5555555580a0 rdi;
(* mov    %rdx,0x40(%rax)                          #! EA = L0x555555558080; PC = 0x555555555a32 *)
mov L0x555555558080 rdx;
(* mov    %rbx,0x88(%rax)                          #! EA = L0x5555555580c8; PC = 0x555555555a36 *)
mov L0x5555555580c8 rbx;
(* mov    %r9,0xa0(%rax)                           #! EA = L0x5555555580e0; PC = 0x555555555a3d *)
mov L0x5555555580e0 r9;
(* add    $0x70,%rsp                               #! PC = 0x555555555a44 *)
adds dc rsp rsp 0x70@uint64;
(* pop    %rbx                                     #! EA = L0x7fffffffd988; Value = 0x0000555555558040; PC = 0x555555555a48 *)
(* pop rbx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffd990; Value = 0x00000000000000a8; PC = 0x555555555a49 *)
(* pop rbp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffd998; Value = 0x00000000000000a0; PC = 0x555555555a4a *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffd9a0; Value = 0x0000000000000015; PC = 0x555555555a4c *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffd9a8; Value = 0x00007fffffffdac8; PC = 0x555555555a4e *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffd9b0; Value = 0x00005555555580e0; PC = 0x555555555a50 *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffd9b8 *)
#! 0x7fffffffd9b8 = 0x7fffffffd9b8;
(* #retq                                           #! PC = 0x555555555a52 *)
#retq                                           #! 0x555555555a52 = 0x555555555a52;

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

