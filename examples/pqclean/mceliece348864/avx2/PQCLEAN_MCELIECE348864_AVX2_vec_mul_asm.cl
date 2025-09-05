proc main (
bit[64] %r11,bit[64] %r12,bit[64] %r13,bit[64] %r14,
bit[64] %r15,bit[64] %rbx,
uint16 z,
bit[64] %a0, bit[64] %a1, bit[64] %a2, bit[64] %a3,
bit[64] %a4, bit[64] %a5, bit[64] %a6, bit[64] %a7,
bit[64] %a8, bit[64] %a9, bit[64] %aa, bit[64] %ab,
bit[64] %b0, bit[64] %b1, bit[64] %b2, bit[64] %b3,
bit[64] %b4, bit[64] %b5, bit[64] %b6, bit[64] %b7,
bit[64] %b8, bit[64] %b9, bit[64] %ba, bit[64] %bb;
bit[64] %R0, bit[64] %R1, bit[64] %R2, bit[64] %R3,
bit[64] %R4, bit[64] %R5, bit[64] %R6, bit[64] %R7,
bit[64] %R8, bit[64] %R9, bit[64] %Ra, bit[64] %Rb
) =
{
  true
  &&
  true
}

mov %L0x7ffffffaf1c0 %a0; mov %L0x7ffffffaf1c8 %a1; mov %L0x7ffffffaf1d0 %a2;
mov %L0x7ffffffaf1d8 %a3; mov %L0x7ffffffaf1e0 %a4; mov %L0x7ffffffaf1e8 %a5;
mov %L0x7ffffffaf1f0 %a6; mov %L0x7ffffffaf1f8 %a7; mov %L0x7ffffffaf200 %a8;
mov %L0x7ffffffaf208 %a9; mov %L0x7ffffffaf210 %aa; mov %L0x7ffffffaf218 %ab;

mov %L0x7ffffffaefc0 %b0; mov %L0x7ffffffaefc8 %b1; mov %L0x7ffffffaefd0 %b2;
mov %L0x7ffffffaefd8 %b3; mov %L0x7ffffffaefe0 %b4; mov %L0x7ffffffaefe8 %b5;
mov %L0x7ffffffaeff0 %b6; mov %L0x7ffffffaeff8 %b7; mov %L0x7ffffffaf000 %b8;
mov %L0x7ffffffaf008 %b9; mov %L0x7ffffffaf010 %ba; mov %L0x7ffffffaf018 %bb;

