proc KeccakP1600Round (
  uint64 RC_i,
  uint64 state00, uint64 state01, uint64 state02, uint64 state03, uint64 state04,
  uint64 state05, uint64 state06, uint64 state07, uint64 state08, uint64 state09,
  uint64 state10, uint64 state11, uint64 state12, uint64 state13, uint64 state14,
  uint64 state15, uint64 state16, uint64 state17, uint64 state18, uint64 state19,
  uint64 state20, uint64 state21, uint64 state22, uint64 state23, uint64 state24;
  uint64 output00, uint64 output01, uint64 output02, uint64 output03, uint64 output04,
  uint64 output05, uint64 output06, uint64 output07, uint64 output08, uint64 output09,
  uint64 output10, uint64 output11, uint64 output12, uint64 output13, uint64 output14,
  uint64 output15, uint64 output16, uint64 output17, uint64 output18, uint64 output19,
  uint64 output20, uint64 output21, uint64 output22, uint64 output23, uint64 output24) =
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



proc KeccakP1600_XKCP (uint64 state00, uint64 state01, uint64 state02, uint64 state03, uint64 state04,
           uint64 state05, uint64 state06, uint64 state07, uint64 state08, uint64 state09,
           uint64 state10, uint64 state11, uint64 state12, uint64 state13, uint64 state14,
           uint64 state15, uint64 state16, uint64 state17, uint64 state18, uint64 state19,
           uint64 state20, uint64 state21, uint64 state22, uint64 state23, uint64 state24;
           uint64 output00, uint64 output01, uint64 output02, uint64 output03, uint64 output04,
           uint64 output05, uint64 output06, uint64 output07, uint64 output08, uint64 output09,
           uint64 output10, uint64 output11, uint64 output12, uint64 output13, uint64 output14,
           uint64 output15, uint64 output16, uint64 output17, uint64 output18, uint64 output19,
           uint64 output20, uint64 output21, uint64 output22, uint64 output23, uint64 output24) =
{
  true
  &&
  true
}

(*
static const tKeccakLane KeccakRoundConstants[maxNrRounds] =
{
    0x0000000000000001,
    0x0000000000008082,
    0x800000000000808a,
    0x8000000080008000,
    0x000000000000808b,
    0x0000000080000001,
    0x8000000080008081,
    0x8000000000008009,
    0x000000000000008a,
    0x0000000000000088,
    0x0000000080008009,
    0x000000008000000a,
    0x000000008000808b,
    0x800000000000008b,
    0x8000000000008089,
    0x8000000000008003,
    0x8000000000008002,
    0x8000000000000080,
    0x000000000000800a,
    0x800000008000000a,
    0x8000000080008081,
    0x8000000000008080,
    0x0000000080000001,
    0x8000000080008008,
};
*)

mov KeccakRoundConstants_00 0x0000000000000001@uint64;
mov KeccakRoundConstants_01 0x0000000000008082@uint64;
mov KeccakRoundConstants_02 0x800000000000808a@uint64;
mov KeccakRoundConstants_03 0x8000000080008000@uint64;
mov KeccakRoundConstants_04 0x000000000000808b@uint64;
mov KeccakRoundConstants_05 0x0000000080000001@uint64;
mov KeccakRoundConstants_06 0x8000000080008081@uint64;
mov KeccakRoundConstants_07 0x8000000000008009@uint64;
mov KeccakRoundConstants_08 0x000000000000008a@uint64;
mov KeccakRoundConstants_09 0x0000000000000088@uint64;
mov KeccakRoundConstants_10 0x0000000080008009@uint64;
mov KeccakRoundConstants_11 0x000000008000000a@uint64;
mov KeccakRoundConstants_12 0x000000008000808b@uint64;
mov KeccakRoundConstants_13 0x800000000000008b@uint64;
mov KeccakRoundConstants_14 0x8000000000008089@uint64;
mov KeccakRoundConstants_15 0x8000000000008003@uint64;
mov KeccakRoundConstants_16 0x8000000000008002@uint64;
mov KeccakRoundConstants_17 0x8000000000000080@uint64;
mov KeccakRoundConstants_18 0x000000000000800a@uint64;
mov KeccakRoundConstants_19 0x800000008000000a@uint64;
mov KeccakRoundConstants_20 0x8000000080008081@uint64;
mov KeccakRoundConstants_21 0x8000000000008080@uint64;
mov KeccakRoundConstants_22 0x0000000080000001@uint64;
mov KeccakRoundConstants_23 0x8000000080008008@uint64;

