(* @laptop: 
cv_cec -jobs 16 -v -ov r00,r01#r02,r03#r04,r05#r06,r07#r08,r09#r0a,r0b#r0c,r0d#r0e,r0f#r10,r11#r12,r13#r14,r15#r16,r17#r18,r19#r1a,r1b#r1c,r1d#r1e,r1f#r20,r21#r22,r23#r24,r25#r26,r27#r28,r29#r2a,r2b#r2c,r2d#r2e,r2f#r30,r31#r32,r33#r34,r35#r36,r37#r38,r39#r3a,r3b#r3c,r3d#r3e,r3f  _gf256v_madd_u64.cl gf256v_madd_avx2.vcl
Parsing CryptoLine file:		[OK]		0.191978 seconds
Checking well-formedness:		[OK]		0.137749 seconds
Parsing CryptoLine file:		[OK]		0.048250 seconds
Checking well-formedness:		[OK]		0.004025 seconds
Equivalence of output group #5:		[OK]		163.132651 seconds
Equivalence of output group #2:		[OK]		170.821291 seconds
Equivalence of output group #1:		[OK]		171.852314 seconds
Equivalence of output group #6:		[OK]		172.075807 seconds
Equivalence of output group #7:		[OK]		172.143637 seconds
Equivalence of output group #8:		[OK]		172.264310 seconds
Equivalence of output group #10:		[OK]		172.144446 seconds
Equivalence of output group #9:		[OK]		172.680084 seconds
Equivalence of output group #11:		[OK]		172.397678 seconds
Equivalence of output group #13:		[OK]		172.745613 seconds
Equivalence of output group #14:		[OK]		172.737110 seconds
Equivalence of output group #12:		[OK]		173.478177 seconds
Equivalence of output group #4:		[OK]		175.251417 seconds
Equivalence of output group #15:		[OK]		173.319964 seconds
Equivalence of output group #3:		[OK]		183.577479 seconds
Equivalence of output group #0:		[OK]		202.064302 seconds
Equivalence of output group #16:		[OK]		171.531384 seconds
Equivalence of output group #17:		[OK]		171.451351 seconds
Equivalence of output group #18:		[OK]		222.175679 seconds
Equivalence of output group #19:		[OK]		222.030781 seconds
Equivalence of output group #20:		[OK]		222.183807 seconds
Equivalence of output group #21:		[OK]		221.844819 seconds
Equivalence of output group #24:		[OK]		221.218237 seconds
Equivalence of output group #23:		[OK]		221.599916 seconds
Equivalence of output group #22:		[OK]		222.153941 seconds
Equivalence of output group #26:		[OK]		220.626631 seconds
Equivalence of output group #25:		[OK]		220.947173 seconds
Equivalence of output group #29:		[OK]		220.663917 seconds
Equivalence of output group #28:		[OK]		221.101044 seconds
Equivalence of output group #27:		[OK]		221.373001 seconds
Equivalence of output group #30:		[OK]		216.793505 seconds
Equivalence of output group #31:		[OK]		208.140087 seconds
Final result:				[OK]		410.611513 seconds
*)


(*
 * gt_zero == 1 if target > 0; gt_zero == 0 otherwise
 *)
proc cmpgt0w (uint16 target; bit gt_zero) =
{ true && true }
spl msb dc target 15;
seteq is_zero target 0@uint16;
or le_zero@bit msb is_zero;
not gt_zero@bit le_zero;
{ true && true }

(*
 * convert a word-vector ymm (of type uint16[16])
 * to a byte-vector ymm (of type uint8[32])
 *)
proc ymmw2b (uint16 ymms_0, uint16 ymms_1, uint16 ymms_2, uint16 ymms_3,
     	     uint16 ymms_4, uint16 ymms_5, uint16 ymms_6, uint16 ymms_7,
             uint16 ymms_8, uint16 ymms_9, uint16 ymms_a, uint16 ymms_b,
             uint16 ymms_c, uint16 ymms_d, uint16 ymms_e, uint16 ymms_f;
             uint8 ymms_0l, uint8 ymms_0h, uint8 ymms_1l, uint8 ymms_1h,
             uint8 ymms_2l, uint8 ymms_2h, uint8 ymms_3l, uint8 ymms_3h,
             uint8 ymms_4l, uint8 ymms_4h, uint8 ymms_5l, uint8 ymms_5h,
             uint8 ymms_6l, uint8 ymms_6h, uint8 ymms_7l, uint8 ymms_7h,
             uint8 ymms_8l, uint8 ymms_8h, uint8 ymms_9l, uint8 ymms_9h,
             uint8 ymms_al, uint8 ymms_ah, uint8 ymms_bl, uint8 ymms_bh,
             uint8 ymms_cl, uint8 ymms_ch, uint8 ymms_dl, uint8 ymms_dh,
             uint8 ymms_el, uint8 ymms_eh, uint8 ymms_fl, uint8 ymms_fh) =
{ true && true }
spl ymms_0h ymms_0l ymms_0 8;  spl ymms_1h ymms_1l ymms_1 8;
spl ymms_2h ymms_2l ymms_2 8;  spl ymms_3h ymms_3l ymms_3 8;
spl ymms_4h ymms_4l ymms_4 8;  spl ymms_5h ymms_5l ymms_5 8;
spl ymms_6h ymms_6l ymms_6 8;  spl ymms_7h ymms_7l ymms_7 8;
spl ymms_8h ymms_8l ymms_8 8;  spl ymms_9h ymms_9l ymms_9 8;
spl ymms_ah ymms_al ymms_a 8;  spl ymms_bh ymms_bl ymms_b 8;
spl ymms_ch ymms_cl ymms_c 8;  spl ymms_dh ymms_dl ymms_d 8;
spl ymms_eh ymms_el ymms_e 8;  spl ymms_fh ymms_fl ymms_f 8;
{ true && true }


(*
 * convert a byte-vector ymm (of type uint8[32])
 * to a word-vector ymm (of type uint16[16])
 *)
proc ymmb2w (uint8 ymms_0l, uint8 ymms_0h, uint8 ymms_1l, uint8 ymms_1h,
             uint8 ymms_2l, uint8 ymms_2h, uint8 ymms_3l, uint8 ymms_3h,
             uint8 ymms_4l, uint8 ymms_4h, uint8 ymms_5l, uint8 ymms_5h,
             uint8 ymms_6l, uint8 ymms_6h, uint8 ymms_7l, uint8 ymms_7h,
             uint8 ymms_8l, uint8 ymms_8h, uint8 ymms_9l, uint8 ymms_9h,
             uint8 ymms_al, uint8 ymms_ah, uint8 ymms_bl, uint8 ymms_bh,
             uint8 ymms_cl, uint8 ymms_ch, uint8 ymms_dl, uint8 ymms_dh,
             uint8 ymms_el, uint8 ymms_eh, uint8 ymms_fl, uint8 ymms_fh;
             uint16 ymmt_0, uint16 ymmt_1, uint16 ymmt_2, uint16 ymmt_3,
     	     uint16 ymmt_4, uint16 ymmt_5, uint16 ymmt_6, uint16 ymmt_7,
             uint16 ymmt_8, uint16 ymmt_9, uint16 ymmt_a, uint16 ymmt_b,
             uint16 ymmt_c, uint16 ymmt_d, uint16 ymmt_e, uint16 ymmt_f) =
{ true && true }
join ymmt_0 ymms_0h ymms_0l;  join ymmt_1 ymms_1h ymms_1l;
join ymmt_2 ymms_2h ymms_2l;  join ymmt_3 ymms_3h ymms_3l;
join ymmt_4 ymms_4h ymms_4l;  join ymmt_5 ymms_5h ymms_5l;
join ymmt_6 ymms_6h ymms_6l;  join ymmt_7 ymms_7h ymms_7l;
join ymmt_8 ymms_8h ymms_8l;  join ymmt_9 ymms_9h ymms_9l;
join ymmt_a ymms_ah ymms_al;  join ymmt_b ymms_bh ymms_bl;
join ymmt_c ymms_ch ymms_cl;  join ymmt_d ymms_dh ymms_dl;
join ymmt_e ymms_eh ymms_el;  join ymmt_f ymms_fh ymms_fl;
{ true && true }


proc sel128 (uint128 src, uint8 idx; uint8 dst) =
{ true && true }
spl idx_7 dontcare idx 7;
cast idx_7@bit idx_7;
spl dontcare idx_0t4 idx 4;
cast idx_0t4@uint128 idx_0t4;
shr tmp src idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
shr tmp tmp idx_0t4;
spl dontcare dst tmp 8;
cmov dst idx_7 0@uint8 dst;
{ true && true }

proc vpshufb128 (uint8 src0, uint8 src1, uint8 src2, uint8 src3,
                 uint8 src4, uint8 src5, uint8 src6, uint8 src7,
                 uint8 src8, uint8 src9, uint8 srca, uint8 srcb,
                 uint8 srcc, uint8 srcd, uint8 srce, uint8 srcf,
                 uint8 idx0, uint8 idx1, uint8 idx2, uint8 idx3,
                 uint8 idx4, uint8 idx5, uint8 idx6, uint8 idx7,
                 uint8 idx8, uint8 idx9, uint8 idxa, uint8 idxb,
                 uint8 idxc, uint8 idxd, uint8 idxe, uint8 idxf;
                 uint8 dst0, uint8 dst1, uint8 dst2, uint8 dst3,
                 uint8 dst4, uint8 dst5, uint8 dst6, uint8 dst7,
                 uint8 dst8, uint8 dst9, uint8 dsta, uint8 dstb,
                 uint8 dstc, uint8 dstd, uint8 dste, uint8 dstf) =
{ true && true }
join src128 src1 src0;   join src128 src2 src128; join src128 src3 src128;
join src128 src4 src128; join src128 src5 src128; join src128 src6 src128;
join src128 src7 src128; join src128 src8 src128; join src128 src9 src128;
join src128 srca src128; join src128 srcb src128; join src128 srcc src128;
join src128 srcd src128; join src128 srce src128; join src128 srcf src128;
inline sel128 (src128, idx0, dst0); inline sel128 (src128, idx1, dst1);
inline sel128 (src128, idx2, dst2); inline sel128 (src128, idx3, dst3);
inline sel128 (src128, idx4, dst4); inline sel128 (src128, idx5, dst5);
inline sel128 (src128, idx6, dst6); inline sel128 (src128, idx7, dst7);
inline sel128 (src128, idx8, dst8); inline sel128 (src128, idx9, dst9);
inline sel128 (src128, idxa, dsta); inline sel128 (src128, idxb, dstb);
inline sel128 (src128, idxc, dstc); inline sel128 (src128, idxd, dstd);
inline sel128 (src128, idxe, dste); inline sel128 (src128, idxf, dstf);
{ true && true }


