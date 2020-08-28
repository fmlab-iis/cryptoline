proc main (uint64 x0, uint64 x1, uint64 x2, uint64 x3, uint64 y0, uint64 y1, uint64 y2, uint64 y3, uint64 m0, uint64 m1, uint64 m2, uint64 m3) =
{
  true
  &&
  and
	[
	 m0 = 0xffffffff00000001@64,
	 m1 = 0x53bda402fffe5bfe@64,
	 m2 = 0x3339d80809a1d805@64,
	 m3 = 0x73eda753299d7d48@64,
    	 limbs 64 [x0, x1, x2, x3] <u limbs 64 [m0, m1, m2, m3],
    	 limbs 64 [y0, y1, y2, y3] <u limbs 64 [m0, m1, m2, m3]
  	]
}

mov L0x7fffffffdb30 x0;
mov L0x7fffffffdb38 x1;
mov L0x7fffffffdb40 x2;
mov L0x7fffffffdb48 x3;
mov L0x7fffffffdb50 y0;
mov L0x7fffffffdb58 y1;
mov L0x7fffffffdb60 y2;
mov L0x7fffffffdb68 y3;

(* prime *)
mov L0x55555556c660 m0;
mov L0x55555556c668 m1;
mov L0x55555556c670 m2;
mov L0x55555556c678 m3;

(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb30; Value = 0x000009c0000009c0; PC = 0x93824992306570 *)
mov r8 L0x7fffffffdb30;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb38; Value = 0x000009c0000009c0; PC = 0x93824992306573 *)
mov r9 L0x7fffffffdb38;
(* mov    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb40; Value = 0x000009c0000009c0; PC = 0x93824992306577 *)
mov r10 L0x7fffffffdb40;
(* mov    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb48; Value = 0x000009c0000009c0; PC = 0x93824992306581 *)
mov r11 L0x7fffffffdb48;
(* sub    (%rdx),%r8                               #! EA = L0x7fffffffdb50; Value = 0x000009c0000009c0; PC = 0x93824992306585 *)
subb carry r8 r8 L0x7fffffffdb50;
(* mov    (%rcx),%rax                              #! EA = L0x55555556c660; Value = 0xffffffff00000001; PC = 0x93824992306588 *)
mov rax L0x55555556c660;
(* sbb    0x8(%rdx),%r9                            #! EA = L0x7fffffffdb58; Value = 0x000009c0000009c0; PC = 0x93824992306591 *)
sbbs carry r9 r9 L0x7fffffffdb58 carry;
(* mov    0x8(%rcx),%rsi                           #! EA = L0x55555556c668; Value = 0x53bda402fffe5bfe; PC = 0x93824992306595 *)
mov rsi L0x55555556c668;
(* sbb    0x10(%rdx),%r10                          #! EA = L0x7fffffffdb60; Value = 0x000009c0000009c0; PC = 0x93824992306599 *)
sbbs carry r10 r10 L0x7fffffffdb60 carry;
(* mov    0x10(%rcx),%rbx                          #! EA = L0x55555556c670; Value = 0x3339d80809a1d805; PC = 0x93824992306603 *)
mov rbx L0x55555556c670;
(* sbb    0x18(%rdx),%r11                          #! EA = L0x7fffffffdb68; Value = 0x000009c0000009c0; PC = 0x93824992306607 *)
sbbs carry r11 r11 L0x7fffffffdb68 carry;
(* mov    0x18(%rcx),%rbp                          #! EA = L0x55555556c678; Value = 0x73eda753299d7d48; PC = 0x93824992306611 *)
mov rbp L0x55555556c678;

(* Explicitly define rdx here, rdx can be anything *)
mov rdx 0@uint64;

(* sbb    %rdx,%rdx                                #! PC = 0x93824992306615 *)
sbbs carry rdx rdx rdx carry;
(* and    %rdx,%rax                                #! PC = 0x93824992306618 *)
and rax@uint64 rdx rax;
(* and    %rdx,%rsi                                #! PC = 0x93824992306621 *)
and rsi@uint64 rdx rsi;
(* and    %rdx,%rbx                                #! PC = 0x93824992306624 *)
and rbx@uint64 rdx rbx;
(* and    %rdx,%rbp                                #! PC = 0x93824992306627 *)
and rbp@uint64 rdx rbp;
(* add    %rax,%r8                                 #! PC = 0x93824992306630 *)
adds carry r8 rax r8;
(* adc    %rsi,%r9                                 #! PC = 0x93824992306633 *)
adcs carry r9 rsi r9 carry;
(* mov    %r8,(%rdi)                               #! EA = L0x7fffffffdb70; PC = 0x93824992306636 *)
mov L0x7fffffffdb70 r8;
(* adc    %rbx,%r10                                #! PC = 0x93824992306639 *)
adcs carry r10 rbx r10 carry;
(* mov    %r9,0x8(%rdi)                            #! EA = L0x7fffffffdb78; PC = 0x93824992306642 *)
mov L0x7fffffffdb78 r9;
(* adc    %rbp,%r11                                #! PC = 0x93824992306646 *)
adcs carry r11 rbp r11 carry;
(* mov    %r10,0x10(%rdi)                          #! EA = L0x7fffffffdb80; PC = 0x93824992306649 *)
mov L0x7fffffffdb80 r10;
(* mov    %r11,0x18(%rdi)                          #! EA = L0x7fffffffdb88; PC = 0x93824992306653 *)
mov L0x7fffffffdb88 r11;
(* #retq                                           #! PC = 0x93824992297800 *)
#retq                                           #! 0x93824992297800 = 0x93824992297800;

mov c0 L0x7fffffffdb70;
mov c1 L0x7fffffffdb78;
mov c2 L0x7fffffffdb80;
mov c3 L0x7fffffffdb88;

{
  true
  &&
  eqmod
  	(limbs 64 [x0, x1, x2, x3] 
	 -
	 limbs 64 [y0, y1, y2, y3])

	(limbs 64 [c0, c1, c2, c3])
	
	(limbs 64 [m0, m1, m2, m3])
}