(*   %0 = bitcast i8* %state to i64* *)
mov v0_00 state00;
mov v0_01 state01;
mov v0_02 state02;
mov v0_03 state03;
mov v0_04 state04;
mov v0_05 state05;
mov v0_06 state06;
mov v0_07 state07;
mov v0_08 state08;
mov v0_09 state09;
mov v0_10 state10;
mov v0_11 state11;
mov v0_12 state12;
mov v0_13 state13;
mov v0_14 state14;
mov v0_15 state15;
mov v0_16 state16;
mov v0_17 state17;
mov v0_18 state18;
mov v0_19 state19;
mov v0_20 state20;
mov v0_21 state21;
mov v0_22 state22;
mov v0_23 state23;
mov v0_24 state24;
(*   tail call void @KeccakP1600Round(i64* %0, i32 0) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_00,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 1) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_01,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 2) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_02,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 3) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_03,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 4) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_04,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 5) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_05,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 6) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_06,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 7) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_07,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 8) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_08,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 9) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_09,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 10) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_10,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 11) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_11,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 12) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_12,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 13) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_13,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 14) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_14,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 15) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_15,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 16) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_16,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 17) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_17,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 18) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_18,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 19) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_19,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 20) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_20,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 21) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_21,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 22) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_22,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   tail call void @KeccakP1600Round(i64* %0, i32 23) #4 *)
inline KeccakP1600Round (KeccakRoundConstants_23,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24,
                       v0_00, v0_01, v0_02, v0_03, v0_04, v0_05, v0_06, v0_07, v0_08, v0_09,
		       v0_10, v0_11, v0_12, v0_13, v0_14, v0_15, v0_16, v0_17, v0_18, v0_19,
		       v0_20, v0_21, v0_22, v0_23, v0_24);
(*   ret void *)

(* outputs *)

mov output00 v0_00;
mov output01 v0_01;
mov output02 v0_02;
mov output03 v0_03;
mov output04 v0_04;
mov output05 v0_05;
mov output06 v0_06;
mov output07 v0_07;
mov output08 v0_08;
mov output09 v0_09;
mov output10 v0_10;
mov output11 v0_11;
mov output12 v0_12;
mov output13 v0_13;
mov output14 v0_14;
mov output15 v0_15;
mov output16 v0_16;
mov output17 v0_17;
mov output18 v0_18;
mov output19 v0_19;
mov output20 v0_20;
mov output21 v0_21;
mov output22 v0_22;
mov output23 v0_23;
mov output24 v0_24;

{
  true
  &&
  true
}

