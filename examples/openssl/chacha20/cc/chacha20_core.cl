proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af) =
{
  true
  &&
  true
}

mov L0x7fffffffdd70 A0; mov L0x7fffffffdd74 A1;
mov L0x7fffffffdd78 A2; mov L0x7fffffffdd7c A3;
mov L0x7fffffffdd80 A4; mov L0x7fffffffdd84 A5;
mov L0x7fffffffdd88 A6; mov L0x7fffffffdd8c A7;
mov L0x7fffffffdd90 A8; mov L0x7fffffffdd94 A9;
mov L0x7fffffffdd98 Aa; mov L0x7fffffffdd9c Ab;
mov L0x7fffffffdda0 Ac; mov L0x7fffffffdda4 Ad;
mov L0x7fffffffdda8 Ae; mov L0x7fffffffddac Af;

(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffdd70; Value = 0x3320646e61707865; PC = 0x555555555280 *)
mov eax L0x7fffffffdd70; mov eaxH L0x7fffffffdd74;
(* mov    %eax,%ecx                                #! PC = 0x555555555285 *)
mov ecx eax;
(* mov    %rax,0xc0(%rsp)                          #! EA = L0x7fffffffddf0; PC = 0x555555555287 *)
mov L0x7fffffffddf0 eax; mov L0x7fffffffddf4 eaxH;
(* mov    0x48(%rsp),%rax                          #! EA = L0x7fffffffdd78; Value = 0x6b20657479622d32; PC = 0x55555555528f *)
mov eax L0x7fffffffdd78; mov eaxH L0x7fffffffdd7c;
(* mov    %rax,0xc8(%rsp)                          #! EA = L0x7fffffffddf8; PC = 0x555555555294 *)
mov L0x7fffffffddf8 eax; mov L0x7fffffffddfc eaxH;
(* mov    0x50(%rsp),%rax                          #! EA = L0x7fffffffdd80; Value = 0x0000000100000000; PC = 0x55555555529c *)
mov eax L0x7fffffffdd80; mov eaxH L0x7fffffffdd84;
(* mov    %eax,%edi                                #! PC = 0x5555555552a1 *)
mov edi eax;
(* mov    %rax,0xd0(%rsp)                          #! EA = L0x7fffffffde00; PC = 0x5555555552a3 *)
mov L0x7fffffffde00 eax; mov L0x7fffffffde04 eaxH;
(* mov    0x58(%rsp),%rax                          #! EA = L0x7fffffffdd88; Value = 0x0000000300000002; PC = 0x5555555552ab *)
mov eax L0x7fffffffdd88; mov eaxH L0x7fffffffdd8c;
(* mov    %rax,0xd8(%rsp)                          #! EA = L0x7fffffffde08; PC = 0x5555555552b0 *)
mov L0x7fffffffde08 eax; mov L0x7fffffffde0c eaxH;
(* mov    0x60(%rsp),%rax                          #! EA = L0x7fffffffdd90; Value = 0x0000000500000004; PC = 0x5555555552b8 *)
mov eax L0x7fffffffdd90; mov eaxH L0x7fffffffdd94;
(* mov    %eax,%r10d                               #! PC = 0x5555555552bd *)
mov r10d eax;
(* mov    %rax,0xe0(%rsp)                          #! EA = L0x7fffffffde10; PC = 0x5555555552c0 *)
mov L0x7fffffffde10 eax; mov L0x7fffffffde14 eaxH;
(* mov    0x68(%rsp),%rax                          #! EA = L0x7fffffffdd98; Value = 0x0000000700000006; PC = 0x5555555552c8 *)
mov eax L0x7fffffffdd98; mov eaxH L0x7fffffffdd9c;
(* mov    %rax,0xe8(%rsp)                          #! EA = L0x7fffffffde18; PC = 0x5555555552cd *)
mov L0x7fffffffde18 eax; mov L0x7fffffffde1c eaxH;
(* mov    0x70(%rsp),%rdx                          #! EA = L0x7fffffffdda0; Value = 0x0000001000000000; PC = 0x5555555552d5 *)
mov edx L0x7fffffffdda0; mov edxH L0x7fffffffdda4;
(* mov    %edx,%eax                                #! PC = 0x5555555552da *)
mov eax edx;
(* mov    %rdx,0xf0(%rsp)                          #! EA = L0x7fffffffde20; PC = 0x5555555552dc *)
mov L0x7fffffffde20 edx; mov L0x7fffffffde24 edxH;
(* mov    0x78(%rsp),%rdx                          #! EA = L0x7fffffffdda8; Value = 0x0000003000000020; PC = 0x5555555552e4 *)
mov edx L0x7fffffffdda8; mov edxH L0x7fffffffddac;
(* mov    %rdx,0xf8(%rsp)                          #! EA = L0x7fffffffde28; PC = 0x5555555552e9 *)
mov L0x7fffffffde28 edx; mov L0x7fffffffde2c edxH;
(* mov    %ecx,%r15d                               #! PC = 0x5555555552f1 *)
mov r15d ecx;
(* mov    0xc4(%rsp),%r12d                         #! EA = L0x7fffffffddf4; Value = 0x79622d323320646e; PC = 0x5555555552f4 *)
mov r12d L0x7fffffffddf4;
(* mov    0xd4(%rsp),%r8d                          #! EA = L0x7fffffffde04; Value = 0x0000000200000001; PC = 0x5555555552fc *)
mov r8d L0x7fffffffde04;
(* mov    0xf4(%rsp),%ecx                          #! EA = L0x7fffffffde24; Value = 0x0000002000000010; PC = 0x555555555304 *)
mov ecx L0x7fffffffde24;
(* mov    0xe4(%rsp),%r11d                         #! EA = L0x7fffffffde14; Value = 0x0000000600000005; PC = 0x55555555530b *)
mov r11d L0x7fffffffde14;
(* mov    0xc8(%rsp),%ebp                          #! EA = L0x7fffffffddf8; Value = 0x6b20657479622d32; PC = 0x555555555313 *)
mov ebp L0x7fffffffddf8;
(* mov    0xd8(%rsp),%ebx                          #! EA = L0x7fffffffde08; Value = 0x0000000300000002; PC = 0x55555555531a *)
mov ebx L0x7fffffffde08;
(* mov    %ebx,0xc(%rsp)                           #! EA = L0x7fffffffdd3c; PC = 0x555555555321 *)
mov L0x7fffffffdd3c ebx;
(* mov    0xf8(%rsp),%edx                          #! EA = L0x7fffffffde28; Value = 0x0000003000000020; PC = 0x555555555325 *)
mov edx L0x7fffffffde28;
(* mov    0xe8(%rsp),%r14d                         #! EA = L0x7fffffffde18; Value = 0x0000000700000006; PC = 0x55555555532c *)
mov r14d L0x7fffffffde18;
(* mov    0xcc(%rsp),%ebx                          #! EA = L0x7fffffffddfc; Value = 0x000000006b206574; PC = 0x555555555334 *)
mov ebx L0x7fffffffddfc;
(* mov    0xdc(%rsp),%esi                          #! EA = L0x7fffffffde0c; Value = 0x0000000400000003; PC = 0x55555555533b *)
mov esi L0x7fffffffde0c;
(* mov    0xfc(%rsp),%r9d                          #! EA = L0x7fffffffde2c; Value = 0x0000000000000030; PC = 0x555555555342 *)
mov r9d L0x7fffffffde2c;
(* mov    0xec(%rsp),%r13d                         #! EA = L0x7fffffffde1c; Value = 0x0000000000000007; PC = 0x55555555534a *)
mov r13d L0x7fffffffde1c;
(* movl   $0xa,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x555555555352 *)
(* movl 0xa, L0x7fffffffdd4c *)
nop;
(* mov    %r9d,0x18(%rsp)                          #! EA = L0x7fffffffdd48; PC = 0x55555555535a *)
mov L0x7fffffffdd48 r9d;
(* mov    0xc(%rsp),%r9d                           #! EA = L0x7fffffffdd3c; Value = 0x0000000000000002; PC = 0x55555555535f *)
mov r9d L0x7fffffffdd3c;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x0000000a00000030; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0xaa5d62865b43fd43; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0x9218c967aa5d6286; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0xeb4d13549218c967; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0x9218c967aa5d6286; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x00000009eb4d1354; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0xe8ec28633c354ea0; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0xb0f53c13e8ec2863; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x56e3c8ecb0f53c13; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0xb0f53c13e8ec2863; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x0000000856e3c8ec; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0x9396b11462cfc7df; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0x22971a739396b114; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x596b1b4722971a73; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0x22971a739396b114; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x00000007596b1b47; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0x0520dcf10d3c422b; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0xfa35cda60520dcf1; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x15968e44fa35cda6; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0xfa35cda60520dcf1; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x0000000615968e44; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0x2b402fa50f6b4e7a; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0x26430a212b402fa5; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x53da4a8526430a21; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0x26430a212b402fa5; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x0000000553da4a85; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0x4c6b5c157ff91037; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0xfc35b4e04c6b5c15; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x1ed09daafc35b4e0; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0xfc35b4e04c6b5c15; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x000000041ed09daa; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0xd0b398110134714c; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0xe86b90a5d0b39811; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x6a462592e86b90a5; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0xe86b90a5d0b39811; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x000000036a462592; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0xab2a3fc00bb148bb; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0x6a211f62ab2a3fc0; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0xd3f66ff86a211f62; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0x6a211f62ab2a3fc0; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x00000002d3f66ff8; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0xe914540aea82a2d9; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0x2beb2a8ae914540a; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x46c3067d2beb2a8a; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0x2beb2a8ae914540a; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* add    %edi,%r15d                               #! PC = 0x555555555364 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555367 *)
xor eax@uint32 eax r15d;
(* rol    $0x10,%eax                               #! PC = 0x55555555536a *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r10d                               #! PC = 0x55555555536d *)
adds dc r10d r10d eax;
(* xor    %r10d,%edi                               #! PC = 0x555555555370 *)
xor edi@uint32 edi r10d;
(* rol    $0xc,%edi                                #! PC = 0x555555555373 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%r15d                               #! PC = 0x555555555376 *)
adds dc r15d r15d edi;
(* xor    %r15d,%eax                               #! PC = 0x555555555379 *)
xor eax@uint32 eax r15d;
(* rol    $0x8,%eax                                #! PC = 0x55555555537c *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r10d                               #! PC = 0x55555555537f *)
adds dc r10d r10d eax;
(* mov    %r10d,0xc(%rsp)                          #! EA = L0x7fffffffdd3c; PC = 0x555555555382 *)
mov L0x7fffffffdd3c r10d;
(* xor    %r10d,%edi                               #! PC = 0x555555555387 *)
xor edi@uint32 edi r10d;
(* rol    $0x7,%edi                                #! PC = 0x55555555538a *)
rol edi@uint32 edi 0x7;
(* mov    %edi,0x10(%rsp)                          #! EA = L0x7fffffffdd40; PC = 0x55555555538d *)
mov L0x7fffffffdd40 edi;
(* add    %r8d,%r12d                               #! PC = 0x555555555391 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x555555555394 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x10,%ecx                               #! PC = 0x555555555397 *)
rol ecx@uint32 ecx 0x10;
(* add    %ecx,%r11d                               #! PC = 0x55555555539a *)
adds dc r11d r11d ecx;
(* xor    %r11d,%r8d                               #! PC = 0x55555555539d *)
xor r8d@uint32 r8d r11d;
(* rol    $0xc,%r8d                                #! PC = 0x5555555553a0 *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r12d                               #! PC = 0x5555555553a4 *)
adds dc r12d r12d r8d;
(* xor    %r12d,%ecx                               #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx r12d;
(* rol    $0x8,%ecx                                #! PC = 0x5555555553aa *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r11d                               #! PC = 0x5555555553ad *)
adds dc r11d r11d ecx;
(* mov    %r11d,0x14(%rsp)                         #! EA = L0x7fffffffdd44; PC = 0x5555555553b0 *)
mov L0x7fffffffdd44 r11d;
(* xor    %r11d,%r8d                               #! PC = 0x5555555553b5 *)
xor r8d@uint32 r8d r11d;
(* rol    $0x7,%r8d                                #! PC = 0x5555555553b8 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%ebp                                #! PC = 0x5555555553bc *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553bf *)
xor edx@uint32 edx ebp;
(* rol    $0x10,%edx                               #! PC = 0x5555555553c1 *)
rol edx@uint32 edx 0x10;
(* lea    (%rdx,%r14,1),%r10d                      #! PC = 0x5555555553c4 *)
adds dc r10d r14d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553c8 *)
xor r9d@uint32 r9d r10d;
(* rol    $0xc,%r9d                                #! PC = 0x5555555553cb *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%ebp                                #! PC = 0x5555555553cf *)
adds dc ebp ebp r9d;
(* xor    %ebp,%edx                                #! PC = 0x5555555553d2 *)
xor edx@uint32 edx ebp;
(* rol    $0x8,%edx                                #! PC = 0x5555555553d4 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r10d                               #! PC = 0x5555555553d7 *)
adds dc r10d r10d edx;
(* xor    %r10d,%r9d                               #! PC = 0x5555555553da *)
xor r9d@uint32 r9d r10d;
(* rol    $0x7,%r9d                                #! PC = 0x5555555553dd *)
rol r9d@uint32 r9d 0x7;
(* lea    (%rsi,%rbx,1),%edi                       #! PC = 0x5555555553e1 *)
adds dc edi ebx esi;
(* mov    0x18(%rsp),%r14d                         #! EA = L0x7fffffffdd48; Value = 0x0000000146c3067d; PC = 0x5555555553e4 *)
mov r14d L0x7fffffffdd48;
(* xor    %edi,%r14d                               #! PC = 0x5555555553e9 *)
xor r14d@uint32 r14d edi;
(* mov    %r14d,%r11d                              #! PC = 0x5555555553ec *)
mov r11d r14d;
(* rol    $0x10,%r11d                              #! PC = 0x5555555553ef *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r13d                              #! PC = 0x5555555553f3 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x5555555553f6 *)
xor esi@uint32 esi r13d;
(* rol    $0xc,%esi                                #! PC = 0x5555555553f9 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%edi                                #! PC = 0x5555555553fc *)
adds dc edi edi esi;
(* xor    %edi,%r11d                               #! PC = 0x5555555553fe *)
xor r11d@uint32 r11d edi;
(* rol    $0x8,%r11d                               #! PC = 0x555555555401 *)
rol r11d@uint32 r11d 0x8;
(* add    %r11d,%r13d                              #! PC = 0x555555555405 *)
adds dc r13d r13d r11d;
(* xor    %r13d,%esi                               #! PC = 0x555555555408 *)
xor esi@uint32 esi r13d;
(* rol    $0x7,%esi                                #! PC = 0x55555555540b *)
rol esi@uint32 esi 0x7;
(* add    %r8d,%r15d                               #! PC = 0x55555555540e *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555411 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x10,%r11d                              #! PC = 0x555555555414 *)
rol r11d@uint32 r11d 0x10;
(* add    %r11d,%r10d                              #! PC = 0x555555555418 *)
adds dc r10d r10d r11d;
(* xor    %r10d,%r8d                               #! PC = 0x55555555541b *)
xor r8d@uint32 r8d r10d;
(* rol    $0xc,%r8d                                #! PC = 0x55555555541e *)
rol r8d@uint32 r8d 0xc;
(* add    %r8d,%r15d                               #! PC = 0x555555555422 *)
adds dc r15d r15d r8d;
(* xor    %r15d,%r11d                              #! PC = 0x555555555425 *)
xor r11d@uint32 r11d r15d;
(* rol    $0x8,%r11d                               #! PC = 0x555555555428 *)
rol r11d@uint32 r11d 0x8;
(* mov    %r11d,0x18(%rsp)                         #! EA = L0x7fffffffdd48; PC = 0x55555555542c *)
mov L0x7fffffffdd48 r11d;
(* lea    (%r10,%r11,1),%r14d                      #! PC = 0x555555555431 *)
adds dc r14d r11d r10d;
(* xor    %r14d,%r8d                               #! PC = 0x555555555435 *)
xor r8d@uint32 r8d r14d;
(* rol    $0x7,%r8d                                #! PC = 0x555555555438 *)
rol r8d@uint32 r8d 0x7;
(* add    %r9d,%r12d                               #! PC = 0x55555555543c *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x55555555543f *)
xor eax@uint32 eax r12d;
(* rol    $0x10,%eax                               #! PC = 0x555555555442 *)
rol eax@uint32 eax 0x10;
(* add    %eax,%r13d                               #! PC = 0x555555555445 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x555555555448 *)
xor r9d@uint32 r9d r13d;
(* rol    $0xc,%r9d                                #! PC = 0x55555555544b *)
rol r9d@uint32 r9d 0xc;
(* add    %r9d,%r12d                               #! PC = 0x55555555544f *)
adds dc r12d r12d r9d;
(* xor    %r12d,%eax                               #! PC = 0x555555555452 *)
xor eax@uint32 eax r12d;
(* rol    $0x8,%eax                                #! PC = 0x555555555455 *)
rol eax@uint32 eax 0x8;
(* add    %eax,%r13d                               #! PC = 0x555555555458 *)
adds dc r13d r13d eax;
(* xor    %r13d,%r9d                               #! PC = 0x55555555545b *)
xor r9d@uint32 r9d r13d;
(* rol    $0x7,%r9d                                #! PC = 0x55555555545e *)
rol r9d@uint32 r9d 0x7;
(* add    %esi,%ebp                                #! PC = 0x555555555462 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555464 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x10,%ecx                               #! PC = 0x555555555466 *)
rol ecx@uint32 ecx 0x10;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdd3c; Value = 0x241e06592188d35c; PC = 0x555555555469 *)
mov r10d L0x7fffffffdd3c;
(* add    %ecx,%r10d                               #! PC = 0x55555555546e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555471 *)
xor esi@uint32 esi r10d;
(* rol    $0xc,%esi                                #! PC = 0x555555555474 *)
rol esi@uint32 esi 0xc;
(* add    %esi,%ebp                                #! PC = 0x555555555477 *)
adds dc ebp ebp esi;
(* xor    %ebp,%ecx                                #! PC = 0x555555555479 *)
xor ecx@uint32 ecx ebp;
(* rol    $0x8,%ecx                                #! PC = 0x55555555547b *)
rol ecx@uint32 ecx 0x8;
(* add    %ecx,%r10d                               #! PC = 0x55555555547e *)
adds dc r10d r10d ecx;
(* xor    %r10d,%esi                               #! PC = 0x555555555481 *)
xor esi@uint32 esi r10d;
(* rol    $0x7,%esi                                #! PC = 0x555555555484 *)
rol esi@uint32 esi 0x7;
(* mov    0x10(%rsp),%ebx                          #! EA = L0x7fffffffdd40; Value = 0x6f5e8b7c241e0659; PC = 0x555555555487 *)
mov ebx L0x7fffffffdd40;
(* add    %edi,%ebx                                #! PC = 0x55555555548b *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x55555555548d *)
xor edx@uint32 edx ebx;
(* rol    $0x10,%edx                               #! PC = 0x55555555548f *)
rol edx@uint32 edx 0x10;
(* mov    0x14(%rsp),%r11d                         #! EA = L0x7fffffffdd44; Value = 0x07895bad6f5e8b7c; PC = 0x555555555492 *)
mov r11d L0x7fffffffdd44;
(* add    %edx,%r11d                               #! PC = 0x555555555497 *)
adds dc r11d r11d edx;
(* mov    0x10(%rsp),%edi                          #! EA = L0x7fffffffdd40; Value = 0x6f5e8b7c241e0659; PC = 0x55555555549a *)
mov edi L0x7fffffffdd40;
(* xor    %r11d,%edi                               #! PC = 0x55555555549e *)
xor edi@uint32 edi r11d;
(* rol    $0xc,%edi                                #! PC = 0x5555555554a1 *)
rol edi@uint32 edi 0xc;
(* add    %edi,%ebx                                #! PC = 0x5555555554a4 *)
adds dc ebx ebx edi;
(* xor    %ebx,%edx                                #! PC = 0x5555555554a6 *)
xor edx@uint32 edx ebx;
(* rol    $0x8,%edx                                #! PC = 0x5555555554a8 *)
rol edx@uint32 edx 0x8;
(* add    %edx,%r11d                               #! PC = 0x5555555554ab *)
adds dc r11d r11d edx;
(* xor    %r11d,%edi                               #! PC = 0x5555555554ae *)
xor edi@uint32 edi r11d;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b1 *)
rol edi@uint32 edi 0x7;
(* subl   $0x1,0x1c(%rsp)                          #! EA = L0x7fffffffdd4c; PC = 0x5555555554b4 *)
(* subl 0x1, L0x7fffffffdd4c *)
nop;
(* #jne    0x555555555364 <ChaCha20_ctr32+433>     #! PC = 0x5555555554b9 *)
#jne    0x555555555364 <ChaCha20_ctr32+433>     #! 0x5555555554b9 = 0x5555555554b9;
(* mov    %r9d,0xc(%rsp)                           #! EA = L0x7fffffffdd3c; PC = 0x5555555554bf *)
mov L0x7fffffffdd3c r9d;
(* mov    0x18(%rsp),%r9d                          #! EA = L0x7fffffffdd48; Value = 0x0000000007895bad; PC = 0x5555555554c4 *)
mov r9d L0x7fffffffdd48;
(* mov    %r15d,0xc0(%rsp)                         #! EA = L0x7fffffffddf0; PC = 0x5555555554c9 *)
mov L0x7fffffffddf0 r15d;
(* mov    %r9d,0xfc(%rsp)                          #! EA = L0x7fffffffde2c; PC = 0x5555555554d1 *)
mov L0x7fffffffde2c r9d;
(* mov    %r14d,0xe8(%rsp)                         #! EA = L0x7fffffffde18; PC = 0x5555555554d9 *)
mov L0x7fffffffde18 r14d;
(* mov    %r8d,0xd4(%rsp)                          #! EA = L0x7fffffffde04; PC = 0x5555555554e1 *)
mov L0x7fffffffde04 r8d;
(* mov    %r12d,0xc4(%rsp)                         #! EA = L0x7fffffffddf4; PC = 0x5555555554e9 *)
mov L0x7fffffffddf4 r12d;
(* mov    %eax,0xf0(%rsp)                          #! EA = L0x7fffffffde20; PC = 0x5555555554f1 *)
mov L0x7fffffffde20 eax;
(* mov    %r13d,0xec(%rsp)                         #! EA = L0x7fffffffde1c; PC = 0x5555555554f8 *)
mov L0x7fffffffde1c r13d;
(* mov    0xc(%rsp),%eax                           #! EA = L0x7fffffffdd3c; Value = 0x241e06597b7ba629; PC = 0x555555555500 *)
mov eax L0x7fffffffdd3c;
(* mov    %eax,0xd8(%rsp)                          #! EA = L0x7fffffffde08; PC = 0x555555555504 *)
mov L0x7fffffffde08 eax;
(* mov    %ebp,0xc8(%rsp)                          #! EA = L0x7fffffffddf8; PC = 0x55555555550b *)
mov L0x7fffffffddf8 ebp;
(* mov    %ecx,0xf4(%rsp)                          #! EA = L0x7fffffffde24; PC = 0x555555555512 *)
mov L0x7fffffffde24 ecx;
(* mov    %r10d,0xe0(%rsp)                         #! EA = L0x7fffffffde10; PC = 0x555555555519 *)
mov L0x7fffffffde10 r10d;
(* mov    %esi,0xdc(%rsp)                          #! EA = L0x7fffffffde0c; PC = 0x555555555521 *)
mov L0x7fffffffde0c esi;
(* mov    %ebx,0xcc(%rsp)                          #! EA = L0x7fffffffddfc; PC = 0x555555555528 *)
mov L0x7fffffffddfc ebx;
(* mov    %edx,0xf8(%rsp)                          #! EA = L0x7fffffffde28; PC = 0x55555555552f *)
mov L0x7fffffffde28 edx;
(* mov    %r11d,0xe4(%rsp)                         #! EA = L0x7fffffffde14; PC = 0x555555555536 *)
mov L0x7fffffffde14 r11d;
(* mov    %edi,0xd0(%rsp)                          #! EA = L0x7fffffffde00; PC = 0x55555555553e *)
mov L0x7fffffffde00 edi;
(* mov    $0x0,%eax                                #! PC = 0x555555555545 *)
mov eax 0x0@uint32;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd70; Value = 0x3320646e61707865; PC = 0x55555555554a *)
mov edx L0x7fffffffdd70;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffddf0; Value = 0xa0deced6f98ea1a4; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffddf0;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddb0; PC = 0x555555555555 *)
mov L0x7fffffffddb0 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd74; Value = 0x79622d323320646e; PC = 0x55555555554a *)
mov edx L0x7fffffffdd74;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffddf4; Value = 0x2e85db4ea0deced6; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffddf4;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddb4; PC = 0x555555555555 *)
mov L0x7fffffffddb4 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd78; Value = 0x6b20657479622d32; PC = 0x55555555554a *)
mov edx L0x7fffffffdd78;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffddf8; Value = 0xeb32e2202e85db4e; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffddf8;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddb8; PC = 0x555555555555 *)
mov L0x7fffffffddb8 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd7c; Value = 0x000000006b206574; PC = 0x55555555554a *)
mov edx L0x7fffffffdd7c;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffddfc; Value = 0xec7f81c1eb32e220; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffddfc;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddbc; PC = 0x555555555555 *)
mov L0x7fffffffddbc edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd80; Value = 0x0000000100000000; PC = 0x55555555554a *)
mov edx L0x7fffffffdd80;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde00; Value = 0xb329158dec7f81c1; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde00;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddc0; PC = 0x555555555555 *)
mov L0x7fffffffddc0 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd84; Value = 0x0000000200000001; PC = 0x55555555554a *)
mov edx L0x7fffffffdd84;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde04; Value = 0x7b7ba629b329158d; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde04;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddc4; PC = 0x555555555555 *)
mov L0x7fffffffddc4 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd88; Value = 0x0000000300000002; PC = 0x55555555554a *)
mov edx L0x7fffffffdd88;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde08; Value = 0xae989b8c7b7ba629; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde08;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddc8; PC = 0x555555555555 *)
mov L0x7fffffffddc8 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd8c; Value = 0x0000000400000003; PC = 0x55555555554a *)
mov edx L0x7fffffffdd8c;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde0c; Value = 0xb1352a2cae989b8c; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde0c;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddcc; PC = 0x555555555555 *)
mov L0x7fffffffddcc edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd90; Value = 0x0000000500000004; PC = 0x55555555554a *)
mov edx L0x7fffffffdd90;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde10; Value = 0x11bdce36b1352a2c; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde10;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddd0; PC = 0x555555555555 *)
mov L0x7fffffffddd0 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd94; Value = 0x0000000600000005; PC = 0x55555555554a *)
mov edx L0x7fffffffdd94;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde14; Value = 0xade62fe811bdce36; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde14;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddd4; PC = 0x555555555555 *)
mov L0x7fffffffddd4 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd98; Value = 0x0000000700000006; PC = 0x55555555554a *)
mov edx L0x7fffffffdd98;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde18; Value = 0x1396b51cade62fe8; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde18;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddd8; PC = 0x555555555555 *)
mov L0x7fffffffddd8 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdd9c; Value = 0x0000000000000007; PC = 0x55555555554a *)
mov edx L0x7fffffffdd9c;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde1c; Value = 0x90982ec71396b51c; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde1c;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffdddc; PC = 0x555555555555 *)
mov L0x7fffffffdddc edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdda0; Value = 0x0000001000000000; PC = 0x55555555554a *)
mov edx L0x7fffffffdda0;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde20; Value = 0x042a65a590982ec7; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde20;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffdde0; PC = 0x555555555555 *)
mov L0x7fffffffdde0 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdda4; Value = 0x0000002000000010; PC = 0x55555555554a *)
mov edx L0x7fffffffdda4;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde24; Value = 0xda76ae2c042a65a5; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde24;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffdde4; PC = 0x555555555555 *)
mov L0x7fffffffdde4 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffdda8; Value = 0x0000003000000020; PC = 0x55555555554a *)
mov edx L0x7fffffffdda8;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde28; Value = 0x07895badda76ae2c; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde28;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffdde8; PC = 0x555555555555 *)
mov L0x7fffffffdde8 edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* mov    0x40(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffddac; Value = 0x5aff1a0900000030; PC = 0x55555555554a *)
mov edx L0x7fffffffddac;
(* add    0xc0(%rsp,%rax,1),%edx                   #! EA = L0x7fffffffde2c; Value = 0x0000000007895bad; PC = 0x55555555554e *)
adds dc edx edx L0x7fffffffde2c;
(* mov    %edx,0x80(%rsp,%rax,1)                   #! EA = L0x7fffffffddec; PC = 0x555555555555 *)
mov L0x7fffffffddec edx;
(* add    $0x4,%rax                                #! PC = 0x55555555555c *)
(* add 0x4, %rax *)
nop;
(* cmp    $0x40,%rax                               #! PC = 0x555555555560 *)
(* cmp 0x40, %rax *)
nop;
(* #jne    0x55555555554a <ChaCha20_ctr32+919>     #! PC = 0x555555555564 *)
#jne    0x55555555554a <ChaCha20_ctr32+919>     #! 0x555555555564 = 0x555555555564;
(* #mov    0x20(%rsp),%rsi                          #! EA = L0x7fffffffdd50; Value = 0x0000000000000014; PC = 0x555555555566 *)
#mov    %%L0x7fffffffdd50,%rsi                          #! L0x7fffffffdd50 = L0x7fffffffdd50; 0x0000000000000014 = 0x0000000000000014; 0x555555555566 = 0x555555555566;
(* #test   %rsi,%rsi                                #! PC = 0x55555555556b *)
#test   %rsi,%rsi                                #! 0x55555555556b = 0x55555555556b;
(* #je     0x55555555559b <ChaCha20_ctr32+1000>    #! PC = 0x55555555556e *)
#je     0x55555555559b <ChaCha20_ctr32+1000>    #! 0x55555555556e = 0x55555555556e;

mov a0 L0x7fffffffddb0; mov a1 L0x7fffffffddb4;
mov a2 L0x7fffffffddb8; mov a3 L0x7fffffffddbc;
mov a4 L0x7fffffffddc0; mov a5 L0x7fffffffddc4;
mov a6 L0x7fffffffddc8; mov a7 L0x7fffffffddcc;
mov a8 L0x7fffffffddd0; mov a9 L0x7fffffffddd4;
mov aa L0x7fffffffddd8; mov ab L0x7fffffffdddc;
mov ac L0x7fffffffdde0; mov ad L0x7fffffffdde4;
mov ae L0x7fffffffdde8; mov af L0x7fffffffddec;

{
  true
  &&
  true
}