proc vpshufb256 (uint8 src_00, uint8 src_01, uint8 src_02, uint8 src_03,
                 uint8 src_04, uint8 src_05, uint8 src_06, uint8 src_07,
                 uint8 src_08, uint8 src_09, uint8 src_0a, uint8 src_0b,
                 uint8 src_0c, uint8 src_0d, uint8 src_0e, uint8 src_0f,
                 uint8 src_10, uint8 src_11, uint8 src_12, uint8 src_13,
                 uint8 src_14, uint8 src_15, uint8 src_16, uint8 src_17,
                 uint8 src_18, uint8 src_19, uint8 src_1a, uint8 src_1b,
                 uint8 src_1c, uint8 src_1d, uint8 src_1e, uint8 src_1f,
                 uint8 idx_00, uint8 idx_01, uint8 idx_02, uint8 idx_03,
                 uint8 idx_04, uint8 idx_05, uint8 idx_06, uint8 idx_07,
                 uint8 idx_08, uint8 idx_09, uint8 idx_0a, uint8 idx_0b,
                 uint8 idx_0c, uint8 idx_0d, uint8 idx_0e, uint8 idx_0f,
                 uint8 idx_10, uint8 idx_11, uint8 idx_12, uint8 idx_13,
                 uint8 idx_14, uint8 idx_15, uint8 idx_16, uint8 idx_17,
                 uint8 idx_18, uint8 idx_19, uint8 idx_1a, uint8 idx_1b,
                 uint8 idx_1c, uint8 idx_1d, uint8 idx_1e, uint8 idx_1f;
                 uint8 dst_00, uint8 dst_01, uint8 dst_02, uint8 dst_03,
                 uint8 dst_04, uint8 dst_05, uint8 dst_06, uint8 dst_07,
                 uint8 dst_08, uint8 dst_09, uint8 dst_0a, uint8 dst_0b,
                 uint8 dst_0c, uint8 dst_0d, uint8 dst_0e, uint8 dst_0f,
                 uint8 dst_10, uint8 dst_11, uint8 dst_12, uint8 dst_13,
                 uint8 dst_14, uint8 dst_15, uint8 dst_16, uint8 dst_17,
                 uint8 dst_18, uint8 dst_19, uint8 dst_1a, uint8 dst_1b,
                 uint8 dst_1c, uint8 dst_1d, uint8 dst_1e, uint8 dst_1f) =
{ true && true }
inline vpshufb128 (src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07,
                 src_08, src_09, src_0a, src_0b, src_0c, src_0d, src_0e, src_0f,
                 idx_00, idx_01, idx_02, idx_03, idx_04, idx_05, idx_06, idx_07,
                 idx_08, idx_09, idx_0a, idx_0b, idx_0c, idx_0d, idx_0e, idx_0f,
                 dst_00, dst_01, dst_02, dst_03, dst_04, dst_05, dst_06, dst_07,
                 dst_08, dst_09, dst_0a, dst_0b, dst_0c, dst_0d, dst_0e, dst_0f);
inline vpshufb128 (src_10, src_11, src_12, src_13, src_14, src_15, src_16, src_17,
                 src_18, src_19, src_1a, src_1b, src_1c, src_1d, src_1e, src_1f,
                 idx_10, idx_11, idx_12, idx_13, idx_14, idx_15, idx_16, idx_17,
                 idx_18, idx_19, idx_1a, idx_1b, idx_1c, idx_1d, idx_1e, idx_1f,
                 dst_10, dst_11, dst_12, dst_13, dst_14, dst_15, dst_16, dst_17,
                 dst_18, dst_19, dst_1a, dst_1b, dst_1c, dst_1d, dst_1e, dst_1f);
{ true && true }



proc main (
  uint8 acc00, uint8 acc01, uint8 acc02, uint8 acc03,
  uint8 acc04, uint8 acc05, uint8 acc06, uint8 acc07,
  uint8 acc08, uint8 acc09, uint8 acc0a, uint8 acc0b,
  uint8 acc0c, uint8 acc0d, uint8 acc0e, uint8 acc0f,
  uint8 acc10, uint8 acc11, uint8 acc12, uint8 acc13,
  uint8 acc14, uint8 acc15, uint8 acc16, uint8 acc17,
  uint8 acc18, uint8 acc19, uint8 acc1a, uint8 acc1b,
  uint8 acc1c, uint8 acc1d, uint8 acc1e, uint8 acc1f,
  uint8 acc20, uint8 acc21, uint8 acc22, uint8 acc23,
  uint8 acc24, uint8 acc25, uint8 acc26, uint8 acc27,
  uint8 acc28, uint8 acc29, uint8 acc2a, uint8 acc2b,
  uint8 acc2c, uint8 acc2d, uint8 acc2e, uint8 acc2f,
  uint8 acc30, uint8 acc31, uint8 acc32, uint8 acc33,
  uint8 acc34, uint8 acc35, uint8 acc36, uint8 acc37,
  uint8 acc38, uint8 acc39, uint8 acc3a, uint8 acc3b,
  uint8 acc3c, uint8 acc3d, uint8 acc3e, uint8 acc3f,
  uint8 a00, uint8 a01, uint8 a02, uint8 a03,
  uint8 a04, uint8 a05, uint8 a06, uint8 a07,
  uint8 a08, uint8 a09, uint8 a0a, uint8 a0b,
  uint8 a0c, uint8 a0d, uint8 a0e, uint8 a0f,
  uint8 a10, uint8 a11, uint8 a12, uint8 a13,
  uint8 a14, uint8 a15, uint8 a16, uint8 a17,
  uint8 a18, uint8 a19, uint8 a1a, uint8 a1b,
  uint8 a1c, uint8 a1d, uint8 a1e, uint8 a1f,
  uint8 a20, uint8 a21, uint8 a22, uint8 a23,
  uint8 a24, uint8 a25, uint8 a26, uint8 a27,
  uint8 a28, uint8 a29, uint8 a2a, uint8 a2b,
  uint8 a2c, uint8 a2d, uint8 a2e, uint8 a2f,
  uint8 a30, uint8 a31, uint8 a32, uint8 a33,
  uint8 a34, uint8 a35, uint8 a36, uint8 a37,
  uint8 a38, uint8 a39, uint8 a3a, uint8 a3b,
  uint8 a3c, uint8 a3d, uint8 a3e, uint8 a3f,
  uint8 b
) =
{
  true
  &&
  true
}

(* ========== initialization ========== *)