proc main (* KeccakP1600times4_PermuteAll_24rounds *)
(uint64 a00, uint64 a01, uint64 a02, uint64 a03, uint64 a04,
 uint64 a10, uint64 a11, uint64 a12, uint64 a13, uint64 a14,
 uint64 a20, uint64 a21, uint64 a22, uint64 a23, uint64 a24,
 uint64 a30, uint64 a31, uint64 a32, uint64 a33, uint64 a34,
 uint64 a40, uint64 a41, uint64 a42, uint64 a43, uint64 a44,
 uint64 b00, uint64 b01, uint64 b02, uint64 b03, uint64 b04,
 uint64 b10, uint64 b11, uint64 b12, uint64 b13, uint64 b14,
 uint64 b20, uint64 b21, uint64 b22, uint64 b23, uint64 b24,
 uint64 b30, uint64 b31, uint64 b32, uint64 b33, uint64 b34,
 uint64 b40, uint64 b41, uint64 b42, uint64 b43, uint64 b44,
 uint64 c00, uint64 c01, uint64 c02, uint64 c03, uint64 c04,
 uint64 c10, uint64 c11, uint64 c12, uint64 c13, uint64 c14,
 uint64 c20, uint64 c21, uint64 c22, uint64 c23, uint64 c24,
 uint64 c30, uint64 c31, uint64 c32, uint64 c33, uint64 c34,
 uint64 c40, uint64 c41, uint64 c42, uint64 c43, uint64 c44,
 uint64 d00, uint64 d01, uint64 d02, uint64 d03, uint64 d04,
 uint64 d10, uint64 d11, uint64 d12, uint64 d13, uint64 d14,
 uint64 d20, uint64 d21, uint64 d22, uint64 d23, uint64 d24,
 uint64 d30, uint64 d31, uint64 d32, uint64 d33, uint64 d34,
 uint64 d40, uint64 d41, uint64 d42, uint64 d43, uint64 d44,
 uint64 A00, uint64 A01, uint64 A02, uint64 A03, uint64 A04,
 uint64 A10, uint64 A11, uint64 A12, uint64 A13, uint64 A14,
 uint64 A20, uint64 A21, uint64 A22, uint64 A23, uint64 A24,
 uint64 A30, uint64 A31, uint64 A32, uint64 A33, uint64 A34,
 uint64 A40, uint64 A41, uint64 A42, uint64 A43, uint64 A44,
 uint64 B00, uint64 B01, uint64 B02, uint64 B03, uint64 B04,
 uint64 B10, uint64 B11, uint64 B12, uint64 B13, uint64 B14,
 uint64 B20, uint64 B21, uint64 B22, uint64 B23, uint64 B24,
 uint64 B30, uint64 B31, uint64 B32, uint64 B33, uint64 B34,
 uint64 B40, uint64 B41, uint64 B42, uint64 B43, uint64 B44,
 uint64 C00, uint64 C01, uint64 C02, uint64 C03, uint64 C04,
 uint64 C10, uint64 C11, uint64 C12, uint64 C13, uint64 C14,
 uint64 C20, uint64 C21, uint64 C22, uint64 C23, uint64 C24,
 uint64 C30, uint64 C31, uint64 C32, uint64 C33, uint64 C34,
 uint64 C40, uint64 C41, uint64 C42, uint64 C43, uint64 C44,
 uint64 D00, uint64 D01, uint64 D02, uint64 D03, uint64 D04,
 uint64 D10, uint64 D11, uint64 D12, uint64 D13, uint64 D14,
 uint64 D20, uint64 D21, uint64 D22, uint64 D23, uint64 D24,
 uint64 D30, uint64 D31, uint64 D32, uint64 D33, uint64 D34,
 uint64 D40, uint64 D41, uint64 D42, uint64 D43, uint64 D44) =
{
  true
  &&
  true
}

inline KeccakP1600_XKCP (A00, A01, A02, A03, A04, A10, A11, A12, A13, A14,
                       A20, A21, A22, A23, A24, A30, A31, A32, A33, A34,
                       A40, A41, A42, A43, A44,
                       a00, a01, a02, a03, a04, a10, a11, a12, a13, a14,
                       a20, a21, a22, a23, a24, a30, a31, a32, a33, a34,
                       a40, a41, a42, a43, a44);

inline KeccakP1600_XKCP (B00, B01, B02, B03, B04, B10, B11, B12, B13, B14,
                       B20, B21, B22, B23, B24, B30, B31, B32, B33, B34,
                       B40, B41, B42, B43, B44,
                       b00, b01, b02, b03, b04, b10, b11, b12, b13, b14,
                       b20, b21, b22, b23, b24, b30, b31, b32, b33, b34,
                       b40, b41, b42, b43, b44);

inline KeccakP1600_XKCP (C00, C01, C02, C03, C04, C10, C11, C12, C13, C14,
                       C20, C21, C22, C23, C24, C30, C31, C32, C33, C34,
                       C40, C41, C42, C43, C44,
                       c00, c01, c02, c03, c04, c10, c11, c12, c13, c14,
                       c20, c21, c22, c23, c24, c30, c31, c32, c33, c34,
                       c40, c41, c42, c43, c44);

inline KeccakP1600_XKCP (D00, D01, D02, D03, D04, D10, D11, D12, D13, D14,
                       D20, D21, D22, D23, D24, D30, D31, D32, D33, D34,
                       D40, D41, D42, D43, D44,
                       d00, d01, d02, d03, d04, d10, d11, d12, d13, d14,
                       d20, d21, d22, d23, d24, d30, d31, d32, d33, d34,
                       d40, d41, d42, d43, d44);

{ true && true }