(* #! -> SP = 0x7ffffffaed78 *)
#! 0x7ffffffaed78 = 0x7ffffffaed78;
(* mov    %rsp,%r11                                #! PC = 0x55555557c600 *)
(* mov rsp, r11 *)
nop;
(* and    $0x1f,%r11                               #! PC = 0x55555557c603 *)
(* and $0x1f, r11 *)
nop;
(* add    $0x2a0,%r11                              #! PC = 0x55555557c607 *)
(* add 0x2a0, r11 *)
nop;
(* sub    %r11,%rsp                                #! PC = 0x55555557c60e *)
(* sub r11, rsp *)
nop;
(* mov    %r11,0x260(%rsp)                         #! EA = L0x7ffffffaed20; PC = 0x55555557c611 *)
mov %L0x7ffffffaed20 %r11;
(* mov    %r12,0x268(%rsp)                         #! EA = L0x7ffffffaed28; PC = 0x55555557c619 *)
mov %L0x7ffffffaed28 %r12;
(* mov    %r13,0x270(%rsp)                         #! EA = L0x7ffffffaed30; PC = 0x55555557c621 *)
mov %L0x7ffffffaed30 %r13;
(* mov    %r14,0x278(%rsp)                         #! EA = L0x7ffffffaed38; PC = 0x55555557c629 *)
mov %L0x7ffffffaed38 %r14;
(* mov    %r15,0x280(%rsp)                         #! EA = L0x7ffffffaed40; PC = 0x55555557c631 *)
mov %L0x7ffffffaed40 %r15;
(* mov    %rbx,0x288(%rsp)                         #! EA = L0x7ffffffaed48; PC = 0x55555557c639 *)
mov %L0x7ffffffaed48 %rbx;
(* lea    (%rsp),%rcx                              #! PC = 0x55555557c641 *)
(* lea (rsp), rcx *)
nop;
(* vmovupd (%rsi),%ymm0                            #! EA = L0x7ffffffaf1c0; Value = 0x7dbdca2a323d0289; PC = 0x55555557c645 *)
mov %ymm0
    [%L0x7ffffffaf1c0[0],%L0x7ffffffaf1c0[1],%L0x7ffffffaf1c0[2],%L0x7ffffffaf1c0[3],
     %L0x7ffffffaf1c0[4],%L0x7ffffffaf1c0[5],%L0x7ffffffaf1c0[6],%L0x7ffffffaf1c0[7],
     %L0x7ffffffaf1c0[8],%L0x7ffffffaf1c0[9],%L0x7ffffffaf1c0[10],%L0x7ffffffaf1c0[11],
     %L0x7ffffffaf1c0[12],%L0x7ffffffaf1c0[13],%L0x7ffffffaf1c0[14],%L0x7ffffffaf1c0[15],
     %L0x7ffffffaf1c0[16],%L0x7ffffffaf1c0[17],%L0x7ffffffaf1c0[18],%L0x7ffffffaf1c0[19],
     %L0x7ffffffaf1c0[20],%L0x7ffffffaf1c0[21],%L0x7ffffffaf1c0[22],%L0x7ffffffaf1c0[23],
     %L0x7ffffffaf1c0[24],%L0x7ffffffaf1c0[25],%L0x7ffffffaf1c0[26],%L0x7ffffffaf1c0[27],
     %L0x7ffffffaf1c0[28],%L0x7ffffffaf1c0[29],%L0x7ffffffaf1c0[30],%L0x7ffffffaf1c0[31],
     %L0x7ffffffaf1c0[32],%L0x7ffffffaf1c0[33],%L0x7ffffffaf1c0[34],%L0x7ffffffaf1c0[35],
     %L0x7ffffffaf1c0[36],%L0x7ffffffaf1c0[37],%L0x7ffffffaf1c0[38],%L0x7ffffffaf1c0[39],
     %L0x7ffffffaf1c0[40],%L0x7ffffffaf1c0[41],%L0x7ffffffaf1c0[42],%L0x7ffffffaf1c0[43],
     %L0x7ffffffaf1c0[44],%L0x7ffffffaf1c0[45],%L0x7ffffffaf1c0[46],%L0x7ffffffaf1c0[47],
     %L0x7ffffffaf1c0[48],%L0x7ffffffaf1c0[49],%L0x7ffffffaf1c0[50],%L0x7ffffffaf1c0[51],
     %L0x7ffffffaf1c0[52],%L0x7ffffffaf1c0[53],%L0x7ffffffaf1c0[54],%L0x7ffffffaf1c0[55],
     %L0x7ffffffaf1c0[56],%L0x7ffffffaf1c0[57],%L0x7ffffffaf1c0[58],%L0x7ffffffaf1c0[59],
     %L0x7ffffffaf1c0[60],%L0x7ffffffaf1c0[61],%L0x7ffffffaf1c0[62],%L0x7ffffffaf1c0[63],
     %L0x7ffffffaf1c8[0],%L0x7ffffffaf1c8[1],%L0x7ffffffaf1c8[2],%L0x7ffffffaf1c8[3],
     %L0x7ffffffaf1c8[4],%L0x7ffffffaf1c8[5],%L0x7ffffffaf1c8[6],%L0x7ffffffaf1c8[7],
     %L0x7ffffffaf1c8[8],%L0x7ffffffaf1c8[9],%L0x7ffffffaf1c8[10],%L0x7ffffffaf1c8[11],
     %L0x7ffffffaf1c8[12],%L0x7ffffffaf1c8[13],%L0x7ffffffaf1c8[14],%L0x7ffffffaf1c8[15],
     %L0x7ffffffaf1c8[16],%L0x7ffffffaf1c8[17],%L0x7ffffffaf1c8[18],%L0x7ffffffaf1c8[19],
     %L0x7ffffffaf1c8[20],%L0x7ffffffaf1c8[21],%L0x7ffffffaf1c8[22],%L0x7ffffffaf1c8[23],
     %L0x7ffffffaf1c8[24],%L0x7ffffffaf1c8[25],%L0x7ffffffaf1c8[26],%L0x7ffffffaf1c8[27],
     %L0x7ffffffaf1c8[28],%L0x7ffffffaf1c8[29],%L0x7ffffffaf1c8[30],%L0x7ffffffaf1c8[31],
     %L0x7ffffffaf1c8[32],%L0x7ffffffaf1c8[33],%L0x7ffffffaf1c8[34],%L0x7ffffffaf1c8[35],
     %L0x7ffffffaf1c8[36],%L0x7ffffffaf1c8[37],%L0x7ffffffaf1c8[38],%L0x7ffffffaf1c8[39],
     %L0x7ffffffaf1c8[40],%L0x7ffffffaf1c8[41],%L0x7ffffffaf1c8[42],%L0x7ffffffaf1c8[43],
     %L0x7ffffffaf1c8[44],%L0x7ffffffaf1c8[45],%L0x7ffffffaf1c8[46],%L0x7ffffffaf1c8[47],
     %L0x7ffffffaf1c8[48],%L0x7ffffffaf1c8[49],%L0x7ffffffaf1c8[50],%L0x7ffffffaf1c8[51],
     %L0x7ffffffaf1c8[52],%L0x7ffffffaf1c8[53],%L0x7ffffffaf1c8[54],%L0x7ffffffaf1c8[55],
     %L0x7ffffffaf1c8[56],%L0x7ffffffaf1c8[57],%L0x7ffffffaf1c8[58],%L0x7ffffffaf1c8[59],
     %L0x7ffffffaf1c8[60],%L0x7ffffffaf1c8[61],%L0x7ffffffaf1c8[62],%L0x7ffffffaf1c8[63],
     %L0x7ffffffaf1d0[0],%L0x7ffffffaf1d0[1],%L0x7ffffffaf1d0[2],%L0x7ffffffaf1d0[3],
     %L0x7ffffffaf1d0[4],%L0x7ffffffaf1d0[5],%L0x7ffffffaf1d0[6],%L0x7ffffffaf1d0[7],
     %L0x7ffffffaf1d0[8],%L0x7ffffffaf1d0[9],%L0x7ffffffaf1d0[10],%L0x7ffffffaf1d0[11],
     %L0x7ffffffaf1d0[12],%L0x7ffffffaf1d0[13],%L0x7ffffffaf1d0[14],%L0x7ffffffaf1d0[15],
     %L0x7ffffffaf1d0[16],%L0x7ffffffaf1d0[17],%L0x7ffffffaf1d0[18],%L0x7ffffffaf1d0[19],
     %L0x7ffffffaf1d0[20],%L0x7ffffffaf1d0[21],%L0x7ffffffaf1d0[22],%L0x7ffffffaf1d0[23],
     %L0x7ffffffaf1d0[24],%L0x7ffffffaf1d0[25],%L0x7ffffffaf1d0[26],%L0x7ffffffaf1d0[27],
     %L0x7ffffffaf1d0[28],%L0x7ffffffaf1d0[29],%L0x7ffffffaf1d0[30],%L0x7ffffffaf1d0[31],
     %L0x7ffffffaf1d0[32],%L0x7ffffffaf1d0[33],%L0x7ffffffaf1d0[34],%L0x7ffffffaf1d0[35],
     %L0x7ffffffaf1d0[36],%L0x7ffffffaf1d0[37],%L0x7ffffffaf1d0[38],%L0x7ffffffaf1d0[39],
     %L0x7ffffffaf1d0[40],%L0x7ffffffaf1d0[41],%L0x7ffffffaf1d0[42],%L0x7ffffffaf1d0[43],
     %L0x7ffffffaf1d0[44],%L0x7ffffffaf1d0[45],%L0x7ffffffaf1d0[46],%L0x7ffffffaf1d0[47],
     %L0x7ffffffaf1d0[48],%L0x7ffffffaf1d0[49],%L0x7ffffffaf1d0[50],%L0x7ffffffaf1d0[51],
     %L0x7ffffffaf1d0[52],%L0x7ffffffaf1d0[53],%L0x7ffffffaf1d0[54],%L0x7ffffffaf1d0[55],
     %L0x7ffffffaf1d0[56],%L0x7ffffffaf1d0[57],%L0x7ffffffaf1d0[58],%L0x7ffffffaf1d0[59],
     %L0x7ffffffaf1d0[60],%L0x7ffffffaf1d0[61],%L0x7ffffffaf1d0[62],%L0x7ffffffaf1d0[63],
     %L0x7ffffffaf1d8[0],%L0x7ffffffaf1d8[1],%L0x7ffffffaf1d8[2],%L0x7ffffffaf1d8[3],
     %L0x7ffffffaf1d8[4],%L0x7ffffffaf1d8[5],%L0x7ffffffaf1d8[6],%L0x7ffffffaf1d8[7],
     %L0x7ffffffaf1d8[8],%L0x7ffffffaf1d8[9],%L0x7ffffffaf1d8[10],%L0x7ffffffaf1d8[11],
     %L0x7ffffffaf1d8[12],%L0x7ffffffaf1d8[13],%L0x7ffffffaf1d8[14],%L0x7ffffffaf1d8[15],
     %L0x7ffffffaf1d8[16],%L0x7ffffffaf1d8[17],%L0x7ffffffaf1d8[18],%L0x7ffffffaf1d8[19],
     %L0x7ffffffaf1d8[20],%L0x7ffffffaf1d8[21],%L0x7ffffffaf1d8[22],%L0x7ffffffaf1d8[23],
     %L0x7ffffffaf1d8[24],%L0x7ffffffaf1d8[25],%L0x7ffffffaf1d8[26],%L0x7ffffffaf1d8[27],
     %L0x7ffffffaf1d8[28],%L0x7ffffffaf1d8[29],%L0x7ffffffaf1d8[30],%L0x7ffffffaf1d8[31],
     %L0x7ffffffaf1d8[32],%L0x7ffffffaf1d8[33],%L0x7ffffffaf1d8[34],%L0x7ffffffaf1d8[35],
     %L0x7ffffffaf1d8[36],%L0x7ffffffaf1d8[37],%L0x7ffffffaf1d8[38],%L0x7ffffffaf1d8[39],
     %L0x7ffffffaf1d8[40],%L0x7ffffffaf1d8[41],%L0x7ffffffaf1d8[42],%L0x7ffffffaf1d8[43],
     %L0x7ffffffaf1d8[44],%L0x7ffffffaf1d8[45],%L0x7ffffffaf1d8[46],%L0x7ffffffaf1d8[47],
     %L0x7ffffffaf1d8[48],%L0x7ffffffaf1d8[49],%L0x7ffffffaf1d8[50],%L0x7ffffffaf1d8[51],
     %L0x7ffffffaf1d8[52],%L0x7ffffffaf1d8[53],%L0x7ffffffaf1d8[54],%L0x7ffffffaf1d8[55],
     %L0x7ffffffaf1d8[56],%L0x7ffffffaf1d8[57],%L0x7ffffffaf1d8[58],%L0x7ffffffaf1d8[59],
     %L0x7ffffffaf1d8[60],%L0x7ffffffaf1d8[61],%L0x7ffffffaf1d8[62],%L0x7ffffffaf1d8[63]];
(* vmovupd 0x20(%rsi),%ymm1                        #! EA = L0x7ffffffaf1e0; Value = 0x4dfb36788ff24492; PC = 0x55555557c649 *)
mov %ymm1
    [%L0x7ffffffaf1e0[0],%L0x7ffffffaf1e0[1],%L0x7ffffffaf1e0[2],%L0x7ffffffaf1e0[3],
     %L0x7ffffffaf1e0[4],%L0x7ffffffaf1e0[5],%L0x7ffffffaf1e0[6],%L0x7ffffffaf1e0[7],
     %L0x7ffffffaf1e0[8],%L0x7ffffffaf1e0[9],%L0x7ffffffaf1e0[10],%L0x7ffffffaf1e0[11],
     %L0x7ffffffaf1e0[12],%L0x7ffffffaf1e0[13],%L0x7ffffffaf1e0[14],%L0x7ffffffaf1e0[15],
     %L0x7ffffffaf1e0[16],%L0x7ffffffaf1e0[17],%L0x7ffffffaf1e0[18],%L0x7ffffffaf1e0[19],
     %L0x7ffffffaf1e0[20],%L0x7ffffffaf1e0[21],%L0x7ffffffaf1e0[22],%L0x7ffffffaf1e0[23],
     %L0x7ffffffaf1e0[24],%L0x7ffffffaf1e0[25],%L0x7ffffffaf1e0[26],%L0x7ffffffaf1e0[27],
     %L0x7ffffffaf1e0[28],%L0x7ffffffaf1e0[29],%L0x7ffffffaf1e0[30],%L0x7ffffffaf1e0[31],
     %L0x7ffffffaf1e0[32],%L0x7ffffffaf1e0[33],%L0x7ffffffaf1e0[34],%L0x7ffffffaf1e0[35],
     %L0x7ffffffaf1e0[36],%L0x7ffffffaf1e0[37],%L0x7ffffffaf1e0[38],%L0x7ffffffaf1e0[39],
     %L0x7ffffffaf1e0[40],%L0x7ffffffaf1e0[41],%L0x7ffffffaf1e0[42],%L0x7ffffffaf1e0[43],
     %L0x7ffffffaf1e0[44],%L0x7ffffffaf1e0[45],%L0x7ffffffaf1e0[46],%L0x7ffffffaf1e0[47],
     %L0x7ffffffaf1e0[48],%L0x7ffffffaf1e0[49],%L0x7ffffffaf1e0[50],%L0x7ffffffaf1e0[51],
     %L0x7ffffffaf1e0[52],%L0x7ffffffaf1e0[53],%L0x7ffffffaf1e0[54],%L0x7ffffffaf1e0[55],
     %L0x7ffffffaf1e0[56],%L0x7ffffffaf1e0[57],%L0x7ffffffaf1e0[58],%L0x7ffffffaf1e0[59],
     %L0x7ffffffaf1e0[60],%L0x7ffffffaf1e0[61],%L0x7ffffffaf1e0[62],%L0x7ffffffaf1e0[63],
     %L0x7ffffffaf1e8[0],%L0x7ffffffaf1e8[1],%L0x7ffffffaf1e8[2],%L0x7ffffffaf1e8[3],
     %L0x7ffffffaf1e8[4],%L0x7ffffffaf1e8[5],%L0x7ffffffaf1e8[6],%L0x7ffffffaf1e8[7],
     %L0x7ffffffaf1e8[8],%L0x7ffffffaf1e8[9],%L0x7ffffffaf1e8[10],%L0x7ffffffaf1e8[11],
     %L0x7ffffffaf1e8[12],%L0x7ffffffaf1e8[13],%L0x7ffffffaf1e8[14],%L0x7ffffffaf1e8[15],
     %L0x7ffffffaf1e8[16],%L0x7ffffffaf1e8[17],%L0x7ffffffaf1e8[18],%L0x7ffffffaf1e8[19],
     %L0x7ffffffaf1e8[20],%L0x7ffffffaf1e8[21],%L0x7ffffffaf1e8[22],%L0x7ffffffaf1e8[23],
     %L0x7ffffffaf1e8[24],%L0x7ffffffaf1e8[25],%L0x7ffffffaf1e8[26],%L0x7ffffffaf1e8[27],
     %L0x7ffffffaf1e8[28],%L0x7ffffffaf1e8[29],%L0x7ffffffaf1e8[30],%L0x7ffffffaf1e8[31],
     %L0x7ffffffaf1e8[32],%L0x7ffffffaf1e8[33],%L0x7ffffffaf1e8[34],%L0x7ffffffaf1e8[35],
     %L0x7ffffffaf1e8[36],%L0x7ffffffaf1e8[37],%L0x7ffffffaf1e8[38],%L0x7ffffffaf1e8[39],
     %L0x7ffffffaf1e8[40],%L0x7ffffffaf1e8[41],%L0x7ffffffaf1e8[42],%L0x7ffffffaf1e8[43],
     %L0x7ffffffaf1e8[44],%L0x7ffffffaf1e8[45],%L0x7ffffffaf1e8[46],%L0x7ffffffaf1e8[47],
     %L0x7ffffffaf1e8[48],%L0x7ffffffaf1e8[49],%L0x7ffffffaf1e8[50],%L0x7ffffffaf1e8[51],
     %L0x7ffffffaf1e8[52],%L0x7ffffffaf1e8[53],%L0x7ffffffaf1e8[54],%L0x7ffffffaf1e8[55],
     %L0x7ffffffaf1e8[56],%L0x7ffffffaf1e8[57],%L0x7ffffffaf1e8[58],%L0x7ffffffaf1e8[59],
     %L0x7ffffffaf1e8[60],%L0x7ffffffaf1e8[61],%L0x7ffffffaf1e8[62],%L0x7ffffffaf1e8[63],
     %L0x7ffffffaf1f0[0],%L0x7ffffffaf1f0[1],%L0x7ffffffaf1f0[2],%L0x7ffffffaf1f0[3],
     %L0x7ffffffaf1f0[4],%L0x7ffffffaf1f0[5],%L0x7ffffffaf1f0[6],%L0x7ffffffaf1f0[7],
     %L0x7ffffffaf1f0[8],%L0x7ffffffaf1f0[9],%L0x7ffffffaf1f0[10],%L0x7ffffffaf1f0[11],
     %L0x7ffffffaf1f0[12],%L0x7ffffffaf1f0[13],%L0x7ffffffaf1f0[14],%L0x7ffffffaf1f0[15],
     %L0x7ffffffaf1f0[16],%L0x7ffffffaf1f0[17],%L0x7ffffffaf1f0[18],%L0x7ffffffaf1f0[19],
     %L0x7ffffffaf1f0[20],%L0x7ffffffaf1f0[21],%L0x7ffffffaf1f0[22],%L0x7ffffffaf1f0[23],
     %L0x7ffffffaf1f0[24],%L0x7ffffffaf1f0[25],%L0x7ffffffaf1f0[26],%L0x7ffffffaf1f0[27],
     %L0x7ffffffaf1f0[28],%L0x7ffffffaf1f0[29],%L0x7ffffffaf1f0[30],%L0x7ffffffaf1f0[31],
     %L0x7ffffffaf1f0[32],%L0x7ffffffaf1f0[33],%L0x7ffffffaf1f0[34],%L0x7ffffffaf1f0[35],
     %L0x7ffffffaf1f0[36],%L0x7ffffffaf1f0[37],%L0x7ffffffaf1f0[38],%L0x7ffffffaf1f0[39],
     %L0x7ffffffaf1f0[40],%L0x7ffffffaf1f0[41],%L0x7ffffffaf1f0[42],%L0x7ffffffaf1f0[43],
     %L0x7ffffffaf1f0[44],%L0x7ffffffaf1f0[45],%L0x7ffffffaf1f0[46],%L0x7ffffffaf1f0[47],
     %L0x7ffffffaf1f0[48],%L0x7ffffffaf1f0[49],%L0x7ffffffaf1f0[50],%L0x7ffffffaf1f0[51],
     %L0x7ffffffaf1f0[52],%L0x7ffffffaf1f0[53],%L0x7ffffffaf1f0[54],%L0x7ffffffaf1f0[55],
     %L0x7ffffffaf1f0[56],%L0x7ffffffaf1f0[57],%L0x7ffffffaf1f0[58],%L0x7ffffffaf1f0[59],
     %L0x7ffffffaf1f0[60],%L0x7ffffffaf1f0[61],%L0x7ffffffaf1f0[62],%L0x7ffffffaf1f0[63],
     %L0x7ffffffaf1f8[0],%L0x7ffffffaf1f8[1],%L0x7ffffffaf1f8[2],%L0x7ffffffaf1f8[3],
     %L0x7ffffffaf1f8[4],%L0x7ffffffaf1f8[5],%L0x7ffffffaf1f8[6],%L0x7ffffffaf1f8[7],
     %L0x7ffffffaf1f8[8],%L0x7ffffffaf1f8[9],%L0x7ffffffaf1f8[10],%L0x7ffffffaf1f8[11],
     %L0x7ffffffaf1f8[12],%L0x7ffffffaf1f8[13],%L0x7ffffffaf1f8[14],%L0x7ffffffaf1f8[15],
     %L0x7ffffffaf1f8[16],%L0x7ffffffaf1f8[17],%L0x7ffffffaf1f8[18],%L0x7ffffffaf1f8[19],
     %L0x7ffffffaf1f8[20],%L0x7ffffffaf1f8[21],%L0x7ffffffaf1f8[22],%L0x7ffffffaf1f8[23],
     %L0x7ffffffaf1f8[24],%L0x7ffffffaf1f8[25],%L0x7ffffffaf1f8[26],%L0x7ffffffaf1f8[27],
     %L0x7ffffffaf1f8[28],%L0x7ffffffaf1f8[29],%L0x7ffffffaf1f8[30],%L0x7ffffffaf1f8[31],
     %L0x7ffffffaf1f8[32],%L0x7ffffffaf1f8[33],%L0x7ffffffaf1f8[34],%L0x7ffffffaf1f8[35],
     %L0x7ffffffaf1f8[36],%L0x7ffffffaf1f8[37],%L0x7ffffffaf1f8[38],%L0x7ffffffaf1f8[39],
     %L0x7ffffffaf1f8[40],%L0x7ffffffaf1f8[41],%L0x7ffffffaf1f8[42],%L0x7ffffffaf1f8[43],
     %L0x7ffffffaf1f8[44],%L0x7ffffffaf1f8[45],%L0x7ffffffaf1f8[46],%L0x7ffffffaf1f8[47],
     %L0x7ffffffaf1f8[48],%L0x7ffffffaf1f8[49],%L0x7ffffffaf1f8[50],%L0x7ffffffaf1f8[51],
     %L0x7ffffffaf1f8[52],%L0x7ffffffaf1f8[53],%L0x7ffffffaf1f8[54],%L0x7ffffffaf1f8[55],
     %L0x7ffffffaf1f8[56],%L0x7ffffffaf1f8[57],%L0x7ffffffaf1f8[58],%L0x7ffffffaf1f8[59],
     %L0x7ffffffaf1f8[60],%L0x7ffffffaf1f8[61],%L0x7ffffffaf1f8[62],%L0x7ffffffaf1f8[63]];
(* vmovupd 0x40(%rsi),%ymm2                        #! EA = L0x7ffffffaf200; Value = 0x8afe4dc102c021d4; PC = 0x55555557c64e *)
mov %ymm2
    [%L0x7ffffffaf200[0],%L0x7ffffffaf200[1],%L0x7ffffffaf200[2],%L0x7ffffffaf200[3],
     %L0x7ffffffaf200[4],%L0x7ffffffaf200[5],%L0x7ffffffaf200[6],%L0x7ffffffaf200[7],
     %L0x7ffffffaf200[8],%L0x7ffffffaf200[9],%L0x7ffffffaf200[10],%L0x7ffffffaf200[11],
     %L0x7ffffffaf200[12],%L0x7ffffffaf200[13],%L0x7ffffffaf200[14],%L0x7ffffffaf200[15],
     %L0x7ffffffaf200[16],%L0x7ffffffaf200[17],%L0x7ffffffaf200[18],%L0x7ffffffaf200[19],
     %L0x7ffffffaf200[20],%L0x7ffffffaf200[21],%L0x7ffffffaf200[22],%L0x7ffffffaf200[23],
     %L0x7ffffffaf200[24],%L0x7ffffffaf200[25],%L0x7ffffffaf200[26],%L0x7ffffffaf200[27],
     %L0x7ffffffaf200[28],%L0x7ffffffaf200[29],%L0x7ffffffaf200[30],%L0x7ffffffaf200[31],
     %L0x7ffffffaf200[32],%L0x7ffffffaf200[33],%L0x7ffffffaf200[34],%L0x7ffffffaf200[35],
     %L0x7ffffffaf200[36],%L0x7ffffffaf200[37],%L0x7ffffffaf200[38],%L0x7ffffffaf200[39],
     %L0x7ffffffaf200[40],%L0x7ffffffaf200[41],%L0x7ffffffaf200[42],%L0x7ffffffaf200[43],
     %L0x7ffffffaf200[44],%L0x7ffffffaf200[45],%L0x7ffffffaf200[46],%L0x7ffffffaf200[47],
     %L0x7ffffffaf200[48],%L0x7ffffffaf200[49],%L0x7ffffffaf200[50],%L0x7ffffffaf200[51],
     %L0x7ffffffaf200[52],%L0x7ffffffaf200[53],%L0x7ffffffaf200[54],%L0x7ffffffaf200[55],
     %L0x7ffffffaf200[56],%L0x7ffffffaf200[57],%L0x7ffffffaf200[58],%L0x7ffffffaf200[59],
     %L0x7ffffffaf200[60],%L0x7ffffffaf200[61],%L0x7ffffffaf200[62],%L0x7ffffffaf200[63],
     %L0x7ffffffaf208[0],%L0x7ffffffaf208[1],%L0x7ffffffaf208[2],%L0x7ffffffaf208[3],
     %L0x7ffffffaf208[4],%L0x7ffffffaf208[5],%L0x7ffffffaf208[6],%L0x7ffffffaf208[7],
     %L0x7ffffffaf208[8],%L0x7ffffffaf208[9],%L0x7ffffffaf208[10],%L0x7ffffffaf208[11],
     %L0x7ffffffaf208[12],%L0x7ffffffaf208[13],%L0x7ffffffaf208[14],%L0x7ffffffaf208[15],
     %L0x7ffffffaf208[16],%L0x7ffffffaf208[17],%L0x7ffffffaf208[18],%L0x7ffffffaf208[19],
     %L0x7ffffffaf208[20],%L0x7ffffffaf208[21],%L0x7ffffffaf208[22],%L0x7ffffffaf208[23],
     %L0x7ffffffaf208[24],%L0x7ffffffaf208[25],%L0x7ffffffaf208[26],%L0x7ffffffaf208[27],
     %L0x7ffffffaf208[28],%L0x7ffffffaf208[29],%L0x7ffffffaf208[30],%L0x7ffffffaf208[31],
     %L0x7ffffffaf208[32],%L0x7ffffffaf208[33],%L0x7ffffffaf208[34],%L0x7ffffffaf208[35],
     %L0x7ffffffaf208[36],%L0x7ffffffaf208[37],%L0x7ffffffaf208[38],%L0x7ffffffaf208[39],
     %L0x7ffffffaf208[40],%L0x7ffffffaf208[41],%L0x7ffffffaf208[42],%L0x7ffffffaf208[43],
     %L0x7ffffffaf208[44],%L0x7ffffffaf208[45],%L0x7ffffffaf208[46],%L0x7ffffffaf208[47],
     %L0x7ffffffaf208[48],%L0x7ffffffaf208[49],%L0x7ffffffaf208[50],%L0x7ffffffaf208[51],
     %L0x7ffffffaf208[52],%L0x7ffffffaf208[53],%L0x7ffffffaf208[54],%L0x7ffffffaf208[55],
     %L0x7ffffffaf208[56],%L0x7ffffffaf208[57],%L0x7ffffffaf208[58],%L0x7ffffffaf208[59],
     %L0x7ffffffaf208[60],%L0x7ffffffaf208[61],%L0x7ffffffaf208[62],%L0x7ffffffaf208[63],
     %L0x7ffffffaf210[0],%L0x7ffffffaf210[1],%L0x7ffffffaf210[2],%L0x7ffffffaf210[3],
     %L0x7ffffffaf210[4],%L0x7ffffffaf210[5],%L0x7ffffffaf210[6],%L0x7ffffffaf210[7],
     %L0x7ffffffaf210[8],%L0x7ffffffaf210[9],%L0x7ffffffaf210[10],%L0x7ffffffaf210[11],
     %L0x7ffffffaf210[12],%L0x7ffffffaf210[13],%L0x7ffffffaf210[14],%L0x7ffffffaf210[15],
     %L0x7ffffffaf210[16],%L0x7ffffffaf210[17],%L0x7ffffffaf210[18],%L0x7ffffffaf210[19],
     %L0x7ffffffaf210[20],%L0x7ffffffaf210[21],%L0x7ffffffaf210[22],%L0x7ffffffaf210[23],
     %L0x7ffffffaf210[24],%L0x7ffffffaf210[25],%L0x7ffffffaf210[26],%L0x7ffffffaf210[27],
     %L0x7ffffffaf210[28],%L0x7ffffffaf210[29],%L0x7ffffffaf210[30],%L0x7ffffffaf210[31],
     %L0x7ffffffaf210[32],%L0x7ffffffaf210[33],%L0x7ffffffaf210[34],%L0x7ffffffaf210[35],
     %L0x7ffffffaf210[36],%L0x7ffffffaf210[37],%L0x7ffffffaf210[38],%L0x7ffffffaf210[39],
     %L0x7ffffffaf210[40],%L0x7ffffffaf210[41],%L0x7ffffffaf210[42],%L0x7ffffffaf210[43],
     %L0x7ffffffaf210[44],%L0x7ffffffaf210[45],%L0x7ffffffaf210[46],%L0x7ffffffaf210[47],
     %L0x7ffffffaf210[48],%L0x7ffffffaf210[49],%L0x7ffffffaf210[50],%L0x7ffffffaf210[51],
     %L0x7ffffffaf210[52],%L0x7ffffffaf210[53],%L0x7ffffffaf210[54],%L0x7ffffffaf210[55],
     %L0x7ffffffaf210[56],%L0x7ffffffaf210[57],%L0x7ffffffaf210[58],%L0x7ffffffaf210[59],
     %L0x7ffffffaf210[60],%L0x7ffffffaf210[61],%L0x7ffffffaf210[62],%L0x7ffffffaf210[63],
     %L0x7ffffffaf218[0],%L0x7ffffffaf218[1],%L0x7ffffffaf218[2],%L0x7ffffffaf218[3],
     %L0x7ffffffaf218[4],%L0x7ffffffaf218[5],%L0x7ffffffaf218[6],%L0x7ffffffaf218[7],
     %L0x7ffffffaf218[8],%L0x7ffffffaf218[9],%L0x7ffffffaf218[10],%L0x7ffffffaf218[11],
     %L0x7ffffffaf218[12],%L0x7ffffffaf218[13],%L0x7ffffffaf218[14],%L0x7ffffffaf218[15],
     %L0x7ffffffaf218[16],%L0x7ffffffaf218[17],%L0x7ffffffaf218[18],%L0x7ffffffaf218[19],
     %L0x7ffffffaf218[20],%L0x7ffffffaf218[21],%L0x7ffffffaf218[22],%L0x7ffffffaf218[23],
     %L0x7ffffffaf218[24],%L0x7ffffffaf218[25],%L0x7ffffffaf218[26],%L0x7ffffffaf218[27],
     %L0x7ffffffaf218[28],%L0x7ffffffaf218[29],%L0x7ffffffaf218[30],%L0x7ffffffaf218[31],
     %L0x7ffffffaf218[32],%L0x7ffffffaf218[33],%L0x7ffffffaf218[34],%L0x7ffffffaf218[35],
     %L0x7ffffffaf218[36],%L0x7ffffffaf218[37],%L0x7ffffffaf218[38],%L0x7ffffffaf218[39],
     %L0x7ffffffaf218[40],%L0x7ffffffaf218[41],%L0x7ffffffaf218[42],%L0x7ffffffaf218[43],
     %L0x7ffffffaf218[44],%L0x7ffffffaf218[45],%L0x7ffffffaf218[46],%L0x7ffffffaf218[47],
     %L0x7ffffffaf218[48],%L0x7ffffffaf218[49],%L0x7ffffffaf218[50],%L0x7ffffffaf218[51],
     %L0x7ffffffaf218[52],%L0x7ffffffaf218[53],%L0x7ffffffaf218[54],%L0x7ffffffaf218[55],
     %L0x7ffffffaf218[56],%L0x7ffffffaf218[57],%L0x7ffffffaf218[58],%L0x7ffffffaf218[59],
     %L0x7ffffffaf218[60],%L0x7ffffffaf218[61],%L0x7ffffffaf218[62],%L0x7ffffffaf218[63]];
(* vmovupd (%rdx),%ymm3                            #! EA = L0x7ffffffaefc0; Value = 0x0000000000000000; PC = 0x55555557c653 *)
mov %ymm3
    [%L0x7ffffffaefc0[0],%L0x7ffffffaefc0[1],%L0x7ffffffaefc0[2],%L0x7ffffffaefc0[3],
     %L0x7ffffffaefc0[4],%L0x7ffffffaefc0[5],%L0x7ffffffaefc0[6],%L0x7ffffffaefc0[7],
     %L0x7ffffffaefc0[8],%L0x7ffffffaefc0[9],%L0x7ffffffaefc0[10],%L0x7ffffffaefc0[11],
     %L0x7ffffffaefc0[12],%L0x7ffffffaefc0[13],%L0x7ffffffaefc0[14],%L0x7ffffffaefc0[15],
     %L0x7ffffffaefc0[16],%L0x7ffffffaefc0[17],%L0x7ffffffaefc0[18],%L0x7ffffffaefc0[19],
     %L0x7ffffffaefc0[20],%L0x7ffffffaefc0[21],%L0x7ffffffaefc0[22],%L0x7ffffffaefc0[23],
     %L0x7ffffffaefc0[24],%L0x7ffffffaefc0[25],%L0x7ffffffaefc0[26],%L0x7ffffffaefc0[27],
     %L0x7ffffffaefc0[28],%L0x7ffffffaefc0[29],%L0x7ffffffaefc0[30],%L0x7ffffffaefc0[31],
     %L0x7ffffffaefc0[32],%L0x7ffffffaefc0[33],%L0x7ffffffaefc0[34],%L0x7ffffffaefc0[35],
     %L0x7ffffffaefc0[36],%L0x7ffffffaefc0[37],%L0x7ffffffaefc0[38],%L0x7ffffffaefc0[39],
     %L0x7ffffffaefc0[40],%L0x7ffffffaefc0[41],%L0x7ffffffaefc0[42],%L0x7ffffffaefc0[43],
     %L0x7ffffffaefc0[44],%L0x7ffffffaefc0[45],%L0x7ffffffaefc0[46],%L0x7ffffffaefc0[47],
     %L0x7ffffffaefc0[48],%L0x7ffffffaefc0[49],%L0x7ffffffaefc0[50],%L0x7ffffffaefc0[51],
     %L0x7ffffffaefc0[52],%L0x7ffffffaefc0[53],%L0x7ffffffaefc0[54],%L0x7ffffffaefc0[55],
     %L0x7ffffffaefc0[56],%L0x7ffffffaefc0[57],%L0x7ffffffaefc0[58],%L0x7ffffffaefc0[59],
     %L0x7ffffffaefc0[60],%L0x7ffffffaefc0[61],%L0x7ffffffaefc0[62],%L0x7ffffffaefc0[63],
     %L0x7ffffffaefc8[0],%L0x7ffffffaefc8[1],%L0x7ffffffaefc8[2],%L0x7ffffffaefc8[3],
     %L0x7ffffffaefc8[4],%L0x7ffffffaefc8[5],%L0x7ffffffaefc8[6],%L0x7ffffffaefc8[7],
     %L0x7ffffffaefc8[8],%L0x7ffffffaefc8[9],%L0x7ffffffaefc8[10],%L0x7ffffffaefc8[11],
     %L0x7ffffffaefc8[12],%L0x7ffffffaefc8[13],%L0x7ffffffaefc8[14],%L0x7ffffffaefc8[15],
     %L0x7ffffffaefc8[16],%L0x7ffffffaefc8[17],%L0x7ffffffaefc8[18],%L0x7ffffffaefc8[19],
     %L0x7ffffffaefc8[20],%L0x7ffffffaefc8[21],%L0x7ffffffaefc8[22],%L0x7ffffffaefc8[23],
     %L0x7ffffffaefc8[24],%L0x7ffffffaefc8[25],%L0x7ffffffaefc8[26],%L0x7ffffffaefc8[27],
     %L0x7ffffffaefc8[28],%L0x7ffffffaefc8[29],%L0x7ffffffaefc8[30],%L0x7ffffffaefc8[31],
     %L0x7ffffffaefc8[32],%L0x7ffffffaefc8[33],%L0x7ffffffaefc8[34],%L0x7ffffffaefc8[35],
     %L0x7ffffffaefc8[36],%L0x7ffffffaefc8[37],%L0x7ffffffaefc8[38],%L0x7ffffffaefc8[39],
     %L0x7ffffffaefc8[40],%L0x7ffffffaefc8[41],%L0x7ffffffaefc8[42],%L0x7ffffffaefc8[43],
     %L0x7ffffffaefc8[44],%L0x7ffffffaefc8[45],%L0x7ffffffaefc8[46],%L0x7ffffffaefc8[47],
     %L0x7ffffffaefc8[48],%L0x7ffffffaefc8[49],%L0x7ffffffaefc8[50],%L0x7ffffffaefc8[51],
     %L0x7ffffffaefc8[52],%L0x7ffffffaefc8[53],%L0x7ffffffaefc8[54],%L0x7ffffffaefc8[55],
     %L0x7ffffffaefc8[56],%L0x7ffffffaefc8[57],%L0x7ffffffaefc8[58],%L0x7ffffffaefc8[59],
     %L0x7ffffffaefc8[60],%L0x7ffffffaefc8[61],%L0x7ffffffaefc8[62],%L0x7ffffffaefc8[63],
     %L0x7ffffffaefd0[0],%L0x7ffffffaefd0[1],%L0x7ffffffaefd0[2],%L0x7ffffffaefd0[3],
     %L0x7ffffffaefd0[4],%L0x7ffffffaefd0[5],%L0x7ffffffaefd0[6],%L0x7ffffffaefd0[7],
     %L0x7ffffffaefd0[8],%L0x7ffffffaefd0[9],%L0x7ffffffaefd0[10],%L0x7ffffffaefd0[11],
     %L0x7ffffffaefd0[12],%L0x7ffffffaefd0[13],%L0x7ffffffaefd0[14],%L0x7ffffffaefd0[15],
     %L0x7ffffffaefd0[16],%L0x7ffffffaefd0[17],%L0x7ffffffaefd0[18],%L0x7ffffffaefd0[19],
     %L0x7ffffffaefd0[20],%L0x7ffffffaefd0[21],%L0x7ffffffaefd0[22],%L0x7ffffffaefd0[23],
     %L0x7ffffffaefd0[24],%L0x7ffffffaefd0[25],%L0x7ffffffaefd0[26],%L0x7ffffffaefd0[27],
     %L0x7ffffffaefd0[28],%L0x7ffffffaefd0[29],%L0x7ffffffaefd0[30],%L0x7ffffffaefd0[31],
     %L0x7ffffffaefd0[32],%L0x7ffffffaefd0[33],%L0x7ffffffaefd0[34],%L0x7ffffffaefd0[35],
     %L0x7ffffffaefd0[36],%L0x7ffffffaefd0[37],%L0x7ffffffaefd0[38],%L0x7ffffffaefd0[39],
     %L0x7ffffffaefd0[40],%L0x7ffffffaefd0[41],%L0x7ffffffaefd0[42],%L0x7ffffffaefd0[43],
     %L0x7ffffffaefd0[44],%L0x7ffffffaefd0[45],%L0x7ffffffaefd0[46],%L0x7ffffffaefd0[47],
     %L0x7ffffffaefd0[48],%L0x7ffffffaefd0[49],%L0x7ffffffaefd0[50],%L0x7ffffffaefd0[51],
     %L0x7ffffffaefd0[52],%L0x7ffffffaefd0[53],%L0x7ffffffaefd0[54],%L0x7ffffffaefd0[55],
     %L0x7ffffffaefd0[56],%L0x7ffffffaefd0[57],%L0x7ffffffaefd0[58],%L0x7ffffffaefd0[59],
     %L0x7ffffffaefd0[60],%L0x7ffffffaefd0[61],%L0x7ffffffaefd0[62],%L0x7ffffffaefd0[63],
     %L0x7ffffffaefd8[0],%L0x7ffffffaefd8[1],%L0x7ffffffaefd8[2],%L0x7ffffffaefd8[3],
     %L0x7ffffffaefd8[4],%L0x7ffffffaefd8[5],%L0x7ffffffaefd8[6],%L0x7ffffffaefd8[7],
     %L0x7ffffffaefd8[8],%L0x7ffffffaefd8[9],%L0x7ffffffaefd8[10],%L0x7ffffffaefd8[11],
     %L0x7ffffffaefd8[12],%L0x7ffffffaefd8[13],%L0x7ffffffaefd8[14],%L0x7ffffffaefd8[15],
     %L0x7ffffffaefd8[16],%L0x7ffffffaefd8[17],%L0x7ffffffaefd8[18],%L0x7ffffffaefd8[19],
     %L0x7ffffffaefd8[20],%L0x7ffffffaefd8[21],%L0x7ffffffaefd8[22],%L0x7ffffffaefd8[23],
     %L0x7ffffffaefd8[24],%L0x7ffffffaefd8[25],%L0x7ffffffaefd8[26],%L0x7ffffffaefd8[27],
     %L0x7ffffffaefd8[28],%L0x7ffffffaefd8[29],%L0x7ffffffaefd8[30],%L0x7ffffffaefd8[31],
     %L0x7ffffffaefd8[32],%L0x7ffffffaefd8[33],%L0x7ffffffaefd8[34],%L0x7ffffffaefd8[35],
     %L0x7ffffffaefd8[36],%L0x7ffffffaefd8[37],%L0x7ffffffaefd8[38],%L0x7ffffffaefd8[39],
     %L0x7ffffffaefd8[40],%L0x7ffffffaefd8[41],%L0x7ffffffaefd8[42],%L0x7ffffffaefd8[43],
     %L0x7ffffffaefd8[44],%L0x7ffffffaefd8[45],%L0x7ffffffaefd8[46],%L0x7ffffffaefd8[47],
     %L0x7ffffffaefd8[48],%L0x7ffffffaefd8[49],%L0x7ffffffaefd8[50],%L0x7ffffffaefd8[51],
     %L0x7ffffffaefd8[52],%L0x7ffffffaefd8[53],%L0x7ffffffaefd8[54],%L0x7ffffffaefd8[55],
     %L0x7ffffffaefd8[56],%L0x7ffffffaefd8[57],%L0x7ffffffaefd8[58],%L0x7ffffffaefd8[59],
     %L0x7ffffffaefd8[60],%L0x7ffffffaefd8[61],%L0x7ffffffaefd8[62],%L0x7ffffffaefd8[63]];
(* vmovupd 0x20(%rdx),%ymm4                        #! EA = L0x7ffffffaefe0; Value = 0x0000000000000000; PC = 0x55555557c657 *)
mov %ymm4
    [%L0x7ffffffaefe0[0],%L0x7ffffffaefe0[1],%L0x7ffffffaefe0[2],%L0x7ffffffaefe0[3],
     %L0x7ffffffaefe0[4],%L0x7ffffffaefe0[5],%L0x7ffffffaefe0[6],%L0x7ffffffaefe0[7],
     %L0x7ffffffaefe0[8],%L0x7ffffffaefe0[9],%L0x7ffffffaefe0[10],%L0x7ffffffaefe0[11],
     %L0x7ffffffaefe0[12],%L0x7ffffffaefe0[13],%L0x7ffffffaefe0[14],%L0x7ffffffaefe0[15],
     %L0x7ffffffaefe0[16],%L0x7ffffffaefe0[17],%L0x7ffffffaefe0[18],%L0x7ffffffaefe0[19],
     %L0x7ffffffaefe0[20],%L0x7ffffffaefe0[21],%L0x7ffffffaefe0[22],%L0x7ffffffaefe0[23],
     %L0x7ffffffaefe0[24],%L0x7ffffffaefe0[25],%L0x7ffffffaefe0[26],%L0x7ffffffaefe0[27],
     %L0x7ffffffaefe0[28],%L0x7ffffffaefe0[29],%L0x7ffffffaefe0[30],%L0x7ffffffaefe0[31],
     %L0x7ffffffaefe0[32],%L0x7ffffffaefe0[33],%L0x7ffffffaefe0[34],%L0x7ffffffaefe0[35],
     %L0x7ffffffaefe0[36],%L0x7ffffffaefe0[37],%L0x7ffffffaefe0[38],%L0x7ffffffaefe0[39],
     %L0x7ffffffaefe0[40],%L0x7ffffffaefe0[41],%L0x7ffffffaefe0[42],%L0x7ffffffaefe0[43],
     %L0x7ffffffaefe0[44],%L0x7ffffffaefe0[45],%L0x7ffffffaefe0[46],%L0x7ffffffaefe0[47],
     %L0x7ffffffaefe0[48],%L0x7ffffffaefe0[49],%L0x7ffffffaefe0[50],%L0x7ffffffaefe0[51],
     %L0x7ffffffaefe0[52],%L0x7ffffffaefe0[53],%L0x7ffffffaefe0[54],%L0x7ffffffaefe0[55],
     %L0x7ffffffaefe0[56],%L0x7ffffffaefe0[57],%L0x7ffffffaefe0[58],%L0x7ffffffaefe0[59],
     %L0x7ffffffaefe0[60],%L0x7ffffffaefe0[61],%L0x7ffffffaefe0[62],%L0x7ffffffaefe0[63],
     %L0x7ffffffaefe8[0],%L0x7ffffffaefe8[1],%L0x7ffffffaefe8[2],%L0x7ffffffaefe8[3],
     %L0x7ffffffaefe8[4],%L0x7ffffffaefe8[5],%L0x7ffffffaefe8[6],%L0x7ffffffaefe8[7],
     %L0x7ffffffaefe8[8],%L0x7ffffffaefe8[9],%L0x7ffffffaefe8[10],%L0x7ffffffaefe8[11],
     %L0x7ffffffaefe8[12],%L0x7ffffffaefe8[13],%L0x7ffffffaefe8[14],%L0x7ffffffaefe8[15],
     %L0x7ffffffaefe8[16],%L0x7ffffffaefe8[17],%L0x7ffffffaefe8[18],%L0x7ffffffaefe8[19],
     %L0x7ffffffaefe8[20],%L0x7ffffffaefe8[21],%L0x7ffffffaefe8[22],%L0x7ffffffaefe8[23],
     %L0x7ffffffaefe8[24],%L0x7ffffffaefe8[25],%L0x7ffffffaefe8[26],%L0x7ffffffaefe8[27],
     %L0x7ffffffaefe8[28],%L0x7ffffffaefe8[29],%L0x7ffffffaefe8[30],%L0x7ffffffaefe8[31],
     %L0x7ffffffaefe8[32],%L0x7ffffffaefe8[33],%L0x7ffffffaefe8[34],%L0x7ffffffaefe8[35],
     %L0x7ffffffaefe8[36],%L0x7ffffffaefe8[37],%L0x7ffffffaefe8[38],%L0x7ffffffaefe8[39],
     %L0x7ffffffaefe8[40],%L0x7ffffffaefe8[41],%L0x7ffffffaefe8[42],%L0x7ffffffaefe8[43],
     %L0x7ffffffaefe8[44],%L0x7ffffffaefe8[45],%L0x7ffffffaefe8[46],%L0x7ffffffaefe8[47],
     %L0x7ffffffaefe8[48],%L0x7ffffffaefe8[49],%L0x7ffffffaefe8[50],%L0x7ffffffaefe8[51],
     %L0x7ffffffaefe8[52],%L0x7ffffffaefe8[53],%L0x7ffffffaefe8[54],%L0x7ffffffaefe8[55],
     %L0x7ffffffaefe8[56],%L0x7ffffffaefe8[57],%L0x7ffffffaefe8[58],%L0x7ffffffaefe8[59],
     %L0x7ffffffaefe8[60],%L0x7ffffffaefe8[61],%L0x7ffffffaefe8[62],%L0x7ffffffaefe8[63],
     %L0x7ffffffaeff0[0],%L0x7ffffffaeff0[1],%L0x7ffffffaeff0[2],%L0x7ffffffaeff0[3],
     %L0x7ffffffaeff0[4],%L0x7ffffffaeff0[5],%L0x7ffffffaeff0[6],%L0x7ffffffaeff0[7],
     %L0x7ffffffaeff0[8],%L0x7ffffffaeff0[9],%L0x7ffffffaeff0[10],%L0x7ffffffaeff0[11],
     %L0x7ffffffaeff0[12],%L0x7ffffffaeff0[13],%L0x7ffffffaeff0[14],%L0x7ffffffaeff0[15],
     %L0x7ffffffaeff0[16],%L0x7ffffffaeff0[17],%L0x7ffffffaeff0[18],%L0x7ffffffaeff0[19],
     %L0x7ffffffaeff0[20],%L0x7ffffffaeff0[21],%L0x7ffffffaeff0[22],%L0x7ffffffaeff0[23],
     %L0x7ffffffaeff0[24],%L0x7ffffffaeff0[25],%L0x7ffffffaeff0[26],%L0x7ffffffaeff0[27],
     %L0x7ffffffaeff0[28],%L0x7ffffffaeff0[29],%L0x7ffffffaeff0[30],%L0x7ffffffaeff0[31],
     %L0x7ffffffaeff0[32],%L0x7ffffffaeff0[33],%L0x7ffffffaeff0[34],%L0x7ffffffaeff0[35],
     %L0x7ffffffaeff0[36],%L0x7ffffffaeff0[37],%L0x7ffffffaeff0[38],%L0x7ffffffaeff0[39],
     %L0x7ffffffaeff0[40],%L0x7ffffffaeff0[41],%L0x7ffffffaeff0[42],%L0x7ffffffaeff0[43],
     %L0x7ffffffaeff0[44],%L0x7ffffffaeff0[45],%L0x7ffffffaeff0[46],%L0x7ffffffaeff0[47],
     %L0x7ffffffaeff0[48],%L0x7ffffffaeff0[49],%L0x7ffffffaeff0[50],%L0x7ffffffaeff0[51],
     %L0x7ffffffaeff0[52],%L0x7ffffffaeff0[53],%L0x7ffffffaeff0[54],%L0x7ffffffaeff0[55],
     %L0x7ffffffaeff0[56],%L0x7ffffffaeff0[57],%L0x7ffffffaeff0[58],%L0x7ffffffaeff0[59],
     %L0x7ffffffaeff0[60],%L0x7ffffffaeff0[61],%L0x7ffffffaeff0[62],%L0x7ffffffaeff0[63],
     %L0x7ffffffaeff8[0],%L0x7ffffffaeff8[1],%L0x7ffffffaeff8[2],%L0x7ffffffaeff8[3],
     %L0x7ffffffaeff8[4],%L0x7ffffffaeff8[5],%L0x7ffffffaeff8[6],%L0x7ffffffaeff8[7],
     %L0x7ffffffaeff8[8],%L0x7ffffffaeff8[9],%L0x7ffffffaeff8[10],%L0x7ffffffaeff8[11],
     %L0x7ffffffaeff8[12],%L0x7ffffffaeff8[13],%L0x7ffffffaeff8[14],%L0x7ffffffaeff8[15],
     %L0x7ffffffaeff8[16],%L0x7ffffffaeff8[17],%L0x7ffffffaeff8[18],%L0x7ffffffaeff8[19],
     %L0x7ffffffaeff8[20],%L0x7ffffffaeff8[21],%L0x7ffffffaeff8[22],%L0x7ffffffaeff8[23],
     %L0x7ffffffaeff8[24],%L0x7ffffffaeff8[25],%L0x7ffffffaeff8[26],%L0x7ffffffaeff8[27],
     %L0x7ffffffaeff8[28],%L0x7ffffffaeff8[29],%L0x7ffffffaeff8[30],%L0x7ffffffaeff8[31],
     %L0x7ffffffaeff8[32],%L0x7ffffffaeff8[33],%L0x7ffffffaeff8[34],%L0x7ffffffaeff8[35],
     %L0x7ffffffaeff8[36],%L0x7ffffffaeff8[37],%L0x7ffffffaeff8[38],%L0x7ffffffaeff8[39],
     %L0x7ffffffaeff8[40],%L0x7ffffffaeff8[41],%L0x7ffffffaeff8[42],%L0x7ffffffaeff8[43],
     %L0x7ffffffaeff8[44],%L0x7ffffffaeff8[45],%L0x7ffffffaeff8[46],%L0x7ffffffaeff8[47],
     %L0x7ffffffaeff8[48],%L0x7ffffffaeff8[49],%L0x7ffffffaeff8[50],%L0x7ffffffaeff8[51],
     %L0x7ffffffaeff8[52],%L0x7ffffffaeff8[53],%L0x7ffffffaeff8[54],%L0x7ffffffaeff8[55],
     %L0x7ffffffaeff8[56],%L0x7ffffffaeff8[57],%L0x7ffffffaeff8[58],%L0x7ffffffaeff8[59],
     %L0x7ffffffaeff8[60],%L0x7ffffffaeff8[61],%L0x7ffffffaeff8[62],%L0x7ffffffaeff8[63]];
(* vmovupd 0x40(%rdx),%ymm5                        #! EA = L0x7ffffffaf000; Value = 0xffffffffffffffff; PC = 0x55555557c65c *)
mov %ymm5
    [%L0x7ffffffaf000[0],%L0x7ffffffaf000[1],%L0x7ffffffaf000[2],%L0x7ffffffaf000[3],
     %L0x7ffffffaf000[4],%L0x7ffffffaf000[5],%L0x7ffffffaf000[6],%L0x7ffffffaf000[7],
     %L0x7ffffffaf000[8],%L0x7ffffffaf000[9],%L0x7ffffffaf000[10],%L0x7ffffffaf000[11],
     %L0x7ffffffaf000[12],%L0x7ffffffaf000[13],%L0x7ffffffaf000[14],%L0x7ffffffaf000[15],
     %L0x7ffffffaf000[16],%L0x7ffffffaf000[17],%L0x7ffffffaf000[18],%L0x7ffffffaf000[19],
     %L0x7ffffffaf000[20],%L0x7ffffffaf000[21],%L0x7ffffffaf000[22],%L0x7ffffffaf000[23],
     %L0x7ffffffaf000[24],%L0x7ffffffaf000[25],%L0x7ffffffaf000[26],%L0x7ffffffaf000[27],
     %L0x7ffffffaf000[28],%L0x7ffffffaf000[29],%L0x7ffffffaf000[30],%L0x7ffffffaf000[31],
     %L0x7ffffffaf000[32],%L0x7ffffffaf000[33],%L0x7ffffffaf000[34],%L0x7ffffffaf000[35],
     %L0x7ffffffaf000[36],%L0x7ffffffaf000[37],%L0x7ffffffaf000[38],%L0x7ffffffaf000[39],
     %L0x7ffffffaf000[40],%L0x7ffffffaf000[41],%L0x7ffffffaf000[42],%L0x7ffffffaf000[43],
     %L0x7ffffffaf000[44],%L0x7ffffffaf000[45],%L0x7ffffffaf000[46],%L0x7ffffffaf000[47],
     %L0x7ffffffaf000[48],%L0x7ffffffaf000[49],%L0x7ffffffaf000[50],%L0x7ffffffaf000[51],
     %L0x7ffffffaf000[52],%L0x7ffffffaf000[53],%L0x7ffffffaf000[54],%L0x7ffffffaf000[55],
     %L0x7ffffffaf000[56],%L0x7ffffffaf000[57],%L0x7ffffffaf000[58],%L0x7ffffffaf000[59],
     %L0x7ffffffaf000[60],%L0x7ffffffaf000[61],%L0x7ffffffaf000[62],%L0x7ffffffaf000[63],
     %L0x7ffffffaf008[0],%L0x7ffffffaf008[1],%L0x7ffffffaf008[2],%L0x7ffffffaf008[3],
     %L0x7ffffffaf008[4],%L0x7ffffffaf008[5],%L0x7ffffffaf008[6],%L0x7ffffffaf008[7],
     %L0x7ffffffaf008[8],%L0x7ffffffaf008[9],%L0x7ffffffaf008[10],%L0x7ffffffaf008[11],
     %L0x7ffffffaf008[12],%L0x7ffffffaf008[13],%L0x7ffffffaf008[14],%L0x7ffffffaf008[15],
     %L0x7ffffffaf008[16],%L0x7ffffffaf008[17],%L0x7ffffffaf008[18],%L0x7ffffffaf008[19],
     %L0x7ffffffaf008[20],%L0x7ffffffaf008[21],%L0x7ffffffaf008[22],%L0x7ffffffaf008[23],
     %L0x7ffffffaf008[24],%L0x7ffffffaf008[25],%L0x7ffffffaf008[26],%L0x7ffffffaf008[27],
     %L0x7ffffffaf008[28],%L0x7ffffffaf008[29],%L0x7ffffffaf008[30],%L0x7ffffffaf008[31],
     %L0x7ffffffaf008[32],%L0x7ffffffaf008[33],%L0x7ffffffaf008[34],%L0x7ffffffaf008[35],
     %L0x7ffffffaf008[36],%L0x7ffffffaf008[37],%L0x7ffffffaf008[38],%L0x7ffffffaf008[39],
     %L0x7ffffffaf008[40],%L0x7ffffffaf008[41],%L0x7ffffffaf008[42],%L0x7ffffffaf008[43],
     %L0x7ffffffaf008[44],%L0x7ffffffaf008[45],%L0x7ffffffaf008[46],%L0x7ffffffaf008[47],
     %L0x7ffffffaf008[48],%L0x7ffffffaf008[49],%L0x7ffffffaf008[50],%L0x7ffffffaf008[51],
     %L0x7ffffffaf008[52],%L0x7ffffffaf008[53],%L0x7ffffffaf008[54],%L0x7ffffffaf008[55],
     %L0x7ffffffaf008[56],%L0x7ffffffaf008[57],%L0x7ffffffaf008[58],%L0x7ffffffaf008[59],
     %L0x7ffffffaf008[60],%L0x7ffffffaf008[61],%L0x7ffffffaf008[62],%L0x7ffffffaf008[63],
     %L0x7ffffffaf010[0],%L0x7ffffffaf010[1],%L0x7ffffffaf010[2],%L0x7ffffffaf010[3],
     %L0x7ffffffaf010[4],%L0x7ffffffaf010[5],%L0x7ffffffaf010[6],%L0x7ffffffaf010[7],
     %L0x7ffffffaf010[8],%L0x7ffffffaf010[9],%L0x7ffffffaf010[10],%L0x7ffffffaf010[11],
     %L0x7ffffffaf010[12],%L0x7ffffffaf010[13],%L0x7ffffffaf010[14],%L0x7ffffffaf010[15],
     %L0x7ffffffaf010[16],%L0x7ffffffaf010[17],%L0x7ffffffaf010[18],%L0x7ffffffaf010[19],
     %L0x7ffffffaf010[20],%L0x7ffffffaf010[21],%L0x7ffffffaf010[22],%L0x7ffffffaf010[23],
     %L0x7ffffffaf010[24],%L0x7ffffffaf010[25],%L0x7ffffffaf010[26],%L0x7ffffffaf010[27],
     %L0x7ffffffaf010[28],%L0x7ffffffaf010[29],%L0x7ffffffaf010[30],%L0x7ffffffaf010[31],
     %L0x7ffffffaf010[32],%L0x7ffffffaf010[33],%L0x7ffffffaf010[34],%L0x7ffffffaf010[35],
     %L0x7ffffffaf010[36],%L0x7ffffffaf010[37],%L0x7ffffffaf010[38],%L0x7ffffffaf010[39],
     %L0x7ffffffaf010[40],%L0x7ffffffaf010[41],%L0x7ffffffaf010[42],%L0x7ffffffaf010[43],
     %L0x7ffffffaf010[44],%L0x7ffffffaf010[45],%L0x7ffffffaf010[46],%L0x7ffffffaf010[47],
     %L0x7ffffffaf010[48],%L0x7ffffffaf010[49],%L0x7ffffffaf010[50],%L0x7ffffffaf010[51],
     %L0x7ffffffaf010[52],%L0x7ffffffaf010[53],%L0x7ffffffaf010[54],%L0x7ffffffaf010[55],
     %L0x7ffffffaf010[56],%L0x7ffffffaf010[57],%L0x7ffffffaf010[58],%L0x7ffffffaf010[59],
     %L0x7ffffffaf010[60],%L0x7ffffffaf010[61],%L0x7ffffffaf010[62],%L0x7ffffffaf010[63],
     %L0x7ffffffaf018[0],%L0x7ffffffaf018[1],%L0x7ffffffaf018[2],%L0x7ffffffaf018[3],
     %L0x7ffffffaf018[4],%L0x7ffffffaf018[5],%L0x7ffffffaf018[6],%L0x7ffffffaf018[7],
     %L0x7ffffffaf018[8],%L0x7ffffffaf018[9],%L0x7ffffffaf018[10],%L0x7ffffffaf018[11],
     %L0x7ffffffaf018[12],%L0x7ffffffaf018[13],%L0x7ffffffaf018[14],%L0x7ffffffaf018[15],
     %L0x7ffffffaf018[16],%L0x7ffffffaf018[17],%L0x7ffffffaf018[18],%L0x7ffffffaf018[19],
     %L0x7ffffffaf018[20],%L0x7ffffffaf018[21],%L0x7ffffffaf018[22],%L0x7ffffffaf018[23],
     %L0x7ffffffaf018[24],%L0x7ffffffaf018[25],%L0x7ffffffaf018[26],%L0x7ffffffaf018[27],
     %L0x7ffffffaf018[28],%L0x7ffffffaf018[29],%L0x7ffffffaf018[30],%L0x7ffffffaf018[31],
     %L0x7ffffffaf018[32],%L0x7ffffffaf018[33],%L0x7ffffffaf018[34],%L0x7ffffffaf018[35],
     %L0x7ffffffaf018[36],%L0x7ffffffaf018[37],%L0x7ffffffaf018[38],%L0x7ffffffaf018[39],
     %L0x7ffffffaf018[40],%L0x7ffffffaf018[41],%L0x7ffffffaf018[42],%L0x7ffffffaf018[43],
     %L0x7ffffffaf018[44],%L0x7ffffffaf018[45],%L0x7ffffffaf018[46],%L0x7ffffffaf018[47],
     %L0x7ffffffaf018[48],%L0x7ffffffaf018[49],%L0x7ffffffaf018[50],%L0x7ffffffaf018[51],
     %L0x7ffffffaf018[52],%L0x7ffffffaf018[53],%L0x7ffffffaf018[54],%L0x7ffffffaf018[55],
     %L0x7ffffffaf018[56],%L0x7ffffffaf018[57],%L0x7ffffffaf018[58],%L0x7ffffffaf018[59],
     %L0x7ffffffaf018[60],%L0x7ffffffaf018[61],%L0x7ffffffaf018[62],%L0x7ffffffaf018[63]];
(* vpermq $0xfa,%ymm2,%ymm6                        #! PC = 0x55555557c661 *)
mov %ymm6
    [%ymm2[128],%ymm2[129],%ymm2[130],%ymm2[131],%ymm2[132],%ymm2[133],%ymm2[134],%ymm2[135],
     %ymm2[136],%ymm2[137],%ymm2[138],%ymm2[139],%ymm2[140],%ymm2[141],%ymm2[142],%ymm2[143],
     %ymm2[144],%ymm2[145],%ymm2[146],%ymm2[147],%ymm2[148],%ymm2[149],%ymm2[150],%ymm2[151],
     %ymm2[152],%ymm2[153],%ymm2[154],%ymm2[155],%ymm2[156],%ymm2[157],%ymm2[158],%ymm2[159],
     %ymm2[160],%ymm2[161],%ymm2[162],%ymm2[163],%ymm2[164],%ymm2[165],%ymm2[166],%ymm2[167],
     %ymm2[168],%ymm2[169],%ymm2[170],%ymm2[171],%ymm2[172],%ymm2[173],%ymm2[174],%ymm2[175],
     %ymm2[176],%ymm2[177],%ymm2[178],%ymm2[179],%ymm2[180],%ymm2[181],%ymm2[182],%ymm2[183],
     %ymm2[184],%ymm2[185],%ymm2[186],%ymm2[187],%ymm2[188],%ymm2[189],%ymm2[190],%ymm2[191],
     %ymm2[128],%ymm2[129],%ymm2[130],%ymm2[131],%ymm2[132],%ymm2[133],%ymm2[134],%ymm2[135],
     %ymm2[136],%ymm2[137],%ymm2[138],%ymm2[139],%ymm2[140],%ymm2[141],%ymm2[142],%ymm2[143],
     %ymm2[144],%ymm2[145],%ymm2[146],%ymm2[147],%ymm2[148],%ymm2[149],%ymm2[150],%ymm2[151],
     %ymm2[152],%ymm2[153],%ymm2[154],%ymm2[155],%ymm2[156],%ymm2[157],%ymm2[158],%ymm2[159],
     %ymm2[160],%ymm2[161],%ymm2[162],%ymm2[163],%ymm2[164],%ymm2[165],%ymm2[166],%ymm2[167],
     %ymm2[168],%ymm2[169],%ymm2[170],%ymm2[171],%ymm2[172],%ymm2[173],%ymm2[174],%ymm2[175],
     %ymm2[176],%ymm2[177],%ymm2[178],%ymm2[179],%ymm2[180],%ymm2[181],%ymm2[182],%ymm2[183],
     %ymm2[184],%ymm2[185],%ymm2[186],%ymm2[187],%ymm2[188],%ymm2[189],%ymm2[190],%ymm2[191],
     %ymm2[192],%ymm2[193],%ymm2[194],%ymm2[195],%ymm2[196],%ymm2[197],%ymm2[198],%ymm2[199],
     %ymm2[200],%ymm2[201],%ymm2[202],%ymm2[203],%ymm2[204],%ymm2[205],%ymm2[206],%ymm2[207],
     %ymm2[208],%ymm2[209],%ymm2[210],%ymm2[211],%ymm2[212],%ymm2[213],%ymm2[214],%ymm2[215],
     %ymm2[216],%ymm2[217],%ymm2[218],%ymm2[219],%ymm2[220],%ymm2[221],%ymm2[222],%ymm2[223],
     %ymm2[224],%ymm2[225],%ymm2[226],%ymm2[227],%ymm2[228],%ymm2[229],%ymm2[230],%ymm2[231],
     %ymm2[232],%ymm2[233],%ymm2[234],%ymm2[235],%ymm2[236],%ymm2[237],%ymm2[238],%ymm2[239],
     %ymm2[240],%ymm2[241],%ymm2[242],%ymm2[243],%ymm2[244],%ymm2[245],%ymm2[246],%ymm2[247],
     %ymm2[248],%ymm2[249],%ymm2[250],%ymm2[251],%ymm2[252],%ymm2[253],%ymm2[254],%ymm2[255],
     %ymm2[192],%ymm2[193],%ymm2[194],%ymm2[195],%ymm2[196],%ymm2[197],%ymm2[198],%ymm2[199],
     %ymm2[200],%ymm2[201],%ymm2[202],%ymm2[203],%ymm2[204],%ymm2[205],%ymm2[206],%ymm2[207],
     %ymm2[208],%ymm2[209],%ymm2[210],%ymm2[211],%ymm2[212],%ymm2[213],%ymm2[214],%ymm2[215],
     %ymm2[216],%ymm2[217],%ymm2[218],%ymm2[219],%ymm2[220],%ymm2[221],%ymm2[222],%ymm2[223],
     %ymm2[224],%ymm2[225],%ymm2[226],%ymm2[227],%ymm2[228],%ymm2[229],%ymm2[230],%ymm2[231],
     %ymm2[232],%ymm2[233],%ymm2[234],%ymm2[235],%ymm2[236],%ymm2[237],%ymm2[238],%ymm2[239],
     %ymm2[240],%ymm2[241],%ymm2[242],%ymm2[243],%ymm2[244],%ymm2[245],%ymm2[246],%ymm2[247],
     %ymm2[248],%ymm2[249],%ymm2[250],%ymm2[251],%ymm2[252],%ymm2[253],%ymm2[254],%ymm2[255]];
(* vpermq $0xee,%ymm5,%ymm7                        #! PC = 0x55555557c667 *)
mov %ymm7
    [%ymm5[128],%ymm5[129],%ymm5[130],%ymm5[131],%ymm5[132],%ymm5[133],%ymm5[134],%ymm5[135],
     %ymm5[136],%ymm5[137],%ymm5[138],%ymm5[139],%ymm5[140],%ymm5[141],%ymm5[142],%ymm5[143],
     %ymm5[144],%ymm5[145],%ymm5[146],%ymm5[147],%ymm5[148],%ymm5[149],%ymm5[150],%ymm5[151],
     %ymm5[152],%ymm5[153],%ymm5[154],%ymm5[155],%ymm5[156],%ymm5[157],%ymm5[158],%ymm5[159],
     %ymm5[160],%ymm5[161],%ymm5[162],%ymm5[163],%ymm5[164],%ymm5[165],%ymm5[166],%ymm5[167],
     %ymm5[168],%ymm5[169],%ymm5[170],%ymm5[171],%ymm5[172],%ymm5[173],%ymm5[174],%ymm5[175],
     %ymm5[176],%ymm5[177],%ymm5[178],%ymm5[179],%ymm5[180],%ymm5[181],%ymm5[182],%ymm5[183],
     %ymm5[184],%ymm5[185],%ymm5[186],%ymm5[187],%ymm5[188],%ymm5[189],%ymm5[190],%ymm5[191],
     %ymm5[192],%ymm5[193],%ymm5[194],%ymm5[195],%ymm5[196],%ymm5[197],%ymm5[198],%ymm5[199],
     %ymm5[200],%ymm5[201],%ymm5[202],%ymm5[203],%ymm5[204],%ymm5[205],%ymm5[206],%ymm5[207],
     %ymm5[208],%ymm5[209],%ymm5[210],%ymm5[211],%ymm5[212],%ymm5[213],%ymm5[214],%ymm5[215],
     %ymm5[216],%ymm5[217],%ymm5[218],%ymm5[219],%ymm5[220],%ymm5[221],%ymm5[222],%ymm5[223],
     %ymm5[224],%ymm5[225],%ymm5[226],%ymm5[227],%ymm5[228],%ymm5[229],%ymm5[230],%ymm5[231],
     %ymm5[232],%ymm5[233],%ymm5[234],%ymm5[235],%ymm5[236],%ymm5[237],%ymm5[238],%ymm5[239],
     %ymm5[240],%ymm5[241],%ymm5[242],%ymm5[243],%ymm5[244],%ymm5[245],%ymm5[246],%ymm5[247],
     %ymm5[248],%ymm5[249],%ymm5[250],%ymm5[251],%ymm5[252],%ymm5[253],%ymm5[254],%ymm5[255],
     %ymm5[128],%ymm5[129],%ymm5[130],%ymm5[131],%ymm5[132],%ymm5[133],%ymm5[134],%ymm5[135],
     %ymm5[136],%ymm5[137],%ymm5[138],%ymm5[139],%ymm5[140],%ymm5[141],%ymm5[142],%ymm5[143],
     %ymm5[144],%ymm5[145],%ymm5[146],%ymm5[147],%ymm5[148],%ymm5[149],%ymm5[150],%ymm5[151],
     %ymm5[152],%ymm5[153],%ymm5[154],%ymm5[155],%ymm5[156],%ymm5[157],%ymm5[158],%ymm5[159],
     %ymm5[160],%ymm5[161],%ymm5[162],%ymm5[163],%ymm5[164],%ymm5[165],%ymm5[166],%ymm5[167],
     %ymm5[168],%ymm5[169],%ymm5[170],%ymm5[171],%ymm5[172],%ymm5[173],%ymm5[174],%ymm5[175],
     %ymm5[176],%ymm5[177],%ymm5[178],%ymm5[179],%ymm5[180],%ymm5[181],%ymm5[182],%ymm5[183],
     %ymm5[184],%ymm5[185],%ymm5[186],%ymm5[187],%ymm5[188],%ymm5[189],%ymm5[190],%ymm5[191],
     %ymm5[192],%ymm5[193],%ymm5[194],%ymm5[195],%ymm5[196],%ymm5[197],%ymm5[198],%ymm5[199],
     %ymm5[200],%ymm5[201],%ymm5[202],%ymm5[203],%ymm5[204],%ymm5[205],%ymm5[206],%ymm5[207],
     %ymm5[208],%ymm5[209],%ymm5[210],%ymm5[211],%ymm5[212],%ymm5[213],%ymm5[214],%ymm5[215],
     %ymm5[216],%ymm5[217],%ymm5[218],%ymm5[219],%ymm5[220],%ymm5[221],%ymm5[222],%ymm5[223],
     %ymm5[224],%ymm5[225],%ymm5[226],%ymm5[227],%ymm5[228],%ymm5[229],%ymm5[230],%ymm5[231],
     %ymm5[232],%ymm5[233],%ymm5[234],%ymm5[235],%ymm5[236],%ymm5[237],%ymm5[238],%ymm5[239],
     %ymm5[240],%ymm5[241],%ymm5[242],%ymm5[243],%ymm5[244],%ymm5[245],%ymm5[246],%ymm5[247],
     %ymm5[248],%ymm5[249],%ymm5[250],%ymm5[251],%ymm5[252],%ymm5[253],%ymm5[254],%ymm5[255]];
(* vpand  %ymm6,%ymm7,%ymm8                        #! PC = 0x55555557c66d *)
mul %ymm8 %ymm7 %ymm6;
(* vmovupd %ymm8,0x140(%rcx)                       #! EA = L0x7ffffffaec00; PC = 0x55555557c671 *)
mov %L0x7ffffffaec00
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],%ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],%ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm8[16],%ymm8[17],%ymm8[18],%ymm8[19],%ymm8[20],%ymm8[21],%ymm8[22],%ymm8[23],
     %ymm8[24],%ymm8[25],%ymm8[26],%ymm8[27],%ymm8[28],%ymm8[29],%ymm8[30],%ymm8[31],
     %ymm8[32],%ymm8[33],%ymm8[34],%ymm8[35],%ymm8[36],%ymm8[37],%ymm8[38],%ymm8[39],
     %ymm8[40],%ymm8[41],%ymm8[42],%ymm8[43],%ymm8[44],%ymm8[45],%ymm8[46],%ymm8[47],
     %ymm8[48],%ymm8[49],%ymm8[50],%ymm8[51],%ymm8[52],%ymm8[53],%ymm8[54],%ymm8[55],
     %ymm8[56],%ymm8[57],%ymm8[58],%ymm8[59],%ymm8[60],%ymm8[61],%ymm8[62],%ymm8[63]];
mov %L0x7ffffffaec08
    [%ymm8[64],%ymm8[65],%ymm8[66],%ymm8[67],%ymm8[68],%ymm8[69],%ymm8[70],%ymm8[71],
     %ymm8[72],%ymm8[73],%ymm8[74],%ymm8[75],%ymm8[76],%ymm8[77],%ymm8[78],%ymm8[79],
     %ymm8[80],%ymm8[81],%ymm8[82],%ymm8[83],%ymm8[84],%ymm8[85],%ymm8[86],%ymm8[87],
     %ymm8[88],%ymm8[89],%ymm8[90],%ymm8[91],%ymm8[92],%ymm8[93],%ymm8[94],%ymm8[95],
     %ymm8[96],%ymm8[97],%ymm8[98],%ymm8[99],%ymm8[100],%ymm8[101],%ymm8[102],%ymm8[103],
     %ymm8[104],%ymm8[105],%ymm8[106],%ymm8[107],%ymm8[108],%ymm8[109],%ymm8[110],%ymm8[111],
     %ymm8[112],%ymm8[113],%ymm8[114],%ymm8[115],%ymm8[116],%ymm8[117],%ymm8[118],%ymm8[119],
     %ymm8[120],%ymm8[121],%ymm8[122],%ymm8[123],%ymm8[124],%ymm8[125],%ymm8[126],%ymm8[127]];
mov %L0x7ffffffaec10
    [%ymm8[128],%ymm8[129],%ymm8[130],%ymm8[131],%ymm8[132],%ymm8[133],%ymm8[134],%ymm8[135],
     %ymm8[136],%ymm8[137],%ymm8[138],%ymm8[139],%ymm8[140],%ymm8[141],%ymm8[142],%ymm8[143],
     %ymm8[144],%ymm8[145],%ymm8[146],%ymm8[147],%ymm8[148],%ymm8[149],%ymm8[150],%ymm8[151],
     %ymm8[152],%ymm8[153],%ymm8[154],%ymm8[155],%ymm8[156],%ymm8[157],%ymm8[158],%ymm8[159],
     %ymm8[160],%ymm8[161],%ymm8[162],%ymm8[163],%ymm8[164],%ymm8[165],%ymm8[166],%ymm8[167],
     %ymm8[168],%ymm8[169],%ymm8[170],%ymm8[171],%ymm8[172],%ymm8[173],%ymm8[174],%ymm8[175],
     %ymm8[176],%ymm8[177],%ymm8[178],%ymm8[179],%ymm8[180],%ymm8[181],%ymm8[182],%ymm8[183],
     %ymm8[184],%ymm8[185],%ymm8[186],%ymm8[187],%ymm8[188],%ymm8[189],%ymm8[190],%ymm8[191]];
mov %L0x7ffffffaec18
    [%ymm8[192],%ymm8[193],%ymm8[194],%ymm8[195],%ymm8[196],%ymm8[197],%ymm8[198],%ymm8[199],
     %ymm8[200],%ymm8[201],%ymm8[202],%ymm8[203],%ymm8[204],%ymm8[205],%ymm8[206],%ymm8[207],
     %ymm8[208],%ymm8[209],%ymm8[210],%ymm8[211],%ymm8[212],%ymm8[213],%ymm8[214],%ymm8[215],
     %ymm8[216],%ymm8[217],%ymm8[218],%ymm8[219],%ymm8[220],%ymm8[221],%ymm8[222],%ymm8[223],
     %ymm8[224],%ymm8[225],%ymm8[226],%ymm8[227],%ymm8[228],%ymm8[229],%ymm8[230],%ymm8[231],
     %ymm8[232],%ymm8[233],%ymm8[234],%ymm8[235],%ymm8[236],%ymm8[237],%ymm8[238],%ymm8[239],
     %ymm8[240],%ymm8[241],%ymm8[242],%ymm8[243],%ymm8[244],%ymm8[245],%ymm8[246],%ymm8[247],
     %ymm8[248],%ymm8[249],%ymm8[250],%ymm8[251],%ymm8[252],%ymm8[253],%ymm8[254],%ymm8[255]];
(* vpermq $0x44,%ymm5,%ymm5                        #! PC = 0x55555557c679 *)
mov %ymm5
    [%ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],%ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],%ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
     %ymm5[16],%ymm5[17],%ymm5[18],%ymm5[19],%ymm5[20],%ymm5[21],%ymm5[22],%ymm5[23],
     %ymm5[24],%ymm5[25],%ymm5[26],%ymm5[27],%ymm5[28],%ymm5[29],%ymm5[30],%ymm5[31],
     %ymm5[32],%ymm5[33],%ymm5[34],%ymm5[35],%ymm5[36],%ymm5[37],%ymm5[38],%ymm5[39],
     %ymm5[40],%ymm5[41],%ymm5[42],%ymm5[43],%ymm5[44],%ymm5[45],%ymm5[46],%ymm5[47],
     %ymm5[48],%ymm5[49],%ymm5[50],%ymm5[51],%ymm5[52],%ymm5[53],%ymm5[54],%ymm5[55],
     %ymm5[56],%ymm5[57],%ymm5[58],%ymm5[59],%ymm5[60],%ymm5[61],%ymm5[62],%ymm5[63],
     %ymm5[64],%ymm5[65],%ymm5[66],%ymm5[67],%ymm5[68],%ymm5[69],%ymm5[70],%ymm5[71],
     %ymm5[72],%ymm5[73],%ymm5[74],%ymm5[75],%ymm5[76],%ymm5[77],%ymm5[78],%ymm5[79],
     %ymm5[80],%ymm5[81],%ymm5[82],%ymm5[83],%ymm5[84],%ymm5[85],%ymm5[86],%ymm5[87],
     %ymm5[88],%ymm5[89],%ymm5[90],%ymm5[91],%ymm5[92],%ymm5[93],%ymm5[94],%ymm5[95],
     %ymm5[96],%ymm5[97],%ymm5[98],%ymm5[99],%ymm5[100],%ymm5[101],%ymm5[102],%ymm5[103],
     %ymm5[104],%ymm5[105],%ymm5[106],%ymm5[107],%ymm5[108],%ymm5[109],%ymm5[110],%ymm5[111],
     %ymm5[112],%ymm5[113],%ymm5[114],%ymm5[115],%ymm5[116],%ymm5[117],%ymm5[118],%ymm5[119],
     %ymm5[120],%ymm5[121],%ymm5[122],%ymm5[123],%ymm5[124],%ymm5[125],%ymm5[126],%ymm5[127],
     %ymm5[0],%ymm5[1],%ymm5[2],%ymm5[3],%ymm5[4],%ymm5[5],%ymm5[6],%ymm5[7],
     %ymm5[8],%ymm5[9],%ymm5[10],%ymm5[11],%ymm5[12],%ymm5[13],%ymm5[14],%ymm5[15],
     %ymm5[16],%ymm5[17],%ymm5[18],%ymm5[19],%ymm5[20],%ymm5[21],%ymm5[22],%ymm5[23],
     %ymm5[24],%ymm5[25],%ymm5[26],%ymm5[27],%ymm5[28],%ymm5[29],%ymm5[30],%ymm5[31],
     %ymm5[32],%ymm5[33],%ymm5[34],%ymm5[35],%ymm5[36],%ymm5[37],%ymm5[38],%ymm5[39],
     %ymm5[40],%ymm5[41],%ymm5[42],%ymm5[43],%ymm5[44],%ymm5[45],%ymm5[46],%ymm5[47],
     %ymm5[48],%ymm5[49],%ymm5[50],%ymm5[51],%ymm5[52],%ymm5[53],%ymm5[54],%ymm5[55],
     %ymm5[56],%ymm5[57],%ymm5[58],%ymm5[59],%ymm5[60],%ymm5[61],%ymm5[62],%ymm5[63],
     %ymm5[64],%ymm5[65],%ymm5[66],%ymm5[67],%ymm5[68],%ymm5[69],%ymm5[70],%ymm5[71],
     %ymm5[72],%ymm5[73],%ymm5[74],%ymm5[75],%ymm5[76],%ymm5[77],%ymm5[78],%ymm5[79],
     %ymm5[80],%ymm5[81],%ymm5[82],%ymm5[83],%ymm5[84],%ymm5[85],%ymm5[86],%ymm5[87],
     %ymm5[88],%ymm5[89],%ymm5[90],%ymm5[91],%ymm5[92],%ymm5[93],%ymm5[94],%ymm5[95],
     %ymm5[96],%ymm5[97],%ymm5[98],%ymm5[99],%ymm5[100],%ymm5[101],%ymm5[102],%ymm5[103],
     %ymm5[104],%ymm5[105],%ymm5[106],%ymm5[107],%ymm5[108],%ymm5[109],%ymm5[110],%ymm5[111],
     %ymm5[112],%ymm5[113],%ymm5[114],%ymm5[115],%ymm5[116],%ymm5[117],%ymm5[118],%ymm5[119],
     %ymm5[120],%ymm5[121],%ymm5[122],%ymm5[123],%ymm5[124],%ymm5[125],%ymm5[126],%ymm5[127]];
(* vpand  %ymm6,%ymm5,%ymm8                        #! PC = 0x55555557c67f *)
mul %ymm8 %ymm5 %ymm6;
(* vpermq $0xee,%ymm4,%ymm9                        #! PC = 0x55555557c683 *)
mov %ymm9
    [%ymm4[128],%ymm4[129],%ymm4[130],%ymm4[131],%ymm4[132],%ymm4[133],%ymm4[134],%ymm4[135],
     %ymm4[136],%ymm4[137],%ymm4[138],%ymm4[139],%ymm4[140],%ymm4[141],%ymm4[142],%ymm4[143],
     %ymm4[144],%ymm4[145],%ymm4[146],%ymm4[147],%ymm4[148],%ymm4[149],%ymm4[150],%ymm4[151],
     %ymm4[152],%ymm4[153],%ymm4[154],%ymm4[155],%ymm4[156],%ymm4[157],%ymm4[158],%ymm4[159],
     %ymm4[160],%ymm4[161],%ymm4[162],%ymm4[163],%ymm4[164],%ymm4[165],%ymm4[166],%ymm4[167],
     %ymm4[168],%ymm4[169],%ymm4[170],%ymm4[171],%ymm4[172],%ymm4[173],%ymm4[174],%ymm4[175],
     %ymm4[176],%ymm4[177],%ymm4[178],%ymm4[179],%ymm4[180],%ymm4[181],%ymm4[182],%ymm4[183],
     %ymm4[184],%ymm4[185],%ymm4[186],%ymm4[187],%ymm4[188],%ymm4[189],%ymm4[190],%ymm4[191],
     %ymm4[192],%ymm4[193],%ymm4[194],%ymm4[195],%ymm4[196],%ymm4[197],%ymm4[198],%ymm4[199],
     %ymm4[200],%ymm4[201],%ymm4[202],%ymm4[203],%ymm4[204],%ymm4[205],%ymm4[206],%ymm4[207],
     %ymm4[208],%ymm4[209],%ymm4[210],%ymm4[211],%ymm4[212],%ymm4[213],%ymm4[214],%ymm4[215],
     %ymm4[216],%ymm4[217],%ymm4[218],%ymm4[219],%ymm4[220],%ymm4[221],%ymm4[222],%ymm4[223],
     %ymm4[224],%ymm4[225],%ymm4[226],%ymm4[227],%ymm4[228],%ymm4[229],%ymm4[230],%ymm4[231],
     %ymm4[232],%ymm4[233],%ymm4[234],%ymm4[235],%ymm4[236],%ymm4[237],%ymm4[238],%ymm4[239],
     %ymm4[240],%ymm4[241],%ymm4[242],%ymm4[243],%ymm4[244],%ymm4[245],%ymm4[246],%ymm4[247],
     %ymm4[248],%ymm4[249],%ymm4[250],%ymm4[251],%ymm4[252],%ymm4[253],%ymm4[254],%ymm4[255],
     %ymm4[128],%ymm4[129],%ymm4[130],%ymm4[131],%ymm4[132],%ymm4[133],%ymm4[134],%ymm4[135],
     %ymm4[136],%ymm4[137],%ymm4[138],%ymm4[139],%ymm4[140],%ymm4[141],%ymm4[142],%ymm4[143],
     %ymm4[144],%ymm4[145],%ymm4[146],%ymm4[147],%ymm4[148],%ymm4[149],%ymm4[150],%ymm4[151],
     %ymm4[152],%ymm4[153],%ymm4[154],%ymm4[155],%ymm4[156],%ymm4[157],%ymm4[158],%ymm4[159],
     %ymm4[160],%ymm4[161],%ymm4[162],%ymm4[163],%ymm4[164],%ymm4[165],%ymm4[166],%ymm4[167],
     %ymm4[168],%ymm4[169],%ymm4[170],%ymm4[171],%ymm4[172],%ymm4[173],%ymm4[174],%ymm4[175],
     %ymm4[176],%ymm4[177],%ymm4[178],%ymm4[179],%ymm4[180],%ymm4[181],%ymm4[182],%ymm4[183],
     %ymm4[184],%ymm4[185],%ymm4[186],%ymm4[187],%ymm4[188],%ymm4[189],%ymm4[190],%ymm4[191],
     %ymm4[192],%ymm4[193],%ymm4[194],%ymm4[195],%ymm4[196],%ymm4[197],%ymm4[198],%ymm4[199],
     %ymm4[200],%ymm4[201],%ymm4[202],%ymm4[203],%ymm4[204],%ymm4[205],%ymm4[206],%ymm4[207],
     %ymm4[208],%ymm4[209],%ymm4[210],%ymm4[211],%ymm4[212],%ymm4[213],%ymm4[214],%ymm4[215],
     %ymm4[216],%ymm4[217],%ymm4[218],%ymm4[219],%ymm4[220],%ymm4[221],%ymm4[222],%ymm4[223],
     %ymm4[224],%ymm4[225],%ymm4[226],%ymm4[227],%ymm4[228],%ymm4[229],%ymm4[230],%ymm4[231],
     %ymm4[232],%ymm4[233],%ymm4[234],%ymm4[235],%ymm4[236],%ymm4[237],%ymm4[238],%ymm4[239],
     %ymm4[240],%ymm4[241],%ymm4[242],%ymm4[243],%ymm4[244],%ymm4[245],%ymm4[246],%ymm4[247],
     %ymm4[248],%ymm4[249],%ymm4[250],%ymm4[251],%ymm4[252],%ymm4[253],%ymm4[254],%ymm4[255]];
(* vpand  %ymm6,%ymm9,%ymm10                       #! PC = 0x55555557c689 *)
mul %ymm10 %ymm9 %ymm6;
(* vpermq $0x44,%ymm4,%ymm4                        #! PC = 0x55555557c68d *)
mov %ymm4
    [%ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],%ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm4[16],%ymm4[17],%ymm4[18],%ymm4[19],%ymm4[20],%ymm4[21],%ymm4[22],%ymm4[23],
     %ymm4[24],%ymm4[25],%ymm4[26],%ymm4[27],%ymm4[28],%ymm4[29],%ymm4[30],%ymm4[31],
     %ymm4[32],%ymm4[33],%ymm4[34],%ymm4[35],%ymm4[36],%ymm4[37],%ymm4[38],%ymm4[39],
     %ymm4[40],%ymm4[41],%ymm4[42],%ymm4[43],%ymm4[44],%ymm4[45],%ymm4[46],%ymm4[47],
     %ymm4[48],%ymm4[49],%ymm4[50],%ymm4[51],%ymm4[52],%ymm4[53],%ymm4[54],%ymm4[55],
     %ymm4[56],%ymm4[57],%ymm4[58],%ymm4[59],%ymm4[60],%ymm4[61],%ymm4[62],%ymm4[63],
     %ymm4[64],%ymm4[65],%ymm4[66],%ymm4[67],%ymm4[68],%ymm4[69],%ymm4[70],%ymm4[71],
     %ymm4[72],%ymm4[73],%ymm4[74],%ymm4[75],%ymm4[76],%ymm4[77],%ymm4[78],%ymm4[79],
     %ymm4[80],%ymm4[81],%ymm4[82],%ymm4[83],%ymm4[84],%ymm4[85],%ymm4[86],%ymm4[87],
     %ymm4[88],%ymm4[89],%ymm4[90],%ymm4[91],%ymm4[92],%ymm4[93],%ymm4[94],%ymm4[95],
     %ymm4[96],%ymm4[97],%ymm4[98],%ymm4[99],%ymm4[100],%ymm4[101],%ymm4[102],%ymm4[103],
     %ymm4[104],%ymm4[105],%ymm4[106],%ymm4[107],%ymm4[108],%ymm4[109],%ymm4[110],%ymm4[111],
     %ymm4[112],%ymm4[113],%ymm4[114],%ymm4[115],%ymm4[116],%ymm4[117],%ymm4[118],%ymm4[119],
     %ymm4[120],%ymm4[121],%ymm4[122],%ymm4[123],%ymm4[124],%ymm4[125],%ymm4[126],%ymm4[127],
     %ymm4[0],%ymm4[1],%ymm4[2],%ymm4[3],%ymm4[4],%ymm4[5],%ymm4[6],%ymm4[7],
     %ymm4[8],%ymm4[9],%ymm4[10],%ymm4[11],%ymm4[12],%ymm4[13],%ymm4[14],%ymm4[15],
     %ymm4[16],%ymm4[17],%ymm4[18],%ymm4[19],%ymm4[20],%ymm4[21],%ymm4[22],%ymm4[23],
     %ymm4[24],%ymm4[25],%ymm4[26],%ymm4[27],%ymm4[28],%ymm4[29],%ymm4[30],%ymm4[31],
     %ymm4[32],%ymm4[33],%ymm4[34],%ymm4[35],%ymm4[36],%ymm4[37],%ymm4[38],%ymm4[39],
     %ymm4[40],%ymm4[41],%ymm4[42],%ymm4[43],%ymm4[44],%ymm4[45],%ymm4[46],%ymm4[47],
     %ymm4[48],%ymm4[49],%ymm4[50],%ymm4[51],%ymm4[52],%ymm4[53],%ymm4[54],%ymm4[55],
     %ymm4[56],%ymm4[57],%ymm4[58],%ymm4[59],%ymm4[60],%ymm4[61],%ymm4[62],%ymm4[63],
     %ymm4[64],%ymm4[65],%ymm4[66],%ymm4[67],%ymm4[68],%ymm4[69],%ymm4[70],%ymm4[71],
     %ymm4[72],%ymm4[73],%ymm4[74],%ymm4[75],%ymm4[76],%ymm4[77],%ymm4[78],%ymm4[79],
     %ymm4[80],%ymm4[81],%ymm4[82],%ymm4[83],%ymm4[84],%ymm4[85],%ymm4[86],%ymm4[87],
     %ymm4[88],%ymm4[89],%ymm4[90],%ymm4[91],%ymm4[92],%ymm4[93],%ymm4[94],%ymm4[95],
     %ymm4[96],%ymm4[97],%ymm4[98],%ymm4[99],%ymm4[100],%ymm4[101],%ymm4[102],%ymm4[103],
     %ymm4[104],%ymm4[105],%ymm4[106],%ymm4[107],%ymm4[108],%ymm4[109],%ymm4[110],%ymm4[111],
     %ymm4[112],%ymm4[113],%ymm4[114],%ymm4[115],%ymm4[116],%ymm4[117],%ymm4[118],%ymm4[119],
     %ymm4[120],%ymm4[121],%ymm4[122],%ymm4[123],%ymm4[124],%ymm4[125],%ymm4[126],%ymm4[127]];
(* vpand  %ymm6,%ymm4,%ymm11                       #! PC = 0x55555557c693 *)
mul %ymm11 %ymm4 %ymm6;
(* vpermq $0xee,%ymm3,%ymm12                       #! PC = 0x55555557c697 *)
mov %ymm12
    [%ymm3[128],%ymm3[129],%ymm3[130],%ymm3[131],%ymm3[132],%ymm3[133],%ymm3[134],%ymm3[135],
     %ymm3[136],%ymm3[137],%ymm3[138],%ymm3[139],%ymm3[140],%ymm3[141],%ymm3[142],%ymm3[143],
     %ymm3[144],%ymm3[145],%ymm3[146],%ymm3[147],%ymm3[148],%ymm3[149],%ymm3[150],%ymm3[151],
     %ymm3[152],%ymm3[153],%ymm3[154],%ymm3[155],%ymm3[156],%ymm3[157],%ymm3[158],%ymm3[159],
     %ymm3[160],%ymm3[161],%ymm3[162],%ymm3[163],%ymm3[164],%ymm3[165],%ymm3[166],%ymm3[167],
     %ymm3[168],%ymm3[169],%ymm3[170],%ymm3[171],%ymm3[172],%ymm3[173],%ymm3[174],%ymm3[175],
     %ymm3[176],%ymm3[177],%ymm3[178],%ymm3[179],%ymm3[180],%ymm3[181],%ymm3[182],%ymm3[183],
     %ymm3[184],%ymm3[185],%ymm3[186],%ymm3[187],%ymm3[188],%ymm3[189],%ymm3[190],%ymm3[191],
     %ymm3[192],%ymm3[193],%ymm3[194],%ymm3[195],%ymm3[196],%ymm3[197],%ymm3[198],%ymm3[199],
     %ymm3[200],%ymm3[201],%ymm3[202],%ymm3[203],%ymm3[204],%ymm3[205],%ymm3[206],%ymm3[207],
     %ymm3[208],%ymm3[209],%ymm3[210],%ymm3[211],%ymm3[212],%ymm3[213],%ymm3[214],%ymm3[215],
     %ymm3[216],%ymm3[217],%ymm3[218],%ymm3[219],%ymm3[220],%ymm3[221],%ymm3[222],%ymm3[223],
     %ymm3[224],%ymm3[225],%ymm3[226],%ymm3[227],%ymm3[228],%ymm3[229],%ymm3[230],%ymm3[231],
     %ymm3[232],%ymm3[233],%ymm3[234],%ymm3[235],%ymm3[236],%ymm3[237],%ymm3[238],%ymm3[239],
     %ymm3[240],%ymm3[241],%ymm3[242],%ymm3[243],%ymm3[244],%ymm3[245],%ymm3[246],%ymm3[247],
     %ymm3[248],%ymm3[249],%ymm3[250],%ymm3[251],%ymm3[252],%ymm3[253],%ymm3[254],%ymm3[255],
     %ymm3[128],%ymm3[129],%ymm3[130],%ymm3[131],%ymm3[132],%ymm3[133],%ymm3[134],%ymm3[135],
     %ymm3[136],%ymm3[137],%ymm3[138],%ymm3[139],%ymm3[140],%ymm3[141],%ymm3[142],%ymm3[143],
     %ymm3[144],%ymm3[145],%ymm3[146],%ymm3[147],%ymm3[148],%ymm3[149],%ymm3[150],%ymm3[151],
     %ymm3[152],%ymm3[153],%ymm3[154],%ymm3[155],%ymm3[156],%ymm3[157],%ymm3[158],%ymm3[159],
     %ymm3[160],%ymm3[161],%ymm3[162],%ymm3[163],%ymm3[164],%ymm3[165],%ymm3[166],%ymm3[167],
     %ymm3[168],%ymm3[169],%ymm3[170],%ymm3[171],%ymm3[172],%ymm3[173],%ymm3[174],%ymm3[175],
     %ymm3[176],%ymm3[177],%ymm3[178],%ymm3[179],%ymm3[180],%ymm3[181],%ymm3[182],%ymm3[183],
     %ymm3[184],%ymm3[185],%ymm3[186],%ymm3[187],%ymm3[188],%ymm3[189],%ymm3[190],%ymm3[191],
     %ymm3[192],%ymm3[193],%ymm3[194],%ymm3[195],%ymm3[196],%ymm3[197],%ymm3[198],%ymm3[199],
     %ymm3[200],%ymm3[201],%ymm3[202],%ymm3[203],%ymm3[204],%ymm3[205],%ymm3[206],%ymm3[207],
     %ymm3[208],%ymm3[209],%ymm3[210],%ymm3[211],%ymm3[212],%ymm3[213],%ymm3[214],%ymm3[215],
     %ymm3[216],%ymm3[217],%ymm3[218],%ymm3[219],%ymm3[220],%ymm3[221],%ymm3[222],%ymm3[223],
     %ymm3[224],%ymm3[225],%ymm3[226],%ymm3[227],%ymm3[228],%ymm3[229],%ymm3[230],%ymm3[231],
     %ymm3[232],%ymm3[233],%ymm3[234],%ymm3[235],%ymm3[236],%ymm3[237],%ymm3[238],%ymm3[239],
     %ymm3[240],%ymm3[241],%ymm3[242],%ymm3[243],%ymm3[244],%ymm3[245],%ymm3[246],%ymm3[247],
     %ymm3[248],%ymm3[249],%ymm3[250],%ymm3[251],%ymm3[252],%ymm3[253],%ymm3[254],%ymm3[255]];
(* vpand  %ymm6,%ymm12,%ymm13                      #! PC = 0x55555557c69d *)
mul %ymm13 %ymm12 %ymm6;
(* vpermq $0x44,%ymm3,%ymm3                        #! PC = 0x55555557c6a1 *)
mov %ymm3
    [%ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],%ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],%ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm3[16],%ymm3[17],%ymm3[18],%ymm3[19],%ymm3[20],%ymm3[21],%ymm3[22],%ymm3[23],
     %ymm3[24],%ymm3[25],%ymm3[26],%ymm3[27],%ymm3[28],%ymm3[29],%ymm3[30],%ymm3[31],
     %ymm3[32],%ymm3[33],%ymm3[34],%ymm3[35],%ymm3[36],%ymm3[37],%ymm3[38],%ymm3[39],
     %ymm3[40],%ymm3[41],%ymm3[42],%ymm3[43],%ymm3[44],%ymm3[45],%ymm3[46],%ymm3[47],
     %ymm3[48],%ymm3[49],%ymm3[50],%ymm3[51],%ymm3[52],%ymm3[53],%ymm3[54],%ymm3[55],
     %ymm3[56],%ymm3[57],%ymm3[58],%ymm3[59],%ymm3[60],%ymm3[61],%ymm3[62],%ymm3[63],
     %ymm3[64],%ymm3[65],%ymm3[66],%ymm3[67],%ymm3[68],%ymm3[69],%ymm3[70],%ymm3[71],
     %ymm3[72],%ymm3[73],%ymm3[74],%ymm3[75],%ymm3[76],%ymm3[77],%ymm3[78],%ymm3[79],
     %ymm3[80],%ymm3[81],%ymm3[82],%ymm3[83],%ymm3[84],%ymm3[85],%ymm3[86],%ymm3[87],
     %ymm3[88],%ymm3[89],%ymm3[90],%ymm3[91],%ymm3[92],%ymm3[93],%ymm3[94],%ymm3[95],
     %ymm3[96],%ymm3[97],%ymm3[98],%ymm3[99],%ymm3[100],%ymm3[101],%ymm3[102],%ymm3[103],
     %ymm3[104],%ymm3[105],%ymm3[106],%ymm3[107],%ymm3[108],%ymm3[109],%ymm3[110],%ymm3[111],
     %ymm3[112],%ymm3[113],%ymm3[114],%ymm3[115],%ymm3[116],%ymm3[117],%ymm3[118],%ymm3[119],
     %ymm3[120],%ymm3[121],%ymm3[122],%ymm3[123],%ymm3[124],%ymm3[125],%ymm3[126],%ymm3[127],
     %ymm3[0],%ymm3[1],%ymm3[2],%ymm3[3],%ymm3[4],%ymm3[5],%ymm3[6],%ymm3[7],
     %ymm3[8],%ymm3[9],%ymm3[10],%ymm3[11],%ymm3[12],%ymm3[13],%ymm3[14],%ymm3[15],
     %ymm3[16],%ymm3[17],%ymm3[18],%ymm3[19],%ymm3[20],%ymm3[21],%ymm3[22],%ymm3[23],
     %ymm3[24],%ymm3[25],%ymm3[26],%ymm3[27],%ymm3[28],%ymm3[29],%ymm3[30],%ymm3[31],
     %ymm3[32],%ymm3[33],%ymm3[34],%ymm3[35],%ymm3[36],%ymm3[37],%ymm3[38],%ymm3[39],
     %ymm3[40],%ymm3[41],%ymm3[42],%ymm3[43],%ymm3[44],%ymm3[45],%ymm3[46],%ymm3[47],
     %ymm3[48],%ymm3[49],%ymm3[50],%ymm3[51],%ymm3[52],%ymm3[53],%ymm3[54],%ymm3[55],
     %ymm3[56],%ymm3[57],%ymm3[58],%ymm3[59],%ymm3[60],%ymm3[61],%ymm3[62],%ymm3[63],
     %ymm3[64],%ymm3[65],%ymm3[66],%ymm3[67],%ymm3[68],%ymm3[69],%ymm3[70],%ymm3[71],
     %ymm3[72],%ymm3[73],%ymm3[74],%ymm3[75],%ymm3[76],%ymm3[77],%ymm3[78],%ymm3[79],
     %ymm3[80],%ymm3[81],%ymm3[82],%ymm3[83],%ymm3[84],%ymm3[85],%ymm3[86],%ymm3[87],
     %ymm3[88],%ymm3[89],%ymm3[90],%ymm3[91],%ymm3[92],%ymm3[93],%ymm3[94],%ymm3[95],
     %ymm3[96],%ymm3[97],%ymm3[98],%ymm3[99],%ymm3[100],%ymm3[101],%ymm3[102],%ymm3[103],
     %ymm3[104],%ymm3[105],%ymm3[106],%ymm3[107],%ymm3[108],%ymm3[109],%ymm3[110],%ymm3[111],
     %ymm3[112],%ymm3[113],%ymm3[114],%ymm3[115],%ymm3[116],%ymm3[117],%ymm3[118],%ymm3[119],
     %ymm3[120],%ymm3[121],%ymm3[122],%ymm3[123],%ymm3[124],%ymm3[125],%ymm3[126],%ymm3[127]];
(* vpand  %ymm6,%ymm3,%ymm6                        #! PC = 0x55555557c6a7 *)
mul %ymm6 %ymm3 %ymm6;
(* vpermq $0x50,%ymm2,%ymm2                        #! PC = 0x55555557c6ab *)
mov %ymm2
    [%ymm2[0],%ymm2[1],%ymm2[2],%ymm2[3],%ymm2[4],%ymm2[5],%ymm2[6],%ymm2[7],
     %ymm2[8],%ymm2[9],%ymm2[10],%ymm2[11],%ymm2[12],%ymm2[13],%ymm2[14],%ymm2[15],
     %ymm2[16],%ymm2[17],%ymm2[18],%ymm2[19],%ymm2[20],%ymm2[21],%ymm2[22],%ymm2[23],
     %ymm2[24],%ymm2[25],%ymm2[26],%ymm2[27],%ymm2[28],%ymm2[29],%ymm2[30],%ymm2[31],
     %ymm2[32],%ymm2[33],%ymm2[34],%ymm2[35],%ymm2[36],%ymm2[37],%ymm2[38],%ymm2[39],
     %ymm2[40],%ymm2[41],%ymm2[42],%ymm2[43],%ymm2[44],%ymm2[45],%ymm2[46],%ymm2[47],
     %ymm2[48],%ymm2[49],%ymm2[50],%ymm2[51],%ymm2[52],%ymm2[53],%ymm2[54],%ymm2[55],
     %ymm2[56],%ymm2[57],%ymm2[58],%ymm2[59],%ymm2[60],%ymm2[61],%ymm2[62],%ymm2[63],
     %ymm2[0],%ymm2[1],%ymm2[2],%ymm2[3],%ymm2[4],%ymm2[5],%ymm2[6],%ymm2[7],
     %ymm2[8],%ymm2[9],%ymm2[10],%ymm2[11],%ymm2[12],%ymm2[13],%ymm2[14],%ymm2[15],
     %ymm2[16],%ymm2[17],%ymm2[18],%ymm2[19],%ymm2[20],%ymm2[21],%ymm2[22],%ymm2[23],
     %ymm2[24],%ymm2[25],%ymm2[26],%ymm2[27],%ymm2[28],%ymm2[29],%ymm2[30],%ymm2[31],
     %ymm2[32],%ymm2[33],%ymm2[34],%ymm2[35],%ymm2[36],%ymm2[37],%ymm2[38],%ymm2[39],
     %ymm2[40],%ymm2[41],%ymm2[42],%ymm2[43],%ymm2[44],%ymm2[45],%ymm2[46],%ymm2[47],
     %ymm2[48],%ymm2[49],%ymm2[50],%ymm2[51],%ymm2[52],%ymm2[53],%ymm2[54],%ymm2[55],
     %ymm2[56],%ymm2[57],%ymm2[58],%ymm2[59],%ymm2[60],%ymm2[61],%ymm2[62],%ymm2[63],
     %ymm2[64],%ymm2[65],%ymm2[66],%ymm2[67],%ymm2[68],%ymm2[69],%ymm2[70],%ymm2[71],
     %ymm2[72],%ymm2[73],%ymm2[74],%ymm2[75],%ymm2[76],%ymm2[77],%ymm2[78],%ymm2[79],
     %ymm2[80],%ymm2[81],%ymm2[82],%ymm2[83],%ymm2[84],%ymm2[85],%ymm2[86],%ymm2[87],
     %ymm2[88],%ymm2[89],%ymm2[90],%ymm2[91],%ymm2[92],%ymm2[93],%ymm2[94],%ymm2[95],
     %ymm2[96],%ymm2[97],%ymm2[98],%ymm2[99],%ymm2[100],%ymm2[101],%ymm2[102],%ymm2[103],
     %ymm2[104],%ymm2[105],%ymm2[106],%ymm2[107],%ymm2[108],%ymm2[109],%ymm2[110],%ymm2[111],
     %ymm2[112],%ymm2[113],%ymm2[114],%ymm2[115],%ymm2[116],%ymm2[117],%ymm2[118],%ymm2[119],
     %ymm2[120],%ymm2[121],%ymm2[122],%ymm2[123],%ymm2[124],%ymm2[125],%ymm2[126],%ymm2[127],
     %ymm2[64],%ymm2[65],%ymm2[66],%ymm2[67],%ymm2[68],%ymm2[69],%ymm2[70],%ymm2[71],
     %ymm2[72],%ymm2[73],%ymm2[74],%ymm2[75],%ymm2[76],%ymm2[77],%ymm2[78],%ymm2[79],
     %ymm2[80],%ymm2[81],%ymm2[82],%ymm2[83],%ymm2[84],%ymm2[85],%ymm2[86],%ymm2[87],
     %ymm2[88],%ymm2[89],%ymm2[90],%ymm2[91],%ymm2[92],%ymm2[93],%ymm2[94],%ymm2[95],
     %ymm2[96],%ymm2[97],%ymm2[98],%ymm2[99],%ymm2[100],%ymm2[101],%ymm2[102],%ymm2[103],
     %ymm2[104],%ymm2[105],%ymm2[106],%ymm2[107],%ymm2[108],%ymm2[109],%ymm2[110],%ymm2[111],
     %ymm2[112],%ymm2[113],%ymm2[114],%ymm2[115],%ymm2[116],%ymm2[117],%ymm2[118],%ymm2[119],
     %ymm2[120],%ymm2[121],%ymm2[122],%ymm2[123],%ymm2[124],%ymm2[125],%ymm2[126],%ymm2[127]];
(* vpand  %ymm2,%ymm7,%ymm14                       #! PC = 0x55555557c6b1 *)
mul %ymm14 %ymm7 %ymm2;
(* vpxor  %ymm14,%ymm8,%ymm8                       #! PC = 0x55555557c6b5 *)
adds %dc %ymm8 %ymm8 %ymm14;
(* vmovupd %ymm8,0x120(%rcx)                       #! EA = L0x7ffffffaebe0; PC = 0x55555557c6ba *)
mov %L0x7ffffffaebe0
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],%ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],%ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm8[16],%ymm8[17],%ymm8[18],%ymm8[19],%ymm8[20],%ymm8[21],%ymm8[22],%ymm8[23],
     %ymm8[24],%ymm8[25],%ymm8[26],%ymm8[27],%ymm8[28],%ymm8[29],%ymm8[30],%ymm8[31],
     %ymm8[32],%ymm8[33],%ymm8[34],%ymm8[35],%ymm8[36],%ymm8[37],%ymm8[38],%ymm8[39],
     %ymm8[40],%ymm8[41],%ymm8[42],%ymm8[43],%ymm8[44],%ymm8[45],%ymm8[46],%ymm8[47],
     %ymm8[48],%ymm8[49],%ymm8[50],%ymm8[51],%ymm8[52],%ymm8[53],%ymm8[54],%ymm8[55],
     %ymm8[56],%ymm8[57],%ymm8[58],%ymm8[59],%ymm8[60],%ymm8[61],%ymm8[62],%ymm8[63]];
mov %L0x7ffffffaebe8
    [%ymm8[64],%ymm8[65],%ymm8[66],%ymm8[67],%ymm8[68],%ymm8[69],%ymm8[70],%ymm8[71],
     %ymm8[72],%ymm8[73],%ymm8[74],%ymm8[75],%ymm8[76],%ymm8[77],%ymm8[78],%ymm8[79],
     %ymm8[80],%ymm8[81],%ymm8[82],%ymm8[83],%ymm8[84],%ymm8[85],%ymm8[86],%ymm8[87],
     %ymm8[88],%ymm8[89],%ymm8[90],%ymm8[91],%ymm8[92],%ymm8[93],%ymm8[94],%ymm8[95],
     %ymm8[96],%ymm8[97],%ymm8[98],%ymm8[99],%ymm8[100],%ymm8[101],%ymm8[102],%ymm8[103],
     %ymm8[104],%ymm8[105],%ymm8[106],%ymm8[107],%ymm8[108],%ymm8[109],%ymm8[110],%ymm8[111],
     %ymm8[112],%ymm8[113],%ymm8[114],%ymm8[115],%ymm8[116],%ymm8[117],%ymm8[118],%ymm8[119],
     %ymm8[120],%ymm8[121],%ymm8[122],%ymm8[123],%ymm8[124],%ymm8[125],%ymm8[126],%ymm8[127]];
mov %L0x7ffffffaebf0
    [%ymm8[128],%ymm8[129],%ymm8[130],%ymm8[131],%ymm8[132],%ymm8[133],%ymm8[134],%ymm8[135],
     %ymm8[136],%ymm8[137],%ymm8[138],%ymm8[139],%ymm8[140],%ymm8[141],%ymm8[142],%ymm8[143],
     %ymm8[144],%ymm8[145],%ymm8[146],%ymm8[147],%ymm8[148],%ymm8[149],%ymm8[150],%ymm8[151],
     %ymm8[152],%ymm8[153],%ymm8[154],%ymm8[155],%ymm8[156],%ymm8[157],%ymm8[158],%ymm8[159],
     %ymm8[160],%ymm8[161],%ymm8[162],%ymm8[163],%ymm8[164],%ymm8[165],%ymm8[166],%ymm8[167],
     %ymm8[168],%ymm8[169],%ymm8[170],%ymm8[171],%ymm8[172],%ymm8[173],%ymm8[174],%ymm8[175],
     %ymm8[176],%ymm8[177],%ymm8[178],%ymm8[179],%ymm8[180],%ymm8[181],%ymm8[182],%ymm8[183],
     %ymm8[184],%ymm8[185],%ymm8[186],%ymm8[187],%ymm8[188],%ymm8[189],%ymm8[190],%ymm8[191]];
mov %L0x7ffffffaebf8
    [%ymm8[192],%ymm8[193],%ymm8[194],%ymm8[195],%ymm8[196],%ymm8[197],%ymm8[198],%ymm8[199],
     %ymm8[200],%ymm8[201],%ymm8[202],%ymm8[203],%ymm8[204],%ymm8[205],%ymm8[206],%ymm8[207],
     %ymm8[208],%ymm8[209],%ymm8[210],%ymm8[211],%ymm8[212],%ymm8[213],%ymm8[214],%ymm8[215],
     %ymm8[216],%ymm8[217],%ymm8[218],%ymm8[219],%ymm8[220],%ymm8[221],%ymm8[222],%ymm8[223],
     %ymm8[224],%ymm8[225],%ymm8[226],%ymm8[227],%ymm8[228],%ymm8[229],%ymm8[230],%ymm8[231],
     %ymm8[232],%ymm8[233],%ymm8[234],%ymm8[235],%ymm8[236],%ymm8[237],%ymm8[238],%ymm8[239],
     %ymm8[240],%ymm8[241],%ymm8[242],%ymm8[243],%ymm8[244],%ymm8[245],%ymm8[246],%ymm8[247],
     %ymm8[248],%ymm8[249],%ymm8[250],%ymm8[251],%ymm8[252],%ymm8[253],%ymm8[254],%ymm8[255]];
(* vpand  %ymm2,%ymm5,%ymm8                        #! PC = 0x55555557c6c2 *)
mul %ymm8 %ymm5 %ymm2;
(* vpxor  %ymm8,%ymm10,%ymm10                      #! PC = 0x55555557c6c6 *)
adds %dc %ymm10 %ymm10 %ymm8;
(* vpand  %ymm2,%ymm9,%ymm8                        #! PC = 0x55555557c6cb *)
mul %ymm8 %ymm9 %ymm2;
(* vpxor  %ymm8,%ymm11,%ymm11                      #! PC = 0x55555557c6cf *)
adds %dc %ymm11 %ymm11 %ymm8;
(* vpand  %ymm2,%ymm4,%ymm8                        #! PC = 0x55555557c6d4 *)
mul %ymm8 %ymm4 %ymm2;
(* vpxor  %ymm8,%ymm13,%ymm13                      #! PC = 0x55555557c6d8 *)
adds %dc %ymm13 %ymm13 %ymm8;
(* vpand  %ymm2,%ymm12,%ymm8                       #! PC = 0x55555557c6dd *)
mul %ymm8 %ymm12 %ymm2;
(* vpxor  %ymm8,%ymm6,%ymm6                        #! PC = 0x55555557c6e1 *)
adds %dc %ymm6 %ymm6 %ymm8;
(* vpand  %ymm2,%ymm3,%ymm2                        #! PC = 0x55555557c6e6 *)
mul %ymm2 %ymm3 %ymm2;
(* vpermq $0xfa,%ymm1,%ymm8                        #! PC = 0x55555557c6ea *)
mov %ymm8
    [%ymm1[128],%ymm1[129],%ymm1[130],%ymm1[131],%ymm1[132],%ymm1[133],%ymm1[134],%ymm1[135],
     %ymm1[136],%ymm1[137],%ymm1[138],%ymm1[139],%ymm1[140],%ymm1[141],%ymm1[142],%ymm1[143],
     %ymm1[144],%ymm1[145],%ymm1[146],%ymm1[147],%ymm1[148],%ymm1[149],%ymm1[150],%ymm1[151],
     %ymm1[152],%ymm1[153],%ymm1[154],%ymm1[155],%ymm1[156],%ymm1[157],%ymm1[158],%ymm1[159],
     %ymm1[160],%ymm1[161],%ymm1[162],%ymm1[163],%ymm1[164],%ymm1[165],%ymm1[166],%ymm1[167],
     %ymm1[168],%ymm1[169],%ymm1[170],%ymm1[171],%ymm1[172],%ymm1[173],%ymm1[174],%ymm1[175],
     %ymm1[176],%ymm1[177],%ymm1[178],%ymm1[179],%ymm1[180],%ymm1[181],%ymm1[182],%ymm1[183],
     %ymm1[184],%ymm1[185],%ymm1[186],%ymm1[187],%ymm1[188],%ymm1[189],%ymm1[190],%ymm1[191],
     %ymm1[128],%ymm1[129],%ymm1[130],%ymm1[131],%ymm1[132],%ymm1[133],%ymm1[134],%ymm1[135],
     %ymm1[136],%ymm1[137],%ymm1[138],%ymm1[139],%ymm1[140],%ymm1[141],%ymm1[142],%ymm1[143],
     %ymm1[144],%ymm1[145],%ymm1[146],%ymm1[147],%ymm1[148],%ymm1[149],%ymm1[150],%ymm1[151],
     %ymm1[152],%ymm1[153],%ymm1[154],%ymm1[155],%ymm1[156],%ymm1[157],%ymm1[158],%ymm1[159],
     %ymm1[160],%ymm1[161],%ymm1[162],%ymm1[163],%ymm1[164],%ymm1[165],%ymm1[166],%ymm1[167],
     %ymm1[168],%ymm1[169],%ymm1[170],%ymm1[171],%ymm1[172],%ymm1[173],%ymm1[174],%ymm1[175],
     %ymm1[176],%ymm1[177],%ymm1[178],%ymm1[179],%ymm1[180],%ymm1[181],%ymm1[182],%ymm1[183],
     %ymm1[184],%ymm1[185],%ymm1[186],%ymm1[187],%ymm1[188],%ymm1[189],%ymm1[190],%ymm1[191],
     %ymm1[192],%ymm1[193],%ymm1[194],%ymm1[195],%ymm1[196],%ymm1[197],%ymm1[198],%ymm1[199],
     %ymm1[200],%ymm1[201],%ymm1[202],%ymm1[203],%ymm1[204],%ymm1[205],%ymm1[206],%ymm1[207],
     %ymm1[208],%ymm1[209],%ymm1[210],%ymm1[211],%ymm1[212],%ymm1[213],%ymm1[214],%ymm1[215],
     %ymm1[216],%ymm1[217],%ymm1[218],%ymm1[219],%ymm1[220],%ymm1[221],%ymm1[222],%ymm1[223],
     %ymm1[224],%ymm1[225],%ymm1[226],%ymm1[227],%ymm1[228],%ymm1[229],%ymm1[230],%ymm1[231],
     %ymm1[232],%ymm1[233],%ymm1[234],%ymm1[235],%ymm1[236],%ymm1[237],%ymm1[238],%ymm1[239],
     %ymm1[240],%ymm1[241],%ymm1[242],%ymm1[243],%ymm1[244],%ymm1[245],%ymm1[246],%ymm1[247],
     %ymm1[248],%ymm1[249],%ymm1[250],%ymm1[251],%ymm1[252],%ymm1[253],%ymm1[254],%ymm1[255],
     %ymm1[192],%ymm1[193],%ymm1[194],%ymm1[195],%ymm1[196],%ymm1[197],%ymm1[198],%ymm1[199],
     %ymm1[200],%ymm1[201],%ymm1[202],%ymm1[203],%ymm1[204],%ymm1[205],%ymm1[206],%ymm1[207],
     %ymm1[208],%ymm1[209],%ymm1[210],%ymm1[211],%ymm1[212],%ymm1[213],%ymm1[214],%ymm1[215],
     %ymm1[216],%ymm1[217],%ymm1[218],%ymm1[219],%ymm1[220],%ymm1[221],%ymm1[222],%ymm1[223],
     %ymm1[224],%ymm1[225],%ymm1[226],%ymm1[227],%ymm1[228],%ymm1[229],%ymm1[230],%ymm1[231],
     %ymm1[232],%ymm1[233],%ymm1[234],%ymm1[235],%ymm1[236],%ymm1[237],%ymm1[238],%ymm1[239],
     %ymm1[240],%ymm1[241],%ymm1[242],%ymm1[243],%ymm1[244],%ymm1[245],%ymm1[246],%ymm1[247],
     %ymm1[248],%ymm1[249],%ymm1[250],%ymm1[251],%ymm1[252],%ymm1[253],%ymm1[254],%ymm1[255]];
(* vpand  %ymm8,%ymm7,%ymm14                       #! PC = 0x55555557c6f0 *)
mul %ymm14 %ymm7 %ymm8;
(* vpxor  %ymm14,%ymm10,%ymm10                     #! PC = 0x55555557c6f5 *)
adds %dc %ymm10 %ymm10 %ymm14;
(* vmovupd %ymm10,0x100(%rcx)                      #! EA = L0x7ffffffaebc0; PC = 0x55555557c6fa *)
mov %L0x7ffffffaebc0
    [%ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],%ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],%ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
     %ymm10[16],%ymm10[17],%ymm10[18],%ymm10[19],%ymm10[20],%ymm10[21],%ymm10[22],%ymm10[23],
     %ymm10[24],%ymm10[25],%ymm10[26],%ymm10[27],%ymm10[28],%ymm10[29],%ymm10[30],%ymm10[31],
     %ymm10[32],%ymm10[33],%ymm10[34],%ymm10[35],%ymm10[36],%ymm10[37],%ymm10[38],%ymm10[39],
     %ymm10[40],%ymm10[41],%ymm10[42],%ymm10[43],%ymm10[44],%ymm10[45],%ymm10[46],%ymm10[47],
     %ymm10[48],%ymm10[49],%ymm10[50],%ymm10[51],%ymm10[52],%ymm10[53],%ymm10[54],%ymm10[55],
     %ymm10[56],%ymm10[57],%ymm10[58],%ymm10[59],%ymm10[60],%ymm10[61],%ymm10[62],%ymm10[63]];
mov %L0x7ffffffaebc8
    [%ymm10[64],%ymm10[65],%ymm10[66],%ymm10[67],%ymm10[68],%ymm10[69],%ymm10[70],%ymm10[71],
     %ymm10[72],%ymm10[73],%ymm10[74],%ymm10[75],%ymm10[76],%ymm10[77],%ymm10[78],%ymm10[79],
     %ymm10[80],%ymm10[81],%ymm10[82],%ymm10[83],%ymm10[84],%ymm10[85],%ymm10[86],%ymm10[87],
     %ymm10[88],%ymm10[89],%ymm10[90],%ymm10[91],%ymm10[92],%ymm10[93],%ymm10[94],%ymm10[95],
     %ymm10[96],%ymm10[97],%ymm10[98],%ymm10[99],%ymm10[100],%ymm10[101],%ymm10[102],%ymm10[103],
     %ymm10[104],%ymm10[105],%ymm10[106],%ymm10[107],%ymm10[108],%ymm10[109],%ymm10[110],%ymm10[111],
     %ymm10[112],%ymm10[113],%ymm10[114],%ymm10[115],%ymm10[116],%ymm10[117],%ymm10[118],%ymm10[119],
     %ymm10[120],%ymm10[121],%ymm10[122],%ymm10[123],%ymm10[124],%ymm10[125],%ymm10[126],%ymm10[127]];
mov %L0x7ffffffaebd0
    [%ymm10[128],%ymm10[129],%ymm10[130],%ymm10[131],%ymm10[132],%ymm10[133],%ymm10[134],%ymm10[135],
     %ymm10[136],%ymm10[137],%ymm10[138],%ymm10[139],%ymm10[140],%ymm10[141],%ymm10[142],%ymm10[143],
     %ymm10[144],%ymm10[145],%ymm10[146],%ymm10[147],%ymm10[148],%ymm10[149],%ymm10[150],%ymm10[151],
     %ymm10[152],%ymm10[153],%ymm10[154],%ymm10[155],%ymm10[156],%ymm10[157],%ymm10[158],%ymm10[159],
     %ymm10[160],%ymm10[161],%ymm10[162],%ymm10[163],%ymm10[164],%ymm10[165],%ymm10[166],%ymm10[167],
     %ymm10[168],%ymm10[169],%ymm10[170],%ymm10[171],%ymm10[172],%ymm10[173],%ymm10[174],%ymm10[175],
     %ymm10[176],%ymm10[177],%ymm10[178],%ymm10[179],%ymm10[180],%ymm10[181],%ymm10[182],%ymm10[183],
     %ymm10[184],%ymm10[185],%ymm10[186],%ymm10[187],%ymm10[188],%ymm10[189],%ymm10[190],%ymm10[191]];
mov %L0x7ffffffaebd8
    [%ymm10[192],%ymm10[193],%ymm10[194],%ymm10[195],%ymm10[196],%ymm10[197],%ymm10[198],%ymm10[199],
     %ymm10[200],%ymm10[201],%ymm10[202],%ymm10[203],%ymm10[204],%ymm10[205],%ymm10[206],%ymm10[207],
     %ymm10[208],%ymm10[209],%ymm10[210],%ymm10[211],%ymm10[212],%ymm10[213],%ymm10[214],%ymm10[215],
     %ymm10[216],%ymm10[217],%ymm10[218],%ymm10[219],%ymm10[220],%ymm10[221],%ymm10[222],%ymm10[223],
     %ymm10[224],%ymm10[225],%ymm10[226],%ymm10[227],%ymm10[228],%ymm10[229],%ymm10[230],%ymm10[231],
     %ymm10[232],%ymm10[233],%ymm10[234],%ymm10[235],%ymm10[236],%ymm10[237],%ymm10[238],%ymm10[239],
     %ymm10[240],%ymm10[241],%ymm10[242],%ymm10[243],%ymm10[244],%ymm10[245],%ymm10[246],%ymm10[247],
     %ymm10[248],%ymm10[249],%ymm10[250],%ymm10[251],%ymm10[252],%ymm10[253],%ymm10[254],%ymm10[255]];
(* vpand  %ymm8,%ymm5,%ymm10                       #! PC = 0x55555557c702 *)
mul %ymm10 %ymm5 %ymm8;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557c707 *)
adds %dc %ymm11 %ymm11 %ymm10;
(* vpand  %ymm8,%ymm9,%ymm10                       #! PC = 0x55555557c70c *)
mul %ymm10 %ymm9 %ymm8;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557c711 *)
adds %dc %ymm13 %ymm13 %ymm10;
(* vpand  %ymm8,%ymm4,%ymm10                       #! PC = 0x55555557c716 *)
mul %ymm10 %ymm4 %ymm8;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555557c71b *)
adds %dc %ymm6 %ymm6 %ymm10;
(* vpand  %ymm8,%ymm12,%ymm10                      #! PC = 0x55555557c720 *)
mul %ymm10 %ymm12 %ymm8;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555557c725 *)
adds %dc %ymm2 %ymm2 %ymm10;
(* vpand  %ymm8,%ymm3,%ymm8                        #! PC = 0x55555557c72a *)
mul %ymm8 %ymm3 %ymm8;
(* vpermq $0x50,%ymm1,%ymm1                        #! PC = 0x55555557c72f *)
mov %ymm1
    [%ymm1[0],%ymm1[1],%ymm1[2],%ymm1[3],%ymm1[4],%ymm1[5],%ymm1[6],%ymm1[7],
     %ymm1[8],%ymm1[9],%ymm1[10],%ymm1[11],%ymm1[12],%ymm1[13],%ymm1[14],%ymm1[15],
     %ymm1[16],%ymm1[17],%ymm1[18],%ymm1[19],%ymm1[20],%ymm1[21],%ymm1[22],%ymm1[23],
     %ymm1[24],%ymm1[25],%ymm1[26],%ymm1[27],%ymm1[28],%ymm1[29],%ymm1[30],%ymm1[31],
     %ymm1[32],%ymm1[33],%ymm1[34],%ymm1[35],%ymm1[36],%ymm1[37],%ymm1[38],%ymm1[39],
     %ymm1[40],%ymm1[41],%ymm1[42],%ymm1[43],%ymm1[44],%ymm1[45],%ymm1[46],%ymm1[47],
     %ymm1[48],%ymm1[49],%ymm1[50],%ymm1[51],%ymm1[52],%ymm1[53],%ymm1[54],%ymm1[55],
     %ymm1[56],%ymm1[57],%ymm1[58],%ymm1[59],%ymm1[60],%ymm1[61],%ymm1[62],%ymm1[63],
     %ymm1[0],%ymm1[1],%ymm1[2],%ymm1[3],%ymm1[4],%ymm1[5],%ymm1[6],%ymm1[7],
     %ymm1[8],%ymm1[9],%ymm1[10],%ymm1[11],%ymm1[12],%ymm1[13],%ymm1[14],%ymm1[15],
     %ymm1[16],%ymm1[17],%ymm1[18],%ymm1[19],%ymm1[20],%ymm1[21],%ymm1[22],%ymm1[23],
     %ymm1[24],%ymm1[25],%ymm1[26],%ymm1[27],%ymm1[28],%ymm1[29],%ymm1[30],%ymm1[31],
     %ymm1[32],%ymm1[33],%ymm1[34],%ymm1[35],%ymm1[36],%ymm1[37],%ymm1[38],%ymm1[39],
     %ymm1[40],%ymm1[41],%ymm1[42],%ymm1[43],%ymm1[44],%ymm1[45],%ymm1[46],%ymm1[47],
     %ymm1[48],%ymm1[49],%ymm1[50],%ymm1[51],%ymm1[52],%ymm1[53],%ymm1[54],%ymm1[55],
     %ymm1[56],%ymm1[57],%ymm1[58],%ymm1[59],%ymm1[60],%ymm1[61],%ymm1[62],%ymm1[63],
     %ymm1[64],%ymm1[65],%ymm1[66],%ymm1[67],%ymm1[68],%ymm1[69],%ymm1[70],%ymm1[71],
     %ymm1[72],%ymm1[73],%ymm1[74],%ymm1[75],%ymm1[76],%ymm1[77],%ymm1[78],%ymm1[79],
     %ymm1[80],%ymm1[81],%ymm1[82],%ymm1[83],%ymm1[84],%ymm1[85],%ymm1[86],%ymm1[87],
     %ymm1[88],%ymm1[89],%ymm1[90],%ymm1[91],%ymm1[92],%ymm1[93],%ymm1[94],%ymm1[95],
     %ymm1[96],%ymm1[97],%ymm1[98],%ymm1[99],%ymm1[100],%ymm1[101],%ymm1[102],%ymm1[103],
     %ymm1[104],%ymm1[105],%ymm1[106],%ymm1[107],%ymm1[108],%ymm1[109],%ymm1[110],%ymm1[111],
     %ymm1[112],%ymm1[113],%ymm1[114],%ymm1[115],%ymm1[116],%ymm1[117],%ymm1[118],%ymm1[119],
     %ymm1[120],%ymm1[121],%ymm1[122],%ymm1[123],%ymm1[124],%ymm1[125],%ymm1[126],%ymm1[127],
     %ymm1[64],%ymm1[65],%ymm1[66],%ymm1[67],%ymm1[68],%ymm1[69],%ymm1[70],%ymm1[71],
     %ymm1[72],%ymm1[73],%ymm1[74],%ymm1[75],%ymm1[76],%ymm1[77],%ymm1[78],%ymm1[79],
     %ymm1[80],%ymm1[81],%ymm1[82],%ymm1[83],%ymm1[84],%ymm1[85],%ymm1[86],%ymm1[87],
     %ymm1[88],%ymm1[89],%ymm1[90],%ymm1[91],%ymm1[92],%ymm1[93],%ymm1[94],%ymm1[95],
     %ymm1[96],%ymm1[97],%ymm1[98],%ymm1[99],%ymm1[100],%ymm1[101],%ymm1[102],%ymm1[103],
     %ymm1[104],%ymm1[105],%ymm1[106],%ymm1[107],%ymm1[108],%ymm1[109],%ymm1[110],%ymm1[111],
     %ymm1[112],%ymm1[113],%ymm1[114],%ymm1[115],%ymm1[116],%ymm1[117],%ymm1[118],%ymm1[119],
     %ymm1[120],%ymm1[121],%ymm1[122],%ymm1[123],%ymm1[124],%ymm1[125],%ymm1[126],%ymm1[127]];
(* vpand  %ymm1,%ymm7,%ymm10                       #! PC = 0x55555557c735 *)
mul %ymm10 %ymm7 %ymm1;
(* vpxor  %ymm10,%ymm11,%ymm11                     #! PC = 0x55555557c739 *)
adds %dc %ymm11 %ymm11 %ymm10;
(* vmovupd %ymm11,0xe0(%rcx)                       #! EA = L0x7ffffffaeba0; PC = 0x55555557c73e *)
mov %L0x7ffffffaeba0
    [%ymm11[0],%ymm11[1],%ymm11[2],%ymm11[3],%ymm11[4],%ymm11[5],%ymm11[6],%ymm11[7],
     %ymm11[8],%ymm11[9],%ymm11[10],%ymm11[11],%ymm11[12],%ymm11[13],%ymm11[14],%ymm11[15],
     %ymm11[16],%ymm11[17],%ymm11[18],%ymm11[19],%ymm11[20],%ymm11[21],%ymm11[22],%ymm11[23],
     %ymm11[24],%ymm11[25],%ymm11[26],%ymm11[27],%ymm11[28],%ymm11[29],%ymm11[30],%ymm11[31],
     %ymm11[32],%ymm11[33],%ymm11[34],%ymm11[35],%ymm11[36],%ymm11[37],%ymm11[38],%ymm11[39],
     %ymm11[40],%ymm11[41],%ymm11[42],%ymm11[43],%ymm11[44],%ymm11[45],%ymm11[46],%ymm11[47],
     %ymm11[48],%ymm11[49],%ymm11[50],%ymm11[51],%ymm11[52],%ymm11[53],%ymm11[54],%ymm11[55],
     %ymm11[56],%ymm11[57],%ymm11[58],%ymm11[59],%ymm11[60],%ymm11[61],%ymm11[62],%ymm11[63]];
mov %L0x7ffffffaeba8
    [%ymm11[64],%ymm11[65],%ymm11[66],%ymm11[67],%ymm11[68],%ymm11[69],%ymm11[70],%ymm11[71],
     %ymm11[72],%ymm11[73],%ymm11[74],%ymm11[75],%ymm11[76],%ymm11[77],%ymm11[78],%ymm11[79],
     %ymm11[80],%ymm11[81],%ymm11[82],%ymm11[83],%ymm11[84],%ymm11[85],%ymm11[86],%ymm11[87],
     %ymm11[88],%ymm11[89],%ymm11[90],%ymm11[91],%ymm11[92],%ymm11[93],%ymm11[94],%ymm11[95],
     %ymm11[96],%ymm11[97],%ymm11[98],%ymm11[99],%ymm11[100],%ymm11[101],%ymm11[102],%ymm11[103],
     %ymm11[104],%ymm11[105],%ymm11[106],%ymm11[107],%ymm11[108],%ymm11[109],%ymm11[110],%ymm11[111],
     %ymm11[112],%ymm11[113],%ymm11[114],%ymm11[115],%ymm11[116],%ymm11[117],%ymm11[118],%ymm11[119],
     %ymm11[120],%ymm11[121],%ymm11[122],%ymm11[123],%ymm11[124],%ymm11[125],%ymm11[126],%ymm11[127]];
mov %L0x7ffffffaebb0
    [%ymm11[128],%ymm11[129],%ymm11[130],%ymm11[131],%ymm11[132],%ymm11[133],%ymm11[134],%ymm11[135],
     %ymm11[136],%ymm11[137],%ymm11[138],%ymm11[139],%ymm11[140],%ymm11[141],%ymm11[142],%ymm11[143],
     %ymm11[144],%ymm11[145],%ymm11[146],%ymm11[147],%ymm11[148],%ymm11[149],%ymm11[150],%ymm11[151],
     %ymm11[152],%ymm11[153],%ymm11[154],%ymm11[155],%ymm11[156],%ymm11[157],%ymm11[158],%ymm11[159],
     %ymm11[160],%ymm11[161],%ymm11[162],%ymm11[163],%ymm11[164],%ymm11[165],%ymm11[166],%ymm11[167],
     %ymm11[168],%ymm11[169],%ymm11[170],%ymm11[171],%ymm11[172],%ymm11[173],%ymm11[174],%ymm11[175],
     %ymm11[176],%ymm11[177],%ymm11[178],%ymm11[179],%ymm11[180],%ymm11[181],%ymm11[182],%ymm11[183],
     %ymm11[184],%ymm11[185],%ymm11[186],%ymm11[187],%ymm11[188],%ymm11[189],%ymm11[190],%ymm11[191]];
mov %L0x7ffffffaebb8
    [%ymm11[192],%ymm11[193],%ymm11[194],%ymm11[195],%ymm11[196],%ymm11[197],%ymm11[198],%ymm11[199],
     %ymm11[200],%ymm11[201],%ymm11[202],%ymm11[203],%ymm11[204],%ymm11[205],%ymm11[206],%ymm11[207],
     %ymm11[208],%ymm11[209],%ymm11[210],%ymm11[211],%ymm11[212],%ymm11[213],%ymm11[214],%ymm11[215],
     %ymm11[216],%ymm11[217],%ymm11[218],%ymm11[219],%ymm11[220],%ymm11[221],%ymm11[222],%ymm11[223],
     %ymm11[224],%ymm11[225],%ymm11[226],%ymm11[227],%ymm11[228],%ymm11[229],%ymm11[230],%ymm11[231],
     %ymm11[232],%ymm11[233],%ymm11[234],%ymm11[235],%ymm11[236],%ymm11[237],%ymm11[238],%ymm11[239],
     %ymm11[240],%ymm11[241],%ymm11[242],%ymm11[243],%ymm11[244],%ymm11[245],%ymm11[246],%ymm11[247],
     %ymm11[248],%ymm11[249],%ymm11[250],%ymm11[251],%ymm11[252],%ymm11[253],%ymm11[254],%ymm11[255]];
(* vpand  %ymm1,%ymm5,%ymm10                       #! PC = 0x55555557c746 *)
mul %ymm10 %ymm5 %ymm1;
(* vpxor  %ymm10,%ymm13,%ymm13                     #! PC = 0x55555557c74a *)
adds %dc %ymm13 %ymm13 %ymm10;
(* vpand  %ymm1,%ymm9,%ymm10                       #! PC = 0x55555557c74f *)
mul %ymm10 %ymm9 %ymm1;
(* vpxor  %ymm10,%ymm6,%ymm6                       #! PC = 0x55555557c753 *)
adds %dc %ymm6 %ymm6 %ymm10;
(* vpand  %ymm1,%ymm4,%ymm10                       #! PC = 0x55555557c758 *)
mul %ymm10 %ymm4 %ymm1;
(* vpxor  %ymm10,%ymm2,%ymm2                       #! PC = 0x55555557c75c *)
adds %dc %ymm2 %ymm2 %ymm10;
(* vpand  %ymm1,%ymm12,%ymm10                      #! PC = 0x55555557c761 *)
mul %ymm10 %ymm12 %ymm1;
(* vpxor  %ymm10,%ymm8,%ymm8                       #! PC = 0x55555557c765 *)
adds %dc %ymm8 %ymm8 %ymm10;
(* vpand  %ymm1,%ymm3,%ymm1                        #! PC = 0x55555557c76a *)
mul %ymm1 %ymm3 %ymm1;
(* vpermq $0xfa,%ymm0,%ymm10                       #! PC = 0x55555557c76e *)
mov %ymm10
    [%ymm0[128],%ymm0[129],%ymm0[130],%ymm0[131],%ymm0[132],%ymm0[133],%ymm0[134],%ymm0[135],
     %ymm0[136],%ymm0[137],%ymm0[138],%ymm0[139],%ymm0[140],%ymm0[141],%ymm0[142],%ymm0[143],
     %ymm0[144],%ymm0[145],%ymm0[146],%ymm0[147],%ymm0[148],%ymm0[149],%ymm0[150],%ymm0[151],
     %ymm0[152],%ymm0[153],%ymm0[154],%ymm0[155],%ymm0[156],%ymm0[157],%ymm0[158],%ymm0[159],
     %ymm0[160],%ymm0[161],%ymm0[162],%ymm0[163],%ymm0[164],%ymm0[165],%ymm0[166],%ymm0[167],
     %ymm0[168],%ymm0[169],%ymm0[170],%ymm0[171],%ymm0[172],%ymm0[173],%ymm0[174],%ymm0[175],
     %ymm0[176],%ymm0[177],%ymm0[178],%ymm0[179],%ymm0[180],%ymm0[181],%ymm0[182],%ymm0[183],
     %ymm0[184],%ymm0[185],%ymm0[186],%ymm0[187],%ymm0[188],%ymm0[189],%ymm0[190],%ymm0[191],
     %ymm0[128],%ymm0[129],%ymm0[130],%ymm0[131],%ymm0[132],%ymm0[133],%ymm0[134],%ymm0[135],
     %ymm0[136],%ymm0[137],%ymm0[138],%ymm0[139],%ymm0[140],%ymm0[141],%ymm0[142],%ymm0[143],
     %ymm0[144],%ymm0[145],%ymm0[146],%ymm0[147],%ymm0[148],%ymm0[149],%ymm0[150],%ymm0[151],
     %ymm0[152],%ymm0[153],%ymm0[154],%ymm0[155],%ymm0[156],%ymm0[157],%ymm0[158],%ymm0[159],
     %ymm0[160],%ymm0[161],%ymm0[162],%ymm0[163],%ymm0[164],%ymm0[165],%ymm0[166],%ymm0[167],
     %ymm0[168],%ymm0[169],%ymm0[170],%ymm0[171],%ymm0[172],%ymm0[173],%ymm0[174],%ymm0[175],
     %ymm0[176],%ymm0[177],%ymm0[178],%ymm0[179],%ymm0[180],%ymm0[181],%ymm0[182],%ymm0[183],
     %ymm0[184],%ymm0[185],%ymm0[186],%ymm0[187],%ymm0[188],%ymm0[189],%ymm0[190],%ymm0[191],
     %ymm0[192],%ymm0[193],%ymm0[194],%ymm0[195],%ymm0[196],%ymm0[197],%ymm0[198],%ymm0[199],
     %ymm0[200],%ymm0[201],%ymm0[202],%ymm0[203],%ymm0[204],%ymm0[205],%ymm0[206],%ymm0[207],
     %ymm0[208],%ymm0[209],%ymm0[210],%ymm0[211],%ymm0[212],%ymm0[213],%ymm0[214],%ymm0[215],
     %ymm0[216],%ymm0[217],%ymm0[218],%ymm0[219],%ymm0[220],%ymm0[221],%ymm0[222],%ymm0[223],
     %ymm0[224],%ymm0[225],%ymm0[226],%ymm0[227],%ymm0[228],%ymm0[229],%ymm0[230],%ymm0[231],
     %ymm0[232],%ymm0[233],%ymm0[234],%ymm0[235],%ymm0[236],%ymm0[237],%ymm0[238],%ymm0[239],
     %ymm0[240],%ymm0[241],%ymm0[242],%ymm0[243],%ymm0[244],%ymm0[245],%ymm0[246],%ymm0[247],
     %ymm0[248],%ymm0[249],%ymm0[250],%ymm0[251],%ymm0[252],%ymm0[253],%ymm0[254],%ymm0[255],
     %ymm0[192],%ymm0[193],%ymm0[194],%ymm0[195],%ymm0[196],%ymm0[197],%ymm0[198],%ymm0[199],
     %ymm0[200],%ymm0[201],%ymm0[202],%ymm0[203],%ymm0[204],%ymm0[205],%ymm0[206],%ymm0[207],
     %ymm0[208],%ymm0[209],%ymm0[210],%ymm0[211],%ymm0[212],%ymm0[213],%ymm0[214],%ymm0[215],
     %ymm0[216],%ymm0[217],%ymm0[218],%ymm0[219],%ymm0[220],%ymm0[221],%ymm0[222],%ymm0[223],
     %ymm0[224],%ymm0[225],%ymm0[226],%ymm0[227],%ymm0[228],%ymm0[229],%ymm0[230],%ymm0[231],
     %ymm0[232],%ymm0[233],%ymm0[234],%ymm0[235],%ymm0[236],%ymm0[237],%ymm0[238],%ymm0[239],
     %ymm0[240],%ymm0[241],%ymm0[242],%ymm0[243],%ymm0[244],%ymm0[245],%ymm0[246],%ymm0[247],
     %ymm0[248],%ymm0[249],%ymm0[250],%ymm0[251],%ymm0[252],%ymm0[253],%ymm0[254],%ymm0[255]];
(* vpand  %ymm10,%ymm7,%ymm11                      #! PC = 0x55555557c774 *)
mul %ymm11 %ymm7 %ymm10;
(* vpxor  %ymm11,%ymm13,%ymm13                     #! PC = 0x55555557c779 *)
adds %dc %ymm13 %ymm13 %ymm11;
(* vmovupd %ymm13,0xc0(%rcx)                       #! EA = L0x7ffffffaeb80; PC = 0x55555557c77e *)
mov %L0x7ffffffaeb80
    [%ymm13[0],%ymm13[1],%ymm13[2],%ymm13[3],%ymm13[4],%ymm13[5],%ymm13[6],%ymm13[7],
     %ymm13[8],%ymm13[9],%ymm13[10],%ymm13[11],%ymm13[12],%ymm13[13],%ymm13[14],%ymm13[15],
     %ymm13[16],%ymm13[17],%ymm13[18],%ymm13[19],%ymm13[20],%ymm13[21],%ymm13[22],%ymm13[23],
     %ymm13[24],%ymm13[25],%ymm13[26],%ymm13[27],%ymm13[28],%ymm13[29],%ymm13[30],%ymm13[31],
     %ymm13[32],%ymm13[33],%ymm13[34],%ymm13[35],%ymm13[36],%ymm13[37],%ymm13[38],%ymm13[39],
     %ymm13[40],%ymm13[41],%ymm13[42],%ymm13[43],%ymm13[44],%ymm13[45],%ymm13[46],%ymm13[47],
     %ymm13[48],%ymm13[49],%ymm13[50],%ymm13[51],%ymm13[52],%ymm13[53],%ymm13[54],%ymm13[55],
     %ymm13[56],%ymm13[57],%ymm13[58],%ymm13[59],%ymm13[60],%ymm13[61],%ymm13[62],%ymm13[63]];
mov %L0x7ffffffaeb88
    [%ymm13[64],%ymm13[65],%ymm13[66],%ymm13[67],%ymm13[68],%ymm13[69],%ymm13[70],%ymm13[71],
     %ymm13[72],%ymm13[73],%ymm13[74],%ymm13[75],%ymm13[76],%ymm13[77],%ymm13[78],%ymm13[79],
     %ymm13[80],%ymm13[81],%ymm13[82],%ymm13[83],%ymm13[84],%ymm13[85],%ymm13[86],%ymm13[87],
     %ymm13[88],%ymm13[89],%ymm13[90],%ymm13[91],%ymm13[92],%ymm13[93],%ymm13[94],%ymm13[95],
     %ymm13[96],%ymm13[97],%ymm13[98],%ymm13[99],%ymm13[100],%ymm13[101],%ymm13[102],%ymm13[103],
     %ymm13[104],%ymm13[105],%ymm13[106],%ymm13[107],%ymm13[108],%ymm13[109],%ymm13[110],%ymm13[111],
     %ymm13[112],%ymm13[113],%ymm13[114],%ymm13[115],%ymm13[116],%ymm13[117],%ymm13[118],%ymm13[119],
     %ymm13[120],%ymm13[121],%ymm13[122],%ymm13[123],%ymm13[124],%ymm13[125],%ymm13[126],%ymm13[127]];
mov %L0x7ffffffaeb90
    [%ymm13[128],%ymm13[129],%ymm13[130],%ymm13[131],%ymm13[132],%ymm13[133],%ymm13[134],%ymm13[135],
     %ymm13[136],%ymm13[137],%ymm13[138],%ymm13[139],%ymm13[140],%ymm13[141],%ymm13[142],%ymm13[143],
     %ymm13[144],%ymm13[145],%ymm13[146],%ymm13[147],%ymm13[148],%ymm13[149],%ymm13[150],%ymm13[151],
     %ymm13[152],%ymm13[153],%ymm13[154],%ymm13[155],%ymm13[156],%ymm13[157],%ymm13[158],%ymm13[159],
     %ymm13[160],%ymm13[161],%ymm13[162],%ymm13[163],%ymm13[164],%ymm13[165],%ymm13[166],%ymm13[167],
     %ymm13[168],%ymm13[169],%ymm13[170],%ymm13[171],%ymm13[172],%ymm13[173],%ymm13[174],%ymm13[175],
     %ymm13[176],%ymm13[177],%ymm13[178],%ymm13[179],%ymm13[180],%ymm13[181],%ymm13[182],%ymm13[183],
     %ymm13[184],%ymm13[185],%ymm13[186],%ymm13[187],%ymm13[188],%ymm13[189],%ymm13[190],%ymm13[191]];
mov %L0x7ffffffaeb98
    [%ymm13[192],%ymm13[193],%ymm13[194],%ymm13[195],%ymm13[196],%ymm13[197],%ymm13[198],%ymm13[199],
     %ymm13[200],%ymm13[201],%ymm13[202],%ymm13[203],%ymm13[204],%ymm13[205],%ymm13[206],%ymm13[207],
     %ymm13[208],%ymm13[209],%ymm13[210],%ymm13[211],%ymm13[212],%ymm13[213],%ymm13[214],%ymm13[215],
     %ymm13[216],%ymm13[217],%ymm13[218],%ymm13[219],%ymm13[220],%ymm13[221],%ymm13[222],%ymm13[223],
     %ymm13[224],%ymm13[225],%ymm13[226],%ymm13[227],%ymm13[228],%ymm13[229],%ymm13[230],%ymm13[231],
     %ymm13[232],%ymm13[233],%ymm13[234],%ymm13[235],%ymm13[236],%ymm13[237],%ymm13[238],%ymm13[239],
     %ymm13[240],%ymm13[241],%ymm13[242],%ymm13[243],%ymm13[244],%ymm13[245],%ymm13[246],%ymm13[247],
     %ymm13[248],%ymm13[249],%ymm13[250],%ymm13[251],%ymm13[252],%ymm13[253],%ymm13[254],%ymm13[255]];
(* vpand  %ymm10,%ymm5,%ymm11                      #! PC = 0x55555557c786 *)
mul %ymm11 %ymm5 %ymm10;
(* vpxor  %ymm11,%ymm6,%ymm6                       #! PC = 0x55555557c78b *)
adds %dc %ymm6 %ymm6 %ymm11;
(* vpand  %ymm10,%ymm9,%ymm11                      #! PC = 0x55555557c790 *)
mul %ymm11 %ymm9 %ymm10;
(* vpxor  %ymm11,%ymm2,%ymm2                       #! PC = 0x55555557c795 *)
adds %dc %ymm2 %ymm2 %ymm11;
(* vpand  %ymm10,%ymm4,%ymm11                      #! PC = 0x55555557c79a *)
mul %ymm11 %ymm4 %ymm10;
(* vpxor  %ymm11,%ymm8,%ymm8                       #! PC = 0x55555557c79f *)
adds %dc %ymm8 %ymm8 %ymm11;
(* vpand  %ymm10,%ymm12,%ymm11                     #! PC = 0x55555557c7a4 *)
mul %ymm11 %ymm12 %ymm10;
(* vpxor  %ymm11,%ymm1,%ymm1                       #! PC = 0x55555557c7a9 *)
adds %dc %ymm1 %ymm1 %ymm11;
(* vpand  %ymm10,%ymm3,%ymm10                      #! PC = 0x55555557c7ae *)
mul %ymm10 %ymm3 %ymm10;
(* vpermq $0x50,%ymm0,%ymm0                        #! PC = 0x55555557c7b3 *)
mov %ymm0
    [%ymm0[0],%ymm0[1],%ymm0[2],%ymm0[3],%ymm0[4],%ymm0[5],%ymm0[6],%ymm0[7],
     %ymm0[8],%ymm0[9],%ymm0[10],%ymm0[11],%ymm0[12],%ymm0[13],%ymm0[14],%ymm0[15],
     %ymm0[16],%ymm0[17],%ymm0[18],%ymm0[19],%ymm0[20],%ymm0[21],%ymm0[22],%ymm0[23],
     %ymm0[24],%ymm0[25],%ymm0[26],%ymm0[27],%ymm0[28],%ymm0[29],%ymm0[30],%ymm0[31],
     %ymm0[32],%ymm0[33],%ymm0[34],%ymm0[35],%ymm0[36],%ymm0[37],%ymm0[38],%ymm0[39],
     %ymm0[40],%ymm0[41],%ymm0[42],%ymm0[43],%ymm0[44],%ymm0[45],%ymm0[46],%ymm0[47],
     %ymm0[48],%ymm0[49],%ymm0[50],%ymm0[51],%ymm0[52],%ymm0[53],%ymm0[54],%ymm0[55],
     %ymm0[56],%ymm0[57],%ymm0[58],%ymm0[59],%ymm0[60],%ymm0[61],%ymm0[62],%ymm0[63],
     %ymm0[0],%ymm0[1],%ymm0[2],%ymm0[3],%ymm0[4],%ymm0[5],%ymm0[6],%ymm0[7],
     %ymm0[8],%ymm0[9],%ymm0[10],%ymm0[11],%ymm0[12],%ymm0[13],%ymm0[14],%ymm0[15],
     %ymm0[16],%ymm0[17],%ymm0[18],%ymm0[19],%ymm0[20],%ymm0[21],%ymm0[22],%ymm0[23],
     %ymm0[24],%ymm0[25],%ymm0[26],%ymm0[27],%ymm0[28],%ymm0[29],%ymm0[30],%ymm0[31],
     %ymm0[32],%ymm0[33],%ymm0[34],%ymm0[35],%ymm0[36],%ymm0[37],%ymm0[38],%ymm0[39],
     %ymm0[40],%ymm0[41],%ymm0[42],%ymm0[43],%ymm0[44],%ymm0[45],%ymm0[46],%ymm0[47],
     %ymm0[48],%ymm0[49],%ymm0[50],%ymm0[51],%ymm0[52],%ymm0[53],%ymm0[54],%ymm0[55],
     %ymm0[56],%ymm0[57],%ymm0[58],%ymm0[59],%ymm0[60],%ymm0[61],%ymm0[62],%ymm0[63],
     %ymm0[64],%ymm0[65],%ymm0[66],%ymm0[67],%ymm0[68],%ymm0[69],%ymm0[70],%ymm0[71],
     %ymm0[72],%ymm0[73],%ymm0[74],%ymm0[75],%ymm0[76],%ymm0[77],%ymm0[78],%ymm0[79],
     %ymm0[80],%ymm0[81],%ymm0[82],%ymm0[83],%ymm0[84],%ymm0[85],%ymm0[86],%ymm0[87],
     %ymm0[88],%ymm0[89],%ymm0[90],%ymm0[91],%ymm0[92],%ymm0[93],%ymm0[94],%ymm0[95],
     %ymm0[96],%ymm0[97],%ymm0[98],%ymm0[99],%ymm0[100],%ymm0[101],%ymm0[102],%ymm0[103],
     %ymm0[104],%ymm0[105],%ymm0[106],%ymm0[107],%ymm0[108],%ymm0[109],%ymm0[110],%ymm0[111],
     %ymm0[112],%ymm0[113],%ymm0[114],%ymm0[115],%ymm0[116],%ymm0[117],%ymm0[118],%ymm0[119],
     %ymm0[120],%ymm0[121],%ymm0[122],%ymm0[123],%ymm0[124],%ymm0[125],%ymm0[126],%ymm0[127],
     %ymm0[64],%ymm0[65],%ymm0[66],%ymm0[67],%ymm0[68],%ymm0[69],%ymm0[70],%ymm0[71],
     %ymm0[72],%ymm0[73],%ymm0[74],%ymm0[75],%ymm0[76],%ymm0[77],%ymm0[78],%ymm0[79],
     %ymm0[80],%ymm0[81],%ymm0[82],%ymm0[83],%ymm0[84],%ymm0[85],%ymm0[86],%ymm0[87],
     %ymm0[88],%ymm0[89],%ymm0[90],%ymm0[91],%ymm0[92],%ymm0[93],%ymm0[94],%ymm0[95],
     %ymm0[96],%ymm0[97],%ymm0[98],%ymm0[99],%ymm0[100],%ymm0[101],%ymm0[102],%ymm0[103],
     %ymm0[104],%ymm0[105],%ymm0[106],%ymm0[107],%ymm0[108],%ymm0[109],%ymm0[110],%ymm0[111],
     %ymm0[112],%ymm0[113],%ymm0[114],%ymm0[115],%ymm0[116],%ymm0[117],%ymm0[118],%ymm0[119],
     %ymm0[120],%ymm0[121],%ymm0[122],%ymm0[123],%ymm0[124],%ymm0[125],%ymm0[126],%ymm0[127]];
(* vpand  %ymm0,%ymm7,%ymm7                        #! PC = 0x55555557c7b9 *)
mul %ymm7 %ymm7 %ymm0;
(* vpxor  %ymm7,%ymm6,%ymm6                        #! PC = 0x55555557c7bd *)
adds %dc %ymm6 %ymm6 %ymm7;
(* vmovupd %ymm6,0xa0(%rcx)                        #! EA = L0x7ffffffaeb60; PC = 0x55555557c7c1 *)
mov %L0x7ffffffaeb60
    [%ymm6[0],%ymm6[1],%ymm6[2],%ymm6[3],%ymm6[4],%ymm6[5],%ymm6[6],%ymm6[7],
     %ymm6[8],%ymm6[9],%ymm6[10],%ymm6[11],%ymm6[12],%ymm6[13],%ymm6[14],%ymm6[15],
     %ymm6[16],%ymm6[17],%ymm6[18],%ymm6[19],%ymm6[20],%ymm6[21],%ymm6[22],%ymm6[23],
     %ymm6[24],%ymm6[25],%ymm6[26],%ymm6[27],%ymm6[28],%ymm6[29],%ymm6[30],%ymm6[31],
     %ymm6[32],%ymm6[33],%ymm6[34],%ymm6[35],%ymm6[36],%ymm6[37],%ymm6[38],%ymm6[39],
     %ymm6[40],%ymm6[41],%ymm6[42],%ymm6[43],%ymm6[44],%ymm6[45],%ymm6[46],%ymm6[47],
     %ymm6[48],%ymm6[49],%ymm6[50],%ymm6[51],%ymm6[52],%ymm6[53],%ymm6[54],%ymm6[55],
     %ymm6[56],%ymm6[57],%ymm6[58],%ymm6[59],%ymm6[60],%ymm6[61],%ymm6[62],%ymm6[63]];
mov %L0x7ffffffaeb68
    [%ymm6[64],%ymm6[65],%ymm6[66],%ymm6[67],%ymm6[68],%ymm6[69],%ymm6[70],%ymm6[71],
     %ymm6[72],%ymm6[73],%ymm6[74],%ymm6[75],%ymm6[76],%ymm6[77],%ymm6[78],%ymm6[79],
     %ymm6[80],%ymm6[81],%ymm6[82],%ymm6[83],%ymm6[84],%ymm6[85],%ymm6[86],%ymm6[87],
     %ymm6[88],%ymm6[89],%ymm6[90],%ymm6[91],%ymm6[92],%ymm6[93],%ymm6[94],%ymm6[95],
     %ymm6[96],%ymm6[97],%ymm6[98],%ymm6[99],%ymm6[100],%ymm6[101],%ymm6[102],%ymm6[103],
     %ymm6[104],%ymm6[105],%ymm6[106],%ymm6[107],%ymm6[108],%ymm6[109],%ymm6[110],%ymm6[111],
     %ymm6[112],%ymm6[113],%ymm6[114],%ymm6[115],%ymm6[116],%ymm6[117],%ymm6[118],%ymm6[119],
     %ymm6[120],%ymm6[121],%ymm6[122],%ymm6[123],%ymm6[124],%ymm6[125],%ymm6[126],%ymm6[127]];
mov %L0x7ffffffaeb70
    [%ymm6[128],%ymm6[129],%ymm6[130],%ymm6[131],%ymm6[132],%ymm6[133],%ymm6[134],%ymm6[135],
     %ymm6[136],%ymm6[137],%ymm6[138],%ymm6[139],%ymm6[140],%ymm6[141],%ymm6[142],%ymm6[143],
     %ymm6[144],%ymm6[145],%ymm6[146],%ymm6[147],%ymm6[148],%ymm6[149],%ymm6[150],%ymm6[151],
     %ymm6[152],%ymm6[153],%ymm6[154],%ymm6[155],%ymm6[156],%ymm6[157],%ymm6[158],%ymm6[159],
     %ymm6[160],%ymm6[161],%ymm6[162],%ymm6[163],%ymm6[164],%ymm6[165],%ymm6[166],%ymm6[167],
     %ymm6[168],%ymm6[169],%ymm6[170],%ymm6[171],%ymm6[172],%ymm6[173],%ymm6[174],%ymm6[175],
     %ymm6[176],%ymm6[177],%ymm6[178],%ymm6[179],%ymm6[180],%ymm6[181],%ymm6[182],%ymm6[183],
     %ymm6[184],%ymm6[185],%ymm6[186],%ymm6[187],%ymm6[188],%ymm6[189],%ymm6[190],%ymm6[191]];
mov %L0x7ffffffaeb78
    [%ymm6[192],%ymm6[193],%ymm6[194],%ymm6[195],%ymm6[196],%ymm6[197],%ymm6[198],%ymm6[199],
     %ymm6[200],%ymm6[201],%ymm6[202],%ymm6[203],%ymm6[204],%ymm6[205],%ymm6[206],%ymm6[207],
     %ymm6[208],%ymm6[209],%ymm6[210],%ymm6[211],%ymm6[212],%ymm6[213],%ymm6[214],%ymm6[215],
     %ymm6[216],%ymm6[217],%ymm6[218],%ymm6[219],%ymm6[220],%ymm6[221],%ymm6[222],%ymm6[223],
     %ymm6[224],%ymm6[225],%ymm6[226],%ymm6[227],%ymm6[228],%ymm6[229],%ymm6[230],%ymm6[231],
     %ymm6[232],%ymm6[233],%ymm6[234],%ymm6[235],%ymm6[236],%ymm6[237],%ymm6[238],%ymm6[239],
     %ymm6[240],%ymm6[241],%ymm6[242],%ymm6[243],%ymm6[244],%ymm6[245],%ymm6[246],%ymm6[247],
     %ymm6[248],%ymm6[249],%ymm6[250],%ymm6[251],%ymm6[252],%ymm6[253],%ymm6[254],%ymm6[255]];
(* vpand  %ymm0,%ymm5,%ymm5                        #! PC = 0x55555557c7c9 *)
mul %ymm5 %ymm5 %ymm0;
(* vpxor  %ymm5,%ymm2,%ymm2                        #! PC = 0x55555557c7cd *)
adds %dc %ymm2 %ymm2 %ymm5;
(* vpand  %ymm0,%ymm9,%ymm5                        #! PC = 0x55555557c7d1 *)
mul %ymm5 %ymm9 %ymm0;
(* vpxor  %ymm5,%ymm8,%ymm8                        #! PC = 0x55555557c7d5 *)
adds %dc %ymm8 %ymm8 %ymm5;
(* vpand  %ymm0,%ymm4,%ymm4                        #! PC = 0x55555557c7d9 *)
mul %ymm4 %ymm4 %ymm0;
(* vpxor  %ymm4,%ymm1,%ymm1                        #! PC = 0x55555557c7dd *)
adds %dc %ymm1 %ymm1 %ymm4;
(* vpand  %ymm0,%ymm12,%ymm4                       #! PC = 0x55555557c7e1 *)
mul %ymm4 %ymm12 %ymm0;
(* vpxor  %ymm4,%ymm10,%ymm10                      #! PC = 0x55555557c7e5 *)
adds %dc %ymm10 %ymm10 %ymm4;
(* vpand  %ymm0,%ymm3,%ymm0                        #! PC = 0x55555557c7e9 *)
mul %ymm0 %ymm3 %ymm0;
(* vmovupd %ymm2,0x80(%rcx)                        #! EA = L0x7ffffffaeb40; PC = 0x55555557c7ed *)
mov %L0x7ffffffaeb40
    [%ymm2[0],%ymm2[1],%ymm2[2],%ymm2[3],%ymm2[4],%ymm2[5],%ymm2[6],%ymm2[7],
     %ymm2[8],%ymm2[9],%ymm2[10],%ymm2[11],%ymm2[12],%ymm2[13],%ymm2[14],%ymm2[15],
     %ymm2[16],%ymm2[17],%ymm2[18],%ymm2[19],%ymm2[20],%ymm2[21],%ymm2[22],%ymm2[23],
     %ymm2[24],%ymm2[25],%ymm2[26],%ymm2[27],%ymm2[28],%ymm2[29],%ymm2[30],%ymm2[31],
     %ymm2[32],%ymm2[33],%ymm2[34],%ymm2[35],%ymm2[36],%ymm2[37],%ymm2[38],%ymm2[39],
     %ymm2[40],%ymm2[41],%ymm2[42],%ymm2[43],%ymm2[44],%ymm2[45],%ymm2[46],%ymm2[47],
     %ymm2[48],%ymm2[49],%ymm2[50],%ymm2[51],%ymm2[52],%ymm2[53],%ymm2[54],%ymm2[55],
     %ymm2[56],%ymm2[57],%ymm2[58],%ymm2[59],%ymm2[60],%ymm2[61],%ymm2[62],%ymm2[63]];
mov %L0x7ffffffaeb48
    [%ymm2[64],%ymm2[65],%ymm2[66],%ymm2[67],%ymm2[68],%ymm2[69],%ymm2[70],%ymm2[71],
     %ymm2[72],%ymm2[73],%ymm2[74],%ymm2[75],%ymm2[76],%ymm2[77],%ymm2[78],%ymm2[79],
     %ymm2[80],%ymm2[81],%ymm2[82],%ymm2[83],%ymm2[84],%ymm2[85],%ymm2[86],%ymm2[87],
     %ymm2[88],%ymm2[89],%ymm2[90],%ymm2[91],%ymm2[92],%ymm2[93],%ymm2[94],%ymm2[95],
     %ymm2[96],%ymm2[97],%ymm2[98],%ymm2[99],%ymm2[100],%ymm2[101],%ymm2[102],%ymm2[103],
     %ymm2[104],%ymm2[105],%ymm2[106],%ymm2[107],%ymm2[108],%ymm2[109],%ymm2[110],%ymm2[111],
     %ymm2[112],%ymm2[113],%ymm2[114],%ymm2[115],%ymm2[116],%ymm2[117],%ymm2[118],%ymm2[119],
     %ymm2[120],%ymm2[121],%ymm2[122],%ymm2[123],%ymm2[124],%ymm2[125],%ymm2[126],%ymm2[127]];
mov %L0x7ffffffaeb50
    [%ymm2[128],%ymm2[129],%ymm2[130],%ymm2[131],%ymm2[132],%ymm2[133],%ymm2[134],%ymm2[135],
     %ymm2[136],%ymm2[137],%ymm2[138],%ymm2[139],%ymm2[140],%ymm2[141],%ymm2[142],%ymm2[143],
     %ymm2[144],%ymm2[145],%ymm2[146],%ymm2[147],%ymm2[148],%ymm2[149],%ymm2[150],%ymm2[151],
     %ymm2[152],%ymm2[153],%ymm2[154],%ymm2[155],%ymm2[156],%ymm2[157],%ymm2[158],%ymm2[159],
     %ymm2[160],%ymm2[161],%ymm2[162],%ymm2[163],%ymm2[164],%ymm2[165],%ymm2[166],%ymm2[167],
     %ymm2[168],%ymm2[169],%ymm2[170],%ymm2[171],%ymm2[172],%ymm2[173],%ymm2[174],%ymm2[175],
     %ymm2[176],%ymm2[177],%ymm2[178],%ymm2[179],%ymm2[180],%ymm2[181],%ymm2[182],%ymm2[183],
     %ymm2[184],%ymm2[185],%ymm2[186],%ymm2[187],%ymm2[188],%ymm2[189],%ymm2[190],%ymm2[191]];
mov %L0x7ffffffaeb58
    [%ymm2[192],%ymm2[193],%ymm2[194],%ymm2[195],%ymm2[196],%ymm2[197],%ymm2[198],%ymm2[199],
     %ymm2[200],%ymm2[201],%ymm2[202],%ymm2[203],%ymm2[204],%ymm2[205],%ymm2[206],%ymm2[207],
     %ymm2[208],%ymm2[209],%ymm2[210],%ymm2[211],%ymm2[212],%ymm2[213],%ymm2[214],%ymm2[215],
     %ymm2[216],%ymm2[217],%ymm2[218],%ymm2[219],%ymm2[220],%ymm2[221],%ymm2[222],%ymm2[223],
     %ymm2[224],%ymm2[225],%ymm2[226],%ymm2[227],%ymm2[228],%ymm2[229],%ymm2[230],%ymm2[231],
     %ymm2[232],%ymm2[233],%ymm2[234],%ymm2[235],%ymm2[236],%ymm2[237],%ymm2[238],%ymm2[239],
     %ymm2[240],%ymm2[241],%ymm2[242],%ymm2[243],%ymm2[244],%ymm2[245],%ymm2[246],%ymm2[247],
     %ymm2[248],%ymm2[249],%ymm2[250],%ymm2[251],%ymm2[252],%ymm2[253],%ymm2[254],%ymm2[255]];
(* vmovupd %ymm8,0x60(%rcx)                        #! EA = L0x7ffffffaeb20; PC = 0x55555557c7f5 *)
mov %L0x7ffffffaeb20
    [%ymm8[0],%ymm8[1],%ymm8[2],%ymm8[3],%ymm8[4],%ymm8[5],%ymm8[6],%ymm8[7],
     %ymm8[8],%ymm8[9],%ymm8[10],%ymm8[11],%ymm8[12],%ymm8[13],%ymm8[14],%ymm8[15],
     %ymm8[16],%ymm8[17],%ymm8[18],%ymm8[19],%ymm8[20],%ymm8[21],%ymm8[22],%ymm8[23],
     %ymm8[24],%ymm8[25],%ymm8[26],%ymm8[27],%ymm8[28],%ymm8[29],%ymm8[30],%ymm8[31],
     %ymm8[32],%ymm8[33],%ymm8[34],%ymm8[35],%ymm8[36],%ymm8[37],%ymm8[38],%ymm8[39],
     %ymm8[40],%ymm8[41],%ymm8[42],%ymm8[43],%ymm8[44],%ymm8[45],%ymm8[46],%ymm8[47],
     %ymm8[48],%ymm8[49],%ymm8[50],%ymm8[51],%ymm8[52],%ymm8[53],%ymm8[54],%ymm8[55],
     %ymm8[56],%ymm8[57],%ymm8[58],%ymm8[59],%ymm8[60],%ymm8[61],%ymm8[62],%ymm8[63]];
mov %L0x7ffffffaeb28
    [%ymm8[64],%ymm8[65],%ymm8[66],%ymm8[67],%ymm8[68],%ymm8[69],%ymm8[70],%ymm8[71],
     %ymm8[72],%ymm8[73],%ymm8[74],%ymm8[75],%ymm8[76],%ymm8[77],%ymm8[78],%ymm8[79],
     %ymm8[80],%ymm8[81],%ymm8[82],%ymm8[83],%ymm8[84],%ymm8[85],%ymm8[86],%ymm8[87],
     %ymm8[88],%ymm8[89],%ymm8[90],%ymm8[91],%ymm8[92],%ymm8[93],%ymm8[94],%ymm8[95],
     %ymm8[96],%ymm8[97],%ymm8[98],%ymm8[99],%ymm8[100],%ymm8[101],%ymm8[102],%ymm8[103],
     %ymm8[104],%ymm8[105],%ymm8[106],%ymm8[107],%ymm8[108],%ymm8[109],%ymm8[110],%ymm8[111],
     %ymm8[112],%ymm8[113],%ymm8[114],%ymm8[115],%ymm8[116],%ymm8[117],%ymm8[118],%ymm8[119],
     %ymm8[120],%ymm8[121],%ymm8[122],%ymm8[123],%ymm8[124],%ymm8[125],%ymm8[126],%ymm8[127]];
mov %L0x7ffffffaeb30
    [%ymm8[128],%ymm8[129],%ymm8[130],%ymm8[131],%ymm8[132],%ymm8[133],%ymm8[134],%ymm8[135],
     %ymm8[136],%ymm8[137],%ymm8[138],%ymm8[139],%ymm8[140],%ymm8[141],%ymm8[142],%ymm8[143],
     %ymm8[144],%ymm8[145],%ymm8[146],%ymm8[147],%ymm8[148],%ymm8[149],%ymm8[150],%ymm8[151],
     %ymm8[152],%ymm8[153],%ymm8[154],%ymm8[155],%ymm8[156],%ymm8[157],%ymm8[158],%ymm8[159],
     %ymm8[160],%ymm8[161],%ymm8[162],%ymm8[163],%ymm8[164],%ymm8[165],%ymm8[166],%ymm8[167],
     %ymm8[168],%ymm8[169],%ymm8[170],%ymm8[171],%ymm8[172],%ymm8[173],%ymm8[174],%ymm8[175],
     %ymm8[176],%ymm8[177],%ymm8[178],%ymm8[179],%ymm8[180],%ymm8[181],%ymm8[182],%ymm8[183],
     %ymm8[184],%ymm8[185],%ymm8[186],%ymm8[187],%ymm8[188],%ymm8[189],%ymm8[190],%ymm8[191]];
mov %L0x7ffffffaeb38
    [%ymm8[192],%ymm8[193],%ymm8[194],%ymm8[195],%ymm8[196],%ymm8[197],%ymm8[198],%ymm8[199],
     %ymm8[200],%ymm8[201],%ymm8[202],%ymm8[203],%ymm8[204],%ymm8[205],%ymm8[206],%ymm8[207],
     %ymm8[208],%ymm8[209],%ymm8[210],%ymm8[211],%ymm8[212],%ymm8[213],%ymm8[214],%ymm8[215],
     %ymm8[216],%ymm8[217],%ymm8[218],%ymm8[219],%ymm8[220],%ymm8[221],%ymm8[222],%ymm8[223],
     %ymm8[224],%ymm8[225],%ymm8[226],%ymm8[227],%ymm8[228],%ymm8[229],%ymm8[230],%ymm8[231],
     %ymm8[232],%ymm8[233],%ymm8[234],%ymm8[235],%ymm8[236],%ymm8[237],%ymm8[238],%ymm8[239],
     %ymm8[240],%ymm8[241],%ymm8[242],%ymm8[243],%ymm8[244],%ymm8[245],%ymm8[246],%ymm8[247],
     %ymm8[248],%ymm8[249],%ymm8[250],%ymm8[251],%ymm8[252],%ymm8[253],%ymm8[254],%ymm8[255]];
(* vmovupd %ymm1,0x40(%rcx)                        #! EA = L0x7ffffffaeb00; PC = 0x55555557c7fa *)
mov %L0x7ffffffaeb00
    [%ymm1[0],%ymm1[1],%ymm1[2],%ymm1[3],%ymm1[4],%ymm1[5],%ymm1[6],%ymm1[7],
     %ymm1[8],%ymm1[9],%ymm1[10],%ymm1[11],%ymm1[12],%ymm1[13],%ymm1[14],%ymm1[15],
     %ymm1[16],%ymm1[17],%ymm1[18],%ymm1[19],%ymm1[20],%ymm1[21],%ymm1[22],%ymm1[23],
     %ymm1[24],%ymm1[25],%ymm1[26],%ymm1[27],%ymm1[28],%ymm1[29],%ymm1[30],%ymm1[31],
     %ymm1[32],%ymm1[33],%ymm1[34],%ymm1[35],%ymm1[36],%ymm1[37],%ymm1[38],%ymm1[39],
     %ymm1[40],%ymm1[41],%ymm1[42],%ymm1[43],%ymm1[44],%ymm1[45],%ymm1[46],%ymm1[47],
     %ymm1[48],%ymm1[49],%ymm1[50],%ymm1[51],%ymm1[52],%ymm1[53],%ymm1[54],%ymm1[55],
     %ymm1[56],%ymm1[57],%ymm1[58],%ymm1[59],%ymm1[60],%ymm1[61],%ymm1[62],%ymm1[63]];
mov %L0x7ffffffaeb08
    [%ymm1[64],%ymm1[65],%ymm1[66],%ymm1[67],%ymm1[68],%ymm1[69],%ymm1[70],%ymm1[71],
     %ymm1[72],%ymm1[73],%ymm1[74],%ymm1[75],%ymm1[76],%ymm1[77],%ymm1[78],%ymm1[79],
     %ymm1[80],%ymm1[81],%ymm1[82],%ymm1[83],%ymm1[84],%ymm1[85],%ymm1[86],%ymm1[87],
     %ymm1[88],%ymm1[89],%ymm1[90],%ymm1[91],%ymm1[92],%ymm1[93],%ymm1[94],%ymm1[95],
     %ymm1[96],%ymm1[97],%ymm1[98],%ymm1[99],%ymm1[100],%ymm1[101],%ymm1[102],%ymm1[103],
     %ymm1[104],%ymm1[105],%ymm1[106],%ymm1[107],%ymm1[108],%ymm1[109],%ymm1[110],%ymm1[111],
     %ymm1[112],%ymm1[113],%ymm1[114],%ymm1[115],%ymm1[116],%ymm1[117],%ymm1[118],%ymm1[119],
     %ymm1[120],%ymm1[121],%ymm1[122],%ymm1[123],%ymm1[124],%ymm1[125],%ymm1[126],%ymm1[127]];
mov %L0x7ffffffaeb10
    [%ymm1[128],%ymm1[129],%ymm1[130],%ymm1[131],%ymm1[132],%ymm1[133],%ymm1[134],%ymm1[135],
     %ymm1[136],%ymm1[137],%ymm1[138],%ymm1[139],%ymm1[140],%ymm1[141],%ymm1[142],%ymm1[143],
     %ymm1[144],%ymm1[145],%ymm1[146],%ymm1[147],%ymm1[148],%ymm1[149],%ymm1[150],%ymm1[151],
     %ymm1[152],%ymm1[153],%ymm1[154],%ymm1[155],%ymm1[156],%ymm1[157],%ymm1[158],%ymm1[159],
     %ymm1[160],%ymm1[161],%ymm1[162],%ymm1[163],%ymm1[164],%ymm1[165],%ymm1[166],%ymm1[167],
     %ymm1[168],%ymm1[169],%ymm1[170],%ymm1[171],%ymm1[172],%ymm1[173],%ymm1[174],%ymm1[175],
     %ymm1[176],%ymm1[177],%ymm1[178],%ymm1[179],%ymm1[180],%ymm1[181],%ymm1[182],%ymm1[183],
     %ymm1[184],%ymm1[185],%ymm1[186],%ymm1[187],%ymm1[188],%ymm1[189],%ymm1[190],%ymm1[191]];
mov %L0x7ffffffaeb18
    [%ymm1[192],%ymm1[193],%ymm1[194],%ymm1[195],%ymm1[196],%ymm1[197],%ymm1[198],%ymm1[199],
     %ymm1[200],%ymm1[201],%ymm1[202],%ymm1[203],%ymm1[204],%ymm1[205],%ymm1[206],%ymm1[207],
     %ymm1[208],%ymm1[209],%ymm1[210],%ymm1[211],%ymm1[212],%ymm1[213],%ymm1[214],%ymm1[215],
     %ymm1[216],%ymm1[217],%ymm1[218],%ymm1[219],%ymm1[220],%ymm1[221],%ymm1[222],%ymm1[223],
     %ymm1[224],%ymm1[225],%ymm1[226],%ymm1[227],%ymm1[228],%ymm1[229],%ymm1[230],%ymm1[231],
     %ymm1[232],%ymm1[233],%ymm1[234],%ymm1[235],%ymm1[236],%ymm1[237],%ymm1[238],%ymm1[239],
     %ymm1[240],%ymm1[241],%ymm1[242],%ymm1[243],%ymm1[244],%ymm1[245],%ymm1[246],%ymm1[247],
     %ymm1[248],%ymm1[249],%ymm1[250],%ymm1[251],%ymm1[252],%ymm1[253],%ymm1[254],%ymm1[255]];
(* vmovupd %ymm10,0x20(%rcx)                       #! EA = L0x7ffffffaeae0; PC = 0x55555557c7ff *)
mov %L0x7ffffffaeae0
    [%ymm10[0],%ymm10[1],%ymm10[2],%ymm10[3],%ymm10[4],%ymm10[5],%ymm10[6],%ymm10[7],
     %ymm10[8],%ymm10[9],%ymm10[10],%ymm10[11],%ymm10[12],%ymm10[13],%ymm10[14],%ymm10[15],
     %ymm10[16],%ymm10[17],%ymm10[18],%ymm10[19],%ymm10[20],%ymm10[21],%ymm10[22],%ymm10[23],
     %ymm10[24],%ymm10[25],%ymm10[26],%ymm10[27],%ymm10[28],%ymm10[29],%ymm10[30],%ymm10[31],
     %ymm10[32],%ymm10[33],%ymm10[34],%ymm10[35],%ymm10[36],%ymm10[37],%ymm10[38],%ymm10[39],
     %ymm10[40],%ymm10[41],%ymm10[42],%ymm10[43],%ymm10[44],%ymm10[45],%ymm10[46],%ymm10[47],
     %ymm10[48],%ymm10[49],%ymm10[50],%ymm10[51],%ymm10[52],%ymm10[53],%ymm10[54],%ymm10[55],
     %ymm10[56],%ymm10[57],%ymm10[58],%ymm10[59],%ymm10[60],%ymm10[61],%ymm10[62],%ymm10[63]];
mov %L0x7ffffffaeae8
    [%ymm10[64],%ymm10[65],%ymm10[66],%ymm10[67],%ymm10[68],%ymm10[69],%ymm10[70],%ymm10[71],
     %ymm10[72],%ymm10[73],%ymm10[74],%ymm10[75],%ymm10[76],%ymm10[77],%ymm10[78],%ymm10[79],
     %ymm10[80],%ymm10[81],%ymm10[82],%ymm10[83],%ymm10[84],%ymm10[85],%ymm10[86],%ymm10[87],
     %ymm10[88],%ymm10[89],%ymm10[90],%ymm10[91],%ymm10[92],%ymm10[93],%ymm10[94],%ymm10[95],
     %ymm10[96],%ymm10[97],%ymm10[98],%ymm10[99],%ymm10[100],%ymm10[101],%ymm10[102],%ymm10[103],
     %ymm10[104],%ymm10[105],%ymm10[106],%ymm10[107],%ymm10[108],%ymm10[109],%ymm10[110],%ymm10[111],
     %ymm10[112],%ymm10[113],%ymm10[114],%ymm10[115],%ymm10[116],%ymm10[117],%ymm10[118],%ymm10[119],
     %ymm10[120],%ymm10[121],%ymm10[122],%ymm10[123],%ymm10[124],%ymm10[125],%ymm10[126],%ymm10[127]];
mov %L0x7ffffffaeaf0
    [%ymm10[128],%ymm10[129],%ymm10[130],%ymm10[131],%ymm10[132],%ymm10[133],%ymm10[134],%ymm10[135],
     %ymm10[136],%ymm10[137],%ymm10[138],%ymm10[139],%ymm10[140],%ymm10[141],%ymm10[142],%ymm10[143],
     %ymm10[144],%ymm10[145],%ymm10[146],%ymm10[147],%ymm10[148],%ymm10[149],%ymm10[150],%ymm10[151],
     %ymm10[152],%ymm10[153],%ymm10[154],%ymm10[155],%ymm10[156],%ymm10[157],%ymm10[158],%ymm10[159],
     %ymm10[160],%ymm10[161],%ymm10[162],%ymm10[163],%ymm10[164],%ymm10[165],%ymm10[166],%ymm10[167],
     %ymm10[168],%ymm10[169],%ymm10[170],%ymm10[171],%ymm10[172],%ymm10[173],%ymm10[174],%ymm10[175],
     %ymm10[176],%ymm10[177],%ymm10[178],%ymm10[179],%ymm10[180],%ymm10[181],%ymm10[182],%ymm10[183],
     %ymm10[184],%ymm10[185],%ymm10[186],%ymm10[187],%ymm10[188],%ymm10[189],%ymm10[190],%ymm10[191]];
mov %L0x7ffffffaeaf8
    [%ymm10[192],%ymm10[193],%ymm10[194],%ymm10[195],%ymm10[196],%ymm10[197],%ymm10[198],%ymm10[199],
     %ymm10[200],%ymm10[201],%ymm10[202],%ymm10[203],%ymm10[204],%ymm10[205],%ymm10[206],%ymm10[207],
     %ymm10[208],%ymm10[209],%ymm10[210],%ymm10[211],%ymm10[212],%ymm10[213],%ymm10[214],%ymm10[215],
     %ymm10[216],%ymm10[217],%ymm10[218],%ymm10[219],%ymm10[220],%ymm10[221],%ymm10[222],%ymm10[223],
     %ymm10[224],%ymm10[225],%ymm10[226],%ymm10[227],%ymm10[228],%ymm10[229],%ymm10[230],%ymm10[231],
     %ymm10[232],%ymm10[233],%ymm10[234],%ymm10[235],%ymm10[236],%ymm10[237],%ymm10[238],%ymm10[239],
     %ymm10[240],%ymm10[241],%ymm10[242],%ymm10[243],%ymm10[244],%ymm10[245],%ymm10[246],%ymm10[247],
     %ymm10[248],%ymm10[249],%ymm10[250],%ymm10[251],%ymm10[252],%ymm10[253],%ymm10[254],%ymm10[255]];
(* vmovupd %ymm0,(%rcx)                            #! EA = L0x7ffffffaeac0; PC = 0x55555557c804 *)
mov %L0x7ffffffaeac0
    [%ymm0[0],%ymm0[1],%ymm0[2],%ymm0[3],%ymm0[4],%ymm0[5],%ymm0[6],%ymm0[7],
     %ymm0[8],%ymm0[9],%ymm0[10],%ymm0[11],%ymm0[12],%ymm0[13],%ymm0[14],%ymm0[15],
     %ymm0[16],%ymm0[17],%ymm0[18],%ymm0[19],%ymm0[20],%ymm0[21],%ymm0[22],%ymm0[23],
     %ymm0[24],%ymm0[25],%ymm0[26],%ymm0[27],%ymm0[28],%ymm0[29],%ymm0[30],%ymm0[31],
     %ymm0[32],%ymm0[33],%ymm0[34],%ymm0[35],%ymm0[36],%ymm0[37],%ymm0[38],%ymm0[39],
     %ymm0[40],%ymm0[41],%ymm0[42],%ymm0[43],%ymm0[44],%ymm0[45],%ymm0[46],%ymm0[47],
     %ymm0[48],%ymm0[49],%ymm0[50],%ymm0[51],%ymm0[52],%ymm0[53],%ymm0[54],%ymm0[55],
     %ymm0[56],%ymm0[57],%ymm0[58],%ymm0[59],%ymm0[60],%ymm0[61],%ymm0[62],%ymm0[63]];
mov %L0x7ffffffaeac8
    [%ymm0[64],%ymm0[65],%ymm0[66],%ymm0[67],%ymm0[68],%ymm0[69],%ymm0[70],%ymm0[71],
     %ymm0[72],%ymm0[73],%ymm0[74],%ymm0[75],%ymm0[76],%ymm0[77],%ymm0[78],%ymm0[79],
     %ymm0[80],%ymm0[81],%ymm0[82],%ymm0[83],%ymm0[84],%ymm0[85],%ymm0[86],%ymm0[87],
     %ymm0[88],%ymm0[89],%ymm0[90],%ymm0[91],%ymm0[92],%ymm0[93],%ymm0[94],%ymm0[95],
     %ymm0[96],%ymm0[97],%ymm0[98],%ymm0[99],%ymm0[100],%ymm0[101],%ymm0[102],%ymm0[103],
     %ymm0[104],%ymm0[105],%ymm0[106],%ymm0[107],%ymm0[108],%ymm0[109],%ymm0[110],%ymm0[111],
     %ymm0[112],%ymm0[113],%ymm0[114],%ymm0[115],%ymm0[116],%ymm0[117],%ymm0[118],%ymm0[119],
     %ymm0[120],%ymm0[121],%ymm0[122],%ymm0[123],%ymm0[124],%ymm0[125],%ymm0[126],%ymm0[127]];
mov %L0x7ffffffaead0
    [%ymm0[128],%ymm0[129],%ymm0[130],%ymm0[131],%ymm0[132],%ymm0[133],%ymm0[134],%ymm0[135],
     %ymm0[136],%ymm0[137],%ymm0[138],%ymm0[139],%ymm0[140],%ymm0[141],%ymm0[142],%ymm0[143],
     %ymm0[144],%ymm0[145],%ymm0[146],%ymm0[147],%ymm0[148],%ymm0[149],%ymm0[150],%ymm0[151],
     %ymm0[152],%ymm0[153],%ymm0[154],%ymm0[155],%ymm0[156],%ymm0[157],%ymm0[158],%ymm0[159],
     %ymm0[160],%ymm0[161],%ymm0[162],%ymm0[163],%ymm0[164],%ymm0[165],%ymm0[166],%ymm0[167],
     %ymm0[168],%ymm0[169],%ymm0[170],%ymm0[171],%ymm0[172],%ymm0[173],%ymm0[174],%ymm0[175],
     %ymm0[176],%ymm0[177],%ymm0[178],%ymm0[179],%ymm0[180],%ymm0[181],%ymm0[182],%ymm0[183],
     %ymm0[184],%ymm0[185],%ymm0[186],%ymm0[187],%ymm0[188],%ymm0[189],%ymm0[190],%ymm0[191]];
mov %L0x7ffffffaead8
    [%ymm0[192],%ymm0[193],%ymm0[194],%ymm0[195],%ymm0[196],%ymm0[197],%ymm0[198],%ymm0[199],
     %ymm0[200],%ymm0[201],%ymm0[202],%ymm0[203],%ymm0[204],%ymm0[205],%ymm0[206],%ymm0[207],
     %ymm0[208],%ymm0[209],%ymm0[210],%ymm0[211],%ymm0[212],%ymm0[213],%ymm0[214],%ymm0[215],
     %ymm0[216],%ymm0[217],%ymm0[218],%ymm0[219],%ymm0[220],%ymm0[221],%ymm0[222],%ymm0[223],
     %ymm0[224],%ymm0[225],%ymm0[226],%ymm0[227],%ymm0[228],%ymm0[229],%ymm0[230],%ymm0[231],
     %ymm0[232],%ymm0[233],%ymm0[234],%ymm0[235],%ymm0[236],%ymm0[237],%ymm0[238],%ymm0[239],
     %ymm0[240],%ymm0[241],%ymm0[242],%ymm0[243],%ymm0[244],%ymm0[245],%ymm0[246],%ymm0[247],
     %ymm0[248],%ymm0[249],%ymm0[250],%ymm0[251],%ymm0[252],%ymm0[253],%ymm0[254],%ymm0[255]];
(* mov    0x158(%rcx),%rsi                         #! EA = L0x7ffffffaec18; Value = 0xee32729c84b4ef56; PC = 0x55555557c808 *)
mov %rsi %L0x7ffffffaec18;
(* mov    %rsi,%rdx                                #! PC = 0x55555557c80f *)
mov %rdx %rsi;
(* mov    %rsi,%rsi                                #! PC = 0x55555557c812 *)
mov %rsi %rsi;
(* mov    0x150(%rcx),%r8                          #! EA = L0x7ffffffaec10; Value = 0x0000000000000000; PC = 0x55555557c815 *)
mov %r8 %L0x7ffffffaec10;
(* xor    0x148(%rcx),%r8                          #! EA = L0x7ffffffaec08; Value = 0x4212a06da2673bb3; PC = 0x55555557c81c *)
adds %dc %r8 %L0x7ffffffaec08 %r8;
(* mov    %r8,%r9                                  #! PC = 0x55555557c823 *)
mov %r9 %r8;
(* mov    %r8,%r8                                  #! PC = 0x55555557c826 *)
mov %r8 %r8;
(* mov    0x138(%rcx),%rax                         #! EA = L0x7ffffffaebf8; Value = 0x082ca6ad5cddf08c; PC = 0x55555557c829 *)
mov %rax %L0x7ffffffaebf8;
(* xor    0x140(%rcx),%rax                         #! EA = L0x7ffffffaec00; Value = 0x0000000000000000; PC = 0x55555557c830 *)
adds %dc %rax %L0x7ffffffaec00 %rax;
(* mov    %rax,%r10                                #! PC = 0x55555557c837 *)
mov %r10 %rax;
(* mov    %rax,%rax                                #! PC = 0x55555557c83a *)
mov %rax %rax;
(* mov    0x130(%rcx),%r11                         #! EA = L0x7ffffffaebf0; Value = 0xee32729c84b4ef56; PC = 0x55555557c83d *)
mov %r11 %L0x7ffffffaebf0;
(* xor    0x128(%rcx),%r11                         #! EA = L0x7ffffffaebe8; Value = 0x8afe4dc102c021d4; PC = 0x55555557c844 *)
adds %dc %r11 %L0x7ffffffaebe8 %r11;
(* xor    %r11,%rsi                                #! PC = 0x55555557c84b *)
adds %dc %rsi %r11 %rsi;
(* mov    %r11,%r11                                #! PC = 0x55555557c84e *)
mov %r11 %r11;
(* mov    0x118(%rcx),%r12                         #! EA = L0x7ffffffaebd8; Value = 0x5f3f09d3fc775ab2; PC = 0x55555557c851 *)
mov %r12 %L0x7ffffffaebd8;
(* xor    0x120(%rcx),%r12                         #! EA = L0x7ffffffaebe0; Value = 0x4212a06da2673bb3; PC = 0x55555557c858 *)
adds %dc %r12 %L0x7ffffffaebe0 %r12;
(* xor    %r12,%r8                                 #! PC = 0x55555557c85f *)
adds %dc %r8 %r12 %r8;
(* mov    %r12,%r12                                #! PC = 0x55555557c862 *)
mov %r12 %r12;
(* mov    0x110(%rcx),%r13                         #! EA = L0x7ffffffaebd0; Value = 0xe61ed431d8691fda; PC = 0x55555557c865 *)
mov %r13 %L0x7ffffffaebd0;
(* xor    0x108(%rcx),%r13                         #! EA = L0x7ffffffaebc8; Value = 0x8443788ba44909bc; PC = 0x55555557c86c *)
adds %dc %r13 %L0x7ffffffaebc8 %r13;
(* xor    %r13,%rax                                #! PC = 0x55555557c873 *)
adds %dc %rax %r13 %rax;
(* mov    %r13,%r13                                #! PC = 0x55555557c876 *)
mov %r13 %r13;
(* mov    0xf8(%rcx),%r14                          #! EA = L0x7ffffffaebb8; Value = 0x5c6505b1c44839c2; PC = 0x55555557c879 *)
mov %r14 %L0x7ffffffaebb8;
(* xor    0x100(%rcx),%r14                         #! EA = L0x7ffffffaebc0; Value = 0xc8ecedaca0a71a67; PC = 0x55555557c880 *)
adds %dc %r14 %L0x7ffffffaebc0 %r14;
(* xor    %r14,%r11                                #! PC = 0x55555557c887 *)
adds %dc %r11 %r14 %r11;
(* mov    %r14,%r14                                #! PC = 0x55555557c88a *)
mov %r14 %r14;
(* mov    0xf0(%rcx),%r15                          #! EA = L0x7ffffffaebb0; Value = 0x5713af7ea0aaaa3e; PC = 0x55555557c88d *)
mov %r15 %L0x7ffffffaebb0;
(* xor    0xe8(%rcx),%r15                          #! EA = L0x7ffffffaeba8; Value = 0x4dfb36788ff24492; PC = 0x55555557c894 *)
adds %dc %r15 %L0x7ffffffaeba8 %r15;
(* xor    %r15,%r12                                #! PC = 0x55555557c89b *)
adds %dc %r12 %r15 %r12;
(* mov    %r15,%r15                                #! PC = 0x55555557c89e *)
mov %r15 %r15;
(* mov    0xd8(%rcx),%rbx                          #! EA = L0x7ffffffaeb98; Value = 0x2f177f309597a11e; PC = 0x55555557c8a1 *)
mov %rbx %L0x7ffffffaeb98;
(* xor    0xe0(%rcx),%rbx                          #! EA = L0x7ffffffaeba0; Value = 0x0ebd354aa6892868; PC = 0x55555557c8a8 *)
adds %dc %rbx %L0x7ffffffaeba0 %rbx;
(* xor    %rbx,%r13                                #! PC = 0x55555557c8af *)
adds %dc %r13 %rbx %r13;
(* mov    %rbx,%rbx                                #! PC = 0x55555557c8b2 *)
mov %rbx %rbx;
(* xor    0xd0(%rcx),%rdx                          #! EA = L0x7ffffffaeb90; Value = 0xed687efebc8b8c26; PC = 0x55555557c8b5 *)
adds %dc %rdx %L0x7ffffffaeb90 %rdx;
(* xor    0xc8(%rcx),%rdx                          #! EA = L0x7ffffffaeb88; Value = 0xc9d8717c4ff7b119; PC = 0x55555557c8bc *)
adds %dc %rdx %L0x7ffffffaeb88 %rdx;
(* xor    %rdx,%r14                                #! PC = 0x55555557c8c3 *)
adds %dc %r14 %rdx %r14;
(* mov    %rdx,%rdx                                #! PC = 0x55555557c8c6 *)
mov %rdx %rdx;
(* xor    0xb8(%rcx),%r9                           #! EA = L0x7ffffffaeb78; Value = 0x0e2cab72a8078f0a; PC = 0x55555557c8c9 *)
adds %dc %r9 %L0x7ffffffaeb78 %r9;
(* xor    0xc0(%rcx),%r9                           #! EA = L0x7ffffffaeb80; Value = 0x8baaee9e89dc769d; PC = 0x55555557c8d0 *)
adds %dc %r9 %L0x7ffffffaeb80 %r9;
(* xor    %r9,%r15                                 #! PC = 0x55555557c8d7 *)
adds %dc %r15 %r9 %r15;
(* mov    %r9,%r9                                  #! PC = 0x55555557c8da *)
mov %r9 %r9;
(* xor    0xb0(%rcx),%r10                          #! EA = L0x7ffffffaeb70; Value = 0x7b5edc2c0d026850; PC = 0x55555557c8dd *)
adds %dc %r10 %L0x7ffffffaeb70 %r10;
(* xor    0xa8(%rcx),%r10                          #! EA = L0x7ffffffaeb68; Value = 0x3faf6a47905a393a; PC = 0x55555557c8e4 *)
adds %dc %r10 %L0x7ffffffaeb68 %r10;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7ffffffaef58; PC = 0x55555557c8eb *)
mov %L0x7ffffffaef58 %r10;
(* xor    0x98(%rcx),%rsi                          #! EA = L0x7ffffffaeb58; Value = 0x082ca6ad5cddf08c; PC = 0x55555557c8ef *)
adds %dc %rsi %L0x7ffffffaeb58 %rsi;
(* xor    0xa0(%rcx),%rsi                          #! EA = L0x7ffffffaeb60; Value = 0x0edd0ac5c2c5d45f; PC = 0x55555557c8f6 *)
adds %dc %rsi %L0x7ffffffaeb60 %rsi;
(* mov    %rsi,0x50(%rdi)                          #! EA = L0x7ffffffaef50; PC = 0x55555557c8fd *)
mov %L0x7ffffffaef50 %rsi;
(* xor    0x90(%rcx),%r8                           #! EA = L0x7ffffffaeb50; Value = 0x9036af0d45539bf0; PC = 0x55555557c901 *)
adds %dc %r8 %L0x7ffffffaeb50 %r8;
(* xor    0x88(%rcx),%r8                           #! EA = L0x7ffffffaeb48; Value = 0x8afe4dc102c021d4; PC = 0x55555557c908 *)
adds %dc %r8 %L0x7ffffffaeb48 %r8;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7ffffffaef48; PC = 0x55555557c90f *)
mov %L0x7ffffffaef48 %r8;
(* xor    0x78(%rcx),%rax                          #! EA = L0x7ffffffaeb38; Value = 0x5f3f09d3fc775ab2; PC = 0x55555557c913 *)
adds %dc %rax %L0x7ffffffaeb38 %rax;
(* xor    0x80(%rcx),%rax                          #! EA = L0x7ffffffaeb40; Value = 0x3026c3ddd983ba2c; PC = 0x55555557c917 *)
adds %dc %rax %L0x7ffffffaeb40 %rax;
(* mov    %rax,0x40(%rdi)                          #! EA = L0x7ffffffaef40; PC = 0x55555557c91e *)
mov %L0x7ffffffaef40 %rax;
(* xor    0x70(%rcx),%r11                          #! EA = L0x7ffffffaeb30; Value = 0xbc7bdc5fe8fb599e; PC = 0x55555557c922 *)
adds %dc %r11 %L0x7ffffffaeb30 %r11;
(* xor    0x68(%rcx),%r11                          #! EA = L0x7ffffffaeb28; Value = 0x8443788ba44909bc; PC = 0x55555557c926 *)
adds %dc %r11 %L0x7ffffffaeb28 %r11;
(* mov    %r11,0x38(%rdi)                          #! EA = L0x7ffffffaef38; PC = 0x55555557c92a *)
mov %L0x7ffffffaef38 %r11;
(* xor    0x58(%rcx),%r12                          #! EA = L0x7ffffffaeb18; Value = 0x5c6505b1c44839c2; PC = 0x55555557c92e *)
adds %dc %r12 %L0x7ffffffaeb18 %r12;
(* xor    0x60(%rcx),%r12                          #! EA = L0x7ffffffaeb20; Value = 0x3046fc52bdcf461b; PC = 0x55555557c932 *)
adds %dc %r12 %L0x7ffffffaeb20 %r12;
(* mov    %r12,0x30(%rdi)                          #! EA = L0x7ffffffaef30; PC = 0x55555557c936 *)
mov %L0x7ffffffaef30 %r12;
(* xor    0x50(%rcx),%r13                          #! EA = L0x7ffffffaeb10; Value = 0x2f177f309597a11e; PC = 0x55555557c93a *)
adds %dc %r13 %L0x7ffffffaeb10 %r13;
(* xor    0x48(%rcx),%r13                          #! EA = L0x7ffffffaeb08; Value = 0x4dfb36788ff24492; PC = 0x55555557c93e *)
adds %dc %r13 %L0x7ffffffaeb08 %r13;
(* mov    %r13,0x28(%rdi)                          #! EA = L0x7ffffffaef28; PC = 0x55555557c942 *)
mov %L0x7ffffffaef28 %r13;
(* xor    0x38(%rcx),%r14                          #! EA = L0x7ffffffaeaf8; Value = 0x2f177f309597a11e; PC = 0x55555557c946 *)
adds %dc %r14 %L0x7ffffffaeaf8 %r14;
(* xor    0x40(%rcx),%r14                          #! EA = L0x7ffffffaeb00; Value = 0xc9d8717c4ff7b119; PC = 0x55555557c94a *)
adds %dc %r14 %L0x7ffffffaeb00 %r14;
(* mov    %r14,0x20(%rdi)                          #! EA = L0x7ffffffaef20; PC = 0x55555557c94e *)
mov %L0x7ffffffaef20 %r14;
(* xor    0x30(%rcx),%r15                          #! EA = L0x7ffffffaeaf0; Value = 0xe01ed9ee2cb3605c; PC = 0x55555557c952 *)
adds %dc %r15 %L0x7ffffffaeaf0 %r15;
(* xor    0x28(%rcx),%r15                          #! EA = L0x7ffffffaeae8; Value = 0xc9d8717c4ff7b119; PC = 0x55555557c956 *)
adds %dc %r15 %L0x7ffffffaeae8 %r15;
(* mov    %r15,0x18(%rdi)                          #! EA = L0x7ffffffaef18; PC = 0x55555557c95a *)
mov %L0x7ffffffaef18 %r15;
(* xor    0x18(%rcx),%rbx                          #! EA = L0x7ffffffaead8; Value = 0xe01ed9ee2cb3605c; PC = 0x55555557c95e *)
adds %dc %rbx %L0x7ffffffaead8 %rbx;
(* xor    0x20(%rcx),%rbx                          #! EA = L0x7ffffffaeae0; Value = 0x7dbdca2a323d0289; PC = 0x55555557c962 *)
adds %dc %rbx %L0x7ffffffaeae0 %rbx;
(* mov    %rbx,0x10(%rdi)                          #! EA = L0x7ffffffaef10; PC = 0x55555557c966 *)
mov %L0x7ffffffaef10 %rbx;
(* xor    0x10(%rcx),%rdx                          #! EA = L0x7ffffffaead0; Value = 0x0000000000000000; PC = 0x55555557c96a *)
adds %dc %rdx %L0x7ffffffaead0 %rdx;
(* xor    0x8(%rcx),%rdx                           #! EA = L0x7ffffffaeac8; Value = 0x7dbdca2a323d0289; PC = 0x55555557c96e *)
adds %dc %rdx %L0x7ffffffaeac8 %rdx;
(* mov    %rdx,0x8(%rdi)                           #! EA = L0x7ffffffaef08; PC = 0x55555557c972 *)
mov %L0x7ffffffaef08 %rdx;
(* xor    (%rcx),%r9                               #! EA = L0x7ffffffaeac0; Value = 0x0000000000000000; PC = 0x55555557c976 *)
adds %dc %r9 %L0x7ffffffaeac0 %r9;
(* mov    %r9,(%rdi)                               #! EA = L0x7ffffffaef00; PC = 0x55555557c979 *)
mov %L0x7ffffffaef00 %r9;
(* mov    0x260(%rsp),%r11                         #! EA = L0x7ffffffaed20; Value = 0x00000000000002b8; PC = 0x55555557c97c *)
mov %r11 %L0x7ffffffaed20;
(* mov    0x268(%rsp),%r12                         #! EA = L0x7ffffffaed28; Value = 0x0000000000000000; PC = 0x55555557c984 *)
mov %r12 %L0x7ffffffaed28;
(* mov    0x270(%rsp),%r13                         #! EA = L0x7ffffffaed30; Value = 0x0000000000000000; PC = 0x55555557c98c *)
mov %r13 %L0x7ffffffaed30;
(* mov    0x278(%rsp),%r14                         #! EA = L0x7ffffffaed38; Value = 0x0000000000000000; PC = 0x55555557c994 *)
mov %r14 %L0x7ffffffaed38;
(* mov    0x280(%rsp),%r15                         #! EA = L0x7ffffffaed40; Value = 0x0000000000000000; PC = 0x55555557c99c *)
mov %r15 %L0x7ffffffaed40;
(* mov    0x288(%rsp),%rbx                         #! EA = L0x7ffffffaed48; Value = 0x0000000000000000; PC = 0x55555557c9a4 *)
mov %rbx %L0x7ffffffaed48;
(* add    %r11,%rsp                                #! PC = 0x55555557c9ac *)
(* add r11, rsp *)
nop;
(* #! <- SP = 0x7ffffffaed78 *)
#! 0x7ffffffaed78 = 0x7ffffffaed78;
(* #ret                                            #! PC = 0x55555557c9af *)
#ret                                            #! 0x55555557c9af = 0x55555557c9af;

mov %R0 %L0x7ffffffaef00; mov %R1 %L0x7ffffffaef08; mov %R2 %L0x7ffffffaef10;
mov %R3 %L0x7ffffffaef18; mov %R4 %L0x7ffffffaef20; mov %R5 %L0x7ffffffaef28;
mov %R6 %L0x7ffffffaef30; mov %R7 %L0x7ffffffaef38; mov %R8 %L0x7ffffffaef40;
mov %R9 %L0x7ffffffaef48; mov %Ra %L0x7ffffffaef50; mov %Rb %L0x7ffffffaef58;

{
eqmod (poly z [%R0[0],%R1[0],%R2[0],%R3[0],%R4[0],%R5[0],
               %R6[0],%R7[0],%R8[0],%R9[0],%Ra[0],%Rb[0]])
      (poly z [%a0[0],%a1[0],%a2[0],%a3[0],%a4[0],%a5[0],
               %a6[0],%a7[0],%a8[0],%a9[0],%aa[0],%ab[0]] *
       poly z [%b0[0],%b1[0],%b2[0],%b3[0],%b4[0],%b5[0],
               %b6[0],%b7[0],%b8[0],%b9[0],%ba[0],%bb[0]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[1],%R1[1],%R2[1],%R3[1],%R4[1],%R5[1],
               %R6[1],%R7[1],%R8[1],%R9[1],%Ra[1],%Rb[1]])
      (poly z [%a0[1],%a1[1],%a2[1],%a3[1],%a4[1],%a5[1],
               %a6[1],%a7[1],%a8[1],%a9[1],%aa[1],%ab[1]] *
       poly z [%b0[1],%b1[1],%b2[1],%b3[1],%b4[1],%b5[1],
               %b6[1],%b7[1],%b8[1],%b9[1],%ba[1],%bb[1]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[2],%R1[2],%R2[2],%R3[2],%R4[2],%R5[2],
               %R6[2],%R7[2],%R8[2],%R9[2],%Ra[2],%Rb[2]])
      (poly z [%a0[2],%a1[2],%a2[2],%a3[2],%a4[2],%a5[2],
               %a6[2],%a7[2],%a8[2],%a9[2],%aa[2],%ab[2]] *
       poly z [%b0[2],%b1[2],%b2[2],%b3[2],%b4[2],%b5[2],
               %b6[2],%b7[2],%b8[2],%b9[2],%ba[2],%bb[2]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[3],%R1[3],%R2[3],%R3[3],%R4[3],%R5[3],
               %R6[3],%R7[3],%R8[3],%R9[3],%Ra[3],%Rb[3]])
      (poly z [%a0[3],%a1[3],%a2[3],%a3[3],%a4[3],%a5[3],
               %a6[3],%a7[3],%a8[3],%a9[3],%aa[3],%ab[3]] *
       poly z [%b0[3],%b1[3],%b2[3],%b3[3],%b4[3],%b5[3],
               %b6[3],%b7[3],%b8[3],%b9[3],%ba[3],%bb[3]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[4],%R1[4],%R2[4],%R3[4],%R4[4],%R5[4],
               %R6[4],%R7[4],%R8[4],%R9[4],%Ra[4],%Rb[4]])
      (poly z [%a0[4],%a1[4],%a2[4],%a3[4],%a4[4],%a5[4],
               %a6[4],%a7[4],%a8[4],%a9[4],%aa[4],%ab[4]] *
       poly z [%b0[4],%b1[4],%b2[4],%b3[4],%b4[4],%b5[4],
               %b6[4],%b7[4],%b8[4],%b9[4],%ba[4],%bb[4]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[5],%R1[5],%R2[5],%R3[5],%R4[5],%R5[5],
               %R6[5],%R7[5],%R8[5],%R9[5],%Ra[5],%Rb[5]])
      (poly z [%a0[5],%a1[5],%a2[5],%a3[5],%a4[5],%a5[5],
               %a6[5],%a7[5],%a8[5],%a9[5],%aa[5],%ab[5]] *
       poly z [%b0[5],%b1[5],%b2[5],%b3[5],%b4[5],%b5[5],
               %b6[5],%b7[5],%b8[5],%b9[5],%ba[5],%bb[5]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[6],%R1[6],%R2[6],%R3[6],%R4[6],%R5[6],
               %R6[6],%R7[6],%R8[6],%R9[6],%Ra[6],%Rb[6]])
      (poly z [%a0[6],%a1[6],%a2[6],%a3[6],%a4[6],%a5[6],
               %a6[6],%a7[6],%a8[6],%a9[6],%aa[6],%ab[6]] *
       poly z [%b0[6],%b1[6],%b2[6],%b3[6],%b4[6],%b5[6],
               %b6[6],%b7[6],%b8[6],%b9[6],%ba[6],%bb[6]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[7],%R1[7],%R2[7],%R3[7],%R4[7],%R5[7],
               %R6[7],%R7[7],%R8[7],%R9[7],%Ra[7],%Rb[7]])
      (poly z [%a0[7],%a1[7],%a2[7],%a3[7],%a4[7],%a5[7],
               %a6[7],%a7[7],%a8[7],%a9[7],%aa[7],%ab[7]] *
       poly z [%b0[7],%b1[7],%b2[7],%b3[7],%b4[7],%b5[7],
               %b6[7],%b7[7],%b8[7],%b9[7],%ba[7],%bb[7]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[8],%R1[8],%R2[8],%R3[8],%R4[8],%R5[8],
               %R6[8],%R7[8],%R8[8],%R9[8],%Ra[8],%Rb[8]])
      (poly z [%a0[8],%a1[8],%a2[8],%a3[8],%a4[8],%a5[8],
               %a6[8],%a7[8],%a8[8],%a9[8],%aa[8],%ab[8]] *
       poly z [%b0[8],%b1[8],%b2[8],%b3[8],%b4[8],%b5[8],
               %b6[8],%b7[8],%b8[8],%b9[8],%ba[8],%bb[8]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[9],%R1[9],%R2[9],%R3[9],%R4[9],%R5[9],
               %R6[9],%R7[9],%R8[9],%R9[9],%Ra[9],%Rb[9]])
      (poly z [%a0[9],%a1[9],%a2[9],%a3[9],%a4[9],%a5[9],
               %a6[9],%a7[9],%a8[9],%a9[9],%aa[9],%ab[9]] *
       poly z [%b0[9],%b1[9],%b2[9],%b3[9],%b4[9],%b5[9],
               %b6[9],%b7[9],%b8[9],%b9[9],%ba[9],%bb[9]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[10],%R1[10],%R2[10],%R3[10],%R4[10],%R5[10],
               %R6[10],%R7[10],%R8[10],%R9[10],%Ra[10],%Rb[10]])
      (poly z [%a0[10],%a1[10],%a2[10],%a3[10],%a4[10],%a5[10],
               %a6[10],%a7[10],%a8[10],%a9[10],%aa[10],%ab[10]] *
       poly z [%b0[10],%b1[10],%b2[10],%b3[10],%b4[10],%b5[10],
               %b6[10],%b7[10],%b8[10],%b9[10],%ba[10],%bb[10]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[11],%R1[11],%R2[11],%R3[11],%R4[11],%R5[11],
               %R6[11],%R7[11],%R8[11],%R9[11],%Ra[11],%Rb[11]])
      (poly z [%a0[11],%a1[11],%a2[11],%a3[11],%a4[11],%a5[11],
               %a6[11],%a7[11],%a8[11],%a9[11],%aa[11],%ab[11]] *
       poly z [%b0[11],%b1[11],%b2[11],%b3[11],%b4[11],%b5[11],
               %b6[11],%b7[11],%b8[11],%b9[11],%ba[11],%bb[11]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[12],%R1[12],%R2[12],%R3[12],%R4[12],%R5[12],
               %R6[12],%R7[12],%R8[12],%R9[12],%Ra[12],%Rb[12]])
      (poly z [%a0[12],%a1[12],%a2[12],%a3[12],%a4[12],%a5[12],
               %a6[12],%a7[12],%a8[12],%a9[12],%aa[12],%ab[12]] *
       poly z [%b0[12],%b1[12],%b2[12],%b3[12],%b4[12],%b5[12],
               %b6[12],%b7[12],%b8[12],%b9[12],%ba[12],%bb[12]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[13],%R1[13],%R2[13],%R3[13],%R4[13],%R5[13],
               %R6[13],%R7[13],%R8[13],%R9[13],%Ra[13],%Rb[13]])
      (poly z [%a0[13],%a1[13],%a2[13],%a3[13],%a4[13],%a5[13],
               %a6[13],%a7[13],%a8[13],%a9[13],%aa[13],%ab[13]] *
       poly z [%b0[13],%b1[13],%b2[13],%b3[13],%b4[13],%b5[13],
               %b6[13],%b7[13],%b8[13],%b9[13],%ba[13],%bb[13]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[14],%R1[14],%R2[14],%R3[14],%R4[14],%R5[14],
               %R6[14],%R7[14],%R8[14],%R9[14],%Ra[14],%Rb[14]])
      (poly z [%a0[14],%a1[14],%a2[14],%a3[14],%a4[14],%a5[14],
               %a6[14],%a7[14],%a8[14],%a9[14],%aa[14],%ab[14]] *
       poly z [%b0[14],%b1[14],%b2[14],%b3[14],%b4[14],%b5[14],
               %b6[14],%b7[14],%b8[14],%b9[14],%ba[14],%bb[14]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[15],%R1[15],%R2[15],%R3[15],%R4[15],%R5[15],
               %R6[15],%R7[15],%R8[15],%R9[15],%Ra[15],%Rb[15]])
      (poly z [%a0[15],%a1[15],%a2[15],%a3[15],%a4[15],%a5[15],
               %a6[15],%a7[15],%a8[15],%a9[15],%aa[15],%ab[15]] *
       poly z [%b0[15],%b1[15],%b2[15],%b3[15],%b4[15],%b5[15],
               %b6[15],%b7[15],%b8[15],%b9[15],%ba[15],%bb[15]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[16],%R1[16],%R2[16],%R3[16],%R4[16],%R5[16],
               %R6[16],%R7[16],%R8[16],%R9[16],%Ra[16],%Rb[16]])
      (poly z [%a0[16],%a1[16],%a2[16],%a3[16],%a4[16],%a5[16],
               %a6[16],%a7[16],%a8[16],%a9[16],%aa[16],%ab[16]] *
       poly z [%b0[16],%b1[16],%b2[16],%b3[16],%b4[16],%b5[16],
               %b6[16],%b7[16],%b8[16],%b9[16],%ba[16],%bb[16]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[17],%R1[17],%R2[17],%R3[17],%R4[17],%R5[17],
               %R6[17],%R7[17],%R8[17],%R9[17],%Ra[17],%Rb[17]])
      (poly z [%a0[17],%a1[17],%a2[17],%a3[17],%a4[17],%a5[17],
               %a6[17],%a7[17],%a8[17],%a9[17],%aa[17],%ab[17]] *
       poly z [%b0[17],%b1[17],%b2[17],%b3[17],%b4[17],%b5[17],
               %b6[17],%b7[17],%b8[17],%b9[17],%ba[17],%bb[17]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[18],%R1[18],%R2[18],%R3[18],%R4[18],%R5[18],
               %R6[18],%R7[18],%R8[18],%R9[18],%Ra[18],%Rb[18]])
      (poly z [%a0[18],%a1[18],%a2[18],%a3[18],%a4[18],%a5[18],
               %a6[18],%a7[18],%a8[18],%a9[18],%aa[18],%ab[18]] *
       poly z [%b0[18],%b1[18],%b2[18],%b3[18],%b4[18],%b5[18],
               %b6[18],%b7[18],%b8[18],%b9[18],%ba[18],%bb[18]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[19],%R1[19],%R2[19],%R3[19],%R4[19],%R5[19],
               %R6[19],%R7[19],%R8[19],%R9[19],%Ra[19],%Rb[19]])
      (poly z [%a0[19],%a1[19],%a2[19],%a3[19],%a4[19],%a5[19],
               %a6[19],%a7[19],%a8[19],%a9[19],%aa[19],%ab[19]] *
       poly z [%b0[19],%b1[19],%b2[19],%b3[19],%b4[19],%b5[19],
               %b6[19],%b7[19],%b8[19],%b9[19],%ba[19],%bb[19]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[20],%R1[20],%R2[20],%R3[20],%R4[20],%R5[20],
               %R6[20],%R7[20],%R8[20],%R9[20],%Ra[20],%Rb[20]])
      (poly z [%a0[20],%a1[20],%a2[20],%a3[20],%a4[20],%a5[20],
               %a6[20],%a7[20],%a8[20],%a9[20],%aa[20],%ab[20]] *
       poly z [%b0[20],%b1[20],%b2[20],%b3[20],%b4[20],%b5[20],
               %b6[20],%b7[20],%b8[20],%b9[20],%ba[20],%bb[20]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[21],%R1[21],%R2[21],%R3[21],%R4[21],%R5[21],
               %R6[21],%R7[21],%R8[21],%R9[21],%Ra[21],%Rb[21]])
      (poly z [%a0[21],%a1[21],%a2[21],%a3[21],%a4[21],%a5[21],
               %a6[21],%a7[21],%a8[21],%a9[21],%aa[21],%ab[21]] *
       poly z [%b0[21],%b1[21],%b2[21],%b3[21],%b4[21],%b5[21],
               %b6[21],%b7[21],%b8[21],%b9[21],%ba[21],%bb[21]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[22],%R1[22],%R2[22],%R3[22],%R4[22],%R5[22],
               %R6[22],%R7[22],%R8[22],%R9[22],%Ra[22],%Rb[22]])
      (poly z [%a0[22],%a1[22],%a2[22],%a3[22],%a4[22],%a5[22],
               %a6[22],%a7[22],%a8[22],%a9[22],%aa[22],%ab[22]] *
       poly z [%b0[22],%b1[22],%b2[22],%b3[22],%b4[22],%b5[22],
               %b6[22],%b7[22],%b8[22],%b9[22],%ba[22],%bb[22]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[23],%R1[23],%R2[23],%R3[23],%R4[23],%R5[23],
               %R6[23],%R7[23],%R8[23],%R9[23],%Ra[23],%Rb[23]])
      (poly z [%a0[23],%a1[23],%a2[23],%a3[23],%a4[23],%a5[23],
               %a6[23],%a7[23],%a8[23],%a9[23],%aa[23],%ab[23]] *
       poly z [%b0[23],%b1[23],%b2[23],%b3[23],%b4[23],%b5[23],
               %b6[23],%b7[23],%b8[23],%b9[23],%ba[23],%bb[23]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[24],%R1[24],%R2[24],%R3[24],%R4[24],%R5[24],
               %R6[24],%R7[24],%R8[24],%R9[24],%Ra[24],%Rb[24]])
      (poly z [%a0[24],%a1[24],%a2[24],%a3[24],%a4[24],%a5[24],
               %a6[24],%a7[24],%a8[24],%a9[24],%aa[24],%ab[24]] *
       poly z [%b0[24],%b1[24],%b2[24],%b3[24],%b4[24],%b5[24],
               %b6[24],%b7[24],%b8[24],%b9[24],%ba[24],%bb[24]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[25],%R1[25],%R2[25],%R3[25],%R4[25],%R5[25],
               %R6[25],%R7[25],%R8[25],%R9[25],%Ra[25],%Rb[25]])
      (poly z [%a0[25],%a1[25],%a2[25],%a3[25],%a4[25],%a5[25],
               %a6[25],%a7[25],%a8[25],%a9[25],%aa[25],%ab[25]] *
       poly z [%b0[25],%b1[25],%b2[25],%b3[25],%b4[25],%b5[25],
               %b6[25],%b7[25],%b8[25],%b9[25],%ba[25],%bb[25]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[26],%R1[26],%R2[26],%R3[26],%R4[26],%R5[26],
               %R6[26],%R7[26],%R8[26],%R9[26],%Ra[26],%Rb[26]])
      (poly z [%a0[26],%a1[26],%a2[26],%a3[26],%a4[26],%a5[26],
               %a6[26],%a7[26],%a8[26],%a9[26],%aa[26],%ab[26]] *
       poly z [%b0[26],%b1[26],%b2[26],%b3[26],%b4[26],%b5[26],
               %b6[26],%b7[26],%b8[26],%b9[26],%ba[26],%bb[26]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[27],%R1[27],%R2[27],%R3[27],%R4[27],%R5[27],
               %R6[27],%R7[27],%R8[27],%R9[27],%Ra[27],%Rb[27]])
      (poly z [%a0[27],%a1[27],%a2[27],%a3[27],%a4[27],%a5[27],
               %a6[27],%a7[27],%a8[27],%a9[27],%aa[27],%ab[27]] *
       poly z [%b0[27],%b1[27],%b2[27],%b3[27],%b4[27],%b5[27],
               %b6[27],%b7[27],%b8[27],%b9[27],%ba[27],%bb[27]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[28],%R1[28],%R2[28],%R3[28],%R4[28],%R5[28],
               %R6[28],%R7[28],%R8[28],%R9[28],%Ra[28],%Rb[28]])
      (poly z [%a0[28],%a1[28],%a2[28],%a3[28],%a4[28],%a5[28],
               %a6[28],%a7[28],%a8[28],%a9[28],%aa[28],%ab[28]] *
       poly z [%b0[28],%b1[28],%b2[28],%b3[28],%b4[28],%b5[28],
               %b6[28],%b7[28],%b8[28],%b9[28],%ba[28],%bb[28]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[29],%R1[29],%R2[29],%R3[29],%R4[29],%R5[29],
               %R6[29],%R7[29],%R8[29],%R9[29],%Ra[29],%Rb[29]])
      (poly z [%a0[29],%a1[29],%a2[29],%a3[29],%a4[29],%a5[29],
               %a6[29],%a7[29],%a8[29],%a9[29],%aa[29],%ab[29]] *
       poly z [%b0[29],%b1[29],%b2[29],%b3[29],%b4[29],%b5[29],
               %b6[29],%b7[29],%b8[29],%b9[29],%ba[29],%bb[29]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[30],%R1[30],%R2[30],%R3[30],%R4[30],%R5[30],
               %R6[30],%R7[30],%R8[30],%R9[30],%Ra[30],%Rb[30]])
      (poly z [%a0[30],%a1[30],%a2[30],%a3[30],%a4[30],%a5[30],
               %a6[30],%a7[30],%a8[30],%a9[30],%aa[30],%ab[30]] *
       poly z [%b0[30],%b1[30],%b2[30],%b3[30],%b4[30],%b5[30],
               %b6[30],%b7[30],%b8[30],%b9[30],%ba[30],%bb[30]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[31],%R1[31],%R2[31],%R3[31],%R4[31],%R5[31],
               %R6[31],%R7[31],%R8[31],%R9[31],%Ra[31],%Rb[31]])
      (poly z [%a0[31],%a1[31],%a2[31],%a3[31],%a4[31],%a5[31],
               %a6[31],%a7[31],%a8[31],%a9[31],%aa[31],%ab[31]] *
       poly z [%b0[31],%b1[31],%b2[31],%b3[31],%b4[31],%b5[31],
               %b6[31],%b7[31],%b8[31],%b9[31],%ba[31],%bb[31]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[32],%R1[32],%R2[32],%R3[32],%R4[32],%R5[32],
               %R6[32],%R7[32],%R8[32],%R9[32],%Ra[32],%Rb[32]])
      (poly z [%a0[32],%a1[32],%a2[32],%a3[32],%a4[32],%a5[32],
               %a6[32],%a7[32],%a8[32],%a9[32],%aa[32],%ab[32]] *
       poly z [%b0[32],%b1[32],%b2[32],%b3[32],%b4[32],%b5[32],
               %b6[32],%b7[32],%b8[32],%b9[32],%ba[32],%bb[32]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[33],%R1[33],%R2[33],%R3[33],%R4[33],%R5[33],
               %R6[33],%R7[33],%R8[33],%R9[33],%Ra[33],%Rb[33]])
      (poly z [%a0[33],%a1[33],%a2[33],%a3[33],%a4[33],%a5[33],
               %a6[33],%a7[33],%a8[33],%a9[33],%aa[33],%ab[33]] *
       poly z [%b0[33],%b1[33],%b2[33],%b3[33],%b4[33],%b5[33],
               %b6[33],%b7[33],%b8[33],%b9[33],%ba[33],%bb[33]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[34],%R1[34],%R2[34],%R3[34],%R4[34],%R5[34],
               %R6[34],%R7[34],%R8[34],%R9[34],%Ra[34],%Rb[34]])
      (poly z [%a0[34],%a1[34],%a2[34],%a3[34],%a4[34],%a5[34],
               %a6[34],%a7[34],%a8[34],%a9[34],%aa[34],%ab[34]] *
       poly z [%b0[34],%b1[34],%b2[34],%b3[34],%b4[34],%b5[34],
               %b6[34],%b7[34],%b8[34],%b9[34],%ba[34],%bb[34]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[35],%R1[35],%R2[35],%R3[35],%R4[35],%R5[35],
               %R6[35],%R7[35],%R8[35],%R9[35],%Ra[35],%Rb[35]])
      (poly z [%a0[35],%a1[35],%a2[35],%a3[35],%a4[35],%a5[35],
               %a6[35],%a7[35],%a8[35],%a9[35],%aa[35],%ab[35]] *
       poly z [%b0[35],%b1[35],%b2[35],%b3[35],%b4[35],%b5[35],
               %b6[35],%b7[35],%b8[35],%b9[35],%ba[35],%bb[35]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[36],%R1[36],%R2[36],%R3[36],%R4[36],%R5[36],
               %R6[36],%R7[36],%R8[36],%R9[36],%Ra[36],%Rb[36]])
      (poly z [%a0[36],%a1[36],%a2[36],%a3[36],%a4[36],%a5[36],
               %a6[36],%a7[36],%a8[36],%a9[36],%aa[36],%ab[36]] *
       poly z [%b0[36],%b1[36],%b2[36],%b3[36],%b4[36],%b5[36],
               %b6[36],%b7[36],%b8[36],%b9[36],%ba[36],%bb[36]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[37],%R1[37],%R2[37],%R3[37],%R4[37],%R5[37],
               %R6[37],%R7[37],%R8[37],%R9[37],%Ra[37],%Rb[37]])
      (poly z [%a0[37],%a1[37],%a2[37],%a3[37],%a4[37],%a5[37],
               %a6[37],%a7[37],%a8[37],%a9[37],%aa[37],%ab[37]] *
       poly z [%b0[37],%b1[37],%b2[37],%b3[37],%b4[37],%b5[37],
               %b6[37],%b7[37],%b8[37],%b9[37],%ba[37],%bb[37]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[38],%R1[38],%R2[38],%R3[38],%R4[38],%R5[38],
               %R6[38],%R7[38],%R8[38],%R9[38],%Ra[38],%Rb[38]])
      (poly z [%a0[38],%a1[38],%a2[38],%a3[38],%a4[38],%a5[38],
               %a6[38],%a7[38],%a8[38],%a9[38],%aa[38],%ab[38]] *
       poly z [%b0[38],%b1[38],%b2[38],%b3[38],%b4[38],%b5[38],
               %b6[38],%b7[38],%b8[38],%b9[38],%ba[38],%bb[38]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[39],%R1[39],%R2[39],%R3[39],%R4[39],%R5[39],
               %R6[39],%R7[39],%R8[39],%R9[39],%Ra[39],%Rb[39]])
      (poly z [%a0[39],%a1[39],%a2[39],%a3[39],%a4[39],%a5[39],
               %a6[39],%a7[39],%a8[39],%a9[39],%aa[39],%ab[39]] *
       poly z [%b0[39],%b1[39],%b2[39],%b3[39],%b4[39],%b5[39],
               %b6[39],%b7[39],%b8[39],%b9[39],%ba[39],%bb[39]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[40],%R1[40],%R2[40],%R3[40],%R4[40],%R5[40],
               %R6[40],%R7[40],%R8[40],%R9[40],%Ra[40],%Rb[40]])
      (poly z [%a0[40],%a1[40],%a2[40],%a3[40],%a4[40],%a5[40],
               %a6[40],%a7[40],%a8[40],%a9[40],%aa[40],%ab[40]] *
       poly z [%b0[40],%b1[40],%b2[40],%b3[40],%b4[40],%b5[40],
               %b6[40],%b7[40],%b8[40],%b9[40],%ba[40],%bb[40]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[41],%R1[41],%R2[41],%R3[41],%R4[41],%R5[41],
               %R6[41],%R7[41],%R8[41],%R9[41],%Ra[41],%Rb[41]])
      (poly z [%a0[41],%a1[41],%a2[41],%a3[41],%a4[41],%a5[41],
               %a6[41],%a7[41],%a8[41],%a9[41],%aa[41],%ab[41]] *
       poly z [%b0[41],%b1[41],%b2[41],%b3[41],%b4[41],%b5[41],
               %b6[41],%b7[41],%b8[41],%b9[41],%ba[41],%bb[41]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[42],%R1[42],%R2[42],%R3[42],%R4[42],%R5[42],
               %R6[42],%R7[42],%R8[42],%R9[42],%Ra[42],%Rb[42]])
      (poly z [%a0[42],%a1[42],%a2[42],%a3[42],%a4[42],%a5[42],
               %a6[42],%a7[42],%a8[42],%a9[42],%aa[42],%ab[42]] *
       poly z [%b0[42],%b1[42],%b2[42],%b3[42],%b4[42],%b5[42],
               %b6[42],%b7[42],%b8[42],%b9[42],%ba[42],%bb[42]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[43],%R1[43],%R2[43],%R3[43],%R4[43],%R5[43],
               %R6[43],%R7[43],%R8[43],%R9[43],%Ra[43],%Rb[43]])
      (poly z [%a0[43],%a1[43],%a2[43],%a3[43],%a4[43],%a5[43],
               %a6[43],%a7[43],%a8[43],%a9[43],%aa[43],%ab[43]] *
       poly z [%b0[43],%b1[43],%b2[43],%b3[43],%b4[43],%b5[43],
               %b6[43],%b7[43],%b8[43],%b9[43],%ba[43],%bb[43]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[44],%R1[44],%R2[44],%R3[44],%R4[44],%R5[44],
               %R6[44],%R7[44],%R8[44],%R9[44],%Ra[44],%Rb[44]])
      (poly z [%a0[44],%a1[44],%a2[44],%a3[44],%a4[44],%a5[44],
               %a6[44],%a7[44],%a8[44],%a9[44],%aa[44],%ab[44]] *
       poly z [%b0[44],%b1[44],%b2[44],%b3[44],%b4[44],%b5[44],
               %b6[44],%b7[44],%b8[44],%b9[44],%ba[44],%bb[44]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[45],%R1[45],%R2[45],%R3[45],%R4[45],%R5[45],
               %R6[45],%R7[45],%R8[45],%R9[45],%Ra[45],%Rb[45]])
      (poly z [%a0[45],%a1[45],%a2[45],%a3[45],%a4[45],%a5[45],
               %a6[45],%a7[45],%a8[45],%a9[45],%aa[45],%ab[45]] *
       poly z [%b0[45],%b1[45],%b2[45],%b3[45],%b4[45],%b5[45],
               %b6[45],%b7[45],%b8[45],%b9[45],%ba[45],%bb[45]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[46],%R1[46],%R2[46],%R3[46],%R4[46],%R5[46],
               %R6[46],%R7[46],%R8[46],%R9[46],%Ra[46],%Rb[46]])
      (poly z [%a0[46],%a1[46],%a2[46],%a3[46],%a4[46],%a5[46],
               %a6[46],%a7[46],%a8[46],%a9[46],%aa[46],%ab[46]] *
       poly z [%b0[46],%b1[46],%b2[46],%b3[46],%b4[46],%b5[46],
               %b6[46],%b7[46],%b8[46],%b9[46],%ba[46],%bb[46]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[47],%R1[47],%R2[47],%R3[47],%R4[47],%R5[47],
               %R6[47],%R7[47],%R8[47],%R9[47],%Ra[47],%Rb[47]])
      (poly z [%a0[47],%a1[47],%a2[47],%a3[47],%a4[47],%a5[47],
               %a6[47],%a7[47],%a8[47],%a9[47],%aa[47],%ab[47]] *
       poly z [%b0[47],%b1[47],%b2[47],%b3[47],%b4[47],%b5[47],
               %b6[47],%b7[47],%b8[47],%b9[47],%ba[47],%bb[47]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[48],%R1[48],%R2[48],%R3[48],%R4[48],%R5[48],
               %R6[48],%R7[48],%R8[48],%R9[48],%Ra[48],%Rb[48]])
      (poly z [%a0[48],%a1[48],%a2[48],%a3[48],%a4[48],%a5[48],
               %a6[48],%a7[48],%a8[48],%a9[48],%aa[48],%ab[48]] *
       poly z [%b0[48],%b1[48],%b2[48],%b3[48],%b4[48],%b5[48],
               %b6[48],%b7[48],%b8[48],%b9[48],%ba[48],%bb[48]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[49],%R1[49],%R2[49],%R3[49],%R4[49],%R5[49],
               %R6[49],%R7[49],%R8[49],%R9[49],%Ra[49],%Rb[49]])
      (poly z [%a0[49],%a1[49],%a2[49],%a3[49],%a4[49],%a5[49],
               %a6[49],%a7[49],%a8[49],%a9[49],%aa[49],%ab[49]] *
       poly z [%b0[49],%b1[49],%b2[49],%b3[49],%b4[49],%b5[49],
               %b6[49],%b7[49],%b8[49],%b9[49],%ba[49],%bb[49]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[50],%R1[50],%R2[50],%R3[50],%R4[50],%R5[50],
               %R6[50],%R7[50],%R8[50],%R9[50],%Ra[50],%Rb[50]])
      (poly z [%a0[50],%a1[50],%a2[50],%a3[50],%a4[50],%a5[50],
               %a6[50],%a7[50],%a8[50],%a9[50],%aa[50],%ab[50]] *
       poly z [%b0[50],%b1[50],%b2[50],%b3[50],%b4[50],%b5[50],
               %b6[50],%b7[50],%b8[50],%b9[50],%ba[50],%bb[50]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[51],%R1[51],%R2[51],%R3[51],%R4[51],%R5[51],
               %R6[51],%R7[51],%R8[51],%R9[51],%Ra[51],%Rb[51]])
      (poly z [%a0[51],%a1[51],%a2[51],%a3[51],%a4[51],%a5[51],
               %a6[51],%a7[51],%a8[51],%a9[51],%aa[51],%ab[51]] *
       poly z [%b0[51],%b1[51],%b2[51],%b3[51],%b4[51],%b5[51],
               %b6[51],%b7[51],%b8[51],%b9[51],%ba[51],%bb[51]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[52],%R1[52],%R2[52],%R3[52],%R4[52],%R5[52],
               %R6[52],%R7[52],%R8[52],%R9[52],%Ra[52],%Rb[52]])
      (poly z [%a0[52],%a1[52],%a2[52],%a3[52],%a4[52],%a5[52],
               %a6[52],%a7[52],%a8[52],%a9[52],%aa[52],%ab[52]] *
       poly z [%b0[52],%b1[52],%b2[52],%b3[52],%b4[52],%b5[52],
               %b6[52],%b7[52],%b8[52],%b9[52],%ba[52],%bb[52]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[53],%R1[53],%R2[53],%R3[53],%R4[53],%R5[53],
               %R6[53],%R7[53],%R8[53],%R9[53],%Ra[53],%Rb[53]])
      (poly z [%a0[53],%a1[53],%a2[53],%a3[53],%a4[53],%a5[53],
               %a6[53],%a7[53],%a8[53],%a9[53],%aa[53],%ab[53]] *
       poly z [%b0[53],%b1[53],%b2[53],%b3[53],%b4[53],%b5[53],
               %b6[53],%b7[53],%b8[53],%b9[53],%ba[53],%bb[53]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[54],%R1[54],%R2[54],%R3[54],%R4[54],%R5[54],
               %R6[54],%R7[54],%R8[54],%R9[54],%Ra[54],%Rb[54]])
      (poly z [%a0[54],%a1[54],%a2[54],%a3[54],%a4[54],%a5[54],
               %a6[54],%a7[54],%a8[54],%a9[54],%aa[54],%ab[54]] *
       poly z [%b0[54],%b1[54],%b2[54],%b3[54],%b4[54],%b5[54],
               %b6[54],%b7[54],%b8[54],%b9[54],%ba[54],%bb[54]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[55],%R1[55],%R2[55],%R3[55],%R4[55],%R5[55],
               %R6[55],%R7[55],%R8[55],%R9[55],%Ra[55],%Rb[55]])
      (poly z [%a0[55],%a1[55],%a2[55],%a3[55],%a4[55],%a5[55],
               %a6[55],%a7[55],%a8[55],%a9[55],%aa[55],%ab[55]] *
       poly z [%b0[55],%b1[55],%b2[55],%b3[55],%b4[55],%b5[55],
               %b6[55],%b7[55],%b8[55],%b9[55],%ba[55],%bb[55]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[56],%R1[56],%R2[56],%R3[56],%R4[56],%R5[56],
               %R6[56],%R7[56],%R8[56],%R9[56],%Ra[56],%Rb[56]])
      (poly z [%a0[56],%a1[56],%a2[56],%a3[56],%a4[56],%a5[56],
               %a6[56],%a7[56],%a8[56],%a9[56],%aa[56],%ab[56]] *
       poly z [%b0[56],%b1[56],%b2[56],%b3[56],%b4[56],%b5[56],
               %b6[56],%b7[56],%b8[56],%b9[56],%ba[56],%bb[56]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[57],%R1[57],%R2[57],%R3[57],%R4[57],%R5[57],
               %R6[57],%R7[57],%R8[57],%R9[57],%Ra[57],%Rb[57]])
      (poly z [%a0[57],%a1[57],%a2[57],%a3[57],%a4[57],%a5[57],
               %a6[57],%a7[57],%a8[57],%a9[57],%aa[57],%ab[57]] *
       poly z [%b0[57],%b1[57],%b2[57],%b3[57],%b4[57],%b5[57],
               %b6[57],%b7[57],%b8[57],%b9[57],%ba[57],%bb[57]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[58],%R1[58],%R2[58],%R3[58],%R4[58],%R5[58],
               %R6[58],%R7[58],%R8[58],%R9[58],%Ra[58],%Rb[58]])
      (poly z [%a0[58],%a1[58],%a2[58],%a3[58],%a4[58],%a5[58],
               %a6[58],%a7[58],%a8[58],%a9[58],%aa[58],%ab[58]] *
       poly z [%b0[58],%b1[58],%b2[58],%b3[58],%b4[58],%b5[58],
               %b6[58],%b7[58],%b8[58],%b9[58],%ba[58],%bb[58]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[59],%R1[59],%R2[59],%R3[59],%R4[59],%R5[59],
               %R6[59],%R7[59],%R8[59],%R9[59],%Ra[59],%Rb[59]])
      (poly z [%a0[59],%a1[59],%a2[59],%a3[59],%a4[59],%a5[59],
               %a6[59],%a7[59],%a8[59],%a9[59],%aa[59],%ab[59]] *
       poly z [%b0[59],%b1[59],%b2[59],%b3[59],%b4[59],%b5[59],
               %b6[59],%b7[59],%b8[59],%b9[59],%ba[59],%bb[59]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[60],%R1[60],%R2[60],%R3[60],%R4[60],%R5[60],
               %R6[60],%R7[60],%R8[60],%R9[60],%Ra[60],%Rb[60]])
      (poly z [%a0[60],%a1[60],%a2[60],%a3[60],%a4[60],%a5[60],
               %a6[60],%a7[60],%a8[60],%a9[60],%aa[60],%ab[60]] *
       poly z [%b0[60],%b1[60],%b2[60],%b3[60],%b4[60],%b5[60],
               %b6[60],%b7[60],%b8[60],%b9[60],%ba[60],%bb[60]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[61],%R1[61],%R2[61],%R3[61],%R4[61],%R5[61],
               %R6[61],%R7[61],%R8[61],%R9[61],%Ra[61],%Rb[61]])
      (poly z [%a0[61],%a1[61],%a2[61],%a3[61],%a4[61],%a5[61],
               %a6[61],%a7[61],%a8[61],%a9[61],%aa[61],%ab[61]] *
       poly z [%b0[61],%b1[61],%b2[61],%b3[61],%b4[61],%b5[61],
               %b6[61],%b7[61],%b8[61],%b9[61],%ba[61],%bb[61]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[62],%R1[62],%R2[62],%R3[62],%R4[62],%R5[62],
               %R6[62],%R7[62],%R8[62],%R9[62],%Ra[62],%Rb[62]])
      (poly z [%a0[62],%a1[62],%a2[62],%a3[62],%a4[62],%a5[62],
               %a6[62],%a7[62],%a8[62],%a9[62],%aa[62],%ab[62]] *
       poly z [%b0[62],%b1[62],%b2[62],%b3[62],%b4[62],%b5[62],
               %b6[62],%b7[62],%b8[62],%b9[62],%ba[62],%bb[62]])
      [2, z**12+z**3+1] /\
eqmod (poly z [%R0[63],%R1[63],%R2[63],%R3[63],%R4[63],%R5[63],
               %R6[63],%R7[63],%R8[63],%R9[63],%Ra[63],%Rb[63]])
      (poly z [%a0[63],%a1[63],%a2[63],%a3[63],%a4[63],%a5[63],
               %a6[63],%a7[63],%a8[63],%a9[63],%aa[63],%ab[63]] *
       poly z [%b0[63],%b1[63],%b2[63],%b3[63],%b4[63],%b5[63],
               %b6[63],%b7[63],%b8[63],%b9[63],%ba[63],%bb[63]])
      [2, z**12+z**3+1]
&&
true
}