(* initialize with acc's *)
join L0x7fffffffc980 acc01 acc00;  join L0x7fffffffc982 acc03 acc02;
join L0x7fffffffc984 acc05 acc04;  join L0x7fffffffc986 acc07 acc06;
join L0x7fffffffc988 acc09 acc08;  join L0x7fffffffc98a acc0b acc0a;
join L0x7fffffffc98c acc0d acc0c;  join L0x7fffffffc98e acc0f acc0e;
join L0x7fffffffc990 acc11 acc10;  join L0x7fffffffc992 acc13 acc12;
join L0x7fffffffc994 acc15 acc14;  join L0x7fffffffc996 acc17 acc16;
join L0x7fffffffc998 acc19 acc18;  join L0x7fffffffc99a acc1b acc1a;
join L0x7fffffffc99c acc1d acc1c;  join L0x7fffffffc99e acc1f acc1e;
join L0x7fffffffc9a0 acc21 acc20;  join L0x7fffffffc9a2 acc23 acc22;
join L0x7fffffffc9a4 acc25 acc24;  join L0x7fffffffc9a6 acc27 acc26;
join L0x7fffffffc9a8 acc29 acc28;  join L0x7fffffffc9aa acc2b acc2a;
join L0x7fffffffc9ac acc2d acc2c;  join L0x7fffffffc9ae acc2f acc2e;
join L0x7fffffffc9b0 acc31 acc30;  join L0x7fffffffc9b2 acc33 acc32;
join L0x7fffffffc9b4 acc35 acc34;  join L0x7fffffffc9b6 acc37 acc36;
join L0x7fffffffc9b8 acc39 acc38;  join L0x7fffffffc9ba acc3b acc3a;
join L0x7fffffffc9bc acc3d acc3c;  join L0x7fffffffc9be acc3f acc3e;
(* initialize with a's *)
join L0x7fffffffc920 a01 a00;  join L0x7fffffffc922 a03 a02;
join L0x7fffffffc924 a05 a04;  join L0x7fffffffc926 a07 a06;
join L0x7fffffffc928 a09 a08;  join L0x7fffffffc92a a0b a0a;
join L0x7fffffffc92c a0d a0c;  join L0x7fffffffc92e a0f a0e;
join L0x7fffffffc930 a11 a10;  join L0x7fffffffc932 a13 a12;
join L0x7fffffffc934 a15 a14;  join L0x7fffffffc936 a17 a16;
join L0x7fffffffc938 a19 a18;  join L0x7fffffffc93a a1b a1a;
join L0x7fffffffc93c a1d a1c;  join L0x7fffffffc93e a1f a1e;
join L0x7fffffffc940 a21 a20;  join L0x7fffffffc942 a23 a22;
join L0x7fffffffc944 a25 a24;  join L0x7fffffffc946 a27 a26;
join L0x7fffffffc948 a29 a28;  join L0x7fffffffc94a a2b a2a;
join L0x7fffffffc94c a2d a2c;  join L0x7fffffffc94e a2f a2e;
join L0x7fffffffc950 a31 a30;  join L0x7fffffffc952 a33 a32;
join L0x7fffffffc954 a35 a34;  join L0x7fffffffc956 a37 a36;
join L0x7fffffffc958 a39 a38;  join L0x7fffffffc95a a3b a3a;
join L0x7fffffffc95c a3d a3c;  join L0x7fffffffc95e a3f a3e;

vpc rdx@uint64 b;

nondet L0x7fffffffc8c8@uint64;
nondet rcx@uint64;  nondet rdi@uint64;
nondet rsi@uint64;  nondet rsp@uint64;

(* ========== constants ========== *)

(* mulbase *)
mov L0x555555571140 0x0100@uint16;  mov L0x555555571142 0x0302@uint16;
mov L0x555555571144 0x0504@uint16;  mov L0x555555571146 0x0706@uint16;
mov L0x555555571148 0x0908@uint16;  mov L0x55555557114a 0x0b0a@uint16;
mov L0x55555557114c 0x0d0c@uint16;  mov L0x55555557114e 0x0f0e@uint16;
mov L0x555555571150 0x1000@uint16;  mov L0x555555571152 0x3020@uint16;
mov L0x555555571154 0x5040@uint16;  mov L0x555555571156 0x7060@uint16;
mov L0x555555571158 0x9080@uint16;  mov L0x55555557115a 0xb0a0@uint16;
mov L0x55555557115c 0xd0c0@uint16;  mov L0x55555557115e 0xf0e0@uint16;
mov L0x555555571160 0x0200@uint16;  mov L0x555555571162 0x0604@uint16;
mov L0x555555571164 0x0a08@uint16;  mov L0x555555571166 0x0e0c@uint16;
mov L0x555555571168 0x1210@uint16;  mov L0x55555557116a 0x1614@uint16;
mov L0x55555557116c 0x1a18@uint16;  mov L0x55555557116e 0x1e1c@uint16;
mov L0x555555571170 0x2000@uint16;  mov L0x555555571172 0x6040@uint16;
mov L0x555555571174 0xa080@uint16;  mov L0x555555571176 0xe0c0@uint16;
mov L0x555555571178 0x3b1b@uint16;  mov L0x55555557117a 0x7b5b@uint16;
mov L0x55555557117c 0xbb9b@uint16;  mov L0x55555557117e 0xfbdb@uint16;
mov L0x555555571180 0x0400@uint16;  mov L0x555555571182 0x0c08@uint16;
mov L0x555555571184 0x1410@uint16;  mov L0x555555571186 0x1c18@uint16;
mov L0x555555571188 0x2420@uint16;  mov L0x55555557118a 0x2c28@uint16;
mov L0x55555557118c 0x3430@uint16;  mov L0x55555557118e 0x3c38@uint16;
mov L0x555555571190 0x4000@uint16;  mov L0x555555571192 0xc080@uint16;
mov L0x555555571194 0x5b1b@uint16;  mov L0x555555571196 0xdb9b@uint16;
mov L0x555555571198 0x7636@uint16;  mov L0x55555557119a 0xf6b6@uint16;
mov L0x55555557119c 0x6d2d@uint16;  mov L0x55555557119e 0xedad@uint16;
mov L0x5555555711a0 0x0800@uint16;  mov L0x5555555711a2 0x1810@uint16;
mov L0x5555555711a4 0x2820@uint16;  mov L0x5555555711a6 0x3830@uint16;
mov L0x5555555711a8 0x4840@uint16;  mov L0x5555555711aa 0x5850@uint16;
mov L0x5555555711ac 0x6860@uint16;  mov L0x5555555711ae 0x7870@uint16;
mov L0x5555555711b0 0x8000@uint16;  mov L0x5555555711b2 0x9b1b@uint16;
mov L0x5555555711b4 0xb636@uint16;  mov L0x5555555711b6 0xad2d@uint16;
mov L0x5555555711b8 0xec6c@uint16;  mov L0x5555555711ba 0xf777@uint16;
mov L0x5555555711bc 0xda5a@uint16;  mov L0x5555555711be 0xc141@uint16;
mov L0x5555555711c0 0x1000@uint16;  mov L0x5555555711c2 0x3020@uint16;
mov L0x5555555711c4 0x5040@uint16;  mov L0x5555555711c6 0x7060@uint16;
mov L0x5555555711c8 0x9080@uint16;  mov L0x5555555711ca 0xb0a0@uint16;
mov L0x5555555711cc 0xd0c0@uint16;  mov L0x5555555711ce 0xf0e0@uint16;
mov L0x5555555711d0 0x1b00@uint16;  mov L0x5555555711d2 0x2d36@uint16;
mov L0x5555555711d4 0x776c@uint16;  mov L0x5555555711d6 0x415a@uint16;
mov L0x5555555711d8 0xc3d8@uint16;  mov L0x5555555711da 0xf5ee@uint16;
mov L0x5555555711dc 0xafb4@uint16;  mov L0x5555555711de 0x9982@uint16;
mov L0x5555555711e0 0x2000@uint16;  mov L0x5555555711e2 0x6040@uint16;
mov L0x5555555711e4 0xa080@uint16;  mov L0x5555555711e6 0xe0c0@uint16;
mov L0x5555555711e8 0x3b1b@uint16;  mov L0x5555555711ea 0x7b5b@uint16;
mov L0x5555555711ec 0xbb9b@uint16;  mov L0x5555555711ee 0xfbdb@uint16;
mov L0x5555555711f0 0x3600@uint16;  mov L0x5555555711f2 0x5a6c@uint16;
mov L0x5555555711f4 0xeed8@uint16;  mov L0x5555555711f6 0x82b4@uint16;
mov L0x5555555711f8 0x9dab@uint16;  mov L0x5555555711fa 0xf1c7@uint16;
mov L0x5555555711fc 0x4573@uint16;  mov L0x5555555711fe 0x291f@uint16;
mov L0x555555571200 0x4000@uint16;  mov L0x555555571202 0xc080@uint16;
mov L0x555555571204 0x5b1b@uint16;  mov L0x555555571206 0xdb9b@uint16;
mov L0x555555571208 0x7636@uint16;  mov L0x55555557120a 0xf6b6@uint16;
mov L0x55555557120c 0x6d2d@uint16;  mov L0x55555557120e 0xedad@uint16;
mov L0x555555571210 0x6c00@uint16;  mov L0x555555571212 0xb4d8@uint16;
mov L0x555555571214 0xc7ab@uint16;  mov L0x555555571216 0x1f73@uint16;
mov L0x555555571218 0x214d@uint16;  mov L0x55555557121a 0xf995@uint16;
mov L0x55555557121c 0x8ae6@uint16;  mov L0x55555557121e 0x523e@uint16;
mov L0x555555571220 0x8000@uint16;  mov L0x555555571222 0x9b1b@uint16;
mov L0x555555571224 0xb636@uint16;  mov L0x555555571226 0xad2d@uint16;
mov L0x555555571228 0xec6c@uint16;  mov L0x55555557122a 0xf777@uint16;
mov L0x55555557122c 0xda5a@uint16;  mov L0x55555557122e 0xc141@uint16;
mov L0x555555571230 0xd800@uint16;  mov L0x555555571232 0x73ab@uint16;
mov L0x555555571234 0x954d@uint16;  mov L0x555555571236 0x3ee6@uint16;
mov L0x555555571238 0x429a@uint16;  mov L0x55555557123a 0xe931@uint16;
mov L0x55555557123c 0x0fd7@uint16;  mov L0x55555557123e 0xa47c@uint16;
(* mask with const 1 (0x0001) *)
mov L0x55555556f040 0x0001@uint16;  mov L0x55555556f042 0x0001@uint16;
mov L0x55555556f044 0x0001@uint16;  mov L0x55555556f046 0x0001@uint16;
mov L0x55555556f048 0x0001@uint16;  mov L0x55555556f04a 0x0001@uint16;
mov L0x55555556f04c 0x0001@uint16;  mov L0x55555556f04e 0x0001@uint16;
mov L0x55555556f050 0x0001@uint16;  mov L0x55555556f052 0x0001@uint16;
mov L0x55555556f054 0x0001@uint16;  mov L0x55555556f056 0x0001@uint16;
mov L0x55555556f058 0x0001@uint16;  mov L0x55555556f05a 0x0001@uint16;
mov L0x55555556f05c 0x0001@uint16;  mov L0x55555556f05e 0x0001@uint16;
(* mask with const 4 (0x0004) *)
mov L0x55555556f060 0x0004@uint16;  mov L0x55555556f062 0x0004@uint16;
mov L0x55555556f064 0x0004@uint16;  mov L0x55555556f066 0x0004@uint16;
mov L0x55555556f068 0x0004@uint16;  mov L0x55555556f06a 0x0004@uint16;
mov L0x55555556f06c 0x0004@uint16;  mov L0x55555556f06e 0x0004@uint16;
mov L0x55555556f070 0x0004@uint16;  mov L0x55555556f072 0x0004@uint16;
mov L0x55555556f074 0x0004@uint16;  mov L0x55555556f076 0x0004@uint16;
mov L0x55555556f078 0x0004@uint16;  mov L0x55555556f07a 0x0004@uint16;
mov L0x55555556f07c 0x0004@uint16;  mov L0x55555556f07e 0x0004@uint16;
(* mask with const 16 (0x0010) *)
mov L0x55555556f080 0x0010@uint16;  mov L0x55555556f082 0x0010@uint16;
mov L0x55555556f084 0x0010@uint16;  mov L0x55555556f086 0x0010@uint16;
mov L0x55555556f088 0x0010@uint16;  mov L0x55555556f08a 0x0010@uint16;
mov L0x55555556f08c 0x0010@uint16;  mov L0x55555556f08e 0x0010@uint16;
mov L0x55555556f090 0x0010@uint16;  mov L0x55555556f092 0x0010@uint16;
mov L0x55555556f094 0x0010@uint16;  mov L0x55555556f096 0x0010@uint16;
mov L0x55555556f098 0x0010@uint16;  mov L0x55555556f09a 0x0010@uint16;
mov L0x55555556f09c 0x0010@uint16;  mov L0x55555556f09e 0x0010@uint16;
(* mask with const 64 (0x0040) *)
mov L0x55555556f0a0 0x0040@uint16;  mov L0x55555556f0a2 0x0040@uint16;
mov L0x55555556f0a4 0x0040@uint16;  mov L0x55555556f0a6 0x0040@uint16;
mov L0x55555556f0a8 0x0040@uint16;  mov L0x55555556f0aa 0x0040@uint16;
mov L0x55555556f0ac 0x0040@uint16;  mov L0x55555556f0ae 0x0040@uint16;
mov L0x55555556f0b0 0x0040@uint16;  mov L0x55555556f0b2 0x0040@uint16;
mov L0x55555556f0b4 0x0040@uint16;  mov L0x55555556f0b6 0x0040@uint16;
mov L0x55555556f0b8 0x0040@uint16;  mov L0x55555556f0ba 0x0040@uint16;
mov L0x55555556f0bc 0x0040@uint16;  mov L0x55555556f0be 0x0040@uint16;
(* mask with const 3855 (0x0f0f) *)
mov L0x55555556f0c0 0x0f0f@uint16;  mov L0x55555556f0c2 0x0f0f@uint16;
mov L0x55555556f0c4 0x0f0f@uint16;  mov L0x55555556f0c6 0x0f0f@uint16;
mov L0x55555556f0c8 0x0f0f@uint16;  mov L0x55555556f0ca 0x0f0f@uint16;
mov L0x55555556f0cc 0x0f0f@uint16;  mov L0x55555556f0ce 0x0f0f@uint16;
mov L0x55555556f0d0 0x0f0f@uint16;  mov L0x55555556f0d2 0x0f0f@uint16;
mov L0x55555556f0d4 0x0f0f@uint16;  mov L0x55555556f0d6 0x0f0f@uint16;
mov L0x55555556f0d8 0x0f0f@uint16;  mov L0x55555556f0da 0x0f0f@uint16;
mov L0x55555556f0dc 0x0f0f@uint16;  mov L0x55555556f0de 0x0f0f@uint16;


(* #! -> SP = 0x7fffffffc8f8 *)
#! 0x7fffffffc8f8 = 0x7fffffffc8f8;
(* push   %r13                                     #! EA = L0x7fffffffc8f0; PC = 0x55555555f530 *)
(* push r13 *)
nop;
(* mov    %edx,%r9d                                #! PC = 0x55555555f532 *)
mov r9 rdx;
(* mov    %rdi,%r8                                 #! PC = 0x55555555f535 *)
mov r8 rdi;
(* mov    %ecx,%edx                                #! PC = 0x55555555f538 *)
mov rdx rcx;
(* movzbl %r9b,%edi                                #! PC = 0x55555555f53a *)
mov rdi r9;
(* lea    0x10(%rsp),%r13                          #! PC = 0x55555555f53e *)
(* lea 0x10(rsp), r13 *)
nop;
(* and    $0xffffffffffffffe0,%rsp                 #! PC = 0x55555555f543 *)
and rsp@uint64 (0xffffffffffffffe0)@uint64 rsp;
(* push   -0x8(%r13)                               #! EA = L0x7fffffffc8d8; PC = 0x55555555f547 *)
(* push -0x8(r13) *)
nop;
(* push   %rbp                                     #! EA = L0x7fffffffc8d0; PC = 0x55555555f54b *)
(* push rbp *)
nop;
(* mov    %rsp,%rbp                                #! PC = 0x55555555f54c *)
mov rbp rsp;
(* push   %r13                                     #! EA = L0x7fffffffc8c8; PC = 0x55555555f54f *)
(* push r13 *)
nop;
(* sub    $0x8,%rsp                                #! PC = 0x55555555f551 *)
subb dontcare rsp rsp (0x8)@uint64;
(* #call   0x55555555c170 <tbl32_gf256_multab>     #! PC = 0x55555555f555 *)
#call   0x55555555c170 <tbl32_gf256_multab>     #! 0x55555555f555 = 0x55555555f555;
(* #! -> SP = 0x7fffffffc8b8 *)
#! 0x7fffffffc8b8 = 0x7fffffffc8b8;
(* movzbl %dil,%edi                                #! PC = 0x55555555c170 *)
mov rdi rdi;
(* vmovdqa 0x12ec4(%rip),%ymm5        # 0x55555556f040#! EA = L0x55555556f040; Value = 0x0001000100010001; PC = 0x55555555c174 *)
mov %ymm5 [L0x55555556f040, L0x55555556f042, L0x55555556f044, L0x55555556f046,
           L0x55555556f048, L0x55555556f04a, L0x55555556f04c, L0x55555556f04e,
           L0x55555556f050, L0x55555556f052, L0x55555556f054, L0x55555556f056,
           L0x55555556f058, L0x55555556f05a, L0x55555556f05c, L0x55555556f05e];
(* vpxor  %xmm3,%xmm3,%xmm3                        #! PC = 0x55555555c17c *)
mov %ymm3 [0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16,
           0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16];
(* vmovdqa 0x12ed8(%rip),%ymm7        # 0x55555556f060#! EA = L0x55555556f060; Value = 0x0004000400040004; PC = 0x55555555c180 *)
mov %ymm7 [L0x55555556f060, L0x55555556f062, L0x55555556f064, L0x55555556f066,
           L0x55555556f068, L0x55555556f06a, L0x55555556f06c, L0x55555556f06e,
           L0x55555556f070, L0x55555556f072, L0x55555556f074, L0x55555556f076,
           L0x55555556f078, L0x55555556f07a, L0x55555556f07c, L0x55555556f07e];
(* vmovd  %edi,%xmm1                               #! PC = 0x55555555c188 *)
vpc rdi_u16@uint16 rdi;
mov %xmm1 [rdi_u16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16, 0@uint16];
(* vmovdqa 0x12f0c(%rip),%ymm6        # 0x55555556f0a0#! EA = L0x55555556f0a0; Value = 0x0040004000400040; PC = 0x55555555c18c *)
mov %ymm6 [L0x55555556f0a0, L0x55555556f0a2, L0x55555556f0a4, L0x55555556f0a6,
           L0x55555556f0a8, L0x55555556f0aa, L0x55555556f0ac, L0x55555556f0ae,
           L0x55555556f0b0, L0x55555556f0b2, L0x55555556f0b4, L0x55555556f0b6,
           L0x55555556f0b8, L0x55555556f0ba, L0x55555556f0bc, L0x55555556f0be];
(* vpbroadcastw %xmm1,%ymm1                        #! PC = 0x55555555c194 *)
mov [xmm1_0, xmm1_1, xmm1_2, xmm1_3, xmm1_4, xmm1_5, xmm1_6, xmm1_7] %xmm1;
mov %ymm1 [xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0,
           xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0, xmm1_0];
(* vpand  %ymm1,%ymm5,%ymm0                        #! PC = 0x55555555c199 *)
and %ymm0 %ymm1 %ymm5;
(* vpsrlw $0x1,%ymm1,%ymm4                         #! PC = 0x55555555c19d *)
mov [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
     ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f] %ymm1;
shrs ymm4_0 dontcare ymm1_0 0x1;
shrs ymm4_1 dontcare ymm1_1 0x1;
shrs ymm4_2 dontcare ymm1_2 0x1;
shrs ymm4_3 dontcare ymm1_3 0x1;
shrs ymm4_4 dontcare ymm1_4 0x1;
shrs ymm4_5 dontcare ymm1_5 0x1;
shrs ymm4_6 dontcare ymm1_6 0x1;
shrs ymm4_7 dontcare ymm1_7 0x1;
shrs ymm4_8 dontcare ymm1_8 0x1;
shrs ymm4_9 dontcare ymm1_9 0x1;
shrs ymm4_a dontcare ymm1_a 0x1;
shrs ymm4_b dontcare ymm1_b 0x1;
shrs ymm4_c dontcare ymm1_c 0x1;
shrs ymm4_d dontcare ymm1_d 0x1;
shrs ymm4_e dontcare ymm1_e 0x1;
shrs ymm4_f dontcare ymm1_f 0x1;
mov %ymm4 [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7,
           ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f];
(* vpand  %ymm1,%ymm7,%ymm2                        #! PC = 0x55555555c1a2 *)
and %ymm2 %ymm1 %ymm7;
(* vpcmpgtw %ymm3,%ymm0,%ymm0                      #! PC = 0x55555555c1a6 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
     ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f] %ymm0;
inline cmpgt0w(ymm0_0, tmp0);
cmov ymm0_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_1, tmp1);
cmov ymm0_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_2, tmp2);
cmov ymm0_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_3, tmp3);
cmov ymm0_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_4, tmp4);
cmov ymm0_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_5, tmp5);
cmov ymm0_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_6, tmp6);
cmov ymm0_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_7, tmp7);
cmov ymm0_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_8, tmp8);
cmov ymm0_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_9, tmp9);
cmov ymm0_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_a, tmpa);
cmov ymm0_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_b, tmpb);
cmov ymm0_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_c, tmpc);
cmov ymm0_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_d, tmpd);
cmov ymm0_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_e, tmpe);
cmov ymm0_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm0_f, tmpf);
cmov ymm0_f tmpf 0xffff@uint16 0@uint16;
mov %ymm0 [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
           ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f];
(* vpcmpgtw %ymm3,%ymm2,%ymm2                      #! PC = 0x55555555c1aa *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
     ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f] %ymm2;
inline cmpgt0w(ymm2_0, tmp0);
cmov ymm2_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_1, tmp1);
cmov ymm2_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_2, tmp2);
cmov ymm2_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_3, tmp3);
cmov ymm2_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_4, tmp4);
cmov ymm2_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_5, tmp5);
cmov ymm2_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_6, tmp6);
cmov ymm2_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_7, tmp7);
cmov ymm2_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_8, tmp8);
cmov ymm2_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_9, tmp9);
cmov ymm2_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_a, tmpa);
cmov ymm2_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_b, tmpb);
cmov ymm2_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_c, tmpc);
cmov ymm2_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_d, tmpd);
cmov ymm2_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_e, tmpe);
cmov ymm2_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_f, tmpf);
cmov ymm2_f tmpf 0xffff@uint16 0@uint16;
mov %ymm2 [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
           ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f];
