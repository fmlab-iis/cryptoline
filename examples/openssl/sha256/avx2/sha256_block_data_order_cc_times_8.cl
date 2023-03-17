proc sha256_block_data_order_cc (
uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04,
uint8 A05, uint8 A06, uint8 A07, uint8 A08, uint8 A09,
uint8 A10, uint8 A11, uint8 A12, uint8 A13, uint8 A14,
uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19,
uint8 A20, uint8 A21, uint8 A22, uint8 A23, uint8 A24,
uint8 A25, uint8 A26, uint8 A27, uint8 A28, uint8 A29,
uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,
uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39,
uint8 A40, uint8 A41, uint8 A42, uint8 A43, uint8 A44,
uint8 A45, uint8 A46, uint8 A47, uint8 A48, uint8 A49,
uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54,
uint8 A55, uint8 A56, uint8 A57, uint8 A58, uint8 A59,
uint8 A60, uint8 A61, uint8 A62, uint8 A63,
uint32 A0, uint32 A1, uint32 A2, uint32 A3,
uint32 A4, uint32 A5, uint32 A6, uint32 A7;
uint32 a0, uint32 a1, uint32 a2, uint32 a3,
uint32 a4, uint32 a5, uint32 a6, uint32 a7
) =
{
  true
  &&
  true
}

mov L0x555555559088 A00; mov L0x555555559089 A01; mov L0x55555555908a A02;
mov L0x55555555908b A03; mov L0x55555555908c A04; mov L0x55555555908d A05;
mov L0x55555555908e A06; mov L0x55555555908f A07; mov L0x555555559090 A08;
mov L0x555555559091 A09; mov L0x555555559092 A10; mov L0x555555559093 A11;
mov L0x555555559094 A12; mov L0x555555559095 A13; mov L0x555555559096 A14;
mov L0x555555559097 A15; mov L0x555555559098 A16; mov L0x555555559099 A17;
mov L0x55555555909a A18; mov L0x55555555909b A19; mov L0x55555555909c A20;
mov L0x55555555909d A21; mov L0x55555555909e A22; mov L0x55555555909f A23;
mov L0x5555555590a0 A24; mov L0x5555555590a1 A25; mov L0x5555555590a2 A26;
mov L0x5555555590a3 A27; mov L0x5555555590a4 A28; mov L0x5555555590a5 A29;
mov L0x5555555590a6 A30; mov L0x5555555590a7 A31; mov L0x5555555590a8 A32;
mov L0x5555555590a9 A33; mov L0x5555555590aa A34; mov L0x5555555590ab A35;
mov L0x5555555590ac A36; mov L0x5555555590ad A37; mov L0x5555555590ae A38;
mov L0x5555555590af A39; mov L0x5555555590b0 A40; mov L0x5555555590b1 A41;
mov L0x5555555590b2 A42; mov L0x5555555590b3 A43; mov L0x5555555590b4 A44;
mov L0x5555555590b5 A45; mov L0x5555555590b6 A46; mov L0x5555555590b7 A47;
mov L0x5555555590b8 A48; mov L0x5555555590b9 A49; mov L0x5555555590ba A50;
mov L0x5555555590bb A51; mov L0x5555555590bc A52; mov L0x5555555590bd A53;
mov L0x5555555590be A54; mov L0x5555555590bf A55; mov L0x5555555590c0 A56;
mov L0x5555555590c1 A57; mov L0x5555555590c2 A58; mov L0x5555555590c3 A59;
mov L0x5555555590c4 A60; mov L0x5555555590c5 A61; mov L0x5555555590c6 A62;
mov L0x5555555590c7 A63; 

nondet rsp@uint32; nondet eax@uint32; nondet edx@uint32; nondet edi@uint32;
nondet esi@uint32; 

mov L0x555555559060 A0; mov L0x555555559064 A1;
mov L0x555555559068 A2; mov L0x55555555906c A3;
mov L0x555555559070 A4; mov L0x555555559074 A5;
mov L0x555555559078 A6; mov L0x55555555907c A7;
(*
mov L0x555555559060 0x6a09e667@uint32; mov L0x555555559064 0xbb67ae85@uint32;
mov L0x555555559068 0x3c6ef372@uint32; mov L0x55555555906c 0xa54ff53a@uint32;
mov L0x555555559070 0x510e527f@uint32; mov L0x555555559074 0x9b05688c@uint32;
mov L0x555555559078 0x1f83d9ab@uint32; mov L0x55555555907c 0x5be0cd19@uint32;
*)

mov L0x555555557020 0x428a2f98@uint32; mov L0x555555557024 0x71374491@uint32;
mov L0x555555557028 0xb5c0fbcf@uint32; mov L0x55555555702c 0xe9b5dba5@uint32;
mov L0x555555557030 0x3956c25b@uint32; mov L0x555555557034 0x59f111f1@uint32;
mov L0x555555557038 0x923f82a4@uint32; mov L0x55555555703c 0xab1c5ed5@uint32;
mov L0x555555557040 0xd807aa98@uint32; mov L0x555555557044 0x12835b01@uint32;
mov L0x555555557048 0x243185be@uint32; mov L0x55555555704c 0x550c7dc3@uint32;
mov L0x555555557050 0x72be5d74@uint32; mov L0x555555557054 0x80deb1fe@uint32;
mov L0x555555557058 0x9bdc06a7@uint32; mov L0x55555555705c 0xc19bf174@uint32;
mov L0x555555557060 0xe49b69c1@uint32; mov L0x555555557064 0xefbe4786@uint32;
mov L0x555555557068 0x0fc19dc6@uint32; mov L0x55555555706c 0x240ca1cc@uint32;
mov L0x555555557070 0x2de92c6f@uint32; mov L0x555555557074 0x4a7484aa@uint32;
mov L0x555555557078 0x5cb0a9dc@uint32; mov L0x55555555707c 0x76f988da@uint32;
mov L0x555555557080 0x983e5152@uint32; mov L0x555555557084 0xa831c66d@uint32;
mov L0x555555557088 0xb00327c8@uint32; mov L0x55555555708c 0xbf597fc7@uint32;
mov L0x555555557090 0xc6e00bf3@uint32; mov L0x555555557094 0xd5a79147@uint32;
mov L0x555555557098 0x06ca6351@uint32; mov L0x55555555709c 0x14292967@uint32;
mov L0x5555555570a0 0x27b70a85@uint32; mov L0x5555555570a4 0x2e1b2138@uint32;
mov L0x5555555570a8 0x4d2c6dfc@uint32; mov L0x5555555570ac 0x53380d13@uint32;
mov L0x5555555570b0 0x650a7354@uint32; mov L0x5555555570b4 0x766a0abb@uint32;
mov L0x5555555570b8 0x81c2c92e@uint32; mov L0x5555555570bc 0x92722c85@uint32;
mov L0x5555555570c0 0xa2bfe8a1@uint32; mov L0x5555555570c4 0xa81a664b@uint32;
mov L0x5555555570c8 0xc24b8b70@uint32; mov L0x5555555570cc 0xc76c51a3@uint32;
mov L0x5555555570d0 0xd192e819@uint32; mov L0x5555555570d4 0xd6990624@uint32;
mov L0x5555555570d8 0xf40e3585@uint32; mov L0x5555555570dc 0x106aa070@uint32;
mov L0x5555555570e0 0x19a4c116@uint32; mov L0x5555555570e4 0x1e376c08@uint32;
mov L0x5555555570e8 0x2748774c@uint32; mov L0x5555555570ec 0x34b0bcb5@uint32;
mov L0x5555555570f0 0x391c0cb3@uint32; mov L0x5555555570f4 0x4ed8aa4a@uint32;
mov L0x5555555570f8 0x5b9cca4f@uint32; mov L0x5555555570fc 0x682e6ff3@uint32;
mov L0x555555557100 0x748f82ee@uint32; mov L0x555555557104 0x78a5636f@uint32;
mov L0x555555557108 0x84c87814@uint32; mov L0x55555555710c 0x8cc70208@uint32;
mov L0x555555557110 0x90befffa@uint32; mov L0x555555557114 0xa4506ceb@uint32;
mov L0x555555557118 0xbef9a3f7@uint32; mov L0x55555555711c 0xc67178f2@uint32;

(* #! -> SP = 0x7fffffffdff8 *)
#! 0x7fffffffdff8 = 0x7fffffffdff8;
(* push   %r15                                     #! EA = L0x7fffffffdff0; PC = 0x5555555551be *)
(* push r15 *)
nop;
(* push   %r14                                     #! EA = L0x7fffffffdfe8; PC = 0x5555555551c0 *)
(* push r14 *)
nop;
(* push   %r13                                     #! EA = L0x7fffffffdfe0; PC = 0x5555555551c2 *)
(* push r13 *)
nop;
(* push   %r12                                     #! EA = L0x7fffffffdfd8; PC = 0x5555555551c4 *)
(* push r12 *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffdfd0; PC = 0x5555555551c6 *)
(* push ebp *)
nop;
(* push   %rbx                                     #! EA = L0x7fffffffdfc8; PC = 0x5555555551c7 *)
(* push ebx *)
nop;
(* sub    $0xc8,%rsp                               #! PC = 0x5555555551c8 *)
subc dc rsp rsp 0xc8@uint32;
(* mov    %rdi,0x40(%rsp)                          #! EA = L0x7fffffffdf40; PC = 0x5555555551cf *)
mov L0x7fffffffdf40 edi;
(* mov    %rsi,0x48(%rsp)                          #! EA = L0x7fffffffdf48; PC = 0x5555555551d4 *)
mov L0x7fffffffdf48 esi;
(* mov    %fs:0x28,%rax                            #! PC = 0x5555555551d9 *)
(* mov %fs:0x28, eax *)
nop;
(* mov    %rax,0xb8(%rsp)                          #! EA = L0x7fffffffdfb8; PC = 0x5555555551e2 *)
mov L0x7fffffffdfb8 eax;
(* xor    %eax,%eax                                #! PC = 0x5555555551ea *)
mov eax 0@uint32;
(* lea    -0x1(%rdx),%rax                          #! PC = 0x5555555551ec *)
subs dc eax edx 0x1@uint32;
(* mov    %rax,0x38(%rsp)                          #! EA = L0x7fffffffdf38; PC = 0x5555555551f0 *)
mov L0x7fffffffdf38 eax;
(* test   %rdx,%rdx                                #! PC = 0x5555555551f5 *)
(* test edx, edx *)
nop;
(* #jne    0x55555555529b <sha256_block_data_order+221>#! PC = 0x5555555551f8 *)
#jne    0x55555555529b <sha256_block_data_order+221>#! 0x5555555551f8 = 0x5555555551f8;
(* mov    0x40(%rsp),%rax                          #! EA = L0x7fffffffdf40; Value = 0x0000555555559060; PC = 0x55555555529b *)
mov eax L0x7fffffffdf40;
(* mov    (%rax),%ebx                              #! EA = L0x555555559060; Value = 0xbb67ae856a09e667; PC = 0x5555555552a0 *)
mov ebx L0x555555559060;
(* mov    %ebx,0x50(%rsp)                          #! EA = L0x7fffffffdf50; PC = 0x5555555552a2 *)
mov L0x7fffffffdf50 ebx;
(* mov    0x4(%rax),%r15d                          #! EA = L0x555555559064; Value = 0x3c6ef372bb67ae85; PC = 0x5555555552a6 *)
mov r15 L0x555555559064;
(* mov    %r15d,%r10d                              #! PC = 0x5555555552aa *)
mov r10 r15;
(* mov    %r15d,0x54(%rsp)                         #! EA = L0x7fffffffdf54; PC = 0x5555555552ad *)
mov L0x7fffffffdf54 r15;
(* mov    0x8(%rax),%r8d                           #! EA = L0x555555559068; Value = 0xa54ff53a3c6ef372; PC = 0x5555555552b2 *)
mov r8 L0x555555559068;
(* mov    %r8d,0x58(%rsp)                          #! EA = L0x7fffffffdf58; PC = 0x5555555552b6 *)
mov L0x7fffffffdf58 r8;
(* mov    0xc(%rax),%r13d                          #! EA = L0x55555555906c; Value = 0x510e527fa54ff53a; PC = 0x5555555552bb *)
mov r13 L0x55555555906c;
(* mov    %r13d,0x5c(%rsp)                         #! EA = L0x7fffffffdf5c; PC = 0x5555555552bf *)
mov L0x7fffffffdf5c r13;
(* mov    0x10(%rax),%r9d                          #! EA = L0x555555559070; Value = 0x9b05688c510e527f; PC = 0x5555555552c4 *)
mov r9 L0x555555559070;
(* mov    %r9d,0x60(%rsp)                          #! EA = L0x7fffffffdf60; PC = 0x5555555552c8 *)
mov L0x7fffffffdf60 r9;
(* mov    0x14(%rax),%r11d                         #! EA = L0x555555559074; Value = 0x1f83d9ab9b05688c; PC = 0x5555555552cd *)
mov r11 L0x555555559074;
(* mov    %r11d,0x64(%rsp)                         #! EA = L0x7fffffffdf64; PC = 0x5555555552d1 *)
mov L0x7fffffffdf64 r11;
(* mov    0x18(%rax),%ebp                          #! EA = L0x555555559078; Value = 0x5be0cd191f83d9ab; PC = 0x5555555552d6 *)
mov ebp L0x555555559078;
(* mov    %ebp,0x68(%rsp)                          #! EA = L0x7fffffffdf68; PC = 0x5555555552d9 *)
mov L0x7fffffffdf68 ebp;
(* mov    0x1c(%rax),%r14d                         #! EA = L0x55555555907c; Value = 0x000000805be0cd19; PC = 0x5555555552dd *)
mov r14 L0x55555555907c;
(* mov    %r14d,0x6c(%rsp)                         #! EA = L0x7fffffffdf6c; PC = 0x5555555552e1 *)
mov L0x7fffffffdf6c r14;
(* mov    0x48(%rsp),%r15                          #! EA = L0x7fffffffdf48; Value = 0x0000555555559088; PC = 0x5555555552e6 *)
mov r15 L0x7fffffffdf48;
(* movzbl (%r15),%eax                              #! EA = L0x555555559088; Value = 0x0706050403020100; PC = 0x5555555552eb *)
cast eax@uint32 L0x555555559088;
(* shl    $0x18,%eax                               #! PC = 0x5555555552ef *)
split dc eax eax (32-0x18);
shl eax eax 0x18@uint32;
(* movzbl 0x3(%r15),%esi                           #! EA = L0x55555555908b; Value = 0x0a09080706050403; PC = 0x5555555552f2 *)
cast esi@uint32 L0x55555555908b;
(* or     %esi,%eax                                #! PC = 0x5555555552f7 *)
or eax@uint32 eax esi;
(* movzbl 0x1(%r15),%esi                           #! EA = L0x555555559089; Value = 0x0807060504030201; PC = 0x5555555552f9 *)
cast esi@uint32 L0x555555559089;
(* shl    $0x10,%rsi                               #! PC = 0x5555555552fe *)
split dc esi esi (32-0x10);
shl esi esi 0x10@uint32;
(* or     %esi,%eax                                #! PC = 0x555555555302 *)
or eax@uint32 eax esi;
(* movzbl 0x2(%r15),%esi                           #! EA = L0x55555555908a; Value = 0x0908070605040302; PC = 0x555555555304 *)
cast esi@uint32 L0x55555555908a;
(* shl    $0x8,%rsi                                #! PC = 0x555555555309 *)
split dc esi esi (32-0x8);
shl esi esi 0x8@uint32;
(* or     %esi,%eax                                #! PC = 0x55555555530d *)
or eax@uint32 eax esi;
(* mov    %eax,0x70(%rsp)                          #! EA = L0x7fffffffdf70; PC = 0x55555555530f *)
mov L0x7fffffffdf70 eax;
(* mov    %r9d,%edx                                #! PC = 0x555555555313 *)
mov edx r9;
(* ror    $0x6,%edx                                #! PC = 0x555555555316 *)
ror edx@uint32 edx 0x6;
(* mov    %r9d,%ecx                                #! PC = 0x555555555319 *)
mov ecx r9;
(* ror    $0xb,%ecx                                #! PC = 0x55555555531c *)
ror ecx@uint32 ecx 0xb;
(* xor    %ecx,%edx                                #! PC = 0x55555555531f *)
xor edx@uint32 edx ecx;
(* mov    %r9d,%ecx                                #! PC = 0x555555555321 *)
mov ecx r9;
(* rol    $0x7,%ecx                                #! PC = 0x555555555324 *)
rol ecx@uint32 ecx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555555327 *)
xor edx@uint32 edx ecx;
(* lea    0x428a2f98(%r14,%rdx,1),%ecx             #! PC = 0x555555555329 *)
adds dc tmp 0x428a2f98@uint32 r14;
adds dc ecx edx tmp;
(* mov    %r9d,%edx                                #! PC = 0x555555555331 *)
mov edx r9;
(* not    %edx                                     #! PC = 0x555555555334 *)
not edx@uint32 edx;
(* and    %ebp,%edx                                #! PC = 0x555555555336 *)
and edx@uint32 edx ebp;
(* mov    %r9d,%esi                                #! PC = 0x555555555338 *)
mov esi r9;
(* and    %r11d,%esi                               #! PC = 0x55555555533b *)
and esi@uint32 esi r11;
(* xor    %esi,%edx                                #! PC = 0x55555555533e *)
xor edx@uint32 edx esi;
(* lea    (%rcx,%rdx,1),%esi                       #! PC = 0x555555555340 *)
adds dc esi ecx edx;
(* add    %esi,%eax                                #! PC = 0x555555555343 *)
adds dc eax eax esi;
(* mov    %ebx,%edx                                #! PC = 0x555555555345 *)
mov edx ebx;
(* ror    $0x2,%edx                                #! PC = 0x555555555347 *)
ror edx@uint32 edx 0x2;
(* mov    %ebx,%r14d                               #! PC = 0x55555555534a *)
mov r14 ebx;
(* mov    %ebx,%esi                                #! PC = 0x55555555534d *)
mov esi ebx;
(* ror    $0xd,%esi                                #! PC = 0x55555555534f *)
ror esi@uint32 esi 0xd;
(* xor    %esi,%edx                                #! PC = 0x555555555352 *)
xor edx@uint32 edx esi;
(* mov    %ebx,%esi                                #! PC = 0x555555555354 *)
mov esi ebx;
(* rol    $0xa,%esi                                #! PC = 0x555555555356 *)
rol esi@uint32 esi 0xa;
(* xor    %esi,%edx                                #! PC = 0x555555555359 *)
xor edx@uint32 edx esi;
(* mov    %r10d,%esi                               #! PC = 0x55555555535b *)
mov esi r10;
(* xor    %r8d,%esi                                #! PC = 0x55555555535e *)
xor esi@uint32 esi r8;
(* and    %ebx,%esi                                #! PC = 0x555555555361 *)
and esi@uint32 esi ebx;
(* mov    %r10d,%ecx                               #! PC = 0x555555555363 *)
mov ecx r10;
(* and    %r8d,%ecx                                #! PC = 0x555555555366 *)
and ecx@uint32 ecx r8;
(* xor    %ecx,%esi                                #! PC = 0x555555555369 *)
xor esi@uint32 esi ecx;
(* add    %edx,%esi                                #! PC = 0x55555555536b *)
adds dc esi esi edx;
(* lea    0x0(%r13,%rax,1),%ebx                    #! PC = 0x55555555536d *)
adds dc tmp 0x0@uint32 r13;
adds dc ebx eax tmp;
(* add    %eax,%esi                                #! PC = 0x555555555372 *)
adds dc esi esi eax;
(* movzbl 0x4(%r15),%edx                           #! EA = L0x55555555908c; Value = 0x0b0a090807060504; PC = 0x555555555374 *)
cast edx@uint32 L0x55555555908c;
(* shl    $0x18,%edx                               #! PC = 0x555555555379 *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x7(%r15),%eax                           #! EA = L0x55555555908f; Value = 0x0e0d0c0b0a090807; PC = 0x55555555537c *)
cast eax@uint32 L0x55555555908f;
(* or     %eax,%edx                                #! PC = 0x555555555381 *)
or edx@uint32 edx eax;
(* movzbl 0x5(%r15),%eax                           #! EA = L0x55555555908d; Value = 0x0c0b0a0908070605; PC = 0x555555555383 *)
cast eax@uint32 L0x55555555908d;
(* shl    $0x10,%rax                               #! PC = 0x555555555388 *)
split dc eax eax (32-0x10);
shl eax eax 0x10@uint32;
(* or     %eax,%edx                                #! PC = 0x55555555538c *)
or edx@uint32 edx eax;
(* movzbl 0x6(%r15),%eax                           #! EA = L0x55555555908e; Value = 0x0d0c0b0a09080706; PC = 0x55555555538e *)
cast eax@uint32 L0x55555555908e;
(* shl    $0x8,%rax                                #! PC = 0x555555555393 *)
split dc eax eax (32-0x8);
shl eax eax 0x8@uint32;
(* or     %eax,%edx                                #! PC = 0x555555555397 *)
or edx@uint32 edx eax;
(* mov    %edx,0x74(%rsp)                          #! EA = L0x7fffffffdf74; PC = 0x555555555399 *)
mov L0x7fffffffdf74 edx;
(* mov    %ebx,%eax                                #! PC = 0x55555555539d *)
mov eax ebx;
(* ror    $0x6,%eax                                #! PC = 0x55555555539f *)
ror eax@uint32 eax 0x6;
(* mov    %ebx,%ecx                                #! PC = 0x5555555553a2 *)
mov ecx ebx;
(* ror    $0xb,%ecx                                #! PC = 0x5555555553a4 *)
ror ecx@uint32 ecx 0xb;
(* xor    %eax,%ecx                                #! PC = 0x5555555553a7 *)
xor ecx@uint32 ecx eax;
(* mov    %ebx,%eax                                #! PC = 0x5555555553a9 *)
mov eax ebx;
(* rol    $0x7,%eax                                #! PC = 0x5555555553ab *)
rol eax@uint32 eax 0x7;
(* xor    %ecx,%eax                                #! PC = 0x5555555553ae *)
xor eax@uint32 eax ecx;
(* lea    0x71374491(%rbp,%rdx,1),%edx             #! PC = 0x5555555553b0 *)
adds dc tmp 0x71374491@uint32 ebp;
adds dc edx edx tmp;
(* add    %eax,%edx                                #! PC = 0x5555555553b7 *)
adds dc edx edx eax;
(* mov    %ebx,%ecx                                #! PC = 0x5555555553b9 *)
mov ecx ebx;
(* not    %ecx                                     #! PC = 0x5555555553bb *)
not ecx@uint32 ecx;
(* mov    %r11d,%ebp                               #! PC = 0x5555555553bd *)
mov ebp r11;
(* and    %r11d,%ecx                               #! PC = 0x5555555553c0 *)
and ecx@uint32 ecx r11;
(* mov    %r9d,%eax                                #! PC = 0x5555555553c3 *)
mov eax r9;
(* and    %ebx,%eax                                #! PC = 0x5555555553c6 *)
and eax@uint32 eax ebx;
(* xor    %ecx,%eax                                #! PC = 0x5555555553c8 *)
xor eax@uint32 eax ecx;
(* add    %edx,%eax                                #! PC = 0x5555555553ca *)
adds dc eax eax edx;
(* mov    %esi,%ecx                                #! PC = 0x5555555553cc *)
mov ecx esi;
(* ror    $0x2,%ecx                                #! PC = 0x5555555553ce *)
ror ecx@uint32 ecx 0x2;
(* mov    %esi,%edx                                #! PC = 0x5555555553d1 *)
mov edx esi;
(* ror    $0xd,%edx                                #! PC = 0x5555555553d3 *)
ror edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555553d6 *)
xor edx@uint32 edx ecx;
(* mov    %esi,%ecx                                #! PC = 0x5555555553d8 *)
mov ecx esi;
(* rol    $0xa,%ecx                                #! PC = 0x5555555553da *)
rol ecx@uint32 ecx 0xa;
(* xor    %ecx,%edx                                #! PC = 0x5555555553dd *)
xor edx@uint32 edx ecx;
(* mov    %r14d,%ecx                               #! PC = 0x5555555553df *)
mov ecx r14;
(* xor    %r10d,%ecx                               #! PC = 0x5555555553e2 *)
xor ecx@uint32 ecx r10;
(* and    %esi,%ecx                                #! PC = 0x5555555553e5 *)
and ecx@uint32 ecx esi;
(* mov    %r14d,%edi                               #! PC = 0x5555555553e7 *)
mov edi r14;
(* and    %r10d,%edi                               #! PC = 0x5555555553ea *)
and edi@uint32 edi r10;
(* xor    %edi,%ecx                                #! PC = 0x5555555553ed *)
xor ecx@uint32 ecx edi;
(* add    %edx,%ecx                                #! PC = 0x5555555553ef *)
adds dc ecx ecx edx;
(* lea    (%r8,%rax,1),%r11d                       #! PC = 0x5555555553f1 *)
adds dc r11 r8 eax;
(* add    %eax,%ecx                                #! PC = 0x5555555553f5 *)
adds dc ecx ecx eax;
(* movzbl 0x8(%r15),%edi                           #! EA = L0x555555559090; Value = 0x0f0e0d0c0b0a0908; PC = 0x5555555553f7 *)
cast edi@uint32 L0x555555559090;
(* shl    $0x18,%edi                               #! PC = 0x5555555553fc *)
split dc edi edi (32-0x18);
shl edi edi 0x18@uint32;
(* movzbl 0xb(%r15),%eax                           #! EA = L0x555555559093; Value = 0x0000800f0e0d0c0b; PC = 0x5555555553ff *)
cast eax@uint32 L0x555555559093;
(* or     %eax,%edi                                #! PC = 0x555555555404 *)
or edi@uint32 edi eax;
(* movzbl 0x9(%r15),%eax                           #! EA = L0x555555559091; Value = 0x800f0e0d0c0b0a09; PC = 0x555555555406 *)
cast eax@uint32 L0x555555559091;
(* shl    $0x10,%rax                               #! PC = 0x55555555540b *)
split dc eax eax (32-0x10);
shl eax eax 0x10@uint32;
(* or     %eax,%edi                                #! PC = 0x55555555540f *)
or edi@uint32 edi eax;
(* movzbl 0xa(%r15),%eax                           #! EA = L0x555555559092; Value = 0x00800f0e0d0c0b0a; PC = 0x555555555411 *)
cast eax@uint32 L0x555555559092;
(* shl    $0x8,%rax                                #! PC = 0x555555555416 *)
split dc eax eax (32-0x8);
shl eax eax 0x8@uint32;
(* or     %eax,%edi                                #! PC = 0x55555555541a *)
or edi@uint32 edi eax;
(* mov    %edi,0x78(%rsp)                          #! EA = L0x7fffffffdf78; PC = 0x55555555541c *)
mov L0x7fffffffdf78 edi;
(* mov    %r11d,%eax                               #! PC = 0x555555555420 *)
mov eax r11;
(* ror    $0x6,%eax                                #! PC = 0x555555555423 *)
ror eax@uint32 eax 0x6;
(* mov    %r11d,%edx                               #! PC = 0x555555555426 *)
mov edx r11;
(* ror    $0xb,%edx                                #! PC = 0x555555555429 *)
ror edx@uint32 edx 0xb;
(* xor    %eax,%edx                                #! PC = 0x55555555542c *)
xor edx@uint32 edx eax;
(* mov    %r11d,%eax                               #! PC = 0x55555555542e *)
mov eax r11;
(* rol    $0x7,%eax                                #! PC = 0x555555555431 *)
rol eax@uint32 eax 0x7;
(* xor    %edx,%eax                                #! PC = 0x555555555434 *)
xor eax@uint32 eax edx;
(* lea    -0x4a3f0431(%rbp,%rdi,1),%edi            #! PC = 0x555555555436 *)
subs dc tmp ebp 0x4a3f0431@uint32;
adds dc edi edi tmp;
(* add    %eax,%edi                                #! PC = 0x55555555543d *)
adds dc edi edi eax;
(* mov    %r11d,%edx                               #! PC = 0x55555555543f *)
mov edx r11;
(* not    %edx                                     #! PC = 0x555555555442 *)
not edx@uint32 edx;
(* and    %r9d,%edx                                #! PC = 0x555555555444 *)
and edx@uint32 edx r9;
(* mov    %ebx,%eax                                #! PC = 0x555555555447 *)
mov eax ebx;
(* and    %r11d,%eax                               #! PC = 0x555555555449 *)
and eax@uint32 eax r11;
(* xor    %edx,%eax                                #! PC = 0x55555555544c *)
xor eax@uint32 eax edx;
(* add    %edi,%eax                                #! PC = 0x55555555544e *)
adds dc eax eax edi;
(* mov    %ecx,%edx                                #! PC = 0x555555555450 *)
mov edx ecx;
(* ror    $0x2,%edx                                #! PC = 0x555555555452 *)
ror edx@uint32 edx 0x2;
(* mov    %ecx,%edi                                #! PC = 0x555555555455 *)
mov edi ecx;
(* ror    $0xd,%edi                                #! PC = 0x555555555457 *)
ror edi@uint32 edi 0xd;
(* xor    %edx,%edi                                #! PC = 0x55555555545a *)
xor edi@uint32 edi edx;
(* mov    %ecx,%edx                                #! PC = 0x55555555545c *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x55555555545e *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%edi                                #! PC = 0x555555555461 *)
xor edi@uint32 edi edx;
(* mov    %r14d,%edx                               #! PC = 0x555555555463 *)
mov edx r14;
(* xor    %esi,%edx                                #! PC = 0x555555555466 *)
xor edx@uint32 edx esi;
(* and    %ecx,%edx                                #! PC = 0x555555555468 *)
and edx@uint32 edx ecx;
(* mov    %r14d,%r8d                               #! PC = 0x55555555546a *)
mov r8 r14;
(* and    %esi,%r8d                                #! PC = 0x55555555546d *)
and r8@uint32 r8 esi;
(* xor    %r8d,%edx                                #! PC = 0x555555555470 *)
xor edx@uint32 edx r8;
(* add    %edi,%edx                                #! PC = 0x555555555473 *)
adds dc edx edx edi;
(* add    %eax,%r10d                               #! PC = 0x555555555475 *)
adds dc r10 r10 eax;
(* add    %eax,%edx                                #! PC = 0x555555555478 *)
adds dc edx edx eax;
(* movzbl 0xc(%r15),%r8d                           #! EA = L0x555555559094; Value = 0x000000800f0e0d0c; PC = 0x55555555547a *)
cast r8@uint32 L0x555555559094;
(* shl    $0x18,%r8d                               #! PC = 0x55555555547f *)
split dc r8 r8 (32-0x18);
shl r8 r8 0x18@uint32;
(* movzbl 0xf(%r15),%eax                           #! EA = L0x555555559097; Value = 0x000000000000800f; PC = 0x555555555483 *)
cast eax@uint32 L0x555555559097;
(* or     %eax,%r8d                                #! PC = 0x555555555488 *)
or r8@uint32 r8 eax;
(* movzbl 0xd(%r15),%eax                           #! EA = L0x555555559095; Value = 0x00000000800f0e0d; PC = 0x55555555548b *)
cast eax@uint32 L0x555555559095;
(* shl    $0x10,%rax                               #! PC = 0x555555555490 *)
split dc eax eax (32-0x10);
shl eax eax 0x10@uint32;
(* or     %eax,%r8d                                #! PC = 0x555555555494 *)
or r8@uint32 r8 eax;
(* movzbl 0xe(%r15),%eax                           #! EA = L0x555555559096; Value = 0x0000000000800f0e; PC = 0x555555555497 *)
cast eax@uint32 L0x555555559096;
(* shl    $0x8,%rax                                #! PC = 0x55555555549c *)
split dc eax eax (32-0x8);
shl eax eax 0x8@uint32;
(* or     %eax,%r8d                                #! PC = 0x5555555554a0 *)
or r8@uint32 r8 eax;
(* mov    %r8d,0x7c(%rsp)                          #! EA = L0x7fffffffdf7c; PC = 0x5555555554a3 *)
mov L0x7fffffffdf7c r8;
(* mov    %r10d,%edi                               #! PC = 0x5555555554a8 *)
mov edi r10;
(* ror    $0x6,%edi                                #! PC = 0x5555555554ab *)
ror edi@uint32 edi 0x6;
(* mov    %r10d,%eax                               #! PC = 0x5555555554ae *)
mov eax r10;
(* ror    $0xb,%eax                                #! PC = 0x5555555554b1 *)
ror eax@uint32 eax 0xb;
(* xor    %edi,%eax                                #! PC = 0x5555555554b4 *)
xor eax@uint32 eax edi;
(* mov    %r10d,%edi                               #! PC = 0x5555555554b6 *)
mov edi r10;
(* rol    $0x7,%edi                                #! PC = 0x5555555554b9 *)
rol edi@uint32 edi 0x7;
(* xor    %eax,%edi                                #! PC = 0x5555555554bc *)
xor edi@uint32 edi eax;
(* lea    -0x164a245b(%r9,%r8,1),%r8d              #! PC = 0x5555555554be *)
subs dc tmp r9 0x164a245b@uint32;
adds dc r8 r8 tmp;
(* add    %edi,%r8d                                #! PC = 0x5555555554c6 *)
adds dc r8 r8 edi;
(* mov    %r10d,%eax                               #! PC = 0x5555555554c9 *)
mov eax r10;
(* not    %eax                                     #! PC = 0x5555555554cc *)
not eax@uint32 eax;
(* and    %ebx,%eax                                #! PC = 0x5555555554ce *)
and eax@uint32 eax ebx;
(* mov    %r11d,%edi                               #! PC = 0x5555555554d0 *)
mov edi r11;
(* and    %r10d,%edi                               #! PC = 0x5555555554d3 *)
and edi@uint32 edi r10;
(* xor    %eax,%edi                                #! PC = 0x5555555554d6 *)
xor edi@uint32 edi eax;
(* add    %r8d,%edi                                #! PC = 0x5555555554d8 *)
adds dc edi edi r8;
(* mov    %edx,%eax                                #! PC = 0x5555555554db *)
mov eax edx;
(* ror    $0x2,%eax                                #! PC = 0x5555555554dd *)
ror eax@uint32 eax 0x2;
(* mov    %edx,%r8d                                #! PC = 0x5555555554e0 *)
mov r8 edx;
(* ror    $0xd,%r8d                                #! PC = 0x5555555554e3 *)
ror r8@uint32 r8 0xd;
(* xor    %eax,%r8d                                #! PC = 0x5555555554e7 *)
xor r8@uint32 r8 eax;
(* mov    %edx,%eax                                #! PC = 0x5555555554ea *)
mov eax edx;
(* rol    $0xa,%eax                                #! PC = 0x5555555554ec *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%r8d                                #! PC = 0x5555555554ef *)
xor r8@uint32 r8 eax;
(* mov    %esi,%eax                                #! PC = 0x5555555554f2 *)
mov eax esi;
(* xor    %ecx,%eax                                #! PC = 0x5555555554f4 *)
xor eax@uint32 eax ecx;
(* and    %edx,%eax                                #! PC = 0x5555555554f6 *)
and eax@uint32 eax edx;
(* mov    %esi,%r9d                                #! PC = 0x5555555554f8 *)
mov r9 esi;
(* and    %ecx,%r9d                                #! PC = 0x5555555554fb *)
and r9@uint32 r9 ecx;
(* xor    %r9d,%eax                                #! PC = 0x5555555554fe *)
xor eax@uint32 eax r9;
(* add    %r8d,%eax                                #! PC = 0x555555555501 *)
adds dc eax eax r8;
(* lea    (%r14,%rdi,1),%r9d                       #! PC = 0x555555555504 *)
adds dc r9 r14 edi;
(* add    %edi,%eax                                #! PC = 0x555555555508 *)
adds dc eax eax edi;
(* movzbl 0x10(%r15),%r8d                          #! EA = L0x555555559098; Value = 0x0000000000000080; PC = 0x55555555550a *)
cast r8@uint32 L0x555555559098;
(* shl    $0x18,%r8d                               #! PC = 0x55555555550f *)
split dc r8 r8 (32-0x18);
shl r8 r8 0x18@uint32;
(* movzbl 0x13(%r15),%edi                          #! EA = L0x55555555909b; Value = 0x0000000000000000; PC = 0x555555555513 *)
cast edi@uint32 L0x55555555909b;
(* or     %edi,%r8d                                #! PC = 0x555555555518 *)
or r8@uint32 r8 edi;
(* movzbl 0x11(%r15),%edi                          #! EA = L0x555555559099; Value = 0x0000000000000000; PC = 0x55555555551b *)
cast edi@uint32 L0x555555559099;
(* shl    $0x10,%rdi                               #! PC = 0x555555555520 *)
split dc edi edi (32-0x10);
shl edi edi 0x10@uint32;
(* or     %edi,%r8d                                #! PC = 0x555555555524 *)
or r8@uint32 r8 edi;
(* movzbl 0x12(%r15),%edi                          #! EA = L0x55555555909a; Value = 0x0000000000000000; PC = 0x555555555527 *)
cast edi@uint32 L0x55555555909a;
(* shl    $0x8,%rdi                                #! PC = 0x55555555552c *)
split dc edi edi (32-0x8);
shl edi edi 0x8@uint32;
(* or     %edi,%r8d                                #! PC = 0x555555555530 *)
or r8@uint32 r8 edi;
(* mov    %r8d,0x80(%rsp)                          #! EA = L0x7fffffffdf80; PC = 0x555555555533 *)
mov L0x7fffffffdf80 r8;
(* mov    %r9d,%ebp                                #! PC = 0x55555555553b *)
mov ebp r9;
(* ror    $0x6,%ebp                                #! PC = 0x55555555553e *)
ror ebp@uint32 ebp 0x6;
(* mov    %r9d,%edi                                #! PC = 0x555555555541 *)
mov edi r9;
(* ror    $0xb,%edi                                #! PC = 0x555555555544 *)
ror edi@uint32 edi 0xb;
(* xor    %ebp,%edi                                #! PC = 0x555555555547 *)
xor edi@uint32 edi ebp;
(* mov    %r9d,%ebp                                #! PC = 0x555555555549 *)
mov ebp r9;
(* rol    $0x7,%ebp                                #! PC = 0x55555555554c *)
rol ebp@uint32 ebp 0x7;
(* xor    %ebp,%edi                                #! PC = 0x55555555554f *)
xor edi@uint32 edi ebp;
(* lea    0x3956c25b(%rbx,%r8,1),%ebp              #! PC = 0x555555555551 *)
adds dc tmp 0x3956c25b@uint32 ebx;
adds dc ebp r8 tmp;
(* add    %edi,%ebp                                #! PC = 0x555555555559 *)
adds dc ebp ebp edi;
(* mov    %r9d,%ebx                                #! PC = 0x55555555555b *)
mov ebx r9;
(* not    %ebx                                     #! PC = 0x55555555555e *)
not ebx@uint32 ebx;
(* and    %r11d,%ebx                               #! PC = 0x555555555560 *)
and ebx@uint32 ebx r11;
(* mov    %r10d,%edi                               #! PC = 0x555555555563 *)
mov edi r10;
(* and    %r9d,%edi                                #! PC = 0x555555555566 *)
and edi@uint32 edi r9;
(* xor    %edi,%ebx                                #! PC = 0x555555555569 *)
xor ebx@uint32 ebx edi;
(* add    %ebp,%ebx                                #! PC = 0x55555555556b *)
adds dc ebx ebx ebp;
(* mov    %eax,%edi                                #! PC = 0x55555555556d *)
mov edi eax;
(* ror    $0x2,%edi                                #! PC = 0x55555555556f *)
ror edi@uint32 edi 0x2;
(* mov    %eax,%ebp                                #! PC = 0x555555555572 *)
mov ebp eax;
(* ror    $0xd,%ebp                                #! PC = 0x555555555574 *)
ror ebp@uint32 ebp 0xd;
(* xor    %edi,%ebp                                #! PC = 0x555555555577 *)
xor ebp@uint32 ebp edi;
(* mov    %eax,%edi                                #! PC = 0x555555555579 *)
mov edi eax;
(* rol    $0xa,%edi                                #! PC = 0x55555555557b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%ebp                                #! PC = 0x55555555557e *)
xor ebp@uint32 ebp edi;
(* mov    %ecx,%r8d                                #! PC = 0x555555555580 *)
mov r8 ecx;
(* xor    %edx,%r8d                                #! PC = 0x555555555583 *)
xor r8@uint32 r8 edx;
(* and    %eax,%r8d                                #! PC = 0x555555555586 *)
and r8@uint32 r8 eax;
(* mov    %ecx,%edi                                #! PC = 0x555555555589 *)
mov edi ecx;
(* and    %edx,%edi                                #! PC = 0x55555555558b *)
and edi@uint32 edi edx;
(* xor    %r8d,%edi                                #! PC = 0x55555555558d *)
xor edi@uint32 edi r8;
(* add    %ebp,%edi                                #! PC = 0x555555555590 *)
adds dc edi edi ebp;
(* lea    (%rsi,%rbx,1),%r8d                       #! PC = 0x555555555592 *)
adds dc r8 esi ebx;
(* add    %ebx,%edi                                #! PC = 0x555555555596 *)
adds dc edi edi ebx;
(* movzbl 0x14(%r15),%esi                          #! EA = L0x55555555909c; Value = 0x0000000000000000; PC = 0x555555555598 *)
cast esi@uint32 L0x55555555909c;
(* shl    $0x18,%esi                               #! PC = 0x55555555559d *)
split dc esi esi (32-0x18);
shl esi esi 0x18@uint32;
(* movzbl 0x17(%r15),%ebx                          #! EA = L0x55555555909f; Value = 0x0000000000000000; PC = 0x5555555555a0 *)
cast ebx@uint32 L0x55555555909f;
(* or     %ebx,%esi                                #! PC = 0x5555555555a5 *)
or esi@uint32 esi ebx;
(* movzbl 0x15(%r15),%ebx                          #! EA = L0x55555555909d; Value = 0x0000000000000000; PC = 0x5555555555a7 *)
cast ebx@uint32 L0x55555555909d;
(* shl    $0x10,%rbx                               #! PC = 0x5555555555ac *)
split dc ebx ebx (32-0x10);
shl ebx ebx 0x10@uint32;
(* or     %ebx,%esi                                #! PC = 0x5555555555b0 *)
or esi@uint32 esi ebx;
(* movzbl 0x16(%r15),%ebx                          #! EA = L0x55555555909e; Value = 0x0000000000000000; PC = 0x5555555555b2 *)
cast ebx@uint32 L0x55555555909e;
(* shl    $0x8,%rbx                                #! PC = 0x5555555555b7 *)
split dc ebx ebx (32-0x8);
shl ebx ebx 0x8@uint32;
(* or     %ebx,%esi                                #! PC = 0x5555555555bb *)
or esi@uint32 esi ebx;
(* mov    %esi,0x84(%rsp)                          #! EA = L0x7fffffffdf84; PC = 0x5555555555bd *)
mov L0x7fffffffdf84 esi;
(* mov    %r8d,%ebx                                #! PC = 0x5555555555c4 *)
mov ebx r8;
(* ror    $0x6,%ebx                                #! PC = 0x5555555555c7 *)
ror ebx@uint32 ebx 0x6;
(* mov    %r8d,%ebp                                #! PC = 0x5555555555ca *)
mov ebp r8;
(* ror    $0xb,%ebp                                #! PC = 0x5555555555cd *)
ror ebp@uint32 ebp 0xb;
(* xor    %ebx,%ebp                                #! PC = 0x5555555555d0 *)
xor ebp@uint32 ebp ebx;
(* mov    %r8d,%ebx                                #! PC = 0x5555555555d2 *)
mov ebx r8;
(* rol    $0x7,%ebx                                #! PC = 0x5555555555d5 *)
rol ebx@uint32 ebx 0x7;
(* xor    %ebx,%ebp                                #! PC = 0x5555555555d8 *)
xor ebp@uint32 ebp ebx;
(* lea    0x59f111f1(%r11,%rsi,1),%ebx             #! PC = 0x5555555555da *)
adds dc tmp 0x59f111f1@uint32 r11;
adds dc ebx esi tmp;
(* add    %ebp,%ebx                                #! PC = 0x5555555555e2 *)
adds dc ebx ebx ebp;
(* mov    %r8d,%r11d                               #! PC = 0x5555555555e4 *)
mov r11 r8;
(* not    %r11d                                    #! PC = 0x5555555555e7 *)
not r11@uint32 r11;
(* and    %r10d,%r11d                              #! PC = 0x5555555555ea *)
and r11@uint32 r11 r10;
(* mov    %r9d,%ebp                                #! PC = 0x5555555555ed *)
mov ebp r9;
(* and    %r8d,%ebp                                #! PC = 0x5555555555f0 *)
and ebp@uint32 ebp r8;
(* xor    %ebp,%r11d                               #! PC = 0x5555555555f3 *)
xor r11@uint32 r11 ebp;
(* add    %ebx,%r11d                               #! PC = 0x5555555555f6 *)
adds dc r11 r11 ebx;
(* mov    %edi,%ebp                                #! PC = 0x5555555555f9 *)
mov ebp edi;
(* ror    $0x2,%ebp                                #! PC = 0x5555555555fb *)
ror ebp@uint32 ebp 0x2;
(* mov    %edi,%ebx                                #! PC = 0x5555555555fe *)
mov ebx edi;
(* ror    $0xd,%ebx                                #! PC = 0x555555555600 *)
ror ebx@uint32 ebx 0xd;
(* xor    %ebp,%ebx                                #! PC = 0x555555555603 *)
xor ebx@uint32 ebx ebp;
(* mov    %edi,%ebp                                #! PC = 0x555555555605 *)
mov ebp edi;
(* rol    $0xa,%ebp                                #! PC = 0x555555555607 *)
rol ebp@uint32 ebp 0xa;
(* xor    %ebp,%ebx                                #! PC = 0x55555555560a *)
xor ebx@uint32 ebx ebp;
(* mov    %edx,%esi                                #! PC = 0x55555555560c *)
mov esi edx;
(* xor    %eax,%esi                                #! PC = 0x55555555560e *)
xor esi@uint32 esi eax;
(* and    %edi,%esi                                #! PC = 0x555555555610 *)
and esi@uint32 esi edi;
(* mov    %edx,%ebp                                #! PC = 0x555555555612 *)
mov ebp edx;
(* and    %eax,%ebp                                #! PC = 0x555555555614 *)
and ebp@uint32 ebp eax;
(* xor    %esi,%ebp                                #! PC = 0x555555555616 *)
xor ebp@uint32 ebp esi;
(* add    %ebx,%ebp                                #! PC = 0x555555555618 *)
adds dc ebp ebp ebx;
(* add    %r11d,%ecx                               #! PC = 0x55555555561a *)
adds dc ecx ecx r11;
(* add    %r11d,%ebp                               #! PC = 0x55555555561d *)
adds dc ebp ebp r11;
(* movzbl 0x18(%r15),%esi                          #! EA = L0x5555555590a0; Value = 0x0000000000000000; PC = 0x555555555620 *)
cast esi@uint32 L0x5555555590a0;
(* shl    $0x18,%esi                               #! PC = 0x555555555625 *)
split dc esi esi (32-0x18);
shl esi esi 0x18@uint32;
(* movzbl 0x1b(%r15),%r11d                         #! EA = L0x5555555590a3; Value = 0x0000000000000000; PC = 0x555555555628 *)
cast r11@uint32 L0x5555555590a3;
(* or     %r11d,%esi                               #! PC = 0x55555555562d *)
or esi@uint32 esi r11;
(* movzbl 0x19(%r15),%r11d                         #! EA = L0x5555555590a1; Value = 0x0000000000000000; PC = 0x555555555630 *)
cast r11@uint32 L0x5555555590a1;
(* shl    $0x10,%r11                               #! PC = 0x555555555635 *)
split dc r11 r11 (32-0x10);
shl r11 r11 0x10@uint32;
(* or     %r11d,%esi                               #! PC = 0x555555555639 *)
or esi@uint32 esi r11;
(* movzbl 0x1a(%r15),%r11d                         #! EA = L0x5555555590a2; Value = 0x0000000000000000; PC = 0x55555555563c *)
cast r11@uint32 L0x5555555590a2;
(* shl    $0x8,%r11                                #! PC = 0x555555555641 *)
split dc r11 r11 (32-0x8);
shl r11 r11 0x8@uint32;
(* or     %r11d,%esi                               #! PC = 0x555555555645 *)
or esi@uint32 esi r11;
(* mov    %esi,0x88(%rsp)                          #! EA = L0x7fffffffdf88; PC = 0x555555555648 *)
mov L0x7fffffffdf88 esi;
(* mov    %ecx,%ebx                                #! PC = 0x55555555564f *)
mov ebx ecx;
(* ror    $0x6,%ebx                                #! PC = 0x555555555651 *)
ror ebx@uint32 ebx 0x6;
(* mov    %ecx,%r11d                               #! PC = 0x555555555654 *)
mov r11 ecx;
(* ror    $0xb,%r11d                               #! PC = 0x555555555657 *)
ror r11@uint32 r11 0xb;
(* xor    %ebx,%r11d                               #! PC = 0x55555555565b *)
xor r11@uint32 r11 ebx;
(* mov    %ecx,%ebx                                #! PC = 0x55555555565e *)
mov ebx ecx;
(* rol    $0x7,%ebx                                #! PC = 0x555555555660 *)
rol ebx@uint32 ebx 0x7;
(* xor    %ebx,%r11d                               #! PC = 0x555555555663 *)
xor r11@uint32 r11 ebx;
(* lea    -0x6dc07d5c(%r10,%rsi,1),%ebx            #! PC = 0x555555555666 *)
subs dc tmp r10 0x6dc07d5c@uint32;
adds dc ebx esi tmp;
(* add    %r11d,%ebx                               #! PC = 0x55555555566e *)
adds dc ebx ebx r11;
(* mov    %ecx,%r10d                               #! PC = 0x555555555671 *)
mov r10 ecx;
(* not    %r10d                                    #! PC = 0x555555555674 *)
not r10@uint32 r10;
(* and    %r9d,%r10d                               #! PC = 0x555555555677 *)
and r10@uint32 r10 r9;
(* mov    %r8d,%r11d                               #! PC = 0x55555555567a *)
mov r11 r8;
(* and    %ecx,%r11d                               #! PC = 0x55555555567d *)
and r11@uint32 r11 ecx;
(* xor    %r11d,%r10d                              #! PC = 0x555555555680 *)
xor r10@uint32 r10 r11;
(* add    %ebx,%r10d                               #! PC = 0x555555555683 *)
adds dc r10 r10 ebx;
(* mov    %ebp,%r11d                               #! PC = 0x555555555686 *)
mov r11 ebp;
(* ror    $0x2,%r11d                               #! PC = 0x555555555689 *)
ror r11@uint32 r11 0x2;
(* mov    %ebp,%ebx                                #! PC = 0x55555555568d *)
mov ebx ebp;
(* ror    $0xd,%ebx                                #! PC = 0x55555555568f *)
ror ebx@uint32 ebx 0xd;
(* xor    %r11d,%ebx                               #! PC = 0x555555555692 *)
xor ebx@uint32 ebx r11;
(* mov    %ebp,%r11d                               #! PC = 0x555555555695 *)
mov r11 ebp;
(* rol    $0xa,%r11d                               #! PC = 0x555555555698 *)
rol r11@uint32 r11 0xa;
(* xor    %r11d,%ebx                               #! PC = 0x55555555569c *)
xor ebx@uint32 ebx r11;
(* mov    %eax,%esi                                #! PC = 0x55555555569f *)
mov esi eax;
(* xor    %edi,%esi                                #! PC = 0x5555555556a1 *)
xor esi@uint32 esi edi;
(* and    %ebp,%esi                                #! PC = 0x5555555556a3 *)
and esi@uint32 esi ebp;
(* mov    %eax,%r11d                               #! PC = 0x5555555556a5 *)
mov r11 eax;
(* and    %edi,%r11d                               #! PC = 0x5555555556a8 *)
and r11@uint32 r11 edi;
(* xor    %esi,%r11d                               #! PC = 0x5555555556ab *)
xor r11@uint32 r11 esi;
(* add    %ebx,%r11d                               #! PC = 0x5555555556ae *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r10,1),%esi                       #! PC = 0x5555555556b1 *)
adds dc esi edx r10;
(* add    %r10d,%r11d                              #! PC = 0x5555555556b5 *)
adds dc r11 r11 r10;
(* movzbl 0x1c(%r15),%edx                          #! EA = L0x5555555590a4; Value = 0x0000000000000000; PC = 0x5555555556b8 *)
cast edx@uint32 L0x5555555590a4;
(* shl    $0x18,%edx                               #! PC = 0x5555555556bd *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x1f(%r15),%r10d                         #! EA = L0x5555555590a7; Value = 0x0000000000000000; PC = 0x5555555556c0 *)
cast r10@uint32 L0x5555555590a7;
(* or     %r10d,%edx                               #! PC = 0x5555555556c5 *)
or edx@uint32 edx r10;
(* movzbl 0x1d(%r15),%r10d                         #! EA = L0x5555555590a5; Value = 0x0000000000000000; PC = 0x5555555556c8 *)
cast r10@uint32 L0x5555555590a5;
(* shl    $0x10,%r10                               #! PC = 0x5555555556cd *)
split dc r10 r10 (32-0x10);
shl r10 r10 0x10@uint32;
(* or     %r10d,%edx                               #! PC = 0x5555555556d1 *)
or edx@uint32 edx r10;
(* movzbl 0x1e(%r15),%r10d                         #! EA = L0x5555555590a6; Value = 0x0000000000000000; PC = 0x5555555556d4 *)
cast r10@uint32 L0x5555555590a6;
(* shl    $0x8,%r10                                #! PC = 0x5555555556d9 *)
split dc r10 r10 (32-0x8);
shl r10 r10 0x8@uint32;
(* or     %r10d,%edx                               #! PC = 0x5555555556dd *)
or edx@uint32 edx r10;
(* mov    %edx,0x8c(%rsp)                          #! EA = L0x7fffffffdf8c; PC = 0x5555555556e0 *)
mov L0x7fffffffdf8c edx;
(* mov    %esi,%r10d                               #! PC = 0x5555555556e7 *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x5555555556ea *)
ror r10@uint32 r10 0x6;
(* mov    %esi,%ebx                                #! PC = 0x5555555556ee *)
mov ebx esi;
(* ror    $0xb,%ebx                                #! PC = 0x5555555556f0 *)
ror ebx@uint32 ebx 0xb;
(* xor    %r10d,%ebx                               #! PC = 0x5555555556f3 *)
xor ebx@uint32 ebx r10;
(* mov    %esi,%r10d                               #! PC = 0x5555555556f6 *)
mov r10 esi;
(* rol    $0x7,%r10d                               #! PC = 0x5555555556f9 *)
rol r10@uint32 r10 0x7;
(* xor    %r10d,%ebx                               #! PC = 0x5555555556fd *)
xor ebx@uint32 ebx r10;
(* lea    -0x54e3a12b(%r9,%rdx,1),%r10d            #! PC = 0x555555555700 *)
subs dc tmp r9 0x54e3a12b@uint32;
adds dc r10 edx tmp;
(* add    %ebx,%r10d                               #! PC = 0x555555555708 *)
adds dc r10 r10 ebx;
(* mov    %esi,%r9d                                #! PC = 0x55555555570b *)
mov r9 esi;
(* not    %r9d                                     #! PC = 0x55555555570e *)
not r9@uint32 r9;
(* and    %r8d,%r9d                                #! PC = 0x555555555711 *)
and r9@uint32 r9 r8;
(* mov    %ecx,%ebx                                #! PC = 0x555555555714 *)
mov ebx ecx;
(* and    %esi,%ebx                                #! PC = 0x555555555716 *)
and ebx@uint32 ebx esi;
(* xor    %ebx,%r9d                                #! PC = 0x555555555718 *)
xor r9@uint32 r9 ebx;
(* add    %r10d,%r9d                               #! PC = 0x55555555571b *)
adds dc r9 r9 r10;
(* mov    %r11d,%ebx                               #! PC = 0x55555555571e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555555721 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%r10d                              #! PC = 0x555555555724 *)
mov r10 r11;
(* ror    $0xd,%r10d                               #! PC = 0x555555555727 *)
ror r10@uint32 r10 0xd;
(* xor    %ebx,%r10d                               #! PC = 0x55555555572b *)
xor r10@uint32 r10 ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555572e *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x555555555731 *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%r10d                               #! PC = 0x555555555734 *)
xor r10@uint32 r10 ebx;
(* mov    %edi,%edx                                #! PC = 0x555555555737 *)
mov edx edi;
(* xor    %ebp,%edx                                #! PC = 0x555555555739 *)
xor edx@uint32 edx ebp;
(* and    %r11d,%edx                               #! PC = 0x55555555573b *)
and edx@uint32 edx r11;
(* mov    %edi,%ebx                                #! PC = 0x55555555573e *)
mov ebx edi;
(* and    %ebp,%ebx                                #! PC = 0x555555555740 *)
and ebx@uint32 ebx ebp;
(* xor    %edx,%ebx                                #! PC = 0x555555555742 *)
xor ebx@uint32 ebx edx;
(* add    %r10d,%ebx                               #! PC = 0x555555555744 *)
adds dc ebx ebx r10;
(* add    %r9d,%eax                                #! PC = 0x555555555747 *)
adds dc eax eax r9;
(* add    %r9d,%ebx                                #! PC = 0x55555555574a *)
adds dc ebx ebx r9;
(* movzbl 0x20(%r15),%edx                          #! EA = L0x5555555590a8; Value = 0x0000000000000000; PC = 0x55555555574d *)
cast edx@uint32 L0x5555555590a8;
(* shl    $0x18,%edx                               #! PC = 0x555555555752 *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x23(%r15),%r9d                          #! EA = L0x5555555590ab; Value = 0x0000000000000000; PC = 0x555555555755 *)
cast r9@uint32 L0x5555555590ab;
(* or     %r9d,%edx                                #! PC = 0x55555555575a *)
or edx@uint32 edx r9;
(* movzbl 0x21(%r15),%r9d                          #! EA = L0x5555555590a9; Value = 0x0000000000000000; PC = 0x55555555575d *)
cast r9@uint32 L0x5555555590a9;
(* shl    $0x10,%r9                                #! PC = 0x555555555762 *)
split dc r9 r9 (32-0x10);
shl r9 r9 0x10@uint32;
(* or     %r9d,%edx                                #! PC = 0x555555555766 *)
or edx@uint32 edx r9;
(* movzbl 0x22(%r15),%r9d                          #! EA = L0x5555555590aa; Value = 0x0000000000000000; PC = 0x555555555769 *)
cast r9@uint32 L0x5555555590aa;
(* shl    $0x8,%r9                                 #! PC = 0x55555555576e *)
split dc r9 r9 (32-0x8);
shl r9 r9 0x8@uint32;
(* or     %r9d,%edx                                #! PC = 0x555555555772 *)
or edx@uint32 edx r9;
(* mov    %edx,0x90(%rsp)                          #! EA = L0x7fffffffdf90; PC = 0x555555555775 *)
mov L0x7fffffffdf90 edx;
(* mov    %eax,%r9d                                #! PC = 0x55555555577c *)
mov r9 eax;
(* ror    $0x6,%r9d                                #! PC = 0x55555555577f *)
ror r9@uint32 r9 0x6;
(* mov    %eax,%r12d                               #! PC = 0x555555555783 *)
mov r12 eax;
(* ror    $0xb,%r12d                               #! PC = 0x555555555786 *)
ror r12@uint32 r12 0xb;
(* xor    %r9d,%r12d                               #! PC = 0x55555555578a *)
xor r12@uint32 r12 r9;
(* mov    %eax,%r9d                                #! PC = 0x55555555578d *)
mov r9 eax;
(* rol    $0x7,%r9d                                #! PC = 0x555555555790 *)
rol r9@uint32 r9 0x7;
(* xor    %r12d,%r9d                               #! PC = 0x555555555794 *)
xor r9@uint32 r9 r12;
(* lea    -0x27f85568(%r8,%rdx,1),%edx             #! PC = 0x555555555797 *)
subs dc tmp r8 0x27f85568@uint32;
adds dc edx edx tmp;
(* add    %r9d,%edx                                #! PC = 0x55555555579f *)
adds dc edx edx r9;
(* mov    %eax,%r12d                               #! PC = 0x5555555557a2 *)
mov r12 eax;
(* not    %r12d                                    #! PC = 0x5555555557a5 *)
not r12@uint32 r12;
(* and    %ecx,%r12d                               #! PC = 0x5555555557a8 *)
and r12@uint32 r12 ecx;
(* mov    %esi,%r9d                                #! PC = 0x5555555557ab *)
mov r9 esi;
(* and    %eax,%r9d                                #! PC = 0x5555555557ae *)
and r9@uint32 r9 eax;
(* xor    %r12d,%r9d                               #! PC = 0x5555555557b1 *)
xor r9@uint32 r9 r12;
(* add    %edx,%r9d                                #! PC = 0x5555555557b4 *)
adds dc r9 r9 edx;
(* mov    %ebx,%r12d                               #! PC = 0x5555555557b7 *)
mov r12 ebx;
(* ror    $0x2,%r12d                               #! PC = 0x5555555557ba *)
ror r12@uint32 r12 0x2;
(* mov    %ebx,%r10d                               #! PC = 0x5555555557be *)
mov r10 ebx;
(* ror    $0xd,%r10d                               #! PC = 0x5555555557c1 *)
ror r10@uint32 r10 0xd;
(* xor    %r12d,%r10d                              #! PC = 0x5555555557c5 *)
xor r10@uint32 r10 r12;
(* mov    %ebx,%r12d                               #! PC = 0x5555555557c8 *)
mov r12 ebx;
(* rol    $0xa,%r12d                               #! PC = 0x5555555557cb *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%r10d                              #! PC = 0x5555555557cf *)
xor r10@uint32 r10 r12;
(* mov    %ebp,%r8d                                #! PC = 0x5555555557d2 *)
mov r8 ebp;
(* xor    %r11d,%r8d                               #! PC = 0x5555555557d5 *)
xor r8@uint32 r8 r11;
(* and    %ebx,%r8d                                #! PC = 0x5555555557d8 *)
and r8@uint32 r8 ebx;
(* mov    %ebp,%r12d                               #! PC = 0x5555555557db *)
mov r12 ebp;
(* and    %r11d,%r12d                              #! PC = 0x5555555557de *)
and r12@uint32 r12 r11;
(* xor    %r8d,%r12d                               #! PC = 0x5555555557e1 *)
xor r12@uint32 r12 r8;
(* add    %r10d,%r12d                              #! PC = 0x5555555557e4 *)
adds dc r12 r12 r10;
(* add    %r9d,%edi                                #! PC = 0x5555555557e7 *)
adds dc edi edi r9;
(* add    %r9d,%r12d                               #! PC = 0x5555555557ea *)
adds dc r12 r12 r9;
(* movzbl 0x24(%r15),%edx                          #! EA = L0x5555555590ac; Value = 0x0000000000000000; PC = 0x5555555557ed *)
cast edx@uint32 L0x5555555590ac;
(* shl    $0x18,%edx                               #! PC = 0x5555555557f2 *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x27(%r15),%r8d                          #! EA = L0x5555555590af; Value = 0x0000000000000000; PC = 0x5555555557f5 *)
cast r8@uint32 L0x5555555590af;
(* or     %r8d,%edx                                #! PC = 0x5555555557fa *)
or edx@uint32 edx r8;
(* movzbl 0x25(%r15),%r8d                          #! EA = L0x5555555590ad; Value = 0x0000000000000000; PC = 0x5555555557fd *)
cast r8@uint32 L0x5555555590ad;
(* shl    $0x10,%r8                                #! PC = 0x555555555802 *)
split dc r8 r8 (32-0x10);
shl r8 r8 0x10@uint32;
(* or     %r8d,%edx                                #! PC = 0x555555555806 *)
or edx@uint32 edx r8;
(* movzbl 0x26(%r15),%r8d                          #! EA = L0x5555555590ae; Value = 0x0000000000000000; PC = 0x555555555809 *)
cast r8@uint32 L0x5555555590ae;
(* shl    $0x8,%r8                                 #! PC = 0x55555555580e *)
split dc r8 r8 (32-0x8);
shl r8 r8 0x8@uint32;
(* or     %r8d,%edx                                #! PC = 0x555555555812 *)
or edx@uint32 edx r8;
(* mov    %edx,0x94(%rsp)                          #! EA = L0x7fffffffdf94; PC = 0x555555555815 *)
mov L0x7fffffffdf94 edx;
(* mov    %edi,%r14d                               #! PC = 0x55555555581c *)
mov r14 edi;
(* ror    $0x6,%r14d                               #! PC = 0x55555555581f *)
ror r14@uint32 r14 0x6;
(* mov    %edi,%r8d                                #! PC = 0x555555555823 *)
mov r8 edi;
(* ror    $0xb,%r8d                                #! PC = 0x555555555826 *)
ror r8@uint32 r8 0xb;
(* xor    %r14d,%r8d                               #! PC = 0x55555555582a *)
xor r8@uint32 r8 r14;
(* mov    %edi,%r14d                               #! PC = 0x55555555582d *)
mov r14 edi;
(* rol    $0x7,%r14d                               #! PC = 0x555555555830 *)
rol r14@uint32 r14 0x7;
(* xor    %r14d,%r8d                               #! PC = 0x555555555834 *)
xor r8@uint32 r8 r14;
(* lea    0x12835b01(%rcx,%rdx,1),%r14d            #! PC = 0x555555555837 *)
adds dc tmp 0x12835b01@uint32 ecx;
adds dc r14 edx tmp;
(* add    %r8d,%r14d                               #! PC = 0x55555555583f *)
adds dc r14 r14 r8;
(* mov    %edi,%ecx                                #! PC = 0x555555555842 *)
mov ecx edi;
(* not    %ecx                                     #! PC = 0x555555555844 *)
not ecx@uint32 ecx;
(* and    %esi,%ecx                                #! PC = 0x555555555846 *)
and ecx@uint32 ecx esi;
(* mov    %eax,%r8d                                #! PC = 0x555555555848 *)
mov r8 eax;
(* and    %edi,%r8d                                #! PC = 0x55555555584b *)
and r8@uint32 r8 edi;
(* xor    %ecx,%r8d                                #! PC = 0x55555555584e *)
xor r8@uint32 r8 ecx;
(* add    %r14d,%r8d                               #! PC = 0x555555555851 *)
adds dc r8 r8 r14;
(* mov    %r12d,%ecx                               #! PC = 0x555555555854 *)
mov ecx r12;
(* ror    $0x2,%ecx                                #! PC = 0x555555555857 *)
ror ecx@uint32 ecx 0x2;
(* mov    %r12d,%r9d                               #! PC = 0x55555555585a *)
mov r9 r12;
(* ror    $0xd,%r9d                                #! PC = 0x55555555585d *)
ror r9@uint32 r9 0xd;
(* xor    %ecx,%r9d                                #! PC = 0x555555555861 *)
xor r9@uint32 r9 ecx;
(* mov    %r12d,%ecx                               #! PC = 0x555555555864 *)
mov ecx r12;
(* rol    $0xa,%ecx                                #! PC = 0x555555555867 *)
rol ecx@uint32 ecx 0xa;
(* xor    %ecx,%r9d                                #! PC = 0x55555555586a *)
xor r9@uint32 r9 ecx;
(* mov    %r11d,%edx                               #! PC = 0x55555555586d *)
mov edx r11;
(* xor    %ebx,%edx                                #! PC = 0x555555555870 *)
xor edx@uint32 edx ebx;
(* and    %r12d,%edx                               #! PC = 0x555555555872 *)
and edx@uint32 edx r12;
(* mov    %r11d,%ecx                               #! PC = 0x555555555875 *)
mov ecx r11;
(* and    %ebx,%ecx                                #! PC = 0x555555555878 *)
and ecx@uint32 ecx ebx;
(* xor    %edx,%ecx                                #! PC = 0x55555555587a *)
xor ecx@uint32 ecx edx;
(* add    %r9d,%ecx                                #! PC = 0x55555555587c *)
adds dc ecx ecx r9;
(* add    %r8d,%ebp                                #! PC = 0x55555555587f *)
adds dc ebp ebp r8;
(* add    %r8d,%ecx                                #! PC = 0x555555555882 *)
adds dc ecx ecx r8;
(* mov    %r15,%r14                                #! PC = 0x555555555885 *)
mov r14 r15;
(* movzbl 0x28(%r15),%edx                          #! EA = L0x5555555590b0; Value = 0x0000000000000000; PC = 0x555555555888 *)
cast edx@uint32 L0x5555555590b0;
(* shl    $0x18,%edx                               #! PC = 0x55555555588d *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x2b(%r15),%r8d                          #! EA = L0x5555555590b3; Value = 0x0000000000000000; PC = 0x555555555890 *)
cast r8@uint32 L0x5555555590b3;
(* or     %r8d,%edx                                #! PC = 0x555555555895 *)
or edx@uint32 edx r8;
(* movzbl 0x29(%r15),%r8d                          #! EA = L0x5555555590b1; Value = 0x0000000000000000; PC = 0x555555555898 *)
cast r8@uint32 L0x5555555590b1;
(* shl    $0x10,%r8                                #! PC = 0x55555555589d *)
split dc r8 r8 (32-0x10);
shl r8 r8 0x10@uint32;
(* or     %r8d,%edx                                #! PC = 0x5555555558a1 *)
or edx@uint32 edx r8;
(* movzbl 0x2a(%r15),%r8d                          #! EA = L0x5555555590b2; Value = 0x0000000000000000; PC = 0x5555555558a4 *)
cast r8@uint32 L0x5555555590b2;
(* shl    $0x8,%r8                                 #! PC = 0x5555555558a9 *)
split dc r8 r8 (32-0x8);
shl r8 r8 0x8@uint32;
(* or     %r8d,%edx                                #! PC = 0x5555555558ad *)
or edx@uint32 edx r8;
(* mov    %edx,0x98(%rsp)                          #! EA = L0x7fffffffdf98; PC = 0x5555555558b0 *)
mov L0x7fffffffdf98 edx;
(* mov    %ebp,%r8d                                #! PC = 0x5555555558b7 *)
mov r8 ebp;
(* ror    $0x6,%r8d                                #! PC = 0x5555555558ba *)
ror r8@uint32 r8 0x6;
(* mov    %ebp,%r15d                               #! PC = 0x5555555558be *)
mov r15 ebp;
(* ror    $0xb,%r15d                               #! PC = 0x5555555558c1 *)
ror r15@uint32 r15 0xb;
(* xor    %r8d,%r15d                               #! PC = 0x5555555558c5 *)
xor r15@uint32 r15 r8;
(* mov    %ebp,%r8d                                #! PC = 0x5555555558c8 *)
mov r8 ebp;
(* rol    $0x7,%r8d                                #! PC = 0x5555555558cb *)
rol r8@uint32 r8 0x7;
(* xor    %r8d,%r15d                               #! PC = 0x5555555558cf *)
xor r15@uint32 r15 r8;
(* lea    0x243185be(%rsi,%rdx,1),%r8d             #! PC = 0x5555555558d2 *)
adds dc tmp 0x243185be@uint32 esi;
adds dc r8 edx tmp;
(* add    %r15d,%r8d                               #! PC = 0x5555555558da *)
adds dc r8 r8 r15;
(* mov    %ebp,%r15d                               #! PC = 0x5555555558dd *)
mov r15 ebp;
(* not    %r15d                                    #! PC = 0x5555555558e0 *)
not r15@uint32 r15;
(* and    %eax,%r15d                               #! PC = 0x5555555558e3 *)
and r15@uint32 r15 eax;
(* mov    %edi,%edx                                #! PC = 0x5555555558e6 *)
mov edx edi;
(* and    %ebp,%edx                                #! PC = 0x5555555558e8 *)
and edx@uint32 edx ebp;
(* xor    %r15d,%edx                               #! PC = 0x5555555558ea *)
xor edx@uint32 edx r15;
(* add    %r8d,%edx                                #! PC = 0x5555555558ed *)
adds dc edx edx r8;
(* mov    %ecx,%r15d                               #! PC = 0x5555555558f0 *)
mov r15 ecx;
(* ror    $0x2,%r15d                               #! PC = 0x5555555558f3 *)
ror r15@uint32 r15 0x2;
(* mov    %ecx,%r8d                                #! PC = 0x5555555558f7 *)
mov r8 ecx;
(* ror    $0xd,%r8d                                #! PC = 0x5555555558fa *)
ror r8@uint32 r8 0xd;
(* xor    %r15d,%r8d                               #! PC = 0x5555555558fe *)
xor r8@uint32 r8 r15;
(* mov    %ecx,%r15d                               #! PC = 0x555555555901 *)
mov r15 ecx;
(* rol    $0xa,%r15d                               #! PC = 0x555555555904 *)
rol r15@uint32 r15 0xa;
(* xor    %r15d,%r8d                               #! PC = 0x555555555908 *)
xor r8@uint32 r8 r15;
(* mov    %ebx,%esi                                #! PC = 0x55555555590b *)
mov esi ebx;
(* xor    %r12d,%esi                               #! PC = 0x55555555590d *)
xor esi@uint32 esi r12;
(* and    %ecx,%esi                                #! PC = 0x555555555910 *)
and esi@uint32 esi ecx;
(* mov    %ebx,%r15d                               #! PC = 0x555555555912 *)
mov r15 ebx;
(* and    %r12d,%r15d                              #! PC = 0x555555555915 *)
and r15@uint32 r15 r12;
(* xor    %esi,%r15d                               #! PC = 0x555555555918 *)
xor r15@uint32 r15 esi;
(* add    %r8d,%r15d                               #! PC = 0x55555555591b *)
adds dc r15 r15 r8;
(* add    %edx,%r11d                               #! PC = 0x55555555591e *)
adds dc r11 r11 edx;
(* add    %edx,%r15d                               #! PC = 0x555555555921 *)
adds dc r15 r15 edx;
(* movzbl 0x2c(%r14),%edx                          #! EA = L0x5555555590b4; Value = 0x0000000000000000; PC = 0x555555555924 *)
cast edx@uint32 L0x5555555590b4;
(* shl    $0x18,%edx                               #! PC = 0x555555555929 *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x2f(%r14),%esi                          #! EA = L0x5555555590b7; Value = 0x0000000000000000; PC = 0x55555555592c *)
cast esi@uint32 L0x5555555590b7;
(* or     %esi,%edx                                #! PC = 0x555555555931 *)
or edx@uint32 edx esi;
(* movzbl 0x2d(%r14),%esi                          #! EA = L0x5555555590b5; Value = 0x0000000000000000; PC = 0x555555555933 *)
cast esi@uint32 L0x5555555590b5;
(* shl    $0x10,%rsi                               #! PC = 0x555555555938 *)
split dc esi esi (32-0x10);
shl esi esi 0x10@uint32;
(* or     %esi,%edx                                #! PC = 0x55555555593c *)
or edx@uint32 edx esi;
(* movzbl 0x2e(%r14),%esi                          #! EA = L0x5555555590b6; Value = 0x0000000000000000; PC = 0x55555555593e *)
cast esi@uint32 L0x5555555590b6;
(* shl    $0x8,%rsi                                #! PC = 0x555555555943 *)
split dc esi esi (32-0x8);
shl esi esi 0x8@uint32;
(* or     %esi,%edx                                #! PC = 0x555555555947 *)
or edx@uint32 edx esi;
(* mov    %edx,0x9c(%rsp)                          #! EA = L0x7fffffffdf9c; PC = 0x555555555949 *)
mov L0x7fffffffdf9c edx;
(* mov    %r11d,%esi                               #! PC = 0x555555555950 *)
mov esi r11;
(* ror    $0x6,%esi                                #! PC = 0x555555555953 *)
ror esi@uint32 esi 0x6;
(* mov    %r11d,%r9d                               #! PC = 0x555555555956 *)
mov r9 r11;
(* ror    $0xb,%r9d                                #! PC = 0x555555555959 *)
ror r9@uint32 r9 0xb;
(* xor    %esi,%r9d                                #! PC = 0x55555555595d *)
xor r9@uint32 r9 esi;
(* mov    %r11d,%esi                               #! PC = 0x555555555960 *)
mov esi r11;
(* rol    $0x7,%esi                                #! PC = 0x555555555963 *)
rol esi@uint32 esi 0x7;
(* xor    %esi,%r9d                                #! PC = 0x555555555966 *)
xor r9@uint32 r9 esi;
(* lea    0x550c7dc3(%rax,%rdx,1),%esi             #! PC = 0x555555555969 *)
adds dc tmp 0x550c7dc3@uint32 eax;
adds dc esi edx tmp;
(* add    %r9d,%esi                                #! PC = 0x555555555970 *)
adds dc esi esi r9;
(* mov    %r11d,%r9d                               #! PC = 0x555555555973 *)
mov r9 r11;
(* not    %r9d                                     #! PC = 0x555555555976 *)
not r9@uint32 r9;
(* and    %edi,%r9d                                #! PC = 0x555555555979 *)
and r9@uint32 r9 edi;
(* mov    %ebp,%edx                                #! PC = 0x55555555597c *)
mov edx ebp;
(* and    %r11d,%edx                               #! PC = 0x55555555597e *)
and edx@uint32 edx r11;
(* xor    %r9d,%edx                                #! PC = 0x555555555981 *)
xor edx@uint32 edx r9;
(* add    %esi,%edx                                #! PC = 0x555555555984 *)
adds dc edx edx esi;
(* mov    %r15d,%r9d                               #! PC = 0x555555555986 *)
mov r9 r15;
(* ror    $0x2,%r9d                                #! PC = 0x555555555989 *)
ror r9@uint32 r9 0x2;
(* mov    %r15d,%esi                               #! PC = 0x55555555598d *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555990 *)
ror esi@uint32 esi 0xd;
(* xor    %r9d,%esi                                #! PC = 0x555555555993 *)
xor esi@uint32 esi r9;
(* mov    %r15d,%r9d                               #! PC = 0x555555555996 *)
mov r9 r15;
(* rol    $0xa,%r9d                                #! PC = 0x555555555999 *)
rol r9@uint32 r9 0xa;
(* xor    %r9d,%esi                                #! PC = 0x55555555599d *)
xor esi@uint32 esi r9;
(* mov    %r12d,%eax                               #! PC = 0x5555555559a0 *)
mov eax r12;
(* xor    %ecx,%eax                                #! PC = 0x5555555559a3 *)
xor eax@uint32 eax ecx;
(* and    %r15d,%eax                               #! PC = 0x5555555559a5 *)
and eax@uint32 eax r15;
(* mov    %r12d,%r9d                               #! PC = 0x5555555559a8 *)
mov r9 r12;
(* and    %ecx,%r9d                                #! PC = 0x5555555559ab *)
and r9@uint32 r9 ecx;
(* xor    %eax,%r9d                                #! PC = 0x5555555559ae *)
xor r9@uint32 r9 eax;
(* add    %esi,%r9d                                #! PC = 0x5555555559b1 *)
adds dc r9 r9 esi;
(* lea    (%rbx,%rdx,1),%r13d                      #! PC = 0x5555555559b4 *)
adds dc r13 ebx edx;
(* add    %edx,%r9d                                #! PC = 0x5555555559b8 *)
adds dc r9 r9 edx;
(* mov    %r14,%rbx                                #! PC = 0x5555555559bb *)
mov ebx r14;
(* movzbl 0x30(%r14),%eax                          #! EA = L0x5555555590b8; Value = 0x0000000000000000; PC = 0x5555555559be *)
cast eax@uint32 L0x5555555590b8;
(* shl    $0x18,%eax                               #! PC = 0x5555555559c3 *)
split dc eax eax (32-0x18);
shl eax eax 0x18@uint32;
(* movzbl 0x33(%r14),%edx                          #! EA = L0x5555555590bb; Value = 0x0000000000000000; PC = 0x5555555559c6 *)
cast edx@uint32 L0x5555555590bb;
(* or     %edx,%eax                                #! PC = 0x5555555559cb *)
or eax@uint32 eax edx;
(* movzbl 0x31(%r14),%edx                          #! EA = L0x5555555590b9; Value = 0x0000000000000000; PC = 0x5555555559cd *)
cast edx@uint32 L0x5555555590b9;
(* shl    $0x10,%rdx                               #! PC = 0x5555555559d2 *)
split dc edx edx (32-0x10);
shl edx edx 0x10@uint32;
(* or     %edx,%eax                                #! PC = 0x5555555559d6 *)
or eax@uint32 eax edx;
(* movzbl 0x32(%r14),%edx                          #! EA = L0x5555555590ba; Value = 0x0000000000000000; PC = 0x5555555559d8 *)
cast edx@uint32 L0x5555555590ba;
(* shl    $0x8,%rdx                                #! PC = 0x5555555559dd *)
split dc edx edx (32-0x8);
shl edx edx 0x8@uint32;
(* or     %edx,%eax                                #! PC = 0x5555555559e1 *)
or eax@uint32 eax edx;
(* mov    %eax,0xa0(%rsp)                          #! EA = L0x7fffffffdfa0; PC = 0x5555555559e3 *)
mov L0x7fffffffdfa0 eax;
(* mov    %r13d,%r8d                               #! PC = 0x5555555559ea *)
mov r8 r13;
(* ror    $0x6,%r8d                                #! PC = 0x5555555559ed *)
ror r8@uint32 r8 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x5555555559f1 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x5555555559f4 *)
ror r10@uint32 r10 0xb;
(* xor    %r8d,%r10d                               #! PC = 0x5555555559f8 *)
xor r10@uint32 r10 r8;
(* mov    %r13d,%r8d                               #! PC = 0x5555555559fb *)
mov r8 r13;
(* rol    $0x7,%r8d                                #! PC = 0x5555555559fe *)
rol r8@uint32 r8 0x7;
(* xor    %r8d,%r10d                               #! PC = 0x555555555a02 *)
xor r10@uint32 r10 r8;
(* lea    0x72be5d74(%rdi,%rax,1),%r14d            #! PC = 0x555555555a05 *)
adds dc tmp 0x72be5d74@uint32 edi;
adds dc r14 eax tmp;
(* add    %r10d,%r14d                              #! PC = 0x555555555a0d *)
adds dc r14 r14 r10;
(* mov    %r13d,%r10d                              #! PC = 0x555555555a10 *)
mov r10 r13;
(* not    %r10d                                    #! PC = 0x555555555a13 *)
not r10@uint32 r10;
(* and    %ebp,%r10d                               #! PC = 0x555555555a16 *)
and r10@uint32 r10 ebp;
(* mov    %r11d,%r8d                               #! PC = 0x555555555a19 *)
mov r8 r11;
(* and    %r13d,%r8d                               #! PC = 0x555555555a1c *)
and r8@uint32 r8 r13;
(* xor    %r8d,%r10d                               #! PC = 0x555555555a1f *)
xor r10@uint32 r10 r8;
(* add    %r14d,%r10d                              #! PC = 0x555555555a22 *)
adds dc r10 r10 r14;
(* mov    %r9d,%r8d                                #! PC = 0x555555555a25 *)
mov r8 r9;
(* ror    $0x2,%r8d                                #! PC = 0x555555555a28 *)
ror r8@uint32 r8 0x2;
(* mov    %r9d,%edx                                #! PC = 0x555555555a2c *)
mov edx r9;
(* ror    $0xd,%edx                                #! PC = 0x555555555a2f *)
ror edx@uint32 edx 0xd;
(* xor    %r8d,%edx                                #! PC = 0x555555555a32 *)
xor edx@uint32 edx r8;
(* mov    %r9d,%r8d                                #! PC = 0x555555555a35 *)
mov r8 r9;
(* rol    $0xa,%r8d                                #! PC = 0x555555555a38 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%edx                                #! PC = 0x555555555a3c *)
xor edx@uint32 edx r8;
(* mov    %ecx,%eax                                #! PC = 0x555555555a3f *)
mov eax ecx;
(* xor    %r15d,%eax                               #! PC = 0x555555555a41 *)
xor eax@uint32 eax r15;
(* and    %r9d,%eax                                #! PC = 0x555555555a44 *)
and eax@uint32 eax r9;
(* mov    %ecx,%r8d                                #! PC = 0x555555555a47 *)
mov r8 ecx;
(* and    %r15d,%r8d                               #! PC = 0x555555555a4a *)
and r8@uint32 r8 r15;
(* xor    %eax,%r8d                                #! PC = 0x555555555a4d *)
xor r8@uint32 r8 eax;
(* add    %edx,%r8d                                #! PC = 0x555555555a50 *)
adds dc r8 r8 edx;
(* lea    (%r12,%r10,1),%esi                       #! PC = 0x555555555a53 *)
adds dc esi r12 r10;
(* add    %r10d,%r8d                               #! PC = 0x555555555a57 *)
adds dc r8 r8 r10;
(* mov    %r8d,0x20(%rsp)                          #! EA = L0x7fffffffdf20; PC = 0x555555555a5a *)
mov L0x7fffffffdf20 r8;
(* mov    %rbx,%r10                                #! PC = 0x555555555a5f *)
mov r10 ebx;
(* movzbl 0x34(%rbx),%eax                          #! EA = L0x5555555590bc; Value = 0x0000000000000000; PC = 0x555555555a62 *)
cast eax@uint32 L0x5555555590bc;
(* shl    $0x18,%eax                               #! PC = 0x555555555a66 *)
split dc eax eax (32-0x18);
shl eax eax 0x18@uint32;
(* movzbl 0x37(%rbx),%edx                          #! EA = L0x5555555590bf; Value = 0x0000000000000000; PC = 0x555555555a69 *)
cast edx@uint32 L0x5555555590bf;
(* or     %edx,%eax                                #! PC = 0x555555555a6d *)
or eax@uint32 eax edx;
(* movzbl 0x35(%rbx),%edx                          #! EA = L0x5555555590bd; Value = 0x0000000000000000; PC = 0x555555555a6f *)
cast edx@uint32 L0x5555555590bd;
(* shl    $0x10,%rdx                               #! PC = 0x555555555a73 *)
split dc edx edx (32-0x10);
shl edx edx 0x10@uint32;
(* or     %edx,%eax                                #! PC = 0x555555555a77 *)
or eax@uint32 eax edx;
(* movzbl 0x36(%rbx),%edx                          #! EA = L0x5555555590be; Value = 0x0000000000000000; PC = 0x555555555a79 *)
cast edx@uint32 L0x5555555590be;
(* shl    $0x8,%rdx                                #! PC = 0x555555555a7d *)
split dc edx edx (32-0x8);
shl edx edx 0x8@uint32;
(* or     %edx,%eax                                #! PC = 0x555555555a81 *)
or eax@uint32 eax edx;
(* mov    %eax,0xa4(%rsp)                          #! EA = L0x7fffffffdfa4; PC = 0x555555555a83 *)
mov L0x7fffffffdfa4 eax;
(* mov    %esi,%edx                                #! PC = 0x555555555a8a *)
mov edx esi;
(* ror    $0x6,%edx                                #! PC = 0x555555555a8c *)
ror edx@uint32 edx 0x6;
(* mov    %esi,%edi                                #! PC = 0x555555555a8f *)
mov edi esi;
(* ror    $0xb,%edi                                #! PC = 0x555555555a91 *)
ror edi@uint32 edi 0xb;
(* xor    %edx,%edi                                #! PC = 0x555555555a94 *)
xor edi@uint32 edi edx;
(* mov    %esi,%edx                                #! PC = 0x555555555a96 *)
mov edx esi;
(* rol    $0x7,%edx                                #! PC = 0x555555555a98 *)
rol edx@uint32 edx 0x7;
(* xor    %edi,%edx                                #! PC = 0x555555555a9b *)
xor edx@uint32 edx edi;
(* lea    -0x7f214e02(%rbp,%rax,1),%eax            #! PC = 0x555555555a9d *)
subs dc tmp ebp 0x7f214e02@uint32;
adds dc eax eax tmp;
(* add    %eax,%edx                                #! PC = 0x555555555aa4 *)
adds dc edx edx eax;
(* mov    %esi,%eax                                #! PC = 0x555555555aa6 *)
mov eax esi;
(* not    %eax                                     #! PC = 0x555555555aa8 *)
not eax@uint32 eax;
(* and    %r11d,%eax                               #! PC = 0x555555555aaa *)
and eax@uint32 eax r11;
(* mov    %esi,%ebp                                #! PC = 0x555555555aad *)
mov ebp esi;
(* mov    %esi,%edi                                #! PC = 0x555555555aaf *)
mov edi esi;
(* and    %r13d,%edi                               #! PC = 0x555555555ab1 *)
and edi@uint32 edi r13;
(* xor    %edi,%eax                                #! PC = 0x555555555ab4 *)
xor eax@uint32 eax edi;
(* add    %edx,%eax                                #! PC = 0x555555555ab6 *)
adds dc eax eax edx;
(* mov    %r8d,%edi                                #! PC = 0x555555555ab8 *)
mov edi r8;
(* ror    $0x2,%edi                                #! PC = 0x555555555abb *)
ror edi@uint32 edi 0x2;
(* mov    %r8d,%edx                                #! PC = 0x555555555abe *)
mov edx r8;
(* ror    $0xd,%edx                                #! PC = 0x555555555ac1 *)
ror edx@uint32 edx 0xd;
(* xor    %edi,%edx                                #! PC = 0x555555555ac4 *)
xor edx@uint32 edx edi;
(* mov    %r8d,%edi                                #! PC = 0x555555555ac6 *)
mov edi r8;
(* rol    $0xa,%edi                                #! PC = 0x555555555ac9 *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%edx                                #! PC = 0x555555555acc *)
xor edx@uint32 edx edi;
(* mov    %r15d,%edi                               #! PC = 0x555555555ace *)
mov edi r15;
(* xor    %r9d,%edi                                #! PC = 0x555555555ad1 *)
xor edi@uint32 edi r9;
(* and    %r8d,%edi                                #! PC = 0x555555555ad4 *)
and edi@uint32 edi r8;
(* mov    %r15d,%esi                               #! PC = 0x555555555ad7 *)
mov esi r15;
(* and    %r9d,%esi                                #! PC = 0x555555555ada *)
and esi@uint32 esi r9;
(* xor    %esi,%edi                                #! PC = 0x555555555add *)
xor edi@uint32 edi esi;
(* add    %edx,%edi                                #! PC = 0x555555555adf *)
adds dc edi edi edx;
(* lea    (%rcx,%rax,1),%r14d                      #! PC = 0x555555555ae1 *)
adds dc r14 ecx eax;
(* lea    (%rax,%rdi,1),%ebx                       #! PC = 0x555555555ae5 *)
adds dc ebx eax edi;
(* movzbl 0x38(%r10),%eax                          #! EA = L0x5555555590c0; Value = 0x8000000000000000; PC = 0x555555555ae8 *)
cast eax@uint32 L0x5555555590c0;
(* shl    $0x18,%eax                               #! PC = 0x555555555aed *)
split dc eax eax (32-0x18);
shl eax eax 0x18@uint32;
(* movzbl 0x3b(%r10),%edx                          #! EA = L0x5555555590c3; Value = 0x0000108000000000; PC = 0x555555555af0 *)
cast edx@uint32 L0x5555555590c3;
(* or     %edx,%eax                                #! PC = 0x555555555af5 *)
or eax@uint32 eax edx;
(* movzbl 0x39(%r10),%edx                          #! EA = L0x5555555590c1; Value = 0x1080000000000000; PC = 0x555555555af7 *)
cast edx@uint32 L0x5555555590c1;
(* shl    $0x10,%rdx                               #! PC = 0x555555555afc *)
split dc edx edx (32-0x10);
shl edx edx 0x10@uint32;
(* or     %edx,%eax                                #! PC = 0x555555555b00 *)
or eax@uint32 eax edx;
(* movzbl 0x3a(%r10),%edx                          #! EA = L0x5555555590c2; Value = 0x0010800000000000; PC = 0x555555555b02 *)
cast edx@uint32 L0x5555555590c2;
(* shl    $0x8,%rdx                                #! PC = 0x555555555b07 *)
split dc edx edx (32-0x8);
shl edx edx 0x8@uint32;
(* or     %edx,%eax                                #! PC = 0x555555555b0b *)
or eax@uint32 eax edx;
(* mov    %eax,0xa8(%rsp)                          #! EA = L0x7fffffffdfa8; PC = 0x555555555b0d *)
mov L0x7fffffffdfa8 eax;
(* mov    %r14d,%edx                               #! PC = 0x555555555b14 *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x555555555b17 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%esi                               #! PC = 0x555555555b1a *)
mov esi r14;
(* ror    $0xb,%esi                                #! PC = 0x555555555b1d *)
ror esi@uint32 esi 0xb;
(* xor    %edx,%esi                                #! PC = 0x555555555b20 *)
xor esi@uint32 esi edx;
(* mov    %r14d,%edx                               #! PC = 0x555555555b22 *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x555555555b25 *)
rol edx@uint32 edx 0x7;
(* xor    %esi,%edx                                #! PC = 0x555555555b28 *)
xor edx@uint32 edx esi;
(* lea    -0x6423f959(%r11,%rax,1),%eax            #! PC = 0x555555555b2a *)
subs dc tmp r11 0x6423f959@uint32;
adds dc eax eax tmp;
(* add    %eax,%edx                                #! PC = 0x555555555b32 *)
adds dc edx edx eax;
(* mov    %r14d,%eax                               #! PC = 0x555555555b34 *)
mov eax r14;
(* not    %eax                                     #! PC = 0x555555555b37 *)
not eax@uint32 eax;
(* and    %r13d,%eax                               #! PC = 0x555555555b39 *)
and eax@uint32 eax r13;
(* mov    %ebp,%esi                                #! PC = 0x555555555b3c *)
mov esi ebp;
(* and    %r14d,%esi                               #! PC = 0x555555555b3e *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555b41 *)
xor eax@uint32 eax esi;
(* add    %edx,%eax                                #! PC = 0x555555555b43 *)
adds dc eax eax edx;
(* mov    %ebx,%esi                                #! PC = 0x555555555b45 *)
mov esi ebx;
(* ror    $0x2,%esi                                #! PC = 0x555555555b47 *)
ror esi@uint32 esi 0x2;
(* mov    %ebx,%edx                                #! PC = 0x555555555b4a *)
mov edx ebx;
(* ror    $0xd,%edx                                #! PC = 0x555555555b4c *)
ror edx@uint32 edx 0xd;
(* xor    %esi,%edx                                #! PC = 0x555555555b4f *)
xor edx@uint32 edx esi;
(* mov    %ebx,%esi                                #! PC = 0x555555555b51 *)
mov esi ebx;
(* rol    $0xa,%esi                                #! PC = 0x555555555b53 *)
rol esi@uint32 esi 0xa;
(* xor    %esi,%edx                                #! PC = 0x555555555b56 *)
xor edx@uint32 edx esi;
(* mov    %r8d,%esi                                #! PC = 0x555555555b58 *)
mov esi r8;
(* xor    %r9d,%esi                                #! PC = 0x555555555b5b *)
xor esi@uint32 esi r9;
(* and    %ebx,%esi                                #! PC = 0x555555555b5e *)
and esi@uint32 esi ebx;
(* mov    %r8d,%edi                                #! PC = 0x555555555b60 *)
mov edi r8;
(* mov    %r8d,%ecx                                #! PC = 0x555555555b63 *)
mov ecx r8;
(* and    %r9d,%ecx                                #! PC = 0x555555555b66 *)
and ecx@uint32 ecx r9;
(* xor    %ecx,%esi                                #! PC = 0x555555555b69 *)
xor esi@uint32 esi ecx;
(* add    %edx,%esi                                #! PC = 0x555555555b6b *)
adds dc esi esi edx;
(* add    %eax,%r15d                               #! PC = 0x555555555b6d *)
adds dc r15 r15 eax;
(* add    %eax,%esi                                #! PC = 0x555555555b70 *)
adds dc esi esi eax;
(* mov    %esi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x555555555b72 *)
mov L0x7fffffffdf0c esi;
(* movzbl 0x3c(%r10),%edx                          #! EA = L0x5555555590c4; Value = 0x0000001080000000; PC = 0x555555555b76 *)
cast edx@uint32 L0x5555555590c4;
(* shl    $0x18,%edx                               #! PC = 0x555555555b7b *)
split dc edx edx (32-0x18);
shl edx edx 0x18@uint32;
(* movzbl 0x3d(%r10),%ecx                          #! EA = L0x5555555590c5; Value = 0x2000000010800000; PC = 0x555555555b7e *)
cast ecx@uint32 L0x5555555590c5;
(* shl    $0x10,%rcx                               #! PC = 0x555555555b83 *)
split dc ecx ecx (32-0x10);
shl ecx ecx 0x10@uint32;
(* movzbl 0x3e(%r10),%eax                          #! EA = L0x5555555590c6; Value = 0x0020000000108000; PC = 0x555555555b87 *)
cast eax@uint32 L0x5555555590c6;
(* shl    $0x8,%rax                                #! PC = 0x555555555b8c *)
split dc eax eax (32-0x8);
shl eax eax 0x8@uint32;
(* add    $0x40,%r10                               #! PC = 0x555555555b90 *)
adds dc r10 r10 0x40@uint32;
(* mov    %r10,0x48(%rsp)                          #! EA = L0x7fffffffdf48; PC = 0x555555555b94 *)
mov L0x7fffffffdf48 r10;
(* or     %eax,%ecx                                #! PC = 0x555555555b99 *)
or ecx@uint32 ecx eax;
(* or     %ecx,%edx                                #! PC = 0x555555555b9b *)
or edx@uint32 edx ecx;
(* movzbl -0x1(%r10),%eax                          #! EA = L0x5555555590c7; Value = 0x0000200000001080; PC = 0x555555555b9d *)
cast eax@uint32 L0x5555555590c7;
(* or     %eax,%edx                                #! PC = 0x555555555ba2 *)
or edx@uint32 edx eax;
(* mov    %edx,0xac(%rsp)                          #! EA = L0x7fffffffdfac; PC = 0x555555555ba4 *)
mov L0x7fffffffdfac edx;
(* mov    %r15d,%eax                               #! PC = 0x555555555bab *)
mov eax r15;
(* ror    $0x6,%eax                                #! PC = 0x555555555bae *)
ror eax@uint32 eax 0x6;
(* mov    %r15d,%r11d                              #! PC = 0x555555555bb1 *)
mov r11 r15;
(* ror    $0xb,%r11d                               #! PC = 0x555555555bb4 *)
ror r11@uint32 r11 0xb;
(* xor    %eax,%r11d                               #! PC = 0x555555555bb8 *)
xor r11@uint32 r11 eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555bbb *)
mov eax r15;
(* rol    $0x7,%eax                                #! PC = 0x555555555bbe *)
rol eax@uint32 eax 0x7;
(* xor    %r11d,%eax                               #! PC = 0x555555555bc1 *)
xor eax@uint32 eax r11;
(* lea    -0x3e640e8c(%r13,%rdx,1),%edx            #! PC = 0x555555555bc4 *)
subs dc tmp r13 0x3e640e8c@uint32;
adds dc edx edx tmp;
(* add    %eax,%edx                                #! PC = 0x555555555bcc *)
adds dc edx edx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555bce *)
mov eax r15;
(* not    %eax                                     #! PC = 0x555555555bd1 *)
not eax@uint32 eax;
(* mov    %ebp,%r13d                               #! PC = 0x555555555bd3 *)
mov r13 ebp;
(* and    %ebp,%eax                                #! PC = 0x555555555bd6 *)
and eax@uint32 eax ebp;
(* mov    %r14d,%r11d                              #! PC = 0x555555555bd8 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555bdb *)
and r11@uint32 r11 r15;
(* xor    %r11d,%eax                               #! PC = 0x555555555bde *)
xor eax@uint32 eax r11;
(* add    %edx,%eax                                #! PC = 0x555555555be1 *)
adds dc eax eax edx;
(* mov    %esi,%r11d                               #! PC = 0x555555555be3 *)
mov r11 esi;
(* ror    $0x2,%r11d                               #! PC = 0x555555555be6 *)
ror r11@uint32 r11 0x2;
(* mov    %esi,%edx                                #! PC = 0x555555555bea *)
mov edx esi;
(* ror    $0xd,%edx                                #! PC = 0x555555555bec *)
ror edx@uint32 edx 0xd;
(* xor    %r11d,%edx                               #! PC = 0x555555555bef *)
xor edx@uint32 edx r11;
(* mov    %esi,%r11d                               #! PC = 0x555555555bf2 *)
mov r11 esi;
(* rol    $0xa,%r11d                               #! PC = 0x555555555bf5 *)
rol r11@uint32 r11 0xa;
(* xor    %r11d,%edx                               #! PC = 0x555555555bf9 *)
xor edx@uint32 edx r11;
(* mov    %r8d,%r11d                               #! PC = 0x555555555bfc *)
mov r11 r8;
(* xor    %ebx,%r11d                               #! PC = 0x555555555bff *)
xor r11@uint32 r11 ebx;
(* and    %esi,%r11d                               #! PC = 0x555555555c02 *)
and r11@uint32 r11 esi;
(* and    %ebx,%edi                                #! PC = 0x555555555c05 *)
and edi@uint32 edi ebx;
(* xor    %edi,%r11d                               #! PC = 0x555555555c07 *)
xor r11@uint32 r11 edi;
(* add    %edx,%r11d                               #! PC = 0x555555555c0a *)
adds dc r11 r11 edx;
(* lea    (%r9,%rax,1),%esi                        #! PC = 0x555555555c0d *)
adds dc esi r9 eax;
(* add    %r11d,%eax                               #! PC = 0x555555555c11 *)
adds dc eax eax r11;
(* mov    %eax,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x555555555c14 *)
mov L0x7fffffffdf08 eax;
(* lea    0x1401(%rip),%rax        # 0x555555557020 <K256>#! PC = 0x555555555c18 *)
nondet eax@uint32;
(* mov    %rax,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555555c1f *)
mov L0x7fffffffdf10 eax;
(* mov    $0x10,%ebp                               #! PC = 0x555555555c24 *)
mov ebp 0x10@uint32;
(* mov    %esi,%eax                                #! PC = 0x555555555c29 *)
mov eax esi;
(* mov    %ebp,0x24(%rsp)                          #! EA = L0x7fffffffdf24; PC = 0x555555555c2b *)
mov L0x7fffffffdf24 ebp;
(* lea    0x1(%rbp),%esi                           #! PC = 0x555555555c2f *)
adds dc esi ebp 0x1@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555c32 *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf74; Value = 0x08090a0b04050607; PC = 0x555555555c35 *)
mov r9 L0x7fffffffdf74;
(* mov    %r9d,%r8d                                #! PC = 0x555555555c3a *)
mov r8 r9;
(* ror    $0x7,%r8d                                #! PC = 0x555555555c3d *)
ror r8@uint32 r8 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555555c41 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555555c44 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r8d                                #! PC = 0x555555555c47 *)
xor r8@uint32 r8 edx;
(* shr    $0x3,%r9d                                #! PC = 0x555555555c4a *)
split r9 dc r9 0x3;
(* lea    0xe(%rbp),%edx                           #! PC = 0x555555555c4e *)
adds dc edx ebp 0xe@uint32;
(* mov    %edx,%edi                                #! PC = 0x555555555c51 *)
mov edi edx;
(* and    $0xf,%edi                                #! PC = 0x555555555c53 *)
and edi@uint32 edi 0xf@uint32;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdf28; PC = 0x555555555c56 *)
mov L0x7fffffffdf28 edi;
(* mov    0x70(%rsp,%rdi,4),%edi                   #! EA = L0x7fffffffdfa8; Value = 0x0000008000000000; PC = 0x555555555c5b *)
mov edi L0x7fffffffdfa8;
(* mov    %edi,%edx                                #! PC = 0x555555555c5f *)
mov edx edi;
(* rol    $0xf,%edx                                #! PC = 0x555555555c61 *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x555555555c64 *)
mov ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555c66 *)
mov edx edi;
(* rol    $0xd,%edx                                #! PC = 0x555555555c68 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x555555555c6b *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%edi                                #! PC = 0x555555555c6d *)
split edi dc edi 0xa;
(* lea    0x9(%rbp),%ecx                           #! PC = 0x555555555c70 *)
adds dc ecx ebp 0x9@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555c73 *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    %ebp,%r11d                               #! PC = 0x555555555c76 *)
mov r11 ebp;
(* and    $0xf,%r11d                               #! PC = 0x555555555c79 *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r10d                  #! EA = L0x7fffffffdf70; Value = 0x0405060700010203; PC = 0x555555555c7d *)
mov r10 L0x7fffffffdf70;
(* add    0x70(%rsp,%rcx,4),%r10d                  #! EA = L0x7fffffffdf94; Value = 0x0000000000000000; PC = 0x555555555c82 *)
adds dc r10 r10 L0x7fffffffdf94;
(* xor    %r9d,%r8d                                #! PC = 0x555555555c87 *)
xor r8@uint32 r8 r9;
(* add    %r10d,%r8d                               #! PC = 0x555555555c8a *)
adds dc r8 r8 r10;
(* xor    %edx,%edi                                #! PC = 0x555555555c8d *)
xor edi@uint32 edi edx;
(* add    %r8d,%edi                                #! PC = 0x555555555c8f *)
adds dc edi edi r8;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffdf18; PC = 0x555555555c92 *)
mov L0x7fffffffdf18 r11;
(* mov    %edi,0x70(%rsp,%r11,4)                   #! EA = L0x7fffffffdf70; PC = 0x555555555c97 *)
mov L0x7fffffffdf70 edi;
(* mov    %eax,%edx                                #! PC = 0x555555555c9c *)
mov edx eax;
(* ror    $0x6,%edx                                #! PC = 0x555555555c9e *)
ror edx@uint32 edx 0x6;
(* mov    %eax,%r10d                               #! PC = 0x555555555ca1 *)
mov r10 eax;
(* ror    $0xb,%r10d                               #! PC = 0x555555555ca4 *)
ror r10@uint32 r10 0xb;
(* xor    %edx,%r10d                               #! PC = 0x555555555ca8 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cab *)
mov edx eax;
(* rol    $0x7,%edx                                #! PC = 0x555555555cad *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r10d                               #! PC = 0x555555555cb0 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cb3 *)
mov edx eax;
(* not    %edx                                     #! PC = 0x555555555cb5 *)
not edx@uint32 edx;
(* and    %r14d,%edx                               #! PC = 0x555555555cb7 *)
and edx@uint32 edx r14;
(* mov    %eax,%ecx                                #! PC = 0x555555555cba *)
mov ecx eax;
(* and    %r15d,%ecx                               #! PC = 0x555555555cbc *)
and ecx@uint32 ecx r15;
(* xor    %ecx,%edx                                #! PC = 0x555555555cbf *)
xor edx@uint32 edx ecx;
(* add    %r10d,%edx                               #! PC = 0x555555555cc1 *)
adds dc edx edx r10;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x555555555cc4 *)
mov ecx L0x7fffffffdf10;
(* add    0x40(%rcx),%edx                          #! EA = L0x555555557060; Value = 0xefbe4786e49b69c1; PC = 0x555555555cc9 *)
adds dc edx edx L0x555555557060;
(* add    %edi,%edx                                #! PC = 0x555555555ccc *)
adds dc edx edx edi;
(* add    %edx,%r13d                               #! PC = 0x555555555cce *)
adds dc r13 r13 edx;
(* mov    0x8(%rsp),%edi                           #! EA = L0x7fffffffdf08; Value = 0x8406fda0d6d42d4c; PC = 0x555555555cd1 *)
mov edi L0x7fffffffdf08;
(* mov    %edi,%edx                                #! PC = 0x555555555cd5 *)
mov edx edi;
(* ror    $0x2,%edx                                #! PC = 0x555555555cd7 *)
ror edx@uint32 edx 0x2;
(* mov    %edi,%ecx                                #! PC = 0x555555555cda *)
mov ecx edi;
(* ror    $0xd,%ecx                                #! PC = 0x555555555cdc *)
ror ecx@uint32 ecx 0xd;
(* xor    %edx,%ecx                                #! PC = 0x555555555cdf *)
xor ecx@uint32 ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555ce1 *)
mov edx edi;
(* rol    $0xa,%edx                                #! PC = 0x555555555ce3 *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%ecx                                #! PC = 0x555555555ce6 *)
xor ecx@uint32 ecx edx;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570208406fda0; PC = 0x555555555ce8 *)
mov r10 L0x7fffffffdf0c;
(* mov    %r10d,%edx                               #! PC = 0x555555555ced *)
mov edx r10;
(* xor    %ebx,%edx                                #! PC = 0x555555555cf0 *)
xor edx@uint32 edx ebx;
(* and    %edi,%edx                                #! PC = 0x555555555cf2 *)
and edx@uint32 edx edi;
(* mov    %r10d,%edi                               #! PC = 0x555555555cf4 *)
mov edi r10;
(* and    %ebx,%edi                                #! PC = 0x555555555cf7 *)
and edi@uint32 edi ebx;
(* xor    %edi,%edx                                #! PC = 0x555555555cf9 *)
xor edx@uint32 edx edi;
(* add    %ecx,%edx                                #! PC = 0x555555555cfb *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x00000010ed64700f; PC = 0x555555555cfd *)
mov r8 L0x7fffffffdf20;
(* add    %r13d,%r8d                               #! PC = 0x555555555d02 *)
adds dc r8 r8 r13;
(* add    %r13d,%edx                               #! PC = 0x555555555d05 *)
adds dc edx edx r13;
(* lea    0x2(%rbp),%edi                           #! PC = 0x555555555d08 *)
adds dc edi ebp 0x2@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555555d0b *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r12d                  #! EA = L0x7fffffffdf78; Value = 0x0c0d0e0f08090a0b; PC = 0x555555555d0e *)
mov r12 L0x7fffffffdf78;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d13 *)
mov r13 r12;
(* ror    $0x7,%r13d                               #! PC = 0x555555555d16 *)
ror r13@uint32 r13 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555d1a *)
mov r11 r13;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d1d *)
mov r13 r12;
(* rol    $0xe,%r13d                               #! PC = 0x555555555d20 *)
rol r13@uint32 r13 0xe;
(* xor    %r13d,%r11d                              #! PC = 0x555555555d24 *)
xor r11@uint32 r11 r13;
(* shr    $0x3,%r12d                               #! PC = 0x555555555d27 *)
split r12 dc r12 0x3;
(* lea    0xf(%rbp),%ecx                           #! PC = 0x555555555d2b *)
adds dc ecx ebp 0xf@uint32;
(* mov    %ecx,%r13d                               #! PC = 0x555555555d2e *)
mov r13 ecx;
(* and    $0xf,%r13d                               #! PC = 0x555555555d31 *)
and r13@uint32 r13 0xf@uint32;
(* mov    %r13,0x30(%rsp)                          #! EA = L0x7fffffffdf30; PC = 0x555555555d35 *)
mov L0x7fffffffdf30 r13;
(* mov    0x70(%rsp,%r13,4),%r10d                  #! EA = L0x7fffffffdfac; Value = 0x0000000000000080; PC = 0x555555555d3a *)
mov r10 L0x7fffffffdfac;
(* mov    %r10d,%r9d                               #! PC = 0x555555555d3f *)
mov r9 r10;
(* rol    $0xf,%r9d                                #! PC = 0x555555555d42 *)
rol r9@uint32 r9 0xf;
(* mov    %r10d,%ecx                               #! PC = 0x555555555d46 *)
mov ecx r10;
(* rol    $0xd,%ecx                                #! PC = 0x555555555d49 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555d4c *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r10d                               #! PC = 0x555555555d4f *)
split r10 dc r10 0xa;
(* lea    0xa(%rbp),%r9d                           #! PC = 0x555555555d53 *)
adds dc r9 ebp 0xa@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555d57 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r13d                  #! EA = L0x7fffffffdf74; Value = 0x08090a0b04050607; PC = 0x555555555d5b *)
mov r13 L0x7fffffffdf74;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x555555555d60 *)
adds dc r13 r13 L0x7fffffffdf98;
(* xor    %r12d,%r11d                              #! PC = 0x555555555d65 *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555d68 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555d6b *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555d6e *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf74; PC = 0x555555555d71 *)
mov L0x7fffffffdf74 r11;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d76 *)
mov r12 r8;
(* ror    $0x6,%r12d                               #! PC = 0x555555555d79 *)
ror r12@uint32 r12 0x6;
(* mov    %r8d,%esi                                #! PC = 0x555555555d7d *)
mov esi r8;
(* ror    $0xb,%esi                                #! PC = 0x555555555d80 *)
ror esi@uint32 esi 0xb;
(* xor    %r12d,%esi                               #! PC = 0x555555555d83 *)
xor esi@uint32 esi r12;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d86 *)
mov r12 r8;
(* rol    $0x7,%r12d                               #! PC = 0x555555555d89 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%esi                               #! PC = 0x555555555d8d *)
xor esi@uint32 esi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x555555555d90 *)
mov ecx L0x7fffffffdf10;
(* add    0x44(%rcx),%r14d                         #! EA = L0x555555557064; Value = 0x0fc19dc6efbe4786; PC = 0x555555555d95 *)
adds dc r14 r14 L0x555555557064;
(* add    %r14d,%r11d                              #! PC = 0x555555555d99 *)
adds dc r11 r11 r14;
(* lea    (%rsi,%r11,1),%ecx                       #! PC = 0x555555555d9c *)
adds dc ecx esi r11;
(* mov    %r8d,%r14d                               #! PC = 0x555555555da0 *)
mov r14 r8;
(* not    %r14d                                    #! PC = 0x555555555da3 *)
not r14@uint32 r14;
(* mov    %r14d,%r11d                              #! PC = 0x555555555da6 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555da9 *)
and r11@uint32 r11 r15;
(* mov    %r8d,%r14d                               #! PC = 0x555555555dac *)
mov r14 r8;
(* and    %eax,%r14d                               #! PC = 0x555555555daf *)
and r14@uint32 r14 eax;
(* xor    %r14d,%r11d                              #! PC = 0x555555555db2 *)
xor r11@uint32 r11 r14;
(* add    %ecx,%r11d                               #! PC = 0x555555555db5 *)
adds dc r11 r11 ecx;
(* mov    %edx,%r14d                               #! PC = 0x555555555db8 *)
mov r14 edx;
(* ror    $0x2,%r14d                               #! PC = 0x555555555dbb *)
ror r14@uint32 r14 0x2;
(* mov    %edx,%r12d                               #! PC = 0x555555555dbf *)
mov r12 edx;
(* ror    $0xd,%r12d                               #! PC = 0x555555555dc2 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%ecx                               #! PC = 0x555555555dc6 *)
mov ecx r12;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dc9 *)
xor ecx@uint32 ecx r14;
(* mov    %edx,%r14d                               #! PC = 0x555555555dcc *)
mov r14 edx;
(* rol    $0xa,%r14d                               #! PC = 0x555555555dcf *)
rol r14@uint32 r14 0xa;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dd3 *)
xor ecx@uint32 ecx r14;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x8406fda0d6d42d4c; PC = 0x555555555dd6 *)
mov esi L0x7fffffffdf08;
(* mov    %esi,%r14d                               #! PC = 0x555555555dda *)
mov r14 esi;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570208406fda0; PC = 0x555555555ddd *)
mov r10 L0x7fffffffdf0c;
(* xor    %r10d,%r14d                              #! PC = 0x555555555de2 *)
xor r14@uint32 r14 r10;
(* and    %edx,%r14d                               #! PC = 0x555555555de5 *)
and r14@uint32 r14 edx;
(* and    %r10d,%esi                               #! PC = 0x555555555de8 *)
and esi@uint32 esi r10;
(* xor    %esi,%r14d                               #! PC = 0x555555555deb *)
xor r14@uint32 r14 esi;
(* add    %ecx,%r14d                               #! PC = 0x555555555dee *)
adds dc r14 r14 ecx;
(* add    %r11d,%ebx                               #! PC = 0x555555555df1 *)
adds dc ebx ebx r11;
(* add    %r11d,%r14d                              #! PC = 0x555555555df4 *)
adds dc r14 r14 r11;
(* lea    0x3(%rbp),%esi                           #! PC = 0x555555555df7 *)
adds dc esi ebp 0x3@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555dfa *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r10d                  #! EA = L0x7fffffffdf7c; Value = 0x800000000c0d0e0f; PC = 0x555555555dfd *)
mov r10 L0x7fffffffdf7c;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e02 *)
mov r12 r10;
(* ror    $0x7,%r12d                               #! PC = 0x555555555e05 *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e09 *)
mov r9 r12;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e0c *)
mov r12 r10;
(* rol    $0xe,%r12d                               #! PC = 0x555555555e0f *)
rol r12@uint32 r12 0xe;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e13 *)
mov ecx r12;
(* xor    %r9d,%ecx                                #! PC = 0x555555555e16 *)
xor ecx@uint32 ecx r9;
(* shr    $0x3,%r10d                               #! PC = 0x555555555e19 *)
split r10 dc r10 0x3;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffdf18; Value = 0x0000000000000000; PC = 0x555555555e1d *)
mov r11 L0x7fffffffdf18;
(* mov    0x70(%rsp,%r11,4),%r12d                  #! EA = L0x7fffffffdf70; Value = 0x59e8f75e4f0a6dd0; PC = 0x555555555e22 *)
mov r12 L0x7fffffffdf70;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e27 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555e2a *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e2e *)
mov r9 r12;
(* rol    $0xd,%r9d                                #! PC = 0x555555555e31 *)
rol r9@uint32 r9 0xd;
(* xor    %r9d,%r11d                               #! PC = 0x555555555e35 *)
xor r11@uint32 r11 r9;
(* shr    $0xa,%r12d                               #! PC = 0x555555555e38 *)
split r12 dc r12 0xa;
(* lea    0xb(%rbp),%r9d                           #! PC = 0x555555555e3c *)
adds dc r9 ebp 0xb@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555e40 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r13d                  #! EA = L0x7fffffffdf78; Value = 0x0c0d0e0f08090a0b; PC = 0x555555555e44 *)
mov r13 L0x7fffffffdf78;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf9c; Value = 0x0000000000000000; PC = 0x555555555e49 *)
adds dc r13 r13 L0x7fffffffdf9c;
(* xor    %r12d,%r11d                              #! PC = 0x555555555e4e *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555e51 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555e54 *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555e57 *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rdi,4)                  #! EA = L0x7fffffffdf78; PC = 0x555555555e5a *)
mov L0x7fffffffdf78 r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e5f *)
mov r12 ebx;
(* ror    $0x6,%r12d                               #! PC = 0x555555555e62 *)
ror r12@uint32 r12 0x6;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e66 *)
mov ecx r12;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e69 *)
mov r12 ebx;
(* ror    $0xb,%r12d                               #! PC = 0x555555555e6c *)
ror r12@uint32 r12 0xb;
(* mov    %r12d,%edi                               #! PC = 0x555555555e70 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555e73 *)
xor edi@uint32 edi ecx;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e75 *)
mov r12 ebx;
(* rol    $0x7,%r12d                               #! PC = 0x555555555e78 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%edi                               #! PC = 0x555555555e7c *)
xor edi@uint32 edi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x555555555e7f *)
mov ecx L0x7fffffffdf10;
(* add    0x48(%rcx),%r15d                         #! EA = L0x555555557068; Value = 0x240ca1cc0fc19dc6; PC = 0x555555555e84 *)
adds dc r15 r15 L0x555555557068;
(* add    %r15d,%r11d                              #! PC = 0x555555555e88 *)
adds dc r11 r11 r15;
(* lea    (%rdi,%r11,1),%ecx                       #! PC = 0x555555555e8b *)
adds dc ecx edi r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e8f *)
mov r12 ebx;
(* not    %r12d                                    #! PC = 0x555555555e92 *)
not r12@uint32 r12;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e95 *)
mov r11 r12;
(* and    %eax,%r11d                               #! PC = 0x555555555e98 *)
and r11@uint32 r11 eax;
(* mov    %r8d,%r12d                               #! PC = 0x555555555e9b *)
mov r12 r8;
(* and    %ebx,%r12d                               #! PC = 0x555555555e9e *)
and r12@uint32 r12 ebx;
(* xor    %r12d,%r11d                              #! PC = 0x555555555ea1 *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555555ea4 *)
adds dc r11 r11 ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ea7 *)
mov r12 r14;
(* ror    $0x2,%r12d                               #! PC = 0x555555555eaa *)
ror r12@uint32 r12 0x2;
(* mov    %r12d,%ecx                               #! PC = 0x555555555eae *)
mov ecx r12;
(* mov    %r14d,%r12d                              #! PC = 0x555555555eb1 *)
mov r12 r14;
(* ror    $0xd,%r12d                               #! PC = 0x555555555eb4 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%edi                               #! PC = 0x555555555eb8 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555ebb *)
xor edi@uint32 edi ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ebd *)
mov r12 r14;
(* rol    $0xa,%r12d                               #! PC = 0x555555555ec0 *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%edi                               #! PC = 0x555555555ec4 *)
xor edi@uint32 edi r12;
(* mov    0x8(%rsp),%r15d                          #! EA = L0x7fffffffdf08; Value = 0x8406fda0d6d42d4c; PC = 0x555555555ec7 *)
mov r15 L0x7fffffffdf08;
(* mov    %r15d,%ecx                               #! PC = 0x555555555ecc *)
mov ecx r15;
(* xor    %edx,%ecx                                #! PC = 0x555555555ecf *)
xor ecx@uint32 ecx edx;
(* and    %r14d,%ecx                               #! PC = 0x555555555ed1 *)
and ecx@uint32 ecx r14;
(* mov    %r15d,%r9d                               #! PC = 0x555555555ed4 *)
mov r9 r15;
(* and    %edx,%r9d                                #! PC = 0x555555555ed7 *)
and r9@uint32 r9 edx;
(* xor    %r9d,%ecx                                #! PC = 0x555555555eda *)
xor ecx@uint32 ecx r9;
(* add    %edi,%ecx                                #! PC = 0x555555555edd *)
adds dc ecx ecx edi;
(* mov    0xc(%rsp),%edi                           #! EA = L0x7fffffffdf0c; Value = 0x555570208406fda0; PC = 0x555555555edf *)
mov edi L0x7fffffffdf0c;
(* add    %r11d,%edi                               #! PC = 0x555555555ee3 *)
adds dc edi edi r11;
(* lea    (%r11,%rcx,1),%r15d                      #! PC = 0x555555555ee6 *)
adds dc r15 r11 ecx;
(* lea    0x4(%rbp),%r10d                          #! PC = 0x555555555eea *)
adds dc r10 ebp 0x4@uint32;
(* and    $0xf,%r10d                               #! PC = 0x555555555eee *)
and r10@uint32 r10 0xf@uint32;
(* mov    0x70(%rsp,%r10,4),%r13d                  #! EA = L0x7fffffffdf80; Value = 0x0000000080000000; PC = 0x555555555ef2 *)
mov r13 L0x7fffffffdf80;
(* mov    %r13d,%r12d                              #! PC = 0x555555555ef7 *)
mov r12 r13;
(* ror    $0x7,%r12d                               #! PC = 0x555555555efa *)
ror r12@uint32 r12 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555efe *)
mov r11 r13;
(* rol    $0xe,%r11d                               #! PC = 0x555555555f01 *)
rol r11@uint32 r11 0xe;
(* xor    %r11d,%r12d                              #! PC = 0x555555555f05 *)
xor r12@uint32 r12 r11;
(* shr    $0x3,%r13d                               #! PC = 0x555555555f08 *)
split r13 dc r13 0x3;
(* lea    0x11(%rbp),%ecx                          #! PC = 0x555555555f0c *)
adds dc ecx ebp 0x11@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555f0f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r11d                  #! EA = L0x7fffffffdf74; Value = 0xdf656fe859e8f75e; PC = 0x555555555f12 *)
mov r11 L0x7fffffffdf74;
(* mov    %r11d,%r9d                               #! PC = 0x555555555f17 *)
mov r9 r11;
(* rol    $0xf,%r9d                                #! PC = 0x555555555f1a *)
rol r9@uint32 r9 0xf;
(* mov    %r11d,%ecx                               #! PC = 0x555555555f1e *)
mov ecx r11;
(* rol    $0xd,%ecx                                #! PC = 0x555555555f21 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555f24 *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r11d                               #! PC = 0x555555555f27 *)
split r11 dc r11 0xa;
(* lea    0xc(%rbp),%r9d                           #! PC = 0x555555555f2b *)
adds dc r9 ebp 0xc@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555f2f *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdfa0; Value = 0x0000000000000000; PC = 0x555555555f33 *)
mov r9 L0x7fffffffdfa0;
(* add    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf7c; Value = 0x800000000c0d0e0f; PC = 0x555555555f38 *)
adds dc r9 r9 L0x7fffffffdf7c;
(* xor    %r13d,%r12d                              #! PC = 0x555555555f3d *)
xor r12@uint32 r12 r13;
(* add    %r9d,%r12d                               #! PC = 0x555555555f40 *)
adds dc r12 r12 r9;
(* xor    %r11d,%ecx                               #! PC = 0x555555555f43 *)
xor ecx@uint32 ecx r11;
(* add    %ecx,%r12d                               #! PC = 0x555555555f46 *)
adds dc r12 r12 ecx;
(* mov    %r12d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf7c; PC = 0x555555555f49 *)
mov L0x7fffffffdf7c r12;
(* mov    %edi,%esi                                #! PC = 0x555555555f4e *)
mov esi edi;
(* ror    $0x6,%esi                                #! PC = 0x555555555f50 *)
ror esi@uint32 esi 0x6;
(* mov    %esi,%ecx                                #! PC = 0x555555555f53 *)
mov ecx esi;
(* mov    %edi,%esi                                #! PC = 0x555555555f55 *)
mov esi edi;
(* ror    $0xb,%esi                                #! PC = 0x555555555f57 *)
ror esi@uint32 esi 0xb;
(* xor    %ecx,%esi                                #! PC = 0x555555555f5a *)
xor esi@uint32 esi ecx;
(* mov    %edi,%r11d                               #! PC = 0x555555555f5c *)
mov r11 edi;
(* rol    $0x7,%r11d                               #! PC = 0x555555555f5f *)
rol r11@uint32 r11 0x7;
(* xor    %r11d,%esi                               #! PC = 0x555555555f63 *)
xor esi@uint32 esi r11;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x555555555f66 *)
mov ecx L0x7fffffffdf10;
(* add    0x4c(%rcx),%eax                          #! EA = L0x55555555706c; Value = 0x2de92c6f240ca1cc; PC = 0x555555555f6b *)
adds dc eax eax L0x55555555706c;
(* add    %eax,%r12d                               #! PC = 0x555555555f6e *)
adds dc r12 r12 eax;
(* lea    (%rsi,%r12,1),%ecx                       #! PC = 0x555555555f71 *)
adds dc ecx esi r12;
(* mov    %edi,%r12d                               #! PC = 0x555555555f75 *)
mov r12 edi;
(* not    %r12d                                    #! PC = 0x555555555f78 *)
not r12@uint32 r12;
(* and    %r8d,%r12d                               #! PC = 0x555555555f7b *)
and r12@uint32 r12 r8;
(* mov    %ebx,%eax                                #! PC = 0x555555555f7e *)
mov eax ebx;
(* and    %edi,%eax                                #! PC = 0x555555555f80 *)
and eax@uint32 eax edi;
(* xor    %eax,%r12d                               #! PC = 0x555555555f82 *)
xor r12@uint32 r12 eax;
(* add    %ecx,%r12d                               #! PC = 0x555555555f85 *)
adds dc r12 r12 ecx;
(* mov    %r15d,%eax                               #! PC = 0x555555555f88 *)
mov eax r15;
(* ror    $0x2,%eax                                #! PC = 0x555555555f8b *)
ror eax@uint32 eax 0x2;
(* mov    %r15d,%esi                               #! PC = 0x555555555f8e *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555f91 *)
ror esi@uint32 esi 0xd;
(* mov    %esi,%ecx                                #! PC = 0x555555555f94 *)
mov ecx esi;
(* xor    %eax,%ecx                                #! PC = 0x555555555f96 *)
xor ecx@uint32 ecx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555f98 *)
mov eax r15;
(* rol    $0xa,%eax                                #! PC = 0x555555555f9b *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%ecx                                #! PC = 0x555555555f9e *)
xor ecx@uint32 ecx eax;
(* mov    %edx,%eax                                #! PC = 0x555555555fa0 *)
mov eax edx;
(* xor    %r14d,%eax                               #! PC = 0x555555555fa2 *)
xor eax@uint32 eax r14;
(* and    %r15d,%eax                               #! PC = 0x555555555fa5 *)
and eax@uint32 eax r15;
(* mov    %edx,%esi                                #! PC = 0x555555555fa8 *)
mov esi edx;
(* and    %r14d,%esi                               #! PC = 0x555555555faa *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555fad *)
xor eax@uint32 eax esi;
(* add    %ecx,%eax                                #! PC = 0x555555555faf *)
adds dc eax eax ecx;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x8406fda0d6d42d4c; PC = 0x555555555fb1 *)
mov esi L0x7fffffffdf08;
(* add    %r12d,%esi                               #! PC = 0x555555555fb5 *)
adds dc esi esi r12;
(* add    %r12d,%eax                               #! PC = 0x555555555fb8 *)
adds dc eax eax r12;
(* lea    0x5(%rbp),%r9d                           #! PC = 0x555555555fbb *)
adds dc r9 ebp 0x5@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555fbf *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r11d                   #! EA = L0x7fffffffdf84; Value = 0x0000000000000000; PC = 0x555555555fc3 *)
mov r11 L0x7fffffffdf84;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fc8 *)
mov r12 r11;
(* ror    $0x7,%r12d                               #! PC = 0x555555555fcb *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r13d                              #! PC = 0x555555555fcf *)
mov r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fd2 *)
mov r12 r11;
(* rol    $0xe,%r12d                               #! PC = 0x555555555fd5 *)
rol r12@uint32 r12 0xe;
(* xor    %r12d,%r13d                              #! PC = 0x555555555fd9 *)
xor r13@uint32 r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fdc *)
mov r12 r11;
(* shr    $0x3,%r12d                               #! PC = 0x555555555fdf *)
split r12 dc r12 0x3;
(* mov    %r12d,0x8(%rsp)                          #! EA = L0x7fffffffdf08; PC = 0x555555555fe3 *)
mov L0x7fffffffdf08 r12;
(* lea    0x12(%rbp),%ecx                          #! PC = 0x555555555fe8 *)
adds dc ecx ebp 0x12@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555feb *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf78; Value = 0x825fcc03df656fe8; PC = 0x555555555fee *)
mov r12 L0x7fffffffdf78;
(* mov    %r12d,%r11d                              #! PC = 0x555555555ff3 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555ff6 *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%ecx                               #! PC = 0x555555555ffa *)
mov ecx r12;
(* rol    $0xd,%ecx                                #! PC = 0x555555555ffd *)
rol ecx@uint32 ecx 0xd;
(* xor    %r11d,%ecx                               #! PC = 0x555555556000 *)
xor ecx@uint32 ecx r11;
(* shr    $0xa,%r12d                               #! PC = 0x555555556003 *)
split r12 dc r12 0xa;
(* lea    0xd(%rbp),%r11d                          #! PC = 0x555555556007 *)
adds dc r11 ebp 0xd@uint32;
(* and    $0xf,%r11d                               #! PC = 0x55555555600b *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r11d                  #! EA = L0x7fffffffdfa4; Value = 0x0000000000000000; PC = 0x55555555600f *)
mov r11 L0x7fffffffdfa4;
(* add    0x70(%rsp,%r10,4),%r11d                  #! EA = L0x7fffffffdf80; Value = 0x0000000080000000; PC = 0x555555556014 *)
adds dc r11 r11 L0x7fffffffdf80;
(* xor    0x8(%rsp),%r13d                          #! EA = L0x7fffffffdf08; Value = 0x8406fda000000000; PC = 0x555555556019 *)
xor r13@uint32 r13 L0x7fffffffdf08;
(* add    %r11d,%r13d                              #! PC = 0x55555555601e *)
adds dc r13 r13 r11;
(* xor    %r12d,%ecx                               #! PC = 0x555555556021 *)
xor ecx@uint32 ecx r12;
(* add    %ecx,%r13d                               #! PC = 0x555555556024 *)
adds dc r13 r13 ecx;
(* mov    %r13d,0x70(%rsp,%r10,4)                  #! EA = L0x7fffffffdf80; PC = 0x555555556027 *)
mov L0x7fffffffdf80 r13;
(* mov    %esi,%r10d                               #! PC = 0x55555555602c *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x55555555602f *)
ror r10@uint32 r10 0x6;
(* mov    %r10d,%ecx                               #! PC = 0x555555556033 *)
mov ecx r10;
(* mov    %esi,%r10d                               #! PC = 0x555555556036 *)
mov r10 esi;
(* ror    $0xb,%r10d                               #! PC = 0x555555556039 *)
ror r10@uint32 r10 0xb;
(* xor    %ecx,%r10d                               #! PC = 0x55555555603d *)
xor r10@uint32 r10 ecx;
(* mov    %esi,%r12d                               #! PC = 0x555555556040 *)
mov r12 esi;
(* rol    $0x7,%r12d                               #! PC = 0x555555556043 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%r10d                              #! PC = 0x555555556047 *)
xor r10@uint32 r10 r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x55555555604a *)
mov ecx L0x7fffffffdf10;
(* add    0x50(%rcx),%r13d                         #! EA = L0x555555557070; Value = 0x4a7484aa2de92c6f; PC = 0x55555555604f *)
adds dc r13 r13 L0x555555557070;
(* add    %r8d,%r13d                               #! PC = 0x555555556053 *)
adds dc r13 r13 r8;
(* add    %r13d,%r10d                              #! PC = 0x555555556056 *)
adds dc r10 r10 r13;
(* mov    %esi,%r8d                                #! PC = 0x555555556059 *)
mov r8 esi;
(* not    %r8d                                     #! PC = 0x55555555605c *)
not r8@uint32 r8;
(* mov    %r8d,%ecx                                #! PC = 0x55555555605f *)
mov ecx r8;
(* and    %ebx,%ecx                                #! PC = 0x555555556062 *)
and ecx@uint32 ecx ebx;
(* mov    %edi,%r8d                                #! PC = 0x555555556064 *)
mov r8 edi;
(* and    %esi,%r8d                                #! PC = 0x555555556067 *)
and r8@uint32 r8 esi;
(* xor    %r8d,%ecx                                #! PC = 0x55555555606a *)
xor ecx@uint32 ecx r8;
(* add    %r10d,%ecx                               #! PC = 0x55555555606d *)
adds dc ecx ecx r10;
(* mov    %eax,%r8d                                #! PC = 0x555555556070 *)
mov r8 eax;
(* ror    $0x2,%r8d                                #! PC = 0x555555556073 *)
ror r8@uint32 r8 0x2;
(* mov    %eax,%r10d                               #! PC = 0x555555556077 *)
mov r10 eax;
(* ror    $0xd,%r10d                               #! PC = 0x55555555607a *)
ror r10@uint32 r10 0xd;
(* xor    %r8d,%r10d                               #! PC = 0x55555555607e *)
xor r10@uint32 r10 r8;
(* mov    %eax,%r8d                                #! PC = 0x555555556081 *)
mov r8 eax;
(* rol    $0xa,%r8d                                #! PC = 0x555555556084 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%r10d                               #! PC = 0x555555556088 *)
xor r10@uint32 r10 r8;
(* mov    %r14d,%r8d                               #! PC = 0x55555555608b *)
mov r8 r14;
(* xor    %r15d,%r8d                               #! PC = 0x55555555608e *)
xor r8@uint32 r8 r15;
(* and    %eax,%r8d                                #! PC = 0x555555556091 *)
and r8@uint32 r8 eax;
(* mov    %r14d,%r11d                              #! PC = 0x555555556094 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555556097 *)
and r11@uint32 r11 r15;
(* xor    %r11d,%r8d                               #! PC = 0x55555555609a *)
xor r8@uint32 r8 r11;
(* add    %r10d,%r8d                               #! PC = 0x55555555609d *)
adds dc r8 r8 r10;
(* lea    (%rdx,%rcx,1),%r13d                      #! PC = 0x5555555560a0 *)
adds dc r13 edx ecx;
(* lea    (%rcx,%r8,1),%r11d                       #! PC = 0x5555555560a4 *)
adds dc r11 ecx r8;
(* mov    %r11d,0x20(%rsp)                         #! EA = L0x7fffffffdf20; PC = 0x5555555560a8 *)
mov L0x7fffffffdf20 r11;
(* lea    0x6(%rbp),%r8d                           #! PC = 0x5555555560ad *)
adds dc r8 ebp 0x6@uint32;
(* and    $0xf,%r8d                                #! PC = 0x5555555560b1 *)
and r8@uint32 r8 0xf@uint32;
(* mov    0x70(%rsp,%r8,4),%r12d                   #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x5555555560b5 *)
mov r12 L0x7fffffffdf88;
(* mov    %r12d,%edx                               #! PC = 0x5555555560ba *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x5555555560bd *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x5555555560c0 *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x5555555560c3 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x5555555560c6 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x5555555560c9 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x5555555560cc *)
split r12 dc r12 0x3;
(* lea    0x13(%rbp),%edx                          #! PC = 0x5555555560d0 *)
adds dc edx ebp 0x13@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555560d3 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf7c; Value = 0x9a3ead05825fcc03; PC = 0x5555555560d6 *)
mov r10 L0x7fffffffdf7c;
(* mov    %r10d,%edx                               #! PC = 0x5555555560db *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555560de *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x5555555560e1 *)
mov ecx edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555560e3 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555560e6 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555560e9 *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%r10d                               #! PC = 0x5555555560eb *)
split r10 dc r10 0xa;
(* mov    0x28(%rsp),%rcx                          #! EA = L0x7fffffffdf28; Value = 0x000000000000000e; PC = 0x5555555560ef *)
mov ecx L0x7fffffffdf28;
(* mov    0x70(%rsp,%rcx,4),%ecx                   #! EA = L0x7fffffffdfa8; Value = 0x0000008000000000; PC = 0x5555555560f4 *)
mov ecx L0x7fffffffdfa8;
(* add    0x70(%rsp,%r9,4),%ecx                    #! EA = L0x7fffffffdf84; Value = 0x0000000000000000; PC = 0x5555555560f8 *)
adds dc ecx ecx L0x7fffffffdf84;
(* xor    %r12d,%r11d                              #! PC = 0x5555555560fd *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555556100 *)
adds dc r11 r11 ecx;
(* xor    %r10d,%edx                               #! PC = 0x555555556103 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x555555556106 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r9,4)                   #! EA = L0x7fffffffdf84; PC = 0x555555556109 *)
mov L0x7fffffffdf84 r11;
(* mov    %r13d,%edx                               #! PC = 0x55555555610e *)
mov edx r13;
(* ror    $0x6,%edx                                #! PC = 0x555555556111 *)
ror edx@uint32 edx 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x555555556114 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x555555556117 *)
ror r10@uint32 r10 0xb;
(* mov    %r10d,%ecx                               #! PC = 0x55555555611b *)
mov ecx r10;
(* xor    %edx,%ecx                                #! PC = 0x55555555611e *)
xor ecx@uint32 ecx edx;
(* mov    %r13d,%edx                               #! PC = 0x555555556120 *)
mov edx r13;
(* rol    $0x7,%edx                                #! PC = 0x555555556123 *)
rol edx@uint32 edx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555556126 *)
xor edx@uint32 edx ecx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x555555556128 *)
mov r12 L0x7fffffffdf10;
(* add    0x54(%r12),%r11d                         #! EA = L0x555555557074; Value = 0x5cb0a9dc4a7484aa; PC = 0x55555555612d *)
adds dc r11 r11 L0x555555557074;
(* add    %ebx,%r11d                               #! PC = 0x555555556132 *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r11,1),%ecx                       #! PC = 0x555555556135 *)
adds dc ecx edx r11;
(* mov    %r13d,%ebx                               #! PC = 0x555555556139 *)
mov ebx r13;
(* not    %ebx                                     #! PC = 0x55555555613c *)
not ebx@uint32 ebx;
(* and    %edi,%ebx                                #! PC = 0x55555555613e *)
and ebx@uint32 ebx edi;
(* mov    %esi,%edx                                #! PC = 0x555555556140 *)
mov edx esi;
(* and    %r13d,%edx                               #! PC = 0x555555556142 *)
and edx@uint32 edx r13;
(* xor    %ebx,%edx                                #! PC = 0x555555556145 *)
xor edx@uint32 edx ebx;
(* add    %ecx,%edx                                #! PC = 0x555555556147 *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x000000109892134e; PC = 0x555555556149 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%ebx                               #! PC = 0x55555555614e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555556151 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%ecx                               #! PC = 0x555555556154 *)
mov ecx r11;
(* ror    $0xd,%ecx                                #! PC = 0x555555556157 *)
ror ecx@uint32 ecx 0xd;
(* xor    %ebx,%ecx                                #! PC = 0x55555555615a *)
xor ecx@uint32 ecx ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555615c *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x55555555615f *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%ecx                                #! PC = 0x555555556162 *)
xor ecx@uint32 ecx ebx;
(* mov    %r15d,%ebx                               #! PC = 0x555555556164 *)
mov ebx r15;
(* xor    %eax,%ebx                                #! PC = 0x555555556167 *)
xor ebx@uint32 ebx eax;
(* and    %r11d,%ebx                               #! PC = 0x555555556169 *)
and ebx@uint32 ebx r11;
(* mov    %r15d,%r10d                              #! PC = 0x55555555616c *)
mov r10 r15;
(* and    %eax,%r10d                               #! PC = 0x55555555616f *)
and r10@uint32 r10 eax;
(* xor    %r10d,%ebx                               #! PC = 0x555555556172 *)
xor ebx@uint32 ebx r10;
(* add    %ecx,%ebx                                #! PC = 0x555555556175 *)
adds dc ebx ebx ecx;
(* add    %edx,%r14d                               #! PC = 0x555555556177 *)
adds dc r14 r14 edx;
(* add    %edx,%ebx                                #! PC = 0x55555555617a *)
adds dc ebx ebx edx;
(* lea    0x7(%rbp),%ecx                           #! PC = 0x55555555617c *)
adds dc ecx ebp 0x7@uint32;
(* and    $0xf,%ecx                                #! PC = 0x55555555617f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf8c; Value = 0x0000000000000000; PC = 0x555555556182 *)
mov r12 L0x7fffffffdf8c;
(* mov    %r12d,%edx                               #! PC = 0x555555556187 *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x55555555618a *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x55555555618d *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x555555556190 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x555555556193 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x555555556196 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x555555556199 *)
split r12 dc r12 0x3;
(* lea    0x14(%rbp),%edx                          #! PC = 0x55555555619d *)
adds dc edx ebp 0x14@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555561a0 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf80; Value = 0x1fa126979a3ead05; PC = 0x5555555561a3 *)
mov r10 L0x7fffffffdf80;
(* mov    %r10d,%edx                               #! PC = 0x5555555561a8 *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555561ab *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%r9d                                #! PC = 0x5555555561ae *)
mov r9 edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555561b1 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555561b4 *)
rol edx@uint32 edx 0xd;
(* xor    %r9d,%edx                                #! PC = 0x5555555561b7 *)
xor edx@uint32 edx r9;
(* shr    $0xa,%r10d                               #! PC = 0x5555555561ba *)
split r10 dc r10 0xa;
(* mov    0x30(%rsp),%r9                           #! EA = L0x7fffffffdf30; Value = 0x000000000000000f; PC = 0x5555555561be *)
mov r9 L0x7fffffffdf30;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdfac; Value = 0x0000000000000080; PC = 0x5555555561c3 *)
mov r9 L0x7fffffffdfac;
(* add    0x70(%rsp,%r8,4),%r9d                    #! EA = L0x7fffffffdf88; Value = 0x0000000000000000; PC = 0x5555555561c8 *)
adds dc r9 r9 L0x7fffffffdf88;
(* xor    %r12d,%r11d                              #! PC = 0x5555555561cd *)
xor r11@uint32 r11 r12;
(* add    %r9d,%r11d                               #! PC = 0x5555555561d0 *)
adds dc r11 r11 r9;
(* xor    %r10d,%edx                               #! PC = 0x5555555561d3 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x5555555561d6 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r8,4)                   #! EA = L0x7fffffffdf88; PC = 0x5555555561d9 *)
mov L0x7fffffffdf88 r11;
(* mov    %r14d,%edx                               #! PC = 0x5555555561de *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x5555555561e1 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%r8d                               #! PC = 0x5555555561e4 *)
mov r8 r14;
(* ror    $0xb,%r8d                                #! PC = 0x5555555561e7 *)
ror r8@uint32 r8 0xb;
(* xor    %edx,%r8d                                #! PC = 0x5555555561eb *)
xor r8@uint32 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x5555555561ee *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x5555555561f1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r8d                                #! PC = 0x5555555561f4 *)
xor r8@uint32 r8 edx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557020; PC = 0x5555555561f7 *)
mov r12 L0x7fffffffdf10;
(* add    0x58(%r12),%r11d                         #! EA = L0x555555557078; Value = 0x76f988da5cb0a9dc; PC = 0x5555555561fc *)
adds dc r11 r11 L0x555555557078;
(* lea    (%r11,%rdi,1),%edx                       #! PC = 0x555555556201 *)
adds dc edx r11 edi;
(* add    %edx,%r8d                                #! PC = 0x555555556205 *)
adds dc r8 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x555555556208 *)
mov edx r14;
(* not    %edx                                     #! PC = 0x55555555620b *)
not edx@uint32 edx;
(* and    %esi,%edx                                #! PC = 0x55555555620d *)
and edx@uint32 edx esi;
(* mov    %r13d,%edi                               #! PC = 0x55555555620f *)
mov edi r13;
(* and    %r14d,%edi                               #! PC = 0x555555556212 *)
and edi@uint32 edi r14;
(* xor    %edi,%edx                                #! PC = 0x555555556215 *)
xor edx@uint32 edx edi;
(* add    %r8d,%edx                                #! PC = 0x555555556217 *)
adds dc edx edx r8;
(* mov    %ebx,%r8d                                #! PC = 0x55555555621a *)
mov r8 ebx;
(* ror    $0x2,%r8d                                #! PC = 0x55555555621d *)
ror r8@uint32 r8 0x2;
(* mov    %ebx,%edi                                #! PC = 0x555555556221 *)
mov edi ebx;
(* ror    $0xd,%edi                                #! PC = 0x555555556223 *)
ror edi@uint32 edi 0xd;
(* xor    %edi,%r8d                                #! PC = 0x555555556226 *)
xor r8@uint32 r8 edi;
(* mov    %ebx,%edi                                #! PC = 0x555555556229 *)
mov edi ebx;
(* rol    $0xa,%edi                                #! PC = 0x55555555622b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%r8d                                #! PC = 0x55555555622e *)
xor r8@uint32 r8 edi;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x000000109892134e; PC = 0x555555556231 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%edi                               #! PC = 0x555555556236 *)
mov edi r11;
(* xor    %eax,%edi                                #! PC = 0x555555556239 *)
xor edi@uint32 edi eax;
(* and    %ebx,%edi                                #! PC = 0x55555555623b *)
and edi@uint32 edi ebx;
(* mov    %r11d,%r9d                               #! PC = 0x55555555623d *)
mov r9 r11;
(* and    %eax,%r9d                                #! PC = 0x555555556240 *)
and r9@uint32 r9 eax;
(* xor    %r9d,%edi                                #! PC = 0x555555556243 *)
xor edi@uint32 edi r9;
(* add    %r8d,%edi                                #! PC = 0x555555556246 *)
adds dc edi edi r8;
(* add    %edx,%r15d                               #! PC = 0x555555556249 *)
adds dc r15 r15 edx;
(* add    %edx,%edi                                #! PC = 0x55555555624c *)
adds dc edi edi edx;
(* mov    %edi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x55555555624e *)
mov L0x7fffffffdf0c edi;
(* add    $0x8,%ebp                                #! PC = 0x555555556252 *)
adds dc ebp ebp 0x8@uint32;
(* mov    %ebp,%edx                                #! PC = 0x555555556255 *)
mov edx ebp;
(* and    $0xf,%edx                                #! PC = 0x555555556257 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r9d                   #! EA = L0x7fffffffdf90; Value = 0x0000000000000000; PC = 0x55555555625a *)
mov r9 L0x7fffffffdf90;
(* mov    %r9d,%edi                                #! PC = 0x55555555625f *)
mov edi r9;
(* ror    $0x7,%edi                                #! PC = 0x555555556262 *)
ror edi@uint32 edi 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555556265 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555556268 *)
rol edx@uint32 edx 0xe;
(* xor    %edi,%edx                                #! PC = 0x55555555626b *)
xor edx@uint32 edx edi;
(* shr    $0x3,%r9d                                #! PC = 0x55555555626d *)
split r9 dc r9 0x3;
(* mov    0x24(%rsp),%edi                          #! EA = L0x7fffffffdf24; Value = 0x0000000e00000010; PC = 0x555555556271 *)
mov edi L0x7fffffffdf24;
(* add    $0x15,%edi                               #! PC = 0x555555556275 *)
adds dc edi edi 0x15@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555556278 *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r8d                   #! EA = L0x7fffffffdf84; Value = 0x8304f2731fa12697; PC = 0x55555555627b *)
mov r8 L0x7fffffffdf84;
(* mov    %r8d,%r10d                               #! PC = 0x555555556280 *)
mov r10 r8;
(* rol    $0xf,%r10d                               #! PC = 0x555555556283 *)
rol r10@uint32 r10 0xf;
(* mov    %r8d,%edi                                #! PC = 0x555555556287 *)
mov edi r8;
(* rol    $0xd,%edi                                #! PC = 0x55555555628a *)
rol edi@uint32 edi 0xd;
(* xor    %r10d,%edi                               #! PC = 0x55555555628d *)
xor edi@uint32 edi r10;
(* shr    $0xa,%r8d                                #! PC = 0x555555556290 *)
split r8 dc r8 0xa;
(* xor    %r9d,%edx                                #! PC = 0x555555556294 *)
xor edx@uint32 edx r9;
(* add    0x70(%rsp,%rcx,4),%edx                   #! EA = L0x7fffffffdf8c; Value = 0x0000000000000000; PC = 0x555555556297 *)
adds dc edx edx L0x7fffffffdf8c;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffdf18; Value = 0x0000000000000000; PC = 0x55555555629b *)
mov r9 L0x7fffffffdf18;
(* add    0x70(%rsp,%r9,4),%edx                    #! EA = L0x7fffffffdf70; Value = 0x59e8f75e4f0a6dd0; PC = 0x5555555562a0 *)
adds dc edx edx L0x7fffffffdf70;
(* xor    %r8d,%edi                                #! PC = 0x5555555562a5 *)
xor edi@uint32 edi r8;
(* add    %edx,%edi                                #! PC = 0x5555555562a8 *)
adds dc edi edi edx;
(* mov    %edi,0x70(%rsp,%rcx,4)                   #! EA = L0x7fffffffdf8c; PC = 0x5555555562aa *)
mov L0x7fffffffdf8c edi;
(* mov    %r15d,%edx                               #! PC = 0x5555555562ae *)
mov edx r15;
(* ror    $0x6,%edx                                #! PC = 0x5555555562b1 *)
ror edx@uint32 edx 0x6;
(* mov    %edx,%ecx                                #! PC = 0x5555555562b4 *)
mov ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562b6 *)
mov edx r15;
(* ror    $0xb,%edx                                #! PC = 0x5555555562b9 *)
ror edx@uint32 edx 0xb;
(* xor    %edx,%ecx                                #! PC = 0x5555555562bc *)
xor ecx@uint32 ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562be *)
mov edx r15;
(* rol    $0x7,%edx                                #! PC = 0x5555555562c1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%ecx                                #! PC = 0x5555555562c4 *)
xor ecx@uint32 ecx edx;
(* add    0x5c(%r12),%edi                          #! EA = L0x55555555707c; Value = 0x983e515276f988da; PC = 0x5555555562c6 *)
adds dc edi edi L0x55555555707c;
(* add    %esi,%edi                                #! PC = 0x5555555562cb *)
adds dc edi edi esi;
(* add    %ecx,%edi                                #! PC = 0x5555555562cd *)
adds dc edi edi ecx;
(* mov    %r15d,%esi                               #! PC = 0x5555555562cf *)
mov esi r15;
(* not    %esi                                     #! PC = 0x5555555562d2 *)
not esi@uint32 esi;
(* and    %r13d,%esi                               #! PC = 0x5555555562d4 *)
and esi@uint32 esi r13;
(* mov    %r14d,%edx                               #! PC = 0x5555555562d7 *)
mov edx r14;
(* and    %r15d,%edx                               #! PC = 0x5555555562da *)
and edx@uint32 edx r15;
(* xor    %edx,%esi                                #! PC = 0x5555555562dd *)
xor esi@uint32 esi edx;
(* add    %esi,%edi                                #! PC = 0x5555555562df *)
adds dc edi edi esi;
(* mov    0xc(%rsp),%ecx                           #! EA = L0x7fffffffdf0c; Value = 0x555570205c3ac18b; PC = 0x5555555562e1 *)
mov ecx L0x7fffffffdf0c;
(* mov    %ecx,%esi                                #! PC = 0x5555555562e5 *)
mov esi ecx;
(* ror    $0x2,%esi                                #! PC = 0x5555555562e7 *)
ror esi@uint32 esi 0x2;
(* mov    %ecx,%edx                                #! PC = 0x5555555562ea *)
mov edx ecx;
(* ror    $0xd,%edx                                #! PC = 0x5555555562ec *)
ror edx@uint32 edx 0xd;
(* xor    %edx,%esi                                #! PC = 0x5555555562ef *)
xor esi@uint32 esi edx;
(* mov    %ecx,%edx                                #! PC = 0x5555555562f1 *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x5555555562f3 *)
rol edx@uint32 edx 0xa;
(* xor    %esi,%edx                                #! PC = 0x5555555562f6 *)
xor edx@uint32 edx esi;
(* mov    %r11d,%esi                               #! PC = 0x5555555562f8 *)
mov esi r11;
(* xor    %ebx,%esi                                #! PC = 0x5555555562fb *)
xor esi@uint32 esi ebx;
(* and    %ecx,%esi                                #! PC = 0x5555555562fd *)
and esi@uint32 esi ecx;
(* and    %ebx,%r11d                               #! PC = 0x5555555562ff *)
and r11@uint32 r11 ebx;
(* xor    %r11d,%esi                               #! PC = 0x555555556302 *)
xor esi@uint32 esi r11;
(* add    %edx,%esi                                #! PC = 0x555555556305 *)
adds dc esi esi edx;
(* add    %edi,%eax                                #! PC = 0x555555556307 *)
adds dc eax eax edi;
(* add    %edi,%esi                                #! PC = 0x555555556309 *)
adds dc esi esi edi;
(* mov    %esi,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x55555555630b *)
mov L0x7fffffffdf08 esi;
(* add    $0x20,%r12                               #! PC = 0x55555555630f *)
adds dc r12 r12 0x20@uint32;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555556313 *)
mov L0x7fffffffdf10 r12;
(* cmp    $0x40,%ebp                               #! PC = 0x555555556318 *)
(* cmp 0x40, ebp *)
nop;
(* #jne    0x555555555c2b <sha256_block_data_order+2669>#! PC = 0x55555555631b *)
#jne    0x555555555c2b <sha256_block_data_order+2669>#! 0x55555555631b = 0x55555555631b;
(* mov    %ebp,0x24(%rsp)                          #! EA = L0x7fffffffdf24; PC = 0x555555555c2b *)
mov L0x7fffffffdf24 ebp;
(* lea    0x1(%rbp),%esi                           #! PC = 0x555555555c2f *)
adds dc esi ebp 0x1@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555c32 *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf94; Value = 0x0000000000000000; PC = 0x555555555c35 *)
mov r9 L0x7fffffffdf94;
(* mov    %r9d,%r8d                                #! PC = 0x555555555c3a *)
mov r8 r9;
(* ror    $0x7,%r8d                                #! PC = 0x555555555c3d *)
ror r8@uint32 r8 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555555c41 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555555c44 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r8d                                #! PC = 0x555555555c47 *)
xor r8@uint32 r8 edx;
(* shr    $0x3,%r9d                                #! PC = 0x555555555c4a *)
split r9 dc r9 0x3;
(* lea    0xe(%rbp),%edx                           #! PC = 0x555555555c4e *)
adds dc edx ebp 0xe@uint32;
(* mov    %edx,%edi                                #! PC = 0x555555555c51 *)
mov edi edx;
(* and    $0xf,%edi                                #! PC = 0x555555555c53 *)
and edi@uint32 edi 0xf@uint32;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdf28; PC = 0x555555555c56 *)
mov L0x7fffffffdf28 edi;
(* mov    0x70(%rsp,%rdi,4),%edi                   #! EA = L0x7fffffffdf88; Value = 0x06a8f23d8304f273; PC = 0x555555555c5b *)
mov edi L0x7fffffffdf88;
(* mov    %edi,%edx                                #! PC = 0x555555555c5f *)
mov edx edi;
(* rol    $0xf,%edx                                #! PC = 0x555555555c61 *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x555555555c64 *)
mov ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555c66 *)
mov edx edi;
(* rol    $0xd,%edx                                #! PC = 0x555555555c68 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x555555555c6b *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%edi                                #! PC = 0x555555555c6d *)
split edi dc edi 0xa;
(* lea    0x9(%rbp),%ecx                           #! PC = 0x555555555c70 *)
adds dc ecx ebp 0x9@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555c73 *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    %ebp,%r11d                               #! PC = 0x555555555c76 *)
mov r11 ebp;
(* and    $0xf,%r11d                               #! PC = 0x555555555c79 *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r10d                  #! EA = L0x7fffffffdf90; Value = 0x0000000000000000; PC = 0x555555555c7d *)
mov r10 L0x7fffffffdf90;
(* add    0x70(%rsp,%rcx,4),%r10d                  #! EA = L0x7fffffffdf74; Value = 0xdf656fe859e8f75e; PC = 0x555555555c82 *)
adds dc r10 r10 L0x7fffffffdf74;
(* xor    %r9d,%r8d                                #! PC = 0x555555555c87 *)
xor r8@uint32 r8 r9;
(* add    %r10d,%r8d                               #! PC = 0x555555555c8a *)
adds dc r8 r8 r10;
(* xor    %edx,%edi                                #! PC = 0x555555555c8d *)
xor edi@uint32 edi edx;
(* add    %r8d,%edi                                #! PC = 0x555555555c8f *)
adds dc edi edi r8;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffdf18; PC = 0x555555555c92 *)
mov L0x7fffffffdf18 r11;
(* mov    %edi,0x70(%rsp,%r11,4)                   #! EA = L0x7fffffffdf90; PC = 0x555555555c97 *)
mov L0x7fffffffdf90 edi;
(* mov    %eax,%edx                                #! PC = 0x555555555c9c *)
mov edx eax;
(* ror    $0x6,%edx                                #! PC = 0x555555555c9e *)
ror edx@uint32 edx 0x6;
(* mov    %eax,%r10d                               #! PC = 0x555555555ca1 *)
mov r10 eax;
(* ror    $0xb,%r10d                               #! PC = 0x555555555ca4 *)
ror r10@uint32 r10 0xb;
(* xor    %edx,%r10d                               #! PC = 0x555555555ca8 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cab *)
mov edx eax;
(* rol    $0x7,%edx                                #! PC = 0x555555555cad *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r10d                               #! PC = 0x555555555cb0 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cb3 *)
mov edx eax;
(* not    %edx                                     #! PC = 0x555555555cb5 *)
not edx@uint32 edx;
(* and    %r14d,%edx                               #! PC = 0x555555555cb7 *)
and edx@uint32 edx r14;
(* mov    %eax,%ecx                                #! PC = 0x555555555cba *)
mov ecx eax;
(* and    %r15d,%ecx                               #! PC = 0x555555555cbc *)
and ecx@uint32 ecx r15;
(* xor    %ecx,%edx                                #! PC = 0x555555555cbf *)
xor edx@uint32 edx ecx;
(* add    %r10d,%edx                               #! PC = 0x555555555cc1 *)
adds dc edx edx r10;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x555555555cc4 *)
mov ecx L0x7fffffffdf10;
(* add    0x40(%rcx),%edx                          #! EA = L0x555555557080; Value = 0xa831c66d983e5152; PC = 0x555555555cc9 *)
adds dc edx edx L0x555555557080;
(* add    %edi,%edx                                #! PC = 0x555555555ccc *)
adds dc edx edx edi;
(* add    %edx,%r13d                               #! PC = 0x555555555cce *)
adds dc r13 r13 edx;
(* mov    0x8(%rsp),%edi                           #! EA = L0x7fffffffdf08; Value = 0x5c3ac18b9f5492a3; PC = 0x555555555cd1 *)
mov edi L0x7fffffffdf08;
(* mov    %edi,%edx                                #! PC = 0x555555555cd5 *)
mov edx edi;
(* ror    $0x2,%edx                                #! PC = 0x555555555cd7 *)
ror edx@uint32 edx 0x2;
(* mov    %edi,%ecx                                #! PC = 0x555555555cda *)
mov ecx edi;
(* ror    $0xd,%ecx                                #! PC = 0x555555555cdc *)
ror ecx@uint32 ecx 0xd;
(* xor    %edx,%ecx                                #! PC = 0x555555555cdf *)
xor ecx@uint32 ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555ce1 *)
mov edx edi;
(* rol    $0xa,%edx                                #! PC = 0x555555555ce3 *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%ecx                                #! PC = 0x555555555ce6 *)
xor ecx@uint32 ecx edx;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570405c3ac18b; PC = 0x555555555ce8 *)
mov r10 L0x7fffffffdf0c;
(* mov    %r10d,%edx                               #! PC = 0x555555555ced *)
mov edx r10;
(* xor    %ebx,%edx                                #! PC = 0x555555555cf0 *)
xor edx@uint32 edx ebx;
(* and    %edi,%edx                                #! PC = 0x555555555cf2 *)
and edx@uint32 edx edi;
(* mov    %r10d,%edi                               #! PC = 0x555555555cf4 *)
mov edi r10;
(* and    %ebx,%edi                                #! PC = 0x555555555cf7 *)
and edi@uint32 edi ebx;
(* xor    %edi,%edx                                #! PC = 0x555555555cf9 *)
xor edx@uint32 edx edi;
(* add    %ecx,%edx                                #! PC = 0x555555555cfb *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x000000189892134e; PC = 0x555555555cfd *)
mov r8 L0x7fffffffdf20;
(* add    %r13d,%r8d                               #! PC = 0x555555555d02 *)
adds dc r8 r8 r13;
(* add    %r13d,%edx                               #! PC = 0x555555555d05 *)
adds dc edx edx r13;
(* lea    0x2(%rbp),%edi                           #! PC = 0x555555555d08 *)
adds dc edi ebp 0x2@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555555d0b *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r12d                  #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x555555555d0e *)
mov r12 L0x7fffffffdf98;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d13 *)
mov r13 r12;
(* ror    $0x7,%r13d                               #! PC = 0x555555555d16 *)
ror r13@uint32 r13 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555d1a *)
mov r11 r13;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d1d *)
mov r13 r12;
(* rol    $0xe,%r13d                               #! PC = 0x555555555d20 *)
rol r13@uint32 r13 0xe;
(* xor    %r13d,%r11d                              #! PC = 0x555555555d24 *)
xor r11@uint32 r11 r13;
(* shr    $0x3,%r12d                               #! PC = 0x555555555d27 *)
split r12 dc r12 0x3;
(* lea    0xf(%rbp),%ecx                           #! PC = 0x555555555d2b *)
adds dc ecx ebp 0xf@uint32;
(* mov    %ecx,%r13d                               #! PC = 0x555555555d2e *)
mov r13 ecx;
(* and    $0xf,%r13d                               #! PC = 0x555555555d31 *)
and r13@uint32 r13 0xf@uint32;
(* mov    %r13,0x30(%rsp)                          #! EA = L0x7fffffffdf30; PC = 0x555555555d35 *)
mov L0x7fffffffdf30 r13;
(* mov    0x70(%rsp,%r13,4),%r10d                  #! EA = L0x7fffffffdf8c; Value = 0x4140683c06a8f23d; PC = 0x555555555d3a *)
mov r10 L0x7fffffffdf8c;
(* mov    %r10d,%r9d                               #! PC = 0x555555555d3f *)
mov r9 r10;
(* rol    $0xf,%r9d                                #! PC = 0x555555555d42 *)
rol r9@uint32 r9 0xf;
(* mov    %r10d,%ecx                               #! PC = 0x555555555d46 *)
mov ecx r10;
(* rol    $0xd,%ecx                                #! PC = 0x555555555d49 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555d4c *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r10d                               #! PC = 0x555555555d4f *)
split r10 dc r10 0xa;
(* lea    0xa(%rbp),%r9d                           #! PC = 0x555555555d53 *)
adds dc r9 ebp 0xa@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555d57 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r13d                  #! EA = L0x7fffffffdf94; Value = 0x0000000000000000; PC = 0x555555555d5b *)
mov r13 L0x7fffffffdf94;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf78; Value = 0x825fcc03df656fe8; PC = 0x555555555d60 *)
adds dc r13 r13 L0x7fffffffdf78;
(* xor    %r12d,%r11d                              #! PC = 0x555555555d65 *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555d68 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555d6b *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555d6e *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf94; PC = 0x555555555d71 *)
mov L0x7fffffffdf94 r11;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d76 *)
mov r12 r8;
(* ror    $0x6,%r12d                               #! PC = 0x555555555d79 *)
ror r12@uint32 r12 0x6;
(* mov    %r8d,%esi                                #! PC = 0x555555555d7d *)
mov esi r8;
(* ror    $0xb,%esi                                #! PC = 0x555555555d80 *)
ror esi@uint32 esi 0xb;
(* xor    %r12d,%esi                               #! PC = 0x555555555d83 *)
xor esi@uint32 esi r12;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d86 *)
mov r12 r8;
(* rol    $0x7,%r12d                               #! PC = 0x555555555d89 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%esi                               #! PC = 0x555555555d8d *)
xor esi@uint32 esi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x555555555d90 *)
mov ecx L0x7fffffffdf10;
(* add    0x44(%rcx),%r14d                         #! EA = L0x555555557084; Value = 0xb00327c8a831c66d; PC = 0x555555555d95 *)
adds dc r14 r14 L0x555555557084;
(* add    %r14d,%r11d                              #! PC = 0x555555555d99 *)
adds dc r11 r11 r14;
(* lea    (%rsi,%r11,1),%ecx                       #! PC = 0x555555555d9c *)
adds dc ecx esi r11;
(* mov    %r8d,%r14d                               #! PC = 0x555555555da0 *)
mov r14 r8;
(* not    %r14d                                    #! PC = 0x555555555da3 *)
not r14@uint32 r14;
(* mov    %r14d,%r11d                              #! PC = 0x555555555da6 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555da9 *)
and r11@uint32 r11 r15;
(* mov    %r8d,%r14d                               #! PC = 0x555555555dac *)
mov r14 r8;
(* and    %eax,%r14d                               #! PC = 0x555555555daf *)
and r14@uint32 r14 eax;
(* xor    %r14d,%r11d                              #! PC = 0x555555555db2 *)
xor r11@uint32 r11 r14;
(* add    %ecx,%r11d                               #! PC = 0x555555555db5 *)
adds dc r11 r11 ecx;
(* mov    %edx,%r14d                               #! PC = 0x555555555db8 *)
mov r14 edx;
(* ror    $0x2,%r14d                               #! PC = 0x555555555dbb *)
ror r14@uint32 r14 0x2;
(* mov    %edx,%r12d                               #! PC = 0x555555555dbf *)
mov r12 edx;
(* ror    $0xd,%r12d                               #! PC = 0x555555555dc2 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%ecx                               #! PC = 0x555555555dc6 *)
mov ecx r12;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dc9 *)
xor ecx@uint32 ecx r14;
(* mov    %edx,%r14d                               #! PC = 0x555555555dcc *)
mov r14 edx;
(* rol    $0xa,%r14d                               #! PC = 0x555555555dcf *)
rol r14@uint32 r14 0xa;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dd3 *)
xor ecx@uint32 ecx r14;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x5c3ac18b9f5492a3; PC = 0x555555555dd6 *)
mov esi L0x7fffffffdf08;
(* mov    %esi,%r14d                               #! PC = 0x555555555dda *)
mov r14 esi;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570405c3ac18b; PC = 0x555555555ddd *)
mov r10 L0x7fffffffdf0c;
(* xor    %r10d,%r14d                              #! PC = 0x555555555de2 *)
xor r14@uint32 r14 r10;
(* and    %edx,%r14d                               #! PC = 0x555555555de5 *)
and r14@uint32 r14 edx;
(* and    %r10d,%esi                               #! PC = 0x555555555de8 *)
and esi@uint32 esi r10;
(* xor    %esi,%r14d                               #! PC = 0x555555555deb *)
xor r14@uint32 r14 esi;
(* add    %ecx,%r14d                               #! PC = 0x555555555dee *)
adds dc r14 r14 ecx;
(* add    %r11d,%ebx                               #! PC = 0x555555555df1 *)
adds dc ebx ebx r11;
(* add    %r11d,%r14d                              #! PC = 0x555555555df4 *)
adds dc r14 r14 r11;
(* lea    0x3(%rbp),%esi                           #! PC = 0x555555555df7 *)
adds dc esi ebp 0x3@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555dfa *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r10d                  #! EA = L0x7fffffffdf9c; Value = 0x0000000000000000; PC = 0x555555555dfd *)
mov r10 L0x7fffffffdf9c;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e02 *)
mov r12 r10;
(* ror    $0x7,%r12d                               #! PC = 0x555555555e05 *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e09 *)
mov r9 r12;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e0c *)
mov r12 r10;
(* rol    $0xe,%r12d                               #! PC = 0x555555555e0f *)
rol r12@uint32 r12 0xe;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e13 *)
mov ecx r12;
(* xor    %r9d,%ecx                                #! PC = 0x555555555e16 *)
xor ecx@uint32 ecx r9;
(* shr    $0x3,%r10d                               #! PC = 0x555555555e19 *)
split r10 dc r10 0x3;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffdf18; Value = 0x0000000000000008; PC = 0x555555555e1d *)
mov r11 L0x7fffffffdf18;
(* mov    0x70(%rsp,%r11,4),%r12d                  #! EA = L0x7fffffffdf90; Value = 0x46bdf9a54140683c; PC = 0x555555555e22 *)
mov r12 L0x7fffffffdf90;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e27 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555e2a *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e2e *)
mov r9 r12;
(* rol    $0xd,%r9d                                #! PC = 0x555555555e31 *)
rol r9@uint32 r9 0xd;
(* xor    %r9d,%r11d                               #! PC = 0x555555555e35 *)
xor r11@uint32 r11 r9;
(* shr    $0xa,%r12d                               #! PC = 0x555555555e38 *)
split r12 dc r12 0xa;
(* lea    0xb(%rbp),%r9d                           #! PC = 0x555555555e3c *)
adds dc r9 ebp 0xb@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555e40 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r13d                  #! EA = L0x7fffffffdf98; Value = 0x0000000000000000; PC = 0x555555555e44 *)
mov r13 L0x7fffffffdf98;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf7c; Value = 0x9a3ead05825fcc03; PC = 0x555555555e49 *)
adds dc r13 r13 L0x7fffffffdf7c;
(* xor    %r12d,%r11d                              #! PC = 0x555555555e4e *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555e51 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555e54 *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555e57 *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rdi,4)                  #! EA = L0x7fffffffdf98; PC = 0x555555555e5a *)
mov L0x7fffffffdf98 r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e5f *)
mov r12 ebx;
(* ror    $0x6,%r12d                               #! PC = 0x555555555e62 *)
ror r12@uint32 r12 0x6;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e66 *)
mov ecx r12;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e69 *)
mov r12 ebx;
(* ror    $0xb,%r12d                               #! PC = 0x555555555e6c *)
ror r12@uint32 r12 0xb;
(* mov    %r12d,%edi                               #! PC = 0x555555555e70 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555e73 *)
xor edi@uint32 edi ecx;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e75 *)
mov r12 ebx;
(* rol    $0x7,%r12d                               #! PC = 0x555555555e78 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%edi                               #! PC = 0x555555555e7c *)
xor edi@uint32 edi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x555555555e7f *)
mov ecx L0x7fffffffdf10;
(* add    0x48(%rcx),%r15d                         #! EA = L0x555555557088; Value = 0xbf597fc7b00327c8; PC = 0x555555555e84 *)
adds dc r15 r15 L0x555555557088;
(* add    %r15d,%r11d                              #! PC = 0x555555555e88 *)
adds dc r11 r11 r15;
(* lea    (%rdi,%r11,1),%ecx                       #! PC = 0x555555555e8b *)
adds dc ecx edi r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e8f *)
mov r12 ebx;
(* not    %r12d                                    #! PC = 0x555555555e92 *)
not r12@uint32 r12;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e95 *)
mov r11 r12;
(* and    %eax,%r11d                               #! PC = 0x555555555e98 *)
and r11@uint32 r11 eax;
(* mov    %r8d,%r12d                               #! PC = 0x555555555e9b *)
mov r12 r8;
(* and    %ebx,%r12d                               #! PC = 0x555555555e9e *)
and r12@uint32 r12 ebx;
(* xor    %r12d,%r11d                              #! PC = 0x555555555ea1 *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555555ea4 *)
adds dc r11 r11 ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ea7 *)
mov r12 r14;
(* ror    $0x2,%r12d                               #! PC = 0x555555555eaa *)
ror r12@uint32 r12 0x2;
(* mov    %r12d,%ecx                               #! PC = 0x555555555eae *)
mov ecx r12;
(* mov    %r14d,%r12d                              #! PC = 0x555555555eb1 *)
mov r12 r14;
(* ror    $0xd,%r12d                               #! PC = 0x555555555eb4 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%edi                               #! PC = 0x555555555eb8 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555ebb *)
xor edi@uint32 edi ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ebd *)
mov r12 r14;
(* rol    $0xa,%r12d                               #! PC = 0x555555555ec0 *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%edi                               #! PC = 0x555555555ec4 *)
xor edi@uint32 edi r12;
(* mov    0x8(%rsp),%r15d                          #! EA = L0x7fffffffdf08; Value = 0x5c3ac18b9f5492a3; PC = 0x555555555ec7 *)
mov r15 L0x7fffffffdf08;
(* mov    %r15d,%ecx                               #! PC = 0x555555555ecc *)
mov ecx r15;
(* xor    %edx,%ecx                                #! PC = 0x555555555ecf *)
xor ecx@uint32 ecx edx;
(* and    %r14d,%ecx                               #! PC = 0x555555555ed1 *)
and ecx@uint32 ecx r14;
(* mov    %r15d,%r9d                               #! PC = 0x555555555ed4 *)
mov r9 r15;
(* and    %edx,%r9d                                #! PC = 0x555555555ed7 *)
and r9@uint32 r9 edx;
(* xor    %r9d,%ecx                                #! PC = 0x555555555eda *)
xor ecx@uint32 ecx r9;
(* add    %edi,%ecx                                #! PC = 0x555555555edd *)
adds dc ecx ecx edi;
(* mov    0xc(%rsp),%edi                           #! EA = L0x7fffffffdf0c; Value = 0x555570405c3ac18b; PC = 0x555555555edf *)
mov edi L0x7fffffffdf0c;
(* add    %r11d,%edi                               #! PC = 0x555555555ee3 *)
adds dc edi edi r11;
(* lea    (%r11,%rcx,1),%r15d                      #! PC = 0x555555555ee6 *)
adds dc r15 r11 ecx;
(* lea    0x4(%rbp),%r10d                          #! PC = 0x555555555eea *)
adds dc r10 ebp 0x4@uint32;
(* and    $0xf,%r10d                               #! PC = 0x555555555eee *)
and r10@uint32 r10 0xf@uint32;
(* mov    0x70(%rsp,%r10,4),%r13d                  #! EA = L0x7fffffffdfa0; Value = 0x0000000000000000; PC = 0x555555555ef2 *)
mov r13 L0x7fffffffdfa0;
(* mov    %r13d,%r12d                              #! PC = 0x555555555ef7 *)
mov r12 r13;
(* ror    $0x7,%r12d                               #! PC = 0x555555555efa *)
ror r12@uint32 r12 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555efe *)
mov r11 r13;
(* rol    $0xe,%r11d                               #! PC = 0x555555555f01 *)
rol r11@uint32 r11 0xe;
(* xor    %r11d,%r12d                              #! PC = 0x555555555f05 *)
xor r12@uint32 r12 r11;
(* shr    $0x3,%r13d                               #! PC = 0x555555555f08 *)
split r13 dc r13 0x3;
(* lea    0x11(%rbp),%ecx                          #! PC = 0x555555555f0c *)
adds dc ecx ebp 0x11@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555f0f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r11d                  #! EA = L0x7fffffffdf94; Value = 0xbb69c49546bdf9a5; PC = 0x555555555f12 *)
mov r11 L0x7fffffffdf94;
(* mov    %r11d,%r9d                               #! PC = 0x555555555f17 *)
mov r9 r11;
(* rol    $0xf,%r9d                                #! PC = 0x555555555f1a *)
rol r9@uint32 r9 0xf;
(* mov    %r11d,%ecx                               #! PC = 0x555555555f1e *)
mov ecx r11;
(* rol    $0xd,%ecx                                #! PC = 0x555555555f21 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555f24 *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r11d                               #! PC = 0x555555555f27 *)
split r11 dc r11 0xa;
(* lea    0xc(%rbp),%r9d                           #! PC = 0x555555555f2b *)
adds dc r9 ebp 0xc@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555f2f *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdf80; Value = 0x1fa126979a3ead05; PC = 0x555555555f33 *)
mov r9 L0x7fffffffdf80;
(* add    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf9c; Value = 0x0000000000000000; PC = 0x555555555f38 *)
adds dc r9 r9 L0x7fffffffdf9c;
(* xor    %r13d,%r12d                              #! PC = 0x555555555f3d *)
xor r12@uint32 r12 r13;
(* add    %r9d,%r12d                               #! PC = 0x555555555f40 *)
adds dc r12 r12 r9;
(* xor    %r11d,%ecx                               #! PC = 0x555555555f43 *)
xor ecx@uint32 ecx r11;
(* add    %ecx,%r12d                               #! PC = 0x555555555f46 *)
adds dc r12 r12 ecx;
(* mov    %r12d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf9c; PC = 0x555555555f49 *)
mov L0x7fffffffdf9c r12;
(* mov    %edi,%esi                                #! PC = 0x555555555f4e *)
mov esi edi;
(* ror    $0x6,%esi                                #! PC = 0x555555555f50 *)
ror esi@uint32 esi 0x6;
(* mov    %esi,%ecx                                #! PC = 0x555555555f53 *)
mov ecx esi;
(* mov    %edi,%esi                                #! PC = 0x555555555f55 *)
mov esi edi;
(* ror    $0xb,%esi                                #! PC = 0x555555555f57 *)
ror esi@uint32 esi 0xb;
(* xor    %ecx,%esi                                #! PC = 0x555555555f5a *)
xor esi@uint32 esi ecx;
(* mov    %edi,%r11d                               #! PC = 0x555555555f5c *)
mov r11 edi;
(* rol    $0x7,%r11d                               #! PC = 0x555555555f5f *)
rol r11@uint32 r11 0x7;
(* xor    %r11d,%esi                               #! PC = 0x555555555f63 *)
xor esi@uint32 esi r11;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x555555555f66 *)
mov ecx L0x7fffffffdf10;
(* add    0x4c(%rcx),%eax                          #! EA = L0x55555555708c; Value = 0xc6e00bf3bf597fc7; PC = 0x555555555f6b *)
adds dc eax eax L0x55555555708c;
(* add    %eax,%r12d                               #! PC = 0x555555555f6e *)
adds dc r12 r12 eax;
(* lea    (%rsi,%r12,1),%ecx                       #! PC = 0x555555555f71 *)
adds dc ecx esi r12;
(* mov    %edi,%r12d                               #! PC = 0x555555555f75 *)
mov r12 edi;
(* not    %r12d                                    #! PC = 0x555555555f78 *)
not r12@uint32 r12;
(* and    %r8d,%r12d                               #! PC = 0x555555555f7b *)
and r12@uint32 r12 r8;
(* mov    %ebx,%eax                                #! PC = 0x555555555f7e *)
mov eax ebx;
(* and    %edi,%eax                                #! PC = 0x555555555f80 *)
and eax@uint32 eax edi;
(* xor    %eax,%r12d                               #! PC = 0x555555555f82 *)
xor r12@uint32 r12 eax;
(* add    %ecx,%r12d                               #! PC = 0x555555555f85 *)
adds dc r12 r12 ecx;
(* mov    %r15d,%eax                               #! PC = 0x555555555f88 *)
mov eax r15;
(* ror    $0x2,%eax                                #! PC = 0x555555555f8b *)
ror eax@uint32 eax 0x2;
(* mov    %r15d,%esi                               #! PC = 0x555555555f8e *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555f91 *)
ror esi@uint32 esi 0xd;
(* mov    %esi,%ecx                                #! PC = 0x555555555f94 *)
mov ecx esi;
(* xor    %eax,%ecx                                #! PC = 0x555555555f96 *)
xor ecx@uint32 ecx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555f98 *)
mov eax r15;
(* rol    $0xa,%eax                                #! PC = 0x555555555f9b *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%ecx                                #! PC = 0x555555555f9e *)
xor ecx@uint32 ecx eax;
(* mov    %edx,%eax                                #! PC = 0x555555555fa0 *)
mov eax edx;
(* xor    %r14d,%eax                               #! PC = 0x555555555fa2 *)
xor eax@uint32 eax r14;
(* and    %r15d,%eax                               #! PC = 0x555555555fa5 *)
and eax@uint32 eax r15;
(* mov    %edx,%esi                                #! PC = 0x555555555fa8 *)
mov esi edx;
(* and    %r14d,%esi                               #! PC = 0x555555555faa *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555fad *)
xor eax@uint32 eax esi;
(* add    %ecx,%eax                                #! PC = 0x555555555faf *)
adds dc eax eax ecx;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x5c3ac18b9f5492a3; PC = 0x555555555fb1 *)
mov esi L0x7fffffffdf08;
(* add    %r12d,%esi                               #! PC = 0x555555555fb5 *)
adds dc esi esi r12;
(* add    %r12d,%eax                               #! PC = 0x555555555fb8 *)
adds dc eax eax r12;
(* lea    0x5(%rbp),%r9d                           #! PC = 0x555555555fbb *)
adds dc r9 ebp 0x5@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555fbf *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r11d                   #! EA = L0x7fffffffdfa4; Value = 0x0000000000000000; PC = 0x555555555fc3 *)
mov r11 L0x7fffffffdfa4;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fc8 *)
mov r12 r11;
(* ror    $0x7,%r12d                               #! PC = 0x555555555fcb *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r13d                              #! PC = 0x555555555fcf *)
mov r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fd2 *)
mov r12 r11;
(* rol    $0xe,%r12d                               #! PC = 0x555555555fd5 *)
rol r12@uint32 r12 0xe;
(* xor    %r12d,%r13d                              #! PC = 0x555555555fd9 *)
xor r13@uint32 r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fdc *)
mov r12 r11;
(* shr    $0x3,%r12d                               #! PC = 0x555555555fdf *)
split r12 dc r12 0x3;
(* mov    %r12d,0x8(%rsp)                          #! EA = L0x7fffffffdf08; PC = 0x555555555fe3 *)
mov L0x7fffffffdf08 r12;
(* lea    0x12(%rbp),%ecx                          #! PC = 0x555555555fe8 *)
adds dc ecx ebp 0x12@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555feb *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf98; Value = 0xde3651fcbb69c495; PC = 0x555555555fee *)
mov r12 L0x7fffffffdf98;
(* mov    %r12d,%r11d                              #! PC = 0x555555555ff3 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555ff6 *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%ecx                               #! PC = 0x555555555ffa *)
mov ecx r12;
(* rol    $0xd,%ecx                                #! PC = 0x555555555ffd *)
rol ecx@uint32 ecx 0xd;
(* xor    %r11d,%ecx                               #! PC = 0x555555556000 *)
xor ecx@uint32 ecx r11;
(* shr    $0xa,%r12d                               #! PC = 0x555555556003 *)
split r12 dc r12 0xa;
(* lea    0xd(%rbp),%r11d                          #! PC = 0x555555556007 *)
adds dc r11 ebp 0xd@uint32;
(* and    $0xf,%r11d                               #! PC = 0x55555555600b *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r11d                  #! EA = L0x7fffffffdf84; Value = 0x8304f2731fa12697; PC = 0x55555555600f *)
mov r11 L0x7fffffffdf84;
(* add    0x70(%rsp,%r10,4),%r11d                  #! EA = L0x7fffffffdfa0; Value = 0x0000000000000000; PC = 0x555555556014 *)
adds dc r11 r11 L0x7fffffffdfa0;
(* xor    0x8(%rsp),%r13d                          #! EA = L0x7fffffffdf08; Value = 0x5c3ac18b00000000; PC = 0x555555556019 *)
xor r13@uint32 r13 L0x7fffffffdf08;
(* add    %r11d,%r13d                              #! PC = 0x55555555601e *)
adds dc r13 r13 r11;
(* xor    %r12d,%ecx                               #! PC = 0x555555556021 *)
xor ecx@uint32 ecx r12;
(* add    %ecx,%r13d                               #! PC = 0x555555556024 *)
adds dc r13 r13 ecx;
(* mov    %r13d,0x70(%rsp,%r10,4)                  #! EA = L0x7fffffffdfa0; PC = 0x555555556027 *)
mov L0x7fffffffdfa0 r13;
(* mov    %esi,%r10d                               #! PC = 0x55555555602c *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x55555555602f *)
ror r10@uint32 r10 0x6;
(* mov    %r10d,%ecx                               #! PC = 0x555555556033 *)
mov ecx r10;
(* mov    %esi,%r10d                               #! PC = 0x555555556036 *)
mov r10 esi;
(* ror    $0xb,%r10d                               #! PC = 0x555555556039 *)
ror r10@uint32 r10 0xb;
(* xor    %ecx,%r10d                               #! PC = 0x55555555603d *)
xor r10@uint32 r10 ecx;
(* mov    %esi,%r12d                               #! PC = 0x555555556040 *)
mov r12 esi;
(* rol    $0x7,%r12d                               #! PC = 0x555555556043 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%r10d                              #! PC = 0x555555556047 *)
xor r10@uint32 r10 r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x55555555604a *)
mov ecx L0x7fffffffdf10;
(* add    0x50(%rcx),%r13d                         #! EA = L0x555555557090; Value = 0xd5a79147c6e00bf3; PC = 0x55555555604f *)
adds dc r13 r13 L0x555555557090;
(* add    %r8d,%r13d                               #! PC = 0x555555556053 *)
adds dc r13 r13 r8;
(* add    %r13d,%r10d                              #! PC = 0x555555556056 *)
adds dc r10 r10 r13;
(* mov    %esi,%r8d                                #! PC = 0x555555556059 *)
mov r8 esi;
(* not    %r8d                                     #! PC = 0x55555555605c *)
not r8@uint32 r8;
(* mov    %r8d,%ecx                                #! PC = 0x55555555605f *)
mov ecx r8;
(* and    %ebx,%ecx                                #! PC = 0x555555556062 *)
and ecx@uint32 ecx ebx;
(* mov    %edi,%r8d                                #! PC = 0x555555556064 *)
mov r8 edi;
(* and    %esi,%r8d                                #! PC = 0x555555556067 *)
and r8@uint32 r8 esi;
(* xor    %r8d,%ecx                                #! PC = 0x55555555606a *)
xor ecx@uint32 ecx r8;
(* add    %r10d,%ecx                               #! PC = 0x55555555606d *)
adds dc ecx ecx r10;
(* mov    %eax,%r8d                                #! PC = 0x555555556070 *)
mov r8 eax;
(* ror    $0x2,%r8d                                #! PC = 0x555555556073 *)
ror r8@uint32 r8 0x2;
(* mov    %eax,%r10d                               #! PC = 0x555555556077 *)
mov r10 eax;
(* ror    $0xd,%r10d                               #! PC = 0x55555555607a *)
ror r10@uint32 r10 0xd;
(* xor    %r8d,%r10d                               #! PC = 0x55555555607e *)
xor r10@uint32 r10 r8;
(* mov    %eax,%r8d                                #! PC = 0x555555556081 *)
mov r8 eax;
(* rol    $0xa,%r8d                                #! PC = 0x555555556084 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%r10d                               #! PC = 0x555555556088 *)
xor r10@uint32 r10 r8;
(* mov    %r14d,%r8d                               #! PC = 0x55555555608b *)
mov r8 r14;
(* xor    %r15d,%r8d                               #! PC = 0x55555555608e *)
xor r8@uint32 r8 r15;
(* and    %eax,%r8d                                #! PC = 0x555555556091 *)
and r8@uint32 r8 eax;
(* mov    %r14d,%r11d                              #! PC = 0x555555556094 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555556097 *)
and r11@uint32 r11 r15;
(* xor    %r11d,%r8d                               #! PC = 0x55555555609a *)
xor r8@uint32 r8 r11;
(* add    %r10d,%r8d                               #! PC = 0x55555555609d *)
adds dc r8 r8 r10;
(* lea    (%rdx,%rcx,1),%r13d                      #! PC = 0x5555555560a0 *)
adds dc r13 edx ecx;
(* lea    (%rcx,%r8,1),%r11d                       #! PC = 0x5555555560a4 *)
adds dc r11 ecx r8;
(* mov    %r11d,0x20(%rsp)                         #! EA = L0x7fffffffdf20; PC = 0x5555555560a8 *)
mov L0x7fffffffdf20 r11;
(* lea    0x6(%rbp),%r8d                           #! PC = 0x5555555560ad *)
adds dc r8 ebp 0x6@uint32;
(* and    $0xf,%r8d                                #! PC = 0x5555555560b1 *)
and r8@uint32 r8 0xf@uint32;
(* mov    0x70(%rsp,%r8,4),%r12d                   #! EA = L0x7fffffffdfa8; Value = 0x0000008000000000; PC = 0x5555555560b5 *)
mov r12 L0x7fffffffdfa8;
(* mov    %r12d,%edx                               #! PC = 0x5555555560ba *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x5555555560bd *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x5555555560c0 *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x5555555560c3 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x5555555560c6 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x5555555560c9 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x5555555560cc *)
split r12 dc r12 0x3;
(* lea    0x13(%rbp),%edx                          #! PC = 0x5555555560d0 *)
adds dc edx ebp 0x13@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555560d3 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf9c; Value = 0xfa97d73fde3651fc; PC = 0x5555555560d6 *)
mov r10 L0x7fffffffdf9c;
(* mov    %r10d,%edx                               #! PC = 0x5555555560db *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555560de *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x5555555560e1 *)
mov ecx edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555560e3 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555560e6 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555560e9 *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%r10d                               #! PC = 0x5555555560eb *)
split r10 dc r10 0xa;
(* mov    0x28(%rsp),%rcx                          #! EA = L0x7fffffffdf28; Value = 0x0000000000000006; PC = 0x5555555560ef *)
mov ecx L0x7fffffffdf28;
(* mov    0x70(%rsp,%rcx,4),%ecx                   #! EA = L0x7fffffffdf88; Value = 0x06a8f23d8304f273; PC = 0x5555555560f4 *)
mov ecx L0x7fffffffdf88;
(* add    0x70(%rsp,%r9,4),%ecx                    #! EA = L0x7fffffffdfa4; Value = 0x0000000000000000; PC = 0x5555555560f8 *)
adds dc ecx ecx L0x7fffffffdfa4;
(* xor    %r12d,%r11d                              #! PC = 0x5555555560fd *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555556100 *)
adds dc r11 r11 ecx;
(* xor    %r10d,%edx                               #! PC = 0x555555556103 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x555555556106 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r9,4)                   #! EA = L0x7fffffffdfa4; PC = 0x555555556109 *)
mov L0x7fffffffdfa4 r11;
(* mov    %r13d,%edx                               #! PC = 0x55555555610e *)
mov edx r13;
(* ror    $0x6,%edx                                #! PC = 0x555555556111 *)
ror edx@uint32 edx 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x555555556114 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x555555556117 *)
ror r10@uint32 r10 0xb;
(* mov    %r10d,%ecx                               #! PC = 0x55555555611b *)
mov ecx r10;
(* xor    %edx,%ecx                                #! PC = 0x55555555611e *)
xor ecx@uint32 ecx edx;
(* mov    %r13d,%edx                               #! PC = 0x555555556120 *)
mov edx r13;
(* rol    $0x7,%edx                                #! PC = 0x555555556123 *)
rol edx@uint32 edx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555556126 *)
xor edx@uint32 edx ecx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x555555556128 *)
mov r12 L0x7fffffffdf10;
(* add    0x54(%r12),%r11d                         #! EA = L0x555555557094; Value = 0x06ca6351d5a79147; PC = 0x55555555612d *)
adds dc r11 r11 L0x555555557094;
(* add    %ebx,%r11d                               #! PC = 0x555555556132 *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r11,1),%ecx                       #! PC = 0x555555556135 *)
adds dc ecx edx r11;
(* mov    %r13d,%ebx                               #! PC = 0x555555556139 *)
mov ebx r13;
(* not    %ebx                                     #! PC = 0x55555555613c *)
not ebx@uint32 ebx;
(* and    %edi,%ebx                                #! PC = 0x55555555613e *)
and ebx@uint32 ebx edi;
(* mov    %esi,%edx                                #! PC = 0x555555556140 *)
mov edx esi;
(* and    %r13d,%edx                               #! PC = 0x555555556142 *)
and edx@uint32 edx r13;
(* xor    %ebx,%edx                                #! PC = 0x555555556145 *)
xor edx@uint32 edx ebx;
(* add    %ecx,%edx                                #! PC = 0x555555556147 *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x00000018752b3ca3; PC = 0x555555556149 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%ebx                               #! PC = 0x55555555614e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555556151 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%ecx                               #! PC = 0x555555556154 *)
mov ecx r11;
(* ror    $0xd,%ecx                                #! PC = 0x555555556157 *)
ror ecx@uint32 ecx 0xd;
(* xor    %ebx,%ecx                                #! PC = 0x55555555615a *)
xor ecx@uint32 ecx ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555615c *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x55555555615f *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%ecx                                #! PC = 0x555555556162 *)
xor ecx@uint32 ecx ebx;
(* mov    %r15d,%ebx                               #! PC = 0x555555556164 *)
mov ebx r15;
(* xor    %eax,%ebx                                #! PC = 0x555555556167 *)
xor ebx@uint32 ebx eax;
(* and    %r11d,%ebx                               #! PC = 0x555555556169 *)
and ebx@uint32 ebx r11;
(* mov    %r15d,%r10d                              #! PC = 0x55555555616c *)
mov r10 r15;
(* and    %eax,%r10d                               #! PC = 0x55555555616f *)
and r10@uint32 r10 eax;
(* xor    %r10d,%ebx                               #! PC = 0x555555556172 *)
xor ebx@uint32 ebx r10;
(* add    %ecx,%ebx                                #! PC = 0x555555556175 *)
adds dc ebx ebx ecx;
(* add    %edx,%r14d                               #! PC = 0x555555556177 *)
adds dc r14 r14 edx;
(* add    %edx,%ebx                                #! PC = 0x55555555617a *)
adds dc ebx ebx edx;
(* lea    0x7(%rbp),%ecx                           #! PC = 0x55555555617c *)
adds dc ecx ebp 0x7@uint32;
(* and    $0xf,%ecx                                #! PC = 0x55555555617f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdfac; Value = 0x0000000000000080; PC = 0x555555556182 *)
mov r12 L0x7fffffffdfac;
(* mov    %r12d,%edx                               #! PC = 0x555555556187 *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x55555555618a *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x55555555618d *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x555555556190 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x555555556193 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x555555556196 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x555555556199 *)
split r12 dc r12 0x3;
(* lea    0x14(%rbp),%edx                          #! PC = 0x55555555619d *)
adds dc edx ebp 0x14@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555561a0 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdfa0; Value = 0x65fb6bbcfa97d73f; PC = 0x5555555561a3 *)
mov r10 L0x7fffffffdfa0;
(* mov    %r10d,%edx                               #! PC = 0x5555555561a8 *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555561ab *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%r9d                                #! PC = 0x5555555561ae *)
mov r9 edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555561b1 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555561b4 *)
rol edx@uint32 edx 0xd;
(* xor    %r9d,%edx                                #! PC = 0x5555555561b7 *)
xor edx@uint32 edx r9;
(* shr    $0xa,%r10d                               #! PC = 0x5555555561ba *)
split r10 dc r10 0xa;
(* mov    0x30(%rsp),%r9                           #! EA = L0x7fffffffdf30; Value = 0x0000000000000007; PC = 0x5555555561be *)
mov r9 L0x7fffffffdf30;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdf8c; Value = 0x4140683c06a8f23d; PC = 0x5555555561c3 *)
mov r9 L0x7fffffffdf8c;
(* add    0x70(%rsp,%r8,4),%r9d                    #! EA = L0x7fffffffdfa8; Value = 0x0000008000000000; PC = 0x5555555561c8 *)
adds dc r9 r9 L0x7fffffffdfa8;
(* xor    %r12d,%r11d                              #! PC = 0x5555555561cd *)
xor r11@uint32 r11 r12;
(* add    %r9d,%r11d                               #! PC = 0x5555555561d0 *)
adds dc r11 r11 r9;
(* xor    %r10d,%edx                               #! PC = 0x5555555561d3 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x5555555561d6 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r8,4)                   #! EA = L0x7fffffffdfa8; PC = 0x5555555561d9 *)
mov L0x7fffffffdfa8 r11;
(* mov    %r14d,%edx                               #! PC = 0x5555555561de *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x5555555561e1 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%r8d                               #! PC = 0x5555555561e4 *)
mov r8 r14;
(* ror    $0xb,%r8d                                #! PC = 0x5555555561e7 *)
ror r8@uint32 r8 0xb;
(* xor    %edx,%r8d                                #! PC = 0x5555555561eb *)
xor r8@uint32 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x5555555561ee *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x5555555561f1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r8d                                #! PC = 0x5555555561f4 *)
xor r8@uint32 r8 edx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557040; PC = 0x5555555561f7 *)
mov r12 L0x7fffffffdf10;
(* add    0x58(%r12),%r11d                         #! EA = L0x555555557098; Value = 0x1429296706ca6351; PC = 0x5555555561fc *)
adds dc r11 r11 L0x555555557098;
(* lea    (%r11,%rdi,1),%edx                       #! PC = 0x555555556201 *)
adds dc edx r11 edi;
(* add    %edx,%r8d                                #! PC = 0x555555556205 *)
adds dc r8 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x555555556208 *)
mov edx r14;
(* not    %edx                                     #! PC = 0x55555555620b *)
not edx@uint32 edx;
(* and    %esi,%edx                                #! PC = 0x55555555620d *)
and edx@uint32 edx esi;
(* mov    %r13d,%edi                               #! PC = 0x55555555620f *)
mov edi r13;
(* and    %r14d,%edi                               #! PC = 0x555555556212 *)
and edi@uint32 edi r14;
(* xor    %edi,%edx                                #! PC = 0x555555556215 *)
xor edx@uint32 edx edi;
(* add    %r8d,%edx                                #! PC = 0x555555556217 *)
adds dc edx edx r8;
(* mov    %ebx,%r8d                                #! PC = 0x55555555621a *)
mov r8 ebx;
(* ror    $0x2,%r8d                                #! PC = 0x55555555621d *)
ror r8@uint32 r8 0x2;
(* mov    %ebx,%edi                                #! PC = 0x555555556221 *)
mov edi ebx;
(* ror    $0xd,%edi                                #! PC = 0x555555556223 *)
ror edi@uint32 edi 0xd;
(* xor    %edi,%r8d                                #! PC = 0x555555556226 *)
xor r8@uint32 r8 edi;
(* mov    %ebx,%edi                                #! PC = 0x555555556229 *)
mov edi ebx;
(* rol    $0xa,%edi                                #! PC = 0x55555555622b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%r8d                                #! PC = 0x55555555622e *)
xor r8@uint32 r8 edi;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x00000018752b3ca3; PC = 0x555555556231 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%edi                               #! PC = 0x555555556236 *)
mov edi r11;
(* xor    %eax,%edi                                #! PC = 0x555555556239 *)
xor edi@uint32 edi eax;
(* and    %ebx,%edi                                #! PC = 0x55555555623b *)
and edi@uint32 edi ebx;
(* mov    %r11d,%r9d                               #! PC = 0x55555555623d *)
mov r9 r11;
(* and    %eax,%r9d                                #! PC = 0x555555556240 *)
and r9@uint32 r9 eax;
(* xor    %r9d,%edi                                #! PC = 0x555555556243 *)
xor edi@uint32 edi r9;
(* add    %r8d,%edi                                #! PC = 0x555555556246 *)
adds dc edi edi r8;
(* add    %edx,%r15d                               #! PC = 0x555555556249 *)
adds dc r15 r15 edx;
(* add    %edx,%edi                                #! PC = 0x55555555624c *)
adds dc edi edi edx;
(* mov    %edi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x55555555624e *)
mov L0x7fffffffdf0c edi;
(* add    $0x8,%ebp                                #! PC = 0x555555556252 *)
adds dc ebp ebp 0x8@uint32;
(* mov    %ebp,%edx                                #! PC = 0x555555556255 *)
mov edx ebp;
(* and    $0xf,%edx                                #! PC = 0x555555556257 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r9d                   #! EA = L0x7fffffffdf70; Value = 0x59e8f75e4f0a6dd0; PC = 0x55555555625a *)
mov r9 L0x7fffffffdf70;
(* mov    %r9d,%edi                                #! PC = 0x55555555625f *)
mov edi r9;
(* ror    $0x7,%edi                                #! PC = 0x555555556262 *)
ror edi@uint32 edi 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555556265 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555556268 *)
rol edx@uint32 edx 0xe;
(* xor    %edi,%edx                                #! PC = 0x55555555626b *)
xor edx@uint32 edx edi;
(* shr    $0x3,%r9d                                #! PC = 0x55555555626d *)
split r9 dc r9 0x3;
(* mov    0x24(%rsp),%edi                          #! EA = L0x7fffffffdf24; Value = 0x0000000600000018; PC = 0x555555556271 *)
mov edi L0x7fffffffdf24;
(* add    $0x15,%edi                               #! PC = 0x555555556275 *)
adds dc edi edi 0x15@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555556278 *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r8d                   #! EA = L0x7fffffffdfa4; Value = 0x180f9a3a65fb6bbc; PC = 0x55555555627b *)
mov r8 L0x7fffffffdfa4;
(* mov    %r8d,%r10d                               #! PC = 0x555555556280 *)
mov r10 r8;
(* rol    $0xf,%r10d                               #! PC = 0x555555556283 *)
rol r10@uint32 r10 0xf;
(* mov    %r8d,%edi                                #! PC = 0x555555556287 *)
mov edi r8;
(* rol    $0xd,%edi                                #! PC = 0x55555555628a *)
rol edi@uint32 edi 0xd;
(* xor    %r10d,%edi                               #! PC = 0x55555555628d *)
xor edi@uint32 edi r10;
(* shr    $0xa,%r8d                                #! PC = 0x555555556290 *)
split r8 dc r8 0xa;
(* xor    %r9d,%edx                                #! PC = 0x555555556294 *)
xor edx@uint32 edx r9;
(* add    0x70(%rsp,%rcx,4),%edx                   #! EA = L0x7fffffffdfac; Value = 0x0000000000000080; PC = 0x555555556297 *)
adds dc edx edx L0x7fffffffdfac;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffdf18; Value = 0x0000000000000008; PC = 0x55555555629b *)
mov r9 L0x7fffffffdf18;
(* add    0x70(%rsp,%r9,4),%edx                    #! EA = L0x7fffffffdf90; Value = 0x46bdf9a54140683c; PC = 0x5555555562a0 *)
adds dc edx edx L0x7fffffffdf90;
(* xor    %r8d,%edi                                #! PC = 0x5555555562a5 *)
xor edi@uint32 edi r8;
(* add    %edx,%edi                                #! PC = 0x5555555562a8 *)
adds dc edi edi edx;
(* mov    %edi,0x70(%rsp,%rcx,4)                   #! EA = L0x7fffffffdfac; PC = 0x5555555562aa *)
mov L0x7fffffffdfac edi;
(* mov    %r15d,%edx                               #! PC = 0x5555555562ae *)
mov edx r15;
(* ror    $0x6,%edx                                #! PC = 0x5555555562b1 *)
ror edx@uint32 edx 0x6;
(* mov    %edx,%ecx                                #! PC = 0x5555555562b4 *)
mov ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562b6 *)
mov edx r15;
(* ror    $0xb,%edx                                #! PC = 0x5555555562b9 *)
ror edx@uint32 edx 0xb;
(* xor    %edx,%ecx                                #! PC = 0x5555555562bc *)
xor ecx@uint32 ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562be *)
mov edx r15;
(* rol    $0x7,%edx                                #! PC = 0x5555555562c1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%ecx                                #! PC = 0x5555555562c4 *)
xor ecx@uint32 ecx edx;
(* add    0x5c(%r12),%edi                          #! EA = L0x55555555709c; Value = 0x27b70a8514292967; PC = 0x5555555562c6 *)
adds dc edi edi L0x55555555709c;
(* add    %esi,%edi                                #! PC = 0x5555555562cb *)
adds dc edi edi esi;
(* add    %ecx,%edi                                #! PC = 0x5555555562cd *)
adds dc edi edi ecx;
(* mov    %r15d,%esi                               #! PC = 0x5555555562cf *)
mov esi r15;
(* not    %esi                                     #! PC = 0x5555555562d2 *)
not esi@uint32 esi;
(* and    %r13d,%esi                               #! PC = 0x5555555562d4 *)
and esi@uint32 esi r13;
(* mov    %r14d,%edx                               #! PC = 0x5555555562d7 *)
mov edx r14;
(* and    %r15d,%edx                               #! PC = 0x5555555562da *)
and edx@uint32 edx r15;
(* xor    %edx,%esi                                #! PC = 0x5555555562dd *)
xor esi@uint32 esi edx;
(* add    %esi,%edi                                #! PC = 0x5555555562df *)
adds dc edi edi esi;
(* mov    0xc(%rsp),%ecx                           #! EA = L0x7fffffffdf0c; Value = 0x555570400de093b9; PC = 0x5555555562e1 *)
mov ecx L0x7fffffffdf0c;
(* mov    %ecx,%esi                                #! PC = 0x5555555562e5 *)
mov esi ecx;
(* ror    $0x2,%esi                                #! PC = 0x5555555562e7 *)
ror esi@uint32 esi 0x2;
(* mov    %ecx,%edx                                #! PC = 0x5555555562ea *)
mov edx ecx;
(* ror    $0xd,%edx                                #! PC = 0x5555555562ec *)
ror edx@uint32 edx 0xd;
(* xor    %edx,%esi                                #! PC = 0x5555555562ef *)
xor esi@uint32 esi edx;
(* mov    %ecx,%edx                                #! PC = 0x5555555562f1 *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x5555555562f3 *)
rol edx@uint32 edx 0xa;
(* xor    %esi,%edx                                #! PC = 0x5555555562f6 *)
xor edx@uint32 edx esi;
(* mov    %r11d,%esi                               #! PC = 0x5555555562f8 *)
mov esi r11;
(* xor    %ebx,%esi                                #! PC = 0x5555555562fb *)
xor esi@uint32 esi ebx;
(* and    %ecx,%esi                                #! PC = 0x5555555562fd *)
and esi@uint32 esi ecx;
(* and    %ebx,%r11d                               #! PC = 0x5555555562ff *)
and r11@uint32 r11 ebx;
(* xor    %r11d,%esi                               #! PC = 0x555555556302 *)
xor esi@uint32 esi r11;
(* add    %edx,%esi                                #! PC = 0x555555556305 *)
adds dc esi esi edx;
(* add    %edi,%eax                                #! PC = 0x555555556307 *)
adds dc eax eax edi;
(* add    %edi,%esi                                #! PC = 0x555555556309 *)
adds dc esi esi edi;
(* mov    %esi,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x55555555630b *)
mov L0x7fffffffdf08 esi;
(* add    $0x20,%r12                               #! PC = 0x55555555630f *)
adds dc r12 r12 0x20@uint32;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555556313 *)
mov L0x7fffffffdf10 r12;
(* cmp    $0x40,%ebp                               #! PC = 0x555555556318 *)
(* cmp 0x40, ebp *)
nop;
(* #jne    0x555555555c2b <sha256_block_data_order+2669>#! PC = 0x55555555631b *)
#jne    0x555555555c2b <sha256_block_data_order+2669>#! 0x55555555631b = 0x55555555631b;
(* mov    %ebp,0x24(%rsp)                          #! EA = L0x7fffffffdf24; PC = 0x555555555c2b *)
mov L0x7fffffffdf24 ebp;
(* lea    0x1(%rbp),%esi                           #! PC = 0x555555555c2f *)
adds dc esi ebp 0x1@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555c32 *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf74; Value = 0xdf656fe859e8f75e; PC = 0x555555555c35 *)
mov r9 L0x7fffffffdf74;
(* mov    %r9d,%r8d                                #! PC = 0x555555555c3a *)
mov r8 r9;
(* ror    $0x7,%r8d                                #! PC = 0x555555555c3d *)
ror r8@uint32 r8 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555555c41 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555555c44 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r8d                                #! PC = 0x555555555c47 *)
xor r8@uint32 r8 edx;
(* shr    $0x3,%r9d                                #! PC = 0x555555555c4a *)
split r9 dc r9 0x3;
(* lea    0xe(%rbp),%edx                           #! PC = 0x555555555c4e *)
adds dc edx ebp 0xe@uint32;
(* mov    %edx,%edi                                #! PC = 0x555555555c51 *)
mov edi edx;
(* and    $0xf,%edi                                #! PC = 0x555555555c53 *)
and edi@uint32 edi 0xf@uint32;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdf28; PC = 0x555555555c56 *)
mov L0x7fffffffdf28 edi;
(* mov    0x70(%rsp,%rdi,4),%edi                   #! EA = L0x7fffffffdfa8; Value = 0x4bfc73f7180f9a3a; PC = 0x555555555c5b *)
mov edi L0x7fffffffdfa8;
(* mov    %edi,%edx                                #! PC = 0x555555555c5f *)
mov edx edi;
(* rol    $0xf,%edx                                #! PC = 0x555555555c61 *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x555555555c64 *)
mov ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555c66 *)
mov edx edi;
(* rol    $0xd,%edx                                #! PC = 0x555555555c68 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x555555555c6b *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%edi                                #! PC = 0x555555555c6d *)
split edi dc edi 0xa;
(* lea    0x9(%rbp),%ecx                           #! PC = 0x555555555c70 *)
adds dc ecx ebp 0x9@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555c73 *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    %ebp,%r11d                               #! PC = 0x555555555c76 *)
mov r11 ebp;
(* and    $0xf,%r11d                               #! PC = 0x555555555c79 *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r10d                  #! EA = L0x7fffffffdf70; Value = 0x59e8f75e4f0a6dd0; PC = 0x555555555c7d *)
mov r10 L0x7fffffffdf70;
(* add    0x70(%rsp,%rcx,4),%r10d                  #! EA = L0x7fffffffdf94; Value = 0xbb69c49546bdf9a5; PC = 0x555555555c82 *)
adds dc r10 r10 L0x7fffffffdf94;
(* xor    %r9d,%r8d                                #! PC = 0x555555555c87 *)
xor r8@uint32 r8 r9;
(* add    %r10d,%r8d                               #! PC = 0x555555555c8a *)
adds dc r8 r8 r10;
(* xor    %edx,%edi                                #! PC = 0x555555555c8d *)
xor edi@uint32 edi edx;
(* add    %r8d,%edi                                #! PC = 0x555555555c8f *)
adds dc edi edi r8;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffdf18; PC = 0x555555555c92 *)
mov L0x7fffffffdf18 r11;
(* mov    %edi,0x70(%rsp,%r11,4)                   #! EA = L0x7fffffffdf70; PC = 0x555555555c97 *)
mov L0x7fffffffdf70 edi;
(* mov    %eax,%edx                                #! PC = 0x555555555c9c *)
mov edx eax;
(* ror    $0x6,%edx                                #! PC = 0x555555555c9e *)
ror edx@uint32 edx 0x6;
(* mov    %eax,%r10d                               #! PC = 0x555555555ca1 *)
mov r10 eax;
(* ror    $0xb,%r10d                               #! PC = 0x555555555ca4 *)
ror r10@uint32 r10 0xb;
(* xor    %edx,%r10d                               #! PC = 0x555555555ca8 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cab *)
mov edx eax;
(* rol    $0x7,%edx                                #! PC = 0x555555555cad *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r10d                               #! PC = 0x555555555cb0 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cb3 *)
mov edx eax;
(* not    %edx                                     #! PC = 0x555555555cb5 *)
not edx@uint32 edx;
(* and    %r14d,%edx                               #! PC = 0x555555555cb7 *)
and edx@uint32 edx r14;
(* mov    %eax,%ecx                                #! PC = 0x555555555cba *)
mov ecx eax;
(* and    %r15d,%ecx                               #! PC = 0x555555555cbc *)
and ecx@uint32 ecx r15;
(* xor    %ecx,%edx                                #! PC = 0x555555555cbf *)
xor edx@uint32 edx ecx;
(* add    %r10d,%edx                               #! PC = 0x555555555cc1 *)
adds dc edx edx r10;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x555555555cc4 *)
mov ecx L0x7fffffffdf10;
(* add    0x40(%rcx),%edx                          #! EA = L0x5555555570a0; Value = 0x2e1b213827b70a85; PC = 0x555555555cc9 *)
adds dc edx edx L0x5555555570a0;
(* add    %edi,%edx                                #! PC = 0x555555555ccc *)
adds dc edx edx edi;
(* add    %edx,%r13d                               #! PC = 0x555555555cce *)
adds dc r13 r13 edx;
(* mov    0x8(%rsp),%edi                           #! EA = L0x7fffffffdf08; Value = 0x0de093b995d9caba; PC = 0x555555555cd1 *)
mov edi L0x7fffffffdf08;
(* mov    %edi,%edx                                #! PC = 0x555555555cd5 *)
mov edx edi;
(* ror    $0x2,%edx                                #! PC = 0x555555555cd7 *)
ror edx@uint32 edx 0x2;
(* mov    %edi,%ecx                                #! PC = 0x555555555cda *)
mov ecx edi;
(* ror    $0xd,%ecx                                #! PC = 0x555555555cdc *)
ror ecx@uint32 ecx 0xd;
(* xor    %edx,%ecx                                #! PC = 0x555555555cdf *)
xor ecx@uint32 ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555ce1 *)
mov edx edi;
(* rol    $0xa,%edx                                #! PC = 0x555555555ce3 *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%ecx                                #! PC = 0x555555555ce6 *)
xor ecx@uint32 ecx edx;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570600de093b9; PC = 0x555555555ce8 *)
mov r10 L0x7fffffffdf0c;
(* mov    %r10d,%edx                               #! PC = 0x555555555ced *)
mov edx r10;
(* xor    %ebx,%edx                                #! PC = 0x555555555cf0 *)
xor edx@uint32 edx ebx;
(* and    %edi,%edx                                #! PC = 0x555555555cf2 *)
and edx@uint32 edx edi;
(* mov    %r10d,%edi                               #! PC = 0x555555555cf4 *)
mov edi r10;
(* and    %ebx,%edi                                #! PC = 0x555555555cf7 *)
and edi@uint32 edi ebx;
(* xor    %edi,%edx                                #! PC = 0x555555555cf9 *)
xor edx@uint32 edx edi;
(* add    %ecx,%edx                                #! PC = 0x555555555cfb *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x00000020752b3ca3; PC = 0x555555555cfd *)
mov r8 L0x7fffffffdf20;
(* add    %r13d,%r8d                               #! PC = 0x555555555d02 *)
adds dc r8 r8 r13;
(* add    %r13d,%edx                               #! PC = 0x555555555d05 *)
adds dc edx edx r13;
(* lea    0x2(%rbp),%edi                           #! PC = 0x555555555d08 *)
adds dc edi ebp 0x2@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555555d0b *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r12d                  #! EA = L0x7fffffffdf78; Value = 0x825fcc03df656fe8; PC = 0x555555555d0e *)
mov r12 L0x7fffffffdf78;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d13 *)
mov r13 r12;
(* ror    $0x7,%r13d                               #! PC = 0x555555555d16 *)
ror r13@uint32 r13 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555d1a *)
mov r11 r13;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d1d *)
mov r13 r12;
(* rol    $0xe,%r13d                               #! PC = 0x555555555d20 *)
rol r13@uint32 r13 0xe;
(* xor    %r13d,%r11d                              #! PC = 0x555555555d24 *)
xor r11@uint32 r11 r13;
(* shr    $0x3,%r12d                               #! PC = 0x555555555d27 *)
split r12 dc r12 0x3;
(* lea    0xf(%rbp),%ecx                           #! PC = 0x555555555d2b *)
adds dc ecx ebp 0xf@uint32;
(* mov    %ecx,%r13d                               #! PC = 0x555555555d2e *)
mov r13 ecx;
(* and    $0xf,%r13d                               #! PC = 0x555555555d31 *)
and r13@uint32 r13 0xf@uint32;
(* mov    %r13,0x30(%rsp)                          #! EA = L0x7fffffffdf30; PC = 0x555555555d35 *)
mov L0x7fffffffdf30 r13;
(* mov    0x70(%rsp,%r13,4),%r10d                  #! EA = L0x7fffffffdfac; Value = 0x000000004bfc73f7; PC = 0x555555555d3a *)
mov r10 L0x7fffffffdfac;
(* mov    %r10d,%r9d                               #! PC = 0x555555555d3f *)
mov r9 r10;
(* rol    $0xf,%r9d                                #! PC = 0x555555555d42 *)
rol r9@uint32 r9 0xf;
(* mov    %r10d,%ecx                               #! PC = 0x555555555d46 *)
mov ecx r10;
(* rol    $0xd,%ecx                                #! PC = 0x555555555d49 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555d4c *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r10d                               #! PC = 0x555555555d4f *)
split r10 dc r10 0xa;
(* lea    0xa(%rbp),%r9d                           #! PC = 0x555555555d53 *)
adds dc r9 ebp 0xa@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555d57 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r13d                  #! EA = L0x7fffffffdf74; Value = 0xdf656fe859e8f75e; PC = 0x555555555d5b *)
mov r13 L0x7fffffffdf74;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf98; Value = 0xde3651fcbb69c495; PC = 0x555555555d60 *)
adds dc r13 r13 L0x7fffffffdf98;
(* xor    %r12d,%r11d                              #! PC = 0x555555555d65 *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555d68 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555d6b *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555d6e *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf74; PC = 0x555555555d71 *)
mov L0x7fffffffdf74 r11;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d76 *)
mov r12 r8;
(* ror    $0x6,%r12d                               #! PC = 0x555555555d79 *)
ror r12@uint32 r12 0x6;
(* mov    %r8d,%esi                                #! PC = 0x555555555d7d *)
mov esi r8;
(* ror    $0xb,%esi                                #! PC = 0x555555555d80 *)
ror esi@uint32 esi 0xb;
(* xor    %r12d,%esi                               #! PC = 0x555555555d83 *)
xor esi@uint32 esi r12;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d86 *)
mov r12 r8;
(* rol    $0x7,%r12d                               #! PC = 0x555555555d89 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%esi                               #! PC = 0x555555555d8d *)
xor esi@uint32 esi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x555555555d90 *)
mov ecx L0x7fffffffdf10;
(* add    0x44(%rcx),%r14d                         #! EA = L0x5555555570a4; Value = 0x4d2c6dfc2e1b2138; PC = 0x555555555d95 *)
adds dc r14 r14 L0x5555555570a4;
(* add    %r14d,%r11d                              #! PC = 0x555555555d99 *)
adds dc r11 r11 r14;
(* lea    (%rsi,%r11,1),%ecx                       #! PC = 0x555555555d9c *)
adds dc ecx esi r11;
(* mov    %r8d,%r14d                               #! PC = 0x555555555da0 *)
mov r14 r8;
(* not    %r14d                                    #! PC = 0x555555555da3 *)
not r14@uint32 r14;
(* mov    %r14d,%r11d                              #! PC = 0x555555555da6 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555da9 *)
and r11@uint32 r11 r15;
(* mov    %r8d,%r14d                               #! PC = 0x555555555dac *)
mov r14 r8;
(* and    %eax,%r14d                               #! PC = 0x555555555daf *)
and r14@uint32 r14 eax;
(* xor    %r14d,%r11d                              #! PC = 0x555555555db2 *)
xor r11@uint32 r11 r14;
(* add    %ecx,%r11d                               #! PC = 0x555555555db5 *)
adds dc r11 r11 ecx;
(* mov    %edx,%r14d                               #! PC = 0x555555555db8 *)
mov r14 edx;
(* ror    $0x2,%r14d                               #! PC = 0x555555555dbb *)
ror r14@uint32 r14 0x2;
(* mov    %edx,%r12d                               #! PC = 0x555555555dbf *)
mov r12 edx;
(* ror    $0xd,%r12d                               #! PC = 0x555555555dc2 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%ecx                               #! PC = 0x555555555dc6 *)
mov ecx r12;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dc9 *)
xor ecx@uint32 ecx r14;
(* mov    %edx,%r14d                               #! PC = 0x555555555dcc *)
mov r14 edx;
(* rol    $0xa,%r14d                               #! PC = 0x555555555dcf *)
rol r14@uint32 r14 0xa;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dd3 *)
xor ecx@uint32 ecx r14;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x0de093b995d9caba; PC = 0x555555555dd6 *)
mov esi L0x7fffffffdf08;
(* mov    %esi,%r14d                               #! PC = 0x555555555dda *)
mov r14 esi;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570600de093b9; PC = 0x555555555ddd *)
mov r10 L0x7fffffffdf0c;
(* xor    %r10d,%r14d                              #! PC = 0x555555555de2 *)
xor r14@uint32 r14 r10;
(* and    %edx,%r14d                               #! PC = 0x555555555de5 *)
and r14@uint32 r14 edx;
(* and    %r10d,%esi                               #! PC = 0x555555555de8 *)
and esi@uint32 esi r10;
(* xor    %esi,%r14d                               #! PC = 0x555555555deb *)
xor r14@uint32 r14 esi;
(* add    %ecx,%r14d                               #! PC = 0x555555555dee *)
adds dc r14 r14 ecx;
(* add    %r11d,%ebx                               #! PC = 0x555555555df1 *)
adds dc ebx ebx r11;
(* add    %r11d,%r14d                              #! PC = 0x555555555df4 *)
adds dc r14 r14 r11;
(* lea    0x3(%rbp),%esi                           #! PC = 0x555555555df7 *)
adds dc esi ebp 0x3@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555dfa *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r10d                  #! EA = L0x7fffffffdf7c; Value = 0x9a3ead05825fcc03; PC = 0x555555555dfd *)
mov r10 L0x7fffffffdf7c;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e02 *)
mov r12 r10;
(* ror    $0x7,%r12d                               #! PC = 0x555555555e05 *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e09 *)
mov r9 r12;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e0c *)
mov r12 r10;
(* rol    $0xe,%r12d                               #! PC = 0x555555555e0f *)
rol r12@uint32 r12 0xe;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e13 *)
mov ecx r12;
(* xor    %r9d,%ecx                                #! PC = 0x555555555e16 *)
xor ecx@uint32 ecx r9;
(* shr    $0x3,%r10d                               #! PC = 0x555555555e19 *)
split r10 dc r10 0x3;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffdf18; Value = 0x0000000000000000; PC = 0x555555555e1d *)
mov r11 L0x7fffffffdf18;
(* mov    0x70(%rsp,%r11,4),%r12d                  #! EA = L0x7fffffffdf70; Value = 0x5e92c08b5e7e0dd4; PC = 0x555555555e22 *)
mov r12 L0x7fffffffdf70;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e27 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555e2a *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e2e *)
mov r9 r12;
(* rol    $0xd,%r9d                                #! PC = 0x555555555e31 *)
rol r9@uint32 r9 0xd;
(* xor    %r9d,%r11d                               #! PC = 0x555555555e35 *)
xor r11@uint32 r11 r9;
(* shr    $0xa,%r12d                               #! PC = 0x555555555e38 *)
split r12 dc r12 0xa;
(* lea    0xb(%rbp),%r9d                           #! PC = 0x555555555e3c *)
adds dc r9 ebp 0xb@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555e40 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r13d                  #! EA = L0x7fffffffdf78; Value = 0x825fcc03df656fe8; PC = 0x555555555e44 *)
mov r13 L0x7fffffffdf78;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf9c; Value = 0xfa97d73fde3651fc; PC = 0x555555555e49 *)
adds dc r13 r13 L0x7fffffffdf9c;
(* xor    %r12d,%r11d                              #! PC = 0x555555555e4e *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555e51 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555e54 *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555e57 *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rdi,4)                  #! EA = L0x7fffffffdf78; PC = 0x555555555e5a *)
mov L0x7fffffffdf78 r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e5f *)
mov r12 ebx;
(* ror    $0x6,%r12d                               #! PC = 0x555555555e62 *)
ror r12@uint32 r12 0x6;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e66 *)
mov ecx r12;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e69 *)
mov r12 ebx;
(* ror    $0xb,%r12d                               #! PC = 0x555555555e6c *)
ror r12@uint32 r12 0xb;
(* mov    %r12d,%edi                               #! PC = 0x555555555e70 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555e73 *)
xor edi@uint32 edi ecx;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e75 *)
mov r12 ebx;
(* rol    $0x7,%r12d                               #! PC = 0x555555555e78 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%edi                               #! PC = 0x555555555e7c *)
xor edi@uint32 edi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x555555555e7f *)
mov ecx L0x7fffffffdf10;
(* add    0x48(%rcx),%r15d                         #! EA = L0x5555555570a8; Value = 0x53380d134d2c6dfc; PC = 0x555555555e84 *)
adds dc r15 r15 L0x5555555570a8;
(* add    %r15d,%r11d                              #! PC = 0x555555555e88 *)
adds dc r11 r11 r15;
(* lea    (%rdi,%r11,1),%ecx                       #! PC = 0x555555555e8b *)
adds dc ecx edi r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e8f *)
mov r12 ebx;
(* not    %r12d                                    #! PC = 0x555555555e92 *)
not r12@uint32 r12;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e95 *)
mov r11 r12;
(* and    %eax,%r11d                               #! PC = 0x555555555e98 *)
and r11@uint32 r11 eax;
(* mov    %r8d,%r12d                               #! PC = 0x555555555e9b *)
mov r12 r8;
(* and    %ebx,%r12d                               #! PC = 0x555555555e9e *)
and r12@uint32 r12 ebx;
(* xor    %r12d,%r11d                              #! PC = 0x555555555ea1 *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555555ea4 *)
adds dc r11 r11 ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ea7 *)
mov r12 r14;
(* ror    $0x2,%r12d                               #! PC = 0x555555555eaa *)
ror r12@uint32 r12 0x2;
(* mov    %r12d,%ecx                               #! PC = 0x555555555eae *)
mov ecx r12;
(* mov    %r14d,%r12d                              #! PC = 0x555555555eb1 *)
mov r12 r14;
(* ror    $0xd,%r12d                               #! PC = 0x555555555eb4 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%edi                               #! PC = 0x555555555eb8 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555ebb *)
xor edi@uint32 edi ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ebd *)
mov r12 r14;
(* rol    $0xa,%r12d                               #! PC = 0x555555555ec0 *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%edi                               #! PC = 0x555555555ec4 *)
xor edi@uint32 edi r12;
(* mov    0x8(%rsp),%r15d                          #! EA = L0x7fffffffdf08; Value = 0x0de093b995d9caba; PC = 0x555555555ec7 *)
mov r15 L0x7fffffffdf08;
(* mov    %r15d,%ecx                               #! PC = 0x555555555ecc *)
mov ecx r15;
(* xor    %edx,%ecx                                #! PC = 0x555555555ecf *)
xor ecx@uint32 ecx edx;
(* and    %r14d,%ecx                               #! PC = 0x555555555ed1 *)
and ecx@uint32 ecx r14;
(* mov    %r15d,%r9d                               #! PC = 0x555555555ed4 *)
mov r9 r15;
(* and    %edx,%r9d                                #! PC = 0x555555555ed7 *)
and r9@uint32 r9 edx;
(* xor    %r9d,%ecx                                #! PC = 0x555555555eda *)
xor ecx@uint32 ecx r9;
(* add    %edi,%ecx                                #! PC = 0x555555555edd *)
adds dc ecx ecx edi;
(* mov    0xc(%rsp),%edi                           #! EA = L0x7fffffffdf0c; Value = 0x555570600de093b9; PC = 0x555555555edf *)
mov edi L0x7fffffffdf0c;
(* add    %r11d,%edi                               #! PC = 0x555555555ee3 *)
adds dc edi edi r11;
(* lea    (%r11,%rcx,1),%r15d                      #! PC = 0x555555555ee6 *)
adds dc r15 r11 ecx;
(* lea    0x4(%rbp),%r10d                          #! PC = 0x555555555eea *)
adds dc r10 ebp 0x4@uint32;
(* and    $0xf,%r10d                               #! PC = 0x555555555eee *)
and r10@uint32 r10 0xf@uint32;
(* mov    0x70(%rsp,%r10,4),%r13d                  #! EA = L0x7fffffffdf80; Value = 0x1fa126979a3ead05; PC = 0x555555555ef2 *)
mov r13 L0x7fffffffdf80;
(* mov    %r13d,%r12d                              #! PC = 0x555555555ef7 *)
mov r12 r13;
(* ror    $0x7,%r12d                               #! PC = 0x555555555efa *)
ror r12@uint32 r12 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555efe *)
mov r11 r13;
(* rol    $0xe,%r11d                               #! PC = 0x555555555f01 *)
rol r11@uint32 r11 0xe;
(* xor    %r11d,%r12d                              #! PC = 0x555555555f05 *)
xor r12@uint32 r12 r11;
(* shr    $0x3,%r13d                               #! PC = 0x555555555f08 *)
split r13 dc r13 0x3;
(* lea    0x11(%rbp),%ecx                          #! PC = 0x555555555f0c *)
adds dc ecx ebp 0x11@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555f0f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r11d                  #! EA = L0x7fffffffdf74; Value = 0x6932a3e65e92c08b; PC = 0x555555555f12 *)
mov r11 L0x7fffffffdf74;
(* mov    %r11d,%r9d                               #! PC = 0x555555555f17 *)
mov r9 r11;
(* rol    $0xf,%r9d                                #! PC = 0x555555555f1a *)
rol r9@uint32 r9 0xf;
(* mov    %r11d,%ecx                               #! PC = 0x555555555f1e *)
mov ecx r11;
(* rol    $0xd,%ecx                                #! PC = 0x555555555f21 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555f24 *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r11d                               #! PC = 0x555555555f27 *)
split r11 dc r11 0xa;
(* lea    0xc(%rbp),%r9d                           #! PC = 0x555555555f2b *)
adds dc r9 ebp 0xc@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555f2f *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdfa0; Value = 0x65fb6bbcfa97d73f; PC = 0x555555555f33 *)
mov r9 L0x7fffffffdfa0;
(* add    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf7c; Value = 0x9a3ead05825fcc03; PC = 0x555555555f38 *)
adds dc r9 r9 L0x7fffffffdf7c;
(* xor    %r13d,%r12d                              #! PC = 0x555555555f3d *)
xor r12@uint32 r12 r13;
(* add    %r9d,%r12d                               #! PC = 0x555555555f40 *)
adds dc r12 r12 r9;
(* xor    %r11d,%ecx                               #! PC = 0x555555555f43 *)
xor ecx@uint32 ecx r11;
(* add    %ecx,%r12d                               #! PC = 0x555555555f46 *)
adds dc r12 r12 ecx;
(* mov    %r12d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf7c; PC = 0x555555555f49 *)
mov L0x7fffffffdf7c r12;
(* mov    %edi,%esi                                #! PC = 0x555555555f4e *)
mov esi edi;
(* ror    $0x6,%esi                                #! PC = 0x555555555f50 *)
ror esi@uint32 esi 0x6;
(* mov    %esi,%ecx                                #! PC = 0x555555555f53 *)
mov ecx esi;
(* mov    %edi,%esi                                #! PC = 0x555555555f55 *)
mov esi edi;
(* ror    $0xb,%esi                                #! PC = 0x555555555f57 *)
ror esi@uint32 esi 0xb;
(* xor    %ecx,%esi                                #! PC = 0x555555555f5a *)
xor esi@uint32 esi ecx;
(* mov    %edi,%r11d                               #! PC = 0x555555555f5c *)
mov r11 edi;
(* rol    $0x7,%r11d                               #! PC = 0x555555555f5f *)
rol r11@uint32 r11 0x7;
(* xor    %r11d,%esi                               #! PC = 0x555555555f63 *)
xor esi@uint32 esi r11;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x555555555f66 *)
mov ecx L0x7fffffffdf10;
(* add    0x4c(%rcx),%eax                          #! EA = L0x5555555570ac; Value = 0x650a735453380d13; PC = 0x555555555f6b *)
adds dc eax eax L0x5555555570ac;
(* add    %eax,%r12d                               #! PC = 0x555555555f6e *)
adds dc r12 r12 eax;
(* lea    (%rsi,%r12,1),%ecx                       #! PC = 0x555555555f71 *)
adds dc ecx esi r12;
(* mov    %edi,%r12d                               #! PC = 0x555555555f75 *)
mov r12 edi;
(* not    %r12d                                    #! PC = 0x555555555f78 *)
not r12@uint32 r12;
(* and    %r8d,%r12d                               #! PC = 0x555555555f7b *)
and r12@uint32 r12 r8;
(* mov    %ebx,%eax                                #! PC = 0x555555555f7e *)
mov eax ebx;
(* and    %edi,%eax                                #! PC = 0x555555555f80 *)
and eax@uint32 eax edi;
(* xor    %eax,%r12d                               #! PC = 0x555555555f82 *)
xor r12@uint32 r12 eax;
(* add    %ecx,%r12d                               #! PC = 0x555555555f85 *)
adds dc r12 r12 ecx;
(* mov    %r15d,%eax                               #! PC = 0x555555555f88 *)
mov eax r15;
(* ror    $0x2,%eax                                #! PC = 0x555555555f8b *)
ror eax@uint32 eax 0x2;
(* mov    %r15d,%esi                               #! PC = 0x555555555f8e *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555f91 *)
ror esi@uint32 esi 0xd;
(* mov    %esi,%ecx                                #! PC = 0x555555555f94 *)
mov ecx esi;
(* xor    %eax,%ecx                                #! PC = 0x555555555f96 *)
xor ecx@uint32 ecx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555f98 *)
mov eax r15;
(* rol    $0xa,%eax                                #! PC = 0x555555555f9b *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%ecx                                #! PC = 0x555555555f9e *)
xor ecx@uint32 ecx eax;
(* mov    %edx,%eax                                #! PC = 0x555555555fa0 *)
mov eax edx;
(* xor    %r14d,%eax                               #! PC = 0x555555555fa2 *)
xor eax@uint32 eax r14;
(* and    %r15d,%eax                               #! PC = 0x555555555fa5 *)
and eax@uint32 eax r15;
(* mov    %edx,%esi                                #! PC = 0x555555555fa8 *)
mov esi edx;
(* and    %r14d,%esi                               #! PC = 0x555555555faa *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555fad *)
xor eax@uint32 eax esi;
(* add    %ecx,%eax                                #! PC = 0x555555555faf *)
adds dc eax eax ecx;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x0de093b995d9caba; PC = 0x555555555fb1 *)
mov esi L0x7fffffffdf08;
(* add    %r12d,%esi                               #! PC = 0x555555555fb5 *)
adds dc esi esi r12;
(* add    %r12d,%eax                               #! PC = 0x555555555fb8 *)
adds dc eax eax r12;
(* lea    0x5(%rbp),%r9d                           #! PC = 0x555555555fbb *)
adds dc r9 ebp 0x5@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555fbf *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r11d                   #! EA = L0x7fffffffdf84; Value = 0x8304f2731fa12697; PC = 0x555555555fc3 *)
mov r11 L0x7fffffffdf84;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fc8 *)
mov r12 r11;
(* ror    $0x7,%r12d                               #! PC = 0x555555555fcb *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r13d                              #! PC = 0x555555555fcf *)
mov r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fd2 *)
mov r12 r11;
(* rol    $0xe,%r12d                               #! PC = 0x555555555fd5 *)
rol r12@uint32 r12 0xe;
(* xor    %r12d,%r13d                              #! PC = 0x555555555fd9 *)
xor r13@uint32 r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fdc *)
mov r12 r11;
(* shr    $0x3,%r12d                               #! PC = 0x555555555fdf *)
split r12 dc r12 0x3;
(* mov    %r12d,0x8(%rsp)                          #! EA = L0x7fffffffdf08; PC = 0x555555555fe3 *)
mov L0x7fffffffdf08 r12;
(* lea    0x12(%rbp),%ecx                          #! PC = 0x555555555fe8 *)
adds dc ecx ebp 0x12@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555feb *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf78; Value = 0x686dd1e26932a3e6; PC = 0x555555555fee *)
mov r12 L0x7fffffffdf78;
(* mov    %r12d,%r11d                              #! PC = 0x555555555ff3 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555ff6 *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%ecx                               #! PC = 0x555555555ffa *)
mov ecx r12;
(* rol    $0xd,%ecx                                #! PC = 0x555555555ffd *)
rol ecx@uint32 ecx 0xd;
(* xor    %r11d,%ecx                               #! PC = 0x555555556000 *)
xor ecx@uint32 ecx r11;
(* shr    $0xa,%r12d                               #! PC = 0x555555556003 *)
split r12 dc r12 0xa;
(* lea    0xd(%rbp),%r11d                          #! PC = 0x555555556007 *)
adds dc r11 ebp 0xd@uint32;
(* and    $0xf,%r11d                               #! PC = 0x55555555600b *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r11d                  #! EA = L0x7fffffffdfa4; Value = 0x180f9a3a65fb6bbc; PC = 0x55555555600f *)
mov r11 L0x7fffffffdfa4;
(* add    0x70(%rsp,%r10,4),%r11d                  #! EA = L0x7fffffffdf80; Value = 0x1fa126979a3ead05; PC = 0x555555556014 *)
adds dc r11 r11 L0x7fffffffdf80;
(* xor    0x8(%rsp),%r13d                          #! EA = L0x7fffffffdf08; Value = 0x0de093b903f424d2; PC = 0x555555556019 *)
xor r13@uint32 r13 L0x7fffffffdf08;
(* add    %r11d,%r13d                              #! PC = 0x55555555601e *)
adds dc r13 r13 r11;
(* xor    %r12d,%ecx                               #! PC = 0x555555556021 *)
xor ecx@uint32 ecx r12;
(* add    %ecx,%r13d                               #! PC = 0x555555556024 *)
adds dc r13 r13 ecx;
(* mov    %r13d,0x70(%rsp,%r10,4)                  #! EA = L0x7fffffffdf80; PC = 0x555555556027 *)
mov L0x7fffffffdf80 r13;
(* mov    %esi,%r10d                               #! PC = 0x55555555602c *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x55555555602f *)
ror r10@uint32 r10 0x6;
(* mov    %r10d,%ecx                               #! PC = 0x555555556033 *)
mov ecx r10;
(* mov    %esi,%r10d                               #! PC = 0x555555556036 *)
mov r10 esi;
(* ror    $0xb,%r10d                               #! PC = 0x555555556039 *)
ror r10@uint32 r10 0xb;
(* xor    %ecx,%r10d                               #! PC = 0x55555555603d *)
xor r10@uint32 r10 ecx;
(* mov    %esi,%r12d                               #! PC = 0x555555556040 *)
mov r12 esi;
(* rol    $0x7,%r12d                               #! PC = 0x555555556043 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%r10d                              #! PC = 0x555555556047 *)
xor r10@uint32 r10 r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x55555555604a *)
mov ecx L0x7fffffffdf10;
(* add    0x50(%rcx),%r13d                         #! EA = L0x5555555570b0; Value = 0x766a0abb650a7354; PC = 0x55555555604f *)
adds dc r13 r13 L0x5555555570b0;
(* add    %r8d,%r13d                               #! PC = 0x555555556053 *)
adds dc r13 r13 r8;
(* add    %r13d,%r10d                              #! PC = 0x555555556056 *)
adds dc r10 r10 r13;
(* mov    %esi,%r8d                                #! PC = 0x555555556059 *)
mov r8 esi;
(* not    %r8d                                     #! PC = 0x55555555605c *)
not r8@uint32 r8;
(* mov    %r8d,%ecx                                #! PC = 0x55555555605f *)
mov ecx r8;
(* and    %ebx,%ecx                                #! PC = 0x555555556062 *)
and ecx@uint32 ecx ebx;
(* mov    %edi,%r8d                                #! PC = 0x555555556064 *)
mov r8 edi;
(* and    %esi,%r8d                                #! PC = 0x555555556067 *)
and r8@uint32 r8 esi;
(* xor    %r8d,%ecx                                #! PC = 0x55555555606a *)
xor ecx@uint32 ecx r8;
(* add    %r10d,%ecx                               #! PC = 0x55555555606d *)
adds dc ecx ecx r10;
(* mov    %eax,%r8d                                #! PC = 0x555555556070 *)
mov r8 eax;
(* ror    $0x2,%r8d                                #! PC = 0x555555556073 *)
ror r8@uint32 r8 0x2;
(* mov    %eax,%r10d                               #! PC = 0x555555556077 *)
mov r10 eax;
(* ror    $0xd,%r10d                               #! PC = 0x55555555607a *)
ror r10@uint32 r10 0xd;
(* xor    %r8d,%r10d                               #! PC = 0x55555555607e *)
xor r10@uint32 r10 r8;
(* mov    %eax,%r8d                                #! PC = 0x555555556081 *)
mov r8 eax;
(* rol    $0xa,%r8d                                #! PC = 0x555555556084 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%r10d                               #! PC = 0x555555556088 *)
xor r10@uint32 r10 r8;
(* mov    %r14d,%r8d                               #! PC = 0x55555555608b *)
mov r8 r14;
(* xor    %r15d,%r8d                               #! PC = 0x55555555608e *)
xor r8@uint32 r8 r15;
(* and    %eax,%r8d                                #! PC = 0x555555556091 *)
and r8@uint32 r8 eax;
(* mov    %r14d,%r11d                              #! PC = 0x555555556094 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555556097 *)
and r11@uint32 r11 r15;
(* xor    %r11d,%r8d                               #! PC = 0x55555555609a *)
xor r8@uint32 r8 r11;
(* add    %r10d,%r8d                               #! PC = 0x55555555609d *)
adds dc r8 r8 r10;
(* lea    (%rdx,%rcx,1),%r13d                      #! PC = 0x5555555560a0 *)
adds dc r13 edx ecx;
(* lea    (%rcx,%r8,1),%r11d                       #! PC = 0x5555555560a4 *)
adds dc r11 ecx r8;
(* mov    %r11d,0x20(%rsp)                         #! EA = L0x7fffffffdf20; PC = 0x5555555560a8 *)
mov L0x7fffffffdf20 r11;
(* lea    0x6(%rbp),%r8d                           #! PC = 0x5555555560ad *)
adds dc r8 ebp 0x6@uint32;
(* and    $0xf,%r8d                                #! PC = 0x5555555560b1 *)
and r8@uint32 r8 0xf@uint32;
(* mov    0x70(%rsp,%r8,4),%r12d                   #! EA = L0x7fffffffdf88; Value = 0x06a8f23d8304f273; PC = 0x5555555560b5 *)
mov r12 L0x7fffffffdf88;
(* mov    %r12d,%edx                               #! PC = 0x5555555560ba *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x5555555560bd *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x5555555560c0 *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x5555555560c3 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x5555555560c6 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x5555555560c9 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x5555555560cc *)
split r12 dc r12 0x3;
(* lea    0x13(%rbp),%edx                          #! PC = 0x5555555560d0 *)
adds dc edx ebp 0x13@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555560d3 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf7c; Value = 0x6a3e6f4f686dd1e2; PC = 0x5555555560d6 *)
mov r10 L0x7fffffffdf7c;
(* mov    %r10d,%edx                               #! PC = 0x5555555560db *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555560de *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x5555555560e1 *)
mov ecx edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555560e3 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555560e6 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555560e9 *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%r10d                               #! PC = 0x5555555560eb *)
split r10 dc r10 0xa;
(* mov    0x28(%rsp),%rcx                          #! EA = L0x7fffffffdf28; Value = 0x000000000000000e; PC = 0x5555555560ef *)
mov ecx L0x7fffffffdf28;
(* mov    0x70(%rsp,%rcx,4),%ecx                   #! EA = L0x7fffffffdfa8; Value = 0x4bfc73f7180f9a3a; PC = 0x5555555560f4 *)
mov ecx L0x7fffffffdfa8;
(* add    0x70(%rsp,%r9,4),%ecx                    #! EA = L0x7fffffffdf84; Value = 0x8304f2731fa12697; PC = 0x5555555560f8 *)
adds dc ecx ecx L0x7fffffffdf84;
(* xor    %r12d,%r11d                              #! PC = 0x5555555560fd *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555556100 *)
adds dc r11 r11 ecx;
(* xor    %r10d,%edx                               #! PC = 0x555555556103 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x555555556106 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r9,4)                   #! EA = L0x7fffffffdf84; PC = 0x555555556109 *)
mov L0x7fffffffdf84 r11;
(* mov    %r13d,%edx                               #! PC = 0x55555555610e *)
mov edx r13;
(* ror    $0x6,%edx                                #! PC = 0x555555556111 *)
ror edx@uint32 edx 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x555555556114 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x555555556117 *)
ror r10@uint32 r10 0xb;
(* mov    %r10d,%ecx                               #! PC = 0x55555555611b *)
mov ecx r10;
(* xor    %edx,%ecx                                #! PC = 0x55555555611e *)
xor ecx@uint32 ecx edx;
(* mov    %r13d,%edx                               #! PC = 0x555555556120 *)
mov edx r13;
(* rol    $0x7,%edx                                #! PC = 0x555555556123 *)
rol edx@uint32 edx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555556126 *)
xor edx@uint32 edx ecx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x555555556128 *)
mov r12 L0x7fffffffdf10;
(* add    0x54(%r12),%r11d                         #! EA = L0x5555555570b4; Value = 0x81c2c92e766a0abb; PC = 0x55555555612d *)
adds dc r11 r11 L0x5555555570b4;
(* add    %ebx,%r11d                               #! PC = 0x555555556132 *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r11,1),%ecx                       #! PC = 0x555555556135 *)
adds dc ecx edx r11;
(* mov    %r13d,%ebx                               #! PC = 0x555555556139 *)
mov ebx r13;
(* not    %ebx                                     #! PC = 0x55555555613c *)
not ebx@uint32 ebx;
(* and    %edi,%ebx                                #! PC = 0x55555555613e *)
and ebx@uint32 ebx edi;
(* mov    %esi,%edx                                #! PC = 0x555555556140 *)
mov edx esi;
(* and    %r13d,%edx                               #! PC = 0x555555556142 *)
and edx@uint32 edx r13;
(* xor    %ebx,%edx                                #! PC = 0x555555556145 *)
xor edx@uint32 edx ebx;
(* add    %ecx,%edx                                #! PC = 0x555555556147 *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x000000208b4316fa; PC = 0x555555556149 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%ebx                               #! PC = 0x55555555614e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555556151 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%ecx                               #! PC = 0x555555556154 *)
mov ecx r11;
(* ror    $0xd,%ecx                                #! PC = 0x555555556157 *)
ror ecx@uint32 ecx 0xd;
(* xor    %ebx,%ecx                                #! PC = 0x55555555615a *)
xor ecx@uint32 ecx ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555615c *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x55555555615f *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%ecx                                #! PC = 0x555555556162 *)
xor ecx@uint32 ecx ebx;
(* mov    %r15d,%ebx                               #! PC = 0x555555556164 *)
mov ebx r15;
(* xor    %eax,%ebx                                #! PC = 0x555555556167 *)
xor ebx@uint32 ebx eax;
(* and    %r11d,%ebx                               #! PC = 0x555555556169 *)
and ebx@uint32 ebx r11;
(* mov    %r15d,%r10d                              #! PC = 0x55555555616c *)
mov r10 r15;
(* and    %eax,%r10d                               #! PC = 0x55555555616f *)
and r10@uint32 r10 eax;
(* xor    %r10d,%ebx                               #! PC = 0x555555556172 *)
xor ebx@uint32 ebx r10;
(* add    %ecx,%ebx                                #! PC = 0x555555556175 *)
adds dc ebx ebx ecx;
(* add    %edx,%r14d                               #! PC = 0x555555556177 *)
adds dc r14 r14 edx;
(* add    %edx,%ebx                                #! PC = 0x55555555617a *)
adds dc ebx ebx edx;
(* lea    0x7(%rbp),%ecx                           #! PC = 0x55555555617c *)
adds dc ecx ebp 0x7@uint32;
(* and    $0xf,%ecx                                #! PC = 0x55555555617f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf8c; Value = 0x4140683c06a8f23d; PC = 0x555555556182 *)
mov r12 L0x7fffffffdf8c;
(* mov    %r12d,%edx                               #! PC = 0x555555556187 *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x55555555618a *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x55555555618d *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x555555556190 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x555555556193 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x555555556196 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x555555556199 *)
split r12 dc r12 0x3;
(* lea    0x14(%rbp),%edx                          #! PC = 0x55555555619d *)
adds dc edx ebp 0x14@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555561a0 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf80; Value = 0x56829a8b6a3e6f4f; PC = 0x5555555561a3 *)
mov r10 L0x7fffffffdf80;
(* mov    %r10d,%edx                               #! PC = 0x5555555561a8 *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555561ab *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%r9d                                #! PC = 0x5555555561ae *)
mov r9 edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555561b1 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555561b4 *)
rol edx@uint32 edx 0xd;
(* xor    %r9d,%edx                                #! PC = 0x5555555561b7 *)
xor edx@uint32 edx r9;
(* shr    $0xa,%r10d                               #! PC = 0x5555555561ba *)
split r10 dc r10 0xa;
(* mov    0x30(%rsp),%r9                           #! EA = L0x7fffffffdf30; Value = 0x000000000000000f; PC = 0x5555555561be *)
mov r9 L0x7fffffffdf30;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdfac; Value = 0x000000004bfc73f7; PC = 0x5555555561c3 *)
mov r9 L0x7fffffffdfac;
(* add    0x70(%rsp,%r8,4),%r9d                    #! EA = L0x7fffffffdf88; Value = 0x06a8f23d8304f273; PC = 0x5555555561c8 *)
adds dc r9 r9 L0x7fffffffdf88;
(* xor    %r12d,%r11d                              #! PC = 0x5555555561cd *)
xor r11@uint32 r11 r12;
(* add    %r9d,%r11d                               #! PC = 0x5555555561d0 *)
adds dc r11 r11 r9;
(* xor    %r10d,%edx                               #! PC = 0x5555555561d3 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x5555555561d6 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r8,4)                   #! EA = L0x7fffffffdf88; PC = 0x5555555561d9 *)
mov L0x7fffffffdf88 r11;
(* mov    %r14d,%edx                               #! PC = 0x5555555561de *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x5555555561e1 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%r8d                               #! PC = 0x5555555561e4 *)
mov r8 r14;
(* ror    $0xb,%r8d                                #! PC = 0x5555555561e7 *)
ror r8@uint32 r8 0xb;
(* xor    %edx,%r8d                                #! PC = 0x5555555561eb *)
xor r8@uint32 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x5555555561ee *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x5555555561f1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r8d                                #! PC = 0x5555555561f4 *)
xor r8@uint32 r8 edx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557060; PC = 0x5555555561f7 *)
mov r12 L0x7fffffffdf10;
(* add    0x58(%r12),%r11d                         #! EA = L0x5555555570b8; Value = 0x92722c8581c2c92e; PC = 0x5555555561fc *)
adds dc r11 r11 L0x5555555570b8;
(* lea    (%r11,%rdi,1),%edx                       #! PC = 0x555555556201 *)
adds dc edx r11 edi;
(* add    %edx,%r8d                                #! PC = 0x555555556205 *)
adds dc r8 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x555555556208 *)
mov edx r14;
(* not    %edx                                     #! PC = 0x55555555620b *)
not edx@uint32 edx;
(* and    %esi,%edx                                #! PC = 0x55555555620d *)
and edx@uint32 edx esi;
(* mov    %r13d,%edi                               #! PC = 0x55555555620f *)
mov edi r13;
(* and    %r14d,%edi                               #! PC = 0x555555556212 *)
and edi@uint32 edi r14;
(* xor    %edi,%edx                                #! PC = 0x555555556215 *)
xor edx@uint32 edx edi;
(* add    %r8d,%edx                                #! PC = 0x555555556217 *)
adds dc edx edx r8;
(* mov    %ebx,%r8d                                #! PC = 0x55555555621a *)
mov r8 ebx;
(* ror    $0x2,%r8d                                #! PC = 0x55555555621d *)
ror r8@uint32 r8 0x2;
(* mov    %ebx,%edi                                #! PC = 0x555555556221 *)
mov edi ebx;
(* ror    $0xd,%edi                                #! PC = 0x555555556223 *)
ror edi@uint32 edi 0xd;
(* xor    %edi,%r8d                                #! PC = 0x555555556226 *)
xor r8@uint32 r8 edi;
(* mov    %ebx,%edi                                #! PC = 0x555555556229 *)
mov edi ebx;
(* rol    $0xa,%edi                                #! PC = 0x55555555622b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%r8d                                #! PC = 0x55555555622e *)
xor r8@uint32 r8 edi;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x000000208b4316fa; PC = 0x555555556231 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%edi                               #! PC = 0x555555556236 *)
mov edi r11;
(* xor    %eax,%edi                                #! PC = 0x555555556239 *)
xor edi@uint32 edi eax;
(* and    %ebx,%edi                                #! PC = 0x55555555623b *)
and edi@uint32 edi ebx;
(* mov    %r11d,%r9d                               #! PC = 0x55555555623d *)
mov r9 r11;
(* and    %eax,%r9d                                #! PC = 0x555555556240 *)
and r9@uint32 r9 eax;
(* xor    %r9d,%edi                                #! PC = 0x555555556243 *)
xor edi@uint32 edi r9;
(* add    %r8d,%edi                                #! PC = 0x555555556246 *)
adds dc edi edi r8;
(* add    %edx,%r15d                               #! PC = 0x555555556249 *)
adds dc r15 r15 edx;
(* add    %edx,%edi                                #! PC = 0x55555555624c *)
adds dc edi edi edx;
(* mov    %edi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x55555555624e *)
mov L0x7fffffffdf0c edi;
(* add    $0x8,%ebp                                #! PC = 0x555555556252 *)
adds dc ebp ebp 0x8@uint32;
(* mov    %ebp,%edx                                #! PC = 0x555555556255 *)
mov edx ebp;
(* and    $0xf,%edx                                #! PC = 0x555555556257 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r9d                   #! EA = L0x7fffffffdf90; Value = 0x46bdf9a54140683c; PC = 0x55555555625a *)
mov r9 L0x7fffffffdf90;
(* mov    %r9d,%edi                                #! PC = 0x55555555625f *)
mov edi r9;
(* ror    $0x7,%edi                                #! PC = 0x555555556262 *)
ror edi@uint32 edi 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555556265 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555556268 *)
rol edx@uint32 edx 0xe;
(* xor    %edi,%edx                                #! PC = 0x55555555626b *)
xor edx@uint32 edx edi;
(* shr    $0x3,%r9d                                #! PC = 0x55555555626d *)
split r9 dc r9 0x3;
(* mov    0x24(%rsp),%edi                          #! EA = L0x7fffffffdf24; Value = 0x0000000e00000020; PC = 0x555555556271 *)
mov edi L0x7fffffffdf24;
(* add    $0x15,%edi                               #! PC = 0x555555556275 *)
adds dc edi edi 0x15@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555556278 *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r8d                   #! EA = L0x7fffffffdf84; Value = 0x0fad4c3656829a8b; PC = 0x55555555627b *)
mov r8 L0x7fffffffdf84;
(* mov    %r8d,%r10d                               #! PC = 0x555555556280 *)
mov r10 r8;
(* rol    $0xf,%r10d                               #! PC = 0x555555556283 *)
rol r10@uint32 r10 0xf;
(* mov    %r8d,%edi                                #! PC = 0x555555556287 *)
mov edi r8;
(* rol    $0xd,%edi                                #! PC = 0x55555555628a *)
rol edi@uint32 edi 0xd;
(* xor    %r10d,%edi                               #! PC = 0x55555555628d *)
xor edi@uint32 edi r10;
(* shr    $0xa,%r8d                                #! PC = 0x555555556290 *)
split r8 dc r8 0xa;
(* xor    %r9d,%edx                                #! PC = 0x555555556294 *)
xor edx@uint32 edx r9;
(* add    0x70(%rsp,%rcx,4),%edx                   #! EA = L0x7fffffffdf8c; Value = 0x4140683c06a8f23d; PC = 0x555555556297 *)
adds dc edx edx L0x7fffffffdf8c;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffdf18; Value = 0x0000000000000000; PC = 0x55555555629b *)
mov r9 L0x7fffffffdf18;
(* add    0x70(%rsp,%r9,4),%edx                    #! EA = L0x7fffffffdf70; Value = 0x5e92c08b5e7e0dd4; PC = 0x5555555562a0 *)
adds dc edx edx L0x7fffffffdf70;
(* xor    %r8d,%edi                                #! PC = 0x5555555562a5 *)
xor edi@uint32 edi r8;
(* add    %edx,%edi                                #! PC = 0x5555555562a8 *)
adds dc edi edi edx;
(* mov    %edi,0x70(%rsp,%rcx,4)                   #! EA = L0x7fffffffdf8c; PC = 0x5555555562aa *)
mov L0x7fffffffdf8c edi;
(* mov    %r15d,%edx                               #! PC = 0x5555555562ae *)
mov edx r15;
(* ror    $0x6,%edx                                #! PC = 0x5555555562b1 *)
ror edx@uint32 edx 0x6;
(* mov    %edx,%ecx                                #! PC = 0x5555555562b4 *)
mov ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562b6 *)
mov edx r15;
(* ror    $0xb,%edx                                #! PC = 0x5555555562b9 *)
ror edx@uint32 edx 0xb;
(* xor    %edx,%ecx                                #! PC = 0x5555555562bc *)
xor ecx@uint32 ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562be *)
mov edx r15;
(* rol    $0x7,%edx                                #! PC = 0x5555555562c1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%ecx                                #! PC = 0x5555555562c4 *)
xor ecx@uint32 ecx edx;
(* add    0x5c(%r12),%edi                          #! EA = L0x5555555570bc; Value = 0xa2bfe8a192722c85; PC = 0x5555555562c6 *)
adds dc edi edi L0x5555555570bc;
(* add    %esi,%edi                                #! PC = 0x5555555562cb *)
adds dc edi edi esi;
(* add    %ecx,%edi                                #! PC = 0x5555555562cd *)
adds dc edi edi ecx;
(* mov    %r15d,%esi                               #! PC = 0x5555555562cf *)
mov esi r15;
(* not    %esi                                     #! PC = 0x5555555562d2 *)
not esi@uint32 esi;
(* and    %r13d,%esi                               #! PC = 0x5555555562d4 *)
and esi@uint32 esi r13;
(* mov    %r14d,%edx                               #! PC = 0x5555555562d7 *)
mov edx r14;
(* and    %r15d,%edx                               #! PC = 0x5555555562da *)
and edx@uint32 edx r15;
(* xor    %edx,%esi                                #! PC = 0x5555555562dd *)
xor esi@uint32 esi edx;
(* add    %esi,%edi                                #! PC = 0x5555555562df *)
adds dc edi edi esi;
(* mov    0xc(%rsp),%ecx                           #! EA = L0x7fffffffdf0c; Value = 0x555570606f1b5063; PC = 0x5555555562e1 *)
mov ecx L0x7fffffffdf0c;
(* mov    %ecx,%esi                                #! PC = 0x5555555562e5 *)
mov esi ecx;
(* ror    $0x2,%esi                                #! PC = 0x5555555562e7 *)
ror esi@uint32 esi 0x2;
(* mov    %ecx,%edx                                #! PC = 0x5555555562ea *)
mov edx ecx;
(* ror    $0xd,%edx                                #! PC = 0x5555555562ec *)
ror edx@uint32 edx 0xd;
(* xor    %edx,%esi                                #! PC = 0x5555555562ef *)
xor esi@uint32 esi edx;
(* mov    %ecx,%edx                                #! PC = 0x5555555562f1 *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x5555555562f3 *)
rol edx@uint32 edx 0xa;
(* xor    %esi,%edx                                #! PC = 0x5555555562f6 *)
xor edx@uint32 edx esi;
(* mov    %r11d,%esi                               #! PC = 0x5555555562f8 *)
mov esi r11;
(* xor    %ebx,%esi                                #! PC = 0x5555555562fb *)
xor esi@uint32 esi ebx;
(* and    %ecx,%esi                                #! PC = 0x5555555562fd *)
and esi@uint32 esi ecx;
(* and    %ebx,%r11d                               #! PC = 0x5555555562ff *)
and r11@uint32 r11 ebx;
(* xor    %r11d,%esi                               #! PC = 0x555555556302 *)
xor esi@uint32 esi r11;
(* add    %edx,%esi                                #! PC = 0x555555556305 *)
adds dc esi esi edx;
(* add    %edi,%eax                                #! PC = 0x555555556307 *)
adds dc eax eax edi;
(* add    %edi,%esi                                #! PC = 0x555555556309 *)
adds dc esi esi edi;
(* mov    %esi,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x55555555630b *)
mov L0x7fffffffdf08 esi;
(* add    $0x20,%r12                               #! PC = 0x55555555630f *)
adds dc r12 r12 0x20@uint32;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555556313 *)
mov L0x7fffffffdf10 r12;
(* cmp    $0x40,%ebp                               #! PC = 0x555555556318 *)
(* cmp 0x40, ebp *)
nop;
(* #jne    0x555555555c2b <sha256_block_data_order+2669>#! PC = 0x55555555631b *)
#jne    0x555555555c2b <sha256_block_data_order+2669>#! 0x55555555631b = 0x55555555631b;
(* mov    %ebp,0x24(%rsp)                          #! EA = L0x7fffffffdf24; PC = 0x555555555c2b *)
mov L0x7fffffffdf24 ebp;
(* lea    0x1(%rbp),%esi                           #! PC = 0x555555555c2f *)
adds dc esi ebp 0x1@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555c32 *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf94; Value = 0xbb69c49546bdf9a5; PC = 0x555555555c35 *)
mov r9 L0x7fffffffdf94;
(* mov    %r9d,%r8d                                #! PC = 0x555555555c3a *)
mov r8 r9;
(* ror    $0x7,%r8d                                #! PC = 0x555555555c3d *)
ror r8@uint32 r8 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555555c41 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555555c44 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r8d                                #! PC = 0x555555555c47 *)
xor r8@uint32 r8 edx;
(* shr    $0x3,%r9d                                #! PC = 0x555555555c4a *)
split r9 dc r9 0x3;
(* lea    0xe(%rbp),%edx                           #! PC = 0x555555555c4e *)
adds dc edx ebp 0xe@uint32;
(* mov    %edx,%edi                                #! PC = 0x555555555c51 *)
mov edi edx;
(* and    $0xf,%edi                                #! PC = 0x555555555c53 *)
and edi@uint32 edi 0xf@uint32;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdf28; PC = 0x555555555c56 *)
mov L0x7fffffffdf28 edi;
(* mov    0x70(%rsp,%rdi,4),%edi                   #! EA = L0x7fffffffdf88; Value = 0xedcdfecf0fad4c36; PC = 0x555555555c5b *)
mov edi L0x7fffffffdf88;
(* mov    %edi,%edx                                #! PC = 0x555555555c5f *)
mov edx edi;
(* rol    $0xf,%edx                                #! PC = 0x555555555c61 *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x555555555c64 *)
mov ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555c66 *)
mov edx edi;
(* rol    $0xd,%edx                                #! PC = 0x555555555c68 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x555555555c6b *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%edi                                #! PC = 0x555555555c6d *)
split edi dc edi 0xa;
(* lea    0x9(%rbp),%ecx                           #! PC = 0x555555555c70 *)
adds dc ecx ebp 0x9@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555c73 *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    %ebp,%r11d                               #! PC = 0x555555555c76 *)
mov r11 ebp;
(* and    $0xf,%r11d                               #! PC = 0x555555555c79 *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r10d                  #! EA = L0x7fffffffdf90; Value = 0x46bdf9a54140683c; PC = 0x555555555c7d *)
mov r10 L0x7fffffffdf90;
(* add    0x70(%rsp,%rcx,4),%r10d                  #! EA = L0x7fffffffdf74; Value = 0x6932a3e65e92c08b; PC = 0x555555555c82 *)
adds dc r10 r10 L0x7fffffffdf74;
(* xor    %r9d,%r8d                                #! PC = 0x555555555c87 *)
xor r8@uint32 r8 r9;
(* add    %r10d,%r8d                               #! PC = 0x555555555c8a *)
adds dc r8 r8 r10;
(* xor    %edx,%edi                                #! PC = 0x555555555c8d *)
xor edi@uint32 edi edx;
(* add    %r8d,%edi                                #! PC = 0x555555555c8f *)
adds dc edi edi r8;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffdf18; PC = 0x555555555c92 *)
mov L0x7fffffffdf18 r11;
(* mov    %edi,0x70(%rsp,%r11,4)                   #! EA = L0x7fffffffdf90; PC = 0x555555555c97 *)
mov L0x7fffffffdf90 edi;
(* mov    %eax,%edx                                #! PC = 0x555555555c9c *)
mov edx eax;
(* ror    $0x6,%edx                                #! PC = 0x555555555c9e *)
ror edx@uint32 edx 0x6;
(* mov    %eax,%r10d                               #! PC = 0x555555555ca1 *)
mov r10 eax;
(* ror    $0xb,%r10d                               #! PC = 0x555555555ca4 *)
ror r10@uint32 r10 0xb;
(* xor    %edx,%r10d                               #! PC = 0x555555555ca8 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cab *)
mov edx eax;
(* rol    $0x7,%edx                                #! PC = 0x555555555cad *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r10d                               #! PC = 0x555555555cb0 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cb3 *)
mov edx eax;
(* not    %edx                                     #! PC = 0x555555555cb5 *)
not edx@uint32 edx;
(* and    %r14d,%edx                               #! PC = 0x555555555cb7 *)
and edx@uint32 edx r14;
(* mov    %eax,%ecx                                #! PC = 0x555555555cba *)
mov ecx eax;
(* and    %r15d,%ecx                               #! PC = 0x555555555cbc *)
and ecx@uint32 ecx r15;
(* xor    %ecx,%edx                                #! PC = 0x555555555cbf *)
xor edx@uint32 edx ecx;
(* add    %r10d,%edx                               #! PC = 0x555555555cc1 *)
adds dc edx edx r10;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x555555555cc4 *)
mov ecx L0x7fffffffdf10;
(* add    0x40(%rcx),%edx                          #! EA = L0x5555555570c0; Value = 0xa81a664ba2bfe8a1; PC = 0x555555555cc9 *)
adds dc edx edx L0x5555555570c0;
(* add    %edi,%edx                                #! PC = 0x555555555ccc *)
adds dc edx edx edi;
(* add    %edx,%r13d                               #! PC = 0x555555555cce *)
adds dc r13 r13 edx;
(* mov    0x8(%rsp),%edi                           #! EA = L0x7fffffffdf08; Value = 0x6f1b5063d636627e; PC = 0x555555555cd1 *)
mov edi L0x7fffffffdf08;
(* mov    %edi,%edx                                #! PC = 0x555555555cd5 *)
mov edx edi;
(* ror    $0x2,%edx                                #! PC = 0x555555555cd7 *)
ror edx@uint32 edx 0x2;
(* mov    %edi,%ecx                                #! PC = 0x555555555cda *)
mov ecx edi;
(* ror    $0xd,%ecx                                #! PC = 0x555555555cdc *)
ror ecx@uint32 ecx 0xd;
(* xor    %edx,%ecx                                #! PC = 0x555555555cdf *)
xor ecx@uint32 ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555ce1 *)
mov edx edi;
(* rol    $0xa,%edx                                #! PC = 0x555555555ce3 *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%ecx                                #! PC = 0x555555555ce6 *)
xor ecx@uint32 ecx edx;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570806f1b5063; PC = 0x555555555ce8 *)
mov r10 L0x7fffffffdf0c;
(* mov    %r10d,%edx                               #! PC = 0x555555555ced *)
mov edx r10;
(* xor    %ebx,%edx                                #! PC = 0x555555555cf0 *)
xor edx@uint32 edx ebx;
(* and    %edi,%edx                                #! PC = 0x555555555cf2 *)
and edx@uint32 edx edi;
(* mov    %r10d,%edi                               #! PC = 0x555555555cf4 *)
mov edi r10;
(* and    %ebx,%edi                                #! PC = 0x555555555cf7 *)
and edi@uint32 edi ebx;
(* xor    %edi,%edx                                #! PC = 0x555555555cf9 *)
xor edx@uint32 edx edi;
(* add    %ecx,%edx                                #! PC = 0x555555555cfb *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x000000288b4316fa; PC = 0x555555555cfd *)
mov r8 L0x7fffffffdf20;
(* add    %r13d,%r8d                               #! PC = 0x555555555d02 *)
adds dc r8 r8 r13;
(* add    %r13d,%edx                               #! PC = 0x555555555d05 *)
adds dc edx edx r13;
(* lea    0x2(%rbp),%edi                           #! PC = 0x555555555d08 *)
adds dc edi ebp 0x2@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555555d0b *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r12d                  #! EA = L0x7fffffffdf98; Value = 0xde3651fcbb69c495; PC = 0x555555555d0e *)
mov r12 L0x7fffffffdf98;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d13 *)
mov r13 r12;
(* ror    $0x7,%r13d                               #! PC = 0x555555555d16 *)
ror r13@uint32 r13 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555d1a *)
mov r11 r13;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d1d *)
mov r13 r12;
(* rol    $0xe,%r13d                               #! PC = 0x555555555d20 *)
rol r13@uint32 r13 0xe;
(* xor    %r13d,%r11d                              #! PC = 0x555555555d24 *)
xor r11@uint32 r11 r13;
(* shr    $0x3,%r12d                               #! PC = 0x555555555d27 *)
split r12 dc r12 0x3;
(* lea    0xf(%rbp),%ecx                           #! PC = 0x555555555d2b *)
adds dc ecx ebp 0xf@uint32;
(* mov    %ecx,%r13d                               #! PC = 0x555555555d2e *)
mov r13 ecx;
(* and    $0xf,%r13d                               #! PC = 0x555555555d31 *)
and r13@uint32 r13 0xf@uint32;
(* mov    %r13,0x30(%rsp)                          #! EA = L0x7fffffffdf30; PC = 0x555555555d35 *)
mov L0x7fffffffdf30 r13;
(* mov    0x70(%rsp,%r13,4),%r10d                  #! EA = L0x7fffffffdf8c; Value = 0xeba4eb9fedcdfecf; PC = 0x555555555d3a *)
mov r10 L0x7fffffffdf8c;
(* mov    %r10d,%r9d                               #! PC = 0x555555555d3f *)
mov r9 r10;
(* rol    $0xf,%r9d                                #! PC = 0x555555555d42 *)
rol r9@uint32 r9 0xf;
(* mov    %r10d,%ecx                               #! PC = 0x555555555d46 *)
mov ecx r10;
(* rol    $0xd,%ecx                                #! PC = 0x555555555d49 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555d4c *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r10d                               #! PC = 0x555555555d4f *)
split r10 dc r10 0xa;
(* lea    0xa(%rbp),%r9d                           #! PC = 0x555555555d53 *)
adds dc r9 ebp 0xa@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555d57 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r13d                  #! EA = L0x7fffffffdf94; Value = 0xbb69c49546bdf9a5; PC = 0x555555555d5b *)
mov r13 L0x7fffffffdf94;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf78; Value = 0x686dd1e26932a3e6; PC = 0x555555555d60 *)
adds dc r13 r13 L0x7fffffffdf78;
(* xor    %r12d,%r11d                              #! PC = 0x555555555d65 *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555d68 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555d6b *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555d6e *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf94; PC = 0x555555555d71 *)
mov L0x7fffffffdf94 r11;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d76 *)
mov r12 r8;
(* ror    $0x6,%r12d                               #! PC = 0x555555555d79 *)
ror r12@uint32 r12 0x6;
(* mov    %r8d,%esi                                #! PC = 0x555555555d7d *)
mov esi r8;
(* ror    $0xb,%esi                                #! PC = 0x555555555d80 *)
ror esi@uint32 esi 0xb;
(* xor    %r12d,%esi                               #! PC = 0x555555555d83 *)
xor esi@uint32 esi r12;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d86 *)
mov r12 r8;
(* rol    $0x7,%r12d                               #! PC = 0x555555555d89 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%esi                               #! PC = 0x555555555d8d *)
xor esi@uint32 esi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x555555555d90 *)
mov ecx L0x7fffffffdf10;
(* add    0x44(%rcx),%r14d                         #! EA = L0x5555555570c4; Value = 0xc24b8b70a81a664b; PC = 0x555555555d95 *)
adds dc r14 r14 L0x5555555570c4;
(* add    %r14d,%r11d                              #! PC = 0x555555555d99 *)
adds dc r11 r11 r14;
(* lea    (%rsi,%r11,1),%ecx                       #! PC = 0x555555555d9c *)
adds dc ecx esi r11;
(* mov    %r8d,%r14d                               #! PC = 0x555555555da0 *)
mov r14 r8;
(* not    %r14d                                    #! PC = 0x555555555da3 *)
not r14@uint32 r14;
(* mov    %r14d,%r11d                              #! PC = 0x555555555da6 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555da9 *)
and r11@uint32 r11 r15;
(* mov    %r8d,%r14d                               #! PC = 0x555555555dac *)
mov r14 r8;
(* and    %eax,%r14d                               #! PC = 0x555555555daf *)
and r14@uint32 r14 eax;
(* xor    %r14d,%r11d                              #! PC = 0x555555555db2 *)
xor r11@uint32 r11 r14;
(* add    %ecx,%r11d                               #! PC = 0x555555555db5 *)
adds dc r11 r11 ecx;
(* mov    %edx,%r14d                               #! PC = 0x555555555db8 *)
mov r14 edx;
(* ror    $0x2,%r14d                               #! PC = 0x555555555dbb *)
ror r14@uint32 r14 0x2;
(* mov    %edx,%r12d                               #! PC = 0x555555555dbf *)
mov r12 edx;
(* ror    $0xd,%r12d                               #! PC = 0x555555555dc2 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%ecx                               #! PC = 0x555555555dc6 *)
mov ecx r12;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dc9 *)
xor ecx@uint32 ecx r14;
(* mov    %edx,%r14d                               #! PC = 0x555555555dcc *)
mov r14 edx;
(* rol    $0xa,%r14d                               #! PC = 0x555555555dcf *)
rol r14@uint32 r14 0xa;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dd3 *)
xor ecx@uint32 ecx r14;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x6f1b5063d636627e; PC = 0x555555555dd6 *)
mov esi L0x7fffffffdf08;
(* mov    %esi,%r14d                               #! PC = 0x555555555dda *)
mov r14 esi;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570806f1b5063; PC = 0x555555555ddd *)
mov r10 L0x7fffffffdf0c;
(* xor    %r10d,%r14d                              #! PC = 0x555555555de2 *)
xor r14@uint32 r14 r10;
(* and    %edx,%r14d                               #! PC = 0x555555555de5 *)
and r14@uint32 r14 edx;
(* and    %r10d,%esi                               #! PC = 0x555555555de8 *)
and esi@uint32 esi r10;
(* xor    %esi,%r14d                               #! PC = 0x555555555deb *)
xor r14@uint32 r14 esi;
(* add    %ecx,%r14d                               #! PC = 0x555555555dee *)
adds dc r14 r14 ecx;
(* add    %r11d,%ebx                               #! PC = 0x555555555df1 *)
adds dc ebx ebx r11;
(* add    %r11d,%r14d                              #! PC = 0x555555555df4 *)
adds dc r14 r14 r11;
(* lea    0x3(%rbp),%esi                           #! PC = 0x555555555df7 *)
adds dc esi ebp 0x3@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555dfa *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r10d                  #! EA = L0x7fffffffdf9c; Value = 0xfa97d73fde3651fc; PC = 0x555555555dfd *)
mov r10 L0x7fffffffdf9c;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e02 *)
mov r12 r10;
(* ror    $0x7,%r12d                               #! PC = 0x555555555e05 *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e09 *)
mov r9 r12;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e0c *)
mov r12 r10;
(* rol    $0xe,%r12d                               #! PC = 0x555555555e0f *)
rol r12@uint32 r12 0xe;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e13 *)
mov ecx r12;
(* xor    %r9d,%ecx                                #! PC = 0x555555555e16 *)
xor ecx@uint32 ecx r9;
(* shr    $0x3,%r10d                               #! PC = 0x555555555e19 *)
split r10 dc r10 0x3;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffdf18; Value = 0x0000000000000008; PC = 0x555555555e1d *)
mov r11 L0x7fffffffdf18;
(* mov    0x70(%rsp,%r11,4),%r12d                  #! EA = L0x7fffffffdf90; Value = 0x3db49b6ceba4eb9f; PC = 0x555555555e22 *)
mov r12 L0x7fffffffdf90;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e27 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555e2a *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e2e *)
mov r9 r12;
(* rol    $0xd,%r9d                                #! PC = 0x555555555e31 *)
rol r9@uint32 r9 0xd;
(* xor    %r9d,%r11d                               #! PC = 0x555555555e35 *)
xor r11@uint32 r11 r9;
(* shr    $0xa,%r12d                               #! PC = 0x555555555e38 *)
split r12 dc r12 0xa;
(* lea    0xb(%rbp),%r9d                           #! PC = 0x555555555e3c *)
adds dc r9 ebp 0xb@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555e40 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r13d                  #! EA = L0x7fffffffdf98; Value = 0xde3651fcbb69c495; PC = 0x555555555e44 *)
mov r13 L0x7fffffffdf98;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf7c; Value = 0x6a3e6f4f686dd1e2; PC = 0x555555555e49 *)
adds dc r13 r13 L0x7fffffffdf7c;
(* xor    %r12d,%r11d                              #! PC = 0x555555555e4e *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555e51 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555e54 *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555e57 *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rdi,4)                  #! EA = L0x7fffffffdf98; PC = 0x555555555e5a *)
mov L0x7fffffffdf98 r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e5f *)
mov r12 ebx;
(* ror    $0x6,%r12d                               #! PC = 0x555555555e62 *)
ror r12@uint32 r12 0x6;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e66 *)
mov ecx r12;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e69 *)
mov r12 ebx;
(* ror    $0xb,%r12d                               #! PC = 0x555555555e6c *)
ror r12@uint32 r12 0xb;
(* mov    %r12d,%edi                               #! PC = 0x555555555e70 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555e73 *)
xor edi@uint32 edi ecx;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e75 *)
mov r12 ebx;
(* rol    $0x7,%r12d                               #! PC = 0x555555555e78 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%edi                               #! PC = 0x555555555e7c *)
xor edi@uint32 edi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x555555555e7f *)
mov ecx L0x7fffffffdf10;
(* add    0x48(%rcx),%r15d                         #! EA = L0x5555555570c8; Value = 0xc76c51a3c24b8b70; PC = 0x555555555e84 *)
adds dc r15 r15 L0x5555555570c8;
(* add    %r15d,%r11d                              #! PC = 0x555555555e88 *)
adds dc r11 r11 r15;
(* lea    (%rdi,%r11,1),%ecx                       #! PC = 0x555555555e8b *)
adds dc ecx edi r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e8f *)
mov r12 ebx;
(* not    %r12d                                    #! PC = 0x555555555e92 *)
not r12@uint32 r12;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e95 *)
mov r11 r12;
(* and    %eax,%r11d                               #! PC = 0x555555555e98 *)
and r11@uint32 r11 eax;
(* mov    %r8d,%r12d                               #! PC = 0x555555555e9b *)
mov r12 r8;
(* and    %ebx,%r12d                               #! PC = 0x555555555e9e *)
and r12@uint32 r12 ebx;
(* xor    %r12d,%r11d                              #! PC = 0x555555555ea1 *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555555ea4 *)
adds dc r11 r11 ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ea7 *)
mov r12 r14;
(* ror    $0x2,%r12d                               #! PC = 0x555555555eaa *)
ror r12@uint32 r12 0x2;
(* mov    %r12d,%ecx                               #! PC = 0x555555555eae *)
mov ecx r12;
(* mov    %r14d,%r12d                              #! PC = 0x555555555eb1 *)
mov r12 r14;
(* ror    $0xd,%r12d                               #! PC = 0x555555555eb4 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%edi                               #! PC = 0x555555555eb8 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555ebb *)
xor edi@uint32 edi ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ebd *)
mov r12 r14;
(* rol    $0xa,%r12d                               #! PC = 0x555555555ec0 *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%edi                               #! PC = 0x555555555ec4 *)
xor edi@uint32 edi r12;
(* mov    0x8(%rsp),%r15d                          #! EA = L0x7fffffffdf08; Value = 0x6f1b5063d636627e; PC = 0x555555555ec7 *)
mov r15 L0x7fffffffdf08;
(* mov    %r15d,%ecx                               #! PC = 0x555555555ecc *)
mov ecx r15;
(* xor    %edx,%ecx                                #! PC = 0x555555555ecf *)
xor ecx@uint32 ecx edx;
(* and    %r14d,%ecx                               #! PC = 0x555555555ed1 *)
and ecx@uint32 ecx r14;
(* mov    %r15d,%r9d                               #! PC = 0x555555555ed4 *)
mov r9 r15;
(* and    %edx,%r9d                                #! PC = 0x555555555ed7 *)
and r9@uint32 r9 edx;
(* xor    %r9d,%ecx                                #! PC = 0x555555555eda *)
xor ecx@uint32 ecx r9;
(* add    %edi,%ecx                                #! PC = 0x555555555edd *)
adds dc ecx ecx edi;
(* mov    0xc(%rsp),%edi                           #! EA = L0x7fffffffdf0c; Value = 0x555570806f1b5063; PC = 0x555555555edf *)
mov edi L0x7fffffffdf0c;
(* add    %r11d,%edi                               #! PC = 0x555555555ee3 *)
adds dc edi edi r11;
(* lea    (%r11,%rcx,1),%r15d                      #! PC = 0x555555555ee6 *)
adds dc r15 r11 ecx;
(* lea    0x4(%rbp),%r10d                          #! PC = 0x555555555eea *)
adds dc r10 ebp 0x4@uint32;
(* and    $0xf,%r10d                               #! PC = 0x555555555eee *)
and r10@uint32 r10 0xf@uint32;
(* mov    0x70(%rsp,%r10,4),%r13d                  #! EA = L0x7fffffffdfa0; Value = 0x65fb6bbcfa97d73f; PC = 0x555555555ef2 *)
mov r13 L0x7fffffffdfa0;
(* mov    %r13d,%r12d                              #! PC = 0x555555555ef7 *)
mov r12 r13;
(* ror    $0x7,%r12d                               #! PC = 0x555555555efa *)
ror r12@uint32 r12 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555efe *)
mov r11 r13;
(* rol    $0xe,%r11d                               #! PC = 0x555555555f01 *)
rol r11@uint32 r11 0xe;
(* xor    %r11d,%r12d                              #! PC = 0x555555555f05 *)
xor r12@uint32 r12 r11;
(* shr    $0x3,%r13d                               #! PC = 0x555555555f08 *)
split r13 dc r13 0x3;
(* lea    0x11(%rbp),%ecx                          #! PC = 0x555555555f0c *)
adds dc ecx ebp 0x11@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555f0f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r11d                  #! EA = L0x7fffffffdf94; Value = 0x826409243db49b6c; PC = 0x555555555f12 *)
mov r11 L0x7fffffffdf94;
(* mov    %r11d,%r9d                               #! PC = 0x555555555f17 *)
mov r9 r11;
(* rol    $0xf,%r9d                                #! PC = 0x555555555f1a *)
rol r9@uint32 r9 0xf;
(* mov    %r11d,%ecx                               #! PC = 0x555555555f1e *)
mov ecx r11;
(* rol    $0xd,%ecx                                #! PC = 0x555555555f21 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555f24 *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r11d                               #! PC = 0x555555555f27 *)
split r11 dc r11 0xa;
(* lea    0xc(%rbp),%r9d                           #! PC = 0x555555555f2b *)
adds dc r9 ebp 0xc@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555f2f *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdf80; Value = 0x56829a8b6a3e6f4f; PC = 0x555555555f33 *)
mov r9 L0x7fffffffdf80;
(* add    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf9c; Value = 0xfa97d73fde3651fc; PC = 0x555555555f38 *)
adds dc r9 r9 L0x7fffffffdf9c;
(* xor    %r13d,%r12d                              #! PC = 0x555555555f3d *)
xor r12@uint32 r12 r13;
(* add    %r9d,%r12d                               #! PC = 0x555555555f40 *)
adds dc r12 r12 r9;
(* xor    %r11d,%ecx                               #! PC = 0x555555555f43 *)
xor ecx@uint32 ecx r11;
(* add    %ecx,%r12d                               #! PC = 0x555555555f46 *)
adds dc r12 r12 ecx;
(* mov    %r12d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf9c; PC = 0x555555555f49 *)
mov L0x7fffffffdf9c r12;
(* mov    %edi,%esi                                #! PC = 0x555555555f4e *)
mov esi edi;
(* ror    $0x6,%esi                                #! PC = 0x555555555f50 *)
ror esi@uint32 esi 0x6;
(* mov    %esi,%ecx                                #! PC = 0x555555555f53 *)
mov ecx esi;
(* mov    %edi,%esi                                #! PC = 0x555555555f55 *)
mov esi edi;
(* ror    $0xb,%esi                                #! PC = 0x555555555f57 *)
ror esi@uint32 esi 0xb;
(* xor    %ecx,%esi                                #! PC = 0x555555555f5a *)
xor esi@uint32 esi ecx;
(* mov    %edi,%r11d                               #! PC = 0x555555555f5c *)
mov r11 edi;
(* rol    $0x7,%r11d                               #! PC = 0x555555555f5f *)
rol r11@uint32 r11 0x7;
(* xor    %r11d,%esi                               #! PC = 0x555555555f63 *)
xor esi@uint32 esi r11;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x555555555f66 *)
mov ecx L0x7fffffffdf10;
(* add    0x4c(%rcx),%eax                          #! EA = L0x5555555570cc; Value = 0xd192e819c76c51a3; PC = 0x555555555f6b *)
adds dc eax eax L0x5555555570cc;
(* add    %eax,%r12d                               #! PC = 0x555555555f6e *)
adds dc r12 r12 eax;
(* lea    (%rsi,%r12,1),%ecx                       #! PC = 0x555555555f71 *)
adds dc ecx esi r12;
(* mov    %edi,%r12d                               #! PC = 0x555555555f75 *)
mov r12 edi;
(* not    %r12d                                    #! PC = 0x555555555f78 *)
not r12@uint32 r12;
(* and    %r8d,%r12d                               #! PC = 0x555555555f7b *)
and r12@uint32 r12 r8;
(* mov    %ebx,%eax                                #! PC = 0x555555555f7e *)
mov eax ebx;
(* and    %edi,%eax                                #! PC = 0x555555555f80 *)
and eax@uint32 eax edi;
(* xor    %eax,%r12d                               #! PC = 0x555555555f82 *)
xor r12@uint32 r12 eax;
(* add    %ecx,%r12d                               #! PC = 0x555555555f85 *)
adds dc r12 r12 ecx;
(* mov    %r15d,%eax                               #! PC = 0x555555555f88 *)
mov eax r15;
(* ror    $0x2,%eax                                #! PC = 0x555555555f8b *)
ror eax@uint32 eax 0x2;
(* mov    %r15d,%esi                               #! PC = 0x555555555f8e *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555f91 *)
ror esi@uint32 esi 0xd;
(* mov    %esi,%ecx                                #! PC = 0x555555555f94 *)
mov ecx esi;
(* xor    %eax,%ecx                                #! PC = 0x555555555f96 *)
xor ecx@uint32 ecx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555f98 *)
mov eax r15;
(* rol    $0xa,%eax                                #! PC = 0x555555555f9b *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%ecx                                #! PC = 0x555555555f9e *)
xor ecx@uint32 ecx eax;
(* mov    %edx,%eax                                #! PC = 0x555555555fa0 *)
mov eax edx;
(* xor    %r14d,%eax                               #! PC = 0x555555555fa2 *)
xor eax@uint32 eax r14;
(* and    %r15d,%eax                               #! PC = 0x555555555fa5 *)
and eax@uint32 eax r15;
(* mov    %edx,%esi                                #! PC = 0x555555555fa8 *)
mov esi edx;
(* and    %r14d,%esi                               #! PC = 0x555555555faa *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555fad *)
xor eax@uint32 eax esi;
(* add    %ecx,%eax                                #! PC = 0x555555555faf *)
adds dc eax eax ecx;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x6f1b5063d636627e; PC = 0x555555555fb1 *)
mov esi L0x7fffffffdf08;
(* add    %r12d,%esi                               #! PC = 0x555555555fb5 *)
adds dc esi esi r12;
(* add    %r12d,%eax                               #! PC = 0x555555555fb8 *)
adds dc eax eax r12;
(* lea    0x5(%rbp),%r9d                           #! PC = 0x555555555fbb *)
adds dc r9 ebp 0x5@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555fbf *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r11d                   #! EA = L0x7fffffffdfa4; Value = 0x180f9a3a65fb6bbc; PC = 0x555555555fc3 *)
mov r11 L0x7fffffffdfa4;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fc8 *)
mov r12 r11;
(* ror    $0x7,%r12d                               #! PC = 0x555555555fcb *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r13d                              #! PC = 0x555555555fcf *)
mov r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fd2 *)
mov r12 r11;
(* rol    $0xe,%r12d                               #! PC = 0x555555555fd5 *)
rol r12@uint32 r12 0xe;
(* xor    %r12d,%r13d                              #! PC = 0x555555555fd9 *)
xor r13@uint32 r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fdc *)
mov r12 r11;
(* shr    $0x3,%r12d                               #! PC = 0x555555555fdf *)
split r12 dc r12 0x3;
(* mov    %r12d,0x8(%rsp)                          #! EA = L0x7fffffffdf08; PC = 0x555555555fe3 *)
mov L0x7fffffffdf08 r12;
(* lea    0x12(%rbp),%ecx                          #! PC = 0x555555555fe8 *)
adds dc ecx ebp 0x12@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555feb *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf98; Value = 0xbcb1e18182640924; PC = 0x555555555fee *)
mov r12 L0x7fffffffdf98;
(* mov    %r12d,%r11d                              #! PC = 0x555555555ff3 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555ff6 *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%ecx                               #! PC = 0x555555555ffa *)
mov ecx r12;
(* rol    $0xd,%ecx                                #! PC = 0x555555555ffd *)
rol ecx@uint32 ecx 0xd;
(* xor    %r11d,%ecx                               #! PC = 0x555555556000 *)
xor ecx@uint32 ecx r11;
(* shr    $0xa,%r12d                               #! PC = 0x555555556003 *)
split r12 dc r12 0xa;
(* lea    0xd(%rbp),%r11d                          #! PC = 0x555555556007 *)
adds dc r11 ebp 0xd@uint32;
(* and    $0xf,%r11d                               #! PC = 0x55555555600b *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r11d                  #! EA = L0x7fffffffdf84; Value = 0x0fad4c3656829a8b; PC = 0x55555555600f *)
mov r11 L0x7fffffffdf84;
(* add    0x70(%rsp,%r10,4),%r11d                  #! EA = L0x7fffffffdfa0; Value = 0x65fb6bbcfa97d73f; PC = 0x555555556014 *)
adds dc r11 r11 L0x7fffffffdfa0;
(* xor    0x8(%rsp),%r13d                          #! EA = L0x7fffffffdf08; Value = 0x6f1b50630cbf6d77; PC = 0x555555556019 *)
xor r13@uint32 r13 L0x7fffffffdf08;
(* add    %r11d,%r13d                              #! PC = 0x55555555601e *)
adds dc r13 r13 r11;
(* xor    %r12d,%ecx                               #! PC = 0x555555556021 *)
xor ecx@uint32 ecx r12;
(* add    %ecx,%r13d                               #! PC = 0x555555556024 *)
adds dc r13 r13 ecx;
(* mov    %r13d,0x70(%rsp,%r10,4)                  #! EA = L0x7fffffffdfa0; PC = 0x555555556027 *)
mov L0x7fffffffdfa0 r13;
(* mov    %esi,%r10d                               #! PC = 0x55555555602c *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x55555555602f *)
ror r10@uint32 r10 0x6;
(* mov    %r10d,%ecx                               #! PC = 0x555555556033 *)
mov ecx r10;
(* mov    %esi,%r10d                               #! PC = 0x555555556036 *)
mov r10 esi;
(* ror    $0xb,%r10d                               #! PC = 0x555555556039 *)
ror r10@uint32 r10 0xb;
(* xor    %ecx,%r10d                               #! PC = 0x55555555603d *)
xor r10@uint32 r10 ecx;
(* mov    %esi,%r12d                               #! PC = 0x555555556040 *)
mov r12 esi;
(* rol    $0x7,%r12d                               #! PC = 0x555555556043 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%r10d                              #! PC = 0x555555556047 *)
xor r10@uint32 r10 r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x55555555604a *)
mov ecx L0x7fffffffdf10;
(* add    0x50(%rcx),%r13d                         #! EA = L0x5555555570d0; Value = 0xd6990624d192e819; PC = 0x55555555604f *)
adds dc r13 r13 L0x5555555570d0;
(* add    %r8d,%r13d                               #! PC = 0x555555556053 *)
adds dc r13 r13 r8;
(* add    %r13d,%r10d                              #! PC = 0x555555556056 *)
adds dc r10 r10 r13;
(* mov    %esi,%r8d                                #! PC = 0x555555556059 *)
mov r8 esi;
(* not    %r8d                                     #! PC = 0x55555555605c *)
not r8@uint32 r8;
(* mov    %r8d,%ecx                                #! PC = 0x55555555605f *)
mov ecx r8;
(* and    %ebx,%ecx                                #! PC = 0x555555556062 *)
and ecx@uint32 ecx ebx;
(* mov    %edi,%r8d                                #! PC = 0x555555556064 *)
mov r8 edi;
(* and    %esi,%r8d                                #! PC = 0x555555556067 *)
and r8@uint32 r8 esi;
(* xor    %r8d,%ecx                                #! PC = 0x55555555606a *)
xor ecx@uint32 ecx r8;
(* add    %r10d,%ecx                               #! PC = 0x55555555606d *)
adds dc ecx ecx r10;
(* mov    %eax,%r8d                                #! PC = 0x555555556070 *)
mov r8 eax;
(* ror    $0x2,%r8d                                #! PC = 0x555555556073 *)
ror r8@uint32 r8 0x2;
(* mov    %eax,%r10d                               #! PC = 0x555555556077 *)
mov r10 eax;
(* ror    $0xd,%r10d                               #! PC = 0x55555555607a *)
ror r10@uint32 r10 0xd;
(* xor    %r8d,%r10d                               #! PC = 0x55555555607e *)
xor r10@uint32 r10 r8;
(* mov    %eax,%r8d                                #! PC = 0x555555556081 *)
mov r8 eax;
(* rol    $0xa,%r8d                                #! PC = 0x555555556084 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%r10d                               #! PC = 0x555555556088 *)
xor r10@uint32 r10 r8;
(* mov    %r14d,%r8d                               #! PC = 0x55555555608b *)
mov r8 r14;
(* xor    %r15d,%r8d                               #! PC = 0x55555555608e *)
xor r8@uint32 r8 r15;
(* and    %eax,%r8d                                #! PC = 0x555555556091 *)
and r8@uint32 r8 eax;
(* mov    %r14d,%r11d                              #! PC = 0x555555556094 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555556097 *)
and r11@uint32 r11 r15;
(* xor    %r11d,%r8d                               #! PC = 0x55555555609a *)
xor r8@uint32 r8 r11;
(* add    %r10d,%r8d                               #! PC = 0x55555555609d *)
adds dc r8 r8 r10;
(* lea    (%rdx,%rcx,1),%r13d                      #! PC = 0x5555555560a0 *)
adds dc r13 edx ecx;
(* lea    (%rcx,%r8,1),%r11d                       #! PC = 0x5555555560a4 *)
adds dc r11 ecx r8;
(* mov    %r11d,0x20(%rsp)                         #! EA = L0x7fffffffdf20; PC = 0x5555555560a8 *)
mov L0x7fffffffdf20 r11;
(* lea    0x6(%rbp),%r8d                           #! PC = 0x5555555560ad *)
adds dc r8 ebp 0x6@uint32;
(* and    $0xf,%r8d                                #! PC = 0x5555555560b1 *)
and r8@uint32 r8 0xf@uint32;
(* mov    0x70(%rsp,%r8,4),%r12d                   #! EA = L0x7fffffffdfa8; Value = 0x4bfc73f7180f9a3a; PC = 0x5555555560b5 *)
mov r12 L0x7fffffffdfa8;
(* mov    %r12d,%edx                               #! PC = 0x5555555560ba *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x5555555560bd *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x5555555560c0 *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x5555555560c3 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x5555555560c6 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x5555555560c9 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x5555555560cc *)
split r12 dc r12 0x3;
(* lea    0x13(%rbp),%edx                          #! PC = 0x5555555560d0 *)
adds dc edx ebp 0x13@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555560d3 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf9c; Value = 0x854c3d24bcb1e181; PC = 0x5555555560d6 *)
mov r10 L0x7fffffffdf9c;
(* mov    %r10d,%edx                               #! PC = 0x5555555560db *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555560de *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x5555555560e1 *)
mov ecx edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555560e3 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555560e6 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555560e9 *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%r10d                               #! PC = 0x5555555560eb *)
split r10 dc r10 0xa;
(* mov    0x28(%rsp),%rcx                          #! EA = L0x7fffffffdf28; Value = 0x0000000000000006; PC = 0x5555555560ef *)
mov ecx L0x7fffffffdf28;
(* mov    0x70(%rsp,%rcx,4),%ecx                   #! EA = L0x7fffffffdf88; Value = 0xedcdfecf0fad4c36; PC = 0x5555555560f4 *)
mov ecx L0x7fffffffdf88;
(* add    0x70(%rsp,%r9,4),%ecx                    #! EA = L0x7fffffffdfa4; Value = 0x180f9a3a65fb6bbc; PC = 0x5555555560f8 *)
adds dc ecx ecx L0x7fffffffdfa4;
(* xor    %r12d,%r11d                              #! PC = 0x5555555560fd *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555556100 *)
adds dc r11 r11 ecx;
(* xor    %r10d,%edx                               #! PC = 0x555555556103 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x555555556106 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r9,4)                   #! EA = L0x7fffffffdfa4; PC = 0x555555556109 *)
mov L0x7fffffffdfa4 r11;
(* mov    %r13d,%edx                               #! PC = 0x55555555610e *)
mov edx r13;
(* ror    $0x6,%edx                                #! PC = 0x555555556111 *)
ror edx@uint32 edx 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x555555556114 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x555555556117 *)
ror r10@uint32 r10 0xb;
(* mov    %r10d,%ecx                               #! PC = 0x55555555611b *)
mov ecx r10;
(* xor    %edx,%ecx                                #! PC = 0x55555555611e *)
xor ecx@uint32 ecx edx;
(* mov    %r13d,%edx                               #! PC = 0x555555556120 *)
mov edx r13;
(* rol    $0x7,%edx                                #! PC = 0x555555556123 *)
rol edx@uint32 edx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555556126 *)
xor edx@uint32 edx ecx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x555555556128 *)
mov r12 L0x7fffffffdf10;
(* add    0x54(%r12),%r11d                         #! EA = L0x5555555570d4; Value = 0xf40e3585d6990624; PC = 0x55555555612d *)
adds dc r11 r11 L0x5555555570d4;
(* add    %ebx,%r11d                               #! PC = 0x555555556132 *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r11,1),%ecx                       #! PC = 0x555555556135 *)
adds dc ecx edx r11;
(* mov    %r13d,%ebx                               #! PC = 0x555555556139 *)
mov ebx r13;
(* not    %ebx                                     #! PC = 0x55555555613c *)
not ebx@uint32 ebx;
(* and    %edi,%ebx                                #! PC = 0x55555555613e *)
and ebx@uint32 ebx edi;
(* mov    %esi,%edx                                #! PC = 0x555555556140 *)
mov edx esi;
(* and    %r13d,%edx                               #! PC = 0x555555556142 *)
and edx@uint32 edx r13;
(* xor    %ebx,%edx                                #! PC = 0x555555556145 *)
xor edx@uint32 edx ebx;
(* add    %ecx,%edx                                #! PC = 0x555555556147 *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x0000002865be17fe; PC = 0x555555556149 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%ebx                               #! PC = 0x55555555614e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555556151 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%ecx                               #! PC = 0x555555556154 *)
mov ecx r11;
(* ror    $0xd,%ecx                                #! PC = 0x555555556157 *)
ror ecx@uint32 ecx 0xd;
(* xor    %ebx,%ecx                                #! PC = 0x55555555615a *)
xor ecx@uint32 ecx ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555615c *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x55555555615f *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%ecx                                #! PC = 0x555555556162 *)
xor ecx@uint32 ecx ebx;
(* mov    %r15d,%ebx                               #! PC = 0x555555556164 *)
mov ebx r15;
(* xor    %eax,%ebx                                #! PC = 0x555555556167 *)
xor ebx@uint32 ebx eax;
(* and    %r11d,%ebx                               #! PC = 0x555555556169 *)
and ebx@uint32 ebx r11;
(* mov    %r15d,%r10d                              #! PC = 0x55555555616c *)
mov r10 r15;
(* and    %eax,%r10d                               #! PC = 0x55555555616f *)
and r10@uint32 r10 eax;
(* xor    %r10d,%ebx                               #! PC = 0x555555556172 *)
xor ebx@uint32 ebx r10;
(* add    %ecx,%ebx                                #! PC = 0x555555556175 *)
adds dc ebx ebx ecx;
(* add    %edx,%r14d                               #! PC = 0x555555556177 *)
adds dc r14 r14 edx;
(* add    %edx,%ebx                                #! PC = 0x55555555617a *)
adds dc ebx ebx edx;
(* lea    0x7(%rbp),%ecx                           #! PC = 0x55555555617c *)
adds dc ecx ebp 0x7@uint32;
(* and    $0xf,%ecx                                #! PC = 0x55555555617f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdfac; Value = 0x000000004bfc73f7; PC = 0x555555556182 *)
mov r12 L0x7fffffffdfac;
(* mov    %r12d,%edx                               #! PC = 0x555555556187 *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x55555555618a *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x55555555618d *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x555555556190 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x555555556193 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x555555556196 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x555555556199 *)
split r12 dc r12 0x3;
(* lea    0x14(%rbp),%edx                          #! PC = 0x55555555619d *)
adds dc edx ebp 0x14@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555561a0 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdfa0; Value = 0xd447e818854c3d24; PC = 0x5555555561a3 *)
mov r10 L0x7fffffffdfa0;
(* mov    %r10d,%edx                               #! PC = 0x5555555561a8 *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555561ab *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%r9d                                #! PC = 0x5555555561ae *)
mov r9 edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555561b1 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555561b4 *)
rol edx@uint32 edx 0xd;
(* xor    %r9d,%edx                                #! PC = 0x5555555561b7 *)
xor edx@uint32 edx r9;
(* shr    $0xa,%r10d                               #! PC = 0x5555555561ba *)
split r10 dc r10 0xa;
(* mov    0x30(%rsp),%r9                           #! EA = L0x7fffffffdf30; Value = 0x0000000000000007; PC = 0x5555555561be *)
mov r9 L0x7fffffffdf30;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdf8c; Value = 0xeba4eb9fedcdfecf; PC = 0x5555555561c3 *)
mov r9 L0x7fffffffdf8c;
(* add    0x70(%rsp,%r8,4),%r9d                    #! EA = L0x7fffffffdfa8; Value = 0x4bfc73f7180f9a3a; PC = 0x5555555561c8 *)
adds dc r9 r9 L0x7fffffffdfa8;
(* xor    %r12d,%r11d                              #! PC = 0x5555555561cd *)
xor r11@uint32 r11 r12;
(* add    %r9d,%r11d                               #! PC = 0x5555555561d0 *)
adds dc r11 r11 r9;
(* xor    %r10d,%edx                               #! PC = 0x5555555561d3 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x5555555561d6 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r8,4)                   #! EA = L0x7fffffffdfa8; PC = 0x5555555561d9 *)
mov L0x7fffffffdfa8 r11;
(* mov    %r14d,%edx                               #! PC = 0x5555555561de *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x5555555561e1 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%r8d                               #! PC = 0x5555555561e4 *)
mov r8 r14;
(* ror    $0xb,%r8d                                #! PC = 0x5555555561e7 *)
ror r8@uint32 r8 0xb;
(* xor    %edx,%r8d                                #! PC = 0x5555555561eb *)
xor r8@uint32 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x5555555561ee *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x5555555561f1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r8d                                #! PC = 0x5555555561f4 *)
xor r8@uint32 r8 edx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x0000555555557080; PC = 0x5555555561f7 *)
mov r12 L0x7fffffffdf10;
(* add    0x58(%r12),%r11d                         #! EA = L0x5555555570d8; Value = 0x106aa070f40e3585; PC = 0x5555555561fc *)
adds dc r11 r11 L0x5555555570d8;
(* lea    (%r11,%rdi,1),%edx                       #! PC = 0x555555556201 *)
adds dc edx r11 edi;
(* add    %edx,%r8d                                #! PC = 0x555555556205 *)
adds dc r8 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x555555556208 *)
mov edx r14;
(* not    %edx                                     #! PC = 0x55555555620b *)
not edx@uint32 edx;
(* and    %esi,%edx                                #! PC = 0x55555555620d *)
and edx@uint32 edx esi;
(* mov    %r13d,%edi                               #! PC = 0x55555555620f *)
mov edi r13;
(* and    %r14d,%edi                               #! PC = 0x555555556212 *)
and edi@uint32 edi r14;
(* xor    %edi,%edx                                #! PC = 0x555555556215 *)
xor edx@uint32 edx edi;
(* add    %r8d,%edx                                #! PC = 0x555555556217 *)
adds dc edx edx r8;
(* mov    %ebx,%r8d                                #! PC = 0x55555555621a *)
mov r8 ebx;
(* ror    $0x2,%r8d                                #! PC = 0x55555555621d *)
ror r8@uint32 r8 0x2;
(* mov    %ebx,%edi                                #! PC = 0x555555556221 *)
mov edi ebx;
(* ror    $0xd,%edi                                #! PC = 0x555555556223 *)
ror edi@uint32 edi 0xd;
(* xor    %edi,%r8d                                #! PC = 0x555555556226 *)
xor r8@uint32 r8 edi;
(* mov    %ebx,%edi                                #! PC = 0x555555556229 *)
mov edi ebx;
(* rol    $0xa,%edi                                #! PC = 0x55555555622b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%r8d                                #! PC = 0x55555555622e *)
xor r8@uint32 r8 edi;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x0000002865be17fe; PC = 0x555555556231 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%edi                               #! PC = 0x555555556236 *)
mov edi r11;
(* xor    %eax,%edi                                #! PC = 0x555555556239 *)
xor edi@uint32 edi eax;
(* and    %ebx,%edi                                #! PC = 0x55555555623b *)
and edi@uint32 edi ebx;
(* mov    %r11d,%r9d                               #! PC = 0x55555555623d *)
mov r9 r11;
(* and    %eax,%r9d                                #! PC = 0x555555556240 *)
and r9@uint32 r9 eax;
(* xor    %r9d,%edi                                #! PC = 0x555555556243 *)
xor edi@uint32 edi r9;
(* add    %r8d,%edi                                #! PC = 0x555555556246 *)
adds dc edi edi r8;
(* add    %edx,%r15d                               #! PC = 0x555555556249 *)
adds dc r15 r15 edx;
(* add    %edx,%edi                                #! PC = 0x55555555624c *)
adds dc edi edi edx;
(* mov    %edi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x55555555624e *)
mov L0x7fffffffdf0c edi;
(* add    $0x8,%ebp                                #! PC = 0x555555556252 *)
adds dc ebp ebp 0x8@uint32;
(* mov    %ebp,%edx                                #! PC = 0x555555556255 *)
mov edx ebp;
(* and    $0xf,%edx                                #! PC = 0x555555556257 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r9d                   #! EA = L0x7fffffffdf70; Value = 0x5e92c08b5e7e0dd4; PC = 0x55555555625a *)
mov r9 L0x7fffffffdf70;
(* mov    %r9d,%edi                                #! PC = 0x55555555625f *)
mov edi r9;
(* ror    $0x7,%edi                                #! PC = 0x555555556262 *)
ror edi@uint32 edi 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555556265 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555556268 *)
rol edx@uint32 edx 0xe;
(* xor    %edi,%edx                                #! PC = 0x55555555626b *)
xor edx@uint32 edx edi;
(* shr    $0x3,%r9d                                #! PC = 0x55555555626d *)
split r9 dc r9 0x3;
(* mov    0x24(%rsp),%edi                          #! EA = L0x7fffffffdf24; Value = 0x0000000600000028; PC = 0x555555556271 *)
mov edi L0x7fffffffdf24;
(* add    $0x15,%edi                               #! PC = 0x555555556275 *)
adds dc edi edi 0x15@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555556278 *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r8d                   #! EA = L0x7fffffffdfa4; Value = 0x9a0abe6fd447e818; PC = 0x55555555627b *)
mov r8 L0x7fffffffdfa4;
(* mov    %r8d,%r10d                               #! PC = 0x555555556280 *)
mov r10 r8;
(* rol    $0xf,%r10d                               #! PC = 0x555555556283 *)
rol r10@uint32 r10 0xf;
(* mov    %r8d,%edi                                #! PC = 0x555555556287 *)
mov edi r8;
(* rol    $0xd,%edi                                #! PC = 0x55555555628a *)
rol edi@uint32 edi 0xd;
(* xor    %r10d,%edi                               #! PC = 0x55555555628d *)
xor edi@uint32 edi r10;
(* shr    $0xa,%r8d                                #! PC = 0x555555556290 *)
split r8 dc r8 0xa;
(* xor    %r9d,%edx                                #! PC = 0x555555556294 *)
xor edx@uint32 edx r9;
(* add    0x70(%rsp,%rcx,4),%edx                   #! EA = L0x7fffffffdfac; Value = 0x000000004bfc73f7; PC = 0x555555556297 *)
adds dc edx edx L0x7fffffffdfac;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffdf18; Value = 0x0000000000000008; PC = 0x55555555629b *)
mov r9 L0x7fffffffdf18;
(* add    0x70(%rsp,%r9,4),%edx                    #! EA = L0x7fffffffdf90; Value = 0x3db49b6ceba4eb9f; PC = 0x5555555562a0 *)
adds dc edx edx L0x7fffffffdf90;
(* xor    %r8d,%edi                                #! PC = 0x5555555562a5 *)
xor edi@uint32 edi r8;
(* add    %edx,%edi                                #! PC = 0x5555555562a8 *)
adds dc edi edi edx;
(* mov    %edi,0x70(%rsp,%rcx,4)                   #! EA = L0x7fffffffdfac; PC = 0x5555555562aa *)
mov L0x7fffffffdfac edi;
(* mov    %r15d,%edx                               #! PC = 0x5555555562ae *)
mov edx r15;
(* ror    $0x6,%edx                                #! PC = 0x5555555562b1 *)
ror edx@uint32 edx 0x6;
(* mov    %edx,%ecx                                #! PC = 0x5555555562b4 *)
mov ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562b6 *)
mov edx r15;
(* ror    $0xb,%edx                                #! PC = 0x5555555562b9 *)
ror edx@uint32 edx 0xb;
(* xor    %edx,%ecx                                #! PC = 0x5555555562bc *)
xor ecx@uint32 ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562be *)
mov edx r15;
(* rol    $0x7,%edx                                #! PC = 0x5555555562c1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%ecx                                #! PC = 0x5555555562c4 *)
xor ecx@uint32 ecx edx;
(* add    0x5c(%r12),%edi                          #! EA = L0x5555555570dc; Value = 0x19a4c116106aa070; PC = 0x5555555562c6 *)
adds dc edi edi L0x5555555570dc;
(* add    %esi,%edi                                #! PC = 0x5555555562cb *)
adds dc edi edi esi;
(* add    %ecx,%edi                                #! PC = 0x5555555562cd *)
adds dc edi edi ecx;
(* mov    %r15d,%esi                               #! PC = 0x5555555562cf *)
mov esi r15;
(* not    %esi                                     #! PC = 0x5555555562d2 *)
not esi@uint32 esi;
(* and    %r13d,%esi                               #! PC = 0x5555555562d4 *)
and esi@uint32 esi r13;
(* mov    %r14d,%edx                               #! PC = 0x5555555562d7 *)
mov edx r14;
(* and    %r15d,%edx                               #! PC = 0x5555555562da *)
and edx@uint32 edx r15;
(* xor    %edx,%esi                                #! PC = 0x5555555562dd *)
xor esi@uint32 esi edx;
(* add    %esi,%edi                                #! PC = 0x5555555562df *)
adds dc edi edi esi;
(* mov    0xc(%rsp),%ecx                           #! EA = L0x7fffffffdf0c; Value = 0x55557080723b19cd; PC = 0x5555555562e1 *)
mov ecx L0x7fffffffdf0c;
(* mov    %ecx,%esi                                #! PC = 0x5555555562e5 *)
mov esi ecx;
(* ror    $0x2,%esi                                #! PC = 0x5555555562e7 *)
ror esi@uint32 esi 0x2;
(* mov    %ecx,%edx                                #! PC = 0x5555555562ea *)
mov edx ecx;
(* ror    $0xd,%edx                                #! PC = 0x5555555562ec *)
ror edx@uint32 edx 0xd;
(* xor    %edx,%esi                                #! PC = 0x5555555562ef *)
xor esi@uint32 esi edx;
(* mov    %ecx,%edx                                #! PC = 0x5555555562f1 *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x5555555562f3 *)
rol edx@uint32 edx 0xa;
(* xor    %esi,%edx                                #! PC = 0x5555555562f6 *)
xor edx@uint32 edx esi;
(* mov    %r11d,%esi                               #! PC = 0x5555555562f8 *)
mov esi r11;
(* xor    %ebx,%esi                                #! PC = 0x5555555562fb *)
xor esi@uint32 esi ebx;
(* and    %ecx,%esi                                #! PC = 0x5555555562fd *)
and esi@uint32 esi ecx;
(* and    %ebx,%r11d                               #! PC = 0x5555555562ff *)
and r11@uint32 r11 ebx;
(* xor    %r11d,%esi                               #! PC = 0x555555556302 *)
xor esi@uint32 esi r11;
(* add    %edx,%esi                                #! PC = 0x555555556305 *)
adds dc esi esi edx;
(* add    %edi,%eax                                #! PC = 0x555555556307 *)
adds dc eax eax edi;
(* add    %edi,%esi                                #! PC = 0x555555556309 *)
adds dc esi esi edi;
(* mov    %esi,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x55555555630b *)
mov L0x7fffffffdf08 esi;
(* add    $0x20,%r12                               #! PC = 0x55555555630f *)
adds dc r12 r12 0x20@uint32;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555556313 *)
mov L0x7fffffffdf10 r12;
(* cmp    $0x40,%ebp                               #! PC = 0x555555556318 *)
(* cmp 0x40, ebp *)
nop;
(* #jne    0x555555555c2b <sha256_block_data_order+2669>#! PC = 0x55555555631b *)
#jne    0x555555555c2b <sha256_block_data_order+2669>#! 0x55555555631b = 0x55555555631b;
(* mov    %ebp,0x24(%rsp)                          #! EA = L0x7fffffffdf24; PC = 0x555555555c2b *)
mov L0x7fffffffdf24 ebp;
(* lea    0x1(%rbp),%esi                           #! PC = 0x555555555c2f *)
adds dc esi ebp 0x1@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555c32 *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf74; Value = 0x6932a3e65e92c08b; PC = 0x555555555c35 *)
mov r9 L0x7fffffffdf74;
(* mov    %r9d,%r8d                                #! PC = 0x555555555c3a *)
mov r8 r9;
(* ror    $0x7,%r8d                                #! PC = 0x555555555c3d *)
ror r8@uint32 r8 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555555c41 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555555c44 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r8d                                #! PC = 0x555555555c47 *)
xor r8@uint32 r8 edx;
(* shr    $0x3,%r9d                                #! PC = 0x555555555c4a *)
split r9 dc r9 0x3;
(* lea    0xe(%rbp),%edx                           #! PC = 0x555555555c4e *)
adds dc edx ebp 0xe@uint32;
(* mov    %edx,%edi                                #! PC = 0x555555555c51 *)
mov edi edx;
(* and    $0xf,%edi                                #! PC = 0x555555555c53 *)
and edi@uint32 edi 0xf@uint32;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdf28; PC = 0x555555555c56 *)
mov L0x7fffffffdf28 edi;
(* mov    0x70(%rsp,%rdi,4),%edi                   #! EA = L0x7fffffffdfa8; Value = 0x60e1eb259a0abe6f; PC = 0x555555555c5b *)
mov edi L0x7fffffffdfa8;
(* mov    %edi,%edx                                #! PC = 0x555555555c5f *)
mov edx edi;
(* rol    $0xf,%edx                                #! PC = 0x555555555c61 *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x555555555c64 *)
mov ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555c66 *)
mov edx edi;
(* rol    $0xd,%edx                                #! PC = 0x555555555c68 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x555555555c6b *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%edi                                #! PC = 0x555555555c6d *)
split edi dc edi 0xa;
(* lea    0x9(%rbp),%ecx                           #! PC = 0x555555555c70 *)
adds dc ecx ebp 0x9@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555c73 *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    %ebp,%r11d                               #! PC = 0x555555555c76 *)
mov r11 ebp;
(* and    $0xf,%r11d                               #! PC = 0x555555555c79 *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r10d                  #! EA = L0x7fffffffdf70; Value = 0x5e92c08b5e7e0dd4; PC = 0x555555555c7d *)
mov r10 L0x7fffffffdf70;
(* add    0x70(%rsp,%rcx,4),%r10d                  #! EA = L0x7fffffffdf94; Value = 0x826409243db49b6c; PC = 0x555555555c82 *)
adds dc r10 r10 L0x7fffffffdf94;
(* xor    %r9d,%r8d                                #! PC = 0x555555555c87 *)
xor r8@uint32 r8 r9;
(* add    %r10d,%r8d                               #! PC = 0x555555555c8a *)
adds dc r8 r8 r10;
(* xor    %edx,%edi                                #! PC = 0x555555555c8d *)
xor edi@uint32 edi edx;
(* add    %r8d,%edi                                #! PC = 0x555555555c8f *)
adds dc edi edi r8;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffdf18; PC = 0x555555555c92 *)
mov L0x7fffffffdf18 r11;
(* mov    %edi,0x70(%rsp,%r11,4)                   #! EA = L0x7fffffffdf70; PC = 0x555555555c97 *)
mov L0x7fffffffdf70 edi;
(* mov    %eax,%edx                                #! PC = 0x555555555c9c *)
mov edx eax;
(* ror    $0x6,%edx                                #! PC = 0x555555555c9e *)
ror edx@uint32 edx 0x6;
(* mov    %eax,%r10d                               #! PC = 0x555555555ca1 *)
mov r10 eax;
(* ror    $0xb,%r10d                               #! PC = 0x555555555ca4 *)
ror r10@uint32 r10 0xb;
(* xor    %edx,%r10d                               #! PC = 0x555555555ca8 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cab *)
mov edx eax;
(* rol    $0x7,%edx                                #! PC = 0x555555555cad *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r10d                               #! PC = 0x555555555cb0 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cb3 *)
mov edx eax;
(* not    %edx                                     #! PC = 0x555555555cb5 *)
not edx@uint32 edx;
(* and    %r14d,%edx                               #! PC = 0x555555555cb7 *)
and edx@uint32 edx r14;
(* mov    %eax,%ecx                                #! PC = 0x555555555cba *)
mov ecx eax;
(* and    %r15d,%ecx                               #! PC = 0x555555555cbc *)
and ecx@uint32 ecx r15;
(* xor    %ecx,%edx                                #! PC = 0x555555555cbf *)
xor edx@uint32 edx ecx;
(* add    %r10d,%edx                               #! PC = 0x555555555cc1 *)
adds dc edx edx r10;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x555555555cc4 *)
mov ecx L0x7fffffffdf10;
(* add    0x40(%rcx),%edx                          #! EA = L0x5555555570e0; Value = 0x1e376c0819a4c116; PC = 0x555555555cc9 *)
adds dc edx edx L0x5555555570e0;
(* add    %edi,%edx                                #! PC = 0x555555555ccc *)
adds dc edx edx edi;
(* add    %edx,%r13d                               #! PC = 0x555555555cce *)
adds dc r13 r13 edx;
(* mov    0x8(%rsp),%edi                           #! EA = L0x7fffffffdf08; Value = 0x723b19cdd0c0aca5; PC = 0x555555555cd1 *)
mov edi L0x7fffffffdf08;
(* mov    %edi,%edx                                #! PC = 0x555555555cd5 *)
mov edx edi;
(* ror    $0x2,%edx                                #! PC = 0x555555555cd7 *)
ror edx@uint32 edx 0x2;
(* mov    %edi,%ecx                                #! PC = 0x555555555cda *)
mov ecx edi;
(* ror    $0xd,%ecx                                #! PC = 0x555555555cdc *)
ror ecx@uint32 ecx 0xd;
(* xor    %edx,%ecx                                #! PC = 0x555555555cdf *)
xor ecx@uint32 ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555ce1 *)
mov edx edi;
(* rol    $0xa,%edx                                #! PC = 0x555555555ce3 *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%ecx                                #! PC = 0x555555555ce6 *)
xor ecx@uint32 ecx edx;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570a0723b19cd; PC = 0x555555555ce8 *)
mov r10 L0x7fffffffdf0c;
(* mov    %r10d,%edx                               #! PC = 0x555555555ced *)
mov edx r10;
(* xor    %ebx,%edx                                #! PC = 0x555555555cf0 *)
xor edx@uint32 edx ebx;
(* and    %edi,%edx                                #! PC = 0x555555555cf2 *)
and edx@uint32 edx edi;
(* mov    %r10d,%edi                               #! PC = 0x555555555cf4 *)
mov edi r10;
(* and    %ebx,%edi                                #! PC = 0x555555555cf7 *)
and edi@uint32 edi ebx;
(* xor    %edi,%edx                                #! PC = 0x555555555cf9 *)
xor edx@uint32 edx edi;
(* add    %ecx,%edx                                #! PC = 0x555555555cfb *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x0000003065be17fe; PC = 0x555555555cfd *)
mov r8 L0x7fffffffdf20;
(* add    %r13d,%r8d                               #! PC = 0x555555555d02 *)
adds dc r8 r8 r13;
(* add    %r13d,%edx                               #! PC = 0x555555555d05 *)
adds dc edx edx r13;
(* lea    0x2(%rbp),%edi                           #! PC = 0x555555555d08 *)
adds dc edi ebp 0x2@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555555d0b *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r12d                  #! EA = L0x7fffffffdf78; Value = 0x686dd1e26932a3e6; PC = 0x555555555d0e *)
mov r12 L0x7fffffffdf78;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d13 *)
mov r13 r12;
(* ror    $0x7,%r13d                               #! PC = 0x555555555d16 *)
ror r13@uint32 r13 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555d1a *)
mov r11 r13;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d1d *)
mov r13 r12;
(* rol    $0xe,%r13d                               #! PC = 0x555555555d20 *)
rol r13@uint32 r13 0xe;
(* xor    %r13d,%r11d                              #! PC = 0x555555555d24 *)
xor r11@uint32 r11 r13;
(* shr    $0x3,%r12d                               #! PC = 0x555555555d27 *)
split r12 dc r12 0x3;
(* lea    0xf(%rbp),%ecx                           #! PC = 0x555555555d2b *)
adds dc ecx ebp 0xf@uint32;
(* mov    %ecx,%r13d                               #! PC = 0x555555555d2e *)
mov r13 ecx;
(* and    $0xf,%r13d                               #! PC = 0x555555555d31 *)
and r13@uint32 r13 0xf@uint32;
(* mov    %r13,0x30(%rsp)                          #! EA = L0x7fffffffdf30; PC = 0x555555555d35 *)
mov L0x7fffffffdf30 r13;
(* mov    0x70(%rsp,%r13,4),%r10d                  #! EA = L0x7fffffffdfac; Value = 0x0000000060e1eb25; PC = 0x555555555d3a *)
mov r10 L0x7fffffffdfac;
(* mov    %r10d,%r9d                               #! PC = 0x555555555d3f *)
mov r9 r10;
(* rol    $0xf,%r9d                                #! PC = 0x555555555d42 *)
rol r9@uint32 r9 0xf;
(* mov    %r10d,%ecx                               #! PC = 0x555555555d46 *)
mov ecx r10;
(* rol    $0xd,%ecx                                #! PC = 0x555555555d49 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555d4c *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r10d                               #! PC = 0x555555555d4f *)
split r10 dc r10 0xa;
(* lea    0xa(%rbp),%r9d                           #! PC = 0x555555555d53 *)
adds dc r9 ebp 0xa@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555d57 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r13d                  #! EA = L0x7fffffffdf74; Value = 0x6932a3e65e92c08b; PC = 0x555555555d5b *)
mov r13 L0x7fffffffdf74;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf98; Value = 0xbcb1e18182640924; PC = 0x555555555d60 *)
adds dc r13 r13 L0x7fffffffdf98;
(* xor    %r12d,%r11d                              #! PC = 0x555555555d65 *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555d68 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555d6b *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555d6e *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf74; PC = 0x555555555d71 *)
mov L0x7fffffffdf74 r11;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d76 *)
mov r12 r8;
(* ror    $0x6,%r12d                               #! PC = 0x555555555d79 *)
ror r12@uint32 r12 0x6;
(* mov    %r8d,%esi                                #! PC = 0x555555555d7d *)
mov esi r8;
(* ror    $0xb,%esi                                #! PC = 0x555555555d80 *)
ror esi@uint32 esi 0xb;
(* xor    %r12d,%esi                               #! PC = 0x555555555d83 *)
xor esi@uint32 esi r12;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d86 *)
mov r12 r8;
(* rol    $0x7,%r12d                               #! PC = 0x555555555d89 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%esi                               #! PC = 0x555555555d8d *)
xor esi@uint32 esi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x555555555d90 *)
mov ecx L0x7fffffffdf10;
(* add    0x44(%rcx),%r14d                         #! EA = L0x5555555570e4; Value = 0x2748774c1e376c08; PC = 0x555555555d95 *)
adds dc r14 r14 L0x5555555570e4;
(* add    %r14d,%r11d                              #! PC = 0x555555555d99 *)
adds dc r11 r11 r14;
(* lea    (%rsi,%r11,1),%ecx                       #! PC = 0x555555555d9c *)
adds dc ecx esi r11;
(* mov    %r8d,%r14d                               #! PC = 0x555555555da0 *)
mov r14 r8;
(* not    %r14d                                    #! PC = 0x555555555da3 *)
not r14@uint32 r14;
(* mov    %r14d,%r11d                              #! PC = 0x555555555da6 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555da9 *)
and r11@uint32 r11 r15;
(* mov    %r8d,%r14d                               #! PC = 0x555555555dac *)
mov r14 r8;
(* and    %eax,%r14d                               #! PC = 0x555555555daf *)
and r14@uint32 r14 eax;
(* xor    %r14d,%r11d                              #! PC = 0x555555555db2 *)
xor r11@uint32 r11 r14;
(* add    %ecx,%r11d                               #! PC = 0x555555555db5 *)
adds dc r11 r11 ecx;
(* mov    %edx,%r14d                               #! PC = 0x555555555db8 *)
mov r14 edx;
(* ror    $0x2,%r14d                               #! PC = 0x555555555dbb *)
ror r14@uint32 r14 0x2;
(* mov    %edx,%r12d                               #! PC = 0x555555555dbf *)
mov r12 edx;
(* ror    $0xd,%r12d                               #! PC = 0x555555555dc2 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%ecx                               #! PC = 0x555555555dc6 *)
mov ecx r12;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dc9 *)
xor ecx@uint32 ecx r14;
(* mov    %edx,%r14d                               #! PC = 0x555555555dcc *)
mov r14 edx;
(* rol    $0xa,%r14d                               #! PC = 0x555555555dcf *)
rol r14@uint32 r14 0xa;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dd3 *)
xor ecx@uint32 ecx r14;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x723b19cdd0c0aca5; PC = 0x555555555dd6 *)
mov esi L0x7fffffffdf08;
(* mov    %esi,%r14d                               #! PC = 0x555555555dda *)
mov r14 esi;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570a0723b19cd; PC = 0x555555555ddd *)
mov r10 L0x7fffffffdf0c;
(* xor    %r10d,%r14d                              #! PC = 0x555555555de2 *)
xor r14@uint32 r14 r10;
(* and    %edx,%r14d                               #! PC = 0x555555555de5 *)
and r14@uint32 r14 edx;
(* and    %r10d,%esi                               #! PC = 0x555555555de8 *)
and esi@uint32 esi r10;
(* xor    %esi,%r14d                               #! PC = 0x555555555deb *)
xor r14@uint32 r14 esi;
(* add    %ecx,%r14d                               #! PC = 0x555555555dee *)
adds dc r14 r14 ecx;
(* add    %r11d,%ebx                               #! PC = 0x555555555df1 *)
adds dc ebx ebx r11;
(* add    %r11d,%r14d                              #! PC = 0x555555555df4 *)
adds dc r14 r14 r11;
(* lea    0x3(%rbp),%esi                           #! PC = 0x555555555df7 *)
adds dc esi ebp 0x3@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555dfa *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r10d                  #! EA = L0x7fffffffdf7c; Value = 0x6a3e6f4f686dd1e2; PC = 0x555555555dfd *)
mov r10 L0x7fffffffdf7c;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e02 *)
mov r12 r10;
(* ror    $0x7,%r12d                               #! PC = 0x555555555e05 *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e09 *)
mov r9 r12;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e0c *)
mov r12 r10;
(* rol    $0xe,%r12d                               #! PC = 0x555555555e0f *)
rol r12@uint32 r12 0xe;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e13 *)
mov ecx r12;
(* xor    %r9d,%ecx                                #! PC = 0x555555555e16 *)
xor ecx@uint32 ecx r9;
(* shr    $0x3,%r10d                               #! PC = 0x555555555e19 *)
split r10 dc r10 0x3;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffdf18; Value = 0x0000000000000000; PC = 0x555555555e1d *)
mov r11 L0x7fffffffdf18;
(* mov    0x70(%rsp,%r11,4),%r12d                  #! EA = L0x7fffffffdf70; Value = 0x12f2993c525d105f; PC = 0x555555555e22 *)
mov r12 L0x7fffffffdf70;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e27 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555e2a *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e2e *)
mov r9 r12;
(* rol    $0xd,%r9d                                #! PC = 0x555555555e31 *)
rol r9@uint32 r9 0xd;
(* xor    %r9d,%r11d                               #! PC = 0x555555555e35 *)
xor r11@uint32 r11 r9;
(* shr    $0xa,%r12d                               #! PC = 0x555555555e38 *)
split r12 dc r12 0xa;
(* lea    0xb(%rbp),%r9d                           #! PC = 0x555555555e3c *)
adds dc r9 ebp 0xb@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555e40 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r13d                  #! EA = L0x7fffffffdf78; Value = 0x686dd1e26932a3e6; PC = 0x555555555e44 *)
mov r13 L0x7fffffffdf78;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf9c; Value = 0x854c3d24bcb1e181; PC = 0x555555555e49 *)
adds dc r13 r13 L0x7fffffffdf9c;
(* xor    %r12d,%r11d                              #! PC = 0x555555555e4e *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555e51 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555e54 *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555e57 *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rdi,4)                  #! EA = L0x7fffffffdf78; PC = 0x555555555e5a *)
mov L0x7fffffffdf78 r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e5f *)
mov r12 ebx;
(* ror    $0x6,%r12d                               #! PC = 0x555555555e62 *)
ror r12@uint32 r12 0x6;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e66 *)
mov ecx r12;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e69 *)
mov r12 ebx;
(* ror    $0xb,%r12d                               #! PC = 0x555555555e6c *)
ror r12@uint32 r12 0xb;
(* mov    %r12d,%edi                               #! PC = 0x555555555e70 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555e73 *)
xor edi@uint32 edi ecx;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e75 *)
mov r12 ebx;
(* rol    $0x7,%r12d                               #! PC = 0x555555555e78 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%edi                               #! PC = 0x555555555e7c *)
xor edi@uint32 edi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x555555555e7f *)
mov ecx L0x7fffffffdf10;
(* add    0x48(%rcx),%r15d                         #! EA = L0x5555555570e8; Value = 0x34b0bcb52748774c; PC = 0x555555555e84 *)
adds dc r15 r15 L0x5555555570e8;
(* add    %r15d,%r11d                              #! PC = 0x555555555e88 *)
adds dc r11 r11 r15;
(* lea    (%rdi,%r11,1),%ecx                       #! PC = 0x555555555e8b *)
adds dc ecx edi r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e8f *)
mov r12 ebx;
(* not    %r12d                                    #! PC = 0x555555555e92 *)
not r12@uint32 r12;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e95 *)
mov r11 r12;
(* and    %eax,%r11d                               #! PC = 0x555555555e98 *)
and r11@uint32 r11 eax;
(* mov    %r8d,%r12d                               #! PC = 0x555555555e9b *)
mov r12 r8;
(* and    %ebx,%r12d                               #! PC = 0x555555555e9e *)
and r12@uint32 r12 ebx;
(* xor    %r12d,%r11d                              #! PC = 0x555555555ea1 *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555555ea4 *)
adds dc r11 r11 ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ea7 *)
mov r12 r14;
(* ror    $0x2,%r12d                               #! PC = 0x555555555eaa *)
ror r12@uint32 r12 0x2;
(* mov    %r12d,%ecx                               #! PC = 0x555555555eae *)
mov ecx r12;
(* mov    %r14d,%r12d                              #! PC = 0x555555555eb1 *)
mov r12 r14;
(* ror    $0xd,%r12d                               #! PC = 0x555555555eb4 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%edi                               #! PC = 0x555555555eb8 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555ebb *)
xor edi@uint32 edi ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ebd *)
mov r12 r14;
(* rol    $0xa,%r12d                               #! PC = 0x555555555ec0 *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%edi                               #! PC = 0x555555555ec4 *)
xor edi@uint32 edi r12;
(* mov    0x8(%rsp),%r15d                          #! EA = L0x7fffffffdf08; Value = 0x723b19cdd0c0aca5; PC = 0x555555555ec7 *)
mov r15 L0x7fffffffdf08;
(* mov    %r15d,%ecx                               #! PC = 0x555555555ecc *)
mov ecx r15;
(* xor    %edx,%ecx                                #! PC = 0x555555555ecf *)
xor ecx@uint32 ecx edx;
(* and    %r14d,%ecx                               #! PC = 0x555555555ed1 *)
and ecx@uint32 ecx r14;
(* mov    %r15d,%r9d                               #! PC = 0x555555555ed4 *)
mov r9 r15;
(* and    %edx,%r9d                                #! PC = 0x555555555ed7 *)
and r9@uint32 r9 edx;
(* xor    %r9d,%ecx                                #! PC = 0x555555555eda *)
xor ecx@uint32 ecx r9;
(* add    %edi,%ecx                                #! PC = 0x555555555edd *)
adds dc ecx ecx edi;
(* mov    0xc(%rsp),%edi                           #! EA = L0x7fffffffdf0c; Value = 0x555570a0723b19cd; PC = 0x555555555edf *)
mov edi L0x7fffffffdf0c;
(* add    %r11d,%edi                               #! PC = 0x555555555ee3 *)
adds dc edi edi r11;
(* lea    (%r11,%rcx,1),%r15d                      #! PC = 0x555555555ee6 *)
adds dc r15 r11 ecx;
(* lea    0x4(%rbp),%r10d                          #! PC = 0x555555555eea *)
adds dc r10 ebp 0x4@uint32;
(* and    $0xf,%r10d                               #! PC = 0x555555555eee *)
and r10@uint32 r10 0xf@uint32;
(* mov    0x70(%rsp,%r10,4),%r13d                  #! EA = L0x7fffffffdf80; Value = 0x56829a8b6a3e6f4f; PC = 0x555555555ef2 *)
mov r13 L0x7fffffffdf80;
(* mov    %r13d,%r12d                              #! PC = 0x555555555ef7 *)
mov r12 r13;
(* ror    $0x7,%r12d                               #! PC = 0x555555555efa *)
ror r12@uint32 r12 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555efe *)
mov r11 r13;
(* rol    $0xe,%r11d                               #! PC = 0x555555555f01 *)
rol r11@uint32 r11 0xe;
(* xor    %r11d,%r12d                              #! PC = 0x555555555f05 *)
xor r12@uint32 r12 r11;
(* shr    $0x3,%r13d                               #! PC = 0x555555555f08 *)
split r13 dc r13 0x3;
(* lea    0x11(%rbp),%ecx                          #! PC = 0x555555555f0c *)
adds dc ecx ebp 0x11@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555f0f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r11d                  #! EA = L0x7fffffffdf74; Value = 0x0dbb550c12f2993c; PC = 0x555555555f12 *)
mov r11 L0x7fffffffdf74;
(* mov    %r11d,%r9d                               #! PC = 0x555555555f17 *)
mov r9 r11;
(* rol    $0xf,%r9d                                #! PC = 0x555555555f1a *)
rol r9@uint32 r9 0xf;
(* mov    %r11d,%ecx                               #! PC = 0x555555555f1e *)
mov ecx r11;
(* rol    $0xd,%ecx                                #! PC = 0x555555555f21 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555f24 *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r11d                               #! PC = 0x555555555f27 *)
split r11 dc r11 0xa;
(* lea    0xc(%rbp),%r9d                           #! PC = 0x555555555f2b *)
adds dc r9 ebp 0xc@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555f2f *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdfa0; Value = 0xd447e818854c3d24; PC = 0x555555555f33 *)
mov r9 L0x7fffffffdfa0;
(* add    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf7c; Value = 0x6a3e6f4f686dd1e2; PC = 0x555555555f38 *)
adds dc r9 r9 L0x7fffffffdf7c;
(* xor    %r13d,%r12d                              #! PC = 0x555555555f3d *)
xor r12@uint32 r12 r13;
(* add    %r9d,%r12d                               #! PC = 0x555555555f40 *)
adds dc r12 r12 r9;
(* xor    %r11d,%ecx                               #! PC = 0x555555555f43 *)
xor ecx@uint32 ecx r11;
(* add    %ecx,%r12d                               #! PC = 0x555555555f46 *)
adds dc r12 r12 ecx;
(* mov    %r12d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf7c; PC = 0x555555555f49 *)
mov L0x7fffffffdf7c r12;
(* mov    %edi,%esi                                #! PC = 0x555555555f4e *)
mov esi edi;
(* ror    $0x6,%esi                                #! PC = 0x555555555f50 *)
ror esi@uint32 esi 0x6;
(* mov    %esi,%ecx                                #! PC = 0x555555555f53 *)
mov ecx esi;
(* mov    %edi,%esi                                #! PC = 0x555555555f55 *)
mov esi edi;
(* ror    $0xb,%esi                                #! PC = 0x555555555f57 *)
ror esi@uint32 esi 0xb;
(* xor    %ecx,%esi                                #! PC = 0x555555555f5a *)
xor esi@uint32 esi ecx;
(* mov    %edi,%r11d                               #! PC = 0x555555555f5c *)
mov r11 edi;
(* rol    $0x7,%r11d                               #! PC = 0x555555555f5f *)
rol r11@uint32 r11 0x7;
(* xor    %r11d,%esi                               #! PC = 0x555555555f63 *)
xor esi@uint32 esi r11;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x555555555f66 *)
mov ecx L0x7fffffffdf10;
(* add    0x4c(%rcx),%eax                          #! EA = L0x5555555570ec; Value = 0x391c0cb334b0bcb5; PC = 0x555555555f6b *)
adds dc eax eax L0x5555555570ec;
(* add    %eax,%r12d                               #! PC = 0x555555555f6e *)
adds dc r12 r12 eax;
(* lea    (%rsi,%r12,1),%ecx                       #! PC = 0x555555555f71 *)
adds dc ecx esi r12;
(* mov    %edi,%r12d                               #! PC = 0x555555555f75 *)
mov r12 edi;
(* not    %r12d                                    #! PC = 0x555555555f78 *)
not r12@uint32 r12;
(* and    %r8d,%r12d                               #! PC = 0x555555555f7b *)
and r12@uint32 r12 r8;
(* mov    %ebx,%eax                                #! PC = 0x555555555f7e *)
mov eax ebx;
(* and    %edi,%eax                                #! PC = 0x555555555f80 *)
and eax@uint32 eax edi;
(* xor    %eax,%r12d                               #! PC = 0x555555555f82 *)
xor r12@uint32 r12 eax;
(* add    %ecx,%r12d                               #! PC = 0x555555555f85 *)
adds dc r12 r12 ecx;
(* mov    %r15d,%eax                               #! PC = 0x555555555f88 *)
mov eax r15;
(* ror    $0x2,%eax                                #! PC = 0x555555555f8b *)
ror eax@uint32 eax 0x2;
(* mov    %r15d,%esi                               #! PC = 0x555555555f8e *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555f91 *)
ror esi@uint32 esi 0xd;
(* mov    %esi,%ecx                                #! PC = 0x555555555f94 *)
mov ecx esi;
(* xor    %eax,%ecx                                #! PC = 0x555555555f96 *)
xor ecx@uint32 ecx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555f98 *)
mov eax r15;
(* rol    $0xa,%eax                                #! PC = 0x555555555f9b *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%ecx                                #! PC = 0x555555555f9e *)
xor ecx@uint32 ecx eax;
(* mov    %edx,%eax                                #! PC = 0x555555555fa0 *)
mov eax edx;
(* xor    %r14d,%eax                               #! PC = 0x555555555fa2 *)
xor eax@uint32 eax r14;
(* and    %r15d,%eax                               #! PC = 0x555555555fa5 *)
and eax@uint32 eax r15;
(* mov    %edx,%esi                                #! PC = 0x555555555fa8 *)
mov esi edx;
(* and    %r14d,%esi                               #! PC = 0x555555555faa *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555fad *)
xor eax@uint32 eax esi;
(* add    %ecx,%eax                                #! PC = 0x555555555faf *)
adds dc eax eax ecx;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x723b19cdd0c0aca5; PC = 0x555555555fb1 *)
mov esi L0x7fffffffdf08;
(* add    %r12d,%esi                               #! PC = 0x555555555fb5 *)
adds dc esi esi r12;
(* add    %r12d,%eax                               #! PC = 0x555555555fb8 *)
adds dc eax eax r12;
(* lea    0x5(%rbp),%r9d                           #! PC = 0x555555555fbb *)
adds dc r9 ebp 0x5@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555fbf *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r11d                   #! EA = L0x7fffffffdf84; Value = 0x0fad4c3656829a8b; PC = 0x555555555fc3 *)
mov r11 L0x7fffffffdf84;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fc8 *)
mov r12 r11;
(* ror    $0x7,%r12d                               #! PC = 0x555555555fcb *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r13d                              #! PC = 0x555555555fcf *)
mov r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fd2 *)
mov r12 r11;
(* rol    $0xe,%r12d                               #! PC = 0x555555555fd5 *)
rol r12@uint32 r12 0xe;
(* xor    %r12d,%r13d                              #! PC = 0x555555555fd9 *)
xor r13@uint32 r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fdc *)
mov r12 r11;
(* shr    $0x3,%r12d                               #! PC = 0x555555555fdf *)
split r12 dc r12 0x3;
(* mov    %r12d,0x8(%rsp)                          #! EA = L0x7fffffffdf08; PC = 0x555555555fe3 *)
mov L0x7fffffffdf08 r12;
(* lea    0x12(%rbp),%ecx                          #! PC = 0x555555555fe8 *)
adds dc ecx ebp 0x12@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555feb *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf78; Value = 0x15b7b23f0dbb550c; PC = 0x555555555fee *)
mov r12 L0x7fffffffdf78;
(* mov    %r12d,%r11d                              #! PC = 0x555555555ff3 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555ff6 *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%ecx                               #! PC = 0x555555555ffa *)
mov ecx r12;
(* rol    $0xd,%ecx                                #! PC = 0x555555555ffd *)
rol ecx@uint32 ecx 0xd;
(* xor    %r11d,%ecx                               #! PC = 0x555555556000 *)
xor ecx@uint32 ecx r11;
(* shr    $0xa,%r12d                               #! PC = 0x555555556003 *)
split r12 dc r12 0xa;
(* lea    0xd(%rbp),%r11d                          #! PC = 0x555555556007 *)
adds dc r11 ebp 0xd@uint32;
(* and    $0xf,%r11d                               #! PC = 0x55555555600b *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r11d                  #! EA = L0x7fffffffdfa4; Value = 0x9a0abe6fd447e818; PC = 0x55555555600f *)
mov r11 L0x7fffffffdfa4;
(* add    0x70(%rsp,%r10,4),%r11d                  #! EA = L0x7fffffffdf80; Value = 0x56829a8b6a3e6f4f; PC = 0x555555556014 *)
adds dc r11 r11 L0x7fffffffdf80;
(* xor    0x8(%rsp),%r13d                          #! EA = L0x7fffffffdf08; Value = 0x723b19cd0ad05351; PC = 0x555555556019 *)
xor r13@uint32 r13 L0x7fffffffdf08;
(* add    %r11d,%r13d                              #! PC = 0x55555555601e *)
adds dc r13 r13 r11;
(* xor    %r12d,%ecx                               #! PC = 0x555555556021 *)
xor ecx@uint32 ecx r12;
(* add    %ecx,%r13d                               #! PC = 0x555555556024 *)
adds dc r13 r13 ecx;
(* mov    %r13d,0x70(%rsp,%r10,4)                  #! EA = L0x7fffffffdf80; PC = 0x555555556027 *)
mov L0x7fffffffdf80 r13;
(* mov    %esi,%r10d                               #! PC = 0x55555555602c *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x55555555602f *)
ror r10@uint32 r10 0x6;
(* mov    %r10d,%ecx                               #! PC = 0x555555556033 *)
mov ecx r10;
(* mov    %esi,%r10d                               #! PC = 0x555555556036 *)
mov r10 esi;
(* ror    $0xb,%r10d                               #! PC = 0x555555556039 *)
ror r10@uint32 r10 0xb;
(* xor    %ecx,%r10d                               #! PC = 0x55555555603d *)
xor r10@uint32 r10 ecx;
(* mov    %esi,%r12d                               #! PC = 0x555555556040 *)
mov r12 esi;
(* rol    $0x7,%r12d                               #! PC = 0x555555556043 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%r10d                              #! PC = 0x555555556047 *)
xor r10@uint32 r10 r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x55555555604a *)
mov ecx L0x7fffffffdf10;
(* add    0x50(%rcx),%r13d                         #! EA = L0x5555555570f0; Value = 0x4ed8aa4a391c0cb3; PC = 0x55555555604f *)
adds dc r13 r13 L0x5555555570f0;
(* add    %r8d,%r13d                               #! PC = 0x555555556053 *)
adds dc r13 r13 r8;
(* add    %r13d,%r10d                              #! PC = 0x555555556056 *)
adds dc r10 r10 r13;
(* mov    %esi,%r8d                                #! PC = 0x555555556059 *)
mov r8 esi;
(* not    %r8d                                     #! PC = 0x55555555605c *)
not r8@uint32 r8;
(* mov    %r8d,%ecx                                #! PC = 0x55555555605f *)
mov ecx r8;
(* and    %ebx,%ecx                                #! PC = 0x555555556062 *)
and ecx@uint32 ecx ebx;
(* mov    %edi,%r8d                                #! PC = 0x555555556064 *)
mov r8 edi;
(* and    %esi,%r8d                                #! PC = 0x555555556067 *)
and r8@uint32 r8 esi;
(* xor    %r8d,%ecx                                #! PC = 0x55555555606a *)
xor ecx@uint32 ecx r8;
(* add    %r10d,%ecx                               #! PC = 0x55555555606d *)
adds dc ecx ecx r10;
(* mov    %eax,%r8d                                #! PC = 0x555555556070 *)
mov r8 eax;
(* ror    $0x2,%r8d                                #! PC = 0x555555556073 *)
ror r8@uint32 r8 0x2;
(* mov    %eax,%r10d                               #! PC = 0x555555556077 *)
mov r10 eax;
(* ror    $0xd,%r10d                               #! PC = 0x55555555607a *)
ror r10@uint32 r10 0xd;
(* xor    %r8d,%r10d                               #! PC = 0x55555555607e *)
xor r10@uint32 r10 r8;
(* mov    %eax,%r8d                                #! PC = 0x555555556081 *)
mov r8 eax;
(* rol    $0xa,%r8d                                #! PC = 0x555555556084 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%r10d                               #! PC = 0x555555556088 *)
xor r10@uint32 r10 r8;
(* mov    %r14d,%r8d                               #! PC = 0x55555555608b *)
mov r8 r14;
(* xor    %r15d,%r8d                               #! PC = 0x55555555608e *)
xor r8@uint32 r8 r15;
(* and    %eax,%r8d                                #! PC = 0x555555556091 *)
and r8@uint32 r8 eax;
(* mov    %r14d,%r11d                              #! PC = 0x555555556094 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555556097 *)
and r11@uint32 r11 r15;
(* xor    %r11d,%r8d                               #! PC = 0x55555555609a *)
xor r8@uint32 r8 r11;
(* add    %r10d,%r8d                               #! PC = 0x55555555609d *)
adds dc r8 r8 r10;
(* lea    (%rdx,%rcx,1),%r13d                      #! PC = 0x5555555560a0 *)
adds dc r13 edx ecx;
(* lea    (%rcx,%r8,1),%r11d                       #! PC = 0x5555555560a4 *)
adds dc r11 ecx r8;
(* mov    %r11d,0x20(%rsp)                         #! EA = L0x7fffffffdf20; PC = 0x5555555560a8 *)
mov L0x7fffffffdf20 r11;
(* lea    0x6(%rbp),%r8d                           #! PC = 0x5555555560ad *)
adds dc r8 ebp 0x6@uint32;
(* and    $0xf,%r8d                                #! PC = 0x5555555560b1 *)
and r8@uint32 r8 0xf@uint32;
(* mov    0x70(%rsp,%r8,4),%r12d                   #! EA = L0x7fffffffdf88; Value = 0xedcdfecf0fad4c36; PC = 0x5555555560b5 *)
mov r12 L0x7fffffffdf88;
(* mov    %r12d,%edx                               #! PC = 0x5555555560ba *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x5555555560bd *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x5555555560c0 *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x5555555560c3 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x5555555560c6 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x5555555560c9 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x5555555560cc *)
split r12 dc r12 0x3;
(* lea    0x13(%rbp),%edx                          #! PC = 0x5555555560d0 *)
adds dc edx ebp 0x13@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555560d3 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf7c; Value = 0xb98ac4ea15b7b23f; PC = 0x5555555560d6 *)
mov r10 L0x7fffffffdf7c;
(* mov    %r10d,%edx                               #! PC = 0x5555555560db *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555560de *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x5555555560e1 *)
mov ecx edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555560e3 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555560e6 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555560e9 *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%r10d                               #! PC = 0x5555555560eb *)
split r10 dc r10 0xa;
(* mov    0x28(%rsp),%rcx                          #! EA = L0x7fffffffdf28; Value = 0x000000000000000e; PC = 0x5555555560ef *)
mov ecx L0x7fffffffdf28;
(* mov    0x70(%rsp,%rcx,4),%ecx                   #! EA = L0x7fffffffdfa8; Value = 0x60e1eb259a0abe6f; PC = 0x5555555560f4 *)
mov ecx L0x7fffffffdfa8;
(* add    0x70(%rsp,%r9,4),%ecx                    #! EA = L0x7fffffffdf84; Value = 0x0fad4c3656829a8b; PC = 0x5555555560f8 *)
adds dc ecx ecx L0x7fffffffdf84;
(* xor    %r12d,%r11d                              #! PC = 0x5555555560fd *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555556100 *)
adds dc r11 r11 ecx;
(* xor    %r10d,%edx                               #! PC = 0x555555556103 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x555555556106 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r9,4)                   #! EA = L0x7fffffffdf84; PC = 0x555555556109 *)
mov L0x7fffffffdf84 r11;
(* mov    %r13d,%edx                               #! PC = 0x55555555610e *)
mov edx r13;
(* ror    $0x6,%edx                                #! PC = 0x555555556111 *)
ror edx@uint32 edx 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x555555556114 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x555555556117 *)
ror r10@uint32 r10 0xb;
(* mov    %r10d,%ecx                               #! PC = 0x55555555611b *)
mov ecx r10;
(* xor    %edx,%ecx                                #! PC = 0x55555555611e *)
xor ecx@uint32 ecx edx;
(* mov    %r13d,%edx                               #! PC = 0x555555556120 *)
mov edx r13;
(* rol    $0x7,%edx                                #! PC = 0x555555556123 *)
rol edx@uint32 edx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555556126 *)
xor edx@uint32 edx ecx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x555555556128 *)
mov r12 L0x7fffffffdf10;
(* add    0x54(%r12),%r11d                         #! EA = L0x5555555570f4; Value = 0x5b9cca4f4ed8aa4a; PC = 0x55555555612d *)
adds dc r11 r11 L0x5555555570f4;
(* add    %ebx,%r11d                               #! PC = 0x555555556132 *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r11,1),%ecx                       #! PC = 0x555555556135 *)
adds dc ecx edx r11;
(* mov    %r13d,%ebx                               #! PC = 0x555555556139 *)
mov ebx r13;
(* not    %ebx                                     #! PC = 0x55555555613c *)
not ebx@uint32 ebx;
(* and    %edi,%ebx                                #! PC = 0x55555555613e *)
and ebx@uint32 ebx edi;
(* mov    %esi,%edx                                #! PC = 0x555555556140 *)
mov edx esi;
(* and    %r13d,%edx                               #! PC = 0x555555556142 *)
and edx@uint32 edx r13;
(* xor    %ebx,%edx                                #! PC = 0x555555556145 *)
xor edx@uint32 edx ebx;
(* add    %ecx,%edx                                #! PC = 0x555555556147 *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x000000303e3af377; PC = 0x555555556149 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%ebx                               #! PC = 0x55555555614e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555556151 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%ecx                               #! PC = 0x555555556154 *)
mov ecx r11;
(* ror    $0xd,%ecx                                #! PC = 0x555555556157 *)
ror ecx@uint32 ecx 0xd;
(* xor    %ebx,%ecx                                #! PC = 0x55555555615a *)
xor ecx@uint32 ecx ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555615c *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x55555555615f *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%ecx                                #! PC = 0x555555556162 *)
xor ecx@uint32 ecx ebx;
(* mov    %r15d,%ebx                               #! PC = 0x555555556164 *)
mov ebx r15;
(* xor    %eax,%ebx                                #! PC = 0x555555556167 *)
xor ebx@uint32 ebx eax;
(* and    %r11d,%ebx                               #! PC = 0x555555556169 *)
and ebx@uint32 ebx r11;
(* mov    %r15d,%r10d                              #! PC = 0x55555555616c *)
mov r10 r15;
(* and    %eax,%r10d                               #! PC = 0x55555555616f *)
and r10@uint32 r10 eax;
(* xor    %r10d,%ebx                               #! PC = 0x555555556172 *)
xor ebx@uint32 ebx r10;
(* add    %ecx,%ebx                                #! PC = 0x555555556175 *)
adds dc ebx ebx ecx;
(* add    %edx,%r14d                               #! PC = 0x555555556177 *)
adds dc r14 r14 edx;
(* add    %edx,%ebx                                #! PC = 0x55555555617a *)
adds dc ebx ebx edx;
(* lea    0x7(%rbp),%ecx                           #! PC = 0x55555555617c *)
adds dc ecx ebp 0x7@uint32;
(* and    $0xf,%ecx                                #! PC = 0x55555555617f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf8c; Value = 0xeba4eb9fedcdfecf; PC = 0x555555556182 *)
mov r12 L0x7fffffffdf8c;
(* mov    %r12d,%edx                               #! PC = 0x555555556187 *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x55555555618a *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x55555555618d *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x555555556190 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x555555556193 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x555555556196 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x555555556199 *)
split r12 dc r12 0x3;
(* lea    0x14(%rbp),%edx                          #! PC = 0x55555555619d *)
adds dc edx ebp 0x14@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555561a0 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf80; Value = 0x5ed1cf70b98ac4ea; PC = 0x5555555561a3 *)
mov r10 L0x7fffffffdf80;
(* mov    %r10d,%edx                               #! PC = 0x5555555561a8 *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555561ab *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%r9d                                #! PC = 0x5555555561ae *)
mov r9 edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555561b1 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555561b4 *)
rol edx@uint32 edx 0xd;
(* xor    %r9d,%edx                                #! PC = 0x5555555561b7 *)
xor edx@uint32 edx r9;
(* shr    $0xa,%r10d                               #! PC = 0x5555555561ba *)
split r10 dc r10 0xa;
(* mov    0x30(%rsp),%r9                           #! EA = L0x7fffffffdf30; Value = 0x000000000000000f; PC = 0x5555555561be *)
mov r9 L0x7fffffffdf30;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdfac; Value = 0x0000000060e1eb25; PC = 0x5555555561c3 *)
mov r9 L0x7fffffffdfac;
(* add    0x70(%rsp,%r8,4),%r9d                    #! EA = L0x7fffffffdf88; Value = 0xedcdfecf0fad4c36; PC = 0x5555555561c8 *)
adds dc r9 r9 L0x7fffffffdf88;
(* xor    %r12d,%r11d                              #! PC = 0x5555555561cd *)
xor r11@uint32 r11 r12;
(* add    %r9d,%r11d                               #! PC = 0x5555555561d0 *)
adds dc r11 r11 r9;
(* xor    %r10d,%edx                               #! PC = 0x5555555561d3 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x5555555561d6 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r8,4)                   #! EA = L0x7fffffffdf88; PC = 0x5555555561d9 *)
mov L0x7fffffffdf88 r11;
(* mov    %r14d,%edx                               #! PC = 0x5555555561de *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x5555555561e1 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%r8d                               #! PC = 0x5555555561e4 *)
mov r8 r14;
(* ror    $0xb,%r8d                                #! PC = 0x5555555561e7 *)
ror r8@uint32 r8 0xb;
(* xor    %edx,%r8d                                #! PC = 0x5555555561eb *)
xor r8@uint32 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x5555555561ee *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x5555555561f1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r8d                                #! PC = 0x5555555561f4 *)
xor r8@uint32 r8 edx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570a0; PC = 0x5555555561f7 *)
mov r12 L0x7fffffffdf10;
(* add    0x58(%r12),%r11d                         #! EA = L0x5555555570f8; Value = 0x682e6ff35b9cca4f; PC = 0x5555555561fc *)
adds dc r11 r11 L0x5555555570f8;
(* lea    (%r11,%rdi,1),%edx                       #! PC = 0x555555556201 *)
adds dc edx r11 edi;
(* add    %edx,%r8d                                #! PC = 0x555555556205 *)
adds dc r8 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x555555556208 *)
mov edx r14;
(* not    %edx                                     #! PC = 0x55555555620b *)
not edx@uint32 edx;
(* and    %esi,%edx                                #! PC = 0x55555555620d *)
and edx@uint32 edx esi;
(* mov    %r13d,%edi                               #! PC = 0x55555555620f *)
mov edi r13;
(* and    %r14d,%edi                               #! PC = 0x555555556212 *)
and edi@uint32 edi r14;
(* xor    %edi,%edx                                #! PC = 0x555555556215 *)
xor edx@uint32 edx edi;
(* add    %r8d,%edx                                #! PC = 0x555555556217 *)
adds dc edx edx r8;
(* mov    %ebx,%r8d                                #! PC = 0x55555555621a *)
mov r8 ebx;
(* ror    $0x2,%r8d                                #! PC = 0x55555555621d *)
ror r8@uint32 r8 0x2;
(* mov    %ebx,%edi                                #! PC = 0x555555556221 *)
mov edi ebx;
(* ror    $0xd,%edi                                #! PC = 0x555555556223 *)
ror edi@uint32 edi 0xd;
(* xor    %edi,%r8d                                #! PC = 0x555555556226 *)
xor r8@uint32 r8 edi;
(* mov    %ebx,%edi                                #! PC = 0x555555556229 *)
mov edi ebx;
(* rol    $0xa,%edi                                #! PC = 0x55555555622b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%r8d                                #! PC = 0x55555555622e *)
xor r8@uint32 r8 edi;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x000000303e3af377; PC = 0x555555556231 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%edi                               #! PC = 0x555555556236 *)
mov edi r11;
(* xor    %eax,%edi                                #! PC = 0x555555556239 *)
xor edi@uint32 edi eax;
(* and    %ebx,%edi                                #! PC = 0x55555555623b *)
and edi@uint32 edi ebx;
(* mov    %r11d,%r9d                               #! PC = 0x55555555623d *)
mov r9 r11;
(* and    %eax,%r9d                                #! PC = 0x555555556240 *)
and r9@uint32 r9 eax;
(* xor    %r9d,%edi                                #! PC = 0x555555556243 *)
xor edi@uint32 edi r9;
(* add    %r8d,%edi                                #! PC = 0x555555556246 *)
adds dc edi edi r8;
(* add    %edx,%r15d                               #! PC = 0x555555556249 *)
adds dc r15 r15 edx;
(* add    %edx,%edi                                #! PC = 0x55555555624c *)
adds dc edi edi edx;
(* mov    %edi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x55555555624e *)
mov L0x7fffffffdf0c edi;
(* add    $0x8,%ebp                                #! PC = 0x555555556252 *)
adds dc ebp ebp 0x8@uint32;
(* mov    %ebp,%edx                                #! PC = 0x555555556255 *)
mov edx ebp;
(* and    $0xf,%edx                                #! PC = 0x555555556257 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r9d                   #! EA = L0x7fffffffdf90; Value = 0x3db49b6ceba4eb9f; PC = 0x55555555625a *)
mov r9 L0x7fffffffdf90;
(* mov    %r9d,%edi                                #! PC = 0x55555555625f *)
mov edi r9;
(* ror    $0x7,%edi                                #! PC = 0x555555556262 *)
ror edi@uint32 edi 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555556265 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555556268 *)
rol edx@uint32 edx 0xe;
(* xor    %edi,%edx                                #! PC = 0x55555555626b *)
xor edx@uint32 edx edi;
(* shr    $0x3,%r9d                                #! PC = 0x55555555626d *)
split r9 dc r9 0x3;
(* mov    0x24(%rsp),%edi                          #! EA = L0x7fffffffdf24; Value = 0x0000000e00000030; PC = 0x555555556271 *)
mov edi L0x7fffffffdf24;
(* add    $0x15,%edi                               #! PC = 0x555555556275 *)
adds dc edi edi 0x15@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555556278 *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r8d                   #! EA = L0x7fffffffdf84; Value = 0xa9277ff75ed1cf70; PC = 0x55555555627b *)
mov r8 L0x7fffffffdf84;
(* mov    %r8d,%r10d                               #! PC = 0x555555556280 *)
mov r10 r8;
(* rol    $0xf,%r10d                               #! PC = 0x555555556283 *)
rol r10@uint32 r10 0xf;
(* mov    %r8d,%edi                                #! PC = 0x555555556287 *)
mov edi r8;
(* rol    $0xd,%edi                                #! PC = 0x55555555628a *)
rol edi@uint32 edi 0xd;
(* xor    %r10d,%edi                               #! PC = 0x55555555628d *)
xor edi@uint32 edi r10;
(* shr    $0xa,%r8d                                #! PC = 0x555555556290 *)
split r8 dc r8 0xa;
(* xor    %r9d,%edx                                #! PC = 0x555555556294 *)
xor edx@uint32 edx r9;
(* add    0x70(%rsp,%rcx,4),%edx                   #! EA = L0x7fffffffdf8c; Value = 0xeba4eb9fedcdfecf; PC = 0x555555556297 *)
adds dc edx edx L0x7fffffffdf8c;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffdf18; Value = 0x0000000000000000; PC = 0x55555555629b *)
mov r9 L0x7fffffffdf18;
(* add    0x70(%rsp,%r9,4),%edx                    #! EA = L0x7fffffffdf70; Value = 0x12f2993c525d105f; PC = 0x5555555562a0 *)
adds dc edx edx L0x7fffffffdf70;
(* xor    %r8d,%edi                                #! PC = 0x5555555562a5 *)
xor edi@uint32 edi r8;
(* add    %edx,%edi                                #! PC = 0x5555555562a8 *)
adds dc edi edi edx;
(* mov    %edi,0x70(%rsp,%rcx,4)                   #! EA = L0x7fffffffdf8c; PC = 0x5555555562aa *)
mov L0x7fffffffdf8c edi;
(* mov    %r15d,%edx                               #! PC = 0x5555555562ae *)
mov edx r15;
(* ror    $0x6,%edx                                #! PC = 0x5555555562b1 *)
ror edx@uint32 edx 0x6;
(* mov    %edx,%ecx                                #! PC = 0x5555555562b4 *)
mov ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562b6 *)
mov edx r15;
(* ror    $0xb,%edx                                #! PC = 0x5555555562b9 *)
ror edx@uint32 edx 0xb;
(* xor    %edx,%ecx                                #! PC = 0x5555555562bc *)
xor ecx@uint32 ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562be *)
mov edx r15;
(* rol    $0x7,%edx                                #! PC = 0x5555555562c1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%ecx                                #! PC = 0x5555555562c4 *)
xor ecx@uint32 ecx edx;
(* add    0x5c(%r12),%edi                          #! EA = L0x5555555570fc; Value = 0x748f82ee682e6ff3; PC = 0x5555555562c6 *)
adds dc edi edi L0x5555555570fc;
(* add    %esi,%edi                                #! PC = 0x5555555562cb *)
adds dc edi edi esi;
(* add    %ecx,%edi                                #! PC = 0x5555555562cd *)
adds dc edi edi ecx;
(* mov    %r15d,%esi                               #! PC = 0x5555555562cf *)
mov esi r15;
(* not    %esi                                     #! PC = 0x5555555562d2 *)
not esi@uint32 esi;
(* and    %r13d,%esi                               #! PC = 0x5555555562d4 *)
and esi@uint32 esi r13;
(* mov    %r14d,%edx                               #! PC = 0x5555555562d7 *)
mov edx r14;
(* and    %r15d,%edx                               #! PC = 0x5555555562da *)
and edx@uint32 edx r15;
(* xor    %edx,%esi                                #! PC = 0x5555555562dd *)
xor esi@uint32 esi edx;
(* add    %esi,%edi                                #! PC = 0x5555555562df *)
adds dc edi edi esi;
(* mov    0xc(%rsp),%ecx                           #! EA = L0x7fffffffdf0c; Value = 0x555570a0554e87fe; PC = 0x5555555562e1 *)
mov ecx L0x7fffffffdf0c;
(* mov    %ecx,%esi                                #! PC = 0x5555555562e5 *)
mov esi ecx;
(* ror    $0x2,%esi                                #! PC = 0x5555555562e7 *)
ror esi@uint32 esi 0x2;
(* mov    %ecx,%edx                                #! PC = 0x5555555562ea *)
mov edx ecx;
(* ror    $0xd,%edx                                #! PC = 0x5555555562ec *)
ror edx@uint32 edx 0xd;
(* xor    %edx,%esi                                #! PC = 0x5555555562ef *)
xor esi@uint32 esi edx;
(* mov    %ecx,%edx                                #! PC = 0x5555555562f1 *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x5555555562f3 *)
rol edx@uint32 edx 0xa;
(* xor    %esi,%edx                                #! PC = 0x5555555562f6 *)
xor edx@uint32 edx esi;
(* mov    %r11d,%esi                               #! PC = 0x5555555562f8 *)
mov esi r11;
(* xor    %ebx,%esi                                #! PC = 0x5555555562fb *)
xor esi@uint32 esi ebx;
(* and    %ecx,%esi                                #! PC = 0x5555555562fd *)
and esi@uint32 esi ecx;
(* and    %ebx,%r11d                               #! PC = 0x5555555562ff *)
and r11@uint32 r11 ebx;
(* xor    %r11d,%esi                               #! PC = 0x555555556302 *)
xor esi@uint32 esi r11;
(* add    %edx,%esi                                #! PC = 0x555555556305 *)
adds dc esi esi edx;
(* add    %edi,%eax                                #! PC = 0x555555556307 *)
adds dc eax eax edi;
(* add    %edi,%esi                                #! PC = 0x555555556309 *)
adds dc esi esi edi;
(* mov    %esi,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x55555555630b *)
mov L0x7fffffffdf08 esi;
(* add    $0x20,%r12                               #! PC = 0x55555555630f *)
adds dc r12 r12 0x20@uint32;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555556313 *)
mov L0x7fffffffdf10 r12;
(* cmp    $0x40,%ebp                               #! PC = 0x555555556318 *)
(* cmp 0x40, ebp *)
nop;
(* #jne    0x555555555c2b <sha256_block_data_order+2669>#! PC = 0x55555555631b *)
#jne    0x555555555c2b <sha256_block_data_order+2669>#! 0x55555555631b = 0x55555555631b;
(* mov    %ebp,0x24(%rsp)                          #! EA = L0x7fffffffdf24; PC = 0x555555555c2b *)
mov L0x7fffffffdf24 ebp;
(* lea    0x1(%rbp),%esi                           #! PC = 0x555555555c2f *)
adds dc esi ebp 0x1@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555c32 *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf94; Value = 0x826409243db49b6c; PC = 0x555555555c35 *)
mov r9 L0x7fffffffdf94;
(* mov    %r9d,%r8d                                #! PC = 0x555555555c3a *)
mov r8 r9;
(* ror    $0x7,%r8d                                #! PC = 0x555555555c3d *)
ror r8@uint32 r8 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555555c41 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555555c44 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r8d                                #! PC = 0x555555555c47 *)
xor r8@uint32 r8 edx;
(* shr    $0x3,%r9d                                #! PC = 0x555555555c4a *)
split r9 dc r9 0x3;
(* lea    0xe(%rbp),%edx                           #! PC = 0x555555555c4e *)
adds dc edx ebp 0xe@uint32;
(* mov    %edx,%edi                                #! PC = 0x555555555c51 *)
mov edi edx;
(* and    $0xf,%edi                                #! PC = 0x555555555c53 *)
and edi@uint32 edi 0xf@uint32;
(* mov    %rdi,0x28(%rsp)                          #! EA = L0x7fffffffdf28; PC = 0x555555555c56 *)
mov L0x7fffffffdf28 edi;
(* mov    0x70(%rsp,%rdi,4),%edi                   #! EA = L0x7fffffffdf88; Value = 0x36b0ce3ca9277ff7; PC = 0x555555555c5b *)
mov edi L0x7fffffffdf88;
(* mov    %edi,%edx                                #! PC = 0x555555555c5f *)
mov edx edi;
(* rol    $0xf,%edx                                #! PC = 0x555555555c61 *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x555555555c64 *)
mov ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555c66 *)
mov edx edi;
(* rol    $0xd,%edx                                #! PC = 0x555555555c68 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x555555555c6b *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%edi                                #! PC = 0x555555555c6d *)
split edi dc edi 0xa;
(* lea    0x9(%rbp),%ecx                           #! PC = 0x555555555c70 *)
adds dc ecx ebp 0x9@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555c73 *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    %ebp,%r11d                               #! PC = 0x555555555c76 *)
mov r11 ebp;
(* and    $0xf,%r11d                               #! PC = 0x555555555c79 *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r10d                  #! EA = L0x7fffffffdf90; Value = 0x3db49b6ceba4eb9f; PC = 0x555555555c7d *)
mov r10 L0x7fffffffdf90;
(* add    0x70(%rsp,%rcx,4),%r10d                  #! EA = L0x7fffffffdf74; Value = 0x0dbb550c12f2993c; PC = 0x555555555c82 *)
adds dc r10 r10 L0x7fffffffdf74;
(* xor    %r9d,%r8d                                #! PC = 0x555555555c87 *)
xor r8@uint32 r8 r9;
(* add    %r10d,%r8d                               #! PC = 0x555555555c8a *)
adds dc r8 r8 r10;
(* xor    %edx,%edi                                #! PC = 0x555555555c8d *)
xor edi@uint32 edi edx;
(* add    %r8d,%edi                                #! PC = 0x555555555c8f *)
adds dc edi edi r8;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffdf18; PC = 0x555555555c92 *)
mov L0x7fffffffdf18 r11;
(* mov    %edi,0x70(%rsp,%r11,4)                   #! EA = L0x7fffffffdf90; PC = 0x555555555c97 *)
mov L0x7fffffffdf90 edi;
(* mov    %eax,%edx                                #! PC = 0x555555555c9c *)
mov edx eax;
(* ror    $0x6,%edx                                #! PC = 0x555555555c9e *)
ror edx@uint32 edx 0x6;
(* mov    %eax,%r10d                               #! PC = 0x555555555ca1 *)
mov r10 eax;
(* ror    $0xb,%r10d                               #! PC = 0x555555555ca4 *)
ror r10@uint32 r10 0xb;
(* xor    %edx,%r10d                               #! PC = 0x555555555ca8 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cab *)
mov edx eax;
(* rol    $0x7,%edx                                #! PC = 0x555555555cad *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r10d                               #! PC = 0x555555555cb0 *)
xor r10@uint32 r10 edx;
(* mov    %eax,%edx                                #! PC = 0x555555555cb3 *)
mov edx eax;
(* not    %edx                                     #! PC = 0x555555555cb5 *)
not edx@uint32 edx;
(* and    %r14d,%edx                               #! PC = 0x555555555cb7 *)
and edx@uint32 edx r14;
(* mov    %eax,%ecx                                #! PC = 0x555555555cba *)
mov ecx eax;
(* and    %r15d,%ecx                               #! PC = 0x555555555cbc *)
and ecx@uint32 ecx r15;
(* xor    %ecx,%edx                                #! PC = 0x555555555cbf *)
xor edx@uint32 edx ecx;
(* add    %r10d,%edx                               #! PC = 0x555555555cc1 *)
adds dc edx edx r10;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x555555555cc4 *)
mov ecx L0x7fffffffdf10;
(* add    0x40(%rcx),%edx                          #! EA = L0x555555557100; Value = 0x78a5636f748f82ee; PC = 0x555555555cc9 *)
adds dc edx edx L0x555555557100;
(* add    %edi,%edx                                #! PC = 0x555555555ccc *)
adds dc edx edx edi;
(* add    %edx,%r13d                               #! PC = 0x555555555cce *)
adds dc r13 r13 edx;
(* mov    0x8(%rsp),%edi                           #! EA = L0x7fffffffdf08; Value = 0x554e87fe7b5724e0; PC = 0x555555555cd1 *)
mov edi L0x7fffffffdf08;
(* mov    %edi,%edx                                #! PC = 0x555555555cd5 *)
mov edx edi;
(* ror    $0x2,%edx                                #! PC = 0x555555555cd7 *)
ror edx@uint32 edx 0x2;
(* mov    %edi,%ecx                                #! PC = 0x555555555cda *)
mov ecx edi;
(* ror    $0xd,%ecx                                #! PC = 0x555555555cdc *)
ror ecx@uint32 ecx 0xd;
(* xor    %edx,%ecx                                #! PC = 0x555555555cdf *)
xor ecx@uint32 ecx edx;
(* mov    %edi,%edx                                #! PC = 0x555555555ce1 *)
mov edx edi;
(* rol    $0xa,%edx                                #! PC = 0x555555555ce3 *)
rol edx@uint32 edx 0xa;
(* xor    %edx,%ecx                                #! PC = 0x555555555ce6 *)
xor ecx@uint32 ecx edx;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570c0554e87fe; PC = 0x555555555ce8 *)
mov r10 L0x7fffffffdf0c;
(* mov    %r10d,%edx                               #! PC = 0x555555555ced *)
mov edx r10;
(* xor    %ebx,%edx                                #! PC = 0x555555555cf0 *)
xor edx@uint32 edx ebx;
(* and    %edi,%edx                                #! PC = 0x555555555cf2 *)
and edx@uint32 edx edi;
(* mov    %r10d,%edi                               #! PC = 0x555555555cf4 *)
mov edi r10;
(* and    %ebx,%edi                                #! PC = 0x555555555cf7 *)
and edi@uint32 edi ebx;
(* xor    %edi,%edx                                #! PC = 0x555555555cf9 *)
xor edx@uint32 edx edi;
(* add    %ecx,%edx                                #! PC = 0x555555555cfb *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x000000383e3af377; PC = 0x555555555cfd *)
mov r8 L0x7fffffffdf20;
(* add    %r13d,%r8d                               #! PC = 0x555555555d02 *)
adds dc r8 r8 r13;
(* add    %r13d,%edx                               #! PC = 0x555555555d05 *)
adds dc edx edx r13;
(* lea    0x2(%rbp),%edi                           #! PC = 0x555555555d08 *)
adds dc edi ebp 0x2@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555555d0b *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r12d                  #! EA = L0x7fffffffdf98; Value = 0xbcb1e18182640924; PC = 0x555555555d0e *)
mov r12 L0x7fffffffdf98;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d13 *)
mov r13 r12;
(* ror    $0x7,%r13d                               #! PC = 0x555555555d16 *)
ror r13@uint32 r13 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555d1a *)
mov r11 r13;
(* mov    %r12d,%r13d                              #! PC = 0x555555555d1d *)
mov r13 r12;
(* rol    $0xe,%r13d                               #! PC = 0x555555555d20 *)
rol r13@uint32 r13 0xe;
(* xor    %r13d,%r11d                              #! PC = 0x555555555d24 *)
xor r11@uint32 r11 r13;
(* shr    $0x3,%r12d                               #! PC = 0x555555555d27 *)
split r12 dc r12 0x3;
(* lea    0xf(%rbp),%ecx                           #! PC = 0x555555555d2b *)
adds dc ecx ebp 0xf@uint32;
(* mov    %ecx,%r13d                               #! PC = 0x555555555d2e *)
mov r13 ecx;
(* and    $0xf,%r13d                               #! PC = 0x555555555d31 *)
and r13@uint32 r13 0xf@uint32;
(* mov    %r13,0x30(%rsp)                          #! EA = L0x7fffffffdf30; PC = 0x555555555d35 *)
mov L0x7fffffffdf30 r13;
(* mov    0x70(%rsp,%r13,4),%r10d                  #! EA = L0x7fffffffdf8c; Value = 0x47dde27936b0ce3c; PC = 0x555555555d3a *)
mov r10 L0x7fffffffdf8c;
(* mov    %r10d,%r9d                               #! PC = 0x555555555d3f *)
mov r9 r10;
(* rol    $0xf,%r9d                                #! PC = 0x555555555d42 *)
rol r9@uint32 r9 0xf;
(* mov    %r10d,%ecx                               #! PC = 0x555555555d46 *)
mov ecx r10;
(* rol    $0xd,%ecx                                #! PC = 0x555555555d49 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555d4c *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r10d                               #! PC = 0x555555555d4f *)
split r10 dc r10 0xa;
(* lea    0xa(%rbp),%r9d                           #! PC = 0x555555555d53 *)
adds dc r9 ebp 0xa@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555d57 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r13d                  #! EA = L0x7fffffffdf94; Value = 0x826409243db49b6c; PC = 0x555555555d5b *)
mov r13 L0x7fffffffdf94;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf78; Value = 0x15b7b23f0dbb550c; PC = 0x555555555d60 *)
adds dc r13 r13 L0x7fffffffdf78;
(* xor    %r12d,%r11d                              #! PC = 0x555555555d65 *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555d68 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555d6b *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555d6e *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf94; PC = 0x555555555d71 *)
mov L0x7fffffffdf94 r11;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d76 *)
mov r12 r8;
(* ror    $0x6,%r12d                               #! PC = 0x555555555d79 *)
ror r12@uint32 r12 0x6;
(* mov    %r8d,%esi                                #! PC = 0x555555555d7d *)
mov esi r8;
(* ror    $0xb,%esi                                #! PC = 0x555555555d80 *)
ror esi@uint32 esi 0xb;
(* xor    %r12d,%esi                               #! PC = 0x555555555d83 *)
xor esi@uint32 esi r12;
(* mov    %r8d,%r12d                               #! PC = 0x555555555d86 *)
mov r12 r8;
(* rol    $0x7,%r12d                               #! PC = 0x555555555d89 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%esi                               #! PC = 0x555555555d8d *)
xor esi@uint32 esi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x555555555d90 *)
mov ecx L0x7fffffffdf10;
(* add    0x44(%rcx),%r14d                         #! EA = L0x555555557104; Value = 0x84c8781478a5636f; PC = 0x555555555d95 *)
adds dc r14 r14 L0x555555557104;
(* add    %r14d,%r11d                              #! PC = 0x555555555d99 *)
adds dc r11 r11 r14;
(* lea    (%rsi,%r11,1),%ecx                       #! PC = 0x555555555d9c *)
adds dc ecx esi r11;
(* mov    %r8d,%r14d                               #! PC = 0x555555555da0 *)
mov r14 r8;
(* not    %r14d                                    #! PC = 0x555555555da3 *)
not r14@uint32 r14;
(* mov    %r14d,%r11d                              #! PC = 0x555555555da6 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555555da9 *)
and r11@uint32 r11 r15;
(* mov    %r8d,%r14d                               #! PC = 0x555555555dac *)
mov r14 r8;
(* and    %eax,%r14d                               #! PC = 0x555555555daf *)
and r14@uint32 r14 eax;
(* xor    %r14d,%r11d                              #! PC = 0x555555555db2 *)
xor r11@uint32 r11 r14;
(* add    %ecx,%r11d                               #! PC = 0x555555555db5 *)
adds dc r11 r11 ecx;
(* mov    %edx,%r14d                               #! PC = 0x555555555db8 *)
mov r14 edx;
(* ror    $0x2,%r14d                               #! PC = 0x555555555dbb *)
ror r14@uint32 r14 0x2;
(* mov    %edx,%r12d                               #! PC = 0x555555555dbf *)
mov r12 edx;
(* ror    $0xd,%r12d                               #! PC = 0x555555555dc2 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%ecx                               #! PC = 0x555555555dc6 *)
mov ecx r12;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dc9 *)
xor ecx@uint32 ecx r14;
(* mov    %edx,%r14d                               #! PC = 0x555555555dcc *)
mov r14 edx;
(* rol    $0xa,%r14d                               #! PC = 0x555555555dcf *)
rol r14@uint32 r14 0xa;
(* xor    %r14d,%ecx                               #! PC = 0x555555555dd3 *)
xor ecx@uint32 ecx r14;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x554e87fe7b5724e0; PC = 0x555555555dd6 *)
mov esi L0x7fffffffdf08;
(* mov    %esi,%r14d                               #! PC = 0x555555555dda *)
mov r14 esi;
(* mov    0xc(%rsp),%r10d                          #! EA = L0x7fffffffdf0c; Value = 0x555570c0554e87fe; PC = 0x555555555ddd *)
mov r10 L0x7fffffffdf0c;
(* xor    %r10d,%r14d                              #! PC = 0x555555555de2 *)
xor r14@uint32 r14 r10;
(* and    %edx,%r14d                               #! PC = 0x555555555de5 *)
and r14@uint32 r14 edx;
(* and    %r10d,%esi                               #! PC = 0x555555555de8 *)
and esi@uint32 esi r10;
(* xor    %esi,%r14d                               #! PC = 0x555555555deb *)
xor r14@uint32 r14 esi;
(* add    %ecx,%r14d                               #! PC = 0x555555555dee *)
adds dc r14 r14 ecx;
(* add    %r11d,%ebx                               #! PC = 0x555555555df1 *)
adds dc ebx ebx r11;
(* add    %r11d,%r14d                              #! PC = 0x555555555df4 *)
adds dc r14 r14 r11;
(* lea    0x3(%rbp),%esi                           #! PC = 0x555555555df7 *)
adds dc esi ebp 0x3@uint32;
(* and    $0xf,%esi                                #! PC = 0x555555555dfa *)
and esi@uint32 esi 0xf@uint32;
(* mov    0x70(%rsp,%rsi,4),%r10d                  #! EA = L0x7fffffffdf9c; Value = 0x854c3d24bcb1e181; PC = 0x555555555dfd *)
mov r10 L0x7fffffffdf9c;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e02 *)
mov r12 r10;
(* ror    $0x7,%r12d                               #! PC = 0x555555555e05 *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e09 *)
mov r9 r12;
(* mov    %r10d,%r12d                              #! PC = 0x555555555e0c *)
mov r12 r10;
(* rol    $0xe,%r12d                               #! PC = 0x555555555e0f *)
rol r12@uint32 r12 0xe;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e13 *)
mov ecx r12;
(* xor    %r9d,%ecx                                #! PC = 0x555555555e16 *)
xor ecx@uint32 ecx r9;
(* shr    $0x3,%r10d                               #! PC = 0x555555555e19 *)
split r10 dc r10 0x3;
(* mov    0x18(%rsp),%r11                          #! EA = L0x7fffffffdf18; Value = 0x0000000000000008; PC = 0x555555555e1d *)
mov r11 L0x7fffffffdf18;
(* mov    0x70(%rsp,%r11,4),%r12d                  #! EA = L0x7fffffffdf90; Value = 0x25458be447dde279; PC = 0x555555555e22 *)
mov r12 L0x7fffffffdf90;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e27 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555e2a *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%r9d                               #! PC = 0x555555555e2e *)
mov r9 r12;
(* rol    $0xd,%r9d                                #! PC = 0x555555555e31 *)
rol r9@uint32 r9 0xd;
(* xor    %r9d,%r11d                               #! PC = 0x555555555e35 *)
xor r11@uint32 r11 r9;
(* shr    $0xa,%r12d                               #! PC = 0x555555555e38 *)
split r12 dc r12 0xa;
(* lea    0xb(%rbp),%r9d                           #! PC = 0x555555555e3c *)
adds dc r9 ebp 0xb@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555e40 *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r13d                  #! EA = L0x7fffffffdf98; Value = 0xbcb1e18182640924; PC = 0x555555555e44 *)
mov r13 L0x7fffffffdf98;
(* add    0x70(%rsp,%r9,4),%r13d                   #! EA = L0x7fffffffdf7c; Value = 0xb98ac4ea15b7b23f; PC = 0x555555555e49 *)
adds dc r13 r13 L0x7fffffffdf7c;
(* xor    %r12d,%r11d                              #! PC = 0x555555555e4e *)
xor r11@uint32 r11 r12;
(* add    %r13d,%r11d                              #! PC = 0x555555555e51 *)
adds dc r11 r11 r13;
(* xor    %r10d,%ecx                               #! PC = 0x555555555e54 *)
xor ecx@uint32 ecx r10;
(* add    %ecx,%r11d                               #! PC = 0x555555555e57 *)
adds dc r11 r11 ecx;
(* mov    %r11d,0x70(%rsp,%rdi,4)                  #! EA = L0x7fffffffdf98; PC = 0x555555555e5a *)
mov L0x7fffffffdf98 r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e5f *)
mov r12 ebx;
(* ror    $0x6,%r12d                               #! PC = 0x555555555e62 *)
ror r12@uint32 r12 0x6;
(* mov    %r12d,%ecx                               #! PC = 0x555555555e66 *)
mov ecx r12;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e69 *)
mov r12 ebx;
(* ror    $0xb,%r12d                               #! PC = 0x555555555e6c *)
ror r12@uint32 r12 0xb;
(* mov    %r12d,%edi                               #! PC = 0x555555555e70 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555e73 *)
xor edi@uint32 edi ecx;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e75 *)
mov r12 ebx;
(* rol    $0x7,%r12d                               #! PC = 0x555555555e78 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%edi                               #! PC = 0x555555555e7c *)
xor edi@uint32 edi r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x555555555e7f *)
mov ecx L0x7fffffffdf10;
(* add    0x48(%rcx),%r15d                         #! EA = L0x555555557108; Value = 0x8cc7020884c87814; PC = 0x555555555e84 *)
adds dc r15 r15 L0x555555557108;
(* add    %r15d,%r11d                              #! PC = 0x555555555e88 *)
adds dc r11 r11 r15;
(* lea    (%rdi,%r11,1),%ecx                       #! PC = 0x555555555e8b *)
adds dc ecx edi r11;
(* mov    %ebx,%r12d                               #! PC = 0x555555555e8f *)
mov r12 ebx;
(* not    %r12d                                    #! PC = 0x555555555e92 *)
not r12@uint32 r12;
(* mov    %r12d,%r11d                              #! PC = 0x555555555e95 *)
mov r11 r12;
(* and    %eax,%r11d                               #! PC = 0x555555555e98 *)
and r11@uint32 r11 eax;
(* mov    %r8d,%r12d                               #! PC = 0x555555555e9b *)
mov r12 r8;
(* and    %ebx,%r12d                               #! PC = 0x555555555e9e *)
and r12@uint32 r12 ebx;
(* xor    %r12d,%r11d                              #! PC = 0x555555555ea1 *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555555ea4 *)
adds dc r11 r11 ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ea7 *)
mov r12 r14;
(* ror    $0x2,%r12d                               #! PC = 0x555555555eaa *)
ror r12@uint32 r12 0x2;
(* mov    %r12d,%ecx                               #! PC = 0x555555555eae *)
mov ecx r12;
(* mov    %r14d,%r12d                              #! PC = 0x555555555eb1 *)
mov r12 r14;
(* ror    $0xd,%r12d                               #! PC = 0x555555555eb4 *)
ror r12@uint32 r12 0xd;
(* mov    %r12d,%edi                               #! PC = 0x555555555eb8 *)
mov edi r12;
(* xor    %ecx,%edi                                #! PC = 0x555555555ebb *)
xor edi@uint32 edi ecx;
(* mov    %r14d,%r12d                              #! PC = 0x555555555ebd *)
mov r12 r14;
(* rol    $0xa,%r12d                               #! PC = 0x555555555ec0 *)
rol r12@uint32 r12 0xa;
(* xor    %r12d,%edi                               #! PC = 0x555555555ec4 *)
xor edi@uint32 edi r12;
(* mov    0x8(%rsp),%r15d                          #! EA = L0x7fffffffdf08; Value = 0x554e87fe7b5724e0; PC = 0x555555555ec7 *)
mov r15 L0x7fffffffdf08;
(* mov    %r15d,%ecx                               #! PC = 0x555555555ecc *)
mov ecx r15;
(* xor    %edx,%ecx                                #! PC = 0x555555555ecf *)
xor ecx@uint32 ecx edx;
(* and    %r14d,%ecx                               #! PC = 0x555555555ed1 *)
and ecx@uint32 ecx r14;
(* mov    %r15d,%r9d                               #! PC = 0x555555555ed4 *)
mov r9 r15;
(* and    %edx,%r9d                                #! PC = 0x555555555ed7 *)
and r9@uint32 r9 edx;
(* xor    %r9d,%ecx                                #! PC = 0x555555555eda *)
xor ecx@uint32 ecx r9;
(* add    %edi,%ecx                                #! PC = 0x555555555edd *)
adds dc ecx ecx edi;
(* mov    0xc(%rsp),%edi                           #! EA = L0x7fffffffdf0c; Value = 0x555570c0554e87fe; PC = 0x555555555edf *)
mov edi L0x7fffffffdf0c;
(* add    %r11d,%edi                               #! PC = 0x555555555ee3 *)
adds dc edi edi r11;
(* lea    (%r11,%rcx,1),%r15d                      #! PC = 0x555555555ee6 *)
adds dc r15 r11 ecx;
(* lea    0x4(%rbp),%r10d                          #! PC = 0x555555555eea *)
adds dc r10 ebp 0x4@uint32;
(* and    $0xf,%r10d                               #! PC = 0x555555555eee *)
and r10@uint32 r10 0xf@uint32;
(* mov    0x70(%rsp,%r10,4),%r13d                  #! EA = L0x7fffffffdfa0; Value = 0xd447e818854c3d24; PC = 0x555555555ef2 *)
mov r13 L0x7fffffffdfa0;
(* mov    %r13d,%r12d                              #! PC = 0x555555555ef7 *)
mov r12 r13;
(* ror    $0x7,%r12d                               #! PC = 0x555555555efa *)
ror r12@uint32 r12 0x7;
(* mov    %r13d,%r11d                              #! PC = 0x555555555efe *)
mov r11 r13;
(* rol    $0xe,%r11d                               #! PC = 0x555555555f01 *)
rol r11@uint32 r11 0xe;
(* xor    %r11d,%r12d                              #! PC = 0x555555555f05 *)
xor r12@uint32 r12 r11;
(* shr    $0x3,%r13d                               #! PC = 0x555555555f08 *)
split r13 dc r13 0x3;
(* lea    0x11(%rbp),%ecx                          #! PC = 0x555555555f0c *)
adds dc ecx ebp 0x11@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555f0f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r11d                  #! EA = L0x7fffffffdf94; Value = 0x520d68af25458be4; PC = 0x555555555f12 *)
mov r11 L0x7fffffffdf94;
(* mov    %r11d,%r9d                               #! PC = 0x555555555f17 *)
mov r9 r11;
(* rol    $0xf,%r9d                                #! PC = 0x555555555f1a *)
rol r9@uint32 r9 0xf;
(* mov    %r11d,%ecx                               #! PC = 0x555555555f1e *)
mov ecx r11;
(* rol    $0xd,%ecx                                #! PC = 0x555555555f21 *)
rol ecx@uint32 ecx 0xd;
(* xor    %r9d,%ecx                                #! PC = 0x555555555f24 *)
xor ecx@uint32 ecx r9;
(* shr    $0xa,%r11d                               #! PC = 0x555555555f27 *)
split r11 dc r11 0xa;
(* lea    0xc(%rbp),%r9d                           #! PC = 0x555555555f2b *)
adds dc r9 ebp 0xc@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555f2f *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdf80; Value = 0x5ed1cf70b98ac4ea; PC = 0x555555555f33 *)
mov r9 L0x7fffffffdf80;
(* add    0x70(%rsp,%rsi,4),%r9d                   #! EA = L0x7fffffffdf9c; Value = 0x854c3d24bcb1e181; PC = 0x555555555f38 *)
adds dc r9 r9 L0x7fffffffdf9c;
(* xor    %r13d,%r12d                              #! PC = 0x555555555f3d *)
xor r12@uint32 r12 r13;
(* add    %r9d,%r12d                               #! PC = 0x555555555f40 *)
adds dc r12 r12 r9;
(* xor    %r11d,%ecx                               #! PC = 0x555555555f43 *)
xor ecx@uint32 ecx r11;
(* add    %ecx,%r12d                               #! PC = 0x555555555f46 *)
adds dc r12 r12 ecx;
(* mov    %r12d,0x70(%rsp,%rsi,4)                  #! EA = L0x7fffffffdf9c; PC = 0x555555555f49 *)
mov L0x7fffffffdf9c r12;
(* mov    %edi,%esi                                #! PC = 0x555555555f4e *)
mov esi edi;
(* ror    $0x6,%esi                                #! PC = 0x555555555f50 *)
ror esi@uint32 esi 0x6;
(* mov    %esi,%ecx                                #! PC = 0x555555555f53 *)
mov ecx esi;
(* mov    %edi,%esi                                #! PC = 0x555555555f55 *)
mov esi edi;
(* ror    $0xb,%esi                                #! PC = 0x555555555f57 *)
ror esi@uint32 esi 0xb;
(* xor    %ecx,%esi                                #! PC = 0x555555555f5a *)
xor esi@uint32 esi ecx;
(* mov    %edi,%r11d                               #! PC = 0x555555555f5c *)
mov r11 edi;
(* rol    $0x7,%r11d                               #! PC = 0x555555555f5f *)
rol r11@uint32 r11 0x7;
(* xor    %r11d,%esi                               #! PC = 0x555555555f63 *)
xor esi@uint32 esi r11;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x555555555f66 *)
mov ecx L0x7fffffffdf10;
(* add    0x4c(%rcx),%eax                          #! EA = L0x55555555710c; Value = 0x90befffa8cc70208; PC = 0x555555555f6b *)
adds dc eax eax L0x55555555710c;
(* add    %eax,%r12d                               #! PC = 0x555555555f6e *)
adds dc r12 r12 eax;
(* lea    (%rsi,%r12,1),%ecx                       #! PC = 0x555555555f71 *)
adds dc ecx esi r12;
(* mov    %edi,%r12d                               #! PC = 0x555555555f75 *)
mov r12 edi;
(* not    %r12d                                    #! PC = 0x555555555f78 *)
not r12@uint32 r12;
(* and    %r8d,%r12d                               #! PC = 0x555555555f7b *)
and r12@uint32 r12 r8;
(* mov    %ebx,%eax                                #! PC = 0x555555555f7e *)
mov eax ebx;
(* and    %edi,%eax                                #! PC = 0x555555555f80 *)
and eax@uint32 eax edi;
(* xor    %eax,%r12d                               #! PC = 0x555555555f82 *)
xor r12@uint32 r12 eax;
(* add    %ecx,%r12d                               #! PC = 0x555555555f85 *)
adds dc r12 r12 ecx;
(* mov    %r15d,%eax                               #! PC = 0x555555555f88 *)
mov eax r15;
(* ror    $0x2,%eax                                #! PC = 0x555555555f8b *)
ror eax@uint32 eax 0x2;
(* mov    %r15d,%esi                               #! PC = 0x555555555f8e *)
mov esi r15;
(* ror    $0xd,%esi                                #! PC = 0x555555555f91 *)
ror esi@uint32 esi 0xd;
(* mov    %esi,%ecx                                #! PC = 0x555555555f94 *)
mov ecx esi;
(* xor    %eax,%ecx                                #! PC = 0x555555555f96 *)
xor ecx@uint32 ecx eax;
(* mov    %r15d,%eax                               #! PC = 0x555555555f98 *)
mov eax r15;
(* rol    $0xa,%eax                                #! PC = 0x555555555f9b *)
rol eax@uint32 eax 0xa;
(* xor    %eax,%ecx                                #! PC = 0x555555555f9e *)
xor ecx@uint32 ecx eax;
(* mov    %edx,%eax                                #! PC = 0x555555555fa0 *)
mov eax edx;
(* xor    %r14d,%eax                               #! PC = 0x555555555fa2 *)
xor eax@uint32 eax r14;
(* and    %r15d,%eax                               #! PC = 0x555555555fa5 *)
and eax@uint32 eax r15;
(* mov    %edx,%esi                                #! PC = 0x555555555fa8 *)
mov esi edx;
(* and    %r14d,%esi                               #! PC = 0x555555555faa *)
and esi@uint32 esi r14;
(* xor    %esi,%eax                                #! PC = 0x555555555fad *)
xor eax@uint32 eax esi;
(* add    %ecx,%eax                                #! PC = 0x555555555faf *)
adds dc eax eax ecx;
(* mov    0x8(%rsp),%esi                           #! EA = L0x7fffffffdf08; Value = 0x554e87fe7b5724e0; PC = 0x555555555fb1 *)
mov esi L0x7fffffffdf08;
(* add    %r12d,%esi                               #! PC = 0x555555555fb5 *)
adds dc esi esi r12;
(* add    %r12d,%eax                               #! PC = 0x555555555fb8 *)
adds dc eax eax r12;
(* lea    0x5(%rbp),%r9d                           #! PC = 0x555555555fbb *)
adds dc r9 ebp 0x5@uint32;
(* and    $0xf,%r9d                                #! PC = 0x555555555fbf *)
and r9@uint32 r9 0xf@uint32;
(* mov    0x70(%rsp,%r9,4),%r11d                   #! EA = L0x7fffffffdfa4; Value = 0x9a0abe6fd447e818; PC = 0x555555555fc3 *)
mov r11 L0x7fffffffdfa4;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fc8 *)
mov r12 r11;
(* ror    $0x7,%r12d                               #! PC = 0x555555555fcb *)
ror r12@uint32 r12 0x7;
(* mov    %r12d,%r13d                              #! PC = 0x555555555fcf *)
mov r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fd2 *)
mov r12 r11;
(* rol    $0xe,%r12d                               #! PC = 0x555555555fd5 *)
rol r12@uint32 r12 0xe;
(* xor    %r12d,%r13d                              #! PC = 0x555555555fd9 *)
xor r13@uint32 r13 r12;
(* mov    %r11d,%r12d                              #! PC = 0x555555555fdc *)
mov r12 r11;
(* shr    $0x3,%r12d                               #! PC = 0x555555555fdf *)
split r12 dc r12 0x3;
(* mov    %r12d,0x8(%rsp)                          #! EA = L0x7fffffffdf08; PC = 0x555555555fe3 *)
mov L0x7fffffffdf08 r12;
(* lea    0x12(%rbp),%ecx                          #! PC = 0x555555555fe8 *)
adds dc ecx ebp 0x12@uint32;
(* and    $0xf,%ecx                                #! PC = 0x555555555feb *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdf98; Value = 0x41aeac60520d68af; PC = 0x555555555fee *)
mov r12 L0x7fffffffdf98;
(* mov    %r12d,%r11d                              #! PC = 0x555555555ff3 *)
mov r11 r12;
(* rol    $0xf,%r11d                               #! PC = 0x555555555ff6 *)
rol r11@uint32 r11 0xf;
(* mov    %r12d,%ecx                               #! PC = 0x555555555ffa *)
mov ecx r12;
(* rol    $0xd,%ecx                                #! PC = 0x555555555ffd *)
rol ecx@uint32 ecx 0xd;
(* xor    %r11d,%ecx                               #! PC = 0x555555556000 *)
xor ecx@uint32 ecx r11;
(* shr    $0xa,%r12d                               #! PC = 0x555555556003 *)
split r12 dc r12 0xa;
(* lea    0xd(%rbp),%r11d                          #! PC = 0x555555556007 *)
adds dc r11 ebp 0xd@uint32;
(* and    $0xf,%r11d                               #! PC = 0x55555555600b *)
and r11@uint32 r11 0xf@uint32;
(* mov    0x70(%rsp,%r11,4),%r11d                  #! EA = L0x7fffffffdf84; Value = 0xa9277ff75ed1cf70; PC = 0x55555555600f *)
mov r11 L0x7fffffffdf84;
(* add    0x70(%rsp,%r10,4),%r11d                  #! EA = L0x7fffffffdfa0; Value = 0xd447e818854c3d24; PC = 0x555555556014 *)
adds dc r11 r11 L0x7fffffffdfa0;
(* xor    0x8(%rsp),%r13d                          #! EA = L0x7fffffffdf08; Value = 0x554e87fe1a88fd03; PC = 0x555555556019 *)
xor r13@uint32 r13 L0x7fffffffdf08;
(* add    %r11d,%r13d                              #! PC = 0x55555555601e *)
adds dc r13 r13 r11;
(* xor    %r12d,%ecx                               #! PC = 0x555555556021 *)
xor ecx@uint32 ecx r12;
(* add    %ecx,%r13d                               #! PC = 0x555555556024 *)
adds dc r13 r13 ecx;
(* mov    %r13d,0x70(%rsp,%r10,4)                  #! EA = L0x7fffffffdfa0; PC = 0x555555556027 *)
mov L0x7fffffffdfa0 r13;
(* mov    %esi,%r10d                               #! PC = 0x55555555602c *)
mov r10 esi;
(* ror    $0x6,%r10d                               #! PC = 0x55555555602f *)
ror r10@uint32 r10 0x6;
(* mov    %r10d,%ecx                               #! PC = 0x555555556033 *)
mov ecx r10;
(* mov    %esi,%r10d                               #! PC = 0x555555556036 *)
mov r10 esi;
(* ror    $0xb,%r10d                               #! PC = 0x555555556039 *)
ror r10@uint32 r10 0xb;
(* xor    %ecx,%r10d                               #! PC = 0x55555555603d *)
xor r10@uint32 r10 ecx;
(* mov    %esi,%r12d                               #! PC = 0x555555556040 *)
mov r12 esi;
(* rol    $0x7,%r12d                               #! PC = 0x555555556043 *)
rol r12@uint32 r12 0x7;
(* xor    %r12d,%r10d                              #! PC = 0x555555556047 *)
xor r10@uint32 r10 r12;
(* mov    0x10(%rsp),%rcx                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x55555555604a *)
mov ecx L0x7fffffffdf10;
(* add    0x50(%rcx),%r13d                         #! EA = L0x555555557110; Value = 0xa4506ceb90befffa; PC = 0x55555555604f *)
adds dc r13 r13 L0x555555557110;
(* add    %r8d,%r13d                               #! PC = 0x555555556053 *)
adds dc r13 r13 r8;
(* add    %r13d,%r10d                              #! PC = 0x555555556056 *)
adds dc r10 r10 r13;
(* mov    %esi,%r8d                                #! PC = 0x555555556059 *)
mov r8 esi;
(* not    %r8d                                     #! PC = 0x55555555605c *)
not r8@uint32 r8;
(* mov    %r8d,%ecx                                #! PC = 0x55555555605f *)
mov ecx r8;
(* and    %ebx,%ecx                                #! PC = 0x555555556062 *)
and ecx@uint32 ecx ebx;
(* mov    %edi,%r8d                                #! PC = 0x555555556064 *)
mov r8 edi;
(* and    %esi,%r8d                                #! PC = 0x555555556067 *)
and r8@uint32 r8 esi;
(* xor    %r8d,%ecx                                #! PC = 0x55555555606a *)
xor ecx@uint32 ecx r8;
(* add    %r10d,%ecx                               #! PC = 0x55555555606d *)
adds dc ecx ecx r10;
(* mov    %eax,%r8d                                #! PC = 0x555555556070 *)
mov r8 eax;
(* ror    $0x2,%r8d                                #! PC = 0x555555556073 *)
ror r8@uint32 r8 0x2;
(* mov    %eax,%r10d                               #! PC = 0x555555556077 *)
mov r10 eax;
(* ror    $0xd,%r10d                               #! PC = 0x55555555607a *)
ror r10@uint32 r10 0xd;
(* xor    %r8d,%r10d                               #! PC = 0x55555555607e *)
xor r10@uint32 r10 r8;
(* mov    %eax,%r8d                                #! PC = 0x555555556081 *)
mov r8 eax;
(* rol    $0xa,%r8d                                #! PC = 0x555555556084 *)
rol r8@uint32 r8 0xa;
(* xor    %r8d,%r10d                               #! PC = 0x555555556088 *)
xor r10@uint32 r10 r8;
(* mov    %r14d,%r8d                               #! PC = 0x55555555608b *)
mov r8 r14;
(* xor    %r15d,%r8d                               #! PC = 0x55555555608e *)
xor r8@uint32 r8 r15;
(* and    %eax,%r8d                                #! PC = 0x555555556091 *)
and r8@uint32 r8 eax;
(* mov    %r14d,%r11d                              #! PC = 0x555555556094 *)
mov r11 r14;
(* and    %r15d,%r11d                              #! PC = 0x555555556097 *)
and r11@uint32 r11 r15;
(* xor    %r11d,%r8d                               #! PC = 0x55555555609a *)
xor r8@uint32 r8 r11;
(* add    %r10d,%r8d                               #! PC = 0x55555555609d *)
adds dc r8 r8 r10;
(* lea    (%rdx,%rcx,1),%r13d                      #! PC = 0x5555555560a0 *)
adds dc r13 edx ecx;
(* lea    (%rcx,%r8,1),%r11d                       #! PC = 0x5555555560a4 *)
adds dc r11 ecx r8;
(* mov    %r11d,0x20(%rsp)                         #! EA = L0x7fffffffdf20; PC = 0x5555555560a8 *)
mov L0x7fffffffdf20 r11;
(* lea    0x6(%rbp),%r8d                           #! PC = 0x5555555560ad *)
adds dc r8 ebp 0x6@uint32;
(* and    $0xf,%r8d                                #! PC = 0x5555555560b1 *)
and r8@uint32 r8 0xf@uint32;
(* mov    0x70(%rsp,%r8,4),%r12d                   #! EA = L0x7fffffffdfa8; Value = 0x60e1eb259a0abe6f; PC = 0x5555555560b5 *)
mov r12 L0x7fffffffdfa8;
(* mov    %r12d,%edx                               #! PC = 0x5555555560ba *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x5555555560bd *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x5555555560c0 *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x5555555560c3 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x5555555560c6 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x5555555560c9 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x5555555560cc *)
split r12 dc r12 0x3;
(* lea    0x13(%rbp),%edx                          #! PC = 0x5555555560d0 *)
adds dc edx ebp 0x13@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555560d3 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdf9c; Value = 0xce9b147341aeac60; PC = 0x5555555560d6 *)
mov r10 L0x7fffffffdf9c;
(* mov    %r10d,%edx                               #! PC = 0x5555555560db *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555560de *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%ecx                                #! PC = 0x5555555560e1 *)
mov ecx edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555560e3 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555560e6 *)
rol edx@uint32 edx 0xd;
(* xor    %ecx,%edx                                #! PC = 0x5555555560e9 *)
xor edx@uint32 edx ecx;
(* shr    $0xa,%r10d                               #! PC = 0x5555555560eb *)
split r10 dc r10 0xa;
(* mov    0x28(%rsp),%rcx                          #! EA = L0x7fffffffdf28; Value = 0x0000000000000006; PC = 0x5555555560ef *)
mov ecx L0x7fffffffdf28;
(* mov    0x70(%rsp,%rcx,4),%ecx                   #! EA = L0x7fffffffdf88; Value = 0x36b0ce3ca9277ff7; PC = 0x5555555560f4 *)
mov ecx L0x7fffffffdf88;
(* add    0x70(%rsp,%r9,4),%ecx                    #! EA = L0x7fffffffdfa4; Value = 0x9a0abe6fd447e818; PC = 0x5555555560f8 *)
adds dc ecx ecx L0x7fffffffdfa4;
(* xor    %r12d,%r11d                              #! PC = 0x5555555560fd *)
xor r11@uint32 r11 r12;
(* add    %ecx,%r11d                               #! PC = 0x555555556100 *)
adds dc r11 r11 ecx;
(* xor    %r10d,%edx                               #! PC = 0x555555556103 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x555555556106 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r9,4)                   #! EA = L0x7fffffffdfa4; PC = 0x555555556109 *)
mov L0x7fffffffdfa4 r11;
(* mov    %r13d,%edx                               #! PC = 0x55555555610e *)
mov edx r13;
(* ror    $0x6,%edx                                #! PC = 0x555555556111 *)
ror edx@uint32 edx 0x6;
(* mov    %r13d,%r10d                              #! PC = 0x555555556114 *)
mov r10 r13;
(* ror    $0xb,%r10d                               #! PC = 0x555555556117 *)
ror r10@uint32 r10 0xb;
(* mov    %r10d,%ecx                               #! PC = 0x55555555611b *)
mov ecx r10;
(* xor    %edx,%ecx                                #! PC = 0x55555555611e *)
xor ecx@uint32 ecx edx;
(* mov    %r13d,%edx                               #! PC = 0x555555556120 *)
mov edx r13;
(* rol    $0x7,%edx                                #! PC = 0x555555556123 *)
rol edx@uint32 edx 0x7;
(* xor    %ecx,%edx                                #! PC = 0x555555556126 *)
xor edx@uint32 edx ecx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x555555556128 *)
mov r12 L0x7fffffffdf10;
(* add    0x54(%r12),%r11d                         #! EA = L0x555555557114; Value = 0xbef9a3f7a4506ceb; PC = 0x55555555612d *)
adds dc r11 r11 L0x555555557114;
(* add    %ebx,%r11d                               #! PC = 0x555555556132 *)
adds dc r11 r11 ebx;
(* lea    (%rdx,%r11,1),%ecx                       #! PC = 0x555555556135 *)
adds dc ecx edx r11;
(* mov    %r13d,%ebx                               #! PC = 0x555555556139 *)
mov ebx r13;
(* not    %ebx                                     #! PC = 0x55555555613c *)
not ebx@uint32 ebx;
(* and    %edi,%ebx                                #! PC = 0x55555555613e *)
and ebx@uint32 ebx edi;
(* mov    %esi,%edx                                #! PC = 0x555555556140 *)
mov edx esi;
(* and    %r13d,%edx                               #! PC = 0x555555556142 *)
and edx@uint32 edx r13;
(* xor    %ebx,%edx                                #! PC = 0x555555556145 *)
xor edx@uint32 edx ebx;
(* add    %ecx,%edx                                #! PC = 0x555555556147 *)
adds dc edx edx ecx;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x0000003874d8fbc3; PC = 0x555555556149 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%ebx                               #! PC = 0x55555555614e *)
mov ebx r11;
(* ror    $0x2,%ebx                                #! PC = 0x555555556151 *)
ror ebx@uint32 ebx 0x2;
(* mov    %r11d,%ecx                               #! PC = 0x555555556154 *)
mov ecx r11;
(* ror    $0xd,%ecx                                #! PC = 0x555555556157 *)
ror ecx@uint32 ecx 0xd;
(* xor    %ebx,%ecx                                #! PC = 0x55555555615a *)
xor ecx@uint32 ecx ebx;
(* mov    %r11d,%ebx                               #! PC = 0x55555555615c *)
mov ebx r11;
(* rol    $0xa,%ebx                                #! PC = 0x55555555615f *)
rol ebx@uint32 ebx 0xa;
(* xor    %ebx,%ecx                                #! PC = 0x555555556162 *)
xor ecx@uint32 ecx ebx;
(* mov    %r15d,%ebx                               #! PC = 0x555555556164 *)
mov ebx r15;
(* xor    %eax,%ebx                                #! PC = 0x555555556167 *)
xor ebx@uint32 ebx eax;
(* and    %r11d,%ebx                               #! PC = 0x555555556169 *)
and ebx@uint32 ebx r11;
(* mov    %r15d,%r10d                              #! PC = 0x55555555616c *)
mov r10 r15;
(* and    %eax,%r10d                               #! PC = 0x55555555616f *)
and r10@uint32 r10 eax;
(* xor    %r10d,%ebx                               #! PC = 0x555555556172 *)
xor ebx@uint32 ebx r10;
(* add    %ecx,%ebx                                #! PC = 0x555555556175 *)
adds dc ebx ebx ecx;
(* add    %edx,%r14d                               #! PC = 0x555555556177 *)
adds dc r14 r14 edx;
(* add    %edx,%ebx                                #! PC = 0x55555555617a *)
adds dc ebx ebx edx;
(* lea    0x7(%rbp),%ecx                           #! PC = 0x55555555617c *)
adds dc ecx ebp 0x7@uint32;
(* and    $0xf,%ecx                                #! PC = 0x55555555617f *)
and ecx@uint32 ecx 0xf@uint32;
(* mov    0x70(%rsp,%rcx,4),%r12d                  #! EA = L0x7fffffffdfac; Value = 0x0000000060e1eb25; PC = 0x555555556182 *)
mov r12 L0x7fffffffdfac;
(* mov    %r12d,%edx                               #! PC = 0x555555556187 *)
mov edx r12;
(* ror    $0x7,%edx                                #! PC = 0x55555555618a *)
ror edx@uint32 edx 0x7;
(* mov    %edx,%r11d                               #! PC = 0x55555555618d *)
mov r11 edx;
(* mov    %r12d,%edx                               #! PC = 0x555555556190 *)
mov edx r12;
(* rol    $0xe,%edx                                #! PC = 0x555555556193 *)
rol edx@uint32 edx 0xe;
(* xor    %edx,%r11d                               #! PC = 0x555555556196 *)
xor r11@uint32 r11 edx;
(* shr    $0x3,%r12d                               #! PC = 0x555555556199 *)
split r12 dc r12 0x3;
(* lea    0x14(%rbp),%edx                          #! PC = 0x55555555619d *)
adds dc edx ebp 0x14@uint32;
(* and    $0xf,%edx                                #! PC = 0x5555555561a0 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r10d                  #! EA = L0x7fffffffdfa0; Value = 0x650a4f8bce9b1473; PC = 0x5555555561a3 *)
mov r10 L0x7fffffffdfa0;
(* mov    %r10d,%edx                               #! PC = 0x5555555561a8 *)
mov edx r10;
(* rol    $0xf,%edx                                #! PC = 0x5555555561ab *)
rol edx@uint32 edx 0xf;
(* mov    %edx,%r9d                                #! PC = 0x5555555561ae *)
mov r9 edx;
(* mov    %r10d,%edx                               #! PC = 0x5555555561b1 *)
mov edx r10;
(* rol    $0xd,%edx                                #! PC = 0x5555555561b4 *)
rol edx@uint32 edx 0xd;
(* xor    %r9d,%edx                                #! PC = 0x5555555561b7 *)
xor edx@uint32 edx r9;
(* shr    $0xa,%r10d                               #! PC = 0x5555555561ba *)
split r10 dc r10 0xa;
(* mov    0x30(%rsp),%r9                           #! EA = L0x7fffffffdf30; Value = 0x0000000000000007; PC = 0x5555555561be *)
mov r9 L0x7fffffffdf30;
(* mov    0x70(%rsp,%r9,4),%r9d                    #! EA = L0x7fffffffdf8c; Value = 0x47dde27936b0ce3c; PC = 0x5555555561c3 *)
mov r9 L0x7fffffffdf8c;
(* add    0x70(%rsp,%r8,4),%r9d                    #! EA = L0x7fffffffdfa8; Value = 0x60e1eb259a0abe6f; PC = 0x5555555561c8 *)
adds dc r9 r9 L0x7fffffffdfa8;
(* xor    %r12d,%r11d                              #! PC = 0x5555555561cd *)
xor r11@uint32 r11 r12;
(* add    %r9d,%r11d                               #! PC = 0x5555555561d0 *)
adds dc r11 r11 r9;
(* xor    %r10d,%edx                               #! PC = 0x5555555561d3 *)
xor edx@uint32 edx r10;
(* add    %edx,%r11d                               #! PC = 0x5555555561d6 *)
adds dc r11 r11 edx;
(* mov    %r11d,0x70(%rsp,%r8,4)                   #! EA = L0x7fffffffdfa8; PC = 0x5555555561d9 *)
mov L0x7fffffffdfa8 r11;
(* mov    %r14d,%edx                               #! PC = 0x5555555561de *)
mov edx r14;
(* ror    $0x6,%edx                                #! PC = 0x5555555561e1 *)
ror edx@uint32 edx 0x6;
(* mov    %r14d,%r8d                               #! PC = 0x5555555561e4 *)
mov r8 r14;
(* ror    $0xb,%r8d                                #! PC = 0x5555555561e7 *)
ror r8@uint32 r8 0xb;
(* xor    %edx,%r8d                                #! PC = 0x5555555561eb *)
xor r8@uint32 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x5555555561ee *)
mov edx r14;
(* rol    $0x7,%edx                                #! PC = 0x5555555561f1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%r8d                                #! PC = 0x5555555561f4 *)
xor r8@uint32 r8 edx;
(* mov    0x10(%rsp),%r12                          #! EA = L0x7fffffffdf10; Value = 0x00005555555570c0; PC = 0x5555555561f7 *)
mov r12 L0x7fffffffdf10;
(* add    0x58(%r12),%r11d                         #! EA = L0x555555557118; Value = 0xc67178f2bef9a3f7; PC = 0x5555555561fc *)
adds dc r11 r11 L0x555555557118;
(* lea    (%r11,%rdi,1),%edx                       #! PC = 0x555555556201 *)
adds dc edx r11 edi;
(* add    %edx,%r8d                                #! PC = 0x555555556205 *)
adds dc r8 r8 edx;
(* mov    %r14d,%edx                               #! PC = 0x555555556208 *)
mov edx r14;
(* not    %edx                                     #! PC = 0x55555555620b *)
not edx@uint32 edx;
(* and    %esi,%edx                                #! PC = 0x55555555620d *)
and edx@uint32 edx esi;
(* mov    %r13d,%edi                               #! PC = 0x55555555620f *)
mov edi r13;
(* and    %r14d,%edi                               #! PC = 0x555555556212 *)
and edi@uint32 edi r14;
(* xor    %edi,%edx                                #! PC = 0x555555556215 *)
xor edx@uint32 edx edi;
(* add    %r8d,%edx                                #! PC = 0x555555556217 *)
adds dc edx edx r8;
(* mov    %ebx,%r8d                                #! PC = 0x55555555621a *)
mov r8 ebx;
(* ror    $0x2,%r8d                                #! PC = 0x55555555621d *)
ror r8@uint32 r8 0x2;
(* mov    %ebx,%edi                                #! PC = 0x555555556221 *)
mov edi ebx;
(* ror    $0xd,%edi                                #! PC = 0x555555556223 *)
ror edi@uint32 edi 0xd;
(* xor    %edi,%r8d                                #! PC = 0x555555556226 *)
xor r8@uint32 r8 edi;
(* mov    %ebx,%edi                                #! PC = 0x555555556229 *)
mov edi ebx;
(* rol    $0xa,%edi                                #! PC = 0x55555555622b *)
rol edi@uint32 edi 0xa;
(* xor    %edi,%r8d                                #! PC = 0x55555555622e *)
xor r8@uint32 r8 edi;
(* mov    0x20(%rsp),%r11d                         #! EA = L0x7fffffffdf20; Value = 0x0000003874d8fbc3; PC = 0x555555556231 *)
mov r11 L0x7fffffffdf20;
(* mov    %r11d,%edi                               #! PC = 0x555555556236 *)
mov edi r11;
(* xor    %eax,%edi                                #! PC = 0x555555556239 *)
xor edi@uint32 edi eax;
(* and    %ebx,%edi                                #! PC = 0x55555555623b *)
and edi@uint32 edi ebx;
(* mov    %r11d,%r9d                               #! PC = 0x55555555623d *)
mov r9 r11;
(* and    %eax,%r9d                                #! PC = 0x555555556240 *)
and r9@uint32 r9 eax;
(* xor    %r9d,%edi                                #! PC = 0x555555556243 *)
xor edi@uint32 edi r9;
(* add    %r8d,%edi                                #! PC = 0x555555556246 *)
adds dc edi edi r8;
(* add    %edx,%r15d                               #! PC = 0x555555556249 *)
adds dc r15 r15 edx;
(* add    %edx,%edi                                #! PC = 0x55555555624c *)
adds dc edi edi edx;
(* mov    %edi,0xc(%rsp)                           #! EA = L0x7fffffffdf0c; PC = 0x55555555624e *)
mov L0x7fffffffdf0c edi;
(* add    $0x8,%ebp                                #! PC = 0x555555556252 *)
adds dc ebp ebp 0x8@uint32;
(* mov    %ebp,%edx                                #! PC = 0x555555556255 *)
mov edx ebp;
(* and    $0xf,%edx                                #! PC = 0x555555556257 *)
and edx@uint32 edx 0xf@uint32;
(* mov    0x70(%rsp,%rdx,4),%r9d                   #! EA = L0x7fffffffdf70; Value = 0x12f2993c525d105f; PC = 0x55555555625a *)
mov r9 L0x7fffffffdf70;
(* mov    %r9d,%edi                                #! PC = 0x55555555625f *)
mov edi r9;
(* ror    $0x7,%edi                                #! PC = 0x555555556262 *)
ror edi@uint32 edi 0x7;
(* mov    %r9d,%edx                                #! PC = 0x555555556265 *)
mov edx r9;
(* rol    $0xe,%edx                                #! PC = 0x555555556268 *)
rol edx@uint32 edx 0xe;
(* xor    %edi,%edx                                #! PC = 0x55555555626b *)
xor edx@uint32 edx edi;
(* shr    $0x3,%r9d                                #! PC = 0x55555555626d *)
split r9 dc r9 0x3;
(* mov    0x24(%rsp),%edi                          #! EA = L0x7fffffffdf24; Value = 0x0000000600000038; PC = 0x555555556271 *)
mov edi L0x7fffffffdf24;
(* add    $0x15,%edi                               #! PC = 0x555555556275 *)
adds dc edi edi 0x15@uint32;
(* and    $0xf,%edi                                #! PC = 0x555555556278 *)
and edi@uint32 edi 0xf@uint32;
(* mov    0x70(%rsp,%rdi,4),%r8d                   #! EA = L0x7fffffffdfa4; Value = 0xf5546b90650a4f8b; PC = 0x55555555627b *)
mov r8 L0x7fffffffdfa4;
(* mov    %r8d,%r10d                               #! PC = 0x555555556280 *)
mov r10 r8;
(* rol    $0xf,%r10d                               #! PC = 0x555555556283 *)
rol r10@uint32 r10 0xf;
(* mov    %r8d,%edi                                #! PC = 0x555555556287 *)
mov edi r8;
(* rol    $0xd,%edi                                #! PC = 0x55555555628a *)
rol edi@uint32 edi 0xd;
(* xor    %r10d,%edi                               #! PC = 0x55555555628d *)
xor edi@uint32 edi r10;
(* shr    $0xa,%r8d                                #! PC = 0x555555556290 *)
split r8 dc r8 0xa;
(* xor    %r9d,%edx                                #! PC = 0x555555556294 *)
xor edx@uint32 edx r9;
(* add    0x70(%rsp,%rcx,4),%edx                   #! EA = L0x7fffffffdfac; Value = 0x0000000060e1eb25; PC = 0x555555556297 *)
adds dc edx edx L0x7fffffffdfac;
(* mov    0x18(%rsp),%r9                           #! EA = L0x7fffffffdf18; Value = 0x0000000000000008; PC = 0x55555555629b *)
mov r9 L0x7fffffffdf18;
(* add    0x70(%rsp,%r9,4),%edx                    #! EA = L0x7fffffffdf90; Value = 0x25458be447dde279; PC = 0x5555555562a0 *)
adds dc edx edx L0x7fffffffdf90;
(* xor    %r8d,%edi                                #! PC = 0x5555555562a5 *)
xor edi@uint32 edi r8;
(* add    %edx,%edi                                #! PC = 0x5555555562a8 *)
adds dc edi edi edx;
(* mov    %edi,0x70(%rsp,%rcx,4)                   #! EA = L0x7fffffffdfac; PC = 0x5555555562aa *)
mov L0x7fffffffdfac edi;
(* mov    %r15d,%edx                               #! PC = 0x5555555562ae *)
mov edx r15;
(* ror    $0x6,%edx                                #! PC = 0x5555555562b1 *)
ror edx@uint32 edx 0x6;
(* mov    %edx,%ecx                                #! PC = 0x5555555562b4 *)
mov ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562b6 *)
mov edx r15;
(* ror    $0xb,%edx                                #! PC = 0x5555555562b9 *)
ror edx@uint32 edx 0xb;
(* xor    %edx,%ecx                                #! PC = 0x5555555562bc *)
xor ecx@uint32 ecx edx;
(* mov    %r15d,%edx                               #! PC = 0x5555555562be *)
mov edx r15;
(* rol    $0x7,%edx                                #! PC = 0x5555555562c1 *)
rol edx@uint32 edx 0x7;
(* xor    %edx,%ecx                                #! PC = 0x5555555562c4 *)
xor ecx@uint32 ecx edx;
(* add    0x5c(%r12),%edi                          #! EA = L0x55555555711c; Value = 0x3b031b01c67178f2; PC = 0x5555555562c6 *)
adds dc edi edi L0x55555555711c;
(* add    %esi,%edi                                #! PC = 0x5555555562cb *)
adds dc edi edi esi;
(* add    %ecx,%edi                                #! PC = 0x5555555562cd *)
adds dc edi edi ecx;
(* mov    %r15d,%esi                               #! PC = 0x5555555562cf *)
mov esi r15;
(* not    %esi                                     #! PC = 0x5555555562d2 *)
not esi@uint32 esi;
(* and    %r13d,%esi                               #! PC = 0x5555555562d4 *)
and esi@uint32 esi r13;
(* mov    %r14d,%edx                               #! PC = 0x5555555562d7 *)
mov edx r14;
(* and    %r15d,%edx                               #! PC = 0x5555555562da *)
and edx@uint32 edx r15;
(* xor    %edx,%esi                                #! PC = 0x5555555562dd *)
xor esi@uint32 esi edx;
(* add    %esi,%edi                                #! PC = 0x5555555562df *)
adds dc edi edi esi;
(* mov    0xc(%rsp),%ecx                           #! EA = L0x7fffffffdf0c; Value = 0x555570c04a578839; PC = 0x5555555562e1 *)
mov ecx L0x7fffffffdf0c;
(* mov    %ecx,%esi                                #! PC = 0x5555555562e5 *)
mov esi ecx;
(* ror    $0x2,%esi                                #! PC = 0x5555555562e7 *)
ror esi@uint32 esi 0x2;
(* mov    %ecx,%edx                                #! PC = 0x5555555562ea *)
mov edx ecx;
(* ror    $0xd,%edx                                #! PC = 0x5555555562ec *)
ror edx@uint32 edx 0xd;
(* xor    %edx,%esi                                #! PC = 0x5555555562ef *)
xor esi@uint32 esi edx;
(* mov    %ecx,%edx                                #! PC = 0x5555555562f1 *)
mov edx ecx;
(* rol    $0xa,%edx                                #! PC = 0x5555555562f3 *)
rol edx@uint32 edx 0xa;
(* xor    %esi,%edx                                #! PC = 0x5555555562f6 *)
xor edx@uint32 edx esi;
(* mov    %r11d,%esi                               #! PC = 0x5555555562f8 *)
mov esi r11;
(* xor    %ebx,%esi                                #! PC = 0x5555555562fb *)
xor esi@uint32 esi ebx;
(* and    %ecx,%esi                                #! PC = 0x5555555562fd *)
and esi@uint32 esi ecx;
(* and    %ebx,%r11d                               #! PC = 0x5555555562ff *)
and r11@uint32 r11 ebx;
(* xor    %r11d,%esi                               #! PC = 0x555555556302 *)
xor esi@uint32 esi r11;
(* add    %edx,%esi                                #! PC = 0x555555556305 *)
adds dc esi esi edx;
(* add    %edi,%eax                                #! PC = 0x555555556307 *)
adds dc eax eax edi;
(* add    %edi,%esi                                #! PC = 0x555555556309 *)
adds dc esi esi edi;
(* mov    %esi,0x8(%rsp)                           #! EA = L0x7fffffffdf08; PC = 0x55555555630b *)
mov L0x7fffffffdf08 esi;
(* add    $0x20,%r12                               #! PC = 0x55555555630f *)
adds dc r12 r12 0x20@uint32;
(* mov    %r12,0x10(%rsp)                          #! EA = L0x7fffffffdf10; PC = 0x555555556313 *)
mov L0x7fffffffdf10 r12;
(* cmp    $0x40,%ebp                               #! PC = 0x555555556318 *)
(* cmp 0x40, ebp *)
nop;
(* #jne    0x555555555c2b <sha256_block_data_order+2669>#! PC = 0x55555555631b *)
#jne    0x555555555c2b <sha256_block_data_order+2669>#! 0x55555555631b = 0x55555555631b;
(* #jmp    0x555555555227 <sha256_block_data_order+105>#! PC = 0x555555556321 *)
#jmp    0x555555555227 <sha256_block_data_order+105>#! 0x555555556321 = 0x555555556321;
(* mov    0x50(%rsp),%r11d                         #! EA = L0x7fffffffdf50; Value = 0xbb67ae856a09e667; PC = 0x555555555227 *)
mov r11 L0x7fffffffdf50;
(* add    %esi,%r11d                               #! PC = 0x55555555522c *)
adds dc r11 r11 esi;
(* mov    0x40(%rsp),%rcx                          #! EA = L0x7fffffffdf40; Value = 0x0000555555559060; PC = 0x55555555522f *)
mov ecx L0x7fffffffdf40;
(* mov    %r11d,(%rcx)                             #! EA = L0x555555559060; PC = 0x555555555234 *)
mov L0x555555559060 r11;
(* mov    0x54(%rsp),%esi                          #! EA = L0x7fffffffdf54; Value = 0x3c6ef372bb67ae85; PC = 0x555555555237 *)
mov esi L0x7fffffffdf54;
(* add    0xc(%rsp),%esi                           #! EA = L0x7fffffffdf0c; Value = 0x555570e04a578839; PC = 0x55555555523b *)
adds dc esi esi L0x7fffffffdf0c;
(* mov    %esi,0x4(%rcx)                           #! EA = L0x555555559064; PC = 0x55555555523f *)
mov L0x555555559064 esi;
(* mov    0x58(%rsp),%edi                          #! EA = L0x7fffffffdf58; Value = 0xa54ff53a3c6ef372; PC = 0x555555555242 *)
mov edi L0x7fffffffdf58;
(* add    %ebx,%edi                                #! PC = 0x555555555246 *)
adds dc edi edi ebx;
(* mov    %rcx,%rbx                                #! PC = 0x555555555248 *)
mov ebx ecx;
(* mov    %edi,0x8(%rcx)                           #! EA = L0x555555559068; PC = 0x55555555524b *)
mov L0x555555559068 edi;
(* mov    0x5c(%rsp),%r8d                          #! EA = L0x7fffffffdf5c; Value = 0x510e527fa54ff53a; PC = 0x55555555524e *)
mov r8 L0x7fffffffdf5c;
(* add    0x20(%rsp),%r8d                          #! EA = L0x7fffffffdf20; Value = 0x0000003874d8fbc3; PC = 0x555555555253 *)
adds dc r8 r8 L0x7fffffffdf20;
(* mov    %r8d,0xc(%rcx)                           #! EA = L0x55555555906c; PC = 0x555555555258 *)
mov L0x55555555906c r8;
(* mov    0x60(%rsp),%r9d                          #! EA = L0x7fffffffdf60; Value = 0x9b05688c510e527f; PC = 0x55555555525c *)
mov r9 L0x7fffffffdf60;
(* add    %eax,%r9d                                #! PC = 0x555555555261 *)
adds dc r9 r9 eax;
(* mov    %r9d,0x10(%rcx)                          #! EA = L0x555555559070; PC = 0x555555555264 *)
mov L0x555555559070 r9;
(* mov    0x64(%rsp),%edx                          #! EA = L0x7fffffffdf64; Value = 0x1f83d9ab9b05688c; PC = 0x555555555268 *)
mov edx L0x7fffffffdf64;
(* add    %r15d,%edx                               #! PC = 0x55555555526c *)
adds dc edx edx r15;
(* mov    %edx,0x14(%rcx)                          #! EA = L0x555555559074; PC = 0x55555555526f *)
mov L0x555555559074 edx;
(* mov    0x68(%rsp),%ecx                          #! EA = L0x7fffffffdf68; Value = 0x5be0cd191f83d9ab; PC = 0x555555555272 *)
mov ecx L0x7fffffffdf68;
(* add    %r14d,%ecx                               #! PC = 0x555555555276 *)
adds dc ecx ecx r14;
(* mov    %ecx,0x18(%rbx)                          #! EA = L0x555555559078; PC = 0x555555555279 *)
mov L0x555555559078 ecx;
(* mov    0x6c(%rsp),%eax                          #! EA = L0x7fffffffdf6c; Value = 0x525d105f5be0cd19; PC = 0x55555555527c *)
mov eax L0x7fffffffdf6c;
(* add    %r13d,%eax                               #! PC = 0x555555555280 *)
adds dc eax eax r13;
(* mov    %eax,0x1c(%rbx)                          #! EA = L0x55555555907c; PC = 0x555555555283 *)
mov L0x55555555907c eax;
(* subq   $0x1,0x38(%rsp)                          #! EA = L0x7fffffffdf38; PC = 0x555555555286 *)
subc dc L0x7fffffffdf38 L0x7fffffffdf38 0x1@uint32;
(* mov    0x38(%rsp),%rax                          #! EA = L0x7fffffffdf38; Value = 0xffffffffffffffff; PC = 0x55555555528c *)
mov eax L0x7fffffffdf38;
(* cmp    $0xffffffffffffffff,%rax                 #! PC = 0x555555555291 *)
(* cmp 0xffffffffffffffff, eax *)
nop;
(* #je     0x5555555551fe <sha256_block_data_order+64>#! PC = 0x555555555295 *)
#je     0x5555555551fe <sha256_block_data_order+64>#! 0x555555555295 = 0x555555555295;
(* mov    0xb8(%rsp),%rax                          #! EA = L0x7fffffffdfb8; Value = 0x85ab9e8a5b96a400; PC = 0x5555555551fe *)
mov eax L0x7fffffffdfb8;
(* sub    %fs:0x28,%rax                            #! PC = 0x555555555206 *)
(* sub %fs:0x28, eax *)
nop;
(* #jne    0x555555556326 <sha256_block_data_order+4456>#! PC = 0x55555555520f *)
#jne    0x555555556326 <sha256_block_data_order+4456>#! 0x55555555520f = 0x55555555520f;
(* add    $0xc8,%rsp                               #! PC = 0x555555555215 *)
adds dc rsp rsp 0xc8@uint32;
(* pop    %rbx                                     #! EA = L0x7fffffffdfc8; Value = 0x00005555555590e0; PC = 0x55555555521c *)
(* pop ebx *)
nop;
(* pop    %rbp                                     #! EA = L0x7fffffffdfd0; Value = 0x0000555555559060; PC = 0x55555555521d *)
(* pop ebp *)
nop;
(* pop    %r12                                     #! EA = L0x7fffffffdfd8; Value = 0x0000555555559088; PC = 0x55555555521e *)
(* pop r12 *)
nop;
(* pop    %r13                                     #! EA = L0x7fffffffdfe0; Value = 0x0000555555555169; PC = 0x555555555220 *)
(* pop r13 *)
nop;
(* pop    %r14                                     #! EA = L0x7fffffffdfe8; Value = 0x0000555555558db8; PC = 0x555555555222 *)
(* pop r14 *)
nop;
(* pop    %r15                                     #! EA = L0x7fffffffdff0; Value = 0x00007ffff7ffd040; PC = 0x555555555224 *)
(* pop r15 *)
nop;
(* #! <- SP = 0x7fffffffdff8 *)
#! 0x7fffffffdff8 = 0x7fffffffdff8;
(* #ret                                            #! PC = 0x555555555226 *)
#ret                                            #! 0x555555555226 = 0x555555555226;

mov a0 L0x555555559060; mov a1 L0x555555559064;
mov a2 L0x555555559068; mov a3 L0x55555555906c;
mov a4 L0x555555559070; mov a5 L0x555555559074;
mov a6 L0x555555559078; mov a7 L0x55555555907c;

{
  true
  &&
  true
}

proc main (
uint8 A00, uint8 A01, uint8 A02, uint8 A03, uint8 A04,
uint8 A05, uint8 A06, uint8 A07, uint8 A08, uint8 A09,
uint8 A10, uint8 A11, uint8 A12, uint8 A13, uint8 A14,
uint8 A15, uint8 A16, uint8 A17, uint8 A18, uint8 A19,
uint8 A20, uint8 A21, uint8 A22, uint8 A23, uint8 A24,
uint8 A25, uint8 A26, uint8 A27, uint8 A28, uint8 A29,
uint8 A30, uint8 A31, uint8 A32, uint8 A33, uint8 A34,
uint8 A35, uint8 A36, uint8 A37, uint8 A38, uint8 A39,
uint8 A40, uint8 A41, uint8 A42, uint8 A43, uint8 A44,
uint8 A45, uint8 A46, uint8 A47, uint8 A48, uint8 A49,
uint8 A50, uint8 A51, uint8 A52, uint8 A53, uint8 A54,
uint8 A55, uint8 A56, uint8 A57, uint8 A58, uint8 A59,
uint8 A60, uint8 A61, uint8 A62, uint8 A63,
uint8 B00, uint8 B01, uint8 B02, uint8 B03, uint8 B04,
uint8 B05, uint8 B06, uint8 B07, uint8 B08, uint8 B09,
uint8 B10, uint8 B11, uint8 B12, uint8 B13, uint8 B14,
uint8 B15, uint8 B16, uint8 B17, uint8 B18, uint8 B19,
uint8 B20, uint8 B21, uint8 B22, uint8 B23, uint8 B24,
uint8 B25, uint8 B26, uint8 B27, uint8 B28, uint8 B29,
uint8 B30, uint8 B31, uint8 B32, uint8 B33, uint8 B34,
uint8 B35, uint8 B36, uint8 B37, uint8 B38, uint8 B39,
uint8 B40, uint8 B41, uint8 B42, uint8 B43, uint8 B44,
uint8 B45, uint8 B46, uint8 B47, uint8 B48, uint8 B49,
uint8 B50, uint8 B51, uint8 B52, uint8 B53, uint8 B54,
uint8 B55, uint8 B56, uint8 B57, uint8 B58, uint8 B59,
uint8 B60, uint8 B61, uint8 B62, uint8 B63,
uint8 C00, uint8 C01, uint8 C02, uint8 C03, uint8 C04,
uint8 C05, uint8 C06, uint8 C07, uint8 C08, uint8 C09,
uint8 C10, uint8 C11, uint8 C12, uint8 C13, uint8 C14,
uint8 C15, uint8 C16, uint8 C17, uint8 C18, uint8 C19,
uint8 C20, uint8 C21, uint8 C22, uint8 C23, uint8 C24,
uint8 C25, uint8 C26, uint8 C27, uint8 C28, uint8 C29,
uint8 C30, uint8 C31, uint8 C32, uint8 C33, uint8 C34,
uint8 C35, uint8 C36, uint8 C37, uint8 C38, uint8 C39,
uint8 C40, uint8 C41, uint8 C42, uint8 C43, uint8 C44,
uint8 C45, uint8 C46, uint8 C47, uint8 C48, uint8 C49,
uint8 C50, uint8 C51, uint8 C52, uint8 C53, uint8 C54,
uint8 C55, uint8 C56, uint8 C57, uint8 C58, uint8 C59,
uint8 C60, uint8 C61, uint8 C62, uint8 C63,
uint8 D00, uint8 D01, uint8 D02, uint8 D03, uint8 D04,
uint8 D05, uint8 D06, uint8 D07, uint8 D08, uint8 D09,
uint8 D10, uint8 D11, uint8 D12, uint8 D13, uint8 D14,
uint8 D15, uint8 D16, uint8 D17, uint8 D18, uint8 D19,
uint8 D20, uint8 D21, uint8 D22, uint8 D23, uint8 D24,
uint8 D25, uint8 D26, uint8 D27, uint8 D28, uint8 D29,
uint8 D30, uint8 D31, uint8 D32, uint8 D33, uint8 D34,
uint8 D35, uint8 D36, uint8 D37, uint8 D38, uint8 D39,
uint8 D40, uint8 D41, uint8 D42, uint8 D43, uint8 D44,
uint8 D45, uint8 D46, uint8 D47, uint8 D48, uint8 D49,
uint8 D50, uint8 D51, uint8 D52, uint8 D53, uint8 D54,
uint8 D55, uint8 D56, uint8 D57, uint8 D58, uint8 D59,
uint8 D60, uint8 D61, uint8 D62, uint8 D63,
uint8 E00, uint8 E01, uint8 E02, uint8 E03, uint8 E04,
uint8 E05, uint8 E06, uint8 E07, uint8 E08, uint8 E09,
uint8 E10, uint8 E11, uint8 E12, uint8 E13, uint8 E14,
uint8 E15, uint8 E16, uint8 E17, uint8 E18, uint8 E19,
uint8 E20, uint8 E21, uint8 E22, uint8 E23, uint8 E24,
uint8 E25, uint8 E26, uint8 E27, uint8 E28, uint8 E29,
uint8 E30, uint8 E31, uint8 E32, uint8 E33, uint8 E34,
uint8 E35, uint8 E36, uint8 E37, uint8 E38, uint8 E39,
uint8 E40, uint8 E41, uint8 E42, uint8 E43, uint8 E44,
uint8 E45, uint8 E46, uint8 E47, uint8 E48, uint8 E49,
uint8 E50, uint8 E51, uint8 E52, uint8 E53, uint8 E54,
uint8 E55, uint8 E56, uint8 E57, uint8 E58, uint8 E59,
uint8 E60, uint8 E61, uint8 E62, uint8 E63,
uint8 F00, uint8 F01, uint8 F02, uint8 F03, uint8 F04,
uint8 F05, uint8 F06, uint8 F07, uint8 F08, uint8 F09,
uint8 F10, uint8 F11, uint8 F12, uint8 F13, uint8 F14,
uint8 F15, uint8 F16, uint8 F17, uint8 F18, uint8 F19,
uint8 F20, uint8 F21, uint8 F22, uint8 F23, uint8 F24,
uint8 F25, uint8 F26, uint8 F27, uint8 F28, uint8 F29,
uint8 F30, uint8 F31, uint8 F32, uint8 F33, uint8 F34,
uint8 F35, uint8 F36, uint8 F37, uint8 F38, uint8 F39,
uint8 F40, uint8 F41, uint8 F42, uint8 F43, uint8 F44,
uint8 F45, uint8 F46, uint8 F47, uint8 F48, uint8 F49,
uint8 F50, uint8 F51, uint8 F52, uint8 F53, uint8 F54,
uint8 F55, uint8 F56, uint8 F57, uint8 F58, uint8 F59,
uint8 F60, uint8 F61, uint8 F62, uint8 F63,
uint8 G00, uint8 G01, uint8 G02, uint8 G03, uint8 G04,
uint8 G05, uint8 G06, uint8 G07, uint8 G08, uint8 G09,
uint8 G10, uint8 G11, uint8 G12, uint8 G13, uint8 G14,
uint8 G15, uint8 G16, uint8 G17, uint8 G18, uint8 G19,
uint8 G20, uint8 G21, uint8 G22, uint8 G23, uint8 G24,
uint8 G25, uint8 G26, uint8 G27, uint8 G28, uint8 G29,
uint8 G30, uint8 G31, uint8 G32, uint8 G33, uint8 G34,
uint8 G35, uint8 G36, uint8 G37, uint8 G38, uint8 G39,
uint8 G40, uint8 G41, uint8 G42, uint8 G43, uint8 G44,
uint8 G45, uint8 G46, uint8 G47, uint8 G48, uint8 G49,
uint8 G50, uint8 G51, uint8 G52, uint8 G53, uint8 G54,
uint8 G55, uint8 G56, uint8 G57, uint8 G58, uint8 G59,
uint8 G60, uint8 G61, uint8 G62, uint8 G63,
uint8 H00, uint8 H01, uint8 H02, uint8 H03, uint8 H04,
uint8 H05, uint8 H06, uint8 H07, uint8 H08, uint8 H09,
uint8 H10, uint8 H11, uint8 H12, uint8 H13, uint8 H14,
uint8 H15, uint8 H16, uint8 H17, uint8 H18, uint8 H19,
uint8 H20, uint8 H21, uint8 H22, uint8 H23, uint8 H24,
uint8 H25, uint8 H26, uint8 H27, uint8 H28, uint8 H29,
uint8 H30, uint8 H31, uint8 H32, uint8 H33, uint8 H34,
uint8 H35, uint8 H36, uint8 H37, uint8 H38, uint8 H39,
uint8 H40, uint8 H41, uint8 H42, uint8 H43, uint8 H44,
uint8 H45, uint8 H46, uint8 H47, uint8 H48, uint8 H49,
uint8 H50, uint8 H51, uint8 H52, uint8 H53, uint8 H54,
uint8 H55, uint8 H56, uint8 H57, uint8 H58, uint8 H59,
uint8 H60, uint8 H61, uint8 H62, uint8 H63,
uint32 A0, uint32 A1, uint32 A2, uint32 A3,
uint32 A4, uint32 A5, uint32 A6, uint32 A7) =
{ true && true }

call sha256_block_data_order_cc (
A00, A01, A02, A03, A04, A05, A06, A07, A08, A09, A10, A11, A12, A13, A14,
A15, A16, A17, A18, A19, A20, A21, A22, A23, A24, A25, A26, A27, A28, A29,
A30, A31, A32, A33, A34, A35, A36, A37, A38, A39, A40, A41, A42, A43, A44,
A45, A46, A47, A48, A49, A50, A51, A52, A53, A54, A55, A56, A57, A58, A59,
A60, A61, A62, A63, A0, A1, A2, A3, A4, A5, A6, A7,
a0, a1, a2, a3, a4, a5, a6, a7
);

call sha256_block_data_order_cc (
B00, B01, B02, B03, B04, B05, B06, B07, B08, B09, B10, B11, B12, B13, B14,
B15, B16, B17, B18, B19, B20, B21, B22, B23, B24, B25, B26, B27, B28, B29,
B30, B31, B32, B33, B34, B35, B36, B37, B38, B39, B40, B41, B42, B43, B44,
B45, B46, B47, B48, B49, B50, B51, B52, B53, B54, B55, B56, B57, B58, B59,
B60, B61, B62, B63, A0, A1, A2, A3, A4, A5, A6, A7,
b0, b1, b2, b3, b4, b5, b6, b7
);

call sha256_block_data_order_cc (
C00, C01, C02, C03, C04, C05, C06, C07, C08, C09, C10, C11, C12, C13, C14,
C15, C16, C17, C18, C19, C20, C21, C22, C23, C24, C25, C26, C27, C28, C29,
C30, C31, C32, C33, C34, C35, C36, C37, C38, C39, C40, C41, C42, C43, C44,
C45, C46, C47, C48, C49, C50, C51, C52, C53, C54, C55, C56, C57, C58, C59,
C60, C61, C62, C63, A0, A1, A2, A3, A4, A5, A6, A7,
c0, c1, c2, c3, c4, c5, c6, c7
);

call sha256_block_data_order_cc (
D00, D01, D02, D03, D04, D05, D06, D07, D08, D09, D10, D11, D12, D13, D14,
D15, D16, D17, D18, D19, D20, D21, D22, D23, D24, D25, D26, D27, D28, D29,
D30, D31, D32, D33, D34, D35, D36, D37, D38, D39, D40, D41, D42, D43, D44,
D45, D46, D47, D48, D49, D50, D51, D52, D53, D54, D55, D56, D57, D58, D59,
D60, D61, D62, D63, A0, A1, A2, A3, A4, A5, A6, A7,
d0, d1, d2, d3, d4, d5, d6, d7
);

call sha256_block_data_order_cc (
E00, E01, E02, E03, E04, E05, E06, E07, E08, E09, E10, E11, E12, E13, E14,
E15, E16, E17, E18, E19, E20, E21, E22, E23, E24, E25, E26, E27, E28, E29,
E30, E31, E32, E33, E34, E35, E36, E37, E38, E39, E40, E41, E42, E43, E44,
E45, E46, E47, E48, E49, E50, E51, E52, E53, E54, E55, E56, E57, E58, E59,
E60, E61, E62, E63, A0, A1, A2, A3, A4, A5, A6, A7,
e0, e1, e2, e3, e4, e5, e6, e7
);

call sha256_block_data_order_cc (
F00, F01, F02, F03, F04, F05, F06, F07, F08, F09, F10, F11, F12, F13, F14,
F15, F16, F17, F18, F19, F20, F21, F22, F23, F24, F25, F26, F27, F28, F29,
F30, F31, F32, F33, F34, F35, F36, F37, F38, F39, F40, F41, F42, F43, F44,
F45, F46, F47, F48, F49, F50, F51, F52, F53, F54, F55, F56, F57, F58, F59,
F60, F61, F62, F63, A0, A1, A2, A3, A4, A5, A6, A7,
f0, f1, f2, f3, f4, f5, f6, f7
);

call sha256_block_data_order_cc (
G00, G01, G02, G03, G04, G05, G06, G07, G08, G09, G10, G11, G12, G13, G14,
G15, G16, G17, G18, G19, G20, G21, G22, G23, G24, G25, G26, G27, G28, G29,
G30, G31, G32, G33, G34, G35, G36, G37, G38, G39, G40, G41, G42, G43, G44,
G45, G46, G47, G48, G49, G50, G51, G52, G53, G54, G55, G56, G57, G58, G59,
G60, G61, G62, G63, A0, A1, A2, A3, A4, A5, A6, A7,
g0, g1, g2, g3, g4, g5, g6, g7
);

call sha256_block_data_order_cc (
H00, H01, H02, H03, H04, H05, H06, H07, H08, H09, H10, H11, H12, H13, H14,
H15, H16, H17, H18, H19, H20, H21, H22, H23, H24, H25, H26, H27, H28, H29,
H30, H31, H32, H33, H34, H35, H36, H37, H38, H39, H40, H41, H42, H43, H44,
H45, H46, H47, H48, H49, H50, H51, H52, H53, H54, H55, H56, H57, H58, H59,
H60, H61, H62, H63, A0, A1, A2, A3, A4, A5, A6, A7,
h0, h1, h2, h3, h4, h5, h6, h7
);

{ true && true }