(* on frege: -v -isafety -isafety_timeout 14400 -jobs 24 -slicing -no_carry_constraint fp2mul751_mont.cl
Parsing Cryptoline file:		[OK]		0.036684 seconds
Checking well-formedness:		[OK]		0.009178 seconds
Transforming to SSA form:		[OK]		0.004419 seconds
Normalizing specification:		[OK]		0.005214 seconds
Rewriting assignments:			[OK]		0.005391 seconds
Verifying program safety:		[OK]		31.991513 seconds
Verifying range assertions:		[OK]		3418.581407 seconds
Verifying range specification:		[OK]		329.744212 seconds
Rewriting value-preserved casting:	[OK]		0.002790 seconds
Verifying algebraic assertions:		[OK]		0.346297 seconds
Verifying algebraic specification:	[OK]		1.183657 seconds
Verification result:			[OK]		3781.913711 seconds
*)

(*
const uint64_t p751[NWORDS64_FIELD]              = { 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xFFFFFFFFFFFFFFFF, 0xEEAFFFFFFFFFFFFF,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };

const uint64_t p751p1[NWORDS64_FIELD]            = { 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0x0000000000000000, 0xEEB0000000000000,
                                                     0xE3EC968549F878A8, 0xDA959B1A13F7CC76, 0x084E9867D6EBE876, 0x8562B5045CB25748, 0x0E12909F97BADC66, 0x00006FE5D541F71C };
*)

const p751_00 = 0xFFFFFFFFFFFFFFFF
const p751_01 = 0xFFFFFFFFFFFFFFFF
const p751_02 = 0xFFFFFFFFFFFFFFFF
const p751_03 = 0xFFFFFFFFFFFFFFFF
const p751_04 = 0xFFFFFFFFFFFFFFFF
const p751_05 = 0xEEAFFFFFFFFFFFFF
const p751_06 = 0xE3EC968549F878A8
const p751_07 = 0xDA959B1A13F7CC76
const p751_08 = 0x084E9867D6EBE876
const p751_09 = 0x8562B5045CB25748
const p751_10 = 0x0E12909F97BADC66
const p751_11 = 0x00006FE5D541F71C

const p751p1_00 = 0x0000000000000000
const p751p1_01 = 0x0000000000000000
const p751p1_02 = 0x0000000000000000
const p751p1_03 = 0x0000000000000000
const p751p1_04 = 0x0000000000000000
const p751p1_05 = 0xEEB0000000000000
const p751p1_06 = 0xE3EC968549F878A8
const p751p1_07 = 0xDA959B1A13F7CC76
const p751p1_08 = 0x084E9867D6EBE876
const p751p1_09 = 0x8562B5045CB25748
const p751p1_10 = 0x0E12909F97BADC66
const p751p1_11 = 0x00006FE5D541F71C

proc main (a0_00@uint64, a0_01@uint64, a0_02@uint64, a0_03@uint64, a0_04@uint64, a0_05@uint64, a0_06@uint64, a0_07@uint64, a0_08@uint64, a0_09@uint64, a0_10@uint64, a0_11@uint64,
           a1_00@uint64, a1_01@uint64, a1_02@uint64, a1_03@uint64, a1_04@uint64, a1_05@uint64, a1_06@uint64, a1_07@uint64, a1_08@uint64, a1_09@uint64, a1_10@uint64, a1_11@uint64,
           b0_00@uint64, b0_01@uint64, b0_02@uint64, b0_03@uint64, b0_04@uint64, b0_05@uint64, b0_06@uint64, b0_07@uint64, b0_08@uint64, b0_09@uint64, b0_10@uint64, b0_11@uint64,
           b1_00@uint64, b1_01@uint64, b1_02@uint64, b1_03@uint64, b1_04@uint64, b1_05@uint64, b1_06@uint64, b1_07@uint64, b1_08@uint64, b1_09@uint64, b1_10@uint64, b1_11@uint64) =
{
  true
  &&
  and [
    limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768),
    limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768),
    limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768),
    limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768)
  ]
}


(* ===== Initialization ===== *)

mov L0x7fffffffda20 a0_00;
mov L0x7fffffffda28 a0_01;
mov L0x7fffffffda30 a0_02;
mov L0x7fffffffda38 a0_03;
mov L0x7fffffffda40 a0_04;
mov L0x7fffffffda48 a0_05;
mov L0x7fffffffda50 a0_06;
mov L0x7fffffffda58 a0_07;
mov L0x7fffffffda60 a0_08;
mov L0x7fffffffda68 a0_09;
mov L0x7fffffffda70 a0_10;
mov L0x7fffffffda78 a0_11;

mov L0x7fffffffda80 a1_00;
mov L0x7fffffffda88 a1_01;
mov L0x7fffffffda90 a1_02;
mov L0x7fffffffda98 a1_03;
mov L0x7fffffffdaa0 a1_04;
mov L0x7fffffffdaa8 a1_05;
mov L0x7fffffffdab0 a1_06;
mov L0x7fffffffdab8 a1_07;
mov L0x7fffffffdac0 a1_08;
mov L0x7fffffffdac8 a1_09;
mov L0x7fffffffdad0 a1_10;
mov L0x7fffffffdad8 a1_11;

mov L0x7fffffffdae0 b0_00;
mov L0x7fffffffdae8 b0_01;
mov L0x7fffffffdaf0 b0_02;
mov L0x7fffffffdaf8 b0_03;
mov L0x7fffffffdb00 b0_04;
mov L0x7fffffffdb08 b0_05;
mov L0x7fffffffdb10 b0_06;
mov L0x7fffffffdb18 b0_07;
mov L0x7fffffffdb20 b0_08;
mov L0x7fffffffdb28 b0_09;
mov L0x7fffffffdb30 b0_10;
mov L0x7fffffffdb38 b0_11;

mov L0x7fffffffdb40 b1_00;
mov L0x7fffffffdb48 b1_01;
mov L0x7fffffffdb50 b1_02;
mov L0x7fffffffdb58 b1_03;
mov L0x7fffffffdb60 b1_04;
mov L0x7fffffffdb68 b1_05;
mov L0x7fffffffdb70 b1_06;
mov L0x7fffffffdb78 b1_07;
mov L0x7fffffffdb80 b1_08;
mov L0x7fffffffdb88 b1_09;
mov L0x7fffffffdb90 b1_10;
mov L0x7fffffffdb98 b1_11;

mov L0x55555556a808 $p751p1_05@uint64;
mov L0x55555556a810 $p751p1_06@uint64;
mov L0x55555556a818 $p751p1_07@uint64;
mov L0x55555556a820 $p751p1_08@uint64;
mov L0x55555556a828 $p751p1_09@uint64;
mov L0x55555556a830 $p751p1_10@uint64;
mov L0x55555556a838 $p751p1_11@uint64;

mov L0x55555556a900 $p751_00@uint64;
mov L0x55555556a928 $p751_05@uint64;
mov L0x55555556a930 $p751_06@uint64;
mov L0x55555556a938 $p751_07@uint64;
mov L0x55555556a940 $p751_08@uint64;
mov L0x55555556a948 $p751_09@uint64;
mov L0x55555556a950 $p751_10@uint64;
mov L0x55555556a958 $p751_11@uint64;

nondet fs0x28@uint64;
nondet r15@uint64;
nondet r8@uint64;
nondet rbp@uint64;
nondet rbx@uint64;
nondet rdi@uint64;
nondet rdx@uint64;
nondet rsi@uint64;
nondet rsp@uint64;

(* ===== Program ===== *)

// mp_addfast(a[0], a[1], t1);                      // t1 = a0+a1
(* #! -> SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* mov    %rdx,%r14                                #! PC = 0x555555558e0c *)
mov r14 rdx;
(* mov    %rsi,%r13                                #! PC = 0x555555558e11 *)
mov r13 rsi;
(* mov    %r8,%rsi                                 #! PC = 0x555555558e14 *)
mov rsi r8;
(* mov    %rdi,%r12                                #! PC = 0x555555558e19 *)
mov r12 rdi;
(* sub    $0x328,%rsp                              #! PC = 0x555555558e1e *)
subb carry rsp rsp 0x328@uint64;
(* mov    %r15,%rdx                                #! PC = 0x555555558e2a *)
mov rdx r15;
(* mov    %fs:0x28,%rax                            #! PC = 0x555555558e2d *)
mov rax fs0x28;
(* mov    %rax,0x318(%rsp)                         #! EA = L0x7fffffffd508; PC = 0x555555558e36 *)
mov L0x7fffffffd508 rax;
(* xor    %eax,%eax                                #! PC = 0x555555558e3e *)
mov rax 0@uint64;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd1f8; PC = 0x555555558e45 *)
mov L0x7fffffffd1f8 r8;
(* #callq  0x555555566b79 <mp_add751_asm>          #! PC = 0x555555558e4a *)
#callq  0x555555566b79 <mp_add751_asm>          #! 0x555555558e4a = 0x555555558e4a;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda20; Value = 0xd61b7bfad7ada26b; PC = 0x555555566b79 *)
mov r8 L0x7fffffffda20;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda28; Value = 0x32f9c295878c0303; PC = 0x555555566b7c *)
mov r9 L0x7fffffffda28;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda30; Value = 0xc727e69e332bc6b1; PC = 0x555555566b80 *)
mov r10 L0x7fffffffda30;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda38; Value = 0x8f14695555c87135; PC = 0x555555566b84 *)
mov r11 L0x7fffffffda38;
(* mov    0x20(%rdi),%rax                          #! EA = L0x7fffffffda40; Value = 0xdf12b32bd970f2f3; PC = 0x555555566b88 *)
mov rax L0x7fffffffda40;
(* mov    0x28(%rdi),%rcx                          #! EA = L0x7fffffffda48; Value = 0xe798d3e88da5abd1; PC = 0x555555566b8c *)
mov rcx L0x7fffffffda48;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffda80; Value = 0x2878d7990886cec2; PC = 0x555555566b90 *)
adds carry r8 r8 L0x7fffffffda80;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffda88; Value = 0xbe88394a2b38dd77; PC = 0x555555566b93 *)
adcs carry r9 r9 L0x7fffffffda88 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffda90; Value = 0x380b123c24d7560d; PC = 0x555555566b97 *)
adcs carry r10 r10 L0x7fffffffda90 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffda98; Value = 0x3c562aff620aef7b; PC = 0x555555566b9b *)
adcs carry r11 r11 L0x7fffffffda98 carry;
(* adc    0x20(%rsi),%rax                          #! EA = L0x7fffffffdaa0; Value = 0xec8523c5895288f7; PC = 0x555555566b9f *)
adcs carry rax rax L0x7fffffffdaa0 carry;
(* adc    0x28(%rsi),%rcx                          #! EA = L0x7fffffffdaa8; Value = 0xc0f7deee809b5381; PC = 0x555555566ba3 *)
adcs carry rcx rcx L0x7fffffffdaa8 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd200; PC = 0x555555566ba7 *)
mov L0x7fffffffd200 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd208; PC = 0x555555566baa *)
mov L0x7fffffffd208 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd210; PC = 0x555555566bae *)
mov L0x7fffffffd210 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd218; PC = 0x555555566bb2 *)
mov L0x7fffffffd218 r11;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd220; PC = 0x555555566bb6 *)
mov L0x7fffffffd220 rax;
(* mov    %rcx,0x28(%rdx)                          #! EA = L0x7fffffffd228; PC = 0x555555566bba *)
mov L0x7fffffffd228 rcx;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffda50; Value = 0xe4b5561a1ae56b5a; PC = 0x555555566bbe *)
mov r8 L0x7fffffffda50;
(* mov    0x38(%rdi),%r9                           #! EA = L0x7fffffffda58; Value = 0xcb2079f2ce9eac1d; PC = 0x555555566bc2 *)
mov r9 L0x7fffffffda58;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffda60; Value = 0xb043e4f309687921; PC = 0x555555566bc6 *)
mov r10 L0x7fffffffda60;
(* mov    0x48(%rdi),%r11                          #! EA = L0x7fffffffda68; Value = 0x64fd0351dccf78a3; PC = 0x555555566bca *)
mov r11 L0x7fffffffda68;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffda70; Value = 0x032b11e8cb16542c; PC = 0x555555566bce *)
mov rax L0x7fffffffda70;
(* mov    0x58(%rdi),%rcx                          #! EA = L0x7fffffffda78; Value = 0x00003c08418a7aad; PC = 0x555555566bd2 *)
mov rcx L0x7fffffffda78;
(* adc    0x30(%rsi),%r8                           #! EA = L0x7fffffffdab0; Value = 0x37a097402cac705b; PC = 0x555555566bd6 *)
adcs carry r8 r8 L0x7fffffffdab0 carry;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdab8; Value = 0xc636c4f7151ab851; PC = 0x555555566bda *)
adcs carry r9 r9 L0x7fffffffdab8 carry;
(* adc    0x40(%rsi),%r10                          #! EA = L0x7fffffffdac0; Value = 0x6381753fed20d372; PC = 0x555555566bde *)
adcs carry r10 r10 L0x7fffffffdac0 carry;
(* adc    0x48(%rsi),%r11                          #! EA = L0x7fffffffdac8; Value = 0x266c35fa2bcc79c3; PC = 0x555555566be2 *)
adcs carry r11 r11 L0x7fffffffdac8 carry;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffdad0; Value = 0x03ab967225bcf121; PC = 0x555555566be6 *)
adcs carry rax rax L0x7fffffffdad0 carry;
(* adc    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdad8; Value = 0x00005f5bfa4eb6bb; PC = 0x555555566bea *)
adcs carry rcx rcx L0x7fffffffdad8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x30(%rdx)                           #! EA = L0x7fffffffd230; PC = 0x555555566bee *)
mov L0x7fffffffd230 r8;
(* mov    %r9,0x38(%rdx)                           #! EA = L0x7fffffffd238; PC = 0x555555566bf2 *)
mov L0x7fffffffd238 r9;
(* mov    %r10,0x40(%rdx)                          #! EA = L0x7fffffffd240; PC = 0x555555566bf6 *)
mov L0x7fffffffd240 r10;
(* mov    %r11,0x48(%rdx)                          #! EA = L0x7fffffffd248; PC = 0x555555566bfa *)
mov L0x7fffffffd248 r11;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd250; PC = 0x555555566bfe *)
mov L0x7fffffffd250 rax;
(* mov    %rcx,0x58(%rdx)                          #! EA = L0x7fffffffd258; PC = 0x555555566c02 *)
mov L0x7fffffffd258 rcx;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x555555566c06 *)
#retq                                           #! 0x555555566c06 = 0x555555566c06;

ghost t1_00@uint64, t1_01@uint64, t1_02@uint64, t1_03@uint64, t1_04@uint64, t1_05@uint64, t1_06@uint64, t1_07@uint64, t1_08@uint64, t1_09@uint64, t1_10@uint64, t1_11@uint64 :
  and [
    t1_00 = L0x7fffffffd200, t1_01 = L0x7fffffffd208, t1_02 = L0x7fffffffd210, t1_03 = L0x7fffffffd218,
    t1_04 = L0x7fffffffd220, t1_05 = L0x7fffffffd228, t1_06 = L0x7fffffffd230, t1_07 = L0x7fffffffd238,
    t1_08 = L0x7fffffffd240, t1_09 = L0x7fffffffd248, t1_10 = L0x7fffffffd250, t1_11 = L0x7fffffffd258
  ] &&
  and [
    t1_00 = L0x7fffffffd200, t1_01 = L0x7fffffffd208, t1_02 = L0x7fffffffd210, t1_03 = L0x7fffffffd218,
    t1_04 = L0x7fffffffd220, t1_05 = L0x7fffffffd228, t1_06 = L0x7fffffffd230, t1_07 = L0x7fffffffd238,
    t1_08 = L0x7fffffffd240, t1_09 = L0x7fffffffd248, t1_10 = L0x7fffffffd250, t1_11 = L0x7fffffffd258
  ];

# Ecut 0
ecut (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ])
     =
     (
       limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]
       +
       limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]
     );
assert true &&
       (
         limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11, 0@64 ]
         +
         limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11, 0@64 ]
       )
       <u
       (2**768)@832;
assume true &&
       (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ])
       =
       (
         limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]
         +
         limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]
       );
# Rcut 0
rcut (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ])
     =
     (
       limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]
       +
       limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]
     );

// mp_addfast(b[0], b[1], t2);                      // t2 = b0+b1
(* mov    %r9,%rsi                                 #! PC = 0x555555558e5b *)
mov rsi r9;
(* mov    %r13,%rdi                                #! PC = 0x555555558e5e *)
mov rdi r13;
(* mov    %rbx,%rdx                                #! PC = 0x555555558e61 *)
mov rdx rbx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd1f0; PC = 0x555555558e64 *)
mov L0x7fffffffd1f0 r9;
(* #callq  0x555555566b79 <mp_add751_asm>          #! PC = 0x555555558e68 *)
#callq  0x555555566b79 <mp_add751_asm>          #! 0x555555558e68 = 0x555555558e68;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x555555566b79 *)
mov r8 L0x7fffffffdae0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x555555566b7c *)
mov r9 L0x7fffffffdae8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x555555566b80 *)
mov r10 L0x7fffffffdaf0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x555555566b84 *)
mov r11 L0x7fffffffdaf8;
(* mov    0x20(%rdi),%rax                          #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x555555566b88 *)
mov rax L0x7fffffffdb00;
(* mov    0x28(%rdi),%rcx                          #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x555555566b8c *)
mov rcx L0x7fffffffdb08;
(* add    (%rsi),%r8                               #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x555555566b90 *)
adds carry r8 r8 L0x7fffffffdb40;
(* adc    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x555555566b93 *)
adcs carry r9 r9 L0x7fffffffdb48 carry;
(* adc    0x10(%rsi),%r10                          #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x555555566b97 *)
adcs carry r10 r10 L0x7fffffffdb50 carry;
(* adc    0x18(%rsi),%r11                          #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x555555566b9b *)
adcs carry r11 r11 L0x7fffffffdb58 carry;
(* adc    0x20(%rsi),%rax                          #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x555555566b9f *)
adcs carry rax rax L0x7fffffffdb60 carry;
(* adc    0x28(%rsi),%rcx                          #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x555555566ba3 *)
adcs carry rcx rcx L0x7fffffffdb68 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd260; PC = 0x555555566ba7 *)
mov L0x7fffffffd260 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd268; PC = 0x555555566baa *)
mov L0x7fffffffd268 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd270; PC = 0x555555566bae *)
mov L0x7fffffffd270 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd278; PC = 0x555555566bb2 *)
mov L0x7fffffffd278 r11;
(* mov    %rax,0x20(%rdx)                          #! EA = L0x7fffffffd280; PC = 0x555555566bb6 *)
mov L0x7fffffffd280 rax;
(* mov    %rcx,0x28(%rdx)                          #! EA = L0x7fffffffd288; PC = 0x555555566bba *)
mov L0x7fffffffd288 rcx;
(* mov    0x30(%rdi),%r8                           #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555566bbe *)
mov r8 L0x7fffffffdb10;
(* mov    0x38(%rdi),%r9                           #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555566bc2 *)
mov r9 L0x7fffffffdb18;
(* mov    0x40(%rdi),%r10                          #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555566bc6 *)
mov r10 L0x7fffffffdb20;
(* mov    0x48(%rdi),%r11                          #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555566bca *)
mov r11 L0x7fffffffdb28;
(* mov    0x50(%rdi),%rax                          #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555566bce *)
mov rax L0x7fffffffdb30;
(* mov    0x58(%rdi),%rcx                          #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555566bd2 *)
mov rcx L0x7fffffffdb38;
(* adc    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555566bd6 *)
adcs carry r8 r8 L0x7fffffffdb70 carry;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555566bda *)
adcs carry r9 r9 L0x7fffffffdb78 carry;
(* adc    0x40(%rsi),%r10                          #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555566bde *)
adcs carry r10 r10 L0x7fffffffdb80 carry;
(* adc    0x48(%rsi),%r11                          #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555566be2 *)
adcs carry r11 r11 L0x7fffffffdb88 carry;
(* adc    0x50(%rsi),%rax                          #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555566be6 *)
adcs carry rax rax L0x7fffffffdb90 carry;
(* adc    0x58(%rsi),%rcx                          #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555566bea *)
adcs carry rcx rcx L0x7fffffffdb98 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x30(%rdx)                           #! EA = L0x7fffffffd290; PC = 0x555555566bee *)
mov L0x7fffffffd290 r8;
(* mov    %r9,0x38(%rdx)                           #! EA = L0x7fffffffd298; PC = 0x555555566bf2 *)
mov L0x7fffffffd298 r9;
(* mov    %r10,0x40(%rdx)                          #! EA = L0x7fffffffd2a0; PC = 0x555555566bf6 *)
mov L0x7fffffffd2a0 r10;
(* mov    %r11,0x48(%rdx)                          #! EA = L0x7fffffffd2a8; PC = 0x555555566bfa *)
mov L0x7fffffffd2a8 r11;
(* mov    %rax,0x50(%rdx)                          #! EA = L0x7fffffffd2b0; PC = 0x555555566bfe *)
mov L0x7fffffffd2b0 rax;
(* mov    %rcx,0x58(%rdx)                          #! EA = L0x7fffffffd2b8; PC = 0x555555566c02 *)
mov L0x7fffffffd2b8 rcx;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x555555566c06 *)
#retq                                           #! 0x555555566c06 = 0x555555566c06;

ghost t2_00@uint64, t2_01@uint64, t2_02@uint64, t2_03@uint64, t2_04@uint64, t2_05@uint64, t2_06@uint64, t2_07@uint64, t2_08@uint64, t2_09@uint64, t2_10@uint64, t2_11@uint64 :
  and [
    t2_00 = L0x7fffffffd260, t2_01 = L0x7fffffffd268, t2_02 = L0x7fffffffd270, t2_03 = L0x7fffffffd278,
    t2_04 = L0x7fffffffd280, t2_05 = L0x7fffffffd288, t2_06 = L0x7fffffffd290, t2_07 = L0x7fffffffd298,
    t2_08 = L0x7fffffffd2a0, t2_09 = L0x7fffffffd2a8, t2_10 = L0x7fffffffd2b0, t2_11 = L0x7fffffffd2b8
  ] &&
  and [
    t2_00 = L0x7fffffffd260, t2_01 = L0x7fffffffd268, t2_02 = L0x7fffffffd270, t2_03 = L0x7fffffffd278,
    t2_04 = L0x7fffffffd280, t2_05 = L0x7fffffffd288, t2_06 = L0x7fffffffd290, t2_07 = L0x7fffffffd298,
    t2_08 = L0x7fffffffd2a0, t2_09 = L0x7fffffffd2a8, t2_10 = L0x7fffffffd2b0, t2_11 = L0x7fffffffd2b8
  ];

# Ecut 1
ecut (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
     =
     (
       limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]
       +
       limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]
     );
assert true &&
       (
         limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11, 0@64 ]
         +
         limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11, 0@64 ]
       )
       <u
       (2**768)@832;
assume true &&
       (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
       =
       (
         limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]
         +
         limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]
       );
# Rcut 1
rcut (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
     =
     (
       limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]
       +
       limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]
     ) prove with [precondition];

// mp_mul(a[0], b[0], tt1, NWORDS_FIELD);           // tt1 = a0*b0
(* mov    %r13,%rsi                                #! PC = 0x555555558e6d *)
mov rsi r13;
(* mov    %r12,%rdi                                #! PC = 0x555555558e70 *)
mov rdi r12;
(* mov    $0xc,%ecx                                #! PC = 0x555555558e73 *)
assert true && 0xc@64 <=u 0x0000000100000000@64;
mov rcx 0xc@uint64;
(* mov    %rbp,%rdx                                #! PC = 0x555555558e78 *)
mov rdx rbp;
(* #callq  0x5555555650c0 <mp_mul>                 #! PC = 0x555555558e7b *)
#callq  0x5555555650c0 <mp_mul>                 #! 0x555555558e7b = 0x555555558e7b;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #jmpq   0x555555565653 <mul751_asm>             #! PC = 0x5555555650c4 *)
#jmpq   0x555555565653 <mul751_asm>             #! 0x5555555650c4 = 0x5555555650c4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556565b *)
mov rcx rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556565e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda20; Value = 0xd61b7bfad7ada26b; PC = 0x555555565661 *)
mov r8 L0x7fffffffda20;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda28; Value = 0x32f9c295878c0303; PC = 0x555555565664 *)
mov r9 L0x7fffffffda28;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda30; Value = 0xc727e69e332bc6b1; PC = 0x555555565668 *)
mov r10 L0x7fffffffda30;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda38; Value = 0x8f14695555c87135; PC = 0x55555556566c *)
mov r11 L0x7fffffffda38;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffda40; Value = 0xdf12b32bd970f2f3; PC = 0x555555565670 *)
mov r12 L0x7fffffffda40;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffda48; Value = 0xe798d3e88da5abd1; PC = 0x555555565674 *)
mov r13 L0x7fffffffda48;
(* sub    $0x98,%rsp                               #! PC = 0x55555556567a *)
subb carry rsp rsp 0x98@uint64;
(* add    0x30(%rdi),%r8                           #! EA = L0x7fffffffda50; Value = 0xe4b5561a1ae56b5a; PC = 0x555555565681 *)
adds carry r8 r8 L0x7fffffffda50;
(* adc    0x38(%rdi),%r9                           #! EA = L0x7fffffffda58; Value = 0xcb2079f2ce9eac1d; PC = 0x555555565685 *)
adcs carry r9 r9 L0x7fffffffda58 carry;
(* adc    0x40(%rdi),%r10                          #! EA = L0x7fffffffda60; Value = 0xb043e4f309687921; PC = 0x555555565689 *)
adcs carry r10 r10 L0x7fffffffda60 carry;
(* adc    0x48(%rdi),%r11                          #! EA = L0x7fffffffda68; Value = 0x64fd0351dccf78a3; PC = 0x55555556568d *)
adcs carry r11 r11 L0x7fffffffda68 carry;
(* adc    0x50(%rdi),%r12                          #! EA = L0x7fffffffda70; Value = 0x032b11e8cb16542c; PC = 0x555555565691 *)
adcs carry r12 r12 L0x7fffffffda70 carry;
(* adc    0x58(%rdi),%r13                          #! EA = L0x7fffffffda78; Value = 0x00003c08418a7aad; PC = 0x555555565695 *)
adcs carry r13 r13 L0x7fffffffda78 carry;
ghost carry_a0h_add_a0l@uint1 : carry_a0h_add_a0l = carry && carry_a0h_add_a0l = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555565699 *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_a0h_add_a0l = carry;
assume carry_a0h_add_a0l = carry && true;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd120; PC = 0x55555556569d *)
mov L0x7fffffffd120 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd128; PC = 0x5555555656a1 *)
mov L0x7fffffffd128 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd130; PC = 0x5555555656a6 *)
mov L0x7fffffffd130 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x5555555656ab *)
mov L0x7fffffffd138 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd140; PC = 0x5555555656b0 *)
mov L0x7fffffffd140 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd148; PC = 0x5555555656b5 *)
mov L0x7fffffffd148 r13;
ghost a0h_add_a0l_0@uint64, a0h_add_a0l_1@uint64, a0h_add_a0l_2@uint64, a0h_add_a0l_3@uint64, a0h_add_a0l_4@uint64, a0h_add_a0l_5@uint64 :
  and [
    a0h_add_a0l_0 = L0x7fffffffd120, a0h_add_a0l_1 = L0x7fffffffd128, a0h_add_a0l_2 = L0x7fffffffd130,
    a0h_add_a0l_3 = L0x7fffffffd138, a0h_add_a0l_4 = L0x7fffffffd140, a0h_add_a0l_5 = L0x7fffffffd148
  ]
  &&
  and [
    a0h_add_a0l_0 = L0x7fffffffd120, a0h_add_a0l_1 = L0x7fffffffd128, a0h_add_a0l_2 = L0x7fffffffd130,
    a0h_add_a0l_3 = L0x7fffffffd138, a0h_add_a0l_4 = L0x7fffffffd140, a0h_add_a0l_5 = L0x7fffffffd148
  ];
(* xor    %rdx,%rdx                                #! PC = 0x5555555656ba *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x5555555656bd *)
mov r8 L0x7fffffffdae0;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x5555555656c0 *)
mov r9 L0x7fffffffdae8;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x5555555656c4 *)
mov rbx L0x7fffffffdaf0;
(* mov    0x18(%rsi),%rbp                          #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x5555555656c8 *)
mov rbp L0x7fffffffdaf8;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x5555555656cc *)
mov r14 L0x7fffffffdb00;
(* mov    0x28(%rsi),%r15                          #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x5555555656d0 *)
mov r15 L0x7fffffffdb08;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x5555555656d4 *)
adds carry r8 r8 L0x7fffffffdb10;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x5555555656d8 *)
adcs carry r9 r9 L0x7fffffffdb18 carry;
(* adc    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x5555555656dc *)
adcs carry rbx rbx L0x7fffffffdb20 carry;
(* adc    0x48(%rsi),%rbp                          #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x5555555656e0 *)
adcs carry rbp rbp L0x7fffffffdb28 carry;
(* adc    0x50(%rsi),%r14                          #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x5555555656e4 *)
adcs carry r14 r14 L0x7fffffffdb30 carry;
(* adc    0x58(%rsi),%r15                          #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x5555555656e8 *)
adcs carry r15 r15 L0x7fffffffdb38 carry;
ghost carry_b0h_add_b0l@uint1 : carry_b0h_add_b0l = carry && carry_b0h_add_b0l = carry;
(* sbb    $0x0,%rdx                                #! PC = 0x5555555656ec *)
sbbs carry rdx rdx 0x0@uint64 carry;
assert true && carry_b0h_add_b0l = carry;
assume carry_b0h_add_b0l = carry && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd150; PC = 0x5555555656f0 *)
mov L0x7fffffffd150 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd158; PC = 0x5555555656f5 *)
mov L0x7fffffffd158 r9;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd160; PC = 0x5555555656fa *)
mov L0x7fffffffd160 rbx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x5555555656ff *)
mov L0x7fffffffd168 rbp;
(* mov    %r14,0x50(%rsp)                          #! EA = L0x7fffffffd170; PC = 0x555555565704 *)
mov L0x7fffffffd170 r14;
(* mov    %r15,0x58(%rsp)                          #! EA = L0x7fffffffd178; PC = 0x555555565709 *)
mov L0x7fffffffd178 r15;
ghost b0h_add_b0l_0@uint64, b0h_add_b0l_1@uint64, b0h_add_b0l_2@uint64, b0h_add_b0l_3@uint64, b0h_add_b0l_4@uint64, b0h_add_b0l_5@uint64 :
  and [
    b0h_add_b0l_0 = L0x7fffffffd150, b0h_add_b0l_1 = L0x7fffffffd158, b0h_add_b0l_2 = L0x7fffffffd160,
    b0h_add_b0l_3 = L0x7fffffffd168, b0h_add_b0l_4 = L0x7fffffffd170, b0h_add_b0l_5 = L0x7fffffffd178
  ]
  &&
  and [
    b0h_add_b0l_0 = L0x7fffffffd150, b0h_add_b0l_1 = L0x7fffffffd158, b0h_add_b0l_2 = L0x7fffffffd160,
    b0h_add_b0l_3 = L0x7fffffffd168, b0h_add_b0l_4 = L0x7fffffffd170, b0h_add_b0l_5 = L0x7fffffffd178
  ];
(* and    %rax,%r8                                 #! PC = 0x55555556570e *)
and uint64 r8 rax r8;
(* and    %rax,%r9                                 #! PC = 0x555555565711 *)
and uint64 r9 rax r9;
(* and    %rax,%rbx                                #! PC = 0x555555565714 *)
and uint64 rbx rax rbx;
(* and    %rax,%rbp                                #! PC = 0x555555565717 *)
and uint64 rbp rax rbp;
(* and    %rax,%r14                                #! PC = 0x55555556571a *)
and uint64 r14 rax r14;
(* and    %rax,%r15                                #! PC = 0x55555556571d *)
and uint64 r15 rax r15;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd2c0; PC = 0x555555565720 *)
mov L0x7fffffffd2c0 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd2c8; PC = 0x555555565723 *)
mov L0x7fffffffd2c8 r9;
assert true && and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  uext carry_a0h_add_a0l 383 * (limbs 64 [ b0h_add_b0l_0, b0h_add_b0l_1, b0h_add_b0l_2, b0h_add_b0l_3, b0h_add_b0l_4, b0h_add_b0l_5 ])
];
assume and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  carry_a0h_add_a0l * (limbs 64 [ b0h_add_b0l_0, b0h_add_b0l_1, b0h_add_b0l_2, b0h_add_b0l_3, b0h_add_b0l_4, b0h_add_b0l_5 ])
] && true;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd120; Value = 0xbad0d214f2930dc5; PC = 0x555555565727 *)
mov r8 L0x7fffffffd120;
(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd128; Value = 0xfe1a3c88562aaf21; PC = 0x55555556572b *)
mov r9 L0x7fffffffd128;
(* and    %rdx,%r8                                 #! PC = 0x555555565730 *)
and uint64 r8 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x555555565733 *)
and uint64 r9 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x555555565736 *)
and uint64 r10 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x555555565739 *)
and uint64 r11 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x55555556573c *)
and uint64 r12 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x55555556573f *)
and uint64 r13 rdx r13;
assert true && and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  uext carry_b0h_add_b0l 383 * (limbs 64 [ a0h_add_a0l_0, a0h_add_a0l_1, a0h_add_a0l_2, a0h_add_a0l_3, a0h_add_a0l_4, a0h_add_a0l_5 ])
];
assume and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  carry_b0h_add_b0l * (limbs 64 [ a0h_add_a0l_0, a0h_add_a0l_1, a0h_add_a0l_2, a0h_add_a0l_3, a0h_add_a0l_4, a0h_add_a0l_5 ])
] && true;
(* mov    (%rcx),%rax                              #! EA = L0x7fffffffd2c0; Value = 0x0000000000000000; PC = 0x555555565742 *)
mov rax L0x7fffffffd2c0;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd2c8; Value = 0x0000000000000000; PC = 0x555555565745 *)
mov rdx L0x7fffffffd2c8;
(* add    %rax,%r8                                 #! PC = 0x555555565749 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x55555556574c *)
adcs carry r9 r9 rdx@uint64 carry;
(* adc    %rbx,%r10                                #! PC = 0x55555556574f *)
adcs carry r10 r10 rbx@uint64 carry;
(* adc    %rbp,%r11                                #! PC = 0x555555565752 *)
adcs carry r11 r11 rbp@uint64 carry;
(* adc    %r14,%r12                                #! PC = 0x555555565755 *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x555555565758 *)
adcs carry r13 r13 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd180; PC = 0x55555556575b *)
mov L0x7fffffffd180 r8;
(* mov    %r9,0x68(%rsp)                           #! EA = L0x7fffffffd188; PC = 0x555555565760 *)
mov L0x7fffffffd188 r9;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd190; PC = 0x555555565765 *)
mov L0x7fffffffd190 r10;
(* mov    %r11,0x78(%rsp)                          #! EA = L0x7fffffffd198; PC = 0x55555556576a *)
mov L0x7fffffffd198 r11;
ghost m_a0h_a0l_b0h_b0l_0@uint64, m_a0h_a0l_b0h_b0l_1@uint64, m_a0h_a0l_b0h_b0l_2@uint64, m_a0h_a0l_b0h_b0l_3@uint64, m_a0h_a0l_b0h_b0l_4@uint64, m_a0h_a0l_b0h_b0l_5@uint64 :
  and [
    m_a0h_a0l_b0h_b0l_0 = r8, m_a0h_a0l_b0h_b0l_1 = r9, m_a0h_a0l_b0h_b0l_2 = r10,
    m_a0h_a0l_b0h_b0l_3 = r11, m_a0h_a0l_b0h_b0l_4 = r12, m_a0h_a0l_b0h_b0l_5 = r13
  ]
  &&
  and [
    m_a0h_a0l_b0h_b0l_0 = r8, m_a0h_a0l_b0h_b0l_1 = r9, m_a0h_a0l_b0h_b0l_2 = r10,
    m_a0h_a0l_b0h_b0l_3 = r11, m_a0h_a0l_b0h_b0l_4 = r12, m_a0h_a0l_b0h_b0l_5 = r13
  ];
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffda20; Value = 0xd61b7bfad7ada26b; PC = 0x55555556576f *)
mov rdx L0x7fffffffda20;
(* mulx   (%rsi),%r9,%r8                           #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x555555565772 *)
mull r8 r9 L0x7fffffffdae0 rdx;
(* mulx   0x8(%rsi),%r11,%r10                      #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x555555565777 *)
mull r10 r11 L0x7fffffffdae8 rdx;
(* mov    %r9,(%rcx)                               #! EA = L0x7fffffffd2c0; PC = 0x55555556577d *)
mov L0x7fffffffd2c0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565780 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x10(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x555555565783 *)
mull rbx rbp L0x7fffffffdaf0 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565789 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x55555556578f *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x18(%rsi),%r11,%r9                      #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x555555565795 *)
mull r9 r11 L0x7fffffffdaf8 rdx;
(* adox   %r11,%rbx                                #! PC = 0x55555556579b *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x5555555657a1 *)
mull rbp r14 L0x7fffffffdb00 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555657a7 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x28(%rsi),%r15,%r11                     #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x5555555657ad *)
mull r11 r15 L0x7fffffffdb08 rdx;
(* adox   %r15,%rbp                                #! PC = 0x5555555657b3 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555657b9 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffda28; Value = 0x32f9c295878c0303; PC = 0x5555555657bf *)
mov rdx L0x7fffffffda28;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x5555555657c3 *)
mull r14 r15 L0x7fffffffdae0 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555657c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x5555555657cb *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd2c8; PC = 0x5555555657d1 *)
mov L0x7fffffffd2c8 r8;
(* adcx   %r14,%r10                                #! PC = 0x5555555657d5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x5555555657db *)
mull r14 r15 L0x7fffffffdae8 rdx;
(* adox   %r15,%r10                                #! PC = 0x5555555657e1 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x5555555657e7 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x5555555657ed *)
mull r8 r14 L0x7fffffffdaf0 rdx;
(* adox   %r14,%rbx                                #! PC = 0x5555555657f3 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555657f9 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x5555555657ff *)
mull r9 r15 L0x7fffffffdaf8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565805 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x55555556580b *)
mull rbp r14 L0x7fffffffdb00 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565811 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x28(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x555555565817 *)
mull rbp rdx L0x7fffffffdb08 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556581d *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565823 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565829 *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x55555556582f *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565835 *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffda30; Value = 0xc727e69e332bc6b1; PC = 0x55555556583b *)
mov rdx L0x7fffffffda30;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x55555556583f *)
mull r14 r15 L0x7fffffffdae0 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565844 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565847 *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd2d0; PC = 0x55555556584d *)
mov L0x7fffffffd2d0 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565851 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x555555565857 *)
mull r14 r15 L0x7fffffffdae8 rdx;
(* adox   %r15,%rbx                                #! PC = 0x55555556585d *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565863 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x10(%rsi),%r14,%r10                     #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x555555565869 *)
mull r10 r14 L0x7fffffffdaf0 rdx;
(* adox   %r14,%r8                                 #! PC = 0x55555556586f *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565875 *)
adcs carry r9 r9 r10 carry;
(* mulx   0x18(%rsi),%r15,%r10                     #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x55555556587b *)
mull r10 r15 L0x7fffffffdaf8 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565881 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x20(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x555555565887 *)
mull r10 r14 L0x7fffffffdb00 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x55555556588d *)
adcs carry rbp rbp r10 carry;
(* mulx   0x28(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x555555565893 *)
mull r10 rdx L0x7fffffffdb08 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565899 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x55555556589f *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x5555555658a5 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x5555555658ab *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x5555555658b1 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffda38; Value = 0x8f14695555c87135; PC = 0x5555555658b7 *)
mov rdx L0x7fffffffda38;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x5555555658bb *)
mull r14 r15 L0x7fffffffdae0 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555658c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x5555555658c3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rcx)                          #! EA = L0x7fffffffd2d8; PC = 0x5555555658c9 *)
mov L0x7fffffffd2d8 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x5555555658cd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x5555555658d3 *)
mull r14 r15 L0x7fffffffdae8 rdx;
(* adox   %r15,%r8                                 #! PC = 0x5555555658d9 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x5555555658df *)
adcs carry r9 r9 r14 carry;
(* mulx   0x10(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x5555555658e5 *)
mull rbx r14 L0x7fffffffdaf0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555658eb *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x5555555658f1 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x18(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x5555555658f7 *)
mull rbx r15 L0x7fffffffdaf8 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x5555555658fd *)
adcs carry rbp rbp rbx carry;
(* mulx   0x20(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x555555565903 *)
mull rbx r14 L0x7fffffffdb00 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565909 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x28(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x55555556590f *)
mull rbx rdx L0x7fffffffdb08 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565915 *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x55555556591b *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565921 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565927 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x55555556592d *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffda40; Value = 0xdf12b32bd970f2f3; PC = 0x555555565933 *)
mov rdx L0x7fffffffda40;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x555555565937 *)
mull r14 r15 L0x7fffffffdae0 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556593c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x55555556593f *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffd2e0; PC = 0x555555565945 *)
mov L0x7fffffffd2e0 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565949 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x55555556594f *)
mull r14 r15 L0x7fffffffdae8 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565955 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x55555556595b *)
adcs carry r11 r11 r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x555555565961 *)
mull r8 r14 L0x7fffffffdaf0 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565967 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x55555556596d *)
adcs carry rbp rbp r8 carry;
(* mulx   0x18(%rsi),%r15,%r8                      #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x555555565973 *)
mull r8 r15 L0x7fffffffdaf8 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565979 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x20(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x55555556597f *)
mull r8 r14 L0x7fffffffdb00 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565985 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x28(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x55555556598b *)
mull r8 rdx L0x7fffffffdb08 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565991 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565997 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x55555556599d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x5555555659a3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x5555555659a9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffda48; Value = 0xe798d3e88da5abd1; PC = 0x5555555659af *)
mov rdx L0x7fffffffda48;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdae0; Value = 0x52a0dfd46c663f91; PC = 0x5555555659b3 *)
mull r14 r15 L0x7fffffffdae0 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555659b8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x5555555659bb *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffd2e8; PC = 0x5555555659c1 *)
mov L0x7fffffffd2e8 r9;
(* adcx   %r14,%r11                                #! PC = 0x5555555659c5 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdae8; Value = 0x88a1236d130f0f41; PC = 0x5555555659cb *)
mull r14 r15 L0x7fffffffdae8 rdx;
(* adox   %r15,%r11                                #! PC = 0x5555555659d1 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555659d7 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x10(%rsi),%r14,%r9                      #! EA = L0x7fffffffdaf0; Value = 0x33ed6895b925ab27; PC = 0x5555555659dd *)
mull r9 r14 L0x7fffffffdaf0 rdx;
(* adox   %r14,%rbp                                #! PC = 0x5555555659e3 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x5555555659e9 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffdaf8; Value = 0x74c72be2305cd3ea; PC = 0x5555555659ef *)
mull r9 r15 L0x7fffffffdaf8 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x5555555659f5 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x20(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb00; Value = 0x676e0733637927f3; PC = 0x5555555659fb *)
mull r9 r14 L0x7fffffffdb00 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565a01 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x28(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdb08; Value = 0x3517d95af2348191; PC = 0x555555565a07 *)
mull r9 rdx L0x7fffffffdb08 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565a0d *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565a13 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565a19 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565a1f *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565a25 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rcx)                          #! EA = L0x7fffffffd2f0; PC = 0x555555565a2b *)
mov L0x7fffffffd2f0 r11;
(* mov    %rbp,0x38(%rcx)                          #! EA = L0x7fffffffd2f8; PC = 0x555555565a2f *)
mov L0x7fffffffd2f8 rbp;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd300; PC = 0x555555565a33 *)
mov L0x7fffffffd300 r10;
(* mov    %rbx,0x48(%rcx)                          #! EA = L0x7fffffffd308; PC = 0x555555565a37 *)
mov L0x7fffffffd308 rbx;
(* mov    %r8,0x50(%rcx)                           #! EA = L0x7fffffffd310; PC = 0x555555565a3b *)
mov L0x7fffffffd310 r8;
(* mov    %r9,0x58(%rcx)                           #! EA = L0x7fffffffd318; PC = 0x555555565a3f *)
mov L0x7fffffffd318 r9;
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd120; Value = 0xbad0d214f2930dc5; PC = 0x555555565a43 *)
mov rdx L0x7fffffffd120;
(* mulx   0x30(%rsp),%r9,%r8                       #! EA = L0x7fffffffd150; Value = 0xc7d716f9d158e916; PC = 0x555555565a47 *)
mull r8 r9 L0x7fffffffd150 rdx;
(* mulx   0x38(%rsp),%r11,%r10                     #! EA = L0x7fffffffd158; Value = 0xc80463dea5744d58; PC = 0x555555565a4e *)
mull r10 r11 L0x7fffffffd158 rdx;
(* mov    %r9,0x60(%rcx)                           #! EA = L0x7fffffffd320; PC = 0x555555565a55 *)
mov L0x7fffffffd320 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565a59 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsp),%rbp,%rbx                     #! EA = L0x7fffffffd160; Value = 0x91b12dee251469be; PC = 0x555555565a5c *)
mull rbx rbp L0x7fffffffd160 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565a63 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565a69 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsp),%r11,%r9                      #! EA = L0x7fffffffd168; Value = 0x1c9454f71395b382; PC = 0x555555565a6f *)
mull r9 r11 L0x7fffffffd168 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565a76 *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd170; Value = 0xecb181decdfcb576; PC = 0x555555565a7c *)
mull rbp r14 L0x7fffffffd170 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565a83 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsp),%r15,%r11                     #! EA = L0x7fffffffd178; Value = 0x3517f239887dd9a0; PC = 0x555555565a89 *)
mull r11 r15 L0x7fffffffd178 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565a90 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565a96 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd128; Value = 0xfe1a3c88562aaf21; PC = 0x555555565a9c *)
mov rdx L0x7fffffffd128;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xc7d716f9d158e916; PC = 0x555555565aa1 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565aa8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565aab *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x68(%rcx)                           #! EA = L0x7fffffffd328; PC = 0x555555565ab1 *)
mov L0x7fffffffd328 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565ab5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xc80463dea5744d58; PC = 0x555555565abb *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565ac2 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ac8 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd160; Value = 0x91b12dee251469be; PC = 0x555555565ace *)
mull r8 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565ad5 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565adb *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd168; Value = 0x1c9454f71395b382; PC = 0x555555565ae1 *)
mull r9 r15 L0x7fffffffd168 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565ae8 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd170; Value = 0xecb181decdfcb576; PC = 0x555555565aee *)
mull rbp r14 L0x7fffffffd170 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565af5 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsp),%rdx,%rbp                     #! EA = L0x7fffffffd178; Value = 0x3517f239887dd9a0; PC = 0x555555565afb *)
mull rbp rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565b02 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565b08 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565b0e *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565b14 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565b1a *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd130; Value = 0x776bcb913c943fd2; PC = 0x555555565b20 *)
mov rdx L0x7fffffffd130;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xc7d716f9d158e916; PC = 0x555555565b25 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b2c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565b2f *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd330; PC = 0x555555565b35 *)
mov L0x7fffffffd330 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565b39 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xc80463dea5744d58; PC = 0x555555565b3f *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565b46 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565b4c *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsp),%r14,%r10                     #! EA = L0x7fffffffd160; Value = 0x91b12dee251469be; PC = 0x555555565b52 *)
mull r10 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565b59 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565b5f *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsp),%r15,%r10                     #! EA = L0x7fffffffd168; Value = 0x1c9454f71395b382; PC = 0x555555565b65 *)
mull r10 r15 L0x7fffffffd168 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565b6c *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsp),%r14,%r10                     #! EA = L0x7fffffffd170; Value = 0xecb181decdfcb576; PC = 0x555555565b72 *)
mull r10 r14 L0x7fffffffd170 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565b79 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsp),%rdx,%r10                     #! EA = L0x7fffffffd178; Value = 0x3517f239887dd9a0; PC = 0x555555565b7f *)
mull r10 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565b86 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565b8c *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565b92 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565b98 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565b9e *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd138; Value = 0xf4116ca73297e9d9; PC = 0x555555565ba4 *)
mov rdx L0x7fffffffd138;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xc7d716f9d158e916; PC = 0x555555565ba9 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565bb0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565bb3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x78(%rcx)                          #! EA = L0x7fffffffd338; PC = 0x555555565bb9 *)
mov L0x7fffffffd338 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565bbd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xc80463dea5744d58; PC = 0x555555565bc3 *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565bca *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565bd0 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd160; Value = 0x91b12dee251469be; PC = 0x555555565bd6 *)
mull rbx r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565bdd *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565be3 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsp),%r15,%rbx                     #! EA = L0x7fffffffd168; Value = 0x1c9454f71395b382; PC = 0x555555565be9 *)
mull rbx r15 L0x7fffffffd168 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565bf0 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd170; Value = 0xecb181decdfcb576; PC = 0x555555565bf6 *)
mull rbx r14 L0x7fffffffd170 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565bfd *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsp),%rdx,%rbx                     #! EA = L0x7fffffffd178; Value = 0x3517f239887dd9a0; PC = 0x555555565c03 *)
mull rbx rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565c0a *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565c10 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565c16 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565c1c *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565c22 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd140; Value = 0xe23dc514a487471f; PC = 0x555555565c28 *)
mov rdx L0x7fffffffd140;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xc7d716f9d158e916; PC = 0x555555565c2d *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565c34 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565c37 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x80(%rcx)                           #! EA = L0x7fffffffd340; PC = 0x555555565c3d *)
mov L0x7fffffffd340 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565c44 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xc80463dea5744d58; PC = 0x555555565c4a *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565c51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565c57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd160; Value = 0x91b12dee251469be; PC = 0x555555565c5d *)
mull r8 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565c64 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565c6a *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsp),%r15,%r8                      #! EA = L0x7fffffffd168; Value = 0x1c9454f71395b382; PC = 0x555555565c70 *)
mull r8 r15 L0x7fffffffd168 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565c77 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsp),%r14,%r8                      #! EA = L0x7fffffffd170; Value = 0xecb181decdfcb576; PC = 0x555555565c7d *)
mull r8 r14 L0x7fffffffd170 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565c84 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsp),%rdx,%r8                      #! EA = L0x7fffffffd178; Value = 0x3517f239887dd9a0; PC = 0x555555565c8a *)
mull r8 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565c91 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565c97 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565c9d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565ca3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565ca9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd148; Value = 0xe7990ff0cf30267e; PC = 0x555555565caf *)
mov rdx L0x7fffffffd148;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xc7d716f9d158e916; PC = 0x555555565cb4 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cbb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565cbe *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x88(%rcx)                           #! EA = L0x7fffffffd348; PC = 0x555555565cc4 *)
mov L0x7fffffffd348 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565ccb *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xc80463dea5744d58; PC = 0x555555565cd1 *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565cd8 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565cde *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsp),%r14,%r9                      #! EA = L0x7fffffffd160; Value = 0x91b12dee251469be; PC = 0x555555565ce4 *)
mull r9 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565ceb *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565cf1 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd168; Value = 0x1c9454f71395b382; PC = 0x555555565cf7 *)
mull r9 r15 L0x7fffffffd168 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565cfe *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsp),%r14,%r9                      #! EA = L0x7fffffffd170; Value = 0xecb181decdfcb576; PC = 0x555555565d04 *)
mull r9 r14 L0x7fffffffd170 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565d0b *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsp),%rdx,%r9                      #! EA = L0x7fffffffd178; Value = 0x3517f239887dd9a0; PC = 0x555555565d11 *)
mull r9 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565d18 *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565d1e *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565d24 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565d2a *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565d30 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x90(%rcx)                          #! EA = L0x7fffffffd350; PC = 0x555555565d36 *)
mov L0x7fffffffd350 r11;
(* mov    %rbp,0x98(%rcx)                          #! EA = L0x7fffffffd358; PC = 0x555555565d3d *)
mov L0x7fffffffd358 rbp;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd360; PC = 0x555555565d44 *)
mov L0x7fffffffd360 r10;
(* mov    %rbx,0xa8(%rcx)                          #! EA = L0x7fffffffd368; PC = 0x555555565d4b *)
mov L0x7fffffffd368 rbx;
(* mov    %r8,0xb0(%rcx)                           #! EA = L0x7fffffffd370; PC = 0x555555565d52 *)
mov L0x7fffffffd370 r8;
(* mov    %r9,0xb8(%rcx)                           #! EA = L0x7fffffffd378; PC = 0x555555565d59 *)
mov L0x7fffffffd378 r9;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffda50; Value = 0xe4b5561a1ae56b5a; PC = 0x555555565d60 *)
mov rdx L0x7fffffffda50;
(* mulx   0x30(%rsi),%r9,%r8                       #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555565d64 *)
mull r8 r9 L0x7fffffffdb10 rdx;
(* mulx   0x38(%rsi),%r11,%r10                     #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555565d6a *)
mull r10 r11 L0x7fffffffdb18 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd120; PC = 0x555555565d70 *)
mov L0x7fffffffd120 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565d74 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555565d77 *)
mull rbx rbp L0x7fffffffdb20 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565d7d *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565d83 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsi),%r11,%r9                      #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555565d89 *)
mull r9 r11 L0x7fffffffdb28 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565d8f *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555565d95 *)
mull rbp r14 L0x7fffffffdb30 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565d9b *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsi),%r15,%r11                     #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555565da1 *)
mull r11 r15 L0x7fffffffdb38 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565da7 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565dad *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffda58; Value = 0xcb2079f2ce9eac1d; PC = 0x555555565db3 *)
mov rdx L0x7fffffffda58;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555565db7 *)
mull r14 r15 L0x7fffffffdb10 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dbd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565dc0 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd128; PC = 0x555555565dc6 *)
mov L0x7fffffffd128 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565dcb *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555565dd1 *)
mull r14 r15 L0x7fffffffdb18 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565dd7 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ddd *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555565de3 *)
mull r8 r14 L0x7fffffffdb20 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565de9 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565def *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555565df5 *)
mull r9 r15 L0x7fffffffdb28 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565dfb *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555565e01 *)
mull rbp r14 L0x7fffffffdb30 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565e07 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555565e0d *)
mull rbp rdx L0x7fffffffdb38 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565e13 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565e19 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565e1f *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565e25 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565e2b *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffda60; Value = 0xb043e4f309687921; PC = 0x555555565e31 *)
mov rdx L0x7fffffffda60;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555565e35 *)
mull r14 r15 L0x7fffffffdb10 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565e3b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565e3e *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd130; PC = 0x555555565e44 *)
mov L0x7fffffffd130 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565e49 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555565e4f *)
mull r14 r15 L0x7fffffffdb18 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565e55 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565e5b *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555565e61 *)
mull r10 r14 L0x7fffffffdb20 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565e67 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565e6d *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsi),%r15,%r10                     #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555565e73 *)
mull r10 r15 L0x7fffffffdb28 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565e79 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555565e7f *)
mull r10 r14 L0x7fffffffdb30 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565e85 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555565e8b *)
mull r10 rdx L0x7fffffffdb38 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565e91 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565e97 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565e9d *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565ea3 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565ea9 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffda68; Value = 0x64fd0351dccf78a3; PC = 0x555555565eaf *)
mov rdx L0x7fffffffda68;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555565eb3 *)
mull r14 r15 L0x7fffffffdb10 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565eb9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565ebc *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x555555565ec2 *)
mov L0x7fffffffd138 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565ec7 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555565ecd *)
mull r14 r15 L0x7fffffffdb18 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565ed3 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565ed9 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555565edf *)
mull rbx r14 L0x7fffffffdb20 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565ee5 *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565eeb *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555565ef1 *)
mull rbx r15 L0x7fffffffdb28 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565ef7 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555565efd *)
mull rbx r14 L0x7fffffffdb30 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565f03 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555565f09 *)
mull rbx rdx L0x7fffffffdb38 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565f0f *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565f15 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565f1b *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565f21 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565f27 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffda70; Value = 0x032b11e8cb16542c; PC = 0x555555565f2d *)
mov rdx L0x7fffffffda70;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555565f31 *)
mull r14 r15 L0x7fffffffdb10 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565f37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565f3a *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd140; PC = 0x555555565f40 *)
mov L0x7fffffffd140 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565f45 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555565f4b *)
mull r14 r15 L0x7fffffffdb18 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565f51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565f57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555565f5d *)
mull r8 r14 L0x7fffffffdb20 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565f63 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565f69 *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsi),%r15,%r8                      #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555565f6f *)
mull r8 r15 L0x7fffffffdb28 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565f75 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555565f7b *)
mull r8 r14 L0x7fffffffdb30 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565f81 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555565f87 *)
mull r8 rdx L0x7fffffffdb38 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565f8d *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565f93 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565f99 *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565f9f *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565fa5 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffda78; Value = 0x00003c08418a7aad; PC = 0x555555565fab *)
mov rdx L0x7fffffffda78;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb10; Value = 0x7536372564f2a985; PC = 0x555555565faf *)
mull r14 r15 L0x7fffffffdb10 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565fb5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565fb8 *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd148; PC = 0x555555565fbe *)
mov L0x7fffffffd148 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565fc3 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb18; Value = 0x3f63407192653e17; PC = 0x555555565fc9 *)
mull r14 r15 L0x7fffffffdb18 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565fcf *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565fd5 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb20; Value = 0x5dc3c5586beebe97; PC = 0x555555565fdb *)
mull r9 r14 L0x7fffffffdb20 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565fe1 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565fe7 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdb28; Value = 0xa7cd2914e338df98; PC = 0x555555565fed *)
mull r9 r15 L0x7fffffffdb28 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565ff3 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb30; Value = 0x85437aab6a838d82; PC = 0x555555565ff9 *)
mull r9 r14 L0x7fffffffdb30 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565fff *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdb38; Value = 0x000018de9649580f; PC = 0x555555566005 *)
mull r9 rdx L0x7fffffffdb38 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x55555556600b *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566011 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555566017 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x55555556601d *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555566023 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd150; PC = 0x555555566029 *)
mov L0x7fffffffd150 r11;
(* mov    %rbp,0x38(%rsp)                          #! EA = L0x7fffffffd158; PC = 0x55555556602e *)
mov L0x7fffffffd158 rbp;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd160; PC = 0x555555566033 *)
mov L0x7fffffffd160 r10;
(* mov    %rbx,0x48(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x555555566038 *)
mov L0x7fffffffd168 rbx;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd170; PC = 0x55555556603d *)
mov L0x7fffffffd170 r8;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd178; PC = 0x555555566042 *)
mov L0x7fffffffd178 r9;
(* mov    0x60(%rsp),%r8                           #! EA = L0x7fffffffd180; Value = 0x0000000000000000; PC = 0x555555566047 *)
mov r8 L0x7fffffffd180;
(* mov    0x68(%rsp),%r9                           #! EA = L0x7fffffffd188; Value = 0x0000000000000000; PC = 0x55555556604c *)
mov r9 L0x7fffffffd188;
(* mov    0x70(%rsp),%r10                          #! EA = L0x7fffffffd190; Value = 0x0000000000000000; PC = 0x555555566051 *)
mov r10 L0x7fffffffd190;
(* mov    0x78(%rsp),%r11                          #! EA = L0x7fffffffd198; Value = 0x0000000000000000; PC = 0x555555566056 *)
mov r11 L0x7fffffffd198;
(* mov    0x90(%rcx),%rax                          #! EA = L0x7fffffffd350; Value = 0xfba737ad29084ed4; PC = 0x55555556605b *)
mov rax L0x7fffffffd350;
(* add    %rax,%r8                                 #! PC = 0x555555566062 *)
adds carry r8 r8 rax;
(* mov    0x98(%rcx),%rax                          #! EA = L0x7fffffffd358; Value = 0xeb95e6caa1fbddbd; PC = 0x555555566065 *)
mov rax L0x7fffffffd358;
(* adc    %rax,%r9                                 #! PC = 0x55555556606c *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    0xa0(%rcx),%rax                          #! EA = L0x7fffffffd360; Value = 0x312fff2cf32b8b06; PC = 0x55555556606f *)
mov rax L0x7fffffffd360;
(* adc    %rax,%r10                                #! PC = 0x555555566076 *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    0xa8(%rcx),%rax                          #! EA = L0x7fffffffd368; Value = 0x98fd31565b00d839; PC = 0x555555566079 *)
mov rax L0x7fffffffd368;
(* adc    %rax,%r11                                #! PC = 0x555555566080 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    0xb0(%rcx),%rax                          #! EA = L0x7fffffffd370; Value = 0x6b4f2793f876148d; PC = 0x555555566083 *)
mov rax L0x7fffffffd370;
(* adc    %rax,%r12                                #! PC = 0x55555556608a *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    0xb8(%rcx),%rax                          #! EA = L0x7fffffffd378; Value = 0x30085a300728f0dc; PC = 0x55555556608d *)
mov rax L0x7fffffffd378;
(* adc    %rax,%r13                                #! PC = 0x555555566094 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    0x60(%rcx),%rdi                          #! EA = L0x7fffffffd320; Value = 0xb60ee1fc40e37bee; PC = 0x555555566097 *)
mov rdi L0x7fffffffd320;
(* sub    (%rcx),%rdi                              #! EA = L0x7fffffffd2c0; Value = 0xe728d977bef3539b; PC = 0x55555556609b *)
subb carry rdi rdi L0x7fffffffd2c0;
(* mov    0x68(%rcx),%rdx                          #! EA = L0x7fffffffd328; Value = 0xae698ed831749c5e; PC = 0x55555556609e *)
mov rdx L0x7fffffffd328;
(* sbb    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd2c8; Value = 0xb10b07cc8764a86f; PC = 0x5555555660a2 *)
sbbs carry rdx rdx L0x7fffffffd2c8 carry;
(* mov    0x70(%rcx),%rbx                          #! EA = L0x7fffffffd330; Value = 0x45470b636b66fee4; PC = 0x5555555660a6 *)
mov rbx L0x7fffffffd330;
(* sbb    0x10(%rcx),%rbx                          #! EA = L0x7fffffffd2d0; Value = 0x7c6cd474d73e8b4c; PC = 0x5555555660aa *)
sbbs carry rbx rbx L0x7fffffffd2d0 carry;
(* mov    0x78(%rcx),%rbp                          #! EA = L0x7fffffffd338; Value = 0x851e862f44c26015; PC = 0x5555555660ae *)
mov rbp L0x7fffffffd338;
(* sbb    0x18(%rcx),%rbp                          #! EA = L0x7fffffffd2d8; Value = 0x0cdfb1b2d22b6ada; PC = 0x5555555660b2 *)
sbbs carry rbp rbp L0x7fffffffd2d8 carry;
(* mov    0x80(%rcx),%r14                          #! EA = L0x7fffffffd340; Value = 0x48041452d4249e6f; PC = 0x5555555660b6 *)
mov r14 L0x7fffffffd340;
(* sbb    0x20(%rcx),%r14                          #! EA = L0x7fffffffd2e0; Value = 0x9b8a7c9c65ea9ce0; PC = 0x5555555660bd *)
sbbs carry r14 r14 L0x7fffffffd2e0 carry;
(* mov    0x88(%rcx),%r15                          #! EA = L0x7fffffffd348; Value = 0x332e84b259750b1b; PC = 0x5555555660c1 *)
mov r15 L0x7fffffffd348;
(* sbb    0x28(%rcx),%r15                          #! EA = L0x7fffffffd2e8; Value = 0x48a1ce888f3160e7; PC = 0x5555555660c8 *)
sbbs carry r15 r15 L0x7fffffffd2e8 carry;
(* sbb    0x30(%rcx),%r8                           #! EA = L0x7fffffffd2f0; Value = 0xc928a38c59be8167; PC = 0x5555555660cc *)
sbbs carry r8 r8 L0x7fffffffd2f0 carry;
(* sbb    0x38(%rcx),%r9                           #! EA = L0x7fffffffd2f8; Value = 0xbc268cca0bcab250; PC = 0x5555555660d0 *)
sbbs carry r9 r9 L0x7fffffffd2f8 carry;
(* sbb    0x40(%rcx),%r10                          #! EA = L0x7fffffffd300; Value = 0xed9671e068753814; PC = 0x5555555660d4 *)
sbbs carry r10 r10 L0x7fffffffd300 carry;
(* sbb    0x48(%rcx),%r11                          #! EA = L0x7fffffffd308; Value = 0xb2cfd7317216b952; PC = 0x5555555660d8 *)
sbbs carry r11 r11 L0x7fffffffd308 carry;
(* sbb    0x50(%rcx),%r12                          #! EA = L0x7fffffffd310; Value = 0x8cfad742bf79f279; PC = 0x5555555660dc *)
sbbs carry r12 r12 L0x7fffffffd310 carry;
(* sbb    0x58(%rcx),%r13                          #! EA = L0x7fffffffd318; Value = 0x3008373d01b09edc; PC = 0x5555555660e0 *)
sbbs carry r13 r13 L0x7fffffffd318 carry;
(* sub    (%rsp),%rdi                              #! EA = L0x7fffffffd120; Value = 0x1370dc2210232fc2; PC = 0x5555555660e4 *)
subb carry rdi rdi L0x7fffffffd120;
(* sbb    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd128; Value = 0x3b0dc3283e4835a9; PC = 0x5555555660e8 *)
sbbs carry rdx rdx L0x7fffffffd128 carry;
(* sbb    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd130; Value = 0xc2530e6c1b32b3cd; PC = 0x5555555660ed *)
sbbs carry rbx rbx L0x7fffffffd130 carry;
(* sbb    0x18(%rsp),%rbp                          #! EA = L0x7fffffffd138; Value = 0x218d54c27b70ea84; PC = 0x5555555660f2 *)
sbbs carry rbp rbp L0x7fffffffd138 carry;
(* sbb    0x20(%rsp),%r14                          #! EA = L0x7fffffffd140; Value = 0x8503e2544bf4b578; PC = 0x5555555660f7 *)
sbbs carry r14 r14 L0x7fffffffd140 carry;
(* sbb    0x28(%rsp),%r15                          #! EA = L0x7fffffffd148; Value = 0xa02f8663ae3f5bb4; PC = 0x5555555660fc *)
sbbs carry r15 r15 L0x7fffffffd148 carry;
(* sbb    0x30(%rsp),%r8                           #! EA = L0x7fffffffd150; Value = 0xc5a46c0536dd1681; PC = 0x555555566101 *)
sbbs carry r8 r8 L0x7fffffffd150 carry;
(* sbb    0x38(%rsp),%r9                           #! EA = L0x7fffffffd158; Value = 0xe61cc3a40746f86f; PC = 0x555555566106 *)
sbbs carry r9 r9 L0x7fffffffd158 carry;
(* sbb    0x40(%rsp),%r10                          #! EA = L0x7fffffffd160; Value = 0x126a8c592722c827; PC = 0x55555556610b *)
sbbs carry r10 r10 L0x7fffffffd160 carry;
(* sbb    0x48(%rsp),%r11                          #! EA = L0x7fffffffd168; Value = 0xbdbfe30e9f45885c; PC = 0x555555566110 *)
sbbs carry r11 r11 L0x7fffffffd168 carry;
(* sbb    0x50(%rsp),%r12                          #! EA = L0x7fffffffd170; Value = 0xdafee8f6b27b629e; PC = 0x555555566115 *)
sbbs carry r12 r12 L0x7fffffffd170 carry;
(* sbb    0x58(%rsp),%r13                          #! EA = L0x7fffffffd178; Value = 0x0000000005d4f88b; PC = 0x55555556611a *)
sbbs carry r13 r13 L0x7fffffffd178 carry;
assert and [
  eqmod
    (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
    (
      (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05 ] * limbs 64 [ b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
      +
      (limbs 64 [ a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ] * limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05 ])
    )
    (2**768)
] && and [
  (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ b0_06, b0_07, b0_08, b0_09, b0_10, b0_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  +
  (limbs 64 [ a0_06, a0_07, a0_08, a0_09, a0_10, a0_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  <u
  (2**768)@832
];
assume and [
  (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
  =
  (
    (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05 ] * limbs 64 [ b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
    +
    (limbs 64 [ a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ] * limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05 ])
  )
] && true;
(* mov    0x30(%rcx),%rax                          #! EA = L0x7fffffffd2f0; Value = 0xc928a38c59be8167; PC = 0x55555556611f *)
mov rax L0x7fffffffd2f0;
(* add    %rdi,%rax                                #! PC = 0x555555566123 *)
adds carry rax rax rdi;
(* mov    %rax,0x30(%rcx)                          #! EA = L0x7fffffffd2f0; PC = 0x555555566126 *)
mov L0x7fffffffd2f0 rax;
(* mov    0x38(%rcx),%rax                          #! EA = L0x7fffffffd2f8; Value = 0xbc268cca0bcab250; PC = 0x55555556612a *)
mov rax L0x7fffffffd2f8;
(* adc    %rdx,%rax                                #! PC = 0x55555556612e *)
adcs carry rax rax rdx@uint64 carry;
(* mov    %rax,0x38(%rcx)                          #! EA = L0x7fffffffd2f8; PC = 0x555555566131 *)
mov L0x7fffffffd2f8 rax;
(* mov    0x40(%rcx),%rax                          #! EA = L0x7fffffffd300; Value = 0xed9671e068753814; PC = 0x555555566135 *)
mov rax L0x7fffffffd300;
(* adc    %rbx,%rax                                #! PC = 0x555555566139 *)
adcs carry rax rax rbx@uint64 carry;
(* mov    %rax,0x40(%rcx)                          #! EA = L0x7fffffffd300; PC = 0x55555556613c *)
mov L0x7fffffffd300 rax;
(* mov    0x48(%rcx),%rax                          #! EA = L0x7fffffffd308; Value = 0xb2cfd7317216b952; PC = 0x555555566140 *)
mov rax L0x7fffffffd308;
(* adc    %rbp,%rax                                #! PC = 0x555555566144 *)
adcs carry rax rax rbp@uint64 carry;
(* mov    %rax,0x48(%rcx)                          #! EA = L0x7fffffffd308; PC = 0x555555566147 *)
mov L0x7fffffffd308 rax;
(* mov    0x50(%rcx),%rax                          #! EA = L0x7fffffffd310; Value = 0x8cfad742bf79f279; PC = 0x55555556614b *)
mov rax L0x7fffffffd310;
(* adc    %r14,%rax                                #! PC = 0x55555556614f *)
adcs carry rax rax r14@uint64 carry;
(* mov    %rax,0x50(%rcx)                          #! EA = L0x7fffffffd310; PC = 0x555555566152 *)
mov L0x7fffffffd310 rax;
(* mov    0x58(%rcx),%rax                          #! EA = L0x7fffffffd318; Value = 0x3008373d01b09edc; PC = 0x555555566156 *)
mov rax L0x7fffffffd318;
(* adc    %r15,%rax                                #! PC = 0x55555556615a *)
adcs carry rax rax r15@uint64 carry;
(* mov    %rax,0x58(%rcx)                          #! EA = L0x7fffffffd318; PC = 0x55555556615d *)
mov L0x7fffffffd318 rax;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd120; Value = 0x1370dc2210232fc2; PC = 0x555555566161 *)
mov rax L0x7fffffffd120;
(* adc    %rax,%r8                                 #! PC = 0x555555566165 *)
adcs carry r8 r8 rax@uint64 carry;
(* mov    %r8,0x60(%rcx)                           #! EA = L0x7fffffffd320; PC = 0x555555566168 *)
mov L0x7fffffffd320 r8;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd128; Value = 0x3b0dc3283e4835a9; PC = 0x55555556616c *)
mov rax L0x7fffffffd128;
(* adc    %rax,%r9                                 #! PC = 0x555555566171 *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    %r9,0x68(%rcx)                           #! EA = L0x7fffffffd328; PC = 0x555555566174 *)
mov L0x7fffffffd328 r9;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd130; Value = 0xc2530e6c1b32b3cd; PC = 0x555555566178 *)
mov rax L0x7fffffffd130;
(* adc    %rax,%r10                                #! PC = 0x55555556617d *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd330; PC = 0x555555566180 *)
mov L0x7fffffffd330 r10;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd138; Value = 0x218d54c27b70ea84; PC = 0x555555566184 *)
mov rax L0x7fffffffd138;
(* adc    %rax,%r11                                #! PC = 0x555555566189 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    %r11,0x78(%rcx)                          #! EA = L0x7fffffffd338; PC = 0x55555556618c *)
mov L0x7fffffffd338 r11;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd140; Value = 0x8503e2544bf4b578; PC = 0x555555566190 *)
mov rax L0x7fffffffd140;
(* adc    %rax,%r12                                #! PC = 0x555555566195 *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    %r12,0x80(%rcx)                          #! EA = L0x7fffffffd340; PC = 0x555555566198 *)
mov L0x7fffffffd340 r12;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd148; Value = 0xa02f8663ae3f5bb4; PC = 0x55555556619f *)
mov rax L0x7fffffffd148;
(* adc    %rax,%r13                                #! PC = 0x5555555661a4 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    %r13,0x88(%rcx)                          #! EA = L0x7fffffffd348; PC = 0x5555555661a7 *)
mov L0x7fffffffd348 r13;
(* mov    0x30(%rsp),%r8                           #! EA = L0x7fffffffd150; Value = 0xc5a46c0536dd1681; PC = 0x5555555661ae *)
mov r8 L0x7fffffffd150;
(* mov    0x38(%rsp),%r9                           #! EA = L0x7fffffffd158; Value = 0xe61cc3a40746f86f; PC = 0x5555555661b3 *)
mov r9 L0x7fffffffd158;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffd160; Value = 0x126a8c592722c827; PC = 0x5555555661b8 *)
mov r10 L0x7fffffffd160;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffd168; Value = 0xbdbfe30e9f45885c; PC = 0x5555555661bd *)
mov r11 L0x7fffffffd168;
(* mov    0x50(%rsp),%r12                          #! EA = L0x7fffffffd170; Value = 0xdafee8f6b27b629e; PC = 0x5555555661c2 *)
mov r12 L0x7fffffffd170;
(* mov    0x58(%rsp),%r13                          #! EA = L0x7fffffffd178; Value = 0x0000000005d4f88b; PC = 0x5555555661c7 *)
mov r13 L0x7fffffffd178;
(* adc    $0x0,%r8                                 #! PC = 0x5555555661cc *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x5555555661d0 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555661d4 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x5555555661d8 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x5555555661dc *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x5555555661e0 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    $0x98,%rsp                               #! PC = 0x5555555661e4 *)
adds carry rsp rsp 0x98@uint64;
(* mov    %r8,0x90(%rcx)                           #! EA = L0x7fffffffd350; PC = 0x5555555661eb *)
mov L0x7fffffffd350 r8;
(* mov    %r9,0x98(%rcx)                           #! EA = L0x7fffffffd358; PC = 0x5555555661f2 *)
mov L0x7fffffffd358 r9;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd360; PC = 0x5555555661f9 *)
mov L0x7fffffffd360 r10;
(* mov    %r11,0xa8(%rcx)                          #! EA = L0x7fffffffd368; PC = 0x555555566200 *)
mov L0x7fffffffd368 r11;
(* mov    %r12,0xb0(%rcx)                          #! EA = L0x7fffffffd370; PC = 0x555555566207 *)
mov L0x7fffffffd370 r12;
(* mov    %r13,0xb8(%rcx)                          #! EA = L0x7fffffffd378; PC = 0x55555556620e *)
mov L0x7fffffffd378 r13;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x55555556621f *)
#retq                                           #! 0x55555556621f = 0x55555556621f;

ghost tt1_0_00@uint64, tt1_0_01@uint64, tt1_0_02@uint64, tt1_0_03@uint64, tt1_0_04@uint64, tt1_0_05@uint64,
      tt1_0_06@uint64, tt1_0_07@uint64, tt1_0_08@uint64, tt1_0_09@uint64, tt1_0_10@uint64, tt1_0_11@uint64,
      tt1_0_12@uint64, tt1_0_13@uint64, tt1_0_14@uint64, tt1_0_15@uint64, tt1_0_16@uint64, tt1_0_17@uint64,
      tt1_0_18@uint64, tt1_0_19@uint64, tt1_0_20@uint64, tt1_0_21@uint64, tt1_0_22@uint64, tt1_0_23@uint64 :
  and [
    tt1_0_00 = L0x7fffffffd2c0, tt1_0_01 = L0x7fffffffd2c8, tt1_0_02 = L0x7fffffffd2d0,
    tt1_0_03 = L0x7fffffffd2d8, tt1_0_04 = L0x7fffffffd2e0, tt1_0_05 = L0x7fffffffd2e8,
    tt1_0_06 = L0x7fffffffd2f0, tt1_0_07 = L0x7fffffffd2f8, tt1_0_08 = L0x7fffffffd300,
    tt1_0_09 = L0x7fffffffd308, tt1_0_10 = L0x7fffffffd310, tt1_0_11 = L0x7fffffffd318,
    tt1_0_12 = L0x7fffffffd320, tt1_0_13 = L0x7fffffffd328, tt1_0_14 = L0x7fffffffd330,
    tt1_0_15 = L0x7fffffffd338, tt1_0_16 = L0x7fffffffd340, tt1_0_17 = L0x7fffffffd348,
    tt1_0_18 = L0x7fffffffd350, tt1_0_19 = L0x7fffffffd358, tt1_0_20 = L0x7fffffffd360,
    tt1_0_21 = L0x7fffffffd368, tt1_0_22 = L0x7fffffffd370, tt1_0_23 = L0x7fffffffd378
  ] &&
  and [
    tt1_0_00 = L0x7fffffffd2c0, tt1_0_01 = L0x7fffffffd2c8, tt1_0_02 = L0x7fffffffd2d0,
    tt1_0_03 = L0x7fffffffd2d8, tt1_0_04 = L0x7fffffffd2e0, tt1_0_05 = L0x7fffffffd2e8,
    tt1_0_06 = L0x7fffffffd2f0, tt1_0_07 = L0x7fffffffd2f8, tt1_0_08 = L0x7fffffffd300,
    tt1_0_09 = L0x7fffffffd308, tt1_0_10 = L0x7fffffffd310, tt1_0_11 = L0x7fffffffd318,
    tt1_0_12 = L0x7fffffffd320, tt1_0_13 = L0x7fffffffd328, tt1_0_14 = L0x7fffffffd330,
    tt1_0_15 = L0x7fffffffd338, tt1_0_16 = L0x7fffffffd340, tt1_0_17 = L0x7fffffffd348,
    tt1_0_18 = L0x7fffffffd350, tt1_0_19 = L0x7fffffffd358, tt1_0_20 = L0x7fffffffd360,
    tt1_0_21 = L0x7fffffffd368, tt1_0_22 = L0x7fffffffd370, tt1_0_23 = L0x7fffffffd378
  ];

# Ecut 2
ecut and [
       (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                   tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23 ])
       =
       (
         (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
         *
         (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
       )
     ];
assume true &&
       (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                   tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23 ])
       =
       (
         uext (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]) 768
         *
         uext (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]) 768
       );
# Rcut 2
rcut (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                 tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23 ])
     =
     (
       uext (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]) 768
       *
       uext (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]) 768
     ) prove with [precondition];

// mp_mul(a[1], b[1], tt2, NWORDS_FIELD);           // tt2 = a1*b1
(* mov    (%rsp),%r9                               #! EA = L0x7fffffffd1f0; Value = 0x00007fffffffdb40; PC = 0x555555558e80 *)
mov r9 L0x7fffffffd1f0;
(* mov    0x8(%rsp),%r8                            #! EA = L0x7fffffffd1f8; Value = 0x00007fffffffda80; PC = 0x555555558e84 *)
mov r8 L0x7fffffffd1f8;
(* mov    %r9,%rsi                                 #! PC = 0x555555558e91 *)
mov rsi r9;
(* mov    %r8,%rdi                                 #! PC = 0x555555558e94 *)
mov rdi r8;
(* mov    $0xc,%ecx                                #! PC = 0x555555558e9f *)
assert true && 0xc@64 <=u 0x0000000100000000@64;
mov rcx 0xc@uint64;
(* mov    %r13,%rdx                                #! PC = 0x555555558ea4 *)
mov rdx r13;
(* #callq  0x5555555650c0 <mp_mul>                 #! PC = 0x555555558ea7 *)
#callq  0x5555555650c0 <mp_mul>                 #! 0x555555558ea7 = 0x555555558ea7;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #jmpq   0x555555565653 <mul751_asm>             #! PC = 0x5555555650c4 *)
#jmpq   0x555555565653 <mul751_asm>             #! 0x5555555650c4 = 0x5555555650c4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556565b *)
mov rcx rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556565e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffda80; Value = 0x2878d7990886cec2; PC = 0x555555565661 *)
mov r8 L0x7fffffffda80;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffda88; Value = 0xbe88394a2b38dd77; PC = 0x555555565664 *)
mov r9 L0x7fffffffda88;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffda90; Value = 0x380b123c24d7560d; PC = 0x555555565668 *)
mov r10 L0x7fffffffda90;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffda98; Value = 0x3c562aff620aef7b; PC = 0x55555556566c *)
mov r11 L0x7fffffffda98;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffdaa0; Value = 0xec8523c5895288f7; PC = 0x555555565670 *)
mov r12 L0x7fffffffdaa0;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffdaa8; Value = 0xc0f7deee809b5381; PC = 0x555555565674 *)
mov r13 L0x7fffffffdaa8;
(* sub    $0x98,%rsp                               #! PC = 0x55555556567a *)
subb carry rsp rsp 0x98@uint64;
(* add    0x30(%rdi),%r8                           #! EA = L0x7fffffffdab0; Value = 0x37a097402cac705b; PC = 0x555555565681 *)
adds carry r8 r8 L0x7fffffffdab0;
(* adc    0x38(%rdi),%r9                           #! EA = L0x7fffffffdab8; Value = 0xc636c4f7151ab851; PC = 0x555555565685 *)
adcs carry r9 r9 L0x7fffffffdab8 carry;
(* adc    0x40(%rdi),%r10                          #! EA = L0x7fffffffdac0; Value = 0x6381753fed20d372; PC = 0x555555565689 *)
adcs carry r10 r10 L0x7fffffffdac0 carry;
(* adc    0x48(%rdi),%r11                          #! EA = L0x7fffffffdac8; Value = 0x266c35fa2bcc79c3; PC = 0x55555556568d *)
adcs carry r11 r11 L0x7fffffffdac8 carry;
(* adc    0x50(%rdi),%r12                          #! EA = L0x7fffffffdad0; Value = 0x03ab967225bcf121; PC = 0x555555565691 *)
adcs carry r12 r12 L0x7fffffffdad0 carry;
(* adc    0x58(%rdi),%r13                          #! EA = L0x7fffffffdad8; Value = 0x00005f5bfa4eb6bb; PC = 0x555555565695 *)
adcs carry r13 r13 L0x7fffffffdad8 carry;
ghost carry_a1h_add_a1l@uint1 : carry_a1h_add_a1l = carry && carry_a1h_add_a1l = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555565699 *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_a1h_add_a1l = carry;
assume carry_a1h_add_a1l = carry && true;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd120; PC = 0x55555556569d *)
mov L0x7fffffffd120 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd128; PC = 0x5555555656a1 *)
mov L0x7fffffffd128 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd130; PC = 0x5555555656a6 *)
mov L0x7fffffffd130 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x5555555656ab *)
mov L0x7fffffffd138 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd140; PC = 0x5555555656b0 *)
mov L0x7fffffffd140 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd148; PC = 0x5555555656b5 *)
mov L0x7fffffffd148 r13;
ghost a1h_add_a1l_0@uint64, a1h_add_a1l_1@uint64, a1h_add_a1l_2@uint64, a1h_add_a1l_3@uint64, a1h_add_a1l_4@uint64, a1h_add_a1l_5@uint64 :
  and [
    a1h_add_a1l_0 = L0x7fffffffd120, a1h_add_a1l_1 = L0x7fffffffd128, a1h_add_a1l_2 = L0x7fffffffd130,
    a1h_add_a1l_3 = L0x7fffffffd138, a1h_add_a1l_4 = L0x7fffffffd140, a1h_add_a1l_5 = L0x7fffffffd148
  ]
  &&
  and [
    a1h_add_a1l_0 = L0x7fffffffd120, a1h_add_a1l_1 = L0x7fffffffd128, a1h_add_a1l_2 = L0x7fffffffd130,
    a1h_add_a1l_3 = L0x7fffffffd138, a1h_add_a1l_4 = L0x7fffffffd140, a1h_add_a1l_5 = L0x7fffffffd148
  ];
(* xor    %rdx,%rdx                                #! PC = 0x5555555656ba *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x5555555656bd *)
mov r8 L0x7fffffffdb40;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x5555555656c0 *)
mov r9 L0x7fffffffdb48;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x5555555656c4 *)
mov rbx L0x7fffffffdb50;
(* mov    0x18(%rsi),%rbp                          #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x5555555656c8 *)
mov rbp L0x7fffffffdb58;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x5555555656cc *)
mov r14 L0x7fffffffdb60;
(* mov    0x28(%rsi),%r15                          #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x5555555656d0 *)
mov r15 L0x7fffffffdb68;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x5555555656d4 *)
adds carry r8 r8 L0x7fffffffdb70;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x5555555656d8 *)
adcs carry r9 r9 L0x7fffffffdb78 carry;
(* adc    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x5555555656dc *)
adcs carry rbx rbx L0x7fffffffdb80 carry;
(* adc    0x48(%rsi),%rbp                          #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x5555555656e0 *)
adcs carry rbp rbp L0x7fffffffdb88 carry;
(* adc    0x50(%rsi),%r14                          #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x5555555656e4 *)
adcs carry r14 r14 L0x7fffffffdb90 carry;
(* adc    0x58(%rsi),%r15                          #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x5555555656e8 *)
adcs carry r15 r15 L0x7fffffffdb98 carry;
ghost carry_b1h_add_b1l@uint1 : carry_b1h_add_b1l = carry && carry_b1h_add_b1l = carry;
(* sbb    $0x0,%rdx                                #! PC = 0x5555555656ec *)
sbbs carry rdx rdx 0x0@uint64 carry;
assert true && carry_b1h_add_b1l = carry;
assume carry_b1h_add_b1l = carry && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd150; PC = 0x5555555656f0 *)
mov L0x7fffffffd150 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd158; PC = 0x5555555656f5 *)
mov L0x7fffffffd158 r9;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd160; PC = 0x5555555656fa *)
mov L0x7fffffffd160 rbx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x5555555656ff *)
mov L0x7fffffffd168 rbp;
(* mov    %r14,0x50(%rsp)                          #! EA = L0x7fffffffd170; PC = 0x555555565704 *)
mov L0x7fffffffd170 r14;
(* mov    %r15,0x58(%rsp)                          #! EA = L0x7fffffffd178; PC = 0x555555565709 *)
mov L0x7fffffffd178 r15;
ghost b1h_add_b1l_0@uint64, b1h_add_b1l_1@uint64, b1h_add_b1l_2@uint64, b1h_add_b1l_3@uint64, b1h_add_b1l_4@uint64, b1h_add_b1l_5@uint64 :
  and [
    b1h_add_b1l_0 = L0x7fffffffd150, b1h_add_b1l_1 = L0x7fffffffd158, b1h_add_b1l_2 = L0x7fffffffd160,
    b1h_add_b1l_3 = L0x7fffffffd168, b1h_add_b1l_4 = L0x7fffffffd170, b1h_add_b1l_5 = L0x7fffffffd178
  ]
  &&
  and [
    b1h_add_b1l_0 = L0x7fffffffd150, b1h_add_b1l_1 = L0x7fffffffd158, b1h_add_b1l_2 = L0x7fffffffd160,
    b1h_add_b1l_3 = L0x7fffffffd168, b1h_add_b1l_4 = L0x7fffffffd170, b1h_add_b1l_5 = L0x7fffffffd178
  ];
(* and    %rax,%r8                                 #! PC = 0x55555556570e *)
and uint64 r8 rax r8;
(* and    %rax,%r9                                 #! PC = 0x555555565711 *)
and uint64 r9 rax r9;
(* and    %rax,%rbx                                #! PC = 0x555555565714 *)
and uint64 rbx rax rbx;
(* and    %rax,%rbp                                #! PC = 0x555555565717 *)
and uint64 rbp rax rbp;
(* and    %rax,%r14                                #! PC = 0x55555556571a *)
and uint64 r14 rax r14;
(* and    %rax,%r15                                #! PC = 0x55555556571d *)
and uint64 r15 rax r15;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x555555565720 *)
mov L0x7fffffffd380 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd388; PC = 0x555555565723 *)
mov L0x7fffffffd388 r9;
assert true && and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  uext carry_a1h_add_a1l 383 * (limbs 64 [ b1h_add_b1l_0, b1h_add_b1l_1, b1h_add_b1l_2, b1h_add_b1l_3, b1h_add_b1l_4, b1h_add_b1l_5 ])
];
assume and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  carry_a1h_add_a1l * (limbs 64 [ b1h_add_b1l_0, b1h_add_b1l_1, b1h_add_b1l_2, b1h_add_b1l_3, b1h_add_b1l_4, b1h_add_b1l_5 ])
] && true;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd120; Value = 0x60196ed935333f1d; PC = 0x555555565727 *)
mov r8 L0x7fffffffd120;
(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd128; Value = 0x84befe41405395c8; PC = 0x55555556572b *)
mov r9 L0x7fffffffd128;
(* and    %rdx,%r8                                 #! PC = 0x555555565730 *)
and uint64 r8 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x555555565733 *)
and uint64 r9 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x555555565736 *)
and uint64 r10 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x555555565739 *)
and uint64 r11 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x55555556573c *)
and uint64 r12 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x55555556573f *)
and uint64 r13 rdx r13;
assert true && and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  uext carry_b1h_add_b1l 383 * (limbs 64 [ a1h_add_a1l_0, a1h_add_a1l_1, a1h_add_a1l_2, a1h_add_a1l_3, a1h_add_a1l_4, a1h_add_a1l_5 ])
];
assume and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  carry_b1h_add_b1l * (limbs 64 [ a1h_add_a1l_0, a1h_add_a1l_1, a1h_add_a1l_2, a1h_add_a1l_3, a1h_add_a1l_4, a1h_add_a1l_5 ])
] && true;
(* mov    (%rcx),%rax                              #! EA = L0x7fffffffd380; Value = 0x0000000000000000; PC = 0x555555565742 *)
mov rax L0x7fffffffd380;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd388; Value = 0x0000000000000000; PC = 0x555555565745 *)
mov rdx L0x7fffffffd388;
(* add    %rax,%r8                                 #! PC = 0x555555565749 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x55555556574c *)
adcs carry r9 r9 rdx@uint64 carry;
(* adc    %rbx,%r10                                #! PC = 0x55555556574f *)
adcs carry r10 r10 rbx@uint64 carry;
(* adc    %rbp,%r11                                #! PC = 0x555555565752 *)
adcs carry r11 r11 rbp@uint64 carry;
(* adc    %r14,%r12                                #! PC = 0x555555565755 *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x555555565758 *)
adcs carry r13 r13 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd180; PC = 0x55555556575b *)
mov L0x7fffffffd180 r8;
(* mov    %r9,0x68(%rsp)                           #! EA = L0x7fffffffd188; PC = 0x555555565760 *)
mov L0x7fffffffd188 r9;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd190; PC = 0x555555565765 *)
mov L0x7fffffffd190 r10;
(* mov    %r11,0x78(%rsp)                          #! EA = L0x7fffffffd198; PC = 0x55555556576a *)
mov L0x7fffffffd198 r11;
ghost m_a1h_a1l_b1h_b1l_0@uint64, m_a1h_a1l_b1h_b1l_1@uint64, m_a1h_a1l_b1h_b1l_2@uint64, m_a1h_a1l_b1h_b1l_3@uint64, m_a1h_a1l_b1h_b1l_4@uint64, m_a1h_a1l_b1h_b1l_5@uint64 :
  and [
    m_a1h_a1l_b1h_b1l_0 = r8, m_a1h_a1l_b1h_b1l_1 = r9, m_a1h_a1l_b1h_b1l_2 = r10,
    m_a1h_a1l_b1h_b1l_3 = r11, m_a1h_a1l_b1h_b1l_4 = r12, m_a1h_a1l_b1h_b1l_5 = r13
  ]
  &&
  and [
    m_a1h_a1l_b1h_b1l_0 = r8, m_a1h_a1l_b1h_b1l_1 = r9, m_a1h_a1l_b1h_b1l_2 = r10,
    m_a1h_a1l_b1h_b1l_3 = r11, m_a1h_a1l_b1h_b1l_4 = r12, m_a1h_a1l_b1h_b1l_5 = r13
  ];
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffda80; Value = 0x2878d7990886cec2; PC = 0x55555556576f *)
mov rdx L0x7fffffffda80;
(* mulx   (%rsi),%r9,%r8                           #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x555555565772 *)
mull r8 r9 L0x7fffffffdb40 rdx;
(* mulx   0x8(%rsi),%r11,%r10                      #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x555555565777 *)
mull r10 r11 L0x7fffffffdb48 rdx;
(* mov    %r9,(%rcx)                               #! EA = L0x7fffffffd380; PC = 0x55555556577d *)
mov L0x7fffffffd380 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565780 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x10(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x555555565783 *)
mull rbx rbp L0x7fffffffdb50 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565789 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x55555556578f *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x18(%rsi),%r11,%r9                      #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x555555565795 *)
mull r9 r11 L0x7fffffffdb58 rdx;
(* adox   %r11,%rbx                                #! PC = 0x55555556579b *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x5555555657a1 *)
mull rbp r14 L0x7fffffffdb60 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555657a7 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x28(%rsi),%r15,%r11                     #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x5555555657ad *)
mull r11 r15 L0x7fffffffdb68 rdx;
(* adox   %r15,%rbp                                #! PC = 0x5555555657b3 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555657b9 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffda88; Value = 0xbe88394a2b38dd77; PC = 0x5555555657bf *)
mov rdx L0x7fffffffda88;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x5555555657c3 *)
mull r14 r15 L0x7fffffffdb40 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555657c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x5555555657cb *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd388; PC = 0x5555555657d1 *)
mov L0x7fffffffd388 r8;
(* adcx   %r14,%r10                                #! PC = 0x5555555657d5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x5555555657db *)
mull r14 r15 L0x7fffffffdb48 rdx;
(* adox   %r15,%r10                                #! PC = 0x5555555657e1 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x5555555657e7 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x5555555657ed *)
mull r8 r14 L0x7fffffffdb50 rdx;
(* adox   %r14,%rbx                                #! PC = 0x5555555657f3 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555657f9 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x5555555657ff *)
mull r9 r15 L0x7fffffffdb58 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565805 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x55555556580b *)
mull rbp r14 L0x7fffffffdb60 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565811 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x28(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x555555565817 *)
mull rbp rdx L0x7fffffffdb68 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556581d *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565823 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565829 *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x55555556582f *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565835 *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffda90; Value = 0x380b123c24d7560d; PC = 0x55555556583b *)
mov rdx L0x7fffffffda90;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x55555556583f *)
mull r14 r15 L0x7fffffffdb40 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565844 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565847 *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd390; PC = 0x55555556584d *)
mov L0x7fffffffd390 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565851 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x555555565857 *)
mull r14 r15 L0x7fffffffdb48 rdx;
(* adox   %r15,%rbx                                #! PC = 0x55555556585d *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565863 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x10(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x555555565869 *)
mull r10 r14 L0x7fffffffdb50 rdx;
(* adox   %r14,%r8                                 #! PC = 0x55555556586f *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565875 *)
adcs carry r9 r9 r10 carry;
(* mulx   0x18(%rsi),%r15,%r10                     #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x55555556587b *)
mull r10 r15 L0x7fffffffdb58 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565881 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x20(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x555555565887 *)
mull r10 r14 L0x7fffffffdb60 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x55555556588d *)
adcs carry rbp rbp r10 carry;
(* mulx   0x28(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x555555565893 *)
mull r10 rdx L0x7fffffffdb68 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565899 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x55555556589f *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x5555555658a5 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x5555555658ab *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x5555555658b1 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffda98; Value = 0x3c562aff620aef7b; PC = 0x5555555658b7 *)
mov rdx L0x7fffffffda98;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x5555555658bb *)
mull r14 r15 L0x7fffffffdb40 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555658c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x5555555658c3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rcx)                          #! EA = L0x7fffffffd398; PC = 0x5555555658c9 *)
mov L0x7fffffffd398 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x5555555658cd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x5555555658d3 *)
mull r14 r15 L0x7fffffffdb48 rdx;
(* adox   %r15,%r8                                 #! PC = 0x5555555658d9 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x5555555658df *)
adcs carry r9 r9 r14 carry;
(* mulx   0x10(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x5555555658e5 *)
mull rbx r14 L0x7fffffffdb50 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555658eb *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x5555555658f1 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x18(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x5555555658f7 *)
mull rbx r15 L0x7fffffffdb58 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x5555555658fd *)
adcs carry rbp rbp rbx carry;
(* mulx   0x20(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x555555565903 *)
mull rbx r14 L0x7fffffffdb60 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565909 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x28(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x55555556590f *)
mull rbx rdx L0x7fffffffdb68 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565915 *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x55555556591b *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565921 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565927 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x55555556592d *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffdaa0; Value = 0xec8523c5895288f7; PC = 0x555555565933 *)
mov rdx L0x7fffffffdaa0;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x555555565937 *)
mull r14 r15 L0x7fffffffdb40 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556593c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x55555556593f *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffd3a0; PC = 0x555555565945 *)
mov L0x7fffffffd3a0 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565949 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x55555556594f *)
mull r14 r15 L0x7fffffffdb48 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565955 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x55555556595b *)
adcs carry r11 r11 r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x555555565961 *)
mull r8 r14 L0x7fffffffdb50 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565967 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x55555556596d *)
adcs carry rbp rbp r8 carry;
(* mulx   0x18(%rsi),%r15,%r8                      #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x555555565973 *)
mull r8 r15 L0x7fffffffdb58 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565979 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x20(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x55555556597f *)
mull r8 r14 L0x7fffffffdb60 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565985 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x28(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x55555556598b *)
mull r8 rdx L0x7fffffffdb68 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565991 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565997 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x55555556599d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x5555555659a3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x5555555659a9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffdaa8; Value = 0xc0f7deee809b5381; PC = 0x5555555659af *)
mov rdx L0x7fffffffdaa8;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffdb40; Value = 0x84c334c0be52428a; PC = 0x5555555659b3 *)
mull r14 r15 L0x7fffffffdb40 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555659b8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x5555555659bb *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffd3a8; PC = 0x5555555659c1 *)
mov L0x7fffffffd3a8 r9;
(* adcx   %r14,%r11                                #! PC = 0x5555555659c5 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffdb48; Value = 0x94189f35e61fd479; PC = 0x5555555659cb *)
mull r14 r15 L0x7fffffffdb48 rdx;
(* adox   %r15,%r11                                #! PC = 0x5555555659d1 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555659d7 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x10(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb50; Value = 0xf4aa8bad0950db07; PC = 0x5555555659dd *)
mull r9 r14 L0x7fffffffdb50 rdx;
(* adox   %r14,%rbp                                #! PC = 0x5555555659e3 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x5555555659e9 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffdb58; Value = 0xce24024af4e30d5b; PC = 0x5555555659ef *)
mull r9 r15 L0x7fffffffdb58 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x5555555659f5 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x20(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb60; Value = 0xf9d50583c11ff1da; PC = 0x5555555659fb *)
mull r9 r14 L0x7fffffffdb60 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565a01 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x28(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdb68; Value = 0xaeb55b43e3efbe3b; PC = 0x555555565a07 *)
mull r9 rdx L0x7fffffffdb68 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565a0d *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565a13 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565a19 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565a1f *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565a25 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rcx)                          #! EA = L0x7fffffffd3b0; PC = 0x555555565a2b *)
mov L0x7fffffffd3b0 r11;
(* mov    %rbp,0x38(%rcx)                          #! EA = L0x7fffffffd3b8; PC = 0x555555565a2f *)
mov L0x7fffffffd3b8 rbp;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd3c0; PC = 0x555555565a33 *)
mov L0x7fffffffd3c0 r10;
(* mov    %rbx,0x48(%rcx)                          #! EA = L0x7fffffffd3c8; PC = 0x555555565a37 *)
mov L0x7fffffffd3c8 rbx;
(* mov    %r8,0x50(%rcx)                           #! EA = L0x7fffffffd3d0; PC = 0x555555565a3b *)
mov L0x7fffffffd3d0 r8;
(* mov    %r9,0x58(%rcx)                           #! EA = L0x7fffffffd3d8; PC = 0x555555565a3f *)
mov L0x7fffffffd3d8 r9;
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd120; Value = 0x60196ed935333f1d; PC = 0x555555565a43 *)
mov rdx L0x7fffffffd120;
(* mulx   0x30(%rsp),%r9,%r8                       #! EA = L0x7fffffffd150; Value = 0xb3057a7bcdd60412; PC = 0x555555565a47 *)
mull r8 r9 L0x7fffffffd150 rdx;
(* mulx   0x38(%rsp),%r11,%r10                     #! EA = L0x7fffffffd158; Value = 0xec679b7a2d70ad96; PC = 0x555555565a4e *)
mull r10 r11 L0x7fffffffd158 rdx;
(* mov    %r9,0x60(%rcx)                           #! EA = L0x7fffffffd3e0; PC = 0x555555565a55 *)
mov L0x7fffffffd3e0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565a59 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsp),%rbp,%rbx                     #! EA = L0x7fffffffd160; Value = 0xbe1161a94e741bc8; PC = 0x555555565a5c *)
mull rbx rbp L0x7fffffffd160 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565a63 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565a69 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsp),%r11,%r9                      #! EA = L0x7fffffffd168; Value = 0xf6722e37dfc4d9d2; PC = 0x555555565a6f *)
mull r9 r11 L0x7fffffffd168 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565a76 *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd170; Value = 0x8a4ef8535ceb6727; PC = 0x555555565a7c *)
mull rbp r14 L0x7fffffffd170 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565a83 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsp),%r15,%r11                     #! EA = L0x7fffffffd178; Value = 0xaeb5c6ff685446e6; PC = 0x555555565a89 *)
mull r11 r15 L0x7fffffffd178 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565a90 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565a96 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd128; Value = 0x84befe41405395c8; PC = 0x555555565a9c *)
mov rdx L0x7fffffffd128;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xb3057a7bcdd60412; PC = 0x555555565aa1 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565aa8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565aab *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x68(%rcx)                           #! EA = L0x7fffffffd3e8; PC = 0x555555565ab1 *)
mov L0x7fffffffd3e8 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565ab5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xec679b7a2d70ad96; PC = 0x555555565abb *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565ac2 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ac8 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd160; Value = 0xbe1161a94e741bc8; PC = 0x555555565ace *)
mull r8 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565ad5 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565adb *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd168; Value = 0xf6722e37dfc4d9d2; PC = 0x555555565ae1 *)
mull r9 r15 L0x7fffffffd168 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565ae8 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd170; Value = 0x8a4ef8535ceb6727; PC = 0x555555565aee *)
mull rbp r14 L0x7fffffffd170 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565af5 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsp),%rdx,%rbp                     #! EA = L0x7fffffffd178; Value = 0xaeb5c6ff685446e6; PC = 0x555555565afb *)
mull rbp rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565b02 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565b08 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565b0e *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565b14 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565b1a *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd130; Value = 0x9b8c877c11f82980; PC = 0x555555565b20 *)
mov rdx L0x7fffffffd130;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xb3057a7bcdd60412; PC = 0x555555565b25 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b2c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565b2f *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd3f0; PC = 0x555555565b35 *)
mov L0x7fffffffd3f0 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565b39 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xec679b7a2d70ad96; PC = 0x555555565b3f *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565b46 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565b4c *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsp),%r14,%r10                     #! EA = L0x7fffffffd160; Value = 0xbe1161a94e741bc8; PC = 0x555555565b52 *)
mull r10 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565b59 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565b5f *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsp),%r15,%r10                     #! EA = L0x7fffffffd168; Value = 0xf6722e37dfc4d9d2; PC = 0x555555565b65 *)
mull r10 r15 L0x7fffffffd168 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565b6c *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsp),%r14,%r10                     #! EA = L0x7fffffffd170; Value = 0x8a4ef8535ceb6727; PC = 0x555555565b72 *)
mull r10 r14 L0x7fffffffd170 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565b79 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsp),%rdx,%r10                     #! EA = L0x7fffffffd178; Value = 0xaeb5c6ff685446e6; PC = 0x555555565b7f *)
mull r10 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565b86 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565b8c *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565b92 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565b98 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565b9e *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd138; Value = 0x62c260f98dd7693e; PC = 0x555555565ba4 *)
mov rdx L0x7fffffffd138;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xb3057a7bcdd60412; PC = 0x555555565ba9 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565bb0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565bb3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x78(%rcx)                          #! EA = L0x7fffffffd3f8; PC = 0x555555565bb9 *)
mov L0x7fffffffd3f8 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565bbd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xec679b7a2d70ad96; PC = 0x555555565bc3 *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565bca *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565bd0 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd160; Value = 0xbe1161a94e741bc8; PC = 0x555555565bd6 *)
mull rbx r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565bdd *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565be3 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsp),%r15,%rbx                     #! EA = L0x7fffffffd168; Value = 0xf6722e37dfc4d9d2; PC = 0x555555565be9 *)
mull rbx r15 L0x7fffffffd168 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565bf0 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd170; Value = 0x8a4ef8535ceb6727; PC = 0x555555565bf6 *)
mull rbx r14 L0x7fffffffd170 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565bfd *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsp),%rdx,%rbx                     #! EA = L0x7fffffffd178; Value = 0xaeb5c6ff685446e6; PC = 0x555555565c03 *)
mull rbx rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565c0a *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565c10 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565c16 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565c1c *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565c22 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd140; Value = 0xf030ba37af0f7a18; PC = 0x555555565c28 *)
mov rdx L0x7fffffffd140;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xb3057a7bcdd60412; PC = 0x555555565c2d *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565c34 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565c37 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x80(%rcx)                           #! EA = L0x7fffffffd400; PC = 0x555555565c3d *)
mov L0x7fffffffd400 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565c44 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xec679b7a2d70ad96; PC = 0x555555565c4a *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565c51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565c57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd160; Value = 0xbe1161a94e741bc8; PC = 0x555555565c5d *)
mull r8 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565c64 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565c6a *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsp),%r15,%r8                      #! EA = L0x7fffffffd168; Value = 0xf6722e37dfc4d9d2; PC = 0x555555565c70 *)
mull r8 r15 L0x7fffffffd168 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565c77 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsp),%r14,%r8                      #! EA = L0x7fffffffd170; Value = 0x8a4ef8535ceb6727; PC = 0x555555565c7d *)
mull r8 r14 L0x7fffffffd170 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565c84 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsp),%rdx,%r8                      #! EA = L0x7fffffffd178; Value = 0xaeb5c6ff685446e6; PC = 0x555555565c8a *)
mull r8 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565c91 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565c97 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565c9d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565ca3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565ca9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd148; Value = 0xc0f83e4a7aea0a3c; PC = 0x555555565caf *)
mov rdx L0x7fffffffd148;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0xb3057a7bcdd60412; PC = 0x555555565cb4 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cbb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565cbe *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x88(%rcx)                           #! EA = L0x7fffffffd408; PC = 0x555555565cc4 *)
mov L0x7fffffffd408 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565ccb *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xec679b7a2d70ad96; PC = 0x555555565cd1 *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565cd8 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565cde *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsp),%r14,%r9                      #! EA = L0x7fffffffd160; Value = 0xbe1161a94e741bc8; PC = 0x555555565ce4 *)
mull r9 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565ceb *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565cf1 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd168; Value = 0xf6722e37dfc4d9d2; PC = 0x555555565cf7 *)
mull r9 r15 L0x7fffffffd168 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565cfe *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsp),%r14,%r9                      #! EA = L0x7fffffffd170; Value = 0x8a4ef8535ceb6727; PC = 0x555555565d04 *)
mull r9 r14 L0x7fffffffd170 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565d0b *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsp),%rdx,%r9                      #! EA = L0x7fffffffd178; Value = 0xaeb5c6ff685446e6; PC = 0x555555565d11 *)
mull r9 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565d18 *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565d1e *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565d24 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565d2a *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565d30 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x90(%rcx)                          #! EA = L0x7fffffffd410; PC = 0x555555565d36 *)
mov L0x7fffffffd410 r11;
(* mov    %rbp,0x98(%rcx)                          #! EA = L0x7fffffffd418; PC = 0x555555565d3d *)
mov L0x7fffffffd418 rbp;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd420; PC = 0x555555565d44 *)
mov L0x7fffffffd420 r10;
(* mov    %rbx,0xa8(%rcx)                          #! EA = L0x7fffffffd428; PC = 0x555555565d4b *)
mov L0x7fffffffd428 rbx;
(* mov    %r8,0xb0(%rcx)                           #! EA = L0x7fffffffd430; PC = 0x555555565d52 *)
mov L0x7fffffffd430 r8;
(* mov    %r9,0xb8(%rcx)                           #! EA = L0x7fffffffd438; PC = 0x555555565d59 *)
mov L0x7fffffffd438 r9;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffdab0; Value = 0x37a097402cac705b; PC = 0x555555565d60 *)
mov rdx L0x7fffffffdab0;
(* mulx   0x30(%rsi),%r9,%r8                       #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555565d64 *)
mull r8 r9 L0x7fffffffdb70 rdx;
(* mulx   0x38(%rsi),%r11,%r10                     #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555565d6a *)
mull r10 r11 L0x7fffffffdb78 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd120; PC = 0x555555565d70 *)
mov L0x7fffffffd120 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565d74 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555565d77 *)
mull rbx rbp L0x7fffffffdb80 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565d7d *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565d83 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsi),%r11,%r9                      #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555565d89 *)
mull r9 r11 L0x7fffffffdb88 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565d8f *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555565d95 *)
mull rbp r14 L0x7fffffffdb90 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565d9b *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsi),%r15,%r11                     #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555565da1 *)
mull r11 r15 L0x7fffffffdb98 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565da7 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565dad *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffdab8; Value = 0xc636c4f7151ab851; PC = 0x555555565db3 *)
mov rdx L0x7fffffffdab8;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555565db7 *)
mull r14 r15 L0x7fffffffdb70 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dbd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565dc0 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd128; PC = 0x555555565dc6 *)
mov L0x7fffffffd128 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565dcb *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555565dd1 *)
mull r14 r15 L0x7fffffffdb78 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565dd7 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ddd *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555565de3 *)
mull r8 r14 L0x7fffffffdb80 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565de9 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565def *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555565df5 *)
mull r9 r15 L0x7fffffffdb88 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565dfb *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555565e01 *)
mull rbp r14 L0x7fffffffdb90 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565e07 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555565e0d *)
mull rbp rdx L0x7fffffffdb98 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565e13 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565e19 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565e1f *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565e25 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565e2b *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffdac0; Value = 0x6381753fed20d372; PC = 0x555555565e31 *)
mov rdx L0x7fffffffdac0;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555565e35 *)
mull r14 r15 L0x7fffffffdb70 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565e3b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565e3e *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd130; PC = 0x555555565e44 *)
mov L0x7fffffffd130 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565e49 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555565e4f *)
mull r14 r15 L0x7fffffffdb78 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565e55 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565e5b *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555565e61 *)
mull r10 r14 L0x7fffffffdb80 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565e67 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565e6d *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsi),%r15,%r10                     #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555565e73 *)
mull r10 r15 L0x7fffffffdb88 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565e79 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsi),%r14,%r10                     #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555565e7f *)
mull r10 r14 L0x7fffffffdb90 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565e85 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsi),%rdx,%r10                     #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555565e8b *)
mull r10 rdx L0x7fffffffdb98 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565e91 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565e97 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565e9d *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565ea3 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565ea9 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffdac8; Value = 0x266c35fa2bcc79c3; PC = 0x555555565eaf *)
mov rdx L0x7fffffffdac8;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555565eb3 *)
mull r14 r15 L0x7fffffffdb70 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565eb9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565ebc *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x555555565ec2 *)
mov L0x7fffffffd138 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565ec7 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555565ecd *)
mull r14 r15 L0x7fffffffdb78 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565ed3 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565ed9 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555565edf *)
mull rbx r14 L0x7fffffffdb80 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565ee5 *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565eeb *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsi),%r15,%rbx                     #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555565ef1 *)
mull rbx r15 L0x7fffffffdb88 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565ef7 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsi),%r14,%rbx                     #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555565efd *)
mull rbx r14 L0x7fffffffdb90 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565f03 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555565f09 *)
mull rbx rdx L0x7fffffffdb98 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565f0f *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565f15 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565f1b *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565f21 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565f27 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffdad0; Value = 0x03ab967225bcf121; PC = 0x555555565f2d *)
mov rdx L0x7fffffffdad0;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555565f31 *)
mull r14 r15 L0x7fffffffdb70 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565f37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565f3a *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd140; PC = 0x555555565f40 *)
mov L0x7fffffffd140 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565f45 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555565f4b *)
mull r14 r15 L0x7fffffffdb78 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565f51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565f57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555565f5d *)
mull r8 r14 L0x7fffffffdb80 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565f63 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565f69 *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsi),%r15,%r8                      #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555565f6f *)
mull r8 r15 L0x7fffffffdb88 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565f75 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsi),%r14,%r8                      #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555565f7b *)
mull r8 r14 L0x7fffffffdb90 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565f81 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsi),%rdx,%r8                      #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555565f87 *)
mull r8 rdx L0x7fffffffdb98 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565f8d *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565f93 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565f99 *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565f9f *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565fa5 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffdad8; Value = 0x00005f5bfa4eb6bb; PC = 0x555555565fab *)
mov rdx L0x7fffffffdad8;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb70; Value = 0x2e4245bb0f83c188; PC = 0x555555565faf *)
mull r14 r15 L0x7fffffffdb70 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565fb5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565fb8 *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd148; PC = 0x555555565fbe *)
mov L0x7fffffffd148 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565fc3 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffdb78; Value = 0x584efc444750d91d; PC = 0x555555565fc9 *)
mull r14 r15 L0x7fffffffdb78 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565fcf *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565fd5 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb80; Value = 0xc966d5fc452340c1; PC = 0x555555565fdb *)
mull r9 r14 L0x7fffffffdb80 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565fe1 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565fe7 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffdb88; Value = 0x284e2beceae1cc76; PC = 0x555555565fed *)
mull r9 r15 L0x7fffffffdb88 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565ff3 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsi),%r14,%r9                      #! EA = L0x7fffffffdb90; Value = 0x9079f2cf9bcb754d; PC = 0x555555565ff9 *)
mull r9 r14 L0x7fffffffdb90 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565fff *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsi),%rdx,%r9                      #! EA = L0x7fffffffdb98; Value = 0x00006bbb846488aa; PC = 0x555555566005 *)
mull r9 rdx L0x7fffffffdb98 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x55555556600b *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566011 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555566017 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x55555556601d *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555566023 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd150; PC = 0x555555566029 *)
mov L0x7fffffffd150 r11;
(* mov    %rbp,0x38(%rsp)                          #! EA = L0x7fffffffd158; PC = 0x55555556602e *)
mov L0x7fffffffd158 rbp;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd160; PC = 0x555555566033 *)
mov L0x7fffffffd160 r10;
(* mov    %rbx,0x48(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x555555566038 *)
mov L0x7fffffffd168 rbx;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd170; PC = 0x55555556603d *)
mov L0x7fffffffd170 r8;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd178; PC = 0x555555566042 *)
mov L0x7fffffffd178 r9;
(* mov    0x60(%rsp),%r8                           #! EA = L0x7fffffffd180; Value = 0x0000000000000000; PC = 0x555555566047 *)
mov r8 L0x7fffffffd180;
(* mov    0x68(%rsp),%r9                           #! EA = L0x7fffffffd188; Value = 0x0000000000000000; PC = 0x55555556604c *)
mov r9 L0x7fffffffd188;
(* mov    0x70(%rsp),%r10                          #! EA = L0x7fffffffd190; Value = 0x0000000000000000; PC = 0x555555566051 *)
mov r10 L0x7fffffffd190;
(* mov    0x78(%rsp),%r11                          #! EA = L0x7fffffffd198; Value = 0x0000000000000000; PC = 0x555555566056 *)
mov r11 L0x7fffffffd198;
(* mov    0x90(%rcx),%rax                          #! EA = L0x7fffffffd410; Value = 0x4343afc5a33e11b9; PC = 0x55555556605b *)
mov rax L0x7fffffffd410;
(* add    %rax,%r8                                 #! PC = 0x555555566062 *)
adds carry r8 r8 rax;
(* mov    0x98(%rcx),%rax                          #! EA = L0x7fffffffd418; Value = 0xe6aec7355b1ee566; PC = 0x555555566065 *)
mov rax L0x7fffffffd418;
(* adc    %rax,%r9                                 #! PC = 0x55555556606c *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    0xa0(%rcx),%rax                          #! EA = L0x7fffffffd420; Value = 0x9dd4c53f37dc2889; PC = 0x55555556606f *)
mov rax L0x7fffffffd420;
(* adc    %rax,%r10                                #! PC = 0x555555566076 *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    0xa8(%rcx),%rax                          #! EA = L0x7fffffffd428; Value = 0x96567ed46eee259f; PC = 0x555555566079 *)
mov rax L0x7fffffffd428;
(* adc    %rax,%r11                                #! PC = 0x555555566080 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    0xb0(%rcx),%rax                          #! EA = L0x7fffffffd430; Value = 0x76135b5f7162efee; PC = 0x555555566083 *)
mov rax L0x7fffffffd430;
(* adc    %rax,%r12                                #! PC = 0x55555556608a *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    0xb8(%rcx),%rax                          #! EA = L0x7fffffffd438; Value = 0x83b1bfdb304c01e4; PC = 0x55555556608d *)
mov rax L0x7fffffffd438;
(* adc    %rax,%r13                                #! PC = 0x555555566094 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    0x60(%rcx),%rdi                          #! EA = L0x7fffffffd3e0; Value = 0x3ef5d76a85d4e40a; PC = 0x555555566097 *)
mov rdi L0x7fffffffd3e0;
(* sub    (%rcx),%rdi                              #! EA = L0x7fffffffd380; Value = 0xe8f2eed3901d7894; PC = 0x55555556609b *)
subb carry rdi rdi L0x7fffffffd380;
(* mov    0x68(%rcx),%rdx                          #! EA = L0x7fffffffd3e8; Value = 0x909a600a57869574; PC = 0x55555556609e *)
mov rdx L0x7fffffffd3e8;
(* sbb    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd388; Value = 0x29ab93275ec6ece2; PC = 0x5555555660a2 *)
sbbs carry rdx rdx L0x7fffffffd388 carry;
(* mov    0x70(%rcx),%rbx                          #! EA = L0x7fffffffd3f0; Value = 0x8aa023ce8146d5e2; PC = 0x5555555660a6 *)
mov rbx L0x7fffffffd3f0;
(* sbb    0x10(%rcx),%rbx                          #! EA = L0x7fffffffd390; Value = 0x4f90458a181f3339; PC = 0x5555555660aa *)
sbbs carry rbx rbx L0x7fffffffd390 carry;
(* mov    0x78(%rcx),%rbp                          #! EA = L0x7fffffffd3f8; Value = 0x8752a90131e84f6b; PC = 0x5555555660ae *)
mov rbp L0x7fffffffd3f8;
(* sbb    0x18(%rcx),%rbp                          #! EA = L0x7fffffffd398; Value = 0x494b938829b89092; PC = 0x5555555660b2 *)
sbbs carry rbp rbp L0x7fffffffd398 carry;
(* mov    0x80(%rcx),%r14                          #! EA = L0x7fffffffd400; Value = 0xd35133c629d33977; PC = 0x5555555660b6 *)
mov r14 L0x7fffffffd400;
(* sbb    0x20(%rcx),%r14                          #! EA = L0x7fffffffd3a0; Value = 0x2ca98729bf45668a; PC = 0x5555555660bd *)
sbbs carry r14 r14 L0x7fffffffd3a0 carry;
(* mov    0x88(%rcx),%r15                          #! EA = L0x7fffffffd408; Value = 0x758a5dd236a6f70b; PC = 0x5555555660c1 *)
mov r15 L0x7fffffffd408;
(* sbb    0x28(%rcx),%r15                          #! EA = L0x7fffffffd3a8; Value = 0x1e9611dcf08bf819; PC = 0x5555555660c8 *)
sbbs carry r15 r15 L0x7fffffffd3a8 carry;
(* sbb    0x30(%rcx),%r8                           #! EA = L0x7fffffffd3b0; Value = 0x9725d3ef25dad0ec; PC = 0x5555555660cc *)
sbbs carry r8 r8 L0x7fffffffd3b0 carry;
(* sbb    0x38(%rcx),%r9                           #! EA = L0x7fffffffd3b8; Value = 0x50b37e51a208f817; PC = 0x5555555660d0 *)
sbbs carry r9 r9 L0x7fffffffd3b8 carry;
(* sbb    0x40(%rcx),%r10                          #! EA = L0x7fffffffd3c0; Value = 0xfa344f728909fa60; PC = 0x5555555660d4 *)
sbbs carry r10 r10 L0x7fffffffd3c0 carry;
(* sbb    0x48(%rcx),%r11                          #! EA = L0x7fffffffd3c8; Value = 0xd1f567d672ba7fe7; PC = 0x5555555660d8 *)
sbbs carry r11 r11 L0x7fffffffd3c8 carry;
(* sbb    0x50(%rcx),%r12                          #! EA = L0x7fffffffd3d0; Value = 0x028f9d3b7ea915df; PC = 0x5555555660dc *)
sbbs carry r12 r12 L0x7fffffffd3d0 carry;
(* sbb    0x58(%rcx),%r13                          #! EA = L0x7fffffffd3d8; Value = 0x83b12d9202f92233; PC = 0x5555555660e0 *)
sbbs carry r13 r13 L0x7fffffffd3d8 carry;
(* sub    (%rsp),%rdi                              #! EA = L0x7fffffffd120; Value = 0x35814c118fe14b58; PC = 0x5555555660e4 *)
subb carry rdi rdi L0x7fffffffd120;
(* sbb    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd128; Value = 0x355ebee774d42bff; PC = 0x5555555660e8 *)
sbbs carry rdx rdx L0x7fffffffd128 carry;
(* sbb    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd130; Value = 0x13c4e04938d88d6f; PC = 0x5555555660ed *)
sbbs carry rbx rbx L0x7fffffffd130 carry;
(* sbb    0x18(%rsp),%rbp                          #! EA = L0x7fffffffd138; Value = 0x1c0476033927ddbd; PC = 0x5555555660f2 *)
sbbs carry rbp rbp L0x7fffffffd138 carry;
(* sbb    0x20(%rsp),%r14                          #! EA = L0x7fffffffd140; Value = 0xf5c8e6a7117d57e6; PC = 0x5555555660f7 *)
sbbs carry r14 r14 L0x7fffffffd140 carry;
(* sbb    0x28(%rsp),%r15                          #! EA = L0x7fffffffd148; Value = 0x568f17bd4b92d44b; PC = 0x5555555660fc *)
sbbs carry r15 r15 L0x7fffffffd148 carry;
(* sbb    0x30(%rsp),%r8                           #! EA = L0x7fffffffd150; Value = 0x1e92277dfe45188f; PC = 0x555555566101 *)
sbbs carry r8 r8 L0x7fffffffd150 carry;
(* sbb    0x38(%rsp),%r9                           #! EA = L0x7fffffffd158; Value = 0x9f65b1542527891c; PC = 0x555555566106 *)
sbbs carry r9 r9 L0x7fffffffd158 carry;
(* sbb    0x40(%rsp),%r10                          #! EA = L0x7fffffffd160; Value = 0x4571454e724c67f4; PC = 0x55555556610b *)
sbbs carry r10 r10 L0x7fffffffd160 carry;
(* sbb    0x48(%rsp),%r11                          #! EA = L0x7fffffffd168; Value = 0x9abe6bcf6348b46f; PC = 0x555555566110 *)
sbbs carry r11 r11 L0x7fffffffd168 carry;
(* sbb    0x50(%rsp),%r12                          #! EA = L0x7fffffffd170; Value = 0x9dc667fb683b13e8; PC = 0x555555566115 *)
sbbs carry r12 r12 L0x7fffffffd170 carry;
(* sbb    0x58(%rsp),%r13                          #! EA = L0x7fffffffd178; Value = 0x0000000028214b1f; PC = 0x55555556611a *)
sbbs carry r13 r13 L0x7fffffffd178 carry;
assert and [
  eqmod
    (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
    (
      (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05 ] * limbs 64 [ b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
      +
      (limbs 64 [ a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ] * limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05 ])
    )
    (2**768)
] && and [
  (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ b1_06, b1_07, b1_08, b1_09, b1_10, b1_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  +
  (limbs 64 [ a1_06, a1_07, a1_08, a1_09, a1_10, a1_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  <u
  (2**768)@832
];
assume and [
  (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
  =
  (
    (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05 ] * limbs 64 [ b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
    +
    (limbs 64 [ a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ] * limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05 ])
  )
] && true;
(* mov    0x30(%rcx),%rax                          #! EA = L0x7fffffffd3b0; Value = 0x9725d3ef25dad0ec; PC = 0x55555556611f *)
mov rax L0x7fffffffd3b0;
(* add    %rdi,%rax                                #! PC = 0x555555566123 *)
adds carry rax rax rdi;
(* mov    %rax,0x30(%rcx)                          #! EA = L0x7fffffffd3b0; PC = 0x555555566126 *)
mov L0x7fffffffd3b0 rax;
(* mov    0x38(%rcx),%rax                          #! EA = L0x7fffffffd3b8; Value = 0x50b37e51a208f817; PC = 0x55555556612a *)
mov rax L0x7fffffffd3b8;
(* adc    %rdx,%rax                                #! PC = 0x55555556612e *)
adcs carry rax rax rdx@uint64 carry;
(* mov    %rax,0x38(%rcx)                          #! EA = L0x7fffffffd3b8; PC = 0x555555566131 *)
mov L0x7fffffffd3b8 rax;
(* mov    0x40(%rcx),%rax                          #! EA = L0x7fffffffd3c0; Value = 0xfa344f728909fa60; PC = 0x555555566135 *)
mov rax L0x7fffffffd3c0;
(* adc    %rbx,%rax                                #! PC = 0x555555566139 *)
adcs carry rax rax rbx@uint64 carry;
(* mov    %rax,0x40(%rcx)                          #! EA = L0x7fffffffd3c0; PC = 0x55555556613c *)
mov L0x7fffffffd3c0 rax;
(* mov    0x48(%rcx),%rax                          #! EA = L0x7fffffffd3c8; Value = 0xd1f567d672ba7fe7; PC = 0x555555566140 *)
mov rax L0x7fffffffd3c8;
(* adc    %rbp,%rax                                #! PC = 0x555555566144 *)
adcs carry rax rax rbp@uint64 carry;
(* mov    %rax,0x48(%rcx)                          #! EA = L0x7fffffffd3c8; PC = 0x555555566147 *)
mov L0x7fffffffd3c8 rax;
(* mov    0x50(%rcx),%rax                          #! EA = L0x7fffffffd3d0; Value = 0x028f9d3b7ea915df; PC = 0x55555556614b *)
mov rax L0x7fffffffd3d0;
(* adc    %r14,%rax                                #! PC = 0x55555556614f *)
adcs carry rax rax r14@uint64 carry;
(* mov    %rax,0x50(%rcx)                          #! EA = L0x7fffffffd3d0; PC = 0x555555566152 *)
mov L0x7fffffffd3d0 rax;
(* mov    0x58(%rcx),%rax                          #! EA = L0x7fffffffd3d8; Value = 0x83b12d9202f92233; PC = 0x555555566156 *)
mov rax L0x7fffffffd3d8;
(* adc    %r15,%rax                                #! PC = 0x55555556615a *)
adcs carry rax rax r15@uint64 carry;
(* mov    %rax,0x58(%rcx)                          #! EA = L0x7fffffffd3d8; PC = 0x55555556615d *)
mov L0x7fffffffd3d8 rax;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd120; Value = 0x35814c118fe14b58; PC = 0x555555566161 *)
mov rax L0x7fffffffd120;
(* adc    %rax,%r8                                 #! PC = 0x555555566165 *)
adcs carry r8 r8 rax@uint64 carry;
(* mov    %r8,0x60(%rcx)                           #! EA = L0x7fffffffd3e0; PC = 0x555555566168 *)
mov L0x7fffffffd3e0 r8;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd128; Value = 0x355ebee774d42bff; PC = 0x55555556616c *)
mov rax L0x7fffffffd128;
(* adc    %rax,%r9                                 #! PC = 0x555555566171 *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    %r9,0x68(%rcx)                           #! EA = L0x7fffffffd3e8; PC = 0x555555566174 *)
mov L0x7fffffffd3e8 r9;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd130; Value = 0x13c4e04938d88d6f; PC = 0x555555566178 *)
mov rax L0x7fffffffd130;
(* adc    %rax,%r10                                #! PC = 0x55555556617d *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd3f0; PC = 0x555555566180 *)
mov L0x7fffffffd3f0 r10;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd138; Value = 0x1c0476033927ddbd; PC = 0x555555566184 *)
mov rax L0x7fffffffd138;
(* adc    %rax,%r11                                #! PC = 0x555555566189 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    %r11,0x78(%rcx)                          #! EA = L0x7fffffffd3f8; PC = 0x55555556618c *)
mov L0x7fffffffd3f8 r11;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd140; Value = 0xf5c8e6a7117d57e6; PC = 0x555555566190 *)
mov rax L0x7fffffffd140;
(* adc    %rax,%r12                                #! PC = 0x555555566195 *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    %r12,0x80(%rcx)                          #! EA = L0x7fffffffd400; PC = 0x555555566198 *)
mov L0x7fffffffd400 r12;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd148; Value = 0x568f17bd4b92d44b; PC = 0x55555556619f *)
mov rax L0x7fffffffd148;
(* adc    %rax,%r13                                #! PC = 0x5555555661a4 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    %r13,0x88(%rcx)                          #! EA = L0x7fffffffd408; PC = 0x5555555661a7 *)
mov L0x7fffffffd408 r13;
(* mov    0x30(%rsp),%r8                           #! EA = L0x7fffffffd150; Value = 0x1e92277dfe45188f; PC = 0x5555555661ae *)
mov r8 L0x7fffffffd150;
(* mov    0x38(%rsp),%r9                           #! EA = L0x7fffffffd158; Value = 0x9f65b1542527891c; PC = 0x5555555661b3 *)
mov r9 L0x7fffffffd158;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffd160; Value = 0x4571454e724c67f4; PC = 0x5555555661b8 *)
mov r10 L0x7fffffffd160;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffd168; Value = 0x9abe6bcf6348b46f; PC = 0x5555555661bd *)
mov r11 L0x7fffffffd168;
(* mov    0x50(%rsp),%r12                          #! EA = L0x7fffffffd170; Value = 0x9dc667fb683b13e8; PC = 0x5555555661c2 *)
mov r12 L0x7fffffffd170;
(* mov    0x58(%rsp),%r13                          #! EA = L0x7fffffffd178; Value = 0x0000000028214b1f; PC = 0x5555555661c7 *)
mov r13 L0x7fffffffd178;
(* adc    $0x0,%r8                                 #! PC = 0x5555555661cc *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x5555555661d0 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555661d4 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x5555555661d8 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x5555555661dc *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x5555555661e0 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    $0x98,%rsp                               #! PC = 0x5555555661e4 *)
adds carry rsp rsp 0x98@uint64;
(* mov    %r8,0x90(%rcx)                           #! EA = L0x7fffffffd410; PC = 0x5555555661eb *)
mov L0x7fffffffd410 r8;
(* mov    %r9,0x98(%rcx)                           #! EA = L0x7fffffffd418; PC = 0x5555555661f2 *)
mov L0x7fffffffd418 r9;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd420; PC = 0x5555555661f9 *)
mov L0x7fffffffd420 r10;
(* mov    %r11,0xa8(%rcx)                          #! EA = L0x7fffffffd428; PC = 0x555555566200 *)
mov L0x7fffffffd428 r11;
(* mov    %r12,0xb0(%rcx)                          #! EA = L0x7fffffffd430; PC = 0x555555566207 *)
mov L0x7fffffffd430 r12;
(* mov    %r13,0xb8(%rcx)                          #! EA = L0x7fffffffd438; PC = 0x55555556620e *)
mov L0x7fffffffd438 r13;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x55555556621f *)
#retq                                           #! 0x55555556621f = 0x55555556621f;

ghost tt2_00@uint64, tt2_01@uint64, tt2_02@uint64, tt2_03@uint64, tt2_04@uint64, tt2_05@uint64,
      tt2_06@uint64, tt2_07@uint64, tt2_08@uint64, tt2_09@uint64, tt2_10@uint64, tt2_11@uint64,
      tt2_12@uint64, tt2_13@uint64, tt2_14@uint64, tt2_15@uint64, tt2_16@uint64, tt2_17@uint64,
      tt2_18@uint64, tt2_19@uint64, tt2_20@uint64, tt2_21@uint64, tt2_22@uint64, tt2_23@uint64 :
  and [
    tt2_00 = L0x7fffffffd380, tt2_01 = L0x7fffffffd388, tt2_02 = L0x7fffffffd390,
    tt2_03 = L0x7fffffffd398, tt2_04 = L0x7fffffffd3a0, tt2_05 = L0x7fffffffd3a8,
    tt2_06 = L0x7fffffffd3b0, tt2_07 = L0x7fffffffd3b8, tt2_08 = L0x7fffffffd3c0,
    tt2_09 = L0x7fffffffd3c8, tt2_10 = L0x7fffffffd3d0, tt2_11 = L0x7fffffffd3d8,
    tt2_12 = L0x7fffffffd3e0, tt2_13 = L0x7fffffffd3e8, tt2_14 = L0x7fffffffd3f0,
    tt2_15 = L0x7fffffffd3f8, tt2_16 = L0x7fffffffd400, tt2_17 = L0x7fffffffd408,
    tt2_18 = L0x7fffffffd410, tt2_19 = L0x7fffffffd418, tt2_20 = L0x7fffffffd420,
    tt2_21 = L0x7fffffffd428, tt2_22 = L0x7fffffffd430, tt2_23 = L0x7fffffffd438
  ] &&
  and [
    tt2_00 = L0x7fffffffd380, tt2_01 = L0x7fffffffd388, tt2_02 = L0x7fffffffd390,
    tt2_03 = L0x7fffffffd398, tt2_04 = L0x7fffffffd3a0, tt2_05 = L0x7fffffffd3a8,
    tt2_06 = L0x7fffffffd3b0, tt2_07 = L0x7fffffffd3b8, tt2_08 = L0x7fffffffd3c0,
    tt2_09 = L0x7fffffffd3c8, tt2_10 = L0x7fffffffd3d0, tt2_11 = L0x7fffffffd3d8,
    tt2_12 = L0x7fffffffd3e0, tt2_13 = L0x7fffffffd3e8, tt2_14 = L0x7fffffffd3f0,
    tt2_15 = L0x7fffffffd3f8, tt2_16 = L0x7fffffffd400, tt2_17 = L0x7fffffffd408,
    tt2_18 = L0x7fffffffd410, tt2_19 = L0x7fffffffd418, tt2_20 = L0x7fffffffd420,
    tt2_21 = L0x7fffffffd428, tt2_22 = L0x7fffffffd430, tt2_23 = L0x7fffffffd438
  ];

# Ecut 3
ecut and [
       (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                   tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23 ])
       =
       (
         (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
         *
         (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
       )
     ];
assume true &&
       (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                   tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23 ])
       =
       (
         uext (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) 768
         *
         uext (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]) 768
       );
# Rcut 3
rcut (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                 tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23 ])
     =
     (
       uext (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) 768
       *
       uext (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]) 768
     ) prove with [precondition];

// mp_mul(t1, t2, tt3, NWORDS_FIELD);               // tt3 = (a0+a1)*(b0+b1)
(* mov    $0xc,%ecx                                #! PC = 0x555555558eac *)
assert true && 0xc@64 <=u 0x0000000100000000@64;
mov rcx 0xc@uint64;
(* mov    %r12,%rdx                                #! PC = 0x555555558eb1 *)
mov rdx r12;
(* mov    %rbx,%rsi                                #! PC = 0x555555558eb4 *)
mov rsi rbx;
(* mov    %r15,%rdi                                #! PC = 0x555555558eb7 *)
mov rdi r15;
(* #callq  0x5555555650c0 <mp_mul>                 #! PC = 0x555555558eba *)
#callq  0x5555555650c0 <mp_mul>                 #! 0x555555558eba = 0x555555558eba;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #jmpq   0x555555565653 <mul751_asm>             #! PC = 0x5555555650c4 *)
#jmpq   0x555555565653 <mul751_asm>             #! 0x5555555650c4 = 0x5555555650c4;
(* mov    %rdx,%rcx                                #! PC = 0x55555556565b *)
mov rcx rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556565e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd200; Value = 0xfe945393e034712d; PC = 0x555555565661 *)
mov r8 L0x7fffffffd200;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd208; Value = 0xf181fbdfb2c4e07a; PC = 0x555555565664 *)
mov r9 L0x7fffffffd208;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd210; Value = 0xff32f8da58031cbe; PC = 0x555555565668 *)
mov r10 L0x7fffffffd210;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd218; Value = 0xcb6a9454b7d360b0; PC = 0x55555556566c *)
mov r11 L0x7fffffffd218;
(* mov    0x20(%rdi),%r12                          #! EA = L0x7fffffffd220; Value = 0xcb97d6f162c37bea; PC = 0x555555565670 *)
mov r12 L0x7fffffffd220;
(* mov    0x28(%rdi),%r13                          #! EA = L0x7fffffffd228; Value = 0xa890b2d70e40ff53; PC = 0x555555565674 *)
mov r13 L0x7fffffffd228;
(* sub    $0x98,%rsp                               #! PC = 0x55555556567a *)
subb carry rsp rsp 0x98@uint64;
(* add    0x30(%rdi),%r8                           #! EA = L0x7fffffffd230; Value = 0x1c55ed5a4791dbb6; PC = 0x555555565681 *)
adds carry r8 r8 L0x7fffffffd230;
(* adc    0x38(%rdi),%r9                           #! EA = L0x7fffffffd238; Value = 0x91573ee9e3b9646f; PC = 0x555555565685 *)
adcs carry r9 r9 L0x7fffffffd238 carry;
(* adc    0x40(%rdi),%r10                          #! EA = L0x7fffffffd240; Value = 0x13c55a32f6894c94; PC = 0x555555565689 *)
adcs carry r10 r10 L0x7fffffffd240 carry;
(* adc    0x48(%rdi),%r11                          #! EA = L0x7fffffffd248; Value = 0x8b69394c089bf267; PC = 0x55555556568d *)
adcs carry r11 r11 L0x7fffffffd248 carry;
(* adc    0x50(%rdi),%r12                          #! EA = L0x7fffffffd250; Value = 0x06d6a85af0d3454d; PC = 0x555555565691 *)
adcs carry r12 r12 L0x7fffffffd250 carry;
(* adc    0x58(%rdi),%r13                          #! EA = L0x7fffffffd258; Value = 0x00009b643bd93168; PC = 0x555555565695 *)
adcs carry r13 r13 L0x7fffffffd258 carry;
ghost carry_t1h_add_t1l@uint1 : carry_t1h_add_t1l = carry && carry_t1h_add_t1l = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555565699 *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_t1h_add_t1l = carry;
assume carry_t1h_add_t1l = carry && true;
(* mov    %r8,(%rsp)                               #! EA = L0x7fffffffd120; PC = 0x55555556569d *)
mov L0x7fffffffd120 r8;
(* mov    %r9,0x8(%rsp)                            #! EA = L0x7fffffffd128; PC = 0x5555555656a1 *)
mov L0x7fffffffd128 r9;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd130; PC = 0x5555555656a6 *)
mov L0x7fffffffd130 r10;
(* mov    %r11,0x18(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x5555555656ab *)
mov L0x7fffffffd138 r11;
(* mov    %r12,0x20(%rsp)                          #! EA = L0x7fffffffd140; PC = 0x5555555656b0 *)
mov L0x7fffffffd140 r12;
(* mov    %r13,0x28(%rsp)                          #! EA = L0x7fffffffd148; PC = 0x5555555656b5 *)
mov L0x7fffffffd148 r13;
ghost t1h_add_t1l_0@uint64, t1h_add_t1l_1@uint64, t1h_add_t1l_2@uint64, t1h_add_t1l_3@uint64, t1h_add_t1l_4@uint64, t1h_add_t1l_5@uint64 :
  and [
    t1h_add_t1l_0 = L0x7fffffffd120, t1h_add_t1l_1 = L0x7fffffffd128, t1h_add_t1l_2 = L0x7fffffffd130,
    t1h_add_t1l_3 = L0x7fffffffd138, t1h_add_t1l_4 = L0x7fffffffd140, t1h_add_t1l_5 = L0x7fffffffd148
  ]
  &&
  and [
    t1h_add_t1l_0 = L0x7fffffffd120, t1h_add_t1l_1 = L0x7fffffffd128, t1h_add_t1l_2 = L0x7fffffffd130,
    t1h_add_t1l_3 = L0x7fffffffd138, t1h_add_t1l_4 = L0x7fffffffd140, t1h_add_t1l_5 = L0x7fffffffd148
  ];
assert
  limbs 64 [ t1h_add_t1l_0, t1h_add_t1l_1, t1h_add_t1l_2, t1h_add_t1l_3, t1h_add_t1l_4, t1h_add_t1l_5, carry_t1h_add_t1l ]
  =
  (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ] + limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05 ])
  &&
  true;

(* xor    %rdx,%rdx                                #! PC = 0x5555555656ba *)
mov rdx 0@uint64;
clear carry;
clear overflow;
(* mov    (%rsi),%r8                               #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x5555555656bd *)
mov r8 L0x7fffffffd260;
(* mov    0x8(%rsi),%r9                            #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x5555555656c0 *)
mov r9 L0x7fffffffd268;
(* mov    0x10(%rsi),%rbx                          #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x5555555656c4 *)
mov rbx L0x7fffffffd270;
(* mov    0x18(%rsi),%rbp                          #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x5555555656c8 *)
mov rbp L0x7fffffffd278;
(* mov    0x20(%rsi),%r14                          #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x5555555656cc *)
mov r14 L0x7fffffffd280;
(* mov    0x28(%rsi),%r15                          #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x5555555656d0 *)
mov r15 L0x7fffffffd288;
(* add    0x30(%rsi),%r8                           #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x5555555656d4 *)
adds carry r8 r8 L0x7fffffffd290;
(* adc    0x38(%rsi),%r9                           #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x5555555656d8 *)
adcs carry r9 r9 L0x7fffffffd298 carry;
(* adc    0x40(%rsi),%rbx                          #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x5555555656dc *)
adcs carry rbx rbx L0x7fffffffd2a0 carry;
(* adc    0x48(%rsi),%rbp                          #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x5555555656e0 *)
adcs carry rbp rbp L0x7fffffffd2a8 carry;
(* adc    0x50(%rsi),%r14                          #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x5555555656e4 *)
adcs carry r14 r14 L0x7fffffffd2b0 carry;
(* adc    0x58(%rsi),%r15                          #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x5555555656e8 *)
adcs carry r15 r15 L0x7fffffffd2b8 carry;
ghost carry_t2h_add_t2l@uint1 : carry_t2h_add_t2l = carry && carry_t2h_add_t2l = carry;
(* sbb    $0x0,%rdx                                #! PC = 0x5555555656ec *)
sbbs carry rdx rdx 0x0@uint64 carry;
assert true && carry_t2h_add_t2l = carry;
assume carry_t2h_add_t2l = carry && true;
(* mov    %r8,0x30(%rsp)                           #! EA = L0x7fffffffd150; PC = 0x5555555656f0 *)
mov L0x7fffffffd150 r8;
(* mov    %r9,0x38(%rsp)                           #! EA = L0x7fffffffd158; PC = 0x5555555656f5 *)
mov L0x7fffffffd158 r9;
(* mov    %rbx,0x40(%rsp)                          #! EA = L0x7fffffffd160; PC = 0x5555555656fa *)
mov L0x7fffffffd160 rbx;
(* mov    %rbp,0x48(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x5555555656ff *)
mov L0x7fffffffd168 rbp;
(* mov    %r14,0x50(%rsp)                          #! EA = L0x7fffffffd170; PC = 0x555555565704 *)
mov L0x7fffffffd170 r14;
(* mov    %r15,0x58(%rsp)                          #! EA = L0x7fffffffd178; PC = 0x555555565709 *)
mov L0x7fffffffd178 r15;
ghost t2h_add_t2l_0@uint64, t2h_add_t2l_1@uint64, t2h_add_t2l_2@uint64, t2h_add_t2l_3@uint64, t2h_add_t2l_4@uint64, t2h_add_t2l_5@uint64 :
  and [
    t2h_add_t2l_0 = L0x7fffffffd150, t2h_add_t2l_1 = L0x7fffffffd158, t2h_add_t2l_2 = L0x7fffffffd160,
    t2h_add_t2l_3 = L0x7fffffffd168, t2h_add_t2l_4 = L0x7fffffffd170, t2h_add_t2l_5 = L0x7fffffffd178
  ]
  &&
  and [
    t2h_add_t2l_0 = L0x7fffffffd150, t2h_add_t2l_1 = L0x7fffffffd158, t2h_add_t2l_2 = L0x7fffffffd160,
    t2h_add_t2l_3 = L0x7fffffffd168, t2h_add_t2l_4 = L0x7fffffffd170, t2h_add_t2l_5 = L0x7fffffffd178
  ];
(* and    %rax,%r8                                 #! PC = 0x55555556570e *)
and uint64 r8 rax r8;
(* and    %rax,%r9                                 #! PC = 0x555555565711 *)
and uint64 r9 rax r9;
(* and    %rax,%rbx                                #! PC = 0x555555565714 *)
and uint64 rbx rax rbx;
(* and    %rax,%rbp                                #! PC = 0x555555565717 *)
and uint64 rbp rax rbp;
(* and    %rax,%r14                                #! PC = 0x55555556571a *)
and uint64 r14 rax r14;
(* and    %rax,%r15                                #! PC = 0x55555556571d *)
and uint64 r15 rax r15;
(* mov    %r8,(%rcx)                               #! EA = L0x7fffffffd440; PC = 0x555555565720 *)
mov L0x7fffffffd440 r8;
(* mov    %r9,0x8(%rcx)                            #! EA = L0x7fffffffd448; PC = 0x555555565723 *)
mov L0x7fffffffd448 r9;
assert true && and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  uext carry_t1h_add_t1l 383 * (limbs 64 [ t2h_add_t2l_0, t2h_add_t2l_1, t2h_add_t2l_2, t2h_add_t2l_3, t2h_add_t2l_4, t2h_add_t2l_5 ])
];
assume and [
  limbs 64 [ r8, r9, rbx, rbp, r14, r15 ]
  =
  carry_t1h_add_t1l * (limbs 64 [ t2h_add_t2l_0, t2h_add_t2l_1, t2h_add_t2l_2, t2h_add_t2l_3, t2h_add_t2l_4, t2h_add_t2l_5 ])
] && true;
(* mov    (%rsp),%r8                               #! EA = L0x7fffffffd120; Value = 0x1aea40ee27c64ce3; PC = 0x555555565727 *)
mov r8 L0x7fffffffd120;
(* mov    0x8(%rsp),%r9                            #! EA = L0x7fffffffd128; Value = 0x82d93ac9967e44ea; PC = 0x55555556572b *)
mov r9 L0x7fffffffd128;
(* and    %rdx,%r8                                 #! PC = 0x555555565730 *)
and uint64 r8 rdx r8;
(* and    %rdx,%r9                                 #! PC = 0x555555565733 *)
and uint64 r9 rdx r9;
(* and    %rdx,%r10                                #! PC = 0x555555565736 *)
and uint64 r10 rdx r10;
(* and    %rdx,%r11                                #! PC = 0x555555565739 *)
and uint64 r11 rdx r11;
(* and    %rdx,%r12                                #! PC = 0x55555556573c *)
and uint64 r12 rdx r12;
(* and    %rdx,%r13                                #! PC = 0x55555556573f *)
and uint64 r13 rdx r13;
assert true && and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  uext carry_t2h_add_t2l 383 * (limbs 64 [ t1h_add_t1l_0, t1h_add_t1l_1, t1h_add_t1l_2, t1h_add_t1l_3, t1h_add_t1l_4, t1h_add_t1l_5 ])
];
assume and [
  limbs 64 [ r8, r9, r10, r11, r12, r13 ]
  =
  carry_t2h_add_t2l * (limbs 64 [ t1h_add_t1l_0, t1h_add_t1l_1, t1h_add_t1l_2, t1h_add_t1l_3, t1h_add_t1l_4, t1h_add_t1l_5 ])
] && true;
(* mov    (%rcx),%rax                              #! EA = L0x7fffffffd440; Value = 0x0000000000000000; PC = 0x555555565742 *)
mov rax L0x7fffffffd440;
(* mov    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd448; Value = 0x0000000000000000; PC = 0x555555565745 *)
mov rdx L0x7fffffffd448;
(* add    %rax,%r8                                 #! PC = 0x555555565749 *)
adds carry r8 r8 rax;
(* adc    %rdx,%r9                                 #! PC = 0x55555556574c *)
adcs carry r9 r9 rdx@uint64 carry;
(* adc    %rbx,%r10                                #! PC = 0x55555556574f *)
adcs carry r10 r10 rbx@uint64 carry;
(* adc    %rbp,%r11                                #! PC = 0x555555565752 *)
adcs carry r11 r11 rbp@uint64 carry;
(* adc    %r14,%r12                                #! PC = 0x555555565755 *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x555555565758 *)
adcs carry r13 r13 r15@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x60(%rsp)                           #! EA = L0x7fffffffd180; PC = 0x55555556575b *)
mov L0x7fffffffd180 r8;
(* mov    %r9,0x68(%rsp)                           #! EA = L0x7fffffffd188; PC = 0x555555565760 *)
mov L0x7fffffffd188 r9;
(* mov    %r10,0x70(%rsp)                          #! EA = L0x7fffffffd190; PC = 0x555555565765 *)
mov L0x7fffffffd190 r10;
(* mov    %r11,0x78(%rsp)                          #! EA = L0x7fffffffd198; PC = 0x55555556576a *)
mov L0x7fffffffd198 r11;
ghost m_t1h_t1l_t2h_t2l_0@uint64, m_t1h_t1l_t2h_t2l_1@uint64, m_t1h_t1l_t2h_t2l_2@uint64, m_t1h_t1l_t2h_t2l_3@uint64, m_t1h_t1l_t2h_t2l_4@uint64, m_t1h_t1l_t2h_t2l_5@uint64 :
  and [
    m_t1h_t1l_t2h_t2l_0 = r8, m_t1h_t1l_t2h_t2l_1 = r9, m_t1h_t1l_t2h_t2l_2 = r10,
    m_t1h_t1l_t2h_t2l_3 = r11, m_t1h_t1l_t2h_t2l_4 = r12, m_t1h_t1l_t2h_t2l_5 = r13
  ]
  &&
  and [
    m_t1h_t1l_t2h_t2l_0 = r8, m_t1h_t1l_t2h_t2l_1 = r9, m_t1h_t1l_t2h_t2l_2 = r10,
    m_t1h_t1l_t2h_t2l_3 = r11, m_t1h_t1l_t2h_t2l_4 = r12, m_t1h_t1l_t2h_t2l_5 = r13
  ];
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd200; Value = 0xfe945393e034712d; PC = 0x55555556576f *)
mov rdx L0x7fffffffd200;
(* mulx   (%rsi),%r9,%r8                           #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x555555565772 *)
mull r8 r9 L0x7fffffffd260 rdx;
(* mulx   0x8(%rsi),%r11,%r10                      #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x555555565777 *)
mull r10 r11 L0x7fffffffd268 rdx;
(* mov    %r9,(%rcx)                               #! EA = L0x7fffffffd440; PC = 0x55555556577d *)
mov L0x7fffffffd440 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565780 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x10(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x555555565783 *)
mull rbx rbp L0x7fffffffd270 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565789 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x55555556578f *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x18(%rsi),%r11,%r9                      #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x555555565795 *)
mull r9 r11 L0x7fffffffd278 rdx;
(* adox   %r11,%rbx                                #! PC = 0x55555556579b *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x5555555657a1 *)
mull rbp r14 L0x7fffffffd280 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555657a7 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x28(%rsi),%r15,%r11                     #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x5555555657ad *)
mull r11 r15 L0x7fffffffd288 rdx;
(* adox   %r15,%rbp                                #! PC = 0x5555555657b3 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555657b9 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd208; Value = 0xf181fbdfb2c4e07a; PC = 0x5555555657bf *)
mov rdx L0x7fffffffd208;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x5555555657c3 *)
mull r14 r15 L0x7fffffffd260 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555657c8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x5555555657cb *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rcx)                            #! EA = L0x7fffffffd448; PC = 0x5555555657d1 *)
mov L0x7fffffffd448 r8;
(* adcx   %r14,%r10                                #! PC = 0x5555555657d5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x5555555657db *)
mull r14 r15 L0x7fffffffd268 rdx;
(* adox   %r15,%r10                                #! PC = 0x5555555657e1 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x5555555657e7 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x5555555657ed *)
mull r8 r14 L0x7fffffffd270 rdx;
(* adox   %r14,%rbx                                #! PC = 0x5555555657f3 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555657f9 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x5555555657ff *)
mull r9 r15 L0x7fffffffd278 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565805 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x20(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x55555556580b *)
mull rbp r14 L0x7fffffffd280 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565811 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x28(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x555555565817 *)
mull rbp rdx L0x7fffffffd288 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x55555556581d *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565823 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565829 *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x55555556582f *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565835 *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd210; Value = 0xff32f8da58031cbe; PC = 0x55555556583b *)
mov rdx L0x7fffffffd210;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x55555556583f *)
mull r14 r15 L0x7fffffffd260 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565844 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565847 *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rcx)                          #! EA = L0x7fffffffd450; PC = 0x55555556584d *)
mov L0x7fffffffd450 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565851 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x555555565857 *)
mull r14 r15 L0x7fffffffd268 rdx;
(* adox   %r15,%rbx                                #! PC = 0x55555556585d *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565863 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x10(%rsi),%r14,%r10                     #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x555555565869 *)
mull r10 r14 L0x7fffffffd270 rdx;
(* adox   %r14,%r8                                 #! PC = 0x55555556586f *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565875 *)
adcs carry r9 r9 r10 carry;
(* mulx   0x18(%rsi),%r15,%r10                     #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x55555556587b *)
mull r10 r15 L0x7fffffffd278 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565881 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x20(%rsi),%r14,%r10                     #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x555555565887 *)
mull r10 r14 L0x7fffffffd280 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x55555556588d *)
adcs carry rbp rbp r10 carry;
(* mulx   0x28(%rsi),%rdx,%r10                     #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x555555565893 *)
mull r10 rdx L0x7fffffffd288 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565899 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x55555556589f *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x5555555658a5 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x5555555658ab *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x5555555658b1 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd218; Value = 0xcb6a9454b7d360b0; PC = 0x5555555658b7 *)
mov rdx L0x7fffffffd218;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x5555555658bb *)
mull r14 r15 L0x7fffffffd260 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555658c0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x5555555658c3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rcx)                          #! EA = L0x7fffffffd458; PC = 0x5555555658c9 *)
mov L0x7fffffffd458 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x5555555658cd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x5555555658d3 *)
mull r14 r15 L0x7fffffffd268 rdx;
(* adox   %r15,%r8                                 #! PC = 0x5555555658d9 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x5555555658df *)
adcs carry r9 r9 r14 carry;
(* mulx   0x10(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x5555555658e5 *)
mull rbx r14 L0x7fffffffd270 rdx;
(* adox   %r14,%r9                                 #! PC = 0x5555555658eb *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x5555555658f1 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x18(%rsi),%r15,%rbx                     #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x5555555658f7 *)
mull rbx r15 L0x7fffffffd278 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x5555555658fd *)
adcs carry rbp rbp rbx carry;
(* mulx   0x20(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x555555565903 *)
mull rbx r14 L0x7fffffffd280 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565909 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x28(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x55555556590f *)
mull rbx rdx L0x7fffffffd288 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565915 *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x55555556591b *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565921 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565927 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x55555556592d *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd220; Value = 0xcb97d6f162c37bea; PC = 0x555555565933 *)
mov rdx L0x7fffffffd220;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x555555565937 *)
mull r14 r15 L0x7fffffffd260 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556593c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x55555556593f *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rcx)                           #! EA = L0x7fffffffd460; PC = 0x555555565945 *)
mov L0x7fffffffd460 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565949 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x55555556594f *)
mull r14 r15 L0x7fffffffd268 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565955 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x55555556595b *)
adcs carry r11 r11 r14 carry;
(* mulx   0x10(%rsi),%r14,%r8                      #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x555555565961 *)
mull r8 r14 L0x7fffffffd270 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565967 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x55555556596d *)
adcs carry rbp rbp r8 carry;
(* mulx   0x18(%rsi),%r15,%r8                      #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x555555565973 *)
mull r8 r15 L0x7fffffffd278 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565979 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x20(%rsi),%r14,%r8                      #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x55555556597f *)
mull r8 r14 L0x7fffffffd280 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565985 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x28(%rsi),%rdx,%r8                      #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x55555556598b *)
mull r8 rdx L0x7fffffffd288 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565991 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565997 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x55555556599d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x5555555659a3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x5555555659a9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd228; Value = 0xa890b2d70e40ff53; PC = 0x5555555659af *)
mov rdx L0x7fffffffd228;
(* mulx   (%rsi),%r15,%r14                         #! EA = L0x7fffffffd260; Value = 0xd76414952ab8821b; PC = 0x5555555659b3 *)
mull r14 r15 L0x7fffffffd260 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555659b8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x5555555659bb *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rcx)                           #! EA = L0x7fffffffd468; PC = 0x5555555659c1 *)
mov L0x7fffffffd468 r9;
(* adcx   %r14,%r11                                #! PC = 0x5555555659c5 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x8(%rsi),%r15,%r14                      #! EA = L0x7fffffffd268; Value = 0x1cb9c2a2f92ee3ba; PC = 0x5555555659cb *)
mull r14 r15 L0x7fffffffd268 rdx;
(* adox   %r15,%r11                                #! PC = 0x5555555659d1 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555659d7 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x10(%rsi),%r14,%r9                      #! EA = L0x7fffffffd270; Value = 0x2897f442c276862f; PC = 0x5555555659dd *)
mull r9 r14 L0x7fffffffd270 rdx;
(* adox   %r14,%rbp                                #! PC = 0x5555555659e3 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x5555555659e9 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x18(%rsi),%r15,%r9                      #! EA = L0x7fffffffd278; Value = 0x42eb2e2d253fe146; PC = 0x5555555659ef *)
mull r9 r15 L0x7fffffffd278 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x5555555659f5 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x20(%rsi),%r14,%r9                      #! EA = L0x7fffffffd280; Value = 0x61430cb7249919ce; PC = 0x5555555659fb *)
mull r9 r14 L0x7fffffffd280 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565a01 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x28(%rsi),%rdx,%r9                      #! EA = L0x7fffffffd288; Value = 0xe3cd349ed6243fcd; PC = 0x555555565a07 *)
mull r9 rdx L0x7fffffffd288 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565a0d *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565a13 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565a19 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565a1f *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565a25 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rcx)                          #! EA = L0x7fffffffd470; PC = 0x555555565a2b *)
mov L0x7fffffffd470 r11;
(* mov    %rbp,0x38(%rcx)                          #! EA = L0x7fffffffd478; PC = 0x555555565a2f *)
mov L0x7fffffffd478 rbp;
(* mov    %r10,0x40(%rcx)                          #! EA = L0x7fffffffd480; PC = 0x555555565a33 *)
mov L0x7fffffffd480 r10;
(* mov    %rbx,0x48(%rcx)                          #! EA = L0x7fffffffd488; PC = 0x555555565a37 *)
mov L0x7fffffffd488 rbx;
(* mov    %r8,0x50(%rcx)                           #! EA = L0x7fffffffd490; PC = 0x555555565a3b *)
mov L0x7fffffffd490 r8;
(* mov    %r9,0x58(%rcx)                           #! EA = L0x7fffffffd498; PC = 0x555555565a3f *)
mov L0x7fffffffd498 r9;
(* mov    (%rsp),%rdx                              #! EA = L0x7fffffffd120; Value = 0x1aea40ee27c64ce3; PC = 0x555555565a43 *)
mov rdx L0x7fffffffd120;
(* mulx   0x30(%rsp),%r9,%r8                       #! EA = L0x7fffffffd150; Value = 0x7adc91759f2eed28; PC = 0x555555565a47 *)
mull r8 r9 L0x7fffffffd150 rdx;
(* mulx   0x38(%rsp),%r11,%r10                     #! EA = L0x7fffffffd158; Value = 0xb46bff58d2e4faef; PC = 0x555555565a4e *)
mull r10 r11 L0x7fffffffd158 rdx;
(* mov    %r9,0x60(%rcx)                           #! EA = L0x7fffffffd4a0; PC = 0x555555565a55 *)
mov L0x7fffffffd4a0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565a59 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsp),%rbp,%rbx                     #! EA = L0x7fffffffd160; Value = 0x4fc28f9773888587; PC = 0x555555565a5c *)
mull rbx rbp L0x7fffffffd160 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565a63 *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565a69 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsp),%r11,%r9                      #! EA = L0x7fffffffd168; Value = 0x1306832ef35a8d55; PC = 0x555555565a6f *)
mull r9 r11 L0x7fffffffd168 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565a76 *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd170; Value = 0x77007a322ae81c9e; PC = 0x555555565a7c *)
mull rbp r14 L0x7fffffffd170 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565a83 *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsp),%r15,%r11                     #! EA = L0x7fffffffd178; Value = 0xe3cdb938f0d22087; PC = 0x555555565a89 *)
mull r11 r15 L0x7fffffffd178 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565a90 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565a96 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd128; Value = 0x82d93ac9967e44ea; PC = 0x555555565a9c *)
mov rdx L0x7fffffffd128;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0x7adc91759f2eed28; PC = 0x555555565aa1 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565aa8 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565aab *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x68(%rcx)                           #! EA = L0x7fffffffd4a8; PC = 0x555555565ab1 *)
mov L0x7fffffffd4a8 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565ab5 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xb46bff58d2e4faef; PC = 0x555555565abb *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565ac2 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ac8 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd160; Value = 0x4fc28f9773888587; PC = 0x555555565ace *)
mull r8 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565ad5 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565adb *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd168; Value = 0x1306832ef35a8d55; PC = 0x555555565ae1 *)
mull r9 r15 L0x7fffffffd168 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565ae8 *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsp),%r14,%rbp                     #! EA = L0x7fffffffd170; Value = 0x77007a322ae81c9e; PC = 0x555555565aee *)
mull rbp r14 L0x7fffffffd170 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565af5 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsp),%rdx,%rbp                     #! EA = L0x7fffffffd178; Value = 0xe3cdb938f0d22087; PC = 0x555555565afb *)
mull rbp rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565b02 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565b08 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565b0e *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565b14 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565b1a *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rsp),%rdx                          #! EA = L0x7fffffffd130; Value = 0x12f8530d4e8c6953; PC = 0x555555565b20 *)
mov rdx L0x7fffffffd130;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0x7adc91759f2eed28; PC = 0x555555565b25 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565b2c *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565b2f *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555565b35 *)
mov L0x7fffffffd4b0 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565b39 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xb46bff58d2e4faef; PC = 0x555555565b3f *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565b46 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565b4c *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsp),%r14,%r10                     #! EA = L0x7fffffffd160; Value = 0x4fc28f9773888587; PC = 0x555555565b52 *)
mull r10 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565b59 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565b5f *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsp),%r15,%r10                     #! EA = L0x7fffffffd168; Value = 0x1306832ef35a8d55; PC = 0x555555565b65 *)
mull r10 r15 L0x7fffffffd168 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565b6c *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsp),%r14,%r10                     #! EA = L0x7fffffffd170; Value = 0x77007a322ae81c9e; PC = 0x555555565b72 *)
mull r10 r14 L0x7fffffffd170 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565b79 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsp),%rdx,%r10                     #! EA = L0x7fffffffd178; Value = 0xe3cdb938f0d22087; PC = 0x555555565b7f *)
mull r10 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565b86 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565b8c *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565b92 *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565b98 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565b9e *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rsp),%rdx                          #! EA = L0x7fffffffd138; Value = 0x56d3cda0c06f5318; PC = 0x555555565ba4 *)
mov rdx L0x7fffffffd138;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0x7adc91759f2eed28; PC = 0x555555565ba9 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565bb0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565bb3 *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x78(%rcx)                          #! EA = L0x7fffffffd4b8; PC = 0x555555565bb9 *)
mov L0x7fffffffd4b8 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565bbd *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xb46bff58d2e4faef; PC = 0x555555565bc3 *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565bca *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565bd0 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd160; Value = 0x4fc28f9773888587; PC = 0x555555565bd6 *)
mull rbx r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565bdd *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565be3 *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsp),%r15,%rbx                     #! EA = L0x7fffffffd168; Value = 0x1306832ef35a8d55; PC = 0x555555565be9 *)
mull rbx r15 L0x7fffffffd168 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565bf0 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsp),%r14,%rbx                     #! EA = L0x7fffffffd170; Value = 0x77007a322ae81c9e; PC = 0x555555565bf6 *)
mull rbx r14 L0x7fffffffd170 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565bfd *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsp),%rdx,%rbx                     #! EA = L0x7fffffffd178; Value = 0xe3cdb938f0d22087; PC = 0x555555565c03 *)
mull rbx rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565c0a *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565c10 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565c16 *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565c1c *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565c22 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x20(%rsp),%rdx                          #! EA = L0x7fffffffd140; Value = 0xd26e7f4c5396c138; PC = 0x555555565c28 *)
mov rdx L0x7fffffffd140;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0x7adc91759f2eed28; PC = 0x555555565c2d *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565c34 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565c37 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x80(%rcx)                           #! EA = L0x7fffffffd4c0; PC = 0x555555565c3d *)
mov L0x7fffffffd4c0 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565c44 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xb46bff58d2e4faef; PC = 0x555555565c4a *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565c51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565c57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsp),%r14,%r8                      #! EA = L0x7fffffffd160; Value = 0x4fc28f9773888587; PC = 0x555555565c5d *)
mull r8 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565c64 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565c6a *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsp),%r15,%r8                      #! EA = L0x7fffffffd168; Value = 0x1306832ef35a8d55; PC = 0x555555565c70 *)
mull r8 r15 L0x7fffffffd168 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565c77 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsp),%r14,%r8                      #! EA = L0x7fffffffd170; Value = 0x77007a322ae81c9e; PC = 0x555555565c7d *)
mull r8 r14 L0x7fffffffd170 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565c84 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsp),%rdx,%r8                      #! EA = L0x7fffffffd178; Value = 0xe3cdb938f0d22087; PC = 0x555555565c8a *)
mull r8 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565c91 *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565c97 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565c9d *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565ca3 *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565ca9 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rsp),%rdx                          #! EA = L0x7fffffffd148; Value = 0xa8914e3b4a1a30bb; PC = 0x555555565caf *)
mov rdx L0x7fffffffd148;
(* mulx   0x30(%rsp),%r15,%r14                     #! EA = L0x7fffffffd150; Value = 0x7adc91759f2eed28; PC = 0x555555565cb4 *)
mull r14 r15 L0x7fffffffd150 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565cbb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565cbe *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x88(%rcx)                           #! EA = L0x7fffffffd4c8; PC = 0x555555565cc4 *)
mov L0x7fffffffd4c8 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565ccb *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsp),%r15,%r14                     #! EA = L0x7fffffffd158; Value = 0xb46bff58d2e4faef; PC = 0x555555565cd1 *)
mull r14 r15 L0x7fffffffd158 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565cd8 *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565cde *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsp),%r14,%r9                      #! EA = L0x7fffffffd160; Value = 0x4fc28f9773888587; PC = 0x555555565ce4 *)
mull r9 r14 L0x7fffffffd160 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565ceb *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565cf1 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsp),%r15,%r9                      #! EA = L0x7fffffffd168; Value = 0x1306832ef35a8d55; PC = 0x555555565cf7 *)
mull r9 r15 L0x7fffffffd168 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565cfe *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsp),%r14,%r9                      #! EA = L0x7fffffffd170; Value = 0x77007a322ae81c9e; PC = 0x555555565d04 *)
mull r9 r14 L0x7fffffffd170 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565d0b *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsp),%rdx,%r9                      #! EA = L0x7fffffffd178; Value = 0xe3cdb938f0d22087; PC = 0x555555565d11 *)
mull r9 rdx L0x7fffffffd178 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x555555565d18 *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555565d1e *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555565d24 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x555555565d2a *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555565d30 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x90(%rcx)                          #! EA = L0x7fffffffd4d0; PC = 0x555555565d36 *)
mov L0x7fffffffd4d0 r11;
(* mov    %rbp,0x98(%rcx)                          #! EA = L0x7fffffffd4d8; PC = 0x555555565d3d *)
mov L0x7fffffffd4d8 rbp;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd4e0; PC = 0x555555565d44 *)
mov L0x7fffffffd4e0 r10;
(* mov    %rbx,0xa8(%rcx)                          #! EA = L0x7fffffffd4e8; PC = 0x555555565d4b *)
mov L0x7fffffffd4e8 rbx;
(* mov    %r8,0xb0(%rcx)                           #! EA = L0x7fffffffd4f0; PC = 0x555555565d52 *)
mov L0x7fffffffd4f0 r8;
(* mov    %r9,0xb8(%rcx)                           #! EA = L0x7fffffffd4f8; PC = 0x555555565d59 *)
mov L0x7fffffffd4f8 r9;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd230; Value = 0x1c55ed5a4791dbb6; PC = 0x555555565d60 *)
mov rdx L0x7fffffffd230;
(* mulx   0x30(%rsi),%r9,%r8                       #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x555555565d64 *)
mull r8 r9 L0x7fffffffd290 rdx;
(* mulx   0x38(%rsi),%r11,%r10                     #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x555555565d6a *)
mull r10 r11 L0x7fffffffd298 rdx;
(* mov    %r9,(%rsp)                               #! EA = L0x7fffffffd120; PC = 0x555555565d70 *)
mov L0x7fffffffd120 r9;
(* xor    %rax,%rax                                #! PC = 0x555555565d74 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x40(%rsi),%rbp,%rbx                     #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x555555565d77 *)
mull rbx rbp L0x7fffffffd2a0 rdx;
(* adox   %r11,%r8                                 #! PC = 0x555555565d7d *)
adcs overflow r8 r8 r11 overflow;
(* adox   %rbp,%r10                                #! PC = 0x555555565d83 *)
adcs overflow r10 r10 rbp overflow;
(* mulx   0x48(%rsi),%r11,%r9                      #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x555555565d89 *)
mull r9 r11 L0x7fffffffd2a8 rdx;
(* adox   %r11,%rbx                                #! PC = 0x555555565d8f *)
adcs overflow rbx rbx r11 overflow;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x555555565d95 *)
mull rbp r14 L0x7fffffffd2b0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565d9b *)
adcs overflow r9 r9 r14 overflow;
(* mulx   0x58(%rsi),%r15,%r11                     #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x555555565da1 *)
mull r11 r15 L0x7fffffffd2b8 rdx;
(* adox   %r15,%rbp                                #! PC = 0x555555565da7 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %rax,%r11                                #! PC = 0x555555565dad *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd238; Value = 0x91573ee9e3b9646f; PC = 0x555555565db3 *)
mov rdx L0x7fffffffd238;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x555555565db7 *)
mull r14 r15 L0x7fffffffd290 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565dbd *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565dc0 *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x8(%rsp)                            #! EA = L0x7fffffffd128; PC = 0x555555565dc6 *)
mov L0x7fffffffd128 r8;
(* adcx   %r14,%r10                                #! PC = 0x555555565dcb *)
adcs carry r10 r10 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x555555565dd1 *)
mull r14 r15 L0x7fffffffd298 rdx;
(* adox   %r15,%r10                                #! PC = 0x555555565dd7 *)
adcs overflow r10 r10 r15 overflow;
(* adcx   %r14,%rbx                                #! PC = 0x555555565ddd *)
adcs carry rbx rbx r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x555555565de3 *)
mull r8 r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%rbx                                #! PC = 0x555555565de9 *)
adcs overflow rbx rbx r14 overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555565def *)
adcs carry r8 r8 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x555555565df5 *)
mull r9 r15 L0x7fffffffd2a8 rdx;
(* adcx   %rbp,%r9                                 #! PC = 0x555555565dfb *)
adcs carry r9 r9 rbp carry;
(* mulx   0x50(%rsi),%r14,%rbp                     #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x555555565e01 *)
mull rbp r14 L0x7fffffffd2b0 rdx;
(* adcx   %rbp,%r11                                #! PC = 0x555555565e07 *)
adcs carry r11 r11 rbp carry;
(* mulx   0x58(%rsi),%rdx,%rbp                     #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x555555565e0d *)
mull rbp rdx L0x7fffffffd2b8 rdx;
(* adcx   %rax,%rbp                                #! PC = 0x555555565e13 *)
adcs carry rbp rbp rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r8                                 #! PC = 0x555555565e19 *)
adcs overflow r8 r8 r15 overflow;
(* adox   %r14,%r9                                 #! PC = 0x555555565e1f *)
adcs overflow r9 r9 r14 overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555565e25 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%rbp                                #! PC = 0x555555565e2b *)
adcs overflow rbp rbp rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd240; Value = 0x13c55a32f6894c94; PC = 0x555555565e31 *)
mov rdx L0x7fffffffd240;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x555555565e35 *)
mull r14 r15 L0x7fffffffd290 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565e3b *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r10                                #! PC = 0x555555565e3e *)
adcs carry r10 r10 r15 carry;
(* mov    %r10,0x10(%rsp)                          #! EA = L0x7fffffffd130; PC = 0x555555565e44 *)
mov L0x7fffffffd130 r10;
(* adcx   %r14,%rbx                                #! PC = 0x555555565e49 *)
adcs carry rbx rbx r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x555555565e4f *)
mull r14 r15 L0x7fffffffd298 rdx;
(* adox   %r15,%rbx                                #! PC = 0x555555565e55 *)
adcs overflow rbx rbx r15 overflow;
(* adcx   %r14,%r8                                 #! PC = 0x555555565e5b *)
adcs carry r8 r8 r14 carry;
(* mulx   0x40(%rsi),%r14,%r10                     #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x555555565e61 *)
mull r10 r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%r8                                 #! PC = 0x555555565e67 *)
adcs overflow r8 r8 r14 overflow;
(* adcx   %r10,%r9                                 #! PC = 0x555555565e6d *)
adcs carry r9 r9 r10 carry;
(* mulx   0x48(%rsi),%r15,%r10                     #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x555555565e73 *)
mull r10 r15 L0x7fffffffd2a8 rdx;
(* adcx   %r10,%r11                                #! PC = 0x555555565e79 *)
adcs carry r11 r11 r10 carry;
(* mulx   0x50(%rsi),%r14,%r10                     #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x555555565e7f *)
mull r10 r14 L0x7fffffffd2b0 rdx;
(* adcx   %r10,%rbp                                #! PC = 0x555555565e85 *)
adcs carry rbp rbp r10 carry;
(* mulx   0x58(%rsi),%rdx,%r10                     #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x555555565e8b *)
mull r10 rdx L0x7fffffffd2b8 rdx;
(* adcx   %rax,%r10                                #! PC = 0x555555565e91 *)
adcs carry r10 r10 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r9                                 #! PC = 0x555555565e97 *)
adcs overflow r9 r9 r15 overflow;
(* adox   %r14,%r11                                #! PC = 0x555555565e9d *)
adcs overflow r11 r11 r14 overflow;
(* adox   %rdx,%rbp                                #! PC = 0x555555565ea3 *)
adcs overflow rbp rbp rdx overflow;
(* adox   %rax,%r10                                #! PC = 0x555555565ea9 *)
adcs overflow r10 r10 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd248; Value = 0x8b69394c089bf267; PC = 0x555555565eaf *)
mov rdx L0x7fffffffd248;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x555555565eb3 *)
mull r14 r15 L0x7fffffffd290 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565eb9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%rbx                                #! PC = 0x555555565ebc *)
adcs carry rbx rbx r15 carry;
(* mov    %rbx,0x18(%rsp)                          #! EA = L0x7fffffffd138; PC = 0x555555565ec2 *)
mov L0x7fffffffd138 rbx;
(* adcx   %r14,%r8                                 #! PC = 0x555555565ec7 *)
adcs carry r8 r8 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x555555565ecd *)
mull r14 r15 L0x7fffffffd298 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555565ed3 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %r14,%r9                                 #! PC = 0x555555565ed9 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x40(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x555555565edf *)
mull rbx r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%r9                                 #! PC = 0x555555565ee5 *)
adcs overflow r9 r9 r14 overflow;
(* adcx   %rbx,%r11                                #! PC = 0x555555565eeb *)
adcs carry r11 r11 rbx carry;
(* mulx   0x48(%rsi),%r15,%rbx                     #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x555555565ef1 *)
mull rbx r15 L0x7fffffffd2a8 rdx;
(* adcx   %rbx,%rbp                                #! PC = 0x555555565ef7 *)
adcs carry rbp rbp rbx carry;
(* mulx   0x50(%rsi),%r14,%rbx                     #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x555555565efd *)
mull rbx r14 L0x7fffffffd2b0 rdx;
(* adcx   %rbx,%r10                                #! PC = 0x555555565f03 *)
adcs carry r10 r10 rbx carry;
(* mulx   0x58(%rsi),%rdx,%rbx                     #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x555555565f09 *)
mull rbx rdx L0x7fffffffd2b8 rdx;
(* adcx   %rax,%rbx                                #! PC = 0x555555565f0f *)
adcs carry rbx rbx rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r11                                #! PC = 0x555555565f15 *)
adcs overflow r11 r11 r15 overflow;
(* adox   %r14,%rbp                                #! PC = 0x555555565f1b *)
adcs overflow rbp rbp r14 overflow;
(* adox   %rdx,%r10                                #! PC = 0x555555565f21 *)
adcs overflow r10 r10 rdx overflow;
(* adox   %rax,%rbx                                #! PC = 0x555555565f27 *)
adcs overflow rbx rbx rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd250; Value = 0x06d6a85af0d3454d; PC = 0x555555565f2d *)
mov rdx L0x7fffffffd250;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x555555565f31 *)
mull r14 r15 L0x7fffffffd290 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565f37 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r8                                 #! PC = 0x555555565f3a *)
adcs carry r8 r8 r15 carry;
(* mov    %r8,0x20(%rsp)                           #! EA = L0x7fffffffd140; PC = 0x555555565f40 *)
mov L0x7fffffffd140 r8;
(* adcx   %r14,%r9                                 #! PC = 0x555555565f45 *)
adcs carry r9 r9 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x555555565f4b *)
mull r14 r15 L0x7fffffffd298 rdx;
(* adox   %r15,%r9                                 #! PC = 0x555555565f51 *)
adcs overflow r9 r9 r15 overflow;
(* adcx   %r14,%r11                                #! PC = 0x555555565f57 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x40(%rsi),%r14,%r8                      #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x555555565f5d *)
mull r8 r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%r11                                #! PC = 0x555555565f63 *)
adcs overflow r11 r11 r14 overflow;
(* adcx   %r8,%rbp                                 #! PC = 0x555555565f69 *)
adcs carry rbp rbp r8 carry;
(* mulx   0x48(%rsi),%r15,%r8                      #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x555555565f6f *)
mull r8 r15 L0x7fffffffd2a8 rdx;
(* adcx   %r8,%r10                                 #! PC = 0x555555565f75 *)
adcs carry r10 r10 r8 carry;
(* mulx   0x50(%rsi),%r14,%r8                      #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x555555565f7b *)
mull r8 r14 L0x7fffffffd2b0 rdx;
(* adcx   %r8,%rbx                                 #! PC = 0x555555565f81 *)
adcs carry rbx rbx r8 carry;
(* mulx   0x58(%rsi),%rdx,%r8                      #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x555555565f87 *)
mull r8 rdx L0x7fffffffd2b8 rdx;
(* adcx   %rax,%r8                                 #! PC = 0x555555565f8d *)
adcs carry r8 r8 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%rbp                                #! PC = 0x555555565f93 *)
adcs overflow rbp rbp r15 overflow;
(* adox   %r14,%r10                                #! PC = 0x555555565f99 *)
adcs overflow r10 r10 r14 overflow;
(* adox   %rdx,%rbx                                #! PC = 0x555555565f9f *)
adcs overflow rbx rbx rdx overflow;
(* adox   %rax,%r8                                 #! PC = 0x555555565fa5 *)
adcs overflow r8 r8 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd258; Value = 0x00009b643bd93168; PC = 0x555555565fab *)
mov rdx L0x7fffffffd258;
(* mulx   0x30(%rsi),%r15,%r14                     #! EA = L0x7fffffffd290; Value = 0xa3787ce074766b0d; PC = 0x555555565faf *)
mull r14 r15 L0x7fffffffd290 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555565fb5 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r15,%r9                                 #! PC = 0x555555565fb8 *)
adcs carry r9 r9 r15 carry;
(* mov    %r9,0x28(%rsp)                           #! EA = L0x7fffffffd148; PC = 0x555555565fbe *)
mov L0x7fffffffd148 r9;
(* adcx   %r14,%r11                                #! PC = 0x555555565fc3 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x38(%rsi),%r15,%r14                     #! EA = L0x7fffffffd298; Value = 0x97b23cb5d9b61734; PC = 0x555555565fc9 *)
mull r14 r15 L0x7fffffffd298 rdx;
(* adox   %r15,%r11                                #! PC = 0x555555565fcf *)
adcs overflow r11 r11 r15 overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555565fd5 *)
adcs carry rbp rbp r14 carry;
(* mulx   0x40(%rsi),%r14,%r9                      #! EA = L0x7fffffffd2a0; Value = 0x272a9b54b111ff58; PC = 0x555555565fdb *)
mull r9 r14 L0x7fffffffd2a0 rdx;
(* adox   %r14,%rbp                                #! PC = 0x555555565fe1 *)
adcs overflow rbp rbp r14 overflow;
(* adcx   %r9,%r10                                 #! PC = 0x555555565fe7 *)
adcs carry r10 r10 r9 carry;
(* mulx   0x48(%rsi),%r15,%r9                      #! EA = L0x7fffffffd2a8; Value = 0xd01b5501ce1aac0f; PC = 0x555555565fed *)
mull r9 r15 L0x7fffffffd2a8 rdx;
(* adcx   %r9,%rbx                                 #! PC = 0x555555565ff3 *)
adcs carry rbx rbx r9 carry;
(* mulx   0x50(%rsi),%r14,%r9                      #! EA = L0x7fffffffd2b0; Value = 0x15bd6d7b064f02cf; PC = 0x555555565ff9 *)
mull r9 r14 L0x7fffffffd2b0 rdx;
(* adcx   %r9,%r8                                  #! PC = 0x555555565fff *)
adcs carry r8 r8 r9 carry;
(* mulx   0x58(%rsi),%rdx,%r9                      #! EA = L0x7fffffffd2b8; Value = 0x0000849a1aade0ba; PC = 0x555555566005 *)
mull r9 rdx L0x7fffffffd2b8 rdx;
(* adcx   %rax,%r9                                 #! PC = 0x55555556600b *)
adcs carry r9 r9 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566011 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %r14,%rbx                                #! PC = 0x555555566017 *)
adcs overflow rbx rbx r14 overflow;
(* adox   %rdx,%r8                                 #! PC = 0x55555556601d *)
adcs overflow r8 r8 rdx overflow;
(* adox   %rax,%r9                                 #! PC = 0x555555566023 *)
adcs overflow r9 r9 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    %r11,0x30(%rsp)                          #! EA = L0x7fffffffd150; PC = 0x555555566029 *)
mov L0x7fffffffd150 r11;
(* mov    %rbp,0x38(%rsp)                          #! EA = L0x7fffffffd158; PC = 0x55555556602e *)
mov L0x7fffffffd158 rbp;
(* mov    %r10,0x40(%rsp)                          #! EA = L0x7fffffffd160; PC = 0x555555566033 *)
mov L0x7fffffffd160 r10;
(* mov    %rbx,0x48(%rsp)                          #! EA = L0x7fffffffd168; PC = 0x555555566038 *)
mov L0x7fffffffd168 rbx;
(* mov    %r8,0x50(%rsp)                           #! EA = L0x7fffffffd170; PC = 0x55555556603d *)
mov L0x7fffffffd170 r8;
(* mov    %r9,0x58(%rsp)                           #! EA = L0x7fffffffd178; PC = 0x555555566042 *)
mov L0x7fffffffd178 r9;
(* mov    0x60(%rsp),%r8                           #! EA = L0x7fffffffd180; Value = 0x0000000000000000; PC = 0x555555566047 *)
mov r8 L0x7fffffffd180;
(* mov    0x68(%rsp),%r9                           #! EA = L0x7fffffffd188; Value = 0x0000000000000000; PC = 0x55555556604c *)
mov r9 L0x7fffffffd188;
(* mov    0x70(%rsp),%r10                          #! EA = L0x7fffffffd190; Value = 0x0000000000000000; PC = 0x555555566051 *)
mov r10 L0x7fffffffd190;
(* mov    0x78(%rsp),%r11                          #! EA = L0x7fffffffd198; Value = 0x0000000000000000; PC = 0x555555566056 *)
mov r11 L0x7fffffffd198;
(* mov    0x90(%rcx),%rax                          #! EA = L0x7fffffffd4d0; Value = 0xdb80ffed06d42d2a; PC = 0x55555556605b *)
mov rax L0x7fffffffd4d0;
(* add    %rax,%r8                                 #! PC = 0x555555566062 *)
adds carry r8 r8 rax;
(* mov    0x98(%rcx),%rax                          #! EA = L0x7fffffffd4d8; Value = 0x14c0672ae29a03c0; PC = 0x555555566065 *)
mov rax L0x7fffffffd4d8;
(* adc    %rax,%r9                                 #! PC = 0x55555556606c *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    0xa0(%rcx),%rax                          #! EA = L0x7fffffffd4e0; Value = 0x12c3a74d0225ffa4; PC = 0x55555556606f *)
mov rax L0x7fffffffd4e0;
(* adc    %rax,%r10                                #! PC = 0x555555566076 *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    0xa8(%rcx),%rax                          #! EA = L0x7fffffffd4e8; Value = 0x8aaf93aed32b15df; PC = 0x555555566079 *)
mov rax L0x7fffffffd4e8;
(* adc    %rax,%r11                                #! PC = 0x555555566080 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    0xb0(%rcx),%rax                          #! EA = L0x7fffffffd4f0; Value = 0xd3d0bf0bc1056466; PC = 0x555555566083 *)
mov rax L0x7fffffffd4f0;
(* adc    %rax,%r12                                #! PC = 0x55555556608a *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    0xb8(%rcx),%rax                          #! EA = L0x7fffffffd4f8; Value = 0x96004eb0b8141ba9; PC = 0x55555556608d *)
mov rax L0x7fffffffd4f8;
(* adc    %rax,%r13                                #! PC = 0x555555566094 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    0x60(%rcx),%rdi                          #! EA = L0x7fffffffd4a0; Value = 0x6877a62a99f42a78; PC = 0x555555566097 *)
mov rdi L0x7fffffffd4a0;
(* sub    (%rcx),%rdi                              #! EA = L0x7fffffffd440; Value = 0x19190be70158c9bf; PC = 0x55555556609b *)
subb carry rdi rdi L0x7fffffffd440;
(* mov    0x68(%rcx),%rdx                          #! EA = L0x7fffffffd4a8; Value = 0x6f48f7b3f3288a45; PC = 0x55555556609e *)
mov rdx L0x7fffffffd4a8;
(* sbb    0x8(%rcx),%rdx                           #! EA = L0x7fffffffd448; Value = 0x4cb3188b76646663; PC = 0x5555555660a2 *)
sbbs carry rdx rdx L0x7fffffffd448 carry;
(* mov    0x70(%rcx),%rbx                          #! EA = L0x7fffffffd4b0; Value = 0xa5708f76b6d7ec55; PC = 0x5555555660a6 *)
mov rbx L0x7fffffffd4b0;
(* sbb    0x10(%rcx),%rbx                          #! EA = L0x7fffffffd450; Value = 0xa6dc61e337a66032; PC = 0x5555555660aa *)
sbbs carry rbx rbx L0x7fffffffd450 carry;
(* mov    0x78(%rcx),%rbp                          #! EA = L0x7fffffffd4b8; Value = 0x90a7d90c94d4daf3; PC = 0x5555555660ae *)
mov rbp L0x7fffffffd4b8;
(* sbb    0x18(%rcx),%rbp                          #! EA = L0x7fffffffd458; Value = 0x095be48b7d672f68; PC = 0x5555555660b2 *)
sbbs carry rbp rbp L0x7fffffffd458 carry;
(* mov    0x80(%rcx),%r14                          #! EA = L0x7fffffffd4c0; Value = 0xb5bd9ca385c26e72; PC = 0x5555555660b6 *)
mov r14 L0x7fffffffd4c0;
(* sbb    0x20(%rcx),%r14                          #! EA = L0x7fffffffd460; Value = 0xef86279f8c74d419; PC = 0x5555555660bd *)
sbbs carry r14 r14 L0x7fffffffd460 carry;
(* mov    0x88(%rcx),%r15                          #! EA = L0x7fffffffd4c8; Value = 0x7bab29b1dfdb4888; PC = 0x5555555660c1 *)
mov r15 L0x7fffffffd4c8;
(* sbb    0x28(%rcx),%r15                          #! EA = L0x7fffffffd468; Value = 0x611f528166f00f91; PC = 0x5555555660c8 *)
sbbs carry r15 r15 L0x7fffffffd468 carry;
(* sbb    0x30(%rcx),%r8                           #! EA = L0x7fffffffd470; Value = 0x650d754d4d133a28; PC = 0x5555555660cc *)
sbbs carry r8 r8 L0x7fffffffd470 carry;
(* sbb    0x38(%rcx),%r9                           #! EA = L0x7fffffffd478; Value = 0x37a074afc3b1b910; PC = 0x5555555660d0 *)
sbbs carry r9 r9 L0x7fffffffd478 carry;
(* sbb    0x40(%rcx),%r10                          #! EA = L0x7fffffffd480; Value = 0x6d2315470af4258b; PC = 0x5555555660d4 *)
sbbs carry r10 r10 L0x7fffffffd480 carry;
(* sbb    0x48(%rcx),%r11                          #! EA = L0x7fffffffd488; Value = 0x623564f2e7328eec; PC = 0x5555555660d8 *)
sbbs carry r11 r11 L0x7fffffffd488 carry;
(* sbb    0x50(%rcx),%r12                          #! EA = L0x7fffffffd490; Value = 0x87b1ba8fb0b53379; PC = 0x5555555660dc *)
sbbs carry r12 r12 L0x7fffffffd490 carry;
(* sbb    0x58(%rcx),%r13                          #! EA = L0x7fffffffd498; Value = 0x95ff6d19e27cefef; PC = 0x5555555660e0 *)
sbbs carry r13 r13 L0x7fffffffd498 carry;
(* sub    (%rsp),%rdi                              #! EA = L0x7fffffffd120; Value = 0xcff9458957213a3e; PC = 0x5555555660e4 *)
subb carry rdi rdi L0x7fffffffd120;
(* sbb    0x8(%rsp),%rdx                           #! EA = L0x7fffffffd128; Value = 0x5c8275c1f73f5989; PC = 0x5555555660e8 *)
sbbs carry rdx rdx L0x7fffffffd128 carry;
(* sbb    0x10(%rsp),%rbx                          #! EA = L0x7fffffffd130; Value = 0x22cd1075a4e79766; PC = 0x5555555660ed *)
sbbs carry rbx rbx L0x7fffffffd130 carry;
(* sbb    0x18(%rsp),%rbp                          #! EA = L0x7fffffffd138; Value = 0xb946ae59ccebdb32; PC = 0x5555555660f2 *)
sbbs carry rbp rbp L0x7fffffffd138 carry;
(* sbb    0x20(%rsp),%r14                          #! EA = L0x7fffffffd140; Value = 0x2da907d1b742dfaa; PC = 0x5555555660f7 *)
sbbs carry r14 r14 L0x7fffffffd140 carry;
(* sbb    0x28(%rsp),%r15                          #! EA = L0x7fffffffd148; Value = 0xd666979c5d563cd5; PC = 0x5555555660fc *)
sbbs carry r15 r15 L0x7fffffffd148 carry;
(* sbb    0x30(%rsp),%r8                           #! EA = L0x7fffffffd150; Value = 0xc21bc15f5c3f76c2; PC = 0x555555566101 *)
sbbs carry r8 r8 L0x7fffffffd150 carry;
(* sbb    0x38(%rsp),%r9                           #! EA = L0x7fffffffd158; Value = 0xdf40277e23f82911; PC = 0x555555566106 *)
sbbs carry r9 r9 L0x7fffffffd158 carry;
(* sbb    0x40(%rsp),%r10                          #! EA = L0x7fffffffd160; Value = 0xcd8005ffc98090f4; PC = 0x55555556610b *)
sbbs carry r10 r10 L0x7fffffffd160 carry;
(* sbb    0x48(%rsp),%r11                          #! EA = L0x7fffffffd168; Value = 0x28cef156e8539319; PC = 0x555555566110 *)
sbbs carry r11 r11 L0x7fffffffd168 carry;
(* sbb    0x50(%rsp),%r12                          #! EA = L0x7fffffffd170; Value = 0xb75a85497b54dd7b; PC = 0x555555566115 *)
sbbs carry r12 r12 L0x7fffffffd170 carry;
(* sbb    0x58(%rsp),%r13                          #! EA = L0x7fffffffd178; Value = 0x00000000507d3959; PC = 0x55555556611a *)
sbbs carry r13 r13 L0x7fffffffd178 carry;
(* NOTE: proving this assertion requires previous declared ghost variables (which are provided by `prove with` in the following cut) *)
assert and [
  eqmod
    (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
    (
      (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05 ] * limbs 64 [ t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
      +
      (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ] * limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05 ])
    )
    (2**768)
] && and [
  (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ t2_06, t2_07, t2_08, t2_09, t2_10, t2_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  +
  (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ] * limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
  <u
  (2**768)@832
];
assume and [
  (limbs 64 [ rdi, rdx, rbx, rbp, r14, r15, r8, r9, r10, r11, r12, r13 ])
  =
  (
    (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05 ] * limbs 64 [ t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
    +
    (limbs 64 [ t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ] * limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05 ])
  )
] && true;
(* mov    0x30(%rcx),%rax                          #! EA = L0x7fffffffd470; Value = 0x650d754d4d133a28; PC = 0x55555556611f *)
mov rax L0x7fffffffd470;
(* add    %rdi,%rax                                #! PC = 0x555555566123 *)
adds carry rax rax rdi;
(* mov    %rax,0x30(%rcx)                          #! EA = L0x7fffffffd470; PC = 0x555555566126 *)
mov L0x7fffffffd470 rax;
(* mov    0x38(%rcx),%rax                          #! EA = L0x7fffffffd478; Value = 0x37a074afc3b1b910; PC = 0x55555556612a *)
mov rax L0x7fffffffd478;
(* adc    %rdx,%rax                                #! PC = 0x55555556612e *)
adcs carry rax rax rdx@uint64 carry;
(* mov    %rax,0x38(%rcx)                          #! EA = L0x7fffffffd478; PC = 0x555555566131 *)
mov L0x7fffffffd478 rax;
(* mov    0x40(%rcx),%rax                          #! EA = L0x7fffffffd480; Value = 0x6d2315470af4258b; PC = 0x555555566135 *)
mov rax L0x7fffffffd480;
(* adc    %rbx,%rax                                #! PC = 0x555555566139 *)
adcs carry rax rax rbx@uint64 carry;
(* mov    %rax,0x40(%rcx)                          #! EA = L0x7fffffffd480; PC = 0x55555556613c *)
mov L0x7fffffffd480 rax;
(* mov    0x48(%rcx),%rax                          #! EA = L0x7fffffffd488; Value = 0x623564f2e7328eec; PC = 0x555555566140 *)
mov rax L0x7fffffffd488;
(* adc    %rbp,%rax                                #! PC = 0x555555566144 *)
adcs carry rax rax rbp@uint64 carry;
(* mov    %rax,0x48(%rcx)                          #! EA = L0x7fffffffd488; PC = 0x555555566147 *)
mov L0x7fffffffd488 rax;
(* mov    0x50(%rcx),%rax                          #! EA = L0x7fffffffd490; Value = 0x87b1ba8fb0b53379; PC = 0x55555556614b *)
mov rax L0x7fffffffd490;
(* adc    %r14,%rax                                #! PC = 0x55555556614f *)
adcs carry rax rax r14@uint64 carry;
(* mov    %rax,0x50(%rcx)                          #! EA = L0x7fffffffd490; PC = 0x555555566152 *)
mov L0x7fffffffd490 rax;
(* mov    0x58(%rcx),%rax                          #! EA = L0x7fffffffd498; Value = 0x95ff6d19e27cefef; PC = 0x555555566156 *)
mov rax L0x7fffffffd498;
(* adc    %r15,%rax                                #! PC = 0x55555556615a *)
adcs carry rax rax r15@uint64 carry;
(* mov    %rax,0x58(%rcx)                          #! EA = L0x7fffffffd498; PC = 0x55555556615d *)
mov L0x7fffffffd498 rax;
(* mov    (%rsp),%rax                              #! EA = L0x7fffffffd120; Value = 0xcff9458957213a3e; PC = 0x555555566161 *)
mov rax L0x7fffffffd120;
(* adc    %rax,%r8                                 #! PC = 0x555555566165 *)
adcs carry r8 r8 rax@uint64 carry;
(* mov    %r8,0x60(%rcx)                           #! EA = L0x7fffffffd4a0; PC = 0x555555566168 *)
mov L0x7fffffffd4a0 r8;
(* mov    0x8(%rsp),%rax                           #! EA = L0x7fffffffd128; Value = 0x5c8275c1f73f5989; PC = 0x55555556616c *)
mov rax L0x7fffffffd128;
(* adc    %rax,%r9                                 #! PC = 0x555555566171 *)
adcs carry r9 r9 rax@uint64 carry;
(* mov    %r9,0x68(%rcx)                           #! EA = L0x7fffffffd4a8; PC = 0x555555566174 *)
mov L0x7fffffffd4a8 r9;
(* mov    0x10(%rsp),%rax                          #! EA = L0x7fffffffd130; Value = 0x22cd1075a4e79766; PC = 0x555555566178 *)
mov rax L0x7fffffffd130;
(* adc    %rax,%r10                                #! PC = 0x55555556617d *)
adcs carry r10 r10 rax@uint64 carry;
(* mov    %r10,0x70(%rcx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555566180 *)
mov L0x7fffffffd4b0 r10;
(* mov    0x18(%rsp),%rax                          #! EA = L0x7fffffffd138; Value = 0xb946ae59ccebdb32; PC = 0x555555566184 *)
mov rax L0x7fffffffd138;
(* adc    %rax,%r11                                #! PC = 0x555555566189 *)
adcs carry r11 r11 rax@uint64 carry;
(* mov    %r11,0x78(%rcx)                          #! EA = L0x7fffffffd4b8; PC = 0x55555556618c *)
mov L0x7fffffffd4b8 r11;
(* mov    0x20(%rsp),%rax                          #! EA = L0x7fffffffd140; Value = 0x2da907d1b742dfaa; PC = 0x555555566190 *)
mov rax L0x7fffffffd140;
(* adc    %rax,%r12                                #! PC = 0x555555566195 *)
adcs carry r12 r12 rax@uint64 carry;
(* mov    %r12,0x80(%rcx)                          #! EA = L0x7fffffffd4c0; PC = 0x555555566198 *)
mov L0x7fffffffd4c0 r12;
(* mov    0x28(%rsp),%rax                          #! EA = L0x7fffffffd148; Value = 0xd666979c5d563cd5; PC = 0x55555556619f *)
mov rax L0x7fffffffd148;
(* adc    %rax,%r13                                #! PC = 0x5555555661a4 *)
adcs carry r13 r13 rax@uint64 carry;
(* mov    %r13,0x88(%rcx)                          #! EA = L0x7fffffffd4c8; PC = 0x5555555661a7 *)
mov L0x7fffffffd4c8 r13;
(* mov    0x30(%rsp),%r8                           #! EA = L0x7fffffffd150; Value = 0xc21bc15f5c3f76c2; PC = 0x5555555661ae *)
mov r8 L0x7fffffffd150;
(* mov    0x38(%rsp),%r9                           #! EA = L0x7fffffffd158; Value = 0xdf40277e23f82911; PC = 0x5555555661b3 *)
mov r9 L0x7fffffffd158;
(* mov    0x40(%rsp),%r10                          #! EA = L0x7fffffffd160; Value = 0xcd8005ffc98090f4; PC = 0x5555555661b8 *)
mov r10 L0x7fffffffd160;
(* mov    0x48(%rsp),%r11                          #! EA = L0x7fffffffd168; Value = 0x28cef156e8539319; PC = 0x5555555661bd *)
mov r11 L0x7fffffffd168;
(* mov    0x50(%rsp),%r12                          #! EA = L0x7fffffffd170; Value = 0xb75a85497b54dd7b; PC = 0x5555555661c2 *)
mov r12 L0x7fffffffd170;
(* mov    0x58(%rsp),%r13                          #! EA = L0x7fffffffd178; Value = 0x00000000507d3959; PC = 0x5555555661c7 *)
mov r13 L0x7fffffffd178;
(* adc    $0x0,%r8                                 #! PC = 0x5555555661cc *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x5555555661d0 *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x5555555661d4 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x5555555661d8 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x5555555661dc *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x5555555661e0 *)
adcs carry r13 r13 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* add    $0x98,%rsp                               #! PC = 0x5555555661e4 *)
adds carry rsp rsp 0x98@uint64;
(* mov    %r8,0x90(%rcx)                           #! EA = L0x7fffffffd4d0; PC = 0x5555555661eb *)
mov L0x7fffffffd4d0 r8;
(* mov    %r9,0x98(%rcx)                           #! EA = L0x7fffffffd4d8; PC = 0x5555555661f2 *)
mov L0x7fffffffd4d8 r9;
(* mov    %r10,0xa0(%rcx)                          #! EA = L0x7fffffffd4e0; PC = 0x5555555661f9 *)
mov L0x7fffffffd4e0 r10;
(* mov    %r11,0xa8(%rcx)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566200 *)
mov L0x7fffffffd4e8 r11;
(* mov    %r12,0xb0(%rcx)                          #! EA = L0x7fffffffd4f0; PC = 0x555555566207 *)
mov L0x7fffffffd4f0 r12;
(* mov    %r13,0xb8(%rcx)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556620e *)
mov L0x7fffffffd4f8 r13;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x55555556621f *)
#retq                                           #! 0x55555556621f = 0x55555556621f;

ghost tt3_0_00@uint64, tt3_0_01@uint64, tt3_0_02@uint64, tt3_0_03@uint64, tt3_0_04@uint64, tt3_0_05@uint64,
      tt3_0_06@uint64, tt3_0_07@uint64, tt3_0_08@uint64, tt3_0_09@uint64, tt3_0_10@uint64, tt3_0_11@uint64,
      tt3_0_12@uint64, tt3_0_13@uint64, tt3_0_14@uint64, tt3_0_15@uint64, tt3_0_16@uint64, tt3_0_17@uint64,
      tt3_0_18@uint64, tt3_0_19@uint64, tt3_0_20@uint64, tt3_0_21@uint64, tt3_0_22@uint64, tt3_0_23@uint64 :
  and [
    tt3_0_00 = L0x7fffffffd440, tt3_0_01 = L0x7fffffffd448, tt3_0_02 = L0x7fffffffd450,
    tt3_0_03 = L0x7fffffffd458, tt3_0_04 = L0x7fffffffd460, tt3_0_05 = L0x7fffffffd468,
    tt3_0_06 = L0x7fffffffd470, tt3_0_07 = L0x7fffffffd478, tt3_0_08 = L0x7fffffffd480,
    tt3_0_09 = L0x7fffffffd488, tt3_0_10 = L0x7fffffffd490, tt3_0_11 = L0x7fffffffd498,
    tt3_0_12 = L0x7fffffffd4a0, tt3_0_13 = L0x7fffffffd4a8, tt3_0_14 = L0x7fffffffd4b0,
    tt3_0_15 = L0x7fffffffd4b8, tt3_0_16 = L0x7fffffffd4c0, tt3_0_17 = L0x7fffffffd4c8,
    tt3_0_18 = L0x7fffffffd4d0, tt3_0_19 = L0x7fffffffd4d8, tt3_0_20 = L0x7fffffffd4e0,
    tt3_0_21 = L0x7fffffffd4e8, tt3_0_22 = L0x7fffffffd4f0, tt3_0_23 = L0x7fffffffd4f8
  ] &&
  and [
    tt3_0_00 = L0x7fffffffd440, tt3_0_01 = L0x7fffffffd448, tt3_0_02 = L0x7fffffffd450,
    tt3_0_03 = L0x7fffffffd458, tt3_0_04 = L0x7fffffffd460, tt3_0_05 = L0x7fffffffd468,
    tt3_0_06 = L0x7fffffffd470, tt3_0_07 = L0x7fffffffd478, tt3_0_08 = L0x7fffffffd480,
    tt3_0_09 = L0x7fffffffd488, tt3_0_10 = L0x7fffffffd490, tt3_0_11 = L0x7fffffffd498,
    tt3_0_12 = L0x7fffffffd4a0, tt3_0_13 = L0x7fffffffd4a8, tt3_0_14 = L0x7fffffffd4b0,
    tt3_0_15 = L0x7fffffffd4b8, tt3_0_16 = L0x7fffffffd4c0, tt3_0_17 = L0x7fffffffd4c8,
    tt3_0_18 = L0x7fffffffd4d0, tt3_0_19 = L0x7fffffffd4d8, tt3_0_20 = L0x7fffffffd4e0,
    tt3_0_21 = L0x7fffffffd4e8, tt3_0_22 = L0x7fffffffd4f0, tt3_0_23 = L0x7fffffffd4f8
  ];

# Ecut 4
ecut and [
       (limbs 64 [ tt3_0_00, tt3_0_01, tt3_0_02, tt3_0_03, tt3_0_04, tt3_0_05, tt3_0_06, tt3_0_07, tt3_0_08, tt3_0_09, tt3_0_10, tt3_0_11,
                   tt3_0_12, tt3_0_13, tt3_0_14, tt3_0_15, tt3_0_16, tt3_0_17, tt3_0_18, tt3_0_19, tt3_0_20, tt3_0_21, tt3_0_22, tt3_0_23 ])
       =
       (
         (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ])
         *
         (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ])
       )
     ] prove with [all ghosts];
assume true &&
       (limbs 64 [ tt3_0_00, tt3_0_01, tt3_0_02, tt3_0_03, tt3_0_04, tt3_0_05, tt3_0_06, tt3_0_07, tt3_0_08, tt3_0_09, tt3_0_10, tt3_0_11,
                   tt3_0_12, tt3_0_13, tt3_0_14, tt3_0_15, tt3_0_16, tt3_0_17, tt3_0_18, tt3_0_19, tt3_0_20, tt3_0_21, tt3_0_22, tt3_0_23 ])
       =
       (
         uext (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ]) 768
         *
         uext (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ]) 768
       );
# Rcut 4
rcut (limbs 64 [ tt3_0_00, tt3_0_01, tt3_0_02, tt3_0_03, tt3_0_04, tt3_0_05, tt3_0_06, tt3_0_07, tt3_0_08, tt3_0_09, tt3_0_10, tt3_0_11,
                 tt3_0_12, tt3_0_13, tt3_0_14, tt3_0_15, tt3_0_16, tt3_0_17, tt3_0_18, tt3_0_19, tt3_0_20, tt3_0_21, tt3_0_22, tt3_0_23 ])
     =
     (
       uext (limbs 64 [ t1_00, t1_01, t1_02, t1_03, t1_04, t1_05, t1_06, t1_07, t1_08, t1_09, t1_10, t1_11 ]) 768
       *
       uext (limbs 64 [ t2_00, t2_01, t2_02, t2_03, t2_04, t2_05, t2_06, t2_07, t2_08, t2_09, t2_10, t2_11 ]) 768
     ) prove with [precondition, all ghosts, cuts [0,1]];

// mp_dblsubfast(tt1, tt2, tt3);                    // tt3 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
(* mov    %r12,%rdx                                #! PC = 0x555555558ebf *)
mov rdx r12;
(* mov    %r13,%rsi                                #! PC = 0x555555558ec2 *)
mov rsi r13;
(* mov    %rbp,%rdi                                #! PC = 0x555555558ec5 *)
mov rdi rbp;
(* #callq  0x555555566e4d <mp_dblsub751x2_asm>     #! PC = 0x555555558ec8 *)
#callq  0x555555566e4d <mp_dblsub751x2_asm>     #! 0x555555558ec8 = 0x555555558ec8;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* mov    (%rdx),%r8                               #! EA = L0x7fffffffd440; Value = 0x19190be70158c9bf; PC = 0x555555566e55 *)
mov r8 L0x7fffffffd440;
(* mov    0x8(%rdx),%r9                            #! EA = L0x7fffffffd448; Value = 0x4cb3188b76646663; PC = 0x555555566e58 *)
mov r9 L0x7fffffffd448;
(* mov    0x10(%rdx),%r10                          #! EA = L0x7fffffffd450; Value = 0xa6dc61e337a66032; PC = 0x555555566e5c *)
mov r10 L0x7fffffffd450;
(* mov    0x18(%rdx),%r11                          #! EA = L0x7fffffffd458; Value = 0x095be48b7d672f68; PC = 0x555555566e60 *)
mov r11 L0x7fffffffd458;
(* mov    0x20(%rdx),%r12                          #! EA = L0x7fffffffd460; Value = 0xef86279f8c74d419; PC = 0x555555566e64 *)
mov r12 L0x7fffffffd460;
(* mov    0x28(%rdx),%r13                          #! EA = L0x7fffffffd468; Value = 0x611f528166f00f91; PC = 0x555555566e68 *)
mov r13 L0x7fffffffd468;
(* mov    0x30(%rdx),%r14                          #! EA = L0x7fffffffd470; Value = 0xe472ca078e8d60a3; PC = 0x555555566e6c *)
mov r14 L0x7fffffffd470;
(* mov    0x38(%rdx),%r15                          #! EA = L0x7fffffffd478; Value = 0xfdb3de1649368368; PC = 0x555555566e70 *)
mov r15 L0x7fffffffd478;
(* sub    (%rdi),%r8                               #! EA = L0x7fffffffd2c0; Value = 0xe728d977bef3539b; PC = 0x555555566e74 *)
subb carry r8 r8 L0x7fffffffd2c0;
(* sbb    0x8(%rdi),%r9                            #! EA = L0x7fffffffd2c8; Value = 0xb10b07cc8764a86f; PC = 0x555555566e77 *)
sbbs carry r9 r9 L0x7fffffffd2c8 carry;
(* sbb    0x10(%rdi),%r10                          #! EA = L0x7fffffffd2d0; Value = 0x7c6cd474d73e8b4c; PC = 0x555555566e7b *)
sbbs carry r10 r10 L0x7fffffffd2d0 carry;
(* sbb    0x18(%rdi),%r11                          #! EA = L0x7fffffffd2d8; Value = 0x0cdfb1b2d22b6ada; PC = 0x555555566e7f *)
sbbs carry r11 r11 L0x7fffffffd2d8 carry;
(* sbb    0x20(%rdi),%r12                          #! EA = L0x7fffffffd2e0; Value = 0x9b8a7c9c65ea9ce0; PC = 0x555555566e83 *)
sbbs carry r12 r12 L0x7fffffffd2e0 carry;
(* sbb    0x28(%rdi),%r13                          #! EA = L0x7fffffffd2e8; Value = 0x48a1ce888f3160e7; PC = 0x555555566e87 *)
sbbs carry r13 r13 L0x7fffffffd2e8 carry;
(* sbb    0x30(%rdi),%r14                          #! EA = L0x7fffffffd2f0; Value = 0x849dcfeecb8b79f8; PC = 0x555555566e8b *)
sbbs carry r14 r14 L0x7fffffffd2f0 carry;
(* sbb    0x38(%rdi),%r15                          #! EA = L0x7fffffffd2f8; Value = 0x7e7750ad77927096; PC = 0x555555566e8f *)
sbbs carry r15 r15 L0x7fffffffd2f8 carry;
ghost carry_sub_a0b0_0@uint1 : carry_sub_a0b0_0 = carry && carry_sub_a0b0_0 = carry;
(* setb   %al                                      #! PC = 0x555555566e93 *)
and uint64 rax rax 0xFFFFFFFFFFFFFF00@uint64;
adc rax rax 0@uint64 carry;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd380; Value = 0xe8f2eed3901d7894; PC = 0x555555566e96 *)
subb carry r8 r8 L0x7fffffffd380;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd388; Value = 0x29ab93275ec6ece2; PC = 0x555555566e99 *)
sbbs carry r9 r9 L0x7fffffffd388 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd390; Value = 0x4f90458a181f3339; PC = 0x555555566e9d *)
sbbs carry r10 r10 L0x7fffffffd390 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd398; Value = 0x494b938829b89092; PC = 0x555555566ea1 *)
sbbs carry r11 r11 L0x7fffffffd398 carry;
(* sbb    0x20(%rsi),%r12                          #! EA = L0x7fffffffd3a0; Value = 0x2ca98729bf45668a; PC = 0x555555566ea5 *)
sbbs carry r12 r12 L0x7fffffffd3a0 carry;
(* sbb    0x28(%rsi),%r13                          #! EA = L0x7fffffffd3a8; Value = 0x1e9611dcf08bf819; PC = 0x555555566ea9 *)
sbbs carry r13 r13 L0x7fffffffd3a8 carry;
(* sbb    0x30(%rsi),%r14                          #! EA = L0x7fffffffd3b0; Value = 0xb7a770748bb0f10a; PC = 0x555555566ead *)
sbbs carry r14 r14 L0x7fffffffd3b0 carry;
(* sbb    0x38(%rsi),%r15                          #! EA = L0x7fffffffd3b8; Value = 0x82438c4d25f474a9; PC = 0x555555566eb1 *)
sbbs carry r15 r15 L0x7fffffffd3b8 carry;
ghost carry_sub_a1b1_0@uint1 : carry_sub_a1b1_0 = carry && carry_sub_a1b1_0 = carry;
(* setb   %cl                                      #! PC = 0x555555566eb5 *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd440; PC = 0x555555566eb8 *)
mov L0x7fffffffd440 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd448; PC = 0x555555566ebb *)
mov L0x7fffffffd448 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd450; PC = 0x555555566ebf *)
mov L0x7fffffffd450 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd458; PC = 0x555555566ec3 *)
mov L0x7fffffffd458 r11;
(* mov    %r12,0x20(%rdx)                          #! EA = L0x7fffffffd460; PC = 0x555555566ec7 *)
mov L0x7fffffffd460 r12;
(* mov    %r13,0x28(%rdx)                          #! EA = L0x7fffffffd468; PC = 0x555555566ecb *)
mov L0x7fffffffd468 r13;
(* mov    %r14,0x30(%rdx)                          #! EA = L0x7fffffffd470; PC = 0x555555566ecf *)
mov L0x7fffffffd470 r14;
(* mov    %r15,0x38(%rdx)                          #! EA = L0x7fffffffd478; PC = 0x555555566ed3 *)
mov L0x7fffffffd478 r15;
(* mov    0x40(%rdx),%r8                           #! EA = L0x7fffffffd480; Value = 0x48ea3264e53e1a47; PC = 0x555555566ed7 *)
mov r8 L0x7fffffffd480;
(* mov    0x48(%rdx),%r9                           #! EA = L0x7fffffffd488; Value = 0x303aab1a31b45f45; PC = 0x555555566edb *)
mov r9 L0x7fffffffd488;
(* mov    0x50(%rdx),%r10                          #! EA = L0x7fffffffd490; Value = 0x204027c1f2bfee28; PC = 0x555555566edf *)
mov r10 L0x7fffffffd490;
(* mov    0x58(%rdx),%r11                          #! EA = L0x7fffffffd498; Value = 0xda24acadfe11ec11; PC = 0x555555566ee3 *)
mov r11 L0x7fffffffd498;
(* mov    0x60(%rdx),%r12                          #! EA = L0x7fffffffd4a0; Value = 0x84510ec9b4a2b67d; PC = 0x555555566ee7 *)
mov r12 L0x7fffffffd4a0;
(* mov    0x68(%rdx),%r13                          #! EA = L0x7fffffffd4a8; Value = 0x5a6240bef22f7b28; PC = 0x555555566eeb *)
mov r13 L0x7fffffffd4a8;
(* mov    0x70(%rdx),%r14                          #! EA = L0x7fffffffd4b0; Value = 0xfaed9c7bd298e08a; PC = 0x555555566eef *)
mov r14 L0x7fffffffd4b0;
(* mov    0x78(%rdx),%r15                          #! EA = L0x7fffffffd4b8; Value = 0xb8f1ebbed090cf0a; PC = 0x555555566ef3 *)
mov r15 L0x7fffffffd4b8;
(* bt     $0x0,%rax                                #! PC = 0x555555566ef7 *)
split dontcare carry rax 1;
vpc carry@uint1 carry;
assert true && carry = carry_sub_a0b0_0;
assume carry = carry_sub_a0b0_0 && true;
(* sbb    0x40(%rdi),%r8                           #! EA = L0x7fffffffd300; Value = 0xf41d9a62e16af7df; PC = 0x555555566efc *)
sbbs carry r8 r8 L0x7fffffffd300 carry;
(* sbb    0x48(%rdi),%r9                           #! EA = L0x7fffffffd308; Value = 0x098156eb693cc408; PC = 0x555555566f00 *)
sbbs carry r9 r9 L0x7fffffffd308 carry;
(* sbb    0x50(%rdi),%r10                          #! EA = L0x7fffffffd310; Value = 0xb4708ca4e1bf3e91; PC = 0x555555566f04 *)
sbbs carry r10 r10 L0x7fffffffd310 carry;
(* sbb    0x58(%rdi),%r11                          #! EA = L0x7fffffffd318; Value = 0x7a6567031db4ed5b; PC = 0x555555566f08 *)
sbbs carry r11 r11 L0x7fffffffd318 carry;
(* sbb    0x60(%rdi),%r12                          #! EA = L0x7fffffffd320; Value = 0x804b043da88fe6ad; PC = 0x555555566f0c *)
sbbs carry r12 r12 L0x7fffffffd320 carry;
(* sbb    0x68(%rdi),%r13                          #! EA = L0x7fffffffd328; Value = 0x84605984cd3268a6; PC = 0x555555566f10 *)
sbbs carry r13 r13 L0x7fffffffd328 carry;
(* sbb    0x70(%rdi),%r14                          #! EA = L0x7fffffffd330; Value = 0xf3820f5f7ec63e97; PC = 0x555555566f14 *)
sbbs carry r14 r14 L0x7fffffffd330 carry;
(* sbb    0x78(%rdi),%r15                          #! EA = L0x7fffffffd338; Value = 0x49facbd8c515810e; PC = 0x555555566f18 *)
sbbs carry r15 r15 L0x7fffffffd338 carry;
ghost carry_sub_a0b0_1@uint1 : carry_sub_a0b0_1 = carry && carry_sub_a0b0_1 = carry;
(* setb   %al                                      #! PC = 0x555555566f1c *)
and uint64 rax rax 0xFFFFFFFFFFFFFF00@uint64;
adc rax rax 0@uint64 carry;
(* bt     $0x0,%rcx                                #! PC = 0x555555566f1f *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
assert true && carry = carry_sub_a1b1_0;
assume carry = carry_sub_a1b1_0 && true;
(* sbb    0x40(%rsi),%r8                           #! EA = L0x7fffffffd3c0; Value = 0x217f4d6db9590f9a; PC = 0x555555566f24 *)
sbbs carry r8 r8 L0x7fffffffd3c0 carry;
(* sbb    0x48(%rsi),%r9                           #! EA = L0x7fffffffd3c8; Value = 0xf3f8074c41c26104; PC = 0x555555566f28 *)
sbbs carry r9 r9 L0x7fffffffd3c8 carry;
(* sbb    0x50(%rsi),%r10                          #! EA = L0x7fffffffd3d0; Value = 0xb36e6330d7b990e6; PC = 0x555555566f2c *)
sbbs carry r10 r10 L0x7fffffffd3d0 carry;
(* sbb    0x58(%rsi),%r11                          #! EA = L0x7fffffffd3d8; Value = 0x841661c9fd814cd9; PC = 0x555555566f30 *)
sbbs carry r11 r11 L0x7fffffffd3d8 carry;
(* sbb    0x60(%rsi),%r12                          #! EA = L0x7fffffffd3e0; Value = 0xc30d006a0eff7396; PC = 0x555555566f34 *)
sbbs carry r12 r12 L0x7fffffffd3e0 carry;
(* sbb    0x68(%rsi),%r13                          #! EA = L0x7fffffffd3e8; Value = 0x2bf4567708c29031; PC = 0x555555566f38 *)
sbbs carry r13 r13 L0x7fffffffd3e8 carry;
(* sbb    0x70(%rsi),%r14                          #! EA = L0x7fffffffd3f0; Value = 0x71f410c7755e53a4; PC = 0x555555566f3c *)
sbbs carry r14 r14 L0x7fffffffd3f0 carry;
(* sbb    0x78(%rsi),%r15                          #! EA = L0x7fffffffd3f8; Value = 0x45a72131d212cf05; PC = 0x555555566f40 *)
sbbs carry r15 r15 L0x7fffffffd3f8 carry;
ghost carry_sub_a1b1_1@uint1 : carry_sub_a1b1_1 = carry && carry_sub_a1b1_1 = carry;
(* setb   %cl                                      #! PC = 0x555555566f44 *)
and uint64 rcx rcx 0xFFFFFFFFFFFFFF00@uint64;
adc rcx rcx 0@uint64 carry;
(* mov    %r8,0x40(%rdx)                           #! EA = L0x7fffffffd480; PC = 0x555555566f47 *)
mov L0x7fffffffd480 r8;
(* mov    %r9,0x48(%rdx)                           #! EA = L0x7fffffffd488; PC = 0x555555566f4b *)
mov L0x7fffffffd488 r9;
(* mov    %r10,0x50(%rdx)                          #! EA = L0x7fffffffd490; PC = 0x555555566f4f *)
mov L0x7fffffffd490 r10;
(* mov    %r11,0x58(%rdx)                          #! EA = L0x7fffffffd498; PC = 0x555555566f53 *)
mov L0x7fffffffd498 r11;
(* mov    %r12,0x60(%rdx)                          #! EA = L0x7fffffffd4a0; PC = 0x555555566f57 *)
mov L0x7fffffffd4a0 r12;
(* mov    %r13,0x68(%rdx)                          #! EA = L0x7fffffffd4a8; PC = 0x555555566f5b *)
mov L0x7fffffffd4a8 r13;
(* mov    %r14,0x70(%rdx)                          #! EA = L0x7fffffffd4b0; PC = 0x555555566f5f *)
mov L0x7fffffffd4b0 r14;
(* mov    %r15,0x78(%rdx)                          #! EA = L0x7fffffffd4b8; PC = 0x555555566f63 *)
mov L0x7fffffffd4b8 r15;
(* mov    0x80(%rdx),%r8                           #! EA = L0x7fffffffd4c0; Value = 0xc26d87044c3e331c; PC = 0x555555566f67 *)
mov r8 L0x7fffffffd4c0;
(* mov    0x88(%rdx),%r9                           #! EA = L0x7fffffffd4c8; Value = 0xd6677932e2702f35; PC = 0x555555566f6e *)
mov r9 L0x7fffffffd4c8;
(* mov    0x90(%rdx),%r10                          #! EA = L0x7fffffffd4d0; Value = 0xc21bc15f5c3f76c2; PC = 0x555555566f75 *)
mov r10 L0x7fffffffd4d0;
(* mov    0x98(%rdx),%r11                          #! EA = L0x7fffffffd4d8; Value = 0xdf40277e23f82911; PC = 0x555555566f7c *)
mov r11 L0x7fffffffd4d8;
(* mov    0xa0(%rdx),%r12                          #! EA = L0x7fffffffd4e0; Value = 0xcd8005ffc98090f4; PC = 0x555555566f83 *)
mov r12 L0x7fffffffd4e0;
(* mov    0xa8(%rdx),%r13                          #! EA = L0x7fffffffd4e8; Value = 0x28cef156e8539319; PC = 0x555555566f8a *)
mov r13 L0x7fffffffd4e8;
(* mov    0xb0(%rdx),%r14                          #! EA = L0x7fffffffd4f0; Value = 0xb75a85497b54dd7b; PC = 0x555555566f91 *)
mov r14 L0x7fffffffd4f0;
(* mov    0xb8(%rdx),%r15                          #! EA = L0x7fffffffd4f8; Value = 0x00000000507d3959; PC = 0x555555566f98 *)
mov r15 L0x7fffffffd4f8;
(* bt     $0x0,%rax                                #! PC = 0x555555566f9f *)
split dontcare carry rax 1;
vpc carry@uint1 carry;
assert true && carry = carry_sub_a0b0_1;
assume carry_sub_a0b0_1 = carry && true;
(* sbb    0x80(%rdi),%r8                           #! EA = L0x7fffffffd340; Value = 0x885949aed27574ed; PC = 0x555555566fa4 *)
sbbs carry r8 r8 L0x7fffffffd340 carry;
(* sbb    0x88(%rdi),%r9                           #! EA = L0x7fffffffd348; Value = 0xa02fa956ade2b528; PC = 0x555555566fab *)
sbbs carry r9 r9 L0x7fffffffd348 carry;
(* sbb    0x90(%rdi),%r10                          #! EA = L0x7fffffffd350; Value = 0xc5a46c0536dd1681; PC = 0x555555566fb2 *)
sbbs carry r10 r10 L0x7fffffffd350 carry;
(* sbb    0x98(%rdi),%r11                          #! EA = L0x7fffffffd358; Value = 0xe61cc3a40746f86f; PC = 0x555555566fb9 *)
sbbs carry r11 r11 L0x7fffffffd358 carry;
(* sbb    0xa0(%rdi),%r12                          #! EA = L0x7fffffffd360; Value = 0x126a8c592722c827; PC = 0x555555566fc0 *)
sbbs carry r12 r12 L0x7fffffffd360 carry;
(* sbb    0xa8(%rdi),%r13                          #! EA = L0x7fffffffd368; Value = 0xbdbfe30e9f45885c; PC = 0x555555566fc7 *)
sbbs carry r13 r13 L0x7fffffffd368 carry;
(* sbb    0xb0(%rdi),%r14                          #! EA = L0x7fffffffd370; Value = 0xdafee8f6b27b629e; PC = 0x555555566fce *)
sbbs carry r14 r14 L0x7fffffffd370 carry;
(* sbb    0xb8(%rdi),%r15                          #! EA = L0x7fffffffd378; Value = 0x0000000005d4f88b; PC = 0x555555566fd5 *)
sbbs carry r15 r15 L0x7fffffffd378 carry;
ghost carry_sub_a0b0_2@uint1 : carry_sub_a0b0_2 = carry && carry_sub_a0b0_2 = carry;
(* bt     $0x0,%rcx                                #! PC = 0x555555566fdc *)
split dontcare carry rcx 1;
vpc carry@uint1 carry;
assert true && carry = carry_sub_a1b1_1;
assume carry = carry_sub_a1b1_1 && true;
(* sbb    0x80(%rsi),%r8                           #! EA = L0x7fffffffd400; Value = 0xcb863ccf9bfc1e0c; PC = 0x555555566fe1 *)
sbbs carry r8 r8 L0x7fffffffd400 carry;
(* sbb    0x88(%rsi),%r9                           #! EA = L0x7fffffffd408; Value = 0x568faa0650c468dd; PC = 0x555555566fe8 *)
sbbs carry r9 r9 L0x7fffffffd408 carry;
(* sbb    0x90(%rsi),%r10                          #! EA = L0x7fffffffd410; Value = 0x1e92277dfe45188f; PC = 0x555555566fef *)
sbbs carry r10 r10 L0x7fffffffd410 carry;
(* sbb    0x98(%rsi),%r11                          #! EA = L0x7fffffffd418; Value = 0x9f65b1542527891c; PC = 0x555555566ff6 *)
sbbs carry r11 r11 L0x7fffffffd418 carry;
(* sbb    0xa0(%rsi),%r12                          #! EA = L0x7fffffffd420; Value = 0x4571454e724c67f4; PC = 0x555555566ffd *)
sbbs carry r12 r12 L0x7fffffffd420 carry;
(* sbb    0xa8(%rsi),%r13                          #! EA = L0x7fffffffd428; Value = 0x9abe6bcf6348b46f; PC = 0x555555567004 *)
sbbs carry r13 r13 L0x7fffffffd428 carry;
(* sbb    0xb0(%rsi),%r14                          #! EA = L0x7fffffffd430; Value = 0x9dc667fb683b13e8; PC = 0x55555556700b *)
sbbs carry r14 r14 L0x7fffffffd430 carry;
(* sbb    0xb8(%rsi),%r15                          #! EA = L0x7fffffffd438; Value = 0x0000000028214b1f; PC = 0x555555567012 *)
sbbs carry r15 r15 L0x7fffffffd438 carry;
ghost carry_a1b1_2@uint1 : carry_a1b1_2 = carry && carry_a1b1_2 = carry;
(* mov    %r8,0x80(%rdx)                           #! EA = L0x7fffffffd4c0; PC = 0x555555567019 *)
mov L0x7fffffffd4c0 r8;
(* mov    %r9,0x88(%rdx)                           #! EA = L0x7fffffffd4c8; PC = 0x555555567020 *)
mov L0x7fffffffd4c8 r9;
(* mov    %r10,0x90(%rdx)                          #! EA = L0x7fffffffd4d0; PC = 0x555555567027 *)
mov L0x7fffffffd4d0 r10;
(* mov    %r11,0x98(%rdx)                          #! EA = L0x7fffffffd4d8; PC = 0x55555556702e *)
mov L0x7fffffffd4d8 r11;
(* mov    %r12,0xa0(%rdx)                          #! EA = L0x7fffffffd4e0; PC = 0x555555567035 *)
mov L0x7fffffffd4e0 r12;
(* mov    %r13,0xa8(%rdx)                          #! EA = L0x7fffffffd4e8; PC = 0x55555556703c *)
mov L0x7fffffffd4e8 r13;
(* mov    %r14,0xb0(%rdx)                          #! EA = L0x7fffffffd4f0; PC = 0x555555567043 *)
mov L0x7fffffffd4f0 r14;
(* mov    %r15,0xb8(%rdx)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556704a *)
mov L0x7fffffffd4f8 r15;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x555555567059 *)
#retq                                           #! 0x555555567059 = 0x555555567059;

ghost tt3_1_00@uint64, tt3_1_01@uint64, tt3_1_02@uint64, tt3_1_03@uint64, tt3_1_04@uint64, tt3_1_05@uint64,
      tt3_1_06@uint64, tt3_1_07@uint64, tt3_1_08@uint64, tt3_1_09@uint64, tt3_1_10@uint64, tt3_1_11@uint64,
      tt3_1_12@uint64, tt3_1_13@uint64, tt3_1_14@uint64, tt3_1_15@uint64, tt3_1_16@uint64, tt3_1_17@uint64,
      tt3_1_18@uint64, tt3_1_19@uint64, tt3_1_20@uint64, tt3_1_21@uint64, tt3_1_22@uint64, tt3_1_23@uint64:
  and [
    tt3_1_00 = L0x7fffffffd440, tt3_1_01 = L0x7fffffffd448, tt3_1_02 = L0x7fffffffd450,
    tt3_1_03 = L0x7fffffffd458, tt3_1_04 = L0x7fffffffd460, tt3_1_05 = L0x7fffffffd468,
    tt3_1_06 = L0x7fffffffd470, tt3_1_07 = L0x7fffffffd478, tt3_1_08 = L0x7fffffffd480,
    tt3_1_09 = L0x7fffffffd488, tt3_1_10 = L0x7fffffffd490, tt3_1_11 = L0x7fffffffd498,
    tt3_1_12 = L0x7fffffffd4a0, tt3_1_13 = L0x7fffffffd4a8, tt3_1_14 = L0x7fffffffd4b0,
    tt3_1_15 = L0x7fffffffd4b8, tt3_1_16 = L0x7fffffffd4c0, tt3_1_17 = L0x7fffffffd4c8,
    tt3_1_18 = L0x7fffffffd4d0, tt3_1_19 = L0x7fffffffd4d8, tt3_1_20 = L0x7fffffffd4e0,
    tt3_1_21 = L0x7fffffffd4e8, tt3_1_22 = L0x7fffffffd4f0, tt3_1_23 = L0x7fffffffd4f8
  ] &&
  and [
    tt3_1_00 = L0x7fffffffd440, tt3_1_01 = L0x7fffffffd448, tt3_1_02 = L0x7fffffffd450,
    tt3_1_03 = L0x7fffffffd458, tt3_1_04 = L0x7fffffffd460, tt3_1_05 = L0x7fffffffd468,
    tt3_1_06 = L0x7fffffffd470, tt3_1_07 = L0x7fffffffd478, tt3_1_08 = L0x7fffffffd480,
    tt3_1_09 = L0x7fffffffd488, tt3_1_10 = L0x7fffffffd490, tt3_1_11 = L0x7fffffffd498,
    tt3_1_12 = L0x7fffffffd4a0, tt3_1_13 = L0x7fffffffd4a8, tt3_1_14 = L0x7fffffffd4b0,
    tt3_1_15 = L0x7fffffffd4b8, tt3_1_16 = L0x7fffffffd4c0, tt3_1_17 = L0x7fffffffd4c8,
    tt3_1_18 = L0x7fffffffd4d0, tt3_1_19 = L0x7fffffffd4d8, tt3_1_20 = L0x7fffffffd4e0,
    tt3_1_21 = L0x7fffffffd4e8, tt3_1_22 = L0x7fffffffd4f0, tt3_1_23 = L0x7fffffffd4f8
  ];

# Ecut 5
ecut eqmod (limbs 64 [ tt3_1_00, tt3_1_01, tt3_1_02, tt3_1_03, tt3_1_04, tt3_1_05, tt3_1_06, tt3_1_07, tt3_1_08, tt3_1_09, tt3_1_10, tt3_1_11,
                       tt3_1_12, tt3_1_13, tt3_1_14, tt3_1_15, tt3_1_16, tt3_1_17, tt3_1_18, tt3_1_19, tt3_1_20, tt3_1_21, tt3_1_22, tt3_1_23 ])
           (
             (
               (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
               *
               (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
             )
             +
             (
               (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
               *
               (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
             )
           )
           (2**1536)
     prove with [all ghosts, cuts [0,1,2,3,4]];
assert true &&
       (
         (
           (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11,
                       0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
           *
           (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11,
                       0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
         )
         +
         (
           (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11,
                       0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
           *
           (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11,
                       0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64 ])
         )
       )
       <u
       (2**1536)@1600;
assume (limbs 64 [ tt3_1_00, tt3_1_01, tt3_1_02, tt3_1_03, tt3_1_04, tt3_1_05, tt3_1_06, tt3_1_07, tt3_1_08, tt3_1_09, tt3_1_10, tt3_1_11,
                   tt3_1_12, tt3_1_13, tt3_1_14, tt3_1_15, tt3_1_16, tt3_1_17, tt3_1_18, tt3_1_19, tt3_1_20, tt3_1_21, tt3_1_22, tt3_1_23 ])
       =
       (
         (
           (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
           *
           (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
         )
         +
         (
           (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
           *
           (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
         )
       ) && true;
# Ecut 6
ecut (limbs 64 [ tt3_1_00, tt3_1_01, tt3_1_02, tt3_1_03, tt3_1_04, tt3_1_05, tt3_1_06, tt3_1_07, tt3_1_08, tt3_1_09, tt3_1_10, tt3_1_11,
                 tt3_1_12, tt3_1_13, tt3_1_14, tt3_1_15, tt3_1_16, tt3_1_17, tt3_1_18, tt3_1_19, tt3_1_20, tt3_1_21, tt3_1_22, tt3_1_23 ])
     =
     (
       (
         (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
         *
         (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
       )
       +
       (
         (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
         *
         (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
       )
     );
assume true &&
       (limbs 64 [ tt3_1_00, tt3_1_01, tt3_1_02, tt3_1_03, tt3_1_04, tt3_1_05, tt3_1_06, tt3_1_07, tt3_1_08, tt3_1_09, tt3_1_10, tt3_1_11,
                   tt3_1_12, tt3_1_13, tt3_1_14, tt3_1_15, tt3_1_16, tt3_1_17, tt3_1_18, tt3_1_19, tt3_1_20, tt3_1_21, tt3_1_22, tt3_1_23 ])
       =
       (
         (
           uext (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]) 768
           *
           uext (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]) 768
         )
         +
         (
           uext (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) 768
           *
           uext (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]) 768
         )
       );
# Rcut 5
rcut and [
       (limbs 64 [ tt3_1_00, tt3_1_01, tt3_1_02, tt3_1_03, tt3_1_04, tt3_1_05, tt3_1_06, tt3_1_07, tt3_1_08, tt3_1_09, tt3_1_10, tt3_1_11,
                   tt3_1_12, tt3_1_13, tt3_1_14, tt3_1_15, tt3_1_16, tt3_1_17, tt3_1_18, tt3_1_19, tt3_1_20, tt3_1_21, tt3_1_22, tt3_1_23 ])
       =
       (
         (
           uext (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ]) 768
           *
           uext (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]) 768
         )
         +
         (
           uext (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) 768
           *
           uext (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ]) 768
         )
       ),
       (limbs 64 [ tt3_1_00, tt3_1_01, tt3_1_02, tt3_1_03, tt3_1_04, tt3_1_05, tt3_1_06, tt3_1_07, tt3_1_08, tt3_1_09, tt3_1_10, tt3_1_11,
                   tt3_1_12, tt3_1_13, tt3_1_14, tt3_1_15, tt3_1_16, tt3_1_17, tt3_1_18, tt3_1_19, tt3_1_20, tt3_1_21, tt3_1_22, tt3_1_23 ])
       <u
       (
         (limbs 64 [ 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                     $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ])
       )
     ] prove with [precondition, all ghosts, cuts [0,1,2,3,4]];

// mp_subaddfast(tt1, tt2, tt1);                    // tt1 = a0*b0 - a1*b1 + p*2^MAXBITS_FIELD if a0*b0 - a1*b1 < 0, else tt1 = a0*b0 - a1*b1
(* mov    %rbp,%rdx                                #! PC = 0x555555558ecd *)
mov rdx rbp;
(* mov    %r13,%rsi                                #! PC = 0x555555558ed0 *)
mov rsi r13;
(* mov    %rbp,%rdi                                #! PC = 0x555555558ed3 *)
mov rdi rbp;
(* #callq  0x555555566c07 <mp_subadd751x2_asm>     #! PC = 0x555555558ed6 *)
#callq  0x555555566c07 <mp_subadd751x2_asm>     #! 0x555555558ed6 = 0x555555558ed6;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* xor    %rax,%rax                                #! PC = 0x555555566c10 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mov    (%rdi),%r8                               #! EA = L0x7fffffffd2c0; Value = 0xe728d977bef3539b; PC = 0x555555566c13 *)
mov r8 L0x7fffffffd2c0;
(* mov    0x8(%rdi),%r9                            #! EA = L0x7fffffffd2c8; Value = 0xb10b07cc8764a86f; PC = 0x555555566c16 *)
mov r9 L0x7fffffffd2c8;
(* mov    0x10(%rdi),%r10                          #! EA = L0x7fffffffd2d0; Value = 0x7c6cd474d73e8b4c; PC = 0x555555566c1a *)
mov r10 L0x7fffffffd2d0;
(* mov    0x18(%rdi),%r11                          #! EA = L0x7fffffffd2d8; Value = 0x0cdfb1b2d22b6ada; PC = 0x555555566c1e *)
mov r11 L0x7fffffffd2d8;
(* mov    0x20(%rdi),%rcx                          #! EA = L0x7fffffffd2e0; Value = 0x9b8a7c9c65ea9ce0; PC = 0x555555566c22 *)
mov rcx L0x7fffffffd2e0;
(* sub    (%rsi),%r8                               #! EA = L0x7fffffffd380; Value = 0xe8f2eed3901d7894; PC = 0x555555566c26 *)
subb carry r8 r8 L0x7fffffffd380;
(* sbb    0x8(%rsi),%r9                            #! EA = L0x7fffffffd388; Value = 0x29ab93275ec6ece2; PC = 0x555555566c29 *)
sbbs carry r9 r9 L0x7fffffffd388 carry;
(* sbb    0x10(%rsi),%r10                          #! EA = L0x7fffffffd390; Value = 0x4f90458a181f3339; PC = 0x555555566c2d *)
sbbs carry r10 r10 L0x7fffffffd390 carry;
(* sbb    0x18(%rsi),%r11                          #! EA = L0x7fffffffd398; Value = 0x494b938829b89092; PC = 0x555555566c31 *)
sbbs carry r11 r11 L0x7fffffffd398 carry;
(* sbb    0x20(%rsi),%rcx                          #! EA = L0x7fffffffd3a0; Value = 0x2ca98729bf45668a; PC = 0x555555566c35 *)
sbbs carry rcx rcx L0x7fffffffd3a0 carry;
(* mov    %r8,(%rdx)                               #! EA = L0x7fffffffd2c0; PC = 0x555555566c39 *)
mov L0x7fffffffd2c0 r8;
(* mov    %r9,0x8(%rdx)                            #! EA = L0x7fffffffd2c8; PC = 0x555555566c3c *)
mov L0x7fffffffd2c8 r9;
(* mov    %r10,0x10(%rdx)                          #! EA = L0x7fffffffd2d0; PC = 0x555555566c40 *)
mov L0x7fffffffd2d0 r10;
(* mov    %r11,0x18(%rdx)                          #! EA = L0x7fffffffd2d8; PC = 0x555555566c44 *)
mov L0x7fffffffd2d8 r11;
(* mov    %rcx,0x20(%rdx)                          #! EA = L0x7fffffffd2e0; PC = 0x555555566c48 *)
mov L0x7fffffffd2e0 rcx;
(* mov    0x28(%rdi),%r8                           #! EA = L0x7fffffffd2e8; Value = 0x48a1ce888f3160e7; PC = 0x555555566c4c *)
mov r8 L0x7fffffffd2e8;
(* mov    0x30(%rdi),%r9                           #! EA = L0x7fffffffd2f0; Value = 0x849dcfeecb8b79f8; PC = 0x555555566c50 *)
mov r9 L0x7fffffffd2f0;
(* mov    0x38(%rdi),%r10                          #! EA = L0x7fffffffd2f8; Value = 0x7e7750ad77927096; PC = 0x555555566c54 *)
mov r10 L0x7fffffffd2f8;
(* mov    0x40(%rdi),%r11                          #! EA = L0x7fffffffd300; Value = 0xf41d9a62e16af7df; PC = 0x555555566c58 *)
mov r11 L0x7fffffffd300;
(* mov    0x48(%rdi),%rcx                          #! EA = L0x7fffffffd308; Value = 0x098156eb693cc408; PC = 0x555555566c5c *)
mov rcx L0x7fffffffd308;
(* sbb    0x28(%rsi),%r8                           #! EA = L0x7fffffffd3a8; Value = 0x1e9611dcf08bf819; PC = 0x555555566c60 *)
sbbs carry r8 r8 L0x7fffffffd3a8 carry;
(* sbb    0x30(%rsi),%r9                           #! EA = L0x7fffffffd3b0; Value = 0xb7a770748bb0f10a; PC = 0x555555566c64 *)
sbbs carry r9 r9 L0x7fffffffd3b0 carry;
(* sbb    0x38(%rsi),%r10                          #! EA = L0x7fffffffd3b8; Value = 0x82438c4d25f474a9; PC = 0x555555566c68 *)
sbbs carry r10 r10 L0x7fffffffd3b8 carry;
(* sbb    0x40(%rsi),%r11                          #! EA = L0x7fffffffd3c0; Value = 0x217f4d6db9590f9a; PC = 0x555555566c6c *)
sbbs carry r11 r11 L0x7fffffffd3c0 carry;
(* sbb    0x48(%rsi),%rcx                          #! EA = L0x7fffffffd3c8; Value = 0xf3f8074c41c26104; PC = 0x555555566c70 *)
sbbs carry rcx rcx L0x7fffffffd3c8 carry;
(* mov    %r8,0x28(%rdx)                           #! EA = L0x7fffffffd2e8; PC = 0x555555566c74 *)
mov L0x7fffffffd2e8 r8;
(* mov    %r9,0x30(%rdx)                           #! EA = L0x7fffffffd2f0; PC = 0x555555566c78 *)
mov L0x7fffffffd2f0 r9;
(* mov    %r10,0x38(%rdx)                          #! EA = L0x7fffffffd2f8; PC = 0x555555566c7c *)
mov L0x7fffffffd2f8 r10;
(* mov    %r11,0x40(%rdx)                          #! EA = L0x7fffffffd300; PC = 0x555555566c80 *)
mov L0x7fffffffd300 r11;
(* mov    %rcx,0x48(%rdx)                          #! EA = L0x7fffffffd308; PC = 0x555555566c84 *)
mov L0x7fffffffd308 rcx;
(* mov    0x50(%rdi),%r8                           #! EA = L0x7fffffffd310; Value = 0xb4708ca4e1bf3e91; PC = 0x555555566c88 *)
mov r8 L0x7fffffffd310;
(* mov    0x58(%rdi),%r9                           #! EA = L0x7fffffffd318; Value = 0x7a6567031db4ed5b; PC = 0x555555566c8c *)
mov r9 L0x7fffffffd318;
(* mov    0x60(%rdi),%r10                          #! EA = L0x7fffffffd320; Value = 0x804b043da88fe6ad; PC = 0x555555566c90 *)
mov r10 L0x7fffffffd320;
(* mov    0x68(%rdi),%r11                          #! EA = L0x7fffffffd328; Value = 0x84605984cd3268a6; PC = 0x555555566c94 *)
mov r11 L0x7fffffffd328;
(* mov    0x70(%rdi),%rcx                          #! EA = L0x7fffffffd330; Value = 0xf3820f5f7ec63e97; PC = 0x555555566c98 *)
mov rcx L0x7fffffffd330;
(* sbb    0x50(%rsi),%r8                           #! EA = L0x7fffffffd3d0; Value = 0xb36e6330d7b990e6; PC = 0x555555566c9c *)
sbbs carry r8 r8 L0x7fffffffd3d0 carry;
(* sbb    0x58(%rsi),%r9                           #! EA = L0x7fffffffd3d8; Value = 0x841661c9fd814cd9; PC = 0x555555566ca0 *)
sbbs carry r9 r9 L0x7fffffffd3d8 carry;
(* sbb    0x60(%rsi),%r10                          #! EA = L0x7fffffffd3e0; Value = 0xc30d006a0eff7396; PC = 0x555555566ca4 *)
sbbs carry r10 r10 L0x7fffffffd3e0 carry;
(* sbb    0x68(%rsi),%r11                          #! EA = L0x7fffffffd3e8; Value = 0x2bf4567708c29031; PC = 0x555555566ca8 *)
sbbs carry r11 r11 L0x7fffffffd3e8 carry;
(* sbb    0x70(%rsi),%rcx                          #! EA = L0x7fffffffd3f0; Value = 0x71f410c7755e53a4; PC = 0x555555566cac *)
sbbs carry rcx rcx L0x7fffffffd3f0 carry;
(* mov    %r8,0x50(%rdx)                           #! EA = L0x7fffffffd310; PC = 0x555555566cb0 *)
mov L0x7fffffffd310 r8;
(* mov    %r9,0x58(%rdx)                           #! EA = L0x7fffffffd318; PC = 0x555555566cb4 *)
mov L0x7fffffffd318 r9;
(* mov    %r10,0x60(%rdx)                          #! EA = L0x7fffffffd320; PC = 0x555555566cb8 *)
mov L0x7fffffffd320 r10;
(* mov    %r11,0x68(%rdx)                          #! EA = L0x7fffffffd328; PC = 0x555555566cbc *)
mov L0x7fffffffd328 r11;
(* mov    %rcx,0x70(%rdx)                          #! EA = L0x7fffffffd330; PC = 0x555555566cc0 *)
mov L0x7fffffffd330 rcx;
(* mov    0x78(%rdi),%r8                           #! EA = L0x7fffffffd338; Value = 0x49facbd8c515810e; PC = 0x555555566cc4 *)
mov r8 L0x7fffffffd338;
(* mov    0x80(%rdi),%r9                           #! EA = L0x7fffffffd340; Value = 0x885949aed27574ed; PC = 0x555555566cc8 *)
mov r9 L0x7fffffffd340;
(* mov    0x88(%rdi),%r10                          #! EA = L0x7fffffffd348; Value = 0xa02fa956ade2b528; PC = 0x555555566ccf *)
mov r10 L0x7fffffffd348;
(* mov    0x90(%rdi),%r11                          #! EA = L0x7fffffffd350; Value = 0xc5a46c0536dd1681; PC = 0x555555566cd6 *)
mov r11 L0x7fffffffd350;
(* mov    0x98(%rdi),%rcx                          #! EA = L0x7fffffffd358; Value = 0xe61cc3a40746f86f; PC = 0x555555566cdd *)
mov rcx L0x7fffffffd358;
(* sbb    0x78(%rsi),%r8                           #! EA = L0x7fffffffd3f8; Value = 0x45a72131d212cf05; PC = 0x555555566ce4 *)
sbbs carry r8 r8 L0x7fffffffd3f8 carry;
(* sbb    0x80(%rsi),%r9                           #! EA = L0x7fffffffd400; Value = 0xcb863ccf9bfc1e0c; PC = 0x555555566ce8 *)
sbbs carry r9 r9 L0x7fffffffd400 carry;
(* sbb    0x88(%rsi),%r10                          #! EA = L0x7fffffffd408; Value = 0x568faa0650c468dd; PC = 0x555555566cef *)
sbbs carry r10 r10 L0x7fffffffd408 carry;
(* sbb    0x90(%rsi),%r11                          #! EA = L0x7fffffffd410; Value = 0x1e92277dfe45188f; PC = 0x555555566cf6 *)
sbbs carry r11 r11 L0x7fffffffd410 carry;
(* sbb    0x98(%rsi),%rcx                          #! EA = L0x7fffffffd418; Value = 0x9f65b1542527891c; PC = 0x555555566cfd *)
sbbs carry rcx rcx L0x7fffffffd418 carry;
(* mov    %r8,0x78(%rdx)                           #! EA = L0x7fffffffd338; PC = 0x555555566d04 *)
mov L0x7fffffffd338 r8;
(* mov    %r9,0x80(%rdx)                           #! EA = L0x7fffffffd340; PC = 0x555555566d08 *)
mov L0x7fffffffd340 r9;
(* mov    %r10,0x88(%rdx)                          #! EA = L0x7fffffffd348; PC = 0x555555566d0f *)
mov L0x7fffffffd348 r10;
(* mov    %r11,0x90(%rdx)                          #! EA = L0x7fffffffd350; PC = 0x555555566d16 *)
mov L0x7fffffffd350 r11;
(* mov    %rcx,0x98(%rdx)                          #! EA = L0x7fffffffd358; PC = 0x555555566d1d *)
mov L0x7fffffffd358 rcx;
(* mov    0xa0(%rdi),%r8                           #! EA = L0x7fffffffd360; Value = 0x126a8c592722c827; PC = 0x555555566d24 *)
mov r8 L0x7fffffffd360;
(* mov    0xa8(%rdi),%r9                           #! EA = L0x7fffffffd368; Value = 0xbdbfe30e9f45885c; PC = 0x555555566d2b *)
mov r9 L0x7fffffffd368;
(* mov    0xb0(%rdi),%r10                          #! EA = L0x7fffffffd370; Value = 0xdafee8f6b27b629e; PC = 0x555555566d32 *)
mov r10 L0x7fffffffd370;
(* mov    0xb8(%rdi),%r11                          #! EA = L0x7fffffffd378; Value = 0x0000000005d4f88b; PC = 0x555555566d39 *)
mov r11 L0x7fffffffd378;
(* sbb    0xa0(%rsi),%r8                           #! EA = L0x7fffffffd420; Value = 0x4571454e724c67f4; PC = 0x555555566d40 *)
sbbs carry r8 r8 L0x7fffffffd420 carry;
(* sbb    0xa8(%rsi),%r9                           #! EA = L0x7fffffffd428; Value = 0x9abe6bcf6348b46f; PC = 0x555555566d47 *)
sbbs carry r9 r9 L0x7fffffffd428 carry;
(* sbb    0xb0(%rsi),%r10                          #! EA = L0x7fffffffd430; Value = 0x9dc667fb683b13e8; PC = 0x555555566d4e *)
sbbs carry r10 r10 L0x7fffffffd430 carry;
(* sbb    0xb8(%rsi),%r11                          #! EA = L0x7fffffffd438; Value = 0x0000000028214b1f; PC = 0x555555566d55 *)
sbbs carry r11 r11 L0x7fffffffd438 carry;
ghost carry_sub_a0b0_a1b1@uint1 : carry_sub_a0b0_a1b1 = carry && carry_sub_a0b0_a1b1 = carry;
(* sbb    $0x0,%rax                                #! PC = 0x555555566d5c *)
sbbs carry rax rax 0x0@uint64 carry;
assert true && carry_sub_a0b0_a1b1 = carry;
assume carry_sub_a0b0_a1b1 = carry && true;
(* mov    0x3b99(%rip),%r12        # 0x55555556a900 <p751>#! EA = L0x55555556a900; Value = 0xffffffffffffffff; PC = 0x555555566d60 *)
mov r12 L0x55555556a900;
(* mov    0x3bba(%rip),%r13        # 0x55555556a928 <p751+40>#! EA = L0x55555556a928; Value = 0xeeafffffffffffff; PC = 0x555555566d67 *)
mov r13 L0x55555556a928;
(* mov    0x3bbb(%rip),%r14        # 0x55555556a930 <p751+48>#! EA = L0x55555556a930; Value = 0xe3ec968549f878a8; PC = 0x555555566d6e *)
mov r14 L0x55555556a930;
(* mov    0x3bbc(%rip),%r15        # 0x55555556a938 <p751+56>#! EA = L0x55555556a938; Value = 0xda959b1a13f7cc76; PC = 0x555555566d75 *)
mov r15 L0x55555556a938;
(* mov    0x3bbd(%rip),%rdi        # 0x55555556a940 <p751+64>#! EA = L0x55555556a940; Value = 0x084e9867d6ebe876; PC = 0x555555566d7c *)
mov rdi L0x55555556a940;
(* mov    0x3bbe(%rip),%rsi        # 0x55555556a948 <p751+72>#! EA = L0x55555556a948; Value = 0x8562b5045cb25748; PC = 0x555555566d83 *)
mov rsi L0x55555556a948;
(* mov    0x3bbf(%rip),%rbx        # 0x55555556a950 <p751+80>#! EA = L0x55555556a950; Value = 0x0e12909f97badc66; PC = 0x555555566d8a *)
mov rbx L0x55555556a950;
(* mov    0x3bc0(%rip),%rcx        # 0x55555556a958 <p751+88>#! EA = L0x55555556a958; Value = 0x00006fe5d541f71c; PC = 0x555555566d91 *)
mov rcx L0x55555556a958;
(* and    %rax,%r12                                #! PC = 0x555555566d98 *)
and uint64 r12 rax r12;
(* and    %rax,%r13                                #! PC = 0x555555566d9b *)
and uint64 r13 rax r13;
(* and    %rax,%r14                                #! PC = 0x555555566d9e *)
and uint64 r14 rax r14;
(* and    %rax,%r15                                #! PC = 0x555555566da1 *)
and uint64 r15 rax r15;
(* and    %rax,%rdi                                #! PC = 0x555555566da4 *)
and uint64 rdi rax rdi;
(* and    %rax,%rsi                                #! PC = 0x555555566da7 *)
and uint64 rsi rax rsi;
(* and    %rax,%rbx                                #! PC = 0x555555566daa *)
and uint64 rbx rax rbx;
(* and    %rax,%rcx                                #! PC = 0x555555566dad *)
and uint64 rcx rax rcx;
assert true && and [
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a900 = r12,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a928 = r13,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a930 = r14,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a938 = r15,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a940 = rdi,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a948 = rsi,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a950 = rbx,
    uext carry_sub_a0b0_a1b1 63 * L0x55555556a958 = rcx
  ];
assume and [
    carry_sub_a0b0_a1b1 * L0x55555556a900 = r12,
    carry_sub_a0b0_a1b1 * L0x55555556a928 = r13,
    carry_sub_a0b0_a1b1 * L0x55555556a930 = r14,
    carry_sub_a0b0_a1b1 * L0x55555556a938 = r15,
    carry_sub_a0b0_a1b1 * L0x55555556a940 = rdi,
    carry_sub_a0b0_a1b1 * L0x55555556a948 = rsi,
    carry_sub_a0b0_a1b1 * L0x55555556a950 = rbx,
    carry_sub_a0b0_a1b1 * L0x55555556a958 = rcx
  ] && true;
(* mov    0x60(%rdx),%rax                          #! EA = L0x7fffffffd320; Value = 0xbd3e03d399907316; PC = 0x555555566db0 *)
mov rax L0x7fffffffd320;
(* add    %r12,%rax                                #! PC = 0x555555566db4 *)
adds carry rax rax r12;
(* mov    %rax,0x60(%rdx)                          #! EA = L0x7fffffffd320; PC = 0x555555566db7 *)
mov L0x7fffffffd320 rax;
(* mov    0x68(%rdx),%rax                          #! EA = L0x7fffffffd328; Value = 0x586c030dc46fd874; PC = 0x555555566dbb *)
mov rax L0x7fffffffd328;
(* adc    %r12,%rax                                #! PC = 0x555555566dbf *)
adcs carry rax rax r12@uint64 carry;
(* mov    %rax,0x68(%rdx)                          #! EA = L0x7fffffffd328; PC = 0x555555566dc2 *)
mov L0x7fffffffd328 rax;
(* mov    0x70(%rdx),%rax                          #! EA = L0x7fffffffd330; Value = 0x818dfe980967eaf3; PC = 0x555555566dc6 *)
mov rax L0x7fffffffd330;
(* adc    %r12,%rax                                #! PC = 0x555555566dca *)
adcs carry rax rax r12@uint64 carry;
(* mov    %rax,0x70(%rdx)                          #! EA = L0x7fffffffd330; PC = 0x555555566dcd *)
mov L0x7fffffffd330 rax;
(* mov    0x78(%rdx),%rax                          #! EA = L0x7fffffffd338; Value = 0x0453aaa6f302b209; PC = 0x555555566dd1 *)
mov rax L0x7fffffffd338;
(* adc    %r12,%rax                                #! PC = 0x555555566dd5 *)
adcs carry rax rax r12@uint64 carry;
(* mov    %rax,0x78(%rdx)                          #! EA = L0x7fffffffd338; PC = 0x555555566dd8 *)
mov L0x7fffffffd338 rax;
(* adc    0x80(%rdx),%r12                          #! EA = L0x7fffffffd340; Value = 0xbcd30cdf367956e1; PC = 0x555555566ddc *)
adcs carry r12 r12 L0x7fffffffd340 carry;
(* adc    0x88(%rdx),%r13                          #! EA = L0x7fffffffd348; Value = 0x499fff505d1e4c4a; PC = 0x555555566de3 *)
adcs carry r13 r13 L0x7fffffffd348 carry;
(* mov    %r12,0x80(%rdx)                          #! EA = L0x7fffffffd340; PC = 0x555555566dea *)
mov L0x7fffffffd340 r12;
(* mov    %r13,0x88(%rdx)                          #! EA = L0x7fffffffd348; PC = 0x555555566df1 *)
mov L0x7fffffffd348 r13;
(* mov    0x90(%rdx),%r12                          #! EA = L0x7fffffffd350; Value = 0xa71244873897fdf2; PC = 0x555555566df8 *)
mov r12 L0x7fffffffd350;
(* mov    0x98(%rdx),%r13                          #! EA = L0x7fffffffd358; Value = 0x46b7124fe21f6f53; PC = 0x555555566dff *)
mov r13 L0x7fffffffd358;
(* adc    %r14,%r12                                #! PC = 0x555555566e06 *)
adcs carry r12 r12 r14@uint64 carry;
(* adc    %r15,%r13                                #! PC = 0x555555566e09 *)
adcs carry r13 r13 r15@uint64 carry;
(* adc    %rdi,%r8                                 #! PC = 0x555555566e0c *)
adcs carry r8 r8 rdi@uint64 carry;
(* adc    %rsi,%r9                                 #! PC = 0x555555566e0f *)
adcs carry r9 r9 rsi@uint64 carry;
(* adc    %rbx,%r10                                #! PC = 0x555555566e12 *)
adcs carry r10 r10 rbx@uint64 carry;
(* adc    %rcx,%r11                                #! PC = 0x555555566e15 *)
adcs carry r11 r11 rcx@uint64 carry;
assert true && carry_sub_a0b0_a1b1 = carry;
assume carry_sub_a0b0_a1b1 = carry && true;
(* mov    %r12,0x90(%rdx)                          #! EA = L0x7fffffffd350; PC = 0x555555566e18 *)
mov L0x7fffffffd350 r12;
(* mov    %r13,0x98(%rdx)                          #! EA = L0x7fffffffd358; PC = 0x555555566e1f *)
mov L0x7fffffffd358 r13;
(* mov    %r8,0xa0(%rdx)                           #! EA = L0x7fffffffd360; PC = 0x555555566e26 *)
mov L0x7fffffffd360 r8;
(* mov    %r9,0xa8(%rdx)                           #! EA = L0x7fffffffd368; PC = 0x555555566e2d *)
mov L0x7fffffffd368 r9;
(* mov    %r10,0xb0(%rdx)                          #! EA = L0x7fffffffd370; PC = 0x555555566e34 *)
mov L0x7fffffffd370 r10;
(* mov    %r11,0xb8(%rdx)                          #! EA = L0x7fffffffd378; PC = 0x555555566e3b *)
mov L0x7fffffffd378 r11;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x555555566e4b *)
#retq                                           #! 0x555555566e4b = 0x555555566e4b;

ghost tt1_1_00@uint64, tt1_1_01@uint64, tt1_1_02@uint64, tt1_1_03@uint64, tt1_1_04@uint64, tt1_1_05@uint64,
      tt1_1_06@uint64, tt1_1_07@uint64, tt1_1_08@uint64, tt1_1_09@uint64, tt1_1_10@uint64, tt1_1_11@uint64,
      tt1_1_12@uint64, tt1_1_13@uint64, tt1_1_14@uint64, tt1_1_15@uint64, tt1_1_16@uint64, tt1_1_17@uint64,
      tt1_1_18@uint64, tt1_1_19@uint64, tt1_1_20@uint64, tt1_1_21@uint64, tt1_1_22@uint64, tt1_1_23@uint64 :
  and [
    tt1_1_00 = L0x7fffffffd2c0, tt1_1_01 = L0x7fffffffd2c8, tt1_1_02 = L0x7fffffffd2d0,
    tt1_1_03 = L0x7fffffffd2d8, tt1_1_04 = L0x7fffffffd2e0, tt1_1_05 = L0x7fffffffd2e8,
    tt1_1_06 = L0x7fffffffd2f0, tt1_1_07 = L0x7fffffffd2f8, tt1_1_08 = L0x7fffffffd300,
    tt1_1_09 = L0x7fffffffd308, tt1_1_10 = L0x7fffffffd310, tt1_1_11 = L0x7fffffffd318,
    tt1_1_12 = L0x7fffffffd320, tt1_1_13 = L0x7fffffffd328, tt1_1_14 = L0x7fffffffd330,
    tt1_1_15 = L0x7fffffffd338, tt1_1_16 = L0x7fffffffd340, tt1_1_17 = L0x7fffffffd348,
    tt1_1_18 = L0x7fffffffd350, tt1_1_19 = L0x7fffffffd358, tt1_1_20 = L0x7fffffffd360,
    tt1_1_21 = L0x7fffffffd368, tt1_1_22 = L0x7fffffffd370, tt1_1_23 = L0x7fffffffd378
  ]
  &&
  and [
    tt1_1_00 = L0x7fffffffd2c0, tt1_1_01 = L0x7fffffffd2c8, tt1_1_02 = L0x7fffffffd2d0,
    tt1_1_03 = L0x7fffffffd2d8, tt1_1_04 = L0x7fffffffd2e0, tt1_1_05 = L0x7fffffffd2e8,
    tt1_1_06 = L0x7fffffffd2f0, tt1_1_07 = L0x7fffffffd2f8, tt1_1_08 = L0x7fffffffd300,
    tt1_1_09 = L0x7fffffffd308, tt1_1_10 = L0x7fffffffd310, tt1_1_11 = L0x7fffffffd318,
    tt1_1_12 = L0x7fffffffd320, tt1_1_13 = L0x7fffffffd328, tt1_1_14 = L0x7fffffffd330,
    tt1_1_15 = L0x7fffffffd338, tt1_1_16 = L0x7fffffffd340, tt1_1_17 = L0x7fffffffd348,
    tt1_1_18 = L0x7fffffffd350, tt1_1_19 = L0x7fffffffd358, tt1_1_20 = L0x7fffffffd360,
    tt1_1_21 = L0x7fffffffd368, tt1_1_22 = L0x7fffffffd370, tt1_1_23 = L0x7fffffffd378
  ];

# Ecut 7
ecut (limbs 64 [ tt1_1_00, tt1_1_01, tt1_1_02, tt1_1_03, tt1_1_04, tt1_1_05, tt1_1_06, tt1_1_07, tt1_1_08, tt1_1_09, tt1_1_10, tt1_1_11,
                 tt1_1_12, tt1_1_13, tt1_1_14, tt1_1_15, tt1_1_16, tt1_1_17, tt1_1_18, tt1_1_19, tt1_1_20, tt1_1_21, tt1_1_22, tt1_1_23 ])
     =
     (
       (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                   tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23 ])
       -
       (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                   tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23 ])
       +
       (
         carry_sub_a0b0_a1b1
         *
         ((2**768) * (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]))
       )
     ) prove with [all ghosts, cuts [0,1,2,3,4,6]];
# toZ tt1_1 = toZ tt1_0 - toZ tt2 + toZ (carry_sub_a0b0_a1b1 * 2**768 * p751)
# - tt1_0 - tt2 + carry_sub_a0b0_a1b1 * 2**768 * p751 = tt1_0 + carry_sub_a0b0_a1b1 * 2**768 * p751 - tt2 (x - y + z = x + z - y is a proven lemma)
# - tt2 <=u tt1_0 + carry_sub_a0b0_a1b1 * 2**768 * p751, i.e., `tt1_0 + carry_sub_a0b0_a1b1 * 2**768 * p751 - tt2` does not underflow.
# - tt1_0 + carry_sub_a0b0_a1b1 * 2**768 * p751 <u 2**1536, i.e., `tt1_0 + carry_sub_a0b0_a1b1 * 2**768 * p751` does not overflow.
# => toZ tt1 = toZ (tt1_0 - tt2 + carry_sub_a0b0_a1b1 * 2**768 * p751)
assert true && and [
         (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                     tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23, 0@64 ])
         <=u
         (
           (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                       tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23, 0@64 ])
           +
           (
             uext carry_sub_a0b0_a1b1 1599
             *
             (2**768)@1600 * uext (limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ]) 832
           )
         ),
         (
           (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                       tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23, 0@64 ])
           +
           (
             uext carry_sub_a0b0_a1b1 1599
             *
             (2**768)@1600 * uext (limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ]) 832
           )
         )
         <u
         (2**1536)@1600
       ];
assume true &&
       (limbs 64 [ tt1_1_00, tt1_1_01, tt1_1_02, tt1_1_03, tt1_1_04, tt1_1_05, tt1_1_06, tt1_1_07, tt1_1_08, tt1_1_09, tt1_1_10, tt1_1_11,
                   tt1_1_12, tt1_1_13, tt1_1_14, tt1_1_15, tt1_1_16, tt1_1_17, tt1_1_18, tt1_1_19, tt1_1_20, tt1_1_21, tt1_1_22, tt1_1_23 ])
       =
       (
         (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                     tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23 ])
         -
         (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                     tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23 ])
         +
         (
           uext carry_sub_a0b0_a1b1 1535
           *
           (2**768)@1536 * uext (limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ]) 768
         )
       );
# Rcut 6
rcut and [
       (limbs 64 [ tt1_1_00, tt1_1_01, tt1_1_02, tt1_1_03, tt1_1_04, tt1_1_05, tt1_1_06, tt1_1_07, tt1_1_08, tt1_1_09, tt1_1_10, tt1_1_11,
                   tt1_1_12, tt1_1_13, tt1_1_14, tt1_1_15, tt1_1_16, tt1_1_17, tt1_1_18, tt1_1_19, tt1_1_20, tt1_1_21, tt1_1_22, tt1_1_23 ])
       =
       (
         (limbs 64 [ tt1_0_00, tt1_0_01, tt1_0_02, tt1_0_03, tt1_0_04, tt1_0_05, tt1_0_06, tt1_0_07, tt1_0_08, tt1_0_09, tt1_0_10, tt1_0_11,
                     tt1_0_12, tt1_0_13, tt1_0_14, tt1_0_15, tt1_0_16, tt1_0_17, tt1_0_18, tt1_0_19, tt1_0_20, tt1_0_21, tt1_0_22, tt1_0_23 ])
         -
         (limbs 64 [ tt2_00, tt2_01, tt2_02, tt2_03, tt2_04, tt2_05, tt2_06, tt2_07, tt2_08, tt2_09, tt2_10, tt2_11,
                     tt2_12, tt2_13, tt2_14, tt2_15, tt2_16, tt2_17, tt2_18, tt2_19, tt2_20, tt2_21, tt2_22, tt2_23 ])
         +
         (
           uext carry_sub_a0b0_a1b1 1535
           *
           (2**768)@1536 * uext (limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ]) 768
         )
       ),
       (limbs 64 [ tt1_1_00, tt1_1_01, tt1_1_02, tt1_1_03, tt1_1_04, tt1_1_05, tt1_1_06, tt1_1_07, tt1_1_08, tt1_1_09, tt1_1_10, tt1_1_11,
                   tt1_1_12, tt1_1_13, tt1_1_14, tt1_1_15, tt1_1_16, tt1_1_17, tt1_1_18, tt1_1_19, tt1_1_20, tt1_1_21, tt1_1_22, tt1_1_23 ])
       <u
       (
         (limbs 64 [ 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64, 0@64,
                     $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ])
       )
     ] prove with [precondition, all ghosts, cuts [2,3]];

// rdc_mont(tt3, c[1]);                             // c1 = (a0+a1)*(b0+b1) - a0*b0 - a1*b1
(* mov    %r12,%rdi                                #! PC = 0x555555558edf *)
mov rdi r12;
(* #callq  0x5555555650d0 <rdc_mont>               #! PC = 0x555555558ee2 *)
#callq  0x5555555650d0 <rdc_mont>               #! 0x555555558ee2 = 0x555555558ee2;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #jmpq   0x555555566220 <rdc751_asm>             #! PC = 0x5555555650d4 *)
#jmpq   0x555555566220 <rdc751_asm>             #! 0x5555555650d4 = 0x5555555650d4;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd440; Value = 0x48fd439bb247fd90; PC = 0x55555556622a *)
mov rdx L0x7fffffffd440;
(* mulx   0x45d2(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556622d *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x45d1(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566236 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x55555556623f *)
mov L0x7fffffffdcf0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566243 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x45c9(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566246 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556624f *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x555555566255 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x45bc(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556625b *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x555555566264 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x45b5(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556626a *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x555555566273 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x45ae(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566279 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555566282 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x45a7(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566288 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x555555566291 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566297 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd448; Value = 0x71fc7d979038d110; PC = 0x55555556629d *)
mov rdx L0x7fffffffd448;
(* mulx   0x455e(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555662a1 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555662aa *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555662ad *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdcf8; PC = 0x5555555662b3 *)
mov L0x7fffffffdcf8 r8;
(* adcx   %rbx,%r13                                #! PC = 0x5555555662b7 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x454a(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555662bd *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x5555555662c6 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x5555555662cc *)
adcs carry r14 r14 rbp carry;
(* mulx   0x453d(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555662d2 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x5555555662db *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555662e1 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x4530(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555662e7 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x5555555662f0 *)
adcs carry r9 r9 r12 carry;
(* mulx   0x4529(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555662f6 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x5555555662ff *)
adcs carry r10 r10 r12 carry;
(* mulx   0x4522(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566305 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556630e *)
adcs carry r11 r11 r12 carry;
(* mulx   0x451b(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566314 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556631d *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566323 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566329 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556632f *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566335 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556633b *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd450; Value = 0xdadf47e44848a1ac; PC = 0x555555566341 *)
mov rdx L0x7fffffffd450;
(* mulx   0x44ba(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566345 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556634e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x555555566351 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x555555566357 *)
mov L0x7fffffffdd00 r13;
(* adcx   %rbx,%r14                                #! PC = 0x55555556635b *)
adcs carry r14 r14 rbx carry;
(* mulx   0x44a6(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566361 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x55555556636a *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566370 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4499(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566376 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x55555556637f *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x555555566385 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x448c(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556638b *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566394 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4485(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556639a *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555663a3 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x447e(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555663a9 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x5555555663b2 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4477(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555663b8 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x5555555663c1 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x5555555663c7 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555663cd *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x5555555663d3 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x5555555663d9 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x5555555663df *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd458; Value = 0xb3309f50818333fb; PC = 0x5555555663e5 *)
mov rdx L0x7fffffffd458;
(* mulx   0x4416(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555663e9 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555663f2 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555663f5 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555663fb *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4406(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566401 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x55555556640a *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566410 *)
adcs carry r9 r9 rbx carry;
(* mulx   0x43f9(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566416 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556641f *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566425 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x43ec(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556642b *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566434 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x43e5(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556643a *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566443 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x43de(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566449 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566452 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x43d7(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566458 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566461 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566467 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556646d *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566473 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566479 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x55555556647f *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x555555566485 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdcf0; Value = 0x3300000000000000; PC = 0x555555566488 *)
mov rax L0x7fffffffdcf0;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdcf8; Value = 0xa0575593ac6365ba; PC = 0x55555556648c *)
mov rdx L0x7fffffffdcf8;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdd00; Value = 0x0e8408774924e6e2; PC = 0x555555566490 *)
mov rbx L0x7fffffffdd00;
(* add    0x28(%rdi),%rax                          #! EA = L0x7fffffffd468; Value = 0xf9e7721be732b691; PC = 0x555555566494 *)
adds carry rax rax L0x7fffffffd468;
(* adc    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd470; Value = 0xa82d89a43750f5a0; PC = 0x555555566498 *)
adcs carry rdx rdx L0x7fffffffd470 carry;
(* adc    0x38(%rdi),%rbx                          #! EA = L0x7fffffffd478; Value = 0xfcf9011babaf9e28; PC = 0x55555556649c *)
adcs carry rbx rbx L0x7fffffffd478 carry;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd468; PC = 0x5555555664a0 *)
mov L0x7fffffffd468 rax;
(* mov    %rdx,0x30(%rdi)                          #! EA = L0x7fffffffd470; PC = 0x5555555664a4 *)
mov L0x7fffffffd470 rdx;
(* mov    %rbx,0x38(%rdi)                          #! EA = L0x7fffffffd478; PC = 0x5555555664a8 *)
mov L0x7fffffffd478 rbx;
(* adc    0x40(%rdi),%rbp                          #! EA = L0x7fffffffd480; Value = 0x334d4a944a7a12cd; PC = 0x5555555664ac *)
adcs carry rbp rbp L0x7fffffffd480 carry;
(* adc    0x48(%rdi),%r8                           #! EA = L0x7fffffffd488; Value = 0x32c14ce286b53a38; PC = 0x5555555664b0 *)
adcs carry r8 r8 L0x7fffffffd488 carry;
(* adc    0x50(%rdi),%r9                           #! EA = L0x7fffffffd490; Value = 0xb86137ec39471eb0; PC = 0x5555555664b4 *)
adcs carry r9 r9 L0x7fffffffd490 carry;
(* adc    0x58(%rdi),%r10                          #! EA = L0x7fffffffd498; Value = 0xdba8e3e0e2dbb1db; PC = 0x5555555664b8 *)
adcs carry r10 r10 L0x7fffffffd498 carry;
(* adc    0x60(%rdi),%r11                          #! EA = L0x7fffffffd4a0; Value = 0x40f90a21fd135c39; PC = 0x5555555664bc *)
adcs carry r11 r11 L0x7fffffffd4a0 carry;
(* adc    0x68(%rdi),%r12                          #! EA = L0x7fffffffd4a8; Value = 0xaa0d90c31c3a8250; PC = 0x5555555664c0 *)
adcs carry r12 r12 L0x7fffffffd4a8 carry;
(* adc    0x70(%rdi),%r13                          #! EA = L0x7fffffffd4b0; Value = 0x95777c54de744e4e; PC = 0x5555555664c4 *)
adcs carry r13 r13 L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%r14                          #! EA = L0x7fffffffd4b8; Value = 0x294ffeb439687ef6; PC = 0x5555555664c8 *)
adcs carry r14 r14 L0x7fffffffd4b8 carry;
(* adc    0x80(%rdi),%r15                          #! EA = L0x7fffffffd4c0; Value = 0x6e8e0085ddcca023; PC = 0x5555555664cc *)
adcs carry r15 r15 L0x7fffffffd4c0 carry;
(* mov    %rbp,0x40(%rdi)                          #! EA = L0x7fffffffd480; PC = 0x5555555664d3 *)
mov L0x7fffffffd480 rbp;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd488; PC = 0x5555555664d7 *)
mov L0x7fffffffd488 r8;
(* mov    %r9,0x50(%rdi)                           #! EA = L0x7fffffffd490; PC = 0x5555555664db *)
mov L0x7fffffffd490 r9;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x5555555664df *)
mov L0x7fffffffd498 r10;
(* mov    %r11,0x60(%rdi)                          #! EA = L0x7fffffffd4a0; PC = 0x5555555664e3 *)
mov L0x7fffffffd4a0 r11;
(* mov    %r12,0x68(%rdi)                          #! EA = L0x7fffffffd4a8; PC = 0x5555555664e7 *)
mov L0x7fffffffd4a8 r12;
(* mov    %r13,0x70(%rdi)                          #! EA = L0x7fffffffd4b0; PC = 0x5555555664eb *)
mov L0x7fffffffd4b0 r13;
(* mov    %r14,0x78(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x5555555664ef *)
mov L0x7fffffffd4b8 r14;
(* mov    %r15,0x80(%rdi)                          #! EA = L0x7fffffffd4c0; PC = 0x5555555664f3 *)
mov L0x7fffffffd4c0 r15;
(* mov    0x88(%rdi),%r8                           #! EA = L0x7fffffffd4c8; Value = 0xdfa825d5e3c9112f; PC = 0x5555555664fa *)
mov r8 L0x7fffffffd4c8;
(* mov    0x90(%rdi),%r9                           #! EA = L0x7fffffffd4d0; Value = 0xdde52ddc271d47b1; PC = 0x555555566501 *)
mov r9 L0x7fffffffd4d0;
(* mov    0x98(%rdi),%r10                          #! EA = L0x7fffffffd4d8; Value = 0x59bdb285f789a785; PC = 0x555555566508 *)
mov r10 L0x7fffffffd4d8;
(* mov    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd4e0; Value = 0x75a43458301160d8; PC = 0x55555556650f *)
mov r11 L0x7fffffffd4e0;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0xd050a278e5c5564e; PC = 0x555555566516 *)
mov r12 L0x7fffffffd4e8;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0x3e953457609e66f3; PC = 0x55555556651d *)
mov r13 L0x7fffffffd4f0;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x000000002286f5ae; PC = 0x555555566524 *)
mov r14 L0x7fffffffd4f8;
(* adc    $0x0,%r8                                 #! PC = 0x55555556652b *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x55555556652f *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x555555566533 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x555555566537 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x55555556653b *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x55555556653f *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x555555566543 *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x88(%rdi)                           #! EA = L0x7fffffffd4c8; PC = 0x555555566547 *)
mov L0x7fffffffd4c8 r8;
(* mov    %r9,0x90(%rdi)                           #! EA = L0x7fffffffd4d0; PC = 0x55555556654e *)
mov L0x7fffffffd4d0 r9;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555566555 *)
mov L0x7fffffffd4d8 r10;
(* mov    %r11,0xa0(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x55555556655c *)
mov L0x7fffffffd4e0 r11;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566563 *)
mov L0x7fffffffd4e8 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x55555556656a *)
mov L0x7fffffffd4f0 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x555555566571 *)
mov L0x7fffffffd4f8 r14;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd460; Value = 0x275223d96744d0ae; PC = 0x555555566578 *)
mov rdx L0x7fffffffd460;
(* mulx   0x4283(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556657c *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x4282(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566585 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x55555556658e *)
mov L0x7fffffffdcf0 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566592 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x427a(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566595 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556659e *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555665a4 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x426d(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555665aa *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555665b3 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x4266(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555665b9 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555665c2 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x425f(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555665c8 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555665d1 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x4258(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555665d7 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555665e0 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555665e6 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd468; Value = 0x2ce7721be732b691; PC = 0x5555555665ec *)
mov rdx L0x7fffffffd468;
(* mulx   0x420f(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555665f0 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555665f9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555665fc *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdcf8; PC = 0x555555566602 *)
mov L0x7fffffffdcf8 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566606 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x41fb(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556660c *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566615 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x55555556661b *)
adcs carry r14 r14 rbp carry;
(* mulx   0x41ee(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566621 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x55555556662a *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555566630 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x41e1(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566636 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556663f *)
adcs carry r9 r9 r12 carry;
(* mulx   0x41da(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566645 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556664e *)
adcs carry r10 r10 r12 carry;
(* mulx   0x41d3(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566654 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556665d *)
adcs carry r11 r11 r12 carry;
(* mulx   0x41cc(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566663 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556666c *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566672 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566678 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556667e *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566684 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556668a *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd470; Value = 0x4884df37e3b45b5b; PC = 0x555555566690 *)
mov rdx L0x7fffffffd470;
(* mulx   0x416b(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566694 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556669d *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555666a0 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x5555555666a6 *)
mov L0x7fffffffdd00 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555666aa *)
adcs carry r14 r14 rbx carry;
(* mulx   0x4157(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555666b0 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555666b9 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555666bf *)
adcs carry r8 r8 rbx carry;
(* mulx   0x414a(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555666c5 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555666ce *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555666d4 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x413d(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555666da *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x5555555666e3 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4136(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555666e9 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555666f2 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x412f(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555666f8 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566701 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4128(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566707 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566710 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566716 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556671c *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566722 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566728 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x55555556672e *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd478; Value = 0x0b7d0992f4d4850b; PC = 0x555555566734 *)
mov rdx L0x7fffffffd478;
(* mulx   0x40c7(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566738 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566741 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566744 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x55555556674a *)
adcs carry r8 r8 rbx carry;
(* mulx   0x40b7(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566750 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566759 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556675f *)
adcs carry r9 r9 rbx carry;
(* mulx   0x40aa(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566765 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556676e *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566774 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x409d(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556677a *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566783 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x4096(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566789 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566792 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x408f(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566798 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x5555555667a1 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x4088(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555667a7 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x5555555667b0 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x5555555667b6 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x5555555667bc *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x5555555667c2 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x5555555667c8 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x5555555667ce *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x5555555667d4 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdcf0; Value = 0x3ba0000000000000; PC = 0x5555555667d7 *)
mov rax L0x7fffffffdcf0;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdcf8; Value = 0x218bdd7291037b81; PC = 0x5555555667db *)
mov rdx L0x7fffffffdcf8;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdd00; Value = 0xf63a7c1937608938; PC = 0x5555555667df *)
mov rbx L0x7fffffffdd00;
(* add    0x48(%rdi),%rax                          #! EA = L0x7fffffffd488; Value = 0xc3ee2c5dc6141448; PC = 0x5555555667e3 *)
adds carry rax rax L0x7fffffffd488;
(* adc    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd490; Value = 0xcd3cb6a5a3b2d68b; PC = 0x5555555667e7 *)
adcs carry rdx rdx L0x7fffffffd490 carry;
(* adc    0x58(%rdi),%rbx                          #! EA = L0x7fffffffd498; Value = 0xba58229eeaafa9ca; PC = 0x5555555667eb *)
adcs carry rbx rbx L0x7fffffffd498 carry;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd488; PC = 0x5555555667ef *)
mov L0x7fffffffd488 rax;
(* mov    %rdx,0x50(%rdi)                          #! EA = L0x7fffffffd490; PC = 0x5555555667f3 *)
mov L0x7fffffffd490 rdx;
(* mov    %rbx,0x58(%rdi)                          #! EA = L0x7fffffffd498; PC = 0x5555555667f7 *)
mov L0x7fffffffd498 rbx;
(* adc    0x60(%rdi),%rbp                          #! EA = L0x7fffffffd4a0; Value = 0xae73f90c58ebd9a3; PC = 0x5555555667fb *)
adcs carry rbp rbp L0x7fffffffd4a0 carry;
(* adc    0x68(%rdi),%r8                           #! EA = L0x7fffffffd4a8; Value = 0xd4f4ebbd10a71b8d; PC = 0x5555555667ff *)
adcs carry r8 r8 L0x7fffffffd4a8 carry;
(* adc    0x70(%rdi),%r9                           #! EA = L0x7fffffffd4b0; Value = 0x4f73fe37a3ae9f93; PC = 0x555555566803 *)
adcs carry r9 r9 L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%r10                          #! EA = L0x7fffffffd4b8; Value = 0x29504d072e408b00; PC = 0x555555566807 *)
adcs carry r10 r10 L0x7fffffffd4b8 carry;
(* adc    0x80(%rdi),%r11                          #! EA = L0x7fffffffd4c0; Value = 0x6e8e0085ddcca023; PC = 0x55555556680b *)
adcs carry r11 r11 L0x7fffffffd4c0 carry;
(* adc    0x88(%rdi),%r12                          #! EA = L0x7fffffffd4c8; Value = 0xdfa825d5e3c9112f; PC = 0x555555566812 *)
adcs carry r12 r12 L0x7fffffffd4c8 carry;
(* adc    0x90(%rdi),%r13                          #! EA = L0x7fffffffd4d0; Value = 0xdde52ddc271d47b1; PC = 0x555555566819 *)
adcs carry r13 r13 L0x7fffffffd4d0 carry;
(* adc    0x98(%rdi),%r14                          #! EA = L0x7fffffffd4d8; Value = 0x59bdb285f789a785; PC = 0x555555566820 *)
adcs carry r14 r14 L0x7fffffffd4d8 carry;
(* adc    0xa0(%rdi),%r15                          #! EA = L0x7fffffffd4e0; Value = 0x75a43458301160d8; PC = 0x555555566827 *)
adcs carry r15 r15 L0x7fffffffd4e0 carry;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdcc0; PC = 0x55555556682e *)
mov L0x7fffffffdcc0 rbp;
(* mov    %r8,0x68(%rdi)                           #! EA = L0x7fffffffd4a8; PC = 0x555555566831 *)
mov L0x7fffffffd4a8 r8;
(* mov    %r9,0x70(%rdi)                           #! EA = L0x7fffffffd4b0; PC = 0x555555566835 *)
mov L0x7fffffffd4b0 r9;
(* mov    %r10,0x78(%rdi)                          #! EA = L0x7fffffffd4b8; PC = 0x555555566839 *)
mov L0x7fffffffd4b8 r10;
(* mov    %r11,0x80(%rdi)                          #! EA = L0x7fffffffd4c0; PC = 0x55555556683d *)
mov L0x7fffffffd4c0 r11;
(* mov    %r12,0x88(%rdi)                          #! EA = L0x7fffffffd4c8; PC = 0x555555566844 *)
mov L0x7fffffffd4c8 r12;
(* mov    %r13,0x90(%rdi)                          #! EA = L0x7fffffffd4d0; PC = 0x55555556684b *)
mov L0x7fffffffd4d0 r13;
(* mov    %r14,0x98(%rdi)                          #! EA = L0x7fffffffd4d8; PC = 0x555555566852 *)
mov L0x7fffffffd4d8 r14;
(* mov    %r15,0xa0(%rdi)                          #! EA = L0x7fffffffd4e0; PC = 0x555555566859 *)
mov L0x7fffffffd4e0 r15;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0xd050a278e5c5564e; PC = 0x555555566860 *)
mov r12 L0x7fffffffd4e8;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0x3e953457609e66f3; PC = 0x555555566867 *)
mov r13 L0x7fffffffd4f0;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x000000002286f5ae; PC = 0x55555556686e *)
mov r14 L0x7fffffffd4f8;
(* adc    $0x0,%r12                                #! PC = 0x555555566875 *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x555555566879 *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x55555556687d *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd4e8; PC = 0x555555566881 *)
mov L0x7fffffffd4e8 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd4f0; PC = 0x555555566888 *)
mov L0x7fffffffd4f0 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd4f8; PC = 0x55555556688f *)
mov L0x7fffffffd4f8 r14;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd480; Value = 0x912e2cdb7c2d2f11; PC = 0x555555566896 *)
mov rdx L0x7fffffffd480;
(* mulx   0x3f65(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556689a *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x3f64(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555668a3 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x5555555668ac *)
mov L0x7fffffffdcf0 r9;
(* xor    %rax,%rax                                #! PC = 0x5555555668b0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3f5c(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555668b3 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x5555555668bc *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555668c2 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x3f4f(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555668c8 *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555668d1 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x3f48(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555668d7 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555668e0 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x3f41(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555668e6 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555668ef *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x3f3a(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555668f5 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555668fe *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566904 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd488; Value = 0xff8e2c5dc6141448; PC = 0x55555556690a *)
mov rdx L0x7fffffffd488;
(* mulx   0x3ef1(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556690e *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566917 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556691a *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdcf8; PC = 0x555555566920 *)
mov L0x7fffffffdcf8 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566924 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x3edd(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556692a *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566933 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x555555566939 *)
adcs carry r14 r14 rbp carry;
(* mulx   0x3ed0(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x55555556693f *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555566948 *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x55555556694e *)
adcs carry r8 r8 r9 carry;
(* mulx   0x3ec3(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566954 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556695d *)
adcs carry r9 r9 r12 carry;
(* mulx   0x3ebc(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566963 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556696c *)
adcs carry r10 r10 r12 carry;
(* mulx   0x3eb5(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566972 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556697b *)
adcs carry r11 r11 r12 carry;
(* mulx   0x3eae(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566981 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556698a *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566990 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566996 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556699c *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x5555555669a2 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x5555555669a8 *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd490; Value = 0xeec8941834b6520c; PC = 0x5555555669ae *)
mov rdx L0x7fffffffd490;
(* mulx   0x3e4d(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555669b2 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555669bb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555669be *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x5555555669c4 *)
mov L0x7fffffffdd00 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555669c8 *)
adcs carry r14 r14 rbx carry;
(* mulx   0x3e39(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555669ce *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555669d7 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555669dd *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3e2c(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555669e3 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555669ec *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555669f2 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x3e1f(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555669f8 *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566a01 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x3e18(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566a07 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x555555566a10 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x3e11(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566a16 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566a1f *)
adcs carry r12 r12 r13 carry;
(* mulx   0x3e0a(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566a25 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566a2e *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566a34 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555566a3a *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566a40 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566a46 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x555555566a4c *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd498; Value = 0xb0929eb822103302; PC = 0x555555566a52 *)
mov rdx L0x7fffffffd498;
(* mulx   0x3da9(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566a56 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566a5f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566a62 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566a68 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3d99(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566a6e *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566a77 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566a7d *)
adcs carry r9 r9 rbx carry;
(* mulx   0x3d8c(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566a83 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x555555566a8c *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566a92 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x3d7f(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566a98 *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566aa1 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x3d78(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566aa7 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566ab0 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x3d71(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566ab6 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566abf *)
adcs carry r13 r13 r14 carry;
(* mulx   0x3d6a(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566ac5 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566ace *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566ad4 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555566ada *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566ae0 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566ae6 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x555555566aec *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdcf0; Value = 0x29b0000000000000; PC = 0x555555566af2 *)
mov rax L0x7fffffffdcf0;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdcf8; Value = 0xd2f3a7b801863bfa; PC = 0x555555566af6 *)
mov rdx L0x7fffffffdcf8;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdd00; Value = 0x68e436a9cc75acdf; PC = 0x555555566afa *)
mov rbx L0x7fffffffdd00;
(* add    0x68(%rdi),%rax                          #! EA = L0x7fffffffd4a8; Value = 0xf15e1efcd0f3355c; PC = 0x555555566afe *)
adds carry rax rax L0x7fffffffd4a8;
(* adc    0x70(%rdi),%rdx                          #! EA = L0x7fffffffd4b0; Value = 0xdd89d265a1462385; PC = 0x555555566b02 *)
adcs carry rdx rdx L0x7fffffffd4b0 carry;
(* adc    0x78(%rdi),%rbx                          #! EA = L0x7fffffffd4b8; Value = 0x17f91bcc33a1cc83; PC = 0x555555566b06 *)
adcs carry rbx rbx L0x7fffffffd4b8 carry;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdcc8; PC = 0x555555566b0a *)
mov L0x7fffffffdcc8 rax;
(* mov    %rdx,0x10(%rsi)                          #! EA = L0x7fffffffdcd0; PC = 0x555555566b0e *)
mov L0x7fffffffdcd0 rdx;
(* mov    %rbx,0x18(%rsi)                          #! EA = L0x7fffffffdcd8; PC = 0x555555566b12 *)
mov L0x7fffffffdcd8 rbx;
(* adc    0x80(%rdi),%rbp                          #! EA = L0x7fffffffd4c0; Value = 0x3b3db63b1f478d9e; PC = 0x555555566b16 *)
adcs carry rbp rbp L0x7fffffffd4c0 carry;
(* adc    0x88(%rdi),%r8                           #! EA = L0x7fffffffd4c8; Value = 0x57f6b2a20a780510; PC = 0x555555566b1d *)
adcs carry r8 r8 L0x7fffffffd4c8 carry;
(* adc    0x90(%rdi),%r9                           #! EA = L0x7fffffffd4d0; Value = 0xa0409427d6262dae; PC = 0x555555566b24 *)
adcs carry r9 r9 L0x7fffffffd4d0 carry;
(* adc    0x98(%rdi),%r10                          #! EA = L0x7fffffffd4d8; Value = 0x59bdb78b7f1beef0; PC = 0x555555566b2b *)
adcs carry r10 r10 L0x7fffffffd4d8 carry;
(* adc    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd4e0; Value = 0x75a43458301160d8; PC = 0x555555566b32 *)
adcs carry r11 r11 L0x7fffffffd4e0 carry;
(* adc    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd4e8; Value = 0xd050a278e5c5564e; PC = 0x555555566b39 *)
adcs carry r12 r12 L0x7fffffffd4e8 carry;
(* adc    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd4f0; Value = 0x3e953457609e66f3; PC = 0x555555566b40 *)
adcs carry r13 r13 L0x7fffffffd4f0 carry;
(* adc    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd4f8; Value = 0x000000002286f5ae; PC = 0x555555566b47 *)
adcs carry r14 r14 L0x7fffffffd4f8 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rbp,0x20(%rsi)                          #! EA = L0x7fffffffdce0; PC = 0x555555566b4e *)
mov L0x7fffffffdce0 rbp;
(* mov    %r8,0x28(%rsi)                           #! EA = L0x7fffffffdce8; PC = 0x555555566b52 *)
mov L0x7fffffffdce8 r8;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdcf0; PC = 0x555555566b56 *)
mov L0x7fffffffdcf0 r9;
(* mov    %r10,0x38(%rsi)                          #! EA = L0x7fffffffdcf8; PC = 0x555555566b5a *)
mov L0x7fffffffdcf8 r10;
(* mov    %r11,0x40(%rsi)                          #! EA = L0x7fffffffdd00; PC = 0x555555566b5e *)
mov L0x7fffffffdd00 r11;
(* mov    %r12,0x48(%rsi)                          #! EA = L0x7fffffffdd08; PC = 0x555555566b62 *)
mov L0x7fffffffdd08 r12;
(* mov    %r13,0x50(%rsi)                          #! EA = L0x7fffffffdd10; PC = 0x555555566b66 *)
mov L0x7fffffffdd10 r13;
(* mov    %r14,0x58(%rsi)                          #! EA = L0x7fffffffdd18; PC = 0x555555566b6a *)
mov L0x7fffffffdd18 r14;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x555555566b78 *)
#retq                                           #! 0x555555566b78 = 0x555555566b78;

ghost c1_rdc_00@uint64, c1_rdc_01@uint64, c1_rdc_02@uint64, c1_rdc_03@uint64, c1_rdc_04@uint64, c1_rdc_05@uint64,
      c1_rdc_06@uint64, c1_rdc_07@uint64, c1_rdc_08@uint64, c1_rdc_09@uint64, c1_rdc_10@uint64, c1_rdc_11@uint64 :
  and [
    c1_rdc_00 = L0x7fffffffdcc0, c1_rdc_01 = L0x7fffffffdcc8, c1_rdc_02 = L0x7fffffffdcd0,
    c1_rdc_03 = L0x7fffffffdcd8, c1_rdc_04 = L0x7fffffffdce0, c1_rdc_05 = L0x7fffffffdce8,
    c1_rdc_06 = L0x7fffffffdcf0, c1_rdc_07 = L0x7fffffffdcf8, c1_rdc_08 = L0x7fffffffdd00,
    c1_rdc_09 = L0x7fffffffdd08, c1_rdc_10 = L0x7fffffffdd10, c1_rdc_11 = L0x7fffffffdd18
  ]
  &&
  and [
    c1_rdc_00 = L0x7fffffffdcc0, c1_rdc_01 = L0x7fffffffdcc8, c1_rdc_02 = L0x7fffffffdcd0,
    c1_rdc_03 = L0x7fffffffdcd8, c1_rdc_04 = L0x7fffffffdce0, c1_rdc_05 = L0x7fffffffdce8,
    c1_rdc_06 = L0x7fffffffdcf0, c1_rdc_07 = L0x7fffffffdcf8, c1_rdc_08 = L0x7fffffffdd00,
    c1_rdc_09 = L0x7fffffffdd08, c1_rdc_10 = L0x7fffffffdd10, c1_rdc_11 = L0x7fffffffdd18
  ];

# Ecut 8
ecut eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, c1_rdc_00, c1_rdc_01, c1_rdc_02, c1_rdc_03, c1_rdc_04, c1_rdc_05, c1_rdc_06, c1_rdc_07, c1_rdc_08, c1_rdc_09, c1_rdc_10, c1_rdc_11 ])
           (
             (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              *
              (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
             )
             +
             (
               (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
               *
               (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
             )
           )
           (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
     prove with [all ghosts, cuts [6]];
# Rcut 7
rcut (limbs 64 [ c1_rdc_00, c1_rdc_01, c1_rdc_02, c1_rdc_03, c1_rdc_04, c1_rdc_05, c1_rdc_06, c1_rdc_07, c1_rdc_08, c1_rdc_09, c1_rdc_10, c1_rdc_11 ])
     <=u
     (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768)
     prove with [precondition, all ghosts, cuts [5]];

// rdc_mont(tt1, c[0]);                             // c0 = a0*b0 - a1*b1
(* mov    %r14,%rsi                                #! PC = 0x555555558ee7 *)
mov rsi r14;
(* mov    %rbp,%rdi                                #! PC = 0x555555558eea *)
mov rdi rbp;
(* #callq  0x5555555650d0 <rdc_mont>               #! PC = 0x555555558eed *)
#callq  0x5555555650d0 <rdc_mont>               #! 0x555555558eed = 0x555555558eed;
(* #! -> SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #jmpq   0x555555566220 <rdc751_asm>             #! PC = 0x5555555650d4 *)
#jmpq   0x555555566220 <rdc751_asm>             #! 0x5555555650d4 = 0x5555555650d4;
(* mov    (%rdi),%rdx                              #! EA = L0x7fffffffd2c0; Value = 0xfe35eaa42ed5db07; PC = 0x55555556622a *)
mov rdx L0x7fffffffd2c0;
(* mulx   0x45d2(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556622d *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x45d1(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566236 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdc90; PC = 0x55555556623f *)
mov L0x7fffffffdc90 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566243 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x45c9(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566246 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556624f *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x555555566255 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x45bc(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556625b *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x555555566264 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x45b5(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556626a *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x555555566273 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x45ae(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566279 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x555555566282 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x45a7(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566288 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x555555566291 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566297 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x8(%rdi),%rdx                           #! EA = L0x7fffffffd2c8; Value = 0x875f74a5289dbb8c; PC = 0x55555556629d *)
mov rdx L0x7fffffffd2c8;
(* mulx   0x455e(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555662a1 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555662aa *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555662ad *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdc98; PC = 0x5555555662b3 *)
mov L0x7fffffffdc98 r8;
(* adcx   %rbx,%r13                                #! PC = 0x5555555662b7 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x454a(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555662bd *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x5555555662c6 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x5555555662cc *)
adcs carry r14 r14 rbp carry;
(* mulx   0x453d(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555662d2 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x5555555662db *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x5555555662e1 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x4530(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555662e7 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x5555555662f0 *)
adcs carry r9 r9 r12 carry;
(* mulx   0x4529(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555662f6 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x5555555662ff *)
adcs carry r10 r10 r12 carry;
(* mulx   0x4522(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566305 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556630e *)
adcs carry r11 r11 r12 carry;
(* mulx   0x451b(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566314 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556631d *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566323 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566329 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556632f *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566335 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556633b *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x10(%rdi),%rdx                          #! EA = L0x7fffffffd2d0; Value = 0x2cdc8eeabf1f5813; PC = 0x555555566341 *)
mov rdx L0x7fffffffd2d0;
(* mulx   0x44ba(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566345 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556634e *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x555555566351 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdca0; PC = 0x555555566357 *)
mov L0x7fffffffdca0 r13;
(* adcx   %rbx,%r14                                #! PC = 0x55555556635b *)
adcs carry r14 r14 rbx carry;
(* mulx   0x44a6(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566361 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x55555556636a *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566370 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4499(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566376 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x55555556637f *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x555555566385 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x448c(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556638b *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566394 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4485(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556639a *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555663a3 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x447e(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555663a9 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x5555555663b2 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4477(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555663b8 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x5555555663c1 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x5555555663c7 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x5555555663cd *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x5555555663d3 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x5555555663d9 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x5555555663df *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x18(%rdi),%rdx                          #! EA = L0x7fffffffd2d8; Value = 0xc3941e2aa872da48; PC = 0x5555555663e5 *)
mov rdx L0x7fffffffd2d8;
(* mulx   0x4416(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555663e9 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555663f2 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x5555555663f5 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555663fb *)
adcs carry r8 r8 rbx carry;
(* mulx   0x4406(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566401 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x55555556640a *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566410 *)
adcs carry r9 r9 rbx carry;
(* mulx   0x43f9(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566416 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556641f *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566425 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x43ec(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556642b *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566434 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x43e5(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x55555556643a *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566443 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x43de(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566449 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566452 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x43d7(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566458 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566461 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566467 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x55555556646d *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566473 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566479 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x55555556647f *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x555555566485 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdc90; Value = 0x16d0000000000000; PC = 0x555555566488 *)
mov rax L0x7fffffffdc90;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdc98; Value = 0x01f1162d1d36093f; PC = 0x55555556648c *)
mov rdx L0x7fffffffdc98;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdca0; Value = 0x3a89d90ca20ed2f7; PC = 0x555555566490 *)
mov rbx L0x7fffffffdca0;
(* add    0x28(%rdi),%rax                          #! EA = L0x7fffffffd2e8; Value = 0x2a0bbcab9ea568ce; PC = 0x555555566494 *)
adds carry rax rax L0x7fffffffd2e8;
(* adc    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd2f0; Value = 0xccf65f7a3fda88ee; PC = 0x555555566498 *)
adcs carry rdx rdx L0x7fffffffd2f0 carry;
(* adc    0x38(%rdi),%rbx                          #! EA = L0x7fffffffd2f8; Value = 0xfc33c460519dfbec; PC = 0x55555556649c *)
adcs carry rbx rbx L0x7fffffffd2f8 carry;
(* mov    %rax,0x28(%rdi)                          #! EA = L0x7fffffffd2e8; PC = 0x5555555664a0 *)
mov L0x7fffffffd2e8 rax;
(* mov    %rdx,0x30(%rdi)                          #! EA = L0x7fffffffd2f0; PC = 0x5555555664a4 *)
mov L0x7fffffffd2f0 rdx;
(* mov    %rbx,0x38(%rdi)                          #! EA = L0x7fffffffd2f8; PC = 0x5555555664a8 *)
mov L0x7fffffffd2f8 rbx;
(* adc    0x40(%rdi),%rbp                          #! EA = L0x7fffffffd300; Value = 0xd29e4cf52811e844; PC = 0x5555555664ac *)
adcs carry rbp rbp L0x7fffffffd300 carry;
(* adc    0x48(%rdi),%r8                           #! EA = L0x7fffffffd308; Value = 0x15894f9f277a6304; PC = 0x5555555664b0 *)
adcs carry r8 r8 L0x7fffffffd308 carry;
(* adc    0x50(%rdi),%r9                           #! EA = L0x7fffffffd310; Value = 0x010229740a05adaa; PC = 0x5555555664b4 *)
adcs carry r9 r9 L0x7fffffffd310 carry;
(* adc    0x58(%rdi),%r10                          #! EA = L0x7fffffffd318; Value = 0xf64f05392033a082; PC = 0x5555555664b8 *)
adcs carry r10 r10 L0x7fffffffd318 carry;
(* adc    0x60(%rdi),%r11                          #! EA = L0x7fffffffd320; Value = 0xbd3e03d399907315; PC = 0x5555555664bc *)
adcs carry r11 r11 L0x7fffffffd320 carry;
(* adc    0x68(%rdi),%r12                          #! EA = L0x7fffffffd328; Value = 0x586c030dc46fd874; PC = 0x5555555664c0 *)
adcs carry r12 r12 L0x7fffffffd328 carry;
(* adc    0x70(%rdi),%r13                          #! EA = L0x7fffffffd330; Value = 0x818dfe980967eaf3; PC = 0x5555555664c4 *)
adcs carry r13 r13 L0x7fffffffd330 carry;
(* adc    0x78(%rdi),%r14                          #! EA = L0x7fffffffd338; Value = 0x0453aaa6f302b209; PC = 0x5555555664c8 *)
adcs carry r14 r14 L0x7fffffffd338 carry;
(* adc    0x80(%rdi),%r15                          #! EA = L0x7fffffffd340; Value = 0xbcd30cdf367956e1; PC = 0x5555555664cc *)
adcs carry r15 r15 L0x7fffffffd340 carry;
(* mov    %rbp,0x40(%rdi)                          #! EA = L0x7fffffffd300; PC = 0x5555555664d3 *)
mov L0x7fffffffd300 rbp;
(* mov    %r8,0x48(%rdi)                           #! EA = L0x7fffffffd308; PC = 0x5555555664d7 *)
mov L0x7fffffffd308 r8;
(* mov    %r9,0x50(%rdi)                           #! EA = L0x7fffffffd310; PC = 0x5555555664db *)
mov L0x7fffffffd310 r9;
(* mov    %r10,0x58(%rdi)                          #! EA = L0x7fffffffd318; PC = 0x5555555664df *)
mov L0x7fffffffd318 r10;
(* mov    %r11,0x60(%rdi)                          #! EA = L0x7fffffffd320; PC = 0x5555555664e3 *)
mov L0x7fffffffd320 r11;
(* mov    %r12,0x68(%rdi)                          #! EA = L0x7fffffffd328; PC = 0x5555555664e7 *)
mov L0x7fffffffd328 r12;
(* mov    %r13,0x70(%rdi)                          #! EA = L0x7fffffffd330; PC = 0x5555555664eb *)
mov L0x7fffffffd330 r13;
(* mov    %r14,0x78(%rdi)                          #! EA = L0x7fffffffd338; PC = 0x5555555664ef *)
mov L0x7fffffffd338 r14;
(* mov    %r15,0x80(%rdi)                          #! EA = L0x7fffffffd340; PC = 0x5555555664f3 *)
mov L0x7fffffffd340 r15;
(* mov    0x88(%rdi),%r8                           #! EA = L0x7fffffffd348; Value = 0x384fff505d1e4c4a; PC = 0x5555555664fa *)
mov r8 L0x7fffffffd348;
(* mov    0x90(%rdi),%r9                           #! EA = L0x7fffffffd350; Value = 0x8afedb0c8290769b; PC = 0x555555566501 *)
mov r9 L0x7fffffffd350;
(* mov    0x98(%rdi),%r10                          #! EA = L0x7fffffffd358; Value = 0x214cad69f6173bca; PC = 0x555555566508 *)
mov r10 L0x7fffffffd358;
(* mov    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd360; Value = 0xd547df728bc248aa; PC = 0x55555556650f *)
mov r11 L0x7fffffffd360;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd368; Value = 0xa8642c4398af2b34; PC = 0x555555566516 *)
mov r12 L0x7fffffffd368;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd370; Value = 0x4b4b119ae1fb2b1c; PC = 0x55555556651d *)
mov r13 L0x7fffffffd370;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd378; Value = 0x00006fe5b2f5a488; PC = 0x555555566524 *)
mov r14 L0x7fffffffd378;
(* adc    $0x0,%r8                                 #! PC = 0x55555556652b *)
adcs carry r8 r8 0x0@uint64 carry;
(* adc    $0x0,%r9                                 #! PC = 0x55555556652f *)
adcs carry r9 r9 0x0@uint64 carry;
(* adc    $0x0,%r10                                #! PC = 0x555555566533 *)
adcs carry r10 r10 0x0@uint64 carry;
(* adc    $0x0,%r11                                #! PC = 0x555555566537 *)
adcs carry r11 r11 0x0@uint64 carry;
(* adc    $0x0,%r12                                #! PC = 0x55555556653b *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x55555556653f *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x555555566543 *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r8,0x88(%rdi)                           #! EA = L0x7fffffffd348; PC = 0x555555566547 *)
mov L0x7fffffffd348 r8;
(* mov    %r9,0x90(%rdi)                           #! EA = L0x7fffffffd350; PC = 0x55555556654e *)
mov L0x7fffffffd350 r9;
(* mov    %r10,0x98(%rdi)                          #! EA = L0x7fffffffd358; PC = 0x555555566555 *)
mov L0x7fffffffd358 r10;
(* mov    %r11,0xa0(%rdi)                          #! EA = L0x7fffffffd360; PC = 0x55555556655c *)
mov L0x7fffffffd360 r11;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd368; PC = 0x555555566563 *)
mov L0x7fffffffd368 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd370; PC = 0x55555556656a *)
mov L0x7fffffffd370 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd378; PC = 0x555555566571 *)
mov L0x7fffffffd378 r14;
(* mov    0x20(%rdi),%rdx                          #! EA = L0x7fffffffd2e0; Value = 0x6ee0f572a6a53655; PC = 0x555555566578 *)
mov rdx L0x7fffffffd2e0;
(* mulx   0x4283(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556657c *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x4282(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566585 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdc90; PC = 0x55555556658e *)
mov L0x7fffffffdc90 r9;
(* xor    %rax,%rax                                #! PC = 0x555555566592 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x427a(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566595 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x55555556659e *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555665a4 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x426d(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555665aa *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555665b3 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x4266(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555665b9 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555665c2 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x425f(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555665c8 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555665d1 *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x4258(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555665d7 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555665e0 *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x5555555665e6 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x28(%rdi),%rdx                          #! EA = L0x7fffffffd2e8; Value = 0x40dbbcab9ea568ce; PC = 0x5555555665ec *)
mov rdx L0x7fffffffd2e8;
(* mulx   0x420f(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555665f0 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555665f9 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x5555555665fc *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdc98; PC = 0x555555566602 *)
mov L0x7fffffffdc98 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566606 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x41fb(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556660c *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566615 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x55555556661b *)
adcs carry r14 r14 rbp carry;
(* mulx   0x41ee(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566621 *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x55555556662a *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x555555566630 *)
adcs carry r8 r8 r9 carry;
(* mulx   0x41e1(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566636 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556663f *)
adcs carry r9 r9 r12 carry;
(* mulx   0x41da(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566645 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556664e *)
adcs carry r10 r10 r12 carry;
(* mulx   0x41d3(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566654 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556665d *)
adcs carry r11 r11 r12 carry;
(* mulx   0x41cc(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566663 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556666c *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566672 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566678 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556667e *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x555555566684 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x55555556668a *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rdi),%rdx                          #! EA = L0x7fffffffd2f0; Value = 0xcee775a75d10922d; PC = 0x555555566690 *)
mov rdx L0x7fffffffd2f0;
(* mulx   0x416b(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566694 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x55555556669d *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555666a0 *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdca0; PC = 0x5555555666a6 *)
mov L0x7fffffffdca0 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555666aa *)
adcs carry r14 r14 rbx carry;
(* mulx   0x4157(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555666b0 *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555666b9 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555666bf *)
adcs carry r8 r8 rbx carry;
(* mulx   0x414a(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555666c5 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555666ce *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555666d4 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x413d(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555666da *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x5555555666e3 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x4136(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555666e9 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x5555555666f2 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x412f(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555666f8 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566701 *)
adcs carry r12 r12 r13 carry;
(* mulx   0x4128(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566707 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566710 *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566716 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x55555556671c *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566722 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566728 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x55555556672e *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x38(%rdi),%rdx                          #! EA = L0x7fffffffd2f8; Value = 0x36bd9d6cf3accee3; PC = 0x555555566734 *)
mov rdx L0x7fffffffd2f8;
(* mulx   0x40c7(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566738 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566741 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566744 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x55555556674a *)
adcs carry r8 r8 rbx carry;
(* mulx   0x40b7(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566750 *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566759 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x55555556675f *)
adcs carry r9 r9 rbx carry;
(* mulx   0x40aa(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566765 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x55555556676e *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566774 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x409d(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x55555556677a *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566783 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x4096(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566789 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566792 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x408f(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566798 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x5555555667a1 *)
adcs carry r13 r13 r14 carry;
(* mulx   0x4088(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555667a7 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x5555555667b0 *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x5555555667b6 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x5555555667bc *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x5555555667c2 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x5555555667c8 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x5555555667ce *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* xor    %r15,%r15                                #! PC = 0x5555555667d4 *)
mov r15 0@uint64;
clear carry;
clear overflow;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdc90; Value = 0x6070000000000000; PC = 0x5555555667d7 *)
mov rax L0x7fffffffdc90;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdc98; Value = 0x7f4dc4e802fba9e0; PC = 0x5555555667db *)
mov rdx L0x7fffffffdc98;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdca0; Value = 0x83ef9f8bdb5e8d64; PC = 0x5555555667df *)
mov rbx L0x7fffffffdca0;
(* add    0x48(%rdi),%rax                          #! EA = L0x7fffffffd308; Value = 0x03a1d17745215306; PC = 0x5555555667e3 *)
adds carry rax rax L0x7fffffffd308;
(* adc    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd310; Value = 0x85450d6327916bc2; PC = 0x5555555667e7 *)
adcs carry rdx rdx L0x7fffffffd310 carry;
(* adc    0x58(%rdi),%rbx                          #! EA = L0x7fffffffd318; Value = 0x02e50dd46c647439; PC = 0x5555555667eb *)
adcs carry rbx rbx L0x7fffffffd318 carry;
(* mov    %rax,0x48(%rdi)                          #! EA = L0x7fffffffd308; PC = 0x5555555667ef *)
mov L0x7fffffffd308 rax;
(* mov    %rdx,0x50(%rdi)                          #! EA = L0x7fffffffd310; PC = 0x5555555667f3 *)
mov L0x7fffffffd310 rdx;
(* mov    %rbx,0x58(%rdi)                          #! EA = L0x7fffffffd318; PC = 0x5555555667f7 *)
mov L0x7fffffffd318 rbx;
(* adc    0x60(%rdi),%rbp                          #! EA = L0x7fffffffd320; Value = 0x49aa4af9c6684f84; PC = 0x5555555667fb *)
adcs carry rbp rbp L0x7fffffffd320 carry;
(* adc    0x68(%rdi),%r8                           #! EA = L0x7fffffffd328; Value = 0x6e218f8c934afbad; PC = 0x5555555667ff *)
adcs carry r8 r8 L0x7fffffffd328 carry;
(* adc    0x70(%rdi),%r9                           #! EA = L0x7fffffffd330; Value = 0x7bfb9f223595f0f3; PC = 0x555555566803 *)
adcs carry r9 r9 L0x7fffffffd330 carry;
(* adc    0x78(%rdi),%r10                          #! EA = L0x7fffffffd338; Value = 0x04540023c282cfba; PC = 0x555555566807 *)
adcs carry r10 r10 L0x7fffffffd338 carry;
(* adc    0x80(%rdi),%r11                          #! EA = L0x7fffffffd340; Value = 0xbcd30cdf367956e1; PC = 0x55555556680b *)
adcs carry r11 r11 L0x7fffffffd340 carry;
(* adc    0x88(%rdi),%r12                          #! EA = L0x7fffffffd348; Value = 0x384fff505d1e4c4a; PC = 0x555555566812 *)
adcs carry r12 r12 L0x7fffffffd348 carry;
(* adc    0x90(%rdi),%r13                          #! EA = L0x7fffffffd350; Value = 0x8afedb0c8290769b; PC = 0x555555566819 *)
adcs carry r13 r13 L0x7fffffffd350 carry;
(* adc    0x98(%rdi),%r14                          #! EA = L0x7fffffffd358; Value = 0x214cad69f6173bca; PC = 0x555555566820 *)
adcs carry r14 r14 L0x7fffffffd358 carry;
(* adc    0xa0(%rdi),%r15                          #! EA = L0x7fffffffd360; Value = 0xd547df728bc248aa; PC = 0x555555566827 *)
adcs carry r15 r15 L0x7fffffffd360 carry;
(* mov    %rbp,(%rsi)                              #! EA = L0x7fffffffdc60; PC = 0x55555556682e *)
mov L0x7fffffffdc60 rbp;
(* mov    %r8,0x68(%rdi)                           #! EA = L0x7fffffffd328; PC = 0x555555566831 *)
mov L0x7fffffffd328 r8;
(* mov    %r9,0x70(%rdi)                           #! EA = L0x7fffffffd330; PC = 0x555555566835 *)
mov L0x7fffffffd330 r9;
(* mov    %r10,0x78(%rdi)                          #! EA = L0x7fffffffd338; PC = 0x555555566839 *)
mov L0x7fffffffd338 r10;
(* mov    %r11,0x80(%rdi)                          #! EA = L0x7fffffffd340; PC = 0x55555556683d *)
mov L0x7fffffffd340 r11;
(* mov    %r12,0x88(%rdi)                          #! EA = L0x7fffffffd348; PC = 0x555555566844 *)
mov L0x7fffffffd348 r12;
(* mov    %r13,0x90(%rdi)                          #! EA = L0x7fffffffd350; PC = 0x55555556684b *)
mov L0x7fffffffd350 r13;
(* mov    %r14,0x98(%rdi)                          #! EA = L0x7fffffffd358; PC = 0x555555566852 *)
mov L0x7fffffffd358 r14;
(* mov    %r15,0xa0(%rdi)                          #! EA = L0x7fffffffd360; PC = 0x555555566859 *)
mov L0x7fffffffd360 r15;
(* mov    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd368; Value = 0xa8642c4398af2b34; PC = 0x555555566860 *)
mov r12 L0x7fffffffd368;
(* mov    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd370; Value = 0x4b4b119ae1fb2b1c; PC = 0x555555566867 *)
mov r13 L0x7fffffffd370;
(* mov    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd378; Value = 0x00006fe5b2f5a488; PC = 0x55555556686e *)
mov r14 L0x7fffffffd378;
(* adc    $0x0,%r12                                #! PC = 0x555555566875 *)
adcs carry r12 r12 0x0@uint64 carry;
(* adc    $0x0,%r13                                #! PC = 0x555555566879 *)
adcs carry r13 r13 0x0@uint64 carry;
(* adc    $0x0,%r14                                #! PC = 0x55555556687d *)
adcs carry r14 r14 0x0@uint64 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %r12,0xa8(%rdi)                          #! EA = L0x7fffffffd368; PC = 0x555555566881 *)
mov L0x7fffffffd368 r12;
(* mov    %r13,0xb0(%rdi)                          #! EA = L0x7fffffffd370; PC = 0x555555566888 *)
mov L0x7fffffffd370 r13;
(* mov    %r14,0xb8(%rdi)                          #! EA = L0x7fffffffd378; PC = 0x55555556688f *)
mov L0x7fffffffd378 r14;
(* mov    0x40(%rdi),%rdx                          #! EA = L0x7fffffffd300; Value = 0xf38a4bd9e4456e45; PC = 0x555555566896 *)
mov rdx L0x7fffffffd300;
(* mulx   0x3f65(%rip),%r9,%r8        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556689a *)
mull r8 r9 L0x55555556a808 rdx;
(* mulx   0x3f64(%rip),%r10,%r13        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555668a3 *)
mull r13 r10 L0x55555556a810 rdx;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdc90; PC = 0x5555555668ac *)
mov L0x7fffffffdc90 r9;
(* xor    %rax,%rax                                #! PC = 0x5555555668b0 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* mulx   0x3f5c(%rip),%r12,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555668b3 *)
mull r14 r12 L0x55555556a818 rdx;
(* adox   %r10,%r8                                 #! PC = 0x5555555668bc *)
adcs overflow r8 r8 r10 overflow;
(* adox   %r12,%r13                                #! PC = 0x5555555668c2 *)
adcs overflow r13 r13 r12 overflow;
(* mulx   0x3f4f(%rip),%r10,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555668c8 *)
mull r9 r10 L0x55555556a820 rdx;
(* adox   %r10,%r14                                #! PC = 0x5555555668d1 *)
adcs overflow r14 r14 r10 overflow;
(* mulx   0x3f48(%rip),%r11,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x5555555668d7 *)
mull r12 r11 L0x55555556a828 rdx;
(* adox   %r11,%r9                                 #! PC = 0x5555555668e0 *)
adcs overflow r9 r9 r11 overflow;
(* mulx   0x3f41(%rip),%rbp,%r10        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x5555555668e6 *)
mull r10 rbp L0x55555556a830 rdx;
(* adox   %rbp,%r12                                #! PC = 0x5555555668ef *)
adcs overflow r12 r12 rbp overflow;
(* mulx   0x3f3a(%rip),%rbx,%r11        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x5555555668f5 *)
mull r11 rbx L0x55555556a838 rdx;
(* adox   %rbx,%r10                                #! PC = 0x5555555668fe *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rax,%r11                                #! PC = 0x555555566904 *)
adcs overflow r11 r11 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x48(%rdi),%rdx                          #! EA = L0x7fffffffd308; Value = 0x6411d17745215306; PC = 0x55555556690a *)
mov rdx L0x7fffffffd308;
(* mulx   0x3ef1(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x55555556690e *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566917 *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r8                                 #! PC = 0x55555556691a *)
adcs carry r8 r8 rbp carry;
(* mov    %r8,0x38(%rsi)                           #! EA = L0x7fffffffdc98; PC = 0x555555566920 *)
mov L0x7fffffffdc98 r8;
(* adcx   %rbx,%r13                                #! PC = 0x555555566924 *)
adcs carry r13 r13 rbx carry;
(* mulx   0x3edd(%rip),%rbx,%rbp        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x55555556692a *)
mull rbp rbx L0x55555556a810 rdx;
(* adox   %rbx,%r13                                #! PC = 0x555555566933 *)
adcs overflow r13 r13 rbx overflow;
(* adcx   %rbp,%r14                                #! PC = 0x555555566939 *)
adcs carry r14 r14 rbp carry;
(* mulx   0x3ed0(%rip),%rbx,%r8        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x55555556693f *)
mull r8 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r14                                #! PC = 0x555555566948 *)
adcs overflow r14 r14 rbx overflow;
(* adcx   %r9,%r8                                  #! PC = 0x55555556694e *)
adcs carry r8 r8 r9 carry;
(* mulx   0x3ec3(%rip),%rbp,%r9        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566954 *)
mull r9 rbp L0x55555556a820 rdx;
(* adcx   %r12,%r9                                 #! PC = 0x55555556695d *)
adcs carry r9 r9 r12 carry;
(* mulx   0x3ebc(%rip),%rbx,%r12        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566963 *)
mull r12 rbx L0x55555556a828 rdx;
(* adcx   %r12,%r10                                #! PC = 0x55555556696c *)
adcs carry r10 r10 r12 carry;
(* mulx   0x3eb5(%rip),%rcx,%r12        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566972 *)
mull r12 rcx L0x55555556a830 rdx;
(* adcx   %r12,%r11                                #! PC = 0x55555556697b *)
adcs carry r11 r11 r12 carry;
(* mulx   0x3eae(%rip),%rdx,%r12        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566981 *)
mull r12 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r12                                #! PC = 0x55555556698a *)
adcs carry r12 r12 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r8                                 #! PC = 0x555555566990 *)
adcs overflow r8 r8 rbp overflow;
(* adox   %rbx,%r9                                 #! PC = 0x555555566996 *)
adcs overflow r9 r9 rbx overflow;
(* adox   %rcx,%r10                                #! PC = 0x55555556699c *)
adcs overflow r10 r10 rcx overflow;
(* adox   %rdx,%r11                                #! PC = 0x5555555669a2 *)
adcs overflow r11 r11 rdx overflow;
(* adox   %rax,%r12                                #! PC = 0x5555555669a8 *)
adcs overflow r12 r12 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x50(%rdi),%rdx                          #! EA = L0x7fffffffd310; Value = 0x0492d24b2a8d15a2; PC = 0x5555555669ae *)
mov rdx L0x7fffffffd310;
(* mulx   0x3e4d(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x5555555669b2 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x5555555669bb *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %rbp,%r13                                #! PC = 0x5555555669be *)
adcs carry r13 r13 rbp carry;
(* mov    %r13,0x40(%rsi)                          #! EA = L0x7fffffffdca0; PC = 0x5555555669c4 *)
mov L0x7fffffffdca0 r13;
(* adcx   %rbx,%r14                                #! PC = 0x5555555669c8 *)
adcs carry r14 r14 rbx carry;
(* mulx   0x3e39(%rip),%rbp,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x5555555669ce *)
mull rbx rbp L0x55555556a810 rdx;
(* adox   %rbp,%r14                                #! PC = 0x5555555669d7 *)
adcs overflow r14 r14 rbp overflow;
(* adcx   %rbx,%r8                                 #! PC = 0x5555555669dd *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3e2c(%rip),%rbx,%r13        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x5555555669e3 *)
mull r13 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r8                                 #! PC = 0x5555555669ec *)
adcs overflow r8 r8 rbx overflow;
(* adcx   %r13,%r9                                 #! PC = 0x5555555669f2 *)
adcs carry r9 r9 r13 carry;
(* mulx   0x3e1f(%rip),%rbp,%r13        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x5555555669f8 *)
mull r13 rbp L0x55555556a820 rdx;
(* adcx   %r13,%r10                                #! PC = 0x555555566a01 *)
adcs carry r10 r10 r13 carry;
(* mulx   0x3e18(%rip),%rbx,%r13        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566a07 *)
mull r13 rbx L0x55555556a828 rdx;
(* adcx   %r13,%r11                                #! PC = 0x555555566a10 *)
adcs carry r11 r11 r13 carry;
(* mulx   0x3e11(%rip),%rcx,%r13        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566a16 *)
mull r13 rcx L0x55555556a830 rdx;
(* adcx   %r13,%r12                                #! PC = 0x555555566a1f *)
adcs carry r12 r12 r13 carry;
(* mulx   0x3e0a(%rip),%rdx,%r13        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566a25 *)
mull r13 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r13                                #! PC = 0x555555566a2e *)
adcs carry r13 r13 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %rbp,%r9                                 #! PC = 0x555555566a34 *)
adcs overflow r9 r9 rbp overflow;
(* adox   %rbx,%r10                                #! PC = 0x555555566a3a *)
adcs overflow r10 r10 rbx overflow;
(* adox   %rcx,%r11                                #! PC = 0x555555566a40 *)
adcs overflow r11 r11 rcx overflow;
(* adox   %rdx,%r12                                #! PC = 0x555555566a46 *)
adcs overflow r12 r12 rdx overflow;
(* adox   %rax,%r13                                #! PC = 0x555555566a4c *)
adcs overflow r13 r13 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x58(%rdi),%rdx                          #! EA = L0x7fffffffd318; Value = 0x86d4ad6047c3019e; PC = 0x555555566a52 *)
mov rdx L0x7fffffffd318;
(* mulx   0x3da9(%rip),%rbp,%rbx        # 0x55555556a808 <p751p1+40>#! EA = L0x55555556a808; Value = 0xeeb0000000000000; PC = 0x555555566a56 *)
mull rbx rbp L0x55555556a808 rdx;
(* xor    %rax,%rax                                #! PC = 0x555555566a5f *)
mov rax 0@uint64;
clear carry;
clear overflow;
(* adcx   %r14,%rbp                                #! PC = 0x555555566a62 *)
adcs carry rbp rbp r14 carry;
(* adcx   %rbx,%r8                                 #! PC = 0x555555566a68 *)
adcs carry r8 r8 rbx carry;
(* mulx   0x3d99(%rip),%r15,%rbx        # 0x55555556a810 <p751p1+48>#! EA = L0x55555556a810; Value = 0xe3ec968549f878a8; PC = 0x555555566a6e *)
mull rbx r15 L0x55555556a810 rdx;
(* adox   %r15,%r8                                 #! PC = 0x555555566a77 *)
adcs overflow r8 r8 r15 overflow;
(* adcx   %rbx,%r9                                 #! PC = 0x555555566a7d *)
adcs carry r9 r9 rbx carry;
(* mulx   0x3d8c(%rip),%rbx,%r14        # 0x55555556a818 <p751p1+56>#! EA = L0x55555556a818; Value = 0xda959b1a13f7cc76; PC = 0x555555566a83 *)
mull r14 rbx L0x55555556a818 rdx;
(* adox   %rbx,%r9                                 #! PC = 0x555555566a8c *)
adcs overflow r9 r9 rbx overflow;
(* adcx   %r14,%r10                                #! PC = 0x555555566a92 *)
adcs carry r10 r10 r14 carry;
(* mulx   0x3d7f(%rip),%r15,%r14        # 0x55555556a820 <p751p1+64>#! EA = L0x55555556a820; Value = 0x084e9867d6ebe876; PC = 0x555555566a98 *)
mull r14 r15 L0x55555556a820 rdx;
(* adcx   %r14,%r11                                #! PC = 0x555555566aa1 *)
adcs carry r11 r11 r14 carry;
(* mulx   0x3d78(%rip),%rbx,%r14        # 0x55555556a828 <p751p1+72>#! EA = L0x55555556a828; Value = 0x8562b5045cb25748; PC = 0x555555566aa7 *)
mull r14 rbx L0x55555556a828 rdx;
(* adcx   %r14,%r12                                #! PC = 0x555555566ab0 *)
adcs carry r12 r12 r14 carry;
(* mulx   0x3d71(%rip),%rcx,%r14        # 0x55555556a830 <p751p1+80>#! EA = L0x55555556a830; Value = 0x0e12909f97badc66; PC = 0x555555566ab6 *)
mull r14 rcx L0x55555556a830 rdx;
(* adcx   %r14,%r13                                #! PC = 0x555555566abf *)
adcs carry r13 r13 r14 carry;
(* mulx   0x3d6a(%rip),%rdx,%r14        # 0x55555556a838 <p751p1+88>#! EA = L0x55555556a838; Value = 0x00006fe5d541f71c; PC = 0x555555566ac5 *)
mull r14 rdx L0x55555556a838 rdx;
(* adcx   %rax,%r14                                #! PC = 0x555555566ace *)
adcs carry r14 r14 rax carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* adox   %r15,%r10                                #! PC = 0x555555566ad4 *)
adcs overflow r10 r10 r15 overflow;
(* adox   %rbx,%r11                                #! PC = 0x555555566ada *)
adcs overflow r11 r11 rbx overflow;
(* adox   %rcx,%r12                                #! PC = 0x555555566ae0 *)
adcs overflow r12 r12 rcx overflow;
(* adox   %rdx,%r13                                #! PC = 0x555555566ae6 *)
adcs overflow r13 r13 rdx overflow;
(* adox   %rax,%r14                                #! PC = 0x555555566aec *)
adcs overflow r14 r14 rax overflow;
assert true && overflow = 0@1;
assume overflow = 0 && true;
(* mov    0x30(%rsi),%rax                          #! EA = L0x7fffffffdc90; Value = 0xf570000000000000; PC = 0x555555566af2 *)
mov rax L0x7fffffffdc90;
(* mov    0x38(%rsi),%rdx                          #! EA = L0x7fffffffdc98; Value = 0xebf99324911e3187; PC = 0x555555566af6 *)
mov rdx L0x7fffffffdc98;
(* mov    0x40(%rsi),%rbx                          #! EA = L0x7fffffffdca0; Value = 0xec7987340c4282f7; PC = 0x555555566afa *)
mov rbx L0x7fffffffdca0;
(* add    0x68(%rdi),%rax                          #! EA = L0x7fffffffd328; Value = 0x6ee5044a27c6975d; PC = 0x555555566afe *)
adds carry rax rax L0x7fffffffd328;
(* adc    0x70(%rdi),%rdx                          #! EA = L0x7fffffffd330; Value = 0xfc4817dac99da02f; PC = 0x555555566b02 *)
adcs carry rdx rdx L0x7fffffffd330 carry;
(* adc    0x78(%rdi),%rbx                          #! EA = L0x7fffffffd338; Value = 0xec61149266d7318f; PC = 0x555555566b06 *)
adcs carry rbx rbx L0x7fffffffd338 carry;
(* mov    %rax,0x8(%rsi)                           #! EA = L0x7fffffffdc68; PC = 0x555555566b0a *)
mov L0x7fffffffdc68 rax;
(* mov    %rdx,0x10(%rsi)                          #! EA = L0x7fffffffdc70; PC = 0x555555566b0e *)
mov L0x7fffffffdc70 rdx;
(* mov    %rbx,0x18(%rsi)                          #! EA = L0x7fffffffdc78; PC = 0x555555566b12 *)
mov L0x7fffffffdc78 rbx;
(* adc    0x80(%rdi),%rbp                          #! EA = L0x7fffffffd340; Value = 0x998eaec006230acc; PC = 0x555555566b16 *)
adcs carry rbp rbp L0x7fffffffd340 carry;
(* adc    0x88(%rdi),%r8                           #! EA = L0x7fffffffd348; Value = 0xcd90efeadf2ffc34; PC = 0x555555566b1d *)
adcs carry r8 r8 L0x7fffffffd348 carry;
(* adc    0x90(%rdi),%r9                           #! EA = L0x7fffffffd350; Value = 0x0455087338e343d4; PC = 0x555555566b24 *)
adcs carry r9 r9 L0x7fffffffd350 carry;
(* adc    0x98(%rdi),%r10                          #! EA = L0x7fffffffd358; Value = 0x214cc55752912ae0; PC = 0x555555566b2b *)
adcs carry r10 r10 L0x7fffffffd358 carry;
(* adc    0xa0(%rdi),%r11                          #! EA = L0x7fffffffd360; Value = 0xd547df728bc248aa; PC = 0x555555566b32 *)
adcs carry r11 r11 L0x7fffffffd360 carry;
(* adc    0xa8(%rdi),%r12                          #! EA = L0x7fffffffd368; Value = 0xa8642c4398af2b34; PC = 0x555555566b39 *)
adcs carry r12 r12 L0x7fffffffd368 carry;
(* adc    0xb0(%rdi),%r13                          #! EA = L0x7fffffffd370; Value = 0x4b4b119ae1fb2b1c; PC = 0x555555566b40 *)
adcs carry r13 r13 L0x7fffffffd370 carry;
(* adc    0xb8(%rdi),%r14                          #! EA = L0x7fffffffd378; Value = 0x00006fe5b2f5a488; PC = 0x555555566b47 *)
adcs carry r14 r14 L0x7fffffffd378 carry;
assert true && carry = 0@1;
assume carry = 0 && true;
(* mov    %rbp,0x20(%rsi)                          #! EA = L0x7fffffffdc80; PC = 0x555555566b4e *)
mov L0x7fffffffdc80 rbp;
(* mov    %r8,0x28(%rsi)                           #! EA = L0x7fffffffdc88; PC = 0x555555566b52 *)
mov L0x7fffffffdc88 r8;
(* mov    %r9,0x30(%rsi)                           #! EA = L0x7fffffffdc90; PC = 0x555555566b56 *)
mov L0x7fffffffdc90 r9;
(* mov    %r10,0x38(%rsi)                          #! EA = L0x7fffffffdc98; PC = 0x555555566b5a *)
mov L0x7fffffffdc98 r10;
(* mov    %r11,0x40(%rsi)                          #! EA = L0x7fffffffdca0; PC = 0x555555566b5e *)
mov L0x7fffffffdca0 r11;
(* mov    %r12,0x48(%rsi)                          #! EA = L0x7fffffffdca8; PC = 0x555555566b62 *)
mov L0x7fffffffdca8 r12;
(* mov    %r13,0x50(%rsi)                          #! EA = L0x7fffffffdcb0; PC = 0x555555566b66 *)
mov L0x7fffffffdcb0 r13;
(* mov    %r14,0x58(%rsi)                          #! EA = L0x7fffffffdcb8; PC = 0x555555566b6a *)
mov L0x7fffffffdcb8 r14;
(* #! <- SP = 0x7fffffffd1e8 *)
#! 0x7fffffffd1e8 = 0x7fffffffd1e8;
(* #retq                                           #! PC = 0x555555566b78 *)
#retq                                           #! 0x555555566b78 = 0x555555566b78;
(* mov    0x318(%rsp),%rax                         #! EA = L0x7fffffffd508; Value = 0x8438f88f40aab100; PC = 0x555555558ef2 *)
mov rax L0x7fffffffd508;
(* xor    %fs:0x28,%rax                            #! PC = 0x555555558efa *)
xor rax@uint64 fs0x28 rax;
(* #jne    0x555555558f17 <fp2mul751_mont+279>     #! PC = 0x555555558f03 *)
#jne    0x555555558f17 <fp2mul751_mont+279>     #! 0x555555558f03 = 0x555555558f03;
(* add    $0x328,%rsp                              #! PC = 0x555555558f05 *)
adds carry rsp rsp 0x328@uint64;
(* #! <- SP = 0x7fffffffd548 *)
#! 0x7fffffffd548 = 0x7fffffffd548;
(* #retq                                           #! PC = 0x555555558f16 *)
#retq                                           #! 0x555555558f16 = 0x555555558f16;

ghost c0_rdc_00@uint64, c0_rdc_01@uint64, c0_rdc_02@uint64, c0_rdc_03@uint64, c0_rdc_04@uint64, c0_rdc_05@uint64,
      c0_rdc_06@uint64, c0_rdc_07@uint64, c0_rdc_08@uint64, c0_rdc_09@uint64, c0_rdc_10@uint64, c0_rdc_11@uint64 :
  and [
    c0_rdc_00 = L0x7fffffffdc60, c0_rdc_01 = L0x7fffffffdc68, c0_rdc_02 = L0x7fffffffdc70,
    c0_rdc_03 = L0x7fffffffdc78, c0_rdc_04 = L0x7fffffffdc80, c0_rdc_05 = L0x7fffffffdc88,
    c0_rdc_06 = L0x7fffffffdc90, c0_rdc_07 = L0x7fffffffdc98, c0_rdc_08 = L0x7fffffffdca0,
    c0_rdc_09 = L0x7fffffffdca8, c0_rdc_10 = L0x7fffffffdcb0, c0_rdc_11 = L0x7fffffffdcb8
  ]
  &&
  and [
    c0_rdc_00 = L0x7fffffffdc60, c0_rdc_01 = L0x7fffffffdc68, c0_rdc_02 = L0x7fffffffdc70,
    c0_rdc_03 = L0x7fffffffdc78, c0_rdc_04 = L0x7fffffffdc80, c0_rdc_05 = L0x7fffffffdc88,
    c0_rdc_06 = L0x7fffffffdc90, c0_rdc_07 = L0x7fffffffdc98, c0_rdc_08 = L0x7fffffffdca0,
    c0_rdc_09 = L0x7fffffffdca8, c0_rdc_10 = L0x7fffffffdcb0, c0_rdc_11 = L0x7fffffffdcb8
  ];

# Ecut 9
ecut eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, c0_rdc_00, c0_rdc_01, c0_rdc_02, c0_rdc_03, c0_rdc_04, c0_rdc_05, c0_rdc_06, c0_rdc_07, c0_rdc_08, c0_rdc_09, c0_rdc_10, c0_rdc_11 ])
           (
             (
               (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
               *
               (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
             )
             -
             (
               (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
               *
               (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
             )
           )
           (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ])
     prove with [all ghosts, cuts [2,3,7]];
# Rcut 8
rcut (limbs 64 [ c0_rdc_00, c0_rdc_01, c0_rdc_02, c0_rdc_03, c0_rdc_04, c0_rdc_05, c0_rdc_06, c0_rdc_07, c0_rdc_08, c0_rdc_09, c0_rdc_10, c0_rdc_11 ])
     <=u
     (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768)
     prove with [precondition, all ghosts, cuts [6]];

(* ===== Outputs ===== *)

mov c0_00 L0x7fffffffdc60;
mov c0_01 L0x7fffffffdc68;
mov c0_02 L0x7fffffffdc70;
mov c0_03 L0x7fffffffdc78;
mov c0_04 L0x7fffffffdc80;
mov c0_05 L0x7fffffffdc88;
mov c0_06 L0x7fffffffdc90;
mov c0_07 L0x7fffffffdc98;
mov c0_08 L0x7fffffffdca0;
mov c0_09 L0x7fffffffdca8;
mov c0_10 L0x7fffffffdcb0;
mov c0_11 L0x7fffffffdcb8;

mov c1_00 L0x7fffffffdcc0;
mov c1_01 L0x7fffffffdcc8;
mov c1_02 L0x7fffffffdcd0;
mov c1_03 L0x7fffffffdcd8;
mov c1_04 L0x7fffffffdce0;
mov c1_05 L0x7fffffffdce8;
mov c1_06 L0x7fffffffdcf0;
mov c1_07 L0x7fffffffdcf8;
mov c1_08 L0x7fffffffdd00;
mov c1_09 L0x7fffffffdd08;
mov c1_10 L0x7fffffffdd10;
mov c1_11 L0x7fffffffdd18;

ghost i@uint64 : true && true;

{
  and [
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ])
          (
            (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              *
              (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
            )
            -
            (
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
              *
              (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
            )
          )
          (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]),
    eqmod (limbs 64 [ 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, 0, c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ])
          (
            (
             (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
             *
             (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ])
            )
            +
            (
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ])
              *
              (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
            )
          )
          (limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]),
    eqmod (
            2**768
            *
            (
              (limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ])
              +
              (limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ]) * i
            )
          )
          (
            (
              (limbs 64 [ a0_00, a0_01, a0_02, a0_03, a0_04, a0_05, a0_06, a0_07, a0_08, a0_09, a0_10, a0_11 ])
              +
              (limbs 64 [ a1_00, a1_01, a1_02, a1_03, a1_04, a1_05, a1_06, a1_07, a1_08, a1_09, a1_10, a1_11 ]) * i
            )
            *
            (
              (limbs 64 [ b0_00, b0_01, b0_02, b0_03, b0_04, b0_05, b0_06, b0_07, b0_08, b0_09, b0_10, b0_11 ])
              +
              (limbs 64 [ b1_00, b1_01, b1_02, b1_03, b1_04, b1_05, b1_06, b1_07, b1_08, b1_09, b1_10, b1_11 ]) * i
            )
          )
          [i**2 + 1, limbs 64 [ $p751_00, $p751_01, $p751_02, $p751_03, $p751_04, $p751_05, $p751_06, $p751_07, $p751_08, $p751_09, $p751_10, $p751_11 ]]
  ] prove with [all ghosts, cuts [8]]
  &&
  and [
    limbs 64 [ c0_00, c0_01, c0_02, c0_03, c0_04, c0_05, c0_06, c0_07, c0_08, c0_09, c0_10, c0_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768),
    limbs 64 [ c1_00, c1_01, c1_02, c1_03, c1_04, c1_05, c1_06, c1_07, c1_08, c1_09, c1_10, c1_11 ] <=u
      (2@768 * limbs 64 [ $p751_00@64, $p751_01@64, $p751_02@64, $p751_03@64, $p751_04@64, $p751_05@64, $p751_06@64, $p751_07@64, $p751_08@64, $p751_09@64, $p751_10@64, $p751_11@64 ] - 1@768)
  ] prove with [all ghosts, cuts [7, 8]]
}