(* vpand  0x14f8a(%rip),%ymm0,%ymm0        # 0x555555571140 <__gf256_mulbase>#! EA = L0x555555571140; Value = 0x0706050403020100; PC = 0x55555555c1ae *)
mov %tmp [L0x555555571140, L0x555555571142, L0x555555571144, L0x555555571146,
          L0x555555571148, L0x55555557114a, L0x55555557114c, L0x55555557114e,
          L0x555555571150, L0x555555571152, L0x555555571154, L0x555555571156,
          L0x555555571158, L0x55555557115a, L0x55555557115c, L0x55555557115e];
and %ymm0 %tmp %ymm0;
(* vpand  0x14fc2(%rip),%ymm2,%ymm2        # 0x555555571180 <__gf256_mulbase+64>#! EA = L0x555555571180; Value = 0x1c1814100c080400; PC = 0x55555555c1b6 *)
mov %tmp [L0x555555571180, L0x555555571182, L0x555555571184, L0x555555571186,
          L0x555555571188, L0x55555557118a, L0x55555557118c, L0x55555557118e,
          L0x555555571190, L0x555555571192, L0x555555571194, L0x555555571196,
          L0x555555571198, L0x55555557119a, L0x55555557119c, L0x55555557119e];
and %ymm2 %tmp %ymm2;
(* vpand  %ymm4,%ymm5,%ymm5                        #! PC = 0x55555555c1be *)
and %ymm5 %ymm4 %ymm5;
(* vpand  %ymm4,%ymm7,%ymm7                        #! PC = 0x55555555c1c2 *)
and %ymm7 %ymm4 %ymm7;
(* vpcmpgtw %ymm3,%ymm5,%ymm5                      #! PC = 0x55555555c1c6 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7,
     ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f] %ymm5;
inline cmpgt0w(ymm5_0, tmp0);
cmov ymm5_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_1, tmp1);
cmov ymm5_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_2, tmp2);
cmov ymm5_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_3, tmp3);
cmov ymm5_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_4, tmp4);
cmov ymm5_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_5, tmp5);
cmov ymm5_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_6, tmp6);
cmov ymm5_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_7, tmp7);
cmov ymm5_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_8, tmp8);
cmov ymm5_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_9, tmp9);
cmov ymm5_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_a, tmpa);
cmov ymm5_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_b, tmpb);
cmov ymm5_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_c, tmpc);
cmov ymm5_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_d, tmpd);
cmov ymm5_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_e, tmpe);
cmov ymm5_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm5_f, tmpf);
cmov ymm5_f tmpf 0xffff@uint16 0@uint16;
mov %ymm5 [ymm5_0, ymm5_1, ymm5_2, ymm5_3, ymm5_4, ymm5_5, ymm5_6, ymm5_7,
           ymm5_8, ymm5_9, ymm5_a, ymm5_b, ymm5_c, ymm5_d, ymm5_e, ymm5_f];
(* vpcmpgtw %ymm3,%ymm7,%ymm7                      #! PC = 0x55555555c1ca *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7,
     ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f] %ymm7;
inline cmpgt0w(ymm7_0, tmp0);
cmov ymm7_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_1, tmp1);
cmov ymm7_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_2, tmp2);
cmov ymm7_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_3, tmp3);
cmov ymm7_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_4, tmp4);
cmov ymm7_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_5, tmp5);
cmov ymm7_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_6, tmp6);
cmov ymm7_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_7, tmp7);
cmov ymm7_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_8, tmp8);
cmov ymm7_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_9, tmp9);
cmov ymm7_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_a, tmpa);
cmov ymm7_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_b, tmpb);
cmov ymm7_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_c, tmpc);
cmov ymm7_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_d, tmpd);
cmov ymm7_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_e, tmpe);
cmov ymm7_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm7_f, tmpf);
cmov ymm7_f tmpf 0xffff@uint16 0@uint16;
mov %ymm7 [ymm7_0, ymm7_1, ymm7_2, ymm7_3, ymm7_4, ymm7_5, ymm7_6, ymm7_7,
           ymm7_8, ymm7_9, ymm7_a, ymm7_b, ymm7_c, ymm7_d, ymm7_e, ymm7_f];
(* vpand  0x14f8a(%rip),%ymm5,%ymm5        # 0x555555571160 <__gf256_mulbase+32>#! EA = L0x555555571160; Value = 0x0e0c0a0806040200; PC = 0x55555555c1ce *)
mov %tmp [L0x555555571160, L0x555555571162, L0x555555571164, L0x555555571166,
          L0x555555571168, L0x55555557116a, L0x55555557116c, L0x55555557116e,
          L0x555555571170, L0x555555571172, L0x555555571174, L0x555555571176,
          L0x555555571178, L0x55555557117a, L0x55555557117c, L0x55555557117e];
and %ymm5 %tmp %ymm5;
(* vpxor  %ymm2,%ymm0,%ymm0                        #! PC = 0x55555555c1d6 *)
xor %ymm0 %ymm2 %ymm0;
(* vmovdqa 0x12e9e(%rip),%ymm2        # 0x55555556f080#! EA = L0x55555556f080; Value = 0x0010001000100010; PC = 0x55555555c1da *)
mov %ymm2 [L0x55555556f080, L0x55555556f082, L0x55555556f084, L0x55555556f086,
           L0x55555556f088, L0x55555556f08a, L0x55555556f08c, L0x55555556f08e,
           L0x55555556f090, L0x55555556f092, L0x55555556f094, L0x55555556f096,
           L0x55555556f098, L0x55555556f09a, L0x55555556f09c, L0x55555556f09e];
(* vpand  0x14fb6(%rip),%ymm7,%ymm7        # 0x5555555711a0 <__gf256_mulbase+96>#! EA = L0x5555555711a0; Value = 0x3830282018100800; PC = 0x55555555c1e2 *)
mov %tmp [L0x5555555711a0, L0x5555555711a2, L0x5555555711a4, L0x5555555711a6,
          L0x5555555711a8, L0x5555555711aa, L0x5555555711ac, L0x5555555711ae,
          L0x5555555711b0, L0x5555555711b2, L0x5555555711b4, L0x5555555711b6,
          L0x5555555711b8, L0x5555555711ba, L0x5555555711bc, L0x5555555711be];
and %ymm7 %tmp %ymm7;
(* vpand  %ymm1,%ymm2,%ymm8                        #! PC = 0x55555555c1ea *)
and %ymm8 %ymm1 %ymm2;
(* vpand  %ymm1,%ymm6,%ymm1                        #! PC = 0x55555555c1ee *)
and %ymm1 %ymm1 %ymm6;
(* vpand  %ymm4,%ymm2,%ymm2                        #! PC = 0x55555555c1f2 *)
and %ymm2 %ymm4 %ymm2;
(* vpcmpgtw %ymm3,%ymm8,%ymm8                      #! PC = 0x55555555c1f6 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7,
     ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f] %ymm8;
inline cmpgt0w(ymm8_0, tmp0);
cmov ymm8_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_1, tmp1);
cmov ymm8_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_2, tmp2);
cmov ymm8_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_3, tmp3);
cmov ymm8_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_4, tmp4);
cmov ymm8_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_5, tmp5);
cmov ymm8_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_6, tmp6);
cmov ymm8_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_7, tmp7);
cmov ymm8_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_8, tmp8);
cmov ymm8_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_9, tmp9);
cmov ymm8_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_a, tmpa);
cmov ymm8_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_b, tmpb);
cmov ymm8_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_c, tmpc);
cmov ymm8_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_d, tmpd);
cmov ymm8_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_e, tmpe);
cmov ymm8_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm8_f, tmpf);
cmov ymm8_f tmpf 0xffff@uint16 0@uint16;
mov %ymm8 [ymm8_0, ymm8_1, ymm8_2, ymm8_3, ymm8_4, ymm8_5, ymm8_6, ymm8_7,
           ymm8_8, ymm8_9, ymm8_a, ymm8_b, ymm8_c, ymm8_d, ymm8_e, ymm8_f];
(* vpcmpgtw %ymm3,%ymm1,%ymm1                      #! PC = 0x55555555c1fa *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
     ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f] %ymm1;
inline cmpgt0w(ymm1_0, tmp0);
cmov ymm1_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_1, tmp1);
cmov ymm1_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_2, tmp2);
cmov ymm1_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_3, tmp3);
cmov ymm1_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_4, tmp4);
cmov ymm1_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_5, tmp5);
cmov ymm1_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_6, tmp6);
cmov ymm1_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_7, tmp7);
cmov ymm1_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_8, tmp8);
cmov ymm1_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_9, tmp9);
cmov ymm1_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_a, tmpa);
cmov ymm1_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_b, tmpb);
cmov ymm1_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_c, tmpc);
cmov ymm1_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_d, tmpd);
cmov ymm1_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_e, tmpe);
cmov ymm1_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm1_f, tmpf);
cmov ymm1_f tmpf 0xffff@uint16 0@uint16;
mov %ymm1 [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
           ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f];
(* vpand  %ymm4,%ymm6,%ymm6                        #! PC = 0x55555555c1fe *)
and %ymm6 %ymm4 %ymm6;
(* vpcmpgtw %ymm3,%ymm2,%ymm2                      #! PC = 0x55555555c202 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
     ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f] %ymm2;
inline cmpgt0w(ymm2_0, tmp0);
cmov ymm2_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_1, tmp1);
cmov ymm2_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_2, tmp2);
cmov ymm2_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_3, tmp3);
cmov ymm2_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_4, tmp4);
cmov ymm2_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_5, tmp5);
cmov ymm2_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_6, tmp6);
cmov ymm2_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_7, tmp7);
cmov ymm2_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_8, tmp8);
cmov ymm2_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_9, tmp9);
cmov ymm2_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_a, tmpa);
cmov ymm2_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_b, tmpb);
cmov ymm2_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_c, tmpc);
cmov ymm2_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_d, tmpd);
cmov ymm2_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_e, tmpe);
cmov ymm2_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm2_f, tmpf);
cmov ymm2_f tmpf 0xffff@uint16 0@uint16;
mov %ymm2 [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
           ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f];
(* vpcmpgtw %ymm3,%ymm6,%ymm6                      #! PC = 0x55555555c206 *)
mov [ymm3_0, ymm3_1, ymm3_2, ymm3_3, ymm3_4, ymm3_5, ymm3_6, ymm3_7,
     ymm3_8, ymm3_9, ymm3_a, ymm3_b, ymm3_c, ymm3_d, ymm3_e, ymm3_f] %ymm3;
assert true && ymm3_0 = 0@16;
assert true && ymm3_1 = 0@16;
assert true && ymm3_2 = 0@16;
assert true && ymm3_3 = 0@16;
assert true && ymm3_4 = 0@16;
assert true && ymm3_5 = 0@16;
assert true && ymm3_6 = 0@16;
assert true && ymm3_7 = 0@16;
assert true && ymm3_8 = 0@16;
assert true && ymm3_9 = 0@16;
assert true && ymm3_a = 0@16;
assert true && ymm3_b = 0@16;
assert true && ymm3_c = 0@16;
assert true && ymm3_d = 0@16;
assert true && ymm3_e = 0@16;
assert true && ymm3_f = 0@16;
mov [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7,
     ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f] %ymm6;
inline cmpgt0w(ymm6_0, tmp0);
cmov ymm6_0 tmp0 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_1, tmp1);
cmov ymm6_1 tmp1 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_2, tmp2);
cmov ymm6_2 tmp2 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_3, tmp3);
cmov ymm6_3 tmp3 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_4, tmp4);
cmov ymm6_4 tmp4 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_5, tmp5);
cmov ymm6_5 tmp5 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_6, tmp6);
cmov ymm6_6 tmp6 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_7, tmp7);
cmov ymm6_7 tmp7 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_8, tmp8);
cmov ymm6_8 tmp8 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_9, tmp9);
cmov ymm6_9 tmp9 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_a, tmpa);
cmov ymm6_a tmpa 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_b, tmpb);
cmov ymm6_b tmpb 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_c, tmpc);
cmov ymm6_c tmpc 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_d, tmpd);
cmov ymm6_d tmpd 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_e, tmpe);
cmov ymm6_e tmpe 0xffff@uint16 0@uint16;
inline cmpgt0w(ymm6_f, tmpf);
cmov ymm6_f tmpf 0xffff@uint16 0@uint16;
mov %ymm6 [ymm6_0, ymm6_1, ymm6_2, ymm6_3, ymm6_4, ymm6_5, ymm6_6, ymm6_7,
           ymm6_8, ymm6_9, ymm6_a, ymm6_b, ymm6_c, ymm6_d, ymm6_e, ymm6_f];
(* vpand  0x14fae(%rip),%ymm8,%ymm8        # 0x5555555711c0 <__gf256_mulbase+128>#! EA = L0x5555555711c0; Value = 0x7060504030201000; PC = 0x55555555c20a *)
mov %tmp [L0x5555555711c0, L0x5555555711c2, L0x5555555711c4, L0x5555555711c6,
          L0x5555555711c8, L0x5555555711ca, L0x5555555711cc, L0x5555555711ce,
          L0x5555555711d0, L0x5555555711d2, L0x5555555711d4, L0x5555555711d6,
          L0x5555555711d8, L0x5555555711da, L0x5555555711dc, L0x5555555711de];
and %ymm8 %tmp %ymm8;
(* vpand  0x14fe6(%rip),%ymm1,%ymm1        # 0x555555571200 <__gf256_mulbase+192>#! EA = L0x555555571200; Value = 0xdb9b5b1bc0804000; PC = 0x55555555c212 *)
mov %tmp [L0x555555571200, L0x555555571202, L0x555555571204, L0x555555571206,
          L0x555555571208, L0x55555557120a, L0x55555557120c, L0x55555557120e,
          L0x555555571210, L0x555555571212, L0x555555571214, L0x555555571216,
          L0x555555571218, L0x55555557121a, L0x55555557121c, L0x55555557121e];
and %ymm1 %tmp %ymm1;
(* vpand  0x14fbe(%rip),%ymm2,%ymm2        # 0x5555555711e0 <__gf256_mulbase+160>#! EA = L0x5555555711e0; Value = 0xe0c0a08060402000; PC = 0x55555555c21a *)
mov %tmp [L0x5555555711e0, L0x5555555711e2, L0x5555555711e4, L0x5555555711e6,
          L0x5555555711e8, L0x5555555711ea, L0x5555555711ec, L0x5555555711ee,
          L0x5555555711f0, L0x5555555711f2, L0x5555555711f4, L0x5555555711f6,
          L0x5555555711f8, L0x5555555711fa, L0x5555555711fc, L0x5555555711fe];
and %ymm2 %tmp %ymm2;
(* vpxor  %ymm7,%ymm5,%ymm5                        #! PC = 0x55555555c222 *)
xor %ymm5 %ymm7 %ymm5;
(* vpand  0x14ff2(%rip),%ymm6,%ymm6        # 0x555555571220 <__gf256_mulbase+224>#! EA = L0x555555571220; Value = 0xad2db6369b1b8000; PC = 0x55555555c226 *)
mov %tmp [L0x555555571220, L0x555555571222, L0x555555571224, L0x555555571226,
          L0x555555571228, L0x55555557122a, L0x55555557122c, L0x55555557122e,
          L0x555555571230, L0x555555571232, L0x555555571234, L0x555555571236,
          L0x555555571238, L0x55555557123a, L0x55555557123c, L0x55555557123e];
and %ymm6 %tmp %ymm6;
(* vpxor  %ymm1,%ymm8,%ymm1                        #! PC = 0x55555555c22e *)
xor %ymm1 %ymm1 %ymm8;
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555555c232 *)
xor %ymm0 %ymm1 %ymm0;
(* vpxor  %ymm6,%ymm2,%ymm2                        #! PC = 0x55555555c236 *)
xor %ymm2 %ymm6 %ymm2;
(* vpxor  %ymm5,%ymm0,%ymm0                        #! PC = 0x55555555c23a *)
xor %ymm0 %ymm5 %ymm0;
(* vpxor  %ymm2,%ymm0,%ymm0                        #! PC = 0x55555555c23e *)
xor %ymm0 %ymm2 %ymm0;
(* #! <- SP = 0x7fffffffc8b8 *)
#! 0x7fffffffc8b8 = 0x7fffffffc8b8;
(* #ret                                            #! PC = 0x55555555c242 *)
#ret                                            #! 0x55555555c242 = 0x55555555c242;
(* mov    -0x8(%rbp),%r13                          #! EA = L0x7fffffffc8c8; Value = 0x00007fffffffc900; PC = 0x55555555f55a *)
mov r13 L0x7fffffffc8c8;
(* mov    %r8,%rdi                                 #! PC = 0x55555555f55e *)
mov rdi r8;
(* leave                                           #! PC = 0x55555555f561 *)
(* leave *)
nop;
(* vmovdqa %ymm0,%ymm1                             #! PC = 0x55555555f562 *)
mov %ymm1 %ymm0;
(* vperm2i128 $0x0,%ymm0,%ymm0,%ymm0               #! PC = 0x55555555f566 *)
mov [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
     ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f] %ymm0;
mov %ymm0 [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
           ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7];
(* lea    -0x10(%r13),%rsp                         #! PC = 0x55555555f56c *)
(* lea -0x10(r13), rsp *)
nop;
(* vperm2i128 $0x11,%ymm1,%ymm1,%ymm1              #! PC = 0x55555555f570 *)
mov [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
     ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f] %ymm1;
mov %ymm1 [ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f,
           ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f];
(* pop    %r13                                     #! EA = L0x7fffffffc8f0; Value = 0x000000000000002c; PC = 0x55555555f576 *)
(* pop r13 *)
nop;
(* #jmp    0x55555555f4c0 <linearmap_8x8_accu_ymm.constprop.0>#! PC = 0x55555555f578 *)
#jmp    0x55555555f4c0 <linearmap_8x8_accu_ymm.constprop.0>#! 0x55555555f578 = 0x55555555f578;
(* shr    $0x5,%edx                                #! PC = 0x55555555f4c0 *)
shrs rdx dontcare rdx (0x5);
(* #je     0x55555555f528 <linearmap_8x8_accu_ymm.constprop.0+104>#! PC = 0x55555555f4c3 *)
#je     0x55555555f528 <linearmap_8x8_accu_ymm.constprop.0+104>#! 0x55555555f4c3 = 0x55555555f4c3;
(* lea    0x8(%rsp),%r10                           #! PC = 0x55555555f4c5 *)
(* lea 0x8(rsp), r10 *)
nop;
(* and    $0xffffffffffffffe0,%rsp                 #! PC = 0x55555555f4ca *)
and rsp@uint64 (0xffffffffffffffe0)@uint64 rsp;
(* vmovdqa %ymm0,%ymm5                             #! PC = 0x55555555f4ce *)
mov %ymm5 %ymm0;
(* mov    %edx,%edx                                #! PC = 0x55555555f4d2 *)
mov rdx rdx;
(* push   -0x8(%r10)                               #! EA = L0x7fffffffc8d8; PC = 0x55555555f4d4 *)
(* push -0x8(r10) *)
nop;
(* shl    $0x5,%rdx                                #! PC = 0x55555555f4d8 *)
shls dontcare rdx rdx (0x5);
(* vmovdqa %ymm1,%ymm6                             #! PC = 0x55555555f4dc *)
mov %ymm6 %ymm1;
(* push   %rbp                                     #! EA = L0x7fffffffc8d0; PC = 0x55555555f4e0 *)
(* push rbp *)
nop;
(* add    %rsi,%rdx                                #! PC = 0x55555555f4e1 *)
adds dontcare rdx rsi rdx;
(* mov    %rsp,%rbp                                #! PC = 0x55555555f4e4 *)
mov rbp rsp;
(* push   %r10                                     #! EA = L0x7fffffffc8c8; PC = 0x55555555f4e7 *)
(* push r10 *)
nop;
(* sub    $0x8,%rsp                                #! PC = 0x55555555f4e9 *)
subb dontcare rsp rsp (0x8)@uint64;
(* nopl   (%rax)                                   #! EA = L0x2b; PC = 0x55555555f4ed *)
(* nopl L0x2b *)
nop;
(* vmovdqa (%rsi),%ymm2                            #! EA = L0x7fffffffc920; Value = 0x5e16ba87a641f697; PC = 0x55555555f4f0 *)
mov %ymm2 [L0x7fffffffc920, L0x7fffffffc922, L0x7fffffffc924, L0x7fffffffc926,
           L0x7fffffffc928, L0x7fffffffc92a, L0x7fffffffc92c, L0x7fffffffc92e,
           L0x7fffffffc930, L0x7fffffffc932, L0x7fffffffc934, L0x7fffffffc936,
           L0x7fffffffc938, L0x7fffffffc93a, L0x7fffffffc93c, L0x7fffffffc93e];
(* vmovdqa %ymm6,%ymm1                             #! PC = 0x55555555f4f4 *)
mov %ymm1 %ymm6;
(* vmovdqa %ymm5,%ymm0                             #! PC = 0x55555555f4f8 *)
mov %ymm0 %ymm5;
(* add    $0x20,%rsi                               #! PC = 0x55555555f4fc *)
adds dontcare rsi (0x20)@uint64 rsi;
(* add    $0x20,%rdi                               #! PC = 0x55555555f500 *)
adds dontcare rdi (0x20)@uint64 rdi;
(* #call   0x55555555f490 <linear_transform_8x8_256b.constprop.0>#! PC = 0x55555555f504 *)
#call   0x55555555f490 <linear_transform_8x8_256b.constprop.0>#! 0x55555555f504 = 0x55555555f504;
(* #! -> SP = 0x7fffffffc8b8 *)
#! 0x7fffffffc8b8 = 0x7fffffffc8b8;
(* vmovdqa 0xfc28(%rip),%ymm3        # 0x55555556f0c0#! EA = L0x55555556f0c0; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x55555555f490 *)
mov %ymm3 [L0x55555556f0c0, L0x55555556f0c2, L0x55555556f0c4, L0x55555556f0c6,
           L0x55555556f0c8, L0x55555556f0ca, L0x55555556f0cc, L0x55555556f0ce,
           L0x55555556f0d0, L0x55555556f0d2, L0x55555556f0d4, L0x55555556f0d6,
           L0x55555556f0d8, L0x55555556f0da, L0x55555556f0dc, L0x55555556f0de];
(* vpand  %ymm3,%ymm2,%ymm4                        #! PC = 0x55555555f498 *)
and %ymm4 %ymm3 %ymm2;
(* vpsrlw $0x4,%ymm2,%ymm2                         #! PC = 0x55555555f49c *)
mov [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
     ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f] %ymm2;
shrs ymm2_0 dontcare ymm2_0 0x4;
shrs ymm2_1 dontcare ymm2_1 0x4;
shrs ymm2_2 dontcare ymm2_2 0x4;
shrs ymm2_3 dontcare ymm2_3 0x4;
shrs ymm2_4 dontcare ymm2_4 0x4;
shrs ymm2_5 dontcare ymm2_5 0x4;
shrs ymm2_6 dontcare ymm2_6 0x4;
shrs ymm2_7 dontcare ymm2_7 0x4;
shrs ymm2_8 dontcare ymm2_8 0x4;
shrs ymm2_9 dontcare ymm2_9 0x4;
shrs ymm2_a dontcare ymm2_a 0x4;
shrs ymm2_b dontcare ymm2_b 0x4;
shrs ymm2_c dontcare ymm2_c 0x4;
shrs ymm2_d dontcare ymm2_d 0x4;
shrs ymm2_e dontcare ymm2_e 0x4;
shrs ymm2_f dontcare ymm2_f 0x4;
mov %ymm2 [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
           ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f];
(* vpand  %ymm3,%ymm2,%ymm2                        #! PC = 0x55555555f4a1 *)
and %ymm2 %ymm3 %ymm2;
(* vpshufb %ymm4,%ymm0,%ymm0                       #! PC = 0x55555555f4a5 *)
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7,
     ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
inline ymmw2b (ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7,
             ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f,
             ymm4_0l, ymm4_0h, ymm4_1l, ymm4_1h, ymm4_2l, ymm4_2h, ymm4_3l, ymm4_3h,
             ymm4_4l, ymm4_4h, ymm4_5l, ymm4_5h, ymm4_6l, ymm4_6h, ymm4_7l, ymm4_7h,
             ymm4_8l, ymm4_8h, ymm4_9l, ymm4_9h, ymm4_al, ymm4_ah, ymm4_bl, ymm4_bh,
             ymm4_cl, ymm4_ch, ymm4_dl, ymm4_dh, ymm4_el, ymm4_eh, ymm4_fl, ymm4_fh);
mov [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
     ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f] %ymm0;
inline ymmw2b (ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
             ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f,
             ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
             ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
             ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
             ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh);
inline vpshufb256 (ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
                 ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
                 ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
                 ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh,
                 ymm4_0l, ymm4_0h, ymm4_1l, ymm4_1h, ymm4_2l, ymm4_2h, ymm4_3l, ymm4_3h,
                 ymm4_4l, ymm4_4h, ymm4_5l, ymm4_5h, ymm4_6l, ymm4_6h, ymm4_7l, ymm4_7h,
                 ymm4_8l, ymm4_8h, ymm4_9l, ymm4_9h, ymm4_al, ymm4_ah, ymm4_bl, ymm4_bh,
                 ymm4_cl, ymm4_ch, ymm4_dl, ymm4_dh, ymm4_el, ymm4_eh, ymm4_fl, ymm4_fh,
                 ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
                 ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
                 ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
                 ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh);
inline ymmb2w (ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
             ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
             ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
             ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh,
             ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
             ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f);
mov %ymm0 [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
           ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f];
(* vpshufb %ymm2,%ymm1,%ymm1                       #! PC = 0x55555555f4aa *)
mov [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
     ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f] %ymm2;
inline ymmw2b (ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
             ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f,
             ymm2_0l, ymm2_0h, ymm2_1l, ymm2_1h, ymm2_2l, ymm2_2h, ymm2_3l, ymm2_3h,
             ymm2_4l, ymm2_4h, ymm2_5l, ymm2_5h, ymm2_6l, ymm2_6h, ymm2_7l, ymm2_7h,
             ymm2_8l, ymm2_8h, ymm2_9l, ymm2_9h, ymm2_al, ymm2_ah, ymm2_bl, ymm2_bh,
             ymm2_cl, ymm2_ch, ymm2_dl, ymm2_dh, ymm2_el, ymm2_eh, ymm2_fl, ymm2_fh);
mov [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
     ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f] %ymm1;
inline ymmw2b (ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
             ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f,
             ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
             ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
             ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
             ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh);
inline vpshufb256 (ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
                 ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
                 ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
                 ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh,
                 ymm2_0l, ymm2_0h, ymm2_1l, ymm2_1h, ymm2_2l, ymm2_2h, ymm2_3l, ymm2_3h,
                 ymm2_4l, ymm2_4h, ymm2_5l, ymm2_5h, ymm2_6l, ymm2_6h, ymm2_7l, ymm2_7h,
                 ymm2_8l, ymm2_8h, ymm2_9l, ymm2_9h, ymm2_al, ymm2_ah, ymm2_bl, ymm2_bh,
                 ymm2_cl, ymm2_ch, ymm2_dl, ymm2_dh, ymm2_el, ymm2_eh, ymm2_fl, ymm2_fh,
                 ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
                 ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
                 ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
                 ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh);
inline ymmb2w (ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
             ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
             ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
             ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh,
             ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
             ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f);
mov %ymm1 [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
           ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f];
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555555f4af *)
xor %ymm0 %ymm1 %ymm0;
(* #! <- SP = 0x7fffffffc8b8 *)
#! 0x7fffffffc8b8 = 0x7fffffffc8b8;
(* #ret                                            #! PC = 0x55555555f4b3 *)
#ret                                            #! 0x55555555f4b3 = 0x55555555f4b3;
(* vpxor  -0x20(%rdi),%ymm0,%ymm0                  #! EA = L0x7fffffffc980; Value = 0xf8567fcc82a19310; PC = 0x55555555f509 *)
mov %tmp [L0x7fffffffc980, L0x7fffffffc982, L0x7fffffffc984, L0x7fffffffc986,
          L0x7fffffffc988, L0x7fffffffc98a, L0x7fffffffc98c, L0x7fffffffc98e,
          L0x7fffffffc990, L0x7fffffffc992, L0x7fffffffc994, L0x7fffffffc996,
          L0x7fffffffc998, L0x7fffffffc99a, L0x7fffffffc99c, L0x7fffffffc99e];
xor %ymm0 %tmp %ymm0;
(* vmovdqa %ymm0,-0x20(%rdi)                       #! EA = L0x7fffffffc980; PC = 0x55555555f50e *)
mov [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
     ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f] %ymm0;
mov L0x7fffffffc980 ymm0_0;
mov L0x7fffffffc982 ymm0_1;
mov L0x7fffffffc984 ymm0_2;
mov L0x7fffffffc986 ymm0_3;
mov L0x7fffffffc988 ymm0_4;
mov L0x7fffffffc98a ymm0_5;
mov L0x7fffffffc98c ymm0_6;
mov L0x7fffffffc98e ymm0_7;
mov L0x7fffffffc990 ymm0_8;
mov L0x7fffffffc992 ymm0_9;
mov L0x7fffffffc994 ymm0_a;
mov L0x7fffffffc996 ymm0_b;
mov L0x7fffffffc998 ymm0_c;
mov L0x7fffffffc99a ymm0_d;
mov L0x7fffffffc99c ymm0_e;
mov L0x7fffffffc99e ymm0_f;
(* cmp    %rdx,%rsi                                #! PC = 0x55555555f513 *)
(* cmp rdx, rsi *)
nop;
(* #jne    0x55555555f4f0 <linearmap_8x8_accu_ymm.constprop.0+48>#! PC = 0x55555555f516 *)
#jne    0x55555555f4f0 <linearmap_8x8_accu_ymm.constprop.0+48>#! 0x55555555f516 = 0x55555555f516;
(* vmovdqa (%rsi),%ymm2                            #! EA = L0x7fffffffc940; Value = 0xb9a385a25edc8faf; PC = 0x55555555f4f0 *)
mov %ymm2 [L0x7fffffffc940, L0x7fffffffc942, L0x7fffffffc944, L0x7fffffffc946,
           L0x7fffffffc948, L0x7fffffffc94a, L0x7fffffffc94c, L0x7fffffffc94e,
           L0x7fffffffc950, L0x7fffffffc952, L0x7fffffffc954, L0x7fffffffc956,
           L0x7fffffffc958, L0x7fffffffc95a, L0x7fffffffc95c, L0x7fffffffc95e];
(* vmovdqa %ymm6,%ymm1                             #! PC = 0x55555555f4f4 *)
mov %ymm1 %ymm6;
(* vmovdqa %ymm5,%ymm0                             #! PC = 0x55555555f4f8 *)
mov %ymm0 %ymm5;
(* add    $0x20,%rsi                               #! PC = 0x55555555f4fc *)
adds dontcare rsi (0x20)@uint64 rsi;
(* add    $0x20,%rdi                               #! PC = 0x55555555f500 *)
adds dontcare rdi (0x20)@uint64 rdi;
(* #call   0x55555555f490 <linear_transform_8x8_256b.constprop.0>#! PC = 0x55555555f504 *)
#call   0x55555555f490 <linear_transform_8x8_256b.constprop.0>#! 0x55555555f504 = 0x55555555f504;
(* #! -> SP = 0x7fffffffc8b8 *)
#! 0x7fffffffc8b8 = 0x7fffffffc8b8;
(* vmovdqa 0xfc28(%rip),%ymm3        # 0x55555556f0c0#! EA = L0x55555556f0c0; Value = 0x0f0f0f0f0f0f0f0f; PC = 0x55555555f490 *)
mov %ymm3 [L0x55555556f0c0, L0x55555556f0c2, L0x55555556f0c4, L0x55555556f0c6,
           L0x55555556f0c8, L0x55555556f0ca, L0x55555556f0cc, L0x55555556f0ce,
           L0x55555556f0d0, L0x55555556f0d2, L0x55555556f0d4, L0x55555556f0d6,
           L0x55555556f0d8, L0x55555556f0da, L0x55555556f0dc, L0x55555556f0de];
(* vpand  %ymm3,%ymm2,%ymm4                        #! PC = 0x55555555f498 *)
and %ymm4 %ymm3 %ymm2;
(* vpsrlw $0x4,%ymm2,%ymm2                         #! PC = 0x55555555f49c *)
mov [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
     ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f] %ymm2;
shrs ymm2_0 dontcare ymm2_0 0x4;
shrs ymm2_1 dontcare ymm2_1 0x4;
shrs ymm2_2 dontcare ymm2_2 0x4;
shrs ymm2_3 dontcare ymm2_3 0x4;
shrs ymm2_4 dontcare ymm2_4 0x4;
shrs ymm2_5 dontcare ymm2_5 0x4;
shrs ymm2_6 dontcare ymm2_6 0x4;
shrs ymm2_7 dontcare ymm2_7 0x4;
shrs ymm2_8 dontcare ymm2_8 0x4;
shrs ymm2_9 dontcare ymm2_9 0x4;
shrs ymm2_a dontcare ymm2_a 0x4;
shrs ymm2_b dontcare ymm2_b 0x4;
shrs ymm2_c dontcare ymm2_c 0x4;
shrs ymm2_d dontcare ymm2_d 0x4;
shrs ymm2_e dontcare ymm2_e 0x4;
shrs ymm2_f dontcare ymm2_f 0x4;
mov %ymm2 [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
           ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f];
(* vpand  %ymm3,%ymm2,%ymm2                        #! PC = 0x55555555f4a1 *)
and %ymm2 %ymm3 %ymm2;
(* vpshufb %ymm4,%ymm0,%ymm0                       #! PC = 0x55555555f4a5 *)
mov [ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7,
     ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f] %ymm4;
inline ymmw2b (ymm4_0, ymm4_1, ymm4_2, ymm4_3, ymm4_4, ymm4_5, ymm4_6, ymm4_7,
             ymm4_8, ymm4_9, ymm4_a, ymm4_b, ymm4_c, ymm4_d, ymm4_e, ymm4_f,
             ymm4_0l, ymm4_0h, ymm4_1l, ymm4_1h, ymm4_2l, ymm4_2h, ymm4_3l, ymm4_3h,
             ymm4_4l, ymm4_4h, ymm4_5l, ymm4_5h, ymm4_6l, ymm4_6h, ymm4_7l, ymm4_7h,
             ymm4_8l, ymm4_8h, ymm4_9l, ymm4_9h, ymm4_al, ymm4_ah, ymm4_bl, ymm4_bh,
             ymm4_cl, ymm4_ch, ymm4_dl, ymm4_dh, ymm4_el, ymm4_eh, ymm4_fl, ymm4_fh);
mov [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
     ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f] %ymm0;
inline ymmw2b (ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
             ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f,
             ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
             ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
             ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
             ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh);
inline vpshufb256 (ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
                 ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
                 ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
                 ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh,
                 ymm4_0l, ymm4_0h, ymm4_1l, ymm4_1h, ymm4_2l, ymm4_2h, ymm4_3l, ymm4_3h,
                 ymm4_4l, ymm4_4h, ymm4_5l, ymm4_5h, ymm4_6l, ymm4_6h, ymm4_7l, ymm4_7h,
                 ymm4_8l, ymm4_8h, ymm4_9l, ymm4_9h, ymm4_al, ymm4_ah, ymm4_bl, ymm4_bh,
                 ymm4_cl, ymm4_ch, ymm4_dl, ymm4_dh, ymm4_el, ymm4_eh, ymm4_fl, ymm4_fh,
                 ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
                 ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
                 ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
                 ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh);
inline ymmb2w (ymm0_0l, ymm0_0h, ymm0_1l, ymm0_1h, ymm0_2l, ymm0_2h, ymm0_3l, ymm0_3h,
             ymm0_4l, ymm0_4h, ymm0_5l, ymm0_5h, ymm0_6l, ymm0_6h, ymm0_7l, ymm0_7h,
             ymm0_8l, ymm0_8h, ymm0_9l, ymm0_9h, ymm0_al, ymm0_ah, ymm0_bl, ymm0_bh,
             ymm0_cl, ymm0_ch, ymm0_dl, ymm0_dh, ymm0_el, ymm0_eh, ymm0_fl, ymm0_fh,
             ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
             ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f);
mov %ymm0 [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
           ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f];
(* vpshufb %ymm2,%ymm1,%ymm1                       #! PC = 0x55555555f4aa *)
mov [ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
     ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f] %ymm2;
inline ymmw2b (ymm2_0, ymm2_1, ymm2_2, ymm2_3, ymm2_4, ymm2_5, ymm2_6, ymm2_7,
             ymm2_8, ymm2_9, ymm2_a, ymm2_b, ymm2_c, ymm2_d, ymm2_e, ymm2_f,
             ymm2_0l, ymm2_0h, ymm2_1l, ymm2_1h, ymm2_2l, ymm2_2h, ymm2_3l, ymm2_3h,
             ymm2_4l, ymm2_4h, ymm2_5l, ymm2_5h, ymm2_6l, ymm2_6h, ymm2_7l, ymm2_7h,
             ymm2_8l, ymm2_8h, ymm2_9l, ymm2_9h, ymm2_al, ymm2_ah, ymm2_bl, ymm2_bh,
             ymm2_cl, ymm2_ch, ymm2_dl, ymm2_dh, ymm2_el, ymm2_eh, ymm2_fl, ymm2_fh);
mov [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
     ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f] %ymm1;
inline ymmw2b (ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
             ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f,
             ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
             ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
             ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
             ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh);
inline vpshufb256 (ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
                 ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
                 ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
                 ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh,
                 ymm2_0l, ymm2_0h, ymm2_1l, ymm2_1h, ymm2_2l, ymm2_2h, ymm2_3l, ymm2_3h,
                 ymm2_4l, ymm2_4h, ymm2_5l, ymm2_5h, ymm2_6l, ymm2_6h, ymm2_7l, ymm2_7h,
                 ymm2_8l, ymm2_8h, ymm2_9l, ymm2_9h, ymm2_al, ymm2_ah, ymm2_bl, ymm2_bh,
                 ymm2_cl, ymm2_ch, ymm2_dl, ymm2_dh, ymm2_el, ymm2_eh, ymm2_fl, ymm2_fh,
                 ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
                 ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
                 ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
                 ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh);
inline ymmb2w (ymm1_0l, ymm1_0h, ymm1_1l, ymm1_1h, ymm1_2l, ymm1_2h, ymm1_3l, ymm1_3h,
             ymm1_4l, ymm1_4h, ymm1_5l, ymm1_5h, ymm1_6l, ymm1_6h, ymm1_7l, ymm1_7h,
             ymm1_8l, ymm1_8h, ymm1_9l, ymm1_9h, ymm1_al, ymm1_ah, ymm1_bl, ymm1_bh,
             ymm1_cl, ymm1_ch, ymm1_dl, ymm1_dh, ymm1_el, ymm1_eh, ymm1_fl, ymm1_fh,
             ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
             ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f);
mov %ymm1 [ymm1_0, ymm1_1, ymm1_2, ymm1_3, ymm1_4, ymm1_5, ymm1_6, ymm1_7,
           ymm1_8, ymm1_9, ymm1_a, ymm1_b, ymm1_c, ymm1_d, ymm1_e, ymm1_f];
(* vpxor  %ymm1,%ymm0,%ymm0                        #! PC = 0x55555555f4af *)
xor %ymm0 %ymm1 %ymm0;
(* #! <- SP = 0x7fffffffc8b8 *)
#! 0x7fffffffc8b8 = 0x7fffffffc8b8;
(* #ret                                            #! PC = 0x55555555f4b3 *)
#ret                                            #! 0x55555555f4b3 = 0x55555555f4b3;
(* vpxor  -0x20(%rdi),%ymm0,%ymm0                  #! EA = L0x7fffffffc9a0; Value = 0xb2a78b3efc071377; PC = 0x55555555f509 *)
mov %tmp [L0x7fffffffc9a0, L0x7fffffffc9a2, L0x7fffffffc9a4, L0x7fffffffc9a6,
          L0x7fffffffc9a8, L0x7fffffffc9aa, L0x7fffffffc9ac, L0x7fffffffc9ae,
          L0x7fffffffc9b0, L0x7fffffffc9b2, L0x7fffffffc9b4, L0x7fffffffc9b6,
          L0x7fffffffc9b8, L0x7fffffffc9ba, L0x7fffffffc9bc, L0x7fffffffc9be];
xor %ymm0 %tmp %ymm0;
(* vmovdqa %ymm0,-0x20(%rdi)                       #! EA = L0x7fffffffc9a0; PC = 0x55555555f50e *)
mov [ymm0_0, ymm0_1, ymm0_2, ymm0_3, ymm0_4, ymm0_5, ymm0_6, ymm0_7,
     ymm0_8, ymm0_9, ymm0_a, ymm0_b, ymm0_c, ymm0_d, ymm0_e, ymm0_f] %ymm0;
mov L0x7fffffffc9a0 ymm0_0;
mov L0x7fffffffc9a2 ymm0_1;
mov L0x7fffffffc9a4 ymm0_2;
mov L0x7fffffffc9a6 ymm0_3;
mov L0x7fffffffc9a8 ymm0_4;
mov L0x7fffffffc9aa ymm0_5;
mov L0x7fffffffc9ac ymm0_6;
mov L0x7fffffffc9ae ymm0_7;
mov L0x7fffffffc9b0 ymm0_8;
mov L0x7fffffffc9b2 ymm0_9;
mov L0x7fffffffc9b4 ymm0_a;
mov L0x7fffffffc9b6 ymm0_b;
mov L0x7fffffffc9b8 ymm0_c;
mov L0x7fffffffc9ba ymm0_d;
mov L0x7fffffffc9bc ymm0_e;
mov L0x7fffffffc9be ymm0_f;
(* cmp    %rdx,%rsi                                #! PC = 0x55555555f513 *)
(* cmp rdx, rsi *)
nop;
(* #jne    0x55555555f4f0 <linearmap_8x8_accu_ymm.constprop.0+48>#! PC = 0x55555555f516 *)
#jne    0x55555555f4f0 <linearmap_8x8_accu_ymm.constprop.0+48>#! 0x55555555f516 = 0x55555555f516;
(* mov    -0x8(%rbp),%r10                          #! EA = L0x7fffffffc8c8; Value = 0x00007fffffffc900; PC = 0x55555555f518 *)
mov r10 L0x7fffffffc8c8;
(* leave                                           #! PC = 0x55555555f51c *)
(* leave *)
nop;
(* lea    -0x8(%r10),%rsp                          #! PC = 0x55555555f51d *)
(* lea -0x8(r10), rsp *)
nop;
(* #! <- SP = 0x7fffffffc8f8 *)
#! 0x7fffffffc8f8 = 0x7fffffffc8f8;
(* #ret                                            #! PC = 0x55555555f521 *)
#ret                                            #! 0x55555555f521 = 0x55555555f521;

(* ========== outputs ========== *)

spl r01 r00 L0x7fffffffc980 8;  spl r03 r02 L0x7fffffffc982 8;
spl r05 r04 L0x7fffffffc984 8;  spl r07 r06 L0x7fffffffc986 8;
spl r09 r08 L0x7fffffffc988 8;  spl r0b r0a L0x7fffffffc98a 8;
spl r0d r0c L0x7fffffffc98c 8;  spl r0f r0e L0x7fffffffc98e 8;
spl r11 r10 L0x7fffffffc990 8;  spl r13 r12 L0x7fffffffc992 8;
spl r15 r14 L0x7fffffffc994 8;  spl r17 r16 L0x7fffffffc996 8;
spl r19 r18 L0x7fffffffc998 8;  spl r1b r1a L0x7fffffffc99a 8;
spl r1d r1c L0x7fffffffc99c 8;  spl r1f r1e L0x7fffffffc99e 8;
spl r21 r20 L0x7fffffffc9a0 8;  spl r23 r22 L0x7fffffffc9a2 8;
spl r25 r24 L0x7fffffffc9a4 8;  spl r27 r26 L0x7fffffffc9a6 8;
spl r29 r28 L0x7fffffffc9a8 8;  spl r2b r2a L0x7fffffffc9aa 8;
spl r2d r2c L0x7fffffffc9ac 8;  spl r2f r2e L0x7fffffffc9ae 8;
spl r31 r30 L0x7fffffffc9b0 8;  spl r33 r32 L0x7fffffffc9b2 8;
spl r35 r34 L0x7fffffffc9b4 8;  spl r37 r36 L0x7fffffffc9b6 8;
spl r39 r38 L0x7fffffffc9b8 8;  spl r3b r3a L0x7fffffffc9ba 8;
spl r3d r3c L0x7fffffffc9bc 8;  spl r3f r3e L0x7fffffffc9be 8;


{
  true
  &&
  true
}

