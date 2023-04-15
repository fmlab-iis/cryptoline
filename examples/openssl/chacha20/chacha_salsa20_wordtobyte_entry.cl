proc main (uint32 A0, uint32 A1, uint32 A2, uint32 A3,
           uint32 A4, uint32 A5, uint32 A6, uint32 A7,
           uint32 A8, uint32 A9, uint32 Aa, uint32 Ab,
           uint32 Ac, uint32 Ad, uint32 Ae, uint32 Af) =
{
  true
  &&
  true
}


mov input_0 A0; mov input_4 A1; mov input_8 A2; mov input_12 A3;
mov input_16 A4; mov input_20 A5; mov input_24 A6; mov input_28 A7;
mov input_32 A8; mov input_36 A9; mov input_40 Aa; mov input_44 Ab;
mov input_48 Ac; mov input_52 Ad; mov input_56 Ae; mov input_60 Af;

mov x_0 input_0; mov x_4 input_4; mov x_8 input_8; mov x_12 input_12;
mov x_16 input_16; mov x_20 input_20; mov x_24 input_24; mov x_28 input_28;
mov x_32 input_32; mov x_36 input_36; mov x_40 input_40; mov x_44 input_44;
mov x_48 input_48; mov x_52 input_52; mov x_56 input_56; mov x_60 input_60;



(*   %input544 = bitcast i32* %input to i8* *)
(*   %x = alloca [16 x i32], align 4 *)
(*   %0 = bitcast [16 x i32]* %x to i8* *)
(*   call void @llvm.lifetime.start.p0i8(i64 64, i8* nonnull %0) #4 *)
(*   call void @llvm.memcpy.p0i8.p0i8.i32(i8* nonnull align 4 %0, i8* align 4 %input544, i32 64, i1 false) *)
(*   %arrayidx5 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 0 *)
(*   %arrayidx6 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 4 *)
(*   %arrayidx8 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 12 *)
(*   %arrayidx14 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 8 *)
(*   %arrayidx56 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 1 *)
(*   %arrayidx57 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 5 *)
(*   %arrayidx60 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 13 *)
(*   %arrayidx70 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 9 *)
(*   %arrayidx112 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 2 *)
(*   %arrayidx113 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 6 *)
(*   %arrayidx116 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 14 *)
(*   %arrayidx126 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 10 *)
(*   %arrayidx168 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 3 *)
(*   %arrayidx169 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 7 *)
(*   %arrayidx172 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 15 *)
(*   %arrayidx182 = getelementptr inbounds [16 x i32], [16 x i32]* %x, i32 0, i32 11 *)
(*   %arrayidx5.promoted = load i32, i32* %arrayidx5, align 4, !tbaa !4 *)
mov v_arrayidx5_promoted x_0;
(*   %arrayidx6.promoted = load i32, i32* %arrayidx6, align 4, !tbaa !4 *)
mov v_arrayidx6_promoted x_16;
(*   %arrayidx8.promoted = load i32, i32* %arrayidx8, align 4, !tbaa !4 *)
mov v_arrayidx8_promoted x_48;
(*   %arrayidx14.promoted = load i32, i32* %arrayidx14, align 4, !tbaa !4 *)
mov v_arrayidx14_promoted x_32;
(*   %arrayidx56.promoted = load i32, i32* %arrayidx56, align 4, !tbaa !4 *)
mov v_arrayidx56_promoted x_4;
(*   %arrayidx57.promoted = load i32, i32* %arrayidx57, align 4, !tbaa !4 *)
mov v_arrayidx57_promoted x_20;
(*   %arrayidx60.promoted = load i32, i32* %arrayidx60, align 4, !tbaa !4 *)
mov v_arrayidx60_promoted x_52;
(*   %arrayidx70.promoted = load i32, i32* %arrayidx70, align 4, !tbaa !4 *)
mov v_arrayidx70_promoted x_36;
(*   %arrayidx112.promoted = load i32, i32* %arrayidx112, align 4, !tbaa !4 *)
mov v_arrayidx112_promoted x_8;
(*   %arrayidx113.promoted = load i32, i32* %arrayidx113, align 4, !tbaa !4 *)
mov v_arrayidx113_promoted x_24;
(*   %arrayidx116.promoted = load i32, i32* %arrayidx116, align 4, !tbaa !4 *)
mov v_arrayidx116_promoted x_56;
(*   %arrayidx126.promoted = load i32, i32* %arrayidx126, align 4, !tbaa !4 *)
mov v_arrayidx126_promoted x_40;
(*   %arrayidx168.promoted = load i32, i32* %arrayidx168, align 4, !tbaa !4 *)
mov v_arrayidx168_promoted x_12;
(*   %arrayidx169.promoted = load i32, i32* %arrayidx169, align 4, !tbaa !4 *)
mov v_arrayidx169_promoted x_28;
(*   %arrayidx172.promoted = load i32, i32* %arrayidx172, align 4, !tbaa !4 *)
mov v_arrayidx172_promoted x_60;
(*   %arrayidx182.promoted = load i32, i32* %arrayidx182, align 4, !tbaa !4 *)
mov v_arrayidx182_promoted x_44;
(*   %add = add i32 %arrayidx6.promoted, %arrayidx5.promoted *)
adds discard_0 v_add v_arrayidx6_promoted v_arrayidx5_promoted;
(*   %xor = xor i32 %arrayidx8.promoted, %add *)
(* You may need to modify here *)
xor uint32 v_xor v_arrayidx8_promoted v_add;
(*   %shl = shl i32 %xor, 16 *)
shls discard_1 v_shl v_xor 16;
(*   %shr = lshr i32 %xor, 16 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v_xor 16;
(*   %or = or i32 %shl, %shr *)
(* You may need to modify here *)
or uint32 v_or v_shl v_shr;
(*   %add16 = add i32 %or, %arrayidx14.promoted *)
adds discard_2 v_add16 v_or v_arrayidx14_promoted;
(*   %xor20 = xor i32 %add16, %arrayidx6.promoted *)
(* You may need to modify here *)
xor uint32 v_xor20 v_add16 v_arrayidx6_promoted;
(*   %shl21 = shl i32 %xor20, 12 *)
shls discard_3 v_shl21 v_xor20 12;
(*   %shr25 = lshr i32 %xor20, 20 *)
(* You may need to modify here *)
split v_shr25 tmp_to_be_used v_xor20 20;
(*   %or26 = or i32 %shl21, %shr25 *)
(* You may need to modify here *)
or uint32 v_or26 v_shl21 v_shr25;
(*   %add30 = add i32 %or26, %add *)
adds discard_4 v_add30 v_or26 v_add;
(*   %xor34 = xor i32 %add30, %or *)
(* You may need to modify here *)
xor uint32 v_xor34 v_add30 v_or;
(*   %shl35 = shl i32 %xor34, 8 *)
shls discard_5 v_shl35 v_xor34 8;
(*   %shr39 = lshr i32 %xor34, 24 *)
(* You may need to modify here *)
split v_shr39 tmp_to_be_used v_xor34 24;
(*   %or40 = or i32 %shl35, %shr39 *)
(* You may need to modify here *)
or uint32 v_or40 v_shl35 v_shr39;
(*   %add44 = add i32 %or40, %add16 *)
adds discard_6 v_add44 v_or40 v_add16;
(*   %xor48 = xor i32 %add44, %or26 *)
(* You may need to modify here *)
xor uint32 v_xor48 v_add44 v_or26;
(*   %shl49 = shl i32 %xor48, 7 *)
shls discard_7 v_shl49 v_xor48 7;
(*   %shr53 = lshr i32 %xor48, 25 *)
(* You may need to modify here *)
split v_shr53 tmp_to_be_used v_xor48 25;
(*   %or54 = or i32 %shl49, %shr53 *)
(* You may need to modify here *)
or uint32 v_or54 v_shl49 v_shr53;
(*   %add58 = add i32 %arrayidx57.promoted, %arrayidx56.promoted *)
adds discard_8 v_add58 v_arrayidx57_promoted v_arrayidx56_promoted;
(*   %xor62 = xor i32 %arrayidx60.promoted, %add58 *)
(* You may need to modify here *)
xor uint32 v_xor62 v_arrayidx60_promoted v_add58;
(*   %shl63 = shl i32 %xor62, 16 *)
shls discard_9 v_shl63 v_xor62 16;
(*   %shr67 = lshr i32 %xor62, 16 *)
(* You may need to modify here *)
split v_shr67 tmp_to_be_used v_xor62 16;
(*   %or68 = or i32 %shl63, %shr67 *)
(* You may need to modify here *)
or uint32 v_or68 v_shl63 v_shr67;
(*   %add72 = add i32 %or68, %arrayidx70.promoted *)
adds discard_10 v_add72 v_or68 v_arrayidx70_promoted;
(*   %xor76 = xor i32 %add72, %arrayidx57.promoted *)
(* You may need to modify here *)
xor uint32 v_xor76 v_add72 v_arrayidx57_promoted;
(*   %shl77 = shl i32 %xor76, 12 *)
shls discard_11 v_shl77 v_xor76 12;
(*   %shr81 = lshr i32 %xor76, 20 *)
(* You may need to modify here *)
split v_shr81 tmp_to_be_used v_xor76 20;
(*   %or82 = or i32 %shl77, %shr81 *)
(* You may need to modify here *)
or uint32 v_or82 v_shl77 v_shr81;
(*   %add86 = add i32 %or82, %add58 *)
adds discard_12 v_add86 v_or82 v_add58;
(*   %xor90 = xor i32 %add86, %or68 *)
(* You may need to modify here *)
xor uint32 v_xor90 v_add86 v_or68;
(*   %shl91 = shl i32 %xor90, 8 *)
shls discard_13 v_shl91 v_xor90 8;
(*   %shr95 = lshr i32 %xor90, 24 *)
(* You may need to modify here *)
split v_shr95 tmp_to_be_used v_xor90 24;
(*   %or96 = or i32 %shl91, %shr95 *)
(* You may need to modify here *)
or uint32 v_or96 v_shl91 v_shr95;
(*   %add100 = add i32 %or96, %add72 *)
adds discard_14 v_add100 v_or96 v_add72;
(*   %xor104 = xor i32 %add100, %or82 *)
(* You may need to modify here *)
xor uint32 v_xor104 v_add100 v_or82;
(*   %shl105 = shl i32 %xor104, 7 *)
shls discard_15 v_shl105 v_xor104 7;
(*   %shr109 = lshr i32 %xor104, 25 *)
(* You may need to modify here *)
split v_shr109 tmp_to_be_used v_xor104 25;
(*   %or110 = or i32 %shl105, %shr109 *)
(* You may need to modify here *)
or uint32 v_or110 v_shl105 v_shr109;
(*   %add114 = add i32 %arrayidx113.promoted, %arrayidx112.promoted *)
adds discard_16 v_add114 v_arrayidx113_promoted v_arrayidx112_promoted;
(*   %xor118 = xor i32 %arrayidx116.promoted, %add114 *)
(* You may need to modify here *)
xor uint32 v_xor118 v_arrayidx116_promoted v_add114;
(*   %shl119 = shl i32 %xor118, 16 *)
shls discard_17 v_shl119 v_xor118 16;
(*   %shr123 = lshr i32 %xor118, 16 *)
(* You may need to modify here *)
split v_shr123 tmp_to_be_used v_xor118 16;
(*   %or124 = or i32 %shl119, %shr123 *)
(* You may need to modify here *)
or uint32 v_or124 v_shl119 v_shr123;
(*   %add128 = add i32 %or124, %arrayidx126.promoted *)
adds discard_18 v_add128 v_or124 v_arrayidx126_promoted;
(*   %xor132 = xor i32 %add128, %arrayidx113.promoted *)
(* You may need to modify here *)
xor uint32 v_xor132 v_add128 v_arrayidx113_promoted;
(*   %shl133 = shl i32 %xor132, 12 *)
shls discard_19 v_shl133 v_xor132 12;
(*   %shr137 = lshr i32 %xor132, 20 *)
(* You may need to modify here *)
split v_shr137 tmp_to_be_used v_xor132 20;
(*   %or138 = or i32 %shl133, %shr137 *)
(* You may need to modify here *)
or uint32 v_or138 v_shl133 v_shr137;
(*   %add142 = add i32 %or138, %add114 *)
adds discard_20 v_add142 v_or138 v_add114;
(*   %xor146 = xor i32 %add142, %or124 *)
(* You may need to modify here *)
xor uint32 v_xor146 v_add142 v_or124;
(*   %shl147 = shl i32 %xor146, 8 *)
shls discard_21 v_shl147 v_xor146 8;
(*   %shr151 = lshr i32 %xor146, 24 *)
(* You may need to modify here *)
split v_shr151 tmp_to_be_used v_xor146 24;
(*   %or152 = or i32 %shl147, %shr151 *)
(* You may need to modify here *)
or uint32 v_or152 v_shl147 v_shr151;
(*   %add156 = add i32 %or152, %add128 *)
adds discard_22 v_add156 v_or152 v_add128;
(*   %xor160 = xor i32 %add156, %or138 *)
(* You may need to modify here *)
xor uint32 v_xor160 v_add156 v_or138;
(*   %shl161 = shl i32 %xor160, 7 *)
shls discard_23 v_shl161 v_xor160 7;
(*   %shr165 = lshr i32 %xor160, 25 *)
(* You may need to modify here *)
split v_shr165 tmp_to_be_used v_xor160 25;
(*   %or166 = or i32 %shl161, %shr165 *)
(* You may need to modify here *)
or uint32 v_or166 v_shl161 v_shr165;
(*   %add170 = add i32 %arrayidx169.promoted, %arrayidx168.promoted *)
adds discard_24 v_add170 v_arrayidx169_promoted v_arrayidx168_promoted;
(*   %xor174 = xor i32 %arrayidx172.promoted, %add170 *)
(* You may need to modify here *)
xor uint32 v_xor174 v_arrayidx172_promoted v_add170;
(*   %shl175 = shl i32 %xor174, 16 *)
shls discard_25 v_shl175 v_xor174 16;
(*   %shr179 = lshr i32 %xor174, 16 *)
(* You may need to modify here *)
split v_shr179 tmp_to_be_used v_xor174 16;
(*   %or180 = or i32 %shl175, %shr179 *)
(* You may need to modify here *)
or uint32 v_or180 v_shl175 v_shr179;
(*   %add184 = add i32 %or180, %arrayidx182.promoted *)
adds discard_26 v_add184 v_or180 v_arrayidx182_promoted;
(*   %xor188 = xor i32 %add184, %arrayidx169.promoted *)
(* You may need to modify here *)
xor uint32 v_xor188 v_add184 v_arrayidx169_promoted;
(*   %shl189 = shl i32 %xor188, 12 *)
shls discard_27 v_shl189 v_xor188 12;
(*   %shr193 = lshr i32 %xor188, 20 *)
(* You may need to modify here *)
split v_shr193 tmp_to_be_used v_xor188 20;
(*   %or194 = or i32 %shl189, %shr193 *)
(* You may need to modify here *)
or uint32 v_or194 v_shl189 v_shr193;
(*   %add198 = add i32 %or194, %add170 *)
adds discard_28 v_add198 v_or194 v_add170;
(*   %xor202 = xor i32 %add198, %or180 *)
(* You may need to modify here *)
xor uint32 v_xor202 v_add198 v_or180;
(*   %shl203 = shl i32 %xor202, 8 *)
shls discard_29 v_shl203 v_xor202 8;
(*   %shr207 = lshr i32 %xor202, 24 *)
(* You may need to modify here *)
split v_shr207 tmp_to_be_used v_xor202 24;
(*   %or208 = or i32 %shl203, %shr207 *)
(* You may need to modify here *)
or uint32 v_or208 v_shl203 v_shr207;
(*   %add212 = add i32 %or208, %add184 *)
adds discard_30 v_add212 v_or208 v_add184;
(*   %xor216 = xor i32 %add212, %or194 *)
(* You may need to modify here *)
xor uint32 v_xor216 v_add212 v_or194;
(*   %shl217 = shl i32 %xor216, 7 *)
shls discard_31 v_shl217 v_xor216 7;
(*   %shr221 = lshr i32 %xor216, 25 *)
(* You may need to modify here *)
split v_shr221 tmp_to_be_used v_xor216 25;
(*   %or222 = or i32 %shl217, %shr221 *)
(* You may need to modify here *)
or uint32 v_or222 v_shl217 v_shr221;
(*   %add226 = add i32 %or110, %add30 *)
adds discard_32 v_add226 v_or110 v_add30;
(*   %xor230 = xor i32 %or208, %add226 *)
(* You may need to modify here *)
xor uint32 v_xor230 v_or208 v_add226;
(*   %shl231 = shl i32 %xor230, 16 *)
shls discard_33 v_shl231 v_xor230 16;
(*   %shr235 = lshr i32 %xor230, 16 *)
(* You may need to modify here *)
split v_shr235 tmp_to_be_used v_xor230 16;
(*   %or236 = or i32 %shl231, %shr235 *)
(* You may need to modify here *)
or uint32 v_or236 v_shl231 v_shr235;
(*   %add240 = add i32 %or236, %add156 *)
adds discard_34 v_add240 v_or236 v_add156;
(*   %xor244 = xor i32 %add240, %or110 *)
(* You may need to modify here *)
xor uint32 v_xor244 v_add240 v_or110;
(*   %shl245 = shl i32 %xor244, 12 *)
shls discard_35 v_shl245 v_xor244 12;
(*   %shr249 = lshr i32 %xor244, 20 *)
(* You may need to modify here *)
split v_shr249 tmp_to_be_used v_xor244 20;
(*   %or250 = or i32 %shl245, %shr249 *)
(* You may need to modify here *)
or uint32 v_or250 v_shl245 v_shr249;
(*   %add254 = add i32 %or250, %add226 *)
adds discard_36 v_add254 v_or250 v_add226;
(*   %xor258 = xor i32 %add254, %or236 *)
(* You may need to modify here *)
xor uint32 v_xor258 v_add254 v_or236;
(*   %shl259 = shl i32 %xor258, 8 *)
shls discard_37 v_shl259 v_xor258 8;
(*   %shr263 = lshr i32 %xor258, 24 *)
(* You may need to modify here *)
split v_shr263 tmp_to_be_used v_xor258 24;
(*   %or264 = or i32 %shl259, %shr263 *)
(* You may need to modify here *)
or uint32 v_or264 v_shl259 v_shr263;
(*   %add268 = add i32 %or264, %add240 *)
adds discard_38 v_add268 v_or264 v_add240;
(*   %xor272 = xor i32 %add268, %or250 *)
(* You may need to modify here *)
xor uint32 v_xor272 v_add268 v_or250;
(*   %shl273 = shl i32 %xor272, 7 *)
shls discard_39 v_shl273 v_xor272 7;
(*   %shr277 = lshr i32 %xor272, 25 *)
(* You may need to modify here *)
split v_shr277 tmp_to_be_used v_xor272 25;
(*   %or278 = or i32 %shl273, %shr277 *)
(* You may need to modify here *)
or uint32 v_or278 v_shl273 v_shr277;
(*   %add282 = add i32 %or166, %add86 *)
adds discard_40 v_add282 v_or166 v_add86;
(*   %xor286 = xor i32 %add282, %or40 *)
(* You may need to modify here *)
xor uint32 v_xor286 v_add282 v_or40;
(*   %shl287 = shl i32 %xor286, 16 *)
shls discard_41 v_shl287 v_xor286 16;
(*   %shr291 = lshr i32 %xor286, 16 *)
(* You may need to modify here *)
split v_shr291 tmp_to_be_used v_xor286 16;
(*   %or292 = or i32 %shl287, %shr291 *)
(* You may need to modify here *)
or uint32 v_or292 v_shl287 v_shr291;
(*   %add296 = add i32 %add212, %or292 *)
adds discard_42 v_add296 v_add212 v_or292;
(*   %xor300 = xor i32 %add296, %or166 *)
(* You may need to modify here *)
xor uint32 v_xor300 v_add296 v_or166;
(*   %shl301 = shl i32 %xor300, 12 *)
shls discard_43 v_shl301 v_xor300 12;
(*   %shr305 = lshr i32 %xor300, 20 *)
(* You may need to modify here *)
split v_shr305 tmp_to_be_used v_xor300 20;
(*   %or306 = or i32 %shl301, %shr305 *)
(* You may need to modify here *)
or uint32 v_or306 v_shl301 v_shr305;
(*   %add310 = add i32 %or306, %add282 *)
adds discard_44 v_add310 v_or306 v_add282;
(*   %xor314 = xor i32 %add310, %or292 *)
(* You may need to modify here *)
xor uint32 v_xor314 v_add310 v_or292;
(*   %shl315 = shl i32 %xor314, 8 *)
shls discard_45 v_shl315 v_xor314 8;
(*   %shr319 = lshr i32 %xor314, 24 *)
(* You may need to modify here *)
split v_shr319 tmp_to_be_used v_xor314 24;
(*   %or320 = or i32 %shl315, %shr319 *)
(* You may need to modify here *)
or uint32 v_or320 v_shl315 v_shr319;
(*   %add324 = add i32 %or320, %add296 *)
adds discard_46 v_add324 v_or320 v_add296;
(*   %xor328 = xor i32 %add324, %or306 *)
(* You may need to modify here *)
xor uint32 v_xor328 v_add324 v_or306;
(*   %shl329 = shl i32 %xor328, 7 *)
shls discard_47 v_shl329 v_xor328 7;
(*   %shr333 = lshr i32 %xor328, 25 *)
(* You may need to modify here *)
split v_shr333 tmp_to_be_used v_xor328 25;
(*   %or334 = or i32 %shl329, %shr333 *)
(* You may need to modify here *)
or uint32 v_or334 v_shl329 v_shr333;
(*   %add338 = add i32 %or222, %add142 *)
adds discard_48 v_add338 v_or222 v_add142;
(*   %xor342 = xor i32 %add338, %or96 *)
(* You may need to modify here *)
xor uint32 v_xor342 v_add338 v_or96;
(*   %shl343 = shl i32 %xor342, 16 *)
shls discard_49 v_shl343 v_xor342 16;
(*   %shr347 = lshr i32 %xor342, 16 *)
(* You may need to modify here *)
split v_shr347 tmp_to_be_used v_xor342 16;
(*   %or348 = or i32 %shl343, %shr347 *)
(* You may need to modify here *)
or uint32 v_or348 v_shl343 v_shr347;
(*   %add352 = add i32 %or348, %add44 *)
adds discard_50 v_add352 v_or348 v_add44;
(*   %xor356 = xor i32 %add352, %or222 *)
(* You may need to modify here *)
xor uint32 v_xor356 v_add352 v_or222;
(*   %shl357 = shl i32 %xor356, 12 *)
shls discard_51 v_shl357 v_xor356 12;
(*   %shr361 = lshr i32 %xor356, 20 *)
(* You may need to modify here *)
split v_shr361 tmp_to_be_used v_xor356 20;
(*   %or362 = or i32 %shl357, %shr361 *)
(* You may need to modify here *)
or uint32 v_or362 v_shl357 v_shr361;
(*   %add366 = add i32 %or362, %add338 *)
adds discard_52 v_add366 v_or362 v_add338;
(*   %xor370 = xor i32 %add366, %or348 *)
(* You may need to modify here *)
xor uint32 v_xor370 v_add366 v_or348;
(*   %shl371 = shl i32 %xor370, 8 *)
shls discard_53 v_shl371 v_xor370 8;
(*   %shr375 = lshr i32 %xor370, 24 *)
(* You may need to modify here *)
split v_shr375 tmp_to_be_used v_xor370 24;
(*   %or376 = or i32 %shl371, %shr375 *)
(* You may need to modify here *)
or uint32 v_or376 v_shl371 v_shr375;
(*   %add380 = add i32 %or376, %add352 *)
adds discard_54 v_add380 v_or376 v_add352;
(*   %xor384 = xor i32 %add380, %or362 *)
(* You may need to modify here *)
xor uint32 v_xor384 v_add380 v_or362;
(*   %shl385 = shl i32 %xor384, 7 *)
shls discard_55 v_shl385 v_xor384 7;
(*   %shr389 = lshr i32 %xor384, 25 *)
(* You may need to modify here *)
split v_shr389 tmp_to_be_used v_xor384 25;
(*   %or390 = or i32 %shl385, %shr389 *)
(* You may need to modify here *)
or uint32 v_or390 v_shl385 v_shr389;
(*   %add394 = add i32 %add198, %or54 *)
adds discard_56 v_add394 v_add198 v_or54;
(*   %xor398 = xor i32 %add394, %or152 *)
(* You may need to modify here *)
xor uint32 v_xor398 v_add394 v_or152;
(*   %shl399 = shl i32 %xor398, 16 *)
shls discard_57 v_shl399 v_xor398 16;
(*   %shr403 = lshr i32 %xor398, 16 *)
(* You may need to modify here *)
split v_shr403 tmp_to_be_used v_xor398 16;
(*   %or404 = or i32 %shl399, %shr403 *)
(* You may need to modify here *)
or uint32 v_or404 v_shl399 v_shr403;
(*   %add408 = add i32 %or404, %add100 *)
adds discard_58 v_add408 v_or404 v_add100;
(*   %xor412 = xor i32 %add408, %or54 *)
(* You may need to modify here *)
xor uint32 v_xor412 v_add408 v_or54;
(*   %shl413 = shl i32 %xor412, 12 *)
shls discard_59 v_shl413 v_xor412 12;
(*   %shr417 = lshr i32 %xor412, 20 *)
(* You may need to modify here *)
split v_shr417 tmp_to_be_used v_xor412 20;
(*   %or418 = or i32 %shl413, %shr417 *)
(* You may need to modify here *)
or uint32 v_or418 v_shl413 v_shr417;
(*   %add422 = add i32 %or418, %add394 *)
adds discard_60 v_add422 v_or418 v_add394;
(*   %xor426 = xor i32 %add422, %or404 *)
(* You may need to modify here *)
xor uint32 v_xor426 v_add422 v_or404;
(*   %shl427 = shl i32 %xor426, 8 *)
shls discard_61 v_shl427 v_xor426 8;
(*   %shr431 = lshr i32 %xor426, 24 *)
(* You may need to modify here *)
split v_shr431 tmp_to_be_used v_xor426 24;
(*   %or432 = or i32 %shl427, %shr431 *)
(* You may need to modify here *)
or uint32 v_or432 v_shl427 v_shr431;
(*   %add436 = add i32 %or432, %add408 *)
adds discard_62 v_add436 v_or432 v_add408;
(*   %xor440 = xor i32 %add436, %or418 *)
(* You may need to modify here *)
xor uint32 v_xor440 v_add436 v_or418;
(*   %shl441 = shl i32 %xor440, 7 *)
shls discard_63 v_shl441 v_xor440 7;
(*   %shr445 = lshr i32 %xor440, 25 *)
(* You may need to modify here *)
split v_shr445 tmp_to_be_used v_xor440 25;
(*   %or446 = or i32 %shl441, %shr445 *)
(* You may need to modify here *)
or uint32 v_or446 v_shl441 v_shr445;
(*   %add.1 = add i32 %or446, %add254 *)
adds discard_64 v_add_1 v_or446 v_add254;
(*   %xor.1 = xor i32 %or320, %add.1 *)
(* You may need to modify here *)
xor uint32 v_xor_1 v_or320 v_add_1;
(*   %shl.1 = shl i32 %xor.1, 16 *)
shls discard_65 v_shl_1 v_xor_1 16;
(*   %shr.1 = lshr i32 %xor.1, 16 *)
(* You may need to modify here *)
split v_shr_1 tmp_to_be_used v_xor_1 16;
(*   %or.1 = or i32 %shl.1, %shr.1 *)
(* You may need to modify here *)
or uint32 v_or_1 v_shl_1 v_shr_1;
(*   %add16.1 = add i32 %or.1, %add380 *)
adds discard_66 v_add16_1 v_or_1 v_add380;
(*   %xor20.1 = xor i32 %add16.1, %or446 *)
(* You may need to modify here *)
xor uint32 v_xor20_1 v_add16_1 v_or446;
(*   %shl21.1 = shl i32 %xor20.1, 12 *)
shls discard_67 v_shl21_1 v_xor20_1 12;
(*   %shr25.1 = lshr i32 %xor20.1, 20 *)
(* You may need to modify here *)
split v_shr25_1 tmp_to_be_used v_xor20_1 20;
(*   %or26.1 = or i32 %shl21.1, %shr25.1 *)
(* You may need to modify here *)
or uint32 v_or26_1 v_shl21_1 v_shr25_1;
(*   %add30.1 = add i32 %or26.1, %add.1 *)
adds discard_68 v_add30_1 v_or26_1 v_add_1;
(*   %xor34.1 = xor i32 %add30.1, %or.1 *)
(* You may need to modify here *)
xor uint32 v_xor34_1 v_add30_1 v_or_1;
(*   %shl35.1 = shl i32 %xor34.1, 8 *)
shls discard_69 v_shl35_1 v_xor34_1 8;
(*   %shr39.1 = lshr i32 %xor34.1, 24 *)
(* You may need to modify here *)
split v_shr39_1 tmp_to_be_used v_xor34_1 24;
(*   %or40.1 = or i32 %shl35.1, %shr39.1 *)
(* You may need to modify here *)
or uint32 v_or40_1 v_shl35_1 v_shr39_1;
(*   %add44.1 = add i32 %or40.1, %add16.1 *)
adds discard_70 v_add44_1 v_or40_1 v_add16_1;
(*   %xor48.1 = xor i32 %add44.1, %or26.1 *)
(* You may need to modify here *)
xor uint32 v_xor48_1 v_add44_1 v_or26_1;
(*   %shl49.1 = shl i32 %xor48.1, 7 *)
shls discard_71 v_shl49_1 v_xor48_1 7;
(*   %shr53.1 = lshr i32 %xor48.1, 25 *)
(* You may need to modify here *)
split v_shr53_1 tmp_to_be_used v_xor48_1 25;
(*   %or54.1 = or i32 %shl49.1, %shr53.1 *)
(* You may need to modify here *)
or uint32 v_or54_1 v_shl49_1 v_shr53_1;
(*   %add58.1 = add i32 %or278, %add310 *)
adds discard_72 v_add58_1 v_or278 v_add310;
(*   %xor62.1 = xor i32 %or376, %add58.1 *)
(* You may need to modify here *)
xor uint32 v_xor62_1 v_or376 v_add58_1;
(*   %shl63.1 = shl i32 %xor62.1, 16 *)
shls discard_73 v_shl63_1 v_xor62_1 16;
(*   %shr67.1 = lshr i32 %xor62.1, 16 *)
(* You may need to modify here *)
split v_shr67_1 tmp_to_be_used v_xor62_1 16;
(*   %or68.1 = or i32 %shl63.1, %shr67.1 *)
(* You may need to modify here *)
or uint32 v_or68_1 v_shl63_1 v_shr67_1;
(*   %add72.1 = add i32 %or68.1, %add436 *)
adds discard_74 v_add72_1 v_or68_1 v_add436;
(*   %xor76.1 = xor i32 %add72.1, %or278 *)
(* You may need to modify here *)
xor uint32 v_xor76_1 v_add72_1 v_or278;
(*   %shl77.1 = shl i32 %xor76.1, 12 *)
shls discard_75 v_shl77_1 v_xor76_1 12;
(*   %shr81.1 = lshr i32 %xor76.1, 20 *)
(* You may need to modify here *)
split v_shr81_1 tmp_to_be_used v_xor76_1 20;
(*   %or82.1 = or i32 %shl77.1, %shr81.1 *)
(* You may need to modify here *)
or uint32 v_or82_1 v_shl77_1 v_shr81_1;
(*   %add86.1 = add i32 %or82.1, %add58.1 *)
adds discard_76 v_add86_1 v_or82_1 v_add58_1;
(*   %xor90.1 = xor i32 %add86.1, %or68.1 *)
(* You may need to modify here *)
xor uint32 v_xor90_1 v_add86_1 v_or68_1;
(*   %shl91.1 = shl i32 %xor90.1, 8 *)
shls discard_77 v_shl91_1 v_xor90_1 8;
(*   %shr95.1 = lshr i32 %xor90.1, 24 *)
(* You may need to modify here *)
split v_shr95_1 tmp_to_be_used v_xor90_1 24;
(*   %or96.1 = or i32 %shl91.1, %shr95.1 *)
(* You may need to modify here *)
or uint32 v_or96_1 v_shl91_1 v_shr95_1;
(*   %add100.1 = add i32 %or96.1, %add72.1 *)
adds discard_78 v_add100_1 v_or96_1 v_add72_1;
(*   %xor104.1 = xor i32 %add100.1, %or82.1 *)
(* You may need to modify here *)
xor uint32 v_xor104_1 v_add100_1 v_or82_1;
(*   %shl105.1 = shl i32 %xor104.1, 7 *)
shls discard_79 v_shl105_1 v_xor104_1 7;
(*   %shr109.1 = lshr i32 %xor104.1, 25 *)
(* You may need to modify here *)
split v_shr109_1 tmp_to_be_used v_xor104_1 25;
(*   %or110.1 = or i32 %shl105.1, %shr109.1 *)
(* You may need to modify here *)
or uint32 v_or110_1 v_shl105_1 v_shr109_1;
(*   %add114.1 = add i32 %or334, %add366 *)
adds discard_80 v_add114_1 v_or334 v_add366;
(*   %xor118.1 = xor i32 %or432, %add114.1 *)
(* You may need to modify here *)
xor uint32 v_xor118_1 v_or432 v_add114_1;
(*   %shl119.1 = shl i32 %xor118.1, 16 *)
shls discard_81 v_shl119_1 v_xor118_1 16;
(*   %shr123.1 = lshr i32 %xor118.1, 16 *)
(* You may need to modify here *)
split v_shr123_1 tmp_to_be_used v_xor118_1 16;
(*   %or124.1 = or i32 %shl119.1, %shr123.1 *)
(* You may need to modify here *)
or uint32 v_or124_1 v_shl119_1 v_shr123_1;
(*   %add128.1 = add i32 %or124.1, %add268 *)
adds discard_82 v_add128_1 v_or124_1 v_add268;
(*   %xor132.1 = xor i32 %add128.1, %or334 *)
(* You may need to modify here *)
xor uint32 v_xor132_1 v_add128_1 v_or334;
(*   %shl133.1 = shl i32 %xor132.1, 12 *)
shls discard_83 v_shl133_1 v_xor132_1 12;
(*   %shr137.1 = lshr i32 %xor132.1, 20 *)
(* You may need to modify here *)
split v_shr137_1 tmp_to_be_used v_xor132_1 20;
(*   %or138.1 = or i32 %shl133.1, %shr137.1 *)
(* You may need to modify here *)
or uint32 v_or138_1 v_shl133_1 v_shr137_1;
(*   %add142.1 = add i32 %or138.1, %add114.1 *)
adds discard_84 v_add142_1 v_or138_1 v_add114_1;
(*   %xor146.1 = xor i32 %add142.1, %or124.1 *)
(* You may need to modify here *)
xor uint32 v_xor146_1 v_add142_1 v_or124_1;
(*   %shl147.1 = shl i32 %xor146.1, 8 *)
shls discard_85 v_shl147_1 v_xor146_1 8;
(*   %shr151.1 = lshr i32 %xor146.1, 24 *)
(* You may need to modify here *)
split v_shr151_1 tmp_to_be_used v_xor146_1 24;
(*   %or152.1 = or i32 %shl147.1, %shr151.1 *)
(* You may need to modify here *)
or uint32 v_or152_1 v_shl147_1 v_shr151_1;
(*   %add156.1 = add i32 %or152.1, %add128.1 *)
adds discard_86 v_add156_1 v_or152_1 v_add128_1;
(*   %xor160.1 = xor i32 %add156.1, %or138.1 *)
(* You may need to modify here *)
xor uint32 v_xor160_1 v_add156_1 v_or138_1;
(*   %shl161.1 = shl i32 %xor160.1, 7 *)
shls discard_87 v_shl161_1 v_xor160_1 7;
(*   %shr165.1 = lshr i32 %xor160.1, 25 *)
(* You may need to modify here *)
split v_shr165_1 tmp_to_be_used v_xor160_1 25;
(*   %or166.1 = or i32 %shl161.1, %shr165.1 *)
(* You may need to modify here *)
or uint32 v_or166_1 v_shl161_1 v_shr165_1;
(*   %add170.1 = add i32 %or390, %add422 *)
adds discard_88 v_add170_1 v_or390 v_add422;
(*   %xor174.1 = xor i32 %or264, %add170.1 *)
(* You may need to modify here *)
xor uint32 v_xor174_1 v_or264 v_add170_1;
(*   %shl175.1 = shl i32 %xor174.1, 16 *)
shls discard_89 v_shl175_1 v_xor174_1 16;
(*   %shr179.1 = lshr i32 %xor174.1, 16 *)
(* You may need to modify here *)
split v_shr179_1 tmp_to_be_used v_xor174_1 16;
(*   %or180.1 = or i32 %shl175.1, %shr179.1 *)
(* You may need to modify here *)
or uint32 v_or180_1 v_shl175_1 v_shr179_1;
(*   %add184.1 = add i32 %or180.1, %add324 *)
adds discard_90 v_add184_1 v_or180_1 v_add324;
(*   %xor188.1 = xor i32 %add184.1, %or390 *)
(* You may need to modify here *)
xor uint32 v_xor188_1 v_add184_1 v_or390;
(*   %shl189.1 = shl i32 %xor188.1, 12 *)
shls discard_91 v_shl189_1 v_xor188_1 12;
(*   %shr193.1 = lshr i32 %xor188.1, 20 *)
(* You may need to modify here *)
split v_shr193_1 tmp_to_be_used v_xor188_1 20;
(*   %or194.1 = or i32 %shl189.1, %shr193.1 *)
(* You may need to modify here *)
or uint32 v_or194_1 v_shl189_1 v_shr193_1;
(*   %add198.1 = add i32 %or194.1, %add170.1 *)
adds discard_92 v_add198_1 v_or194_1 v_add170_1;
(*   %xor202.1 = xor i32 %add198.1, %or180.1 *)
(* You may need to modify here *)
xor uint32 v_xor202_1 v_add198_1 v_or180_1;
(*   %shl203.1 = shl i32 %xor202.1, 8 *)
shls discard_93 v_shl203_1 v_xor202_1 8;
(*   %shr207.1 = lshr i32 %xor202.1, 24 *)
(* You may need to modify here *)
split v_shr207_1 tmp_to_be_used v_xor202_1 24;
(*   %or208.1 = or i32 %shl203.1, %shr207.1 *)
(* You may need to modify here *)
or uint32 v_or208_1 v_shl203_1 v_shr207_1;
(*   %add212.1 = add i32 %or208.1, %add184.1 *)
adds discard_94 v_add212_1 v_or208_1 v_add184_1;
(*   %xor216.1 = xor i32 %add212.1, %or194.1 *)
(* You may need to modify here *)
xor uint32 v_xor216_1 v_add212_1 v_or194_1;
(*   %shl217.1 = shl i32 %xor216.1, 7 *)
shls discard_95 v_shl217_1 v_xor216_1 7;
(*   %shr221.1 = lshr i32 %xor216.1, 25 *)
(* You may need to modify here *)
split v_shr221_1 tmp_to_be_used v_xor216_1 25;
(*   %or222.1 = or i32 %shl217.1, %shr221.1 *)
(* You may need to modify here *)
or uint32 v_or222_1 v_shl217_1 v_shr221_1;
(*   %add226.1 = add i32 %or110.1, %add30.1 *)
adds discard_96 v_add226_1 v_or110_1 v_add30_1;
(*   %xor230.1 = xor i32 %or208.1, %add226.1 *)
(* You may need to modify here *)
xor uint32 v_xor230_1 v_or208_1 v_add226_1;
(*   %shl231.1 = shl i32 %xor230.1, 16 *)
shls discard_97 v_shl231_1 v_xor230_1 16;
(*   %shr235.1 = lshr i32 %xor230.1, 16 *)
(* You may need to modify here *)
split v_shr235_1 tmp_to_be_used v_xor230_1 16;
(*   %or236.1 = or i32 %shl231.1, %shr235.1 *)
(* You may need to modify here *)
or uint32 v_or236_1 v_shl231_1 v_shr235_1;
(*   %add240.1 = add i32 %or236.1, %add156.1 *)
adds discard_98 v_add240_1 v_or236_1 v_add156_1;
(*   %xor244.1 = xor i32 %add240.1, %or110.1 *)
(* You may need to modify here *)
xor uint32 v_xor244_1 v_add240_1 v_or110_1;
(*   %shl245.1 = shl i32 %xor244.1, 12 *)
shls discard_99 v_shl245_1 v_xor244_1 12;
(*   %shr249.1 = lshr i32 %xor244.1, 20 *)
(* You may need to modify here *)
split v_shr249_1 tmp_to_be_used v_xor244_1 20;
(*   %or250.1 = or i32 %shl245.1, %shr249.1 *)
(* You may need to modify here *)
or uint32 v_or250_1 v_shl245_1 v_shr249_1;
(*   %add254.1 = add i32 %or250.1, %add226.1 *)
adds discard_100 v_add254_1 v_or250_1 v_add226_1;
(*   %xor258.1 = xor i32 %add254.1, %or236.1 *)
(* You may need to modify here *)
xor uint32 v_xor258_1 v_add254_1 v_or236_1;
(*   %shl259.1 = shl i32 %xor258.1, 8 *)
shls discard_101 v_shl259_1 v_xor258_1 8;
(*   %shr263.1 = lshr i32 %xor258.1, 24 *)
(* You may need to modify here *)
split v_shr263_1 tmp_to_be_used v_xor258_1 24;
(*   %or264.1 = or i32 %shl259.1, %shr263.1 *)
(* You may need to modify here *)
or uint32 v_or264_1 v_shl259_1 v_shr263_1;
(*   %add268.1 = add i32 %or264.1, %add240.1 *)
adds discard_102 v_add268_1 v_or264_1 v_add240_1;
(*   %xor272.1 = xor i32 %add268.1, %or250.1 *)
(* You may need to modify here *)
xor uint32 v_xor272_1 v_add268_1 v_or250_1;
(*   %shl273.1 = shl i32 %xor272.1, 7 *)
shls discard_103 v_shl273_1 v_xor272_1 7;
(*   %shr277.1 = lshr i32 %xor272.1, 25 *)
(* You may need to modify here *)
split v_shr277_1 tmp_to_be_used v_xor272_1 25;
(*   %or278.1 = or i32 %shl273.1, %shr277.1 *)
(* You may need to modify here *)
or uint32 v_or278_1 v_shl273_1 v_shr277_1;
(*   %add282.1 = add i32 %or166.1, %add86.1 *)
adds discard_104 v_add282_1 v_or166_1 v_add86_1;
(*   %xor286.1 = xor i32 %add282.1, %or40.1 *)
(* You may need to modify here *)
xor uint32 v_xor286_1 v_add282_1 v_or40_1;
(*   %shl287.1 = shl i32 %xor286.1, 16 *)
shls discard_105 v_shl287_1 v_xor286_1 16;
(*   %shr291.1 = lshr i32 %xor286.1, 16 *)
(* You may need to modify here *)
split v_shr291_1 tmp_to_be_used v_xor286_1 16;
(*   %or292.1 = or i32 %shl287.1, %shr291.1 *)
(* You may need to modify here *)
or uint32 v_or292_1 v_shl287_1 v_shr291_1;
(*   %add296.1 = add i32 %add212.1, %or292.1 *)
adds discard_106 v_add296_1 v_add212_1 v_or292_1;
(*   %xor300.1 = xor i32 %add296.1, %or166.1 *)
(* You may need to modify here *)
xor uint32 v_xor300_1 v_add296_1 v_or166_1;
(*   %shl301.1 = shl i32 %xor300.1, 12 *)
shls discard_107 v_shl301_1 v_xor300_1 12;
(*   %shr305.1 = lshr i32 %xor300.1, 20 *)
(* You may need to modify here *)
split v_shr305_1 tmp_to_be_used v_xor300_1 20;
(*   %or306.1 = or i32 %shl301.1, %shr305.1 *)
(* You may need to modify here *)
or uint32 v_or306_1 v_shl301_1 v_shr305_1;
(*   %add310.1 = add i32 %or306.1, %add282.1 *)
adds discard_108 v_add310_1 v_or306_1 v_add282_1;
(*   %xor314.1 = xor i32 %add310.1, %or292.1 *)
(* You may need to modify here *)
xor uint32 v_xor314_1 v_add310_1 v_or292_1;
(*   %shl315.1 = shl i32 %xor314.1, 8 *)
shls discard_109 v_shl315_1 v_xor314_1 8;
(*   %shr319.1 = lshr i32 %xor314.1, 24 *)
(* You may need to modify here *)
split v_shr319_1 tmp_to_be_used v_xor314_1 24;
(*   %or320.1 = or i32 %shl315.1, %shr319.1 *)
(* You may need to modify here *)
or uint32 v_or320_1 v_shl315_1 v_shr319_1;
(*   %add324.1 = add i32 %or320.1, %add296.1 *)
adds discard_110 v_add324_1 v_or320_1 v_add296_1;
(*   %xor328.1 = xor i32 %add324.1, %or306.1 *)
(* You may need to modify here *)
xor uint32 v_xor328_1 v_add324_1 v_or306_1;
(*   %shl329.1 = shl i32 %xor328.1, 7 *)
shls discard_111 v_shl329_1 v_xor328_1 7;
(*   %shr333.1 = lshr i32 %xor328.1, 25 *)
(* You may need to modify here *)
split v_shr333_1 tmp_to_be_used v_xor328_1 25;
(*   %or334.1 = or i32 %shl329.1, %shr333.1 *)
(* You may need to modify here *)
or uint32 v_or334_1 v_shl329_1 v_shr333_1;
(*   %add338.1 = add i32 %or222.1, %add142.1 *)
adds discard_112 v_add338_1 v_or222_1 v_add142_1;
(*   %xor342.1 = xor i32 %add338.1, %or96.1 *)
(* You may need to modify here *)
xor uint32 v_xor342_1 v_add338_1 v_or96_1;
(*   %shl343.1 = shl i32 %xor342.1, 16 *)
shls discard_113 v_shl343_1 v_xor342_1 16;
(*   %shr347.1 = lshr i32 %xor342.1, 16 *)
(* You may need to modify here *)
split v_shr347_1 tmp_to_be_used v_xor342_1 16;
(*   %or348.1 = or i32 %shl343.1, %shr347.1 *)
(* You may need to modify here *)
or uint32 v_or348_1 v_shl343_1 v_shr347_1;
(*   %add352.1 = add i32 %or348.1, %add44.1 *)
adds discard_114 v_add352_1 v_or348_1 v_add44_1;
(*   %xor356.1 = xor i32 %add352.1, %or222.1 *)
(* You may need to modify here *)
xor uint32 v_xor356_1 v_add352_1 v_or222_1;
(*   %shl357.1 = shl i32 %xor356.1, 12 *)
shls discard_115 v_shl357_1 v_xor356_1 12;
(*   %shr361.1 = lshr i32 %xor356.1, 20 *)
(* You may need to modify here *)
split v_shr361_1 tmp_to_be_used v_xor356_1 20;
(*   %or362.1 = or i32 %shl357.1, %shr361.1 *)
(* You may need to modify here *)
or uint32 v_or362_1 v_shl357_1 v_shr361_1;
(*   %add366.1 = add i32 %or362.1, %add338.1 *)
adds discard_116 v_add366_1 v_or362_1 v_add338_1;
(*   %xor370.1 = xor i32 %add366.1, %or348.1 *)
(* You may need to modify here *)
xor uint32 v_xor370_1 v_add366_1 v_or348_1;
(*   %shl371.1 = shl i32 %xor370.1, 8 *)
shls discard_117 v_shl371_1 v_xor370_1 8;
(*   %shr375.1 = lshr i32 %xor370.1, 24 *)
(* You may need to modify here *)
split v_shr375_1 tmp_to_be_used v_xor370_1 24;
(*   %or376.1 = or i32 %shl371.1, %shr375.1 *)
(* You may need to modify here *)
or uint32 v_or376_1 v_shl371_1 v_shr375_1;
(*   %add380.1 = add i32 %or376.1, %add352.1 *)
adds discard_118 v_add380_1 v_or376_1 v_add352_1;
(*   %xor384.1 = xor i32 %add380.1, %or362.1 *)
(* You may need to modify here *)
xor uint32 v_xor384_1 v_add380_1 v_or362_1;
(*   %shl385.1 = shl i32 %xor384.1, 7 *)
shls discard_119 v_shl385_1 v_xor384_1 7;
(*   %shr389.1 = lshr i32 %xor384.1, 25 *)
(* You may need to modify here *)
split v_shr389_1 tmp_to_be_used v_xor384_1 25;
(*   %or390.1 = or i32 %shl385.1, %shr389.1 *)
(* You may need to modify here *)
or uint32 v_or390_1 v_shl385_1 v_shr389_1;
(*   %add394.1 = add i32 %add198.1, %or54.1 *)
adds discard_120 v_add394_1 v_add198_1 v_or54_1;
(*   %xor398.1 = xor i32 %add394.1, %or152.1 *)
(* You may need to modify here *)
xor uint32 v_xor398_1 v_add394_1 v_or152_1;
(*   %shl399.1 = shl i32 %xor398.1, 16 *)
shls discard_121 v_shl399_1 v_xor398_1 16;
(*   %shr403.1 = lshr i32 %xor398.1, 16 *)
(* You may need to modify here *)
split v_shr403_1 tmp_to_be_used v_xor398_1 16;
(*   %or404.1 = or i32 %shl399.1, %shr403.1 *)
(* You may need to modify here *)
or uint32 v_or404_1 v_shl399_1 v_shr403_1;
(*   %add408.1 = add i32 %or404.1, %add100.1 *)
adds discard_122 v_add408_1 v_or404_1 v_add100_1;
(*   %xor412.1 = xor i32 %add408.1, %or54.1 *)
(* You may need to modify here *)
xor uint32 v_xor412_1 v_add408_1 v_or54_1;
(*   %shl413.1 = shl i32 %xor412.1, 12 *)
shls discard_123 v_shl413_1 v_xor412_1 12;
(*   %shr417.1 = lshr i32 %xor412.1, 20 *)
(* You may need to modify here *)
split v_shr417_1 tmp_to_be_used v_xor412_1 20;
(*   %or418.1 = or i32 %shl413.1, %shr417.1 *)
(* You may need to modify here *)
or uint32 v_or418_1 v_shl413_1 v_shr417_1;
(*   %add422.1 = add i32 %or418.1, %add394.1 *)
adds discard_124 v_add422_1 v_or418_1 v_add394_1;
(*   %xor426.1 = xor i32 %add422.1, %or404.1 *)
(* You may need to modify here *)
xor uint32 v_xor426_1 v_add422_1 v_or404_1;
(*   %shl427.1 = shl i32 %xor426.1, 8 *)
shls discard_125 v_shl427_1 v_xor426_1 8;
(*   %shr431.1 = lshr i32 %xor426.1, 24 *)
(* You may need to modify here *)
split v_shr431_1 tmp_to_be_used v_xor426_1 24;
(*   %or432.1 = or i32 %shl427.1, %shr431.1 *)
(* You may need to modify here *)
or uint32 v_or432_1 v_shl427_1 v_shr431_1;
(*   %add436.1 = add i32 %or432.1, %add408.1 *)
adds discard_126 v_add436_1 v_or432_1 v_add408_1;
(*   %xor440.1 = xor i32 %add436.1, %or418.1 *)
(* You may need to modify here *)
xor uint32 v_xor440_1 v_add436_1 v_or418_1;
(*   %shl441.1 = shl i32 %xor440.1, 7 *)
shls discard_127 v_shl441_1 v_xor440_1 7;
(*   %shr445.1 = lshr i32 %xor440.1, 25 *)
(* You may need to modify here *)
split v_shr445_1 tmp_to_be_used v_xor440_1 25;
(*   %or446.1 = or i32 %shl441.1, %shr445.1 *)
(* You may need to modify here *)
or uint32 v_or446_1 v_shl441_1 v_shr445_1;
(*   %add.2 = add i32 %or446.1, %add254.1 *)
adds discard_128 v_add_2 v_or446_1 v_add254_1;
(*   %xor.2 = xor i32 %or320.1, %add.2 *)
(* You may need to modify here *)
xor uint32 v_xor_2 v_or320_1 v_add_2;
(*   %shl.2 = shl i32 %xor.2, 16 *)
shls discard_129 v_shl_2 v_xor_2 16;
(*   %shr.2 = lshr i32 %xor.2, 16 *)
(* You may need to modify here *)
split v_shr_2 tmp_to_be_used v_xor_2 16;
(*   %or.2 = or i32 %shl.2, %shr.2 *)
(* You may need to modify here *)
or uint32 v_or_2 v_shl_2 v_shr_2;
(*   %add16.2 = add i32 %or.2, %add380.1 *)
adds discard_130 v_add16_2 v_or_2 v_add380_1;
(*   %xor20.2 = xor i32 %add16.2, %or446.1 *)
(* You may need to modify here *)
xor uint32 v_xor20_2 v_add16_2 v_or446_1;
(*   %shl21.2 = shl i32 %xor20.2, 12 *)
shls discard_131 v_shl21_2 v_xor20_2 12;
(*   %shr25.2 = lshr i32 %xor20.2, 20 *)
(* You may need to modify here *)
split v_shr25_2 tmp_to_be_used v_xor20_2 20;
(*   %or26.2 = or i32 %shl21.2, %shr25.2 *)
(* You may need to modify here *)
or uint32 v_or26_2 v_shl21_2 v_shr25_2;
(*   %add30.2 = add i32 %or26.2, %add.2 *)
adds discard_132 v_add30_2 v_or26_2 v_add_2;
(*   %xor34.2 = xor i32 %add30.2, %or.2 *)
(* You may need to modify here *)
xor uint32 v_xor34_2 v_add30_2 v_or_2;
(*   %shl35.2 = shl i32 %xor34.2, 8 *)
shls discard_133 v_shl35_2 v_xor34_2 8;
(*   %shr39.2 = lshr i32 %xor34.2, 24 *)
(* You may need to modify here *)
split v_shr39_2 tmp_to_be_used v_xor34_2 24;
(*   %or40.2 = or i32 %shl35.2, %shr39.2 *)
(* You may need to modify here *)
or uint32 v_or40_2 v_shl35_2 v_shr39_2;
(*   %add44.2 = add i32 %or40.2, %add16.2 *)
adds discard_134 v_add44_2 v_or40_2 v_add16_2;
(*   %xor48.2 = xor i32 %add44.2, %or26.2 *)
(* You may need to modify here *)
xor uint32 v_xor48_2 v_add44_2 v_or26_2;
(*   %shl49.2 = shl i32 %xor48.2, 7 *)
shls discard_135 v_shl49_2 v_xor48_2 7;
(*   %shr53.2 = lshr i32 %xor48.2, 25 *)
(* You may need to modify here *)
split v_shr53_2 tmp_to_be_used v_xor48_2 25;
(*   %or54.2 = or i32 %shl49.2, %shr53.2 *)
(* You may need to modify here *)
or uint32 v_or54_2 v_shl49_2 v_shr53_2;
(*   %add58.2 = add i32 %or278.1, %add310.1 *)
adds discard_136 v_add58_2 v_or278_1 v_add310_1;
(*   %xor62.2 = xor i32 %or376.1, %add58.2 *)
(* You may need to modify here *)
xor uint32 v_xor62_2 v_or376_1 v_add58_2;
(*   %shl63.2 = shl i32 %xor62.2, 16 *)
shls discard_137 v_shl63_2 v_xor62_2 16;
(*   %shr67.2 = lshr i32 %xor62.2, 16 *)
(* You may need to modify here *)
split v_shr67_2 tmp_to_be_used v_xor62_2 16;
(*   %or68.2 = or i32 %shl63.2, %shr67.2 *)
(* You may need to modify here *)
or uint32 v_or68_2 v_shl63_2 v_shr67_2;
(*   %add72.2 = add i32 %or68.2, %add436.1 *)
adds discard_138 v_add72_2 v_or68_2 v_add436_1;
(*   %xor76.2 = xor i32 %add72.2, %or278.1 *)
(* You may need to modify here *)
xor uint32 v_xor76_2 v_add72_2 v_or278_1;
(*   %shl77.2 = shl i32 %xor76.2, 12 *)
shls discard_139 v_shl77_2 v_xor76_2 12;
(*   %shr81.2 = lshr i32 %xor76.2, 20 *)
(* You may need to modify here *)
split v_shr81_2 tmp_to_be_used v_xor76_2 20;
(*   %or82.2 = or i32 %shl77.2, %shr81.2 *)
(* You may need to modify here *)
or uint32 v_or82_2 v_shl77_2 v_shr81_2;
(*   %add86.2 = add i32 %or82.2, %add58.2 *)
adds discard_140 v_add86_2 v_or82_2 v_add58_2;
(*   %xor90.2 = xor i32 %add86.2, %or68.2 *)
(* You may need to modify here *)
xor uint32 v_xor90_2 v_add86_2 v_or68_2;
(*   %shl91.2 = shl i32 %xor90.2, 8 *)
shls discard_141 v_shl91_2 v_xor90_2 8;
(*   %shr95.2 = lshr i32 %xor90.2, 24 *)
(* You may need to modify here *)
split v_shr95_2 tmp_to_be_used v_xor90_2 24;
(*   %or96.2 = or i32 %shl91.2, %shr95.2 *)
(* You may need to modify here *)
or uint32 v_or96_2 v_shl91_2 v_shr95_2;
(*   %add100.2 = add i32 %or96.2, %add72.2 *)
adds discard_142 v_add100_2 v_or96_2 v_add72_2;
(*   %xor104.2 = xor i32 %add100.2, %or82.2 *)
(* You may need to modify here *)
xor uint32 v_xor104_2 v_add100_2 v_or82_2;
(*   %shl105.2 = shl i32 %xor104.2, 7 *)
shls discard_143 v_shl105_2 v_xor104_2 7;
(*   %shr109.2 = lshr i32 %xor104.2, 25 *)
(* You may need to modify here *)
split v_shr109_2 tmp_to_be_used v_xor104_2 25;
(*   %or110.2 = or i32 %shl105.2, %shr109.2 *)
(* You may need to modify here *)
or uint32 v_or110_2 v_shl105_2 v_shr109_2;
(*   %add114.2 = add i32 %or334.1, %add366.1 *)
adds discard_144 v_add114_2 v_or334_1 v_add366_1;
(*   %xor118.2 = xor i32 %or432.1, %add114.2 *)
(* You may need to modify here *)
xor uint32 v_xor118_2 v_or432_1 v_add114_2;
(*   %shl119.2 = shl i32 %xor118.2, 16 *)
shls discard_145 v_shl119_2 v_xor118_2 16;
(*   %shr123.2 = lshr i32 %xor118.2, 16 *)
(* You may need to modify here *)
split v_shr123_2 tmp_to_be_used v_xor118_2 16;
(*   %or124.2 = or i32 %shl119.2, %shr123.2 *)
(* You may need to modify here *)
or uint32 v_or124_2 v_shl119_2 v_shr123_2;
(*   %add128.2 = add i32 %or124.2, %add268.1 *)
adds discard_146 v_add128_2 v_or124_2 v_add268_1;
(*   %xor132.2 = xor i32 %add128.2, %or334.1 *)
(* You may need to modify here *)
xor uint32 v_xor132_2 v_add128_2 v_or334_1;
(*   %shl133.2 = shl i32 %xor132.2, 12 *)
shls discard_147 v_shl133_2 v_xor132_2 12;
(*   %shr137.2 = lshr i32 %xor132.2, 20 *)
(* You may need to modify here *)
split v_shr137_2 tmp_to_be_used v_xor132_2 20;
(*   %or138.2 = or i32 %shl133.2, %shr137.2 *)
(* You may need to modify here *)
or uint32 v_or138_2 v_shl133_2 v_shr137_2;
(*   %add142.2 = add i32 %or138.2, %add114.2 *)
adds discard_148 v_add142_2 v_or138_2 v_add114_2;
(*   %xor146.2 = xor i32 %add142.2, %or124.2 *)
(* You may need to modify here *)
xor uint32 v_xor146_2 v_add142_2 v_or124_2;
(*   %shl147.2 = shl i32 %xor146.2, 8 *)
shls discard_149 v_shl147_2 v_xor146_2 8;
(*   %shr151.2 = lshr i32 %xor146.2, 24 *)
(* You may need to modify here *)
split v_shr151_2 tmp_to_be_used v_xor146_2 24;
(*   %or152.2 = or i32 %shl147.2, %shr151.2 *)
(* You may need to modify here *)
or uint32 v_or152_2 v_shl147_2 v_shr151_2;
(*   %add156.2 = add i32 %or152.2, %add128.2 *)
adds discard_150 v_add156_2 v_or152_2 v_add128_2;
(*   %xor160.2 = xor i32 %add156.2, %or138.2 *)
(* You may need to modify here *)
xor uint32 v_xor160_2 v_add156_2 v_or138_2;
(*   %shl161.2 = shl i32 %xor160.2, 7 *)
shls discard_151 v_shl161_2 v_xor160_2 7;
(*   %shr165.2 = lshr i32 %xor160.2, 25 *)
(* You may need to modify here *)
split v_shr165_2 tmp_to_be_used v_xor160_2 25;
(*   %or166.2 = or i32 %shl161.2, %shr165.2 *)
(* You may need to modify here *)
or uint32 v_or166_2 v_shl161_2 v_shr165_2;
(*   %add170.2 = add i32 %or390.1, %add422.1 *)
adds discard_152 v_add170_2 v_or390_1 v_add422_1;
(*   %xor174.2 = xor i32 %or264.1, %add170.2 *)
(* You may need to modify here *)
xor uint32 v_xor174_2 v_or264_1 v_add170_2;
(*   %shl175.2 = shl i32 %xor174.2, 16 *)
shls discard_153 v_shl175_2 v_xor174_2 16;
(*   %shr179.2 = lshr i32 %xor174.2, 16 *)
(* You may need to modify here *)
split v_shr179_2 tmp_to_be_used v_xor174_2 16;
(*   %or180.2 = or i32 %shl175.2, %shr179.2 *)
(* You may need to modify here *)
or uint32 v_or180_2 v_shl175_2 v_shr179_2;
(*   %add184.2 = add i32 %or180.2, %add324.1 *)
adds discard_154 v_add184_2 v_or180_2 v_add324_1;
(*   %xor188.2 = xor i32 %add184.2, %or390.1 *)
(* You may need to modify here *)
xor uint32 v_xor188_2 v_add184_2 v_or390_1;
(*   %shl189.2 = shl i32 %xor188.2, 12 *)
shls discard_155 v_shl189_2 v_xor188_2 12;
(*   %shr193.2 = lshr i32 %xor188.2, 20 *)
(* You may need to modify here *)
split v_shr193_2 tmp_to_be_used v_xor188_2 20;
(*   %or194.2 = or i32 %shl189.2, %shr193.2 *)
(* You may need to modify here *)
or uint32 v_or194_2 v_shl189_2 v_shr193_2;
(*   %add198.2 = add i32 %or194.2, %add170.2 *)
adds discard_156 v_add198_2 v_or194_2 v_add170_2;
(*   %xor202.2 = xor i32 %add198.2, %or180.2 *)
(* You may need to modify here *)
xor uint32 v_xor202_2 v_add198_2 v_or180_2;
(*   %shl203.2 = shl i32 %xor202.2, 8 *)
shls discard_157 v_shl203_2 v_xor202_2 8;
(*   %shr207.2 = lshr i32 %xor202.2, 24 *)
(* You may need to modify here *)
split v_shr207_2 tmp_to_be_used v_xor202_2 24;
(*   %or208.2 = or i32 %shl203.2, %shr207.2 *)
(* You may need to modify here *)
or uint32 v_or208_2 v_shl203_2 v_shr207_2;
(*   %add212.2 = add i32 %or208.2, %add184.2 *)
adds discard_158 v_add212_2 v_or208_2 v_add184_2;
(*   %xor216.2 = xor i32 %add212.2, %or194.2 *)
(* You may need to modify here *)
xor uint32 v_xor216_2 v_add212_2 v_or194_2;
(*   %shl217.2 = shl i32 %xor216.2, 7 *)
shls discard_159 v_shl217_2 v_xor216_2 7;
(*   %shr221.2 = lshr i32 %xor216.2, 25 *)
(* You may need to modify here *)
split v_shr221_2 tmp_to_be_used v_xor216_2 25;
(*   %or222.2 = or i32 %shl217.2, %shr221.2 *)
(* You may need to modify here *)
or uint32 v_or222_2 v_shl217_2 v_shr221_2;
(*   %add226.2 = add i32 %or110.2, %add30.2 *)
adds discard_160 v_add226_2 v_or110_2 v_add30_2;
(*   %xor230.2 = xor i32 %or208.2, %add226.2 *)
(* You may need to modify here *)
xor uint32 v_xor230_2 v_or208_2 v_add226_2;
(*   %shl231.2 = shl i32 %xor230.2, 16 *)
shls discard_161 v_shl231_2 v_xor230_2 16;
(*   %shr235.2 = lshr i32 %xor230.2, 16 *)
(* You may need to modify here *)
split v_shr235_2 tmp_to_be_used v_xor230_2 16;
(*   %or236.2 = or i32 %shl231.2, %shr235.2 *)
(* You may need to modify here *)
or uint32 v_or236_2 v_shl231_2 v_shr235_2;
(*   %add240.2 = add i32 %or236.2, %add156.2 *)
adds discard_162 v_add240_2 v_or236_2 v_add156_2;
(*   %xor244.2 = xor i32 %add240.2, %or110.2 *)
(* You may need to modify here *)
xor uint32 v_xor244_2 v_add240_2 v_or110_2;
(*   %shl245.2 = shl i32 %xor244.2, 12 *)
shls discard_163 v_shl245_2 v_xor244_2 12;
(*   %shr249.2 = lshr i32 %xor244.2, 20 *)
(* You may need to modify here *)
split v_shr249_2 tmp_to_be_used v_xor244_2 20;
(*   %or250.2 = or i32 %shl245.2, %shr249.2 *)
(* You may need to modify here *)
or uint32 v_or250_2 v_shl245_2 v_shr249_2;
(*   %add254.2 = add i32 %or250.2, %add226.2 *)
adds discard_164 v_add254_2 v_or250_2 v_add226_2;
(*   %xor258.2 = xor i32 %add254.2, %or236.2 *)
(* You may need to modify here *)
xor uint32 v_xor258_2 v_add254_2 v_or236_2;
(*   %shl259.2 = shl i32 %xor258.2, 8 *)
shls discard_165 v_shl259_2 v_xor258_2 8;
(*   %shr263.2 = lshr i32 %xor258.2, 24 *)
(* You may need to modify here *)
split v_shr263_2 tmp_to_be_used v_xor258_2 24;
(*   %or264.2 = or i32 %shl259.2, %shr263.2 *)
(* You may need to modify here *)
or uint32 v_or264_2 v_shl259_2 v_shr263_2;
(*   %add268.2 = add i32 %or264.2, %add240.2 *)
adds discard_166 v_add268_2 v_or264_2 v_add240_2;
(*   %xor272.2 = xor i32 %add268.2, %or250.2 *)
(* You may need to modify here *)
xor uint32 v_xor272_2 v_add268_2 v_or250_2;
(*   %shl273.2 = shl i32 %xor272.2, 7 *)
shls discard_167 v_shl273_2 v_xor272_2 7;
(*   %shr277.2 = lshr i32 %xor272.2, 25 *)
(* You may need to modify here *)
split v_shr277_2 tmp_to_be_used v_xor272_2 25;
(*   %or278.2 = or i32 %shl273.2, %shr277.2 *)
(* You may need to modify here *)
or uint32 v_or278_2 v_shl273_2 v_shr277_2;
(*   %add282.2 = add i32 %or166.2, %add86.2 *)
adds discard_168 v_add282_2 v_or166_2 v_add86_2;
(*   %xor286.2 = xor i32 %add282.2, %or40.2 *)
(* You may need to modify here *)
xor uint32 v_xor286_2 v_add282_2 v_or40_2;
(*   %shl287.2 = shl i32 %xor286.2, 16 *)
shls discard_169 v_shl287_2 v_xor286_2 16;
(*   %shr291.2 = lshr i32 %xor286.2, 16 *)
(* You may need to modify here *)
split v_shr291_2 tmp_to_be_used v_xor286_2 16;
(*   %or292.2 = or i32 %shl287.2, %shr291.2 *)
(* You may need to modify here *)
or uint32 v_or292_2 v_shl287_2 v_shr291_2;
(*   %add296.2 = add i32 %add212.2, %or292.2 *)
adds discard_170 v_add296_2 v_add212_2 v_or292_2;
(*   %xor300.2 = xor i32 %add296.2, %or166.2 *)
(* You may need to modify here *)
xor uint32 v_xor300_2 v_add296_2 v_or166_2;
(*   %shl301.2 = shl i32 %xor300.2, 12 *)
shls discard_171 v_shl301_2 v_xor300_2 12;
(*   %shr305.2 = lshr i32 %xor300.2, 20 *)
(* You may need to modify here *)
split v_shr305_2 tmp_to_be_used v_xor300_2 20;
(*   %or306.2 = or i32 %shl301.2, %shr305.2 *)
(* You may need to modify here *)
or uint32 v_or306_2 v_shl301_2 v_shr305_2;
(*   %add310.2 = add i32 %or306.2, %add282.2 *)
adds discard_172 v_add310_2 v_or306_2 v_add282_2;
(*   %xor314.2 = xor i32 %add310.2, %or292.2 *)
(* You may need to modify here *)
xor uint32 v_xor314_2 v_add310_2 v_or292_2;
(*   %shl315.2 = shl i32 %xor314.2, 8 *)
shls discard_173 v_shl315_2 v_xor314_2 8;
(*   %shr319.2 = lshr i32 %xor314.2, 24 *)
(* You may need to modify here *)
split v_shr319_2 tmp_to_be_used v_xor314_2 24;
(*   %or320.2 = or i32 %shl315.2, %shr319.2 *)
(* You may need to modify here *)
or uint32 v_or320_2 v_shl315_2 v_shr319_2;
(*   %add324.2 = add i32 %or320.2, %add296.2 *)
adds discard_174 v_add324_2 v_or320_2 v_add296_2;
(*   %xor328.2 = xor i32 %add324.2, %or306.2 *)
(* You may need to modify here *)
xor uint32 v_xor328_2 v_add324_2 v_or306_2;
(*   %shl329.2 = shl i32 %xor328.2, 7 *)
shls discard_175 v_shl329_2 v_xor328_2 7;
(*   %shr333.2 = lshr i32 %xor328.2, 25 *)
(* You may need to modify here *)
split v_shr333_2 tmp_to_be_used v_xor328_2 25;
(*   %or334.2 = or i32 %shl329.2, %shr333.2 *)
(* You may need to modify here *)
or uint32 v_or334_2 v_shl329_2 v_shr333_2;
(*   %add338.2 = add i32 %or222.2, %add142.2 *)
adds discard_176 v_add338_2 v_or222_2 v_add142_2;
(*   %xor342.2 = xor i32 %add338.2, %or96.2 *)
(* You may need to modify here *)
xor uint32 v_xor342_2 v_add338_2 v_or96_2;
(*   %shl343.2 = shl i32 %xor342.2, 16 *)
shls discard_177 v_shl343_2 v_xor342_2 16;
(*   %shr347.2 = lshr i32 %xor342.2, 16 *)
(* You may need to modify here *)
split v_shr347_2 tmp_to_be_used v_xor342_2 16;
(*   %or348.2 = or i32 %shl343.2, %shr347.2 *)
(* You may need to modify here *)
or uint32 v_or348_2 v_shl343_2 v_shr347_2;
(*   %add352.2 = add i32 %or348.2, %add44.2 *)
adds discard_178 v_add352_2 v_or348_2 v_add44_2;
(*   %xor356.2 = xor i32 %add352.2, %or222.2 *)
(* You may need to modify here *)
xor uint32 v_xor356_2 v_add352_2 v_or222_2;
(*   %shl357.2 = shl i32 %xor356.2, 12 *)
shls discard_179 v_shl357_2 v_xor356_2 12;
(*   %shr361.2 = lshr i32 %xor356.2, 20 *)
(* You may need to modify here *)
split v_shr361_2 tmp_to_be_used v_xor356_2 20;
(*   %or362.2 = or i32 %shl357.2, %shr361.2 *)
(* You may need to modify here *)
or uint32 v_or362_2 v_shl357_2 v_shr361_2;
(*   %add366.2 = add i32 %or362.2, %add338.2 *)
adds discard_180 v_add366_2 v_or362_2 v_add338_2;
(*   %xor370.2 = xor i32 %add366.2, %or348.2 *)
(* You may need to modify here *)
xor uint32 v_xor370_2 v_add366_2 v_or348_2;
(*   %shl371.2 = shl i32 %xor370.2, 8 *)
shls discard_181 v_shl371_2 v_xor370_2 8;
(*   %shr375.2 = lshr i32 %xor370.2, 24 *)
(* You may need to modify here *)
split v_shr375_2 tmp_to_be_used v_xor370_2 24;
(*   %or376.2 = or i32 %shl371.2, %shr375.2 *)
(* You may need to modify here *)
or uint32 v_or376_2 v_shl371_2 v_shr375_2;
(*   %add380.2 = add i32 %or376.2, %add352.2 *)
adds discard_182 v_add380_2 v_or376_2 v_add352_2;
(*   %xor384.2 = xor i32 %add380.2, %or362.2 *)
(* You may need to modify here *)
xor uint32 v_xor384_2 v_add380_2 v_or362_2;
(*   %shl385.2 = shl i32 %xor384.2, 7 *)
shls discard_183 v_shl385_2 v_xor384_2 7;
(*   %shr389.2 = lshr i32 %xor384.2, 25 *)
(* You may need to modify here *)
split v_shr389_2 tmp_to_be_used v_xor384_2 25;
(*   %or390.2 = or i32 %shl385.2, %shr389.2 *)
(* You may need to modify here *)
or uint32 v_or390_2 v_shl385_2 v_shr389_2;
(*   %add394.2 = add i32 %add198.2, %or54.2 *)
adds discard_184 v_add394_2 v_add198_2 v_or54_2;
(*   %xor398.2 = xor i32 %add394.2, %or152.2 *)
(* You may need to modify here *)
xor uint32 v_xor398_2 v_add394_2 v_or152_2;
(*   %shl399.2 = shl i32 %xor398.2, 16 *)
shls discard_185 v_shl399_2 v_xor398_2 16;
(*   %shr403.2 = lshr i32 %xor398.2, 16 *)
(* You may need to modify here *)
split v_shr403_2 tmp_to_be_used v_xor398_2 16;
(*   %or404.2 = or i32 %shl399.2, %shr403.2 *)
(* You may need to modify here *)
or uint32 v_or404_2 v_shl399_2 v_shr403_2;
(*   %add408.2 = add i32 %or404.2, %add100.2 *)
adds discard_186 v_add408_2 v_or404_2 v_add100_2;
(*   %xor412.2 = xor i32 %add408.2, %or54.2 *)
(* You may need to modify here *)
xor uint32 v_xor412_2 v_add408_2 v_or54_2;
(*   %shl413.2 = shl i32 %xor412.2, 12 *)
shls discard_187 v_shl413_2 v_xor412_2 12;
(*   %shr417.2 = lshr i32 %xor412.2, 20 *)
(* You may need to modify here *)
split v_shr417_2 tmp_to_be_used v_xor412_2 20;
(*   %or418.2 = or i32 %shl413.2, %shr417.2 *)
(* You may need to modify here *)
or uint32 v_or418_2 v_shl413_2 v_shr417_2;
(*   %add422.2 = add i32 %or418.2, %add394.2 *)
adds discard_188 v_add422_2 v_or418_2 v_add394_2;
(*   %xor426.2 = xor i32 %add422.2, %or404.2 *)
(* You may need to modify here *)
xor uint32 v_xor426_2 v_add422_2 v_or404_2;
(*   %shl427.2 = shl i32 %xor426.2, 8 *)
shls discard_189 v_shl427_2 v_xor426_2 8;
(*   %shr431.2 = lshr i32 %xor426.2, 24 *)
(* You may need to modify here *)
split v_shr431_2 tmp_to_be_used v_xor426_2 24;
(*   %or432.2 = or i32 %shl427.2, %shr431.2 *)
(* You may need to modify here *)
or uint32 v_or432_2 v_shl427_2 v_shr431_2;
(*   %add436.2 = add i32 %or432.2, %add408.2 *)
adds discard_190 v_add436_2 v_or432_2 v_add408_2;
(*   %xor440.2 = xor i32 %add436.2, %or418.2 *)
(* You may need to modify here *)
xor uint32 v_xor440_2 v_add436_2 v_or418_2;
(*   %shl441.2 = shl i32 %xor440.2, 7 *)
shls discard_191 v_shl441_2 v_xor440_2 7;
(*   %shr445.2 = lshr i32 %xor440.2, 25 *)
(* You may need to modify here *)
split v_shr445_2 tmp_to_be_used v_xor440_2 25;
(*   %or446.2 = or i32 %shl441.2, %shr445.2 *)
(* You may need to modify here *)
or uint32 v_or446_2 v_shl441_2 v_shr445_2;
(*   %add.3 = add i32 %or446.2, %add254.2 *)
adds discard_192 v_add_3 v_or446_2 v_add254_2;
(*   %xor.3 = xor i32 %or320.2, %add.3 *)
(* You may need to modify here *)
xor uint32 v_xor_3 v_or320_2 v_add_3;
(*   %shl.3 = shl i32 %xor.3, 16 *)
shls discard_193 v_shl_3 v_xor_3 16;
(*   %shr.3 = lshr i32 %xor.3, 16 *)
(* You may need to modify here *)
split v_shr_3 tmp_to_be_used v_xor_3 16;
(*   %or.3 = or i32 %shl.3, %shr.3 *)
(* You may need to modify here *)
or uint32 v_or_3 v_shl_3 v_shr_3;
(*   %add16.3 = add i32 %or.3, %add380.2 *)
adds discard_194 v_add16_3 v_or_3 v_add380_2;
(*   %xor20.3 = xor i32 %add16.3, %or446.2 *)
(* You may need to modify here *)
xor uint32 v_xor20_3 v_add16_3 v_or446_2;
(*   %shl21.3 = shl i32 %xor20.3, 12 *)
shls discard_195 v_shl21_3 v_xor20_3 12;
(*   %shr25.3 = lshr i32 %xor20.3, 20 *)
(* You may need to modify here *)
split v_shr25_3 tmp_to_be_used v_xor20_3 20;
(*   %or26.3 = or i32 %shl21.3, %shr25.3 *)
(* You may need to modify here *)
or uint32 v_or26_3 v_shl21_3 v_shr25_3;
(*   %add30.3 = add i32 %or26.3, %add.3 *)
adds discard_196 v_add30_3 v_or26_3 v_add_3;
(*   %xor34.3 = xor i32 %add30.3, %or.3 *)
(* You may need to modify here *)
xor uint32 v_xor34_3 v_add30_3 v_or_3;
(*   %shl35.3 = shl i32 %xor34.3, 8 *)
shls discard_197 v_shl35_3 v_xor34_3 8;
(*   %shr39.3 = lshr i32 %xor34.3, 24 *)
(* You may need to modify here *)
split v_shr39_3 tmp_to_be_used v_xor34_3 24;
(*   %or40.3 = or i32 %shl35.3, %shr39.3 *)
(* You may need to modify here *)
or uint32 v_or40_3 v_shl35_3 v_shr39_3;
(*   %add44.3 = add i32 %or40.3, %add16.3 *)
adds discard_198 v_add44_3 v_or40_3 v_add16_3;
(*   %xor48.3 = xor i32 %add44.3, %or26.3 *)
(* You may need to modify here *)
xor uint32 v_xor48_3 v_add44_3 v_or26_3;
(*   %shl49.3 = shl i32 %xor48.3, 7 *)
shls discard_199 v_shl49_3 v_xor48_3 7;
(*   %shr53.3 = lshr i32 %xor48.3, 25 *)
(* You may need to modify here *)
split v_shr53_3 tmp_to_be_used v_xor48_3 25;
(*   %or54.3 = or i32 %shl49.3, %shr53.3 *)
(* You may need to modify here *)
or uint32 v_or54_3 v_shl49_3 v_shr53_3;
(*   %add58.3 = add i32 %or278.2, %add310.2 *)
adds discard_200 v_add58_3 v_or278_2 v_add310_2;
(*   %xor62.3 = xor i32 %or376.2, %add58.3 *)
(* You may need to modify here *)
xor uint32 v_xor62_3 v_or376_2 v_add58_3;
(*   %shl63.3 = shl i32 %xor62.3, 16 *)
shls discard_201 v_shl63_3 v_xor62_3 16;
(*   %shr67.3 = lshr i32 %xor62.3, 16 *)
(* You may need to modify here *)
split v_shr67_3 tmp_to_be_used v_xor62_3 16;
(*   %or68.3 = or i32 %shl63.3, %shr67.3 *)
(* You may need to modify here *)
or uint32 v_or68_3 v_shl63_3 v_shr67_3;
(*   %add72.3 = add i32 %or68.3, %add436.2 *)
adds discard_202 v_add72_3 v_or68_3 v_add436_2;
(*   %xor76.3 = xor i32 %add72.3, %or278.2 *)
(* You may need to modify here *)
xor uint32 v_xor76_3 v_add72_3 v_or278_2;
(*   %shl77.3 = shl i32 %xor76.3, 12 *)
shls discard_203 v_shl77_3 v_xor76_3 12;
(*   %shr81.3 = lshr i32 %xor76.3, 20 *)
(* You may need to modify here *)
split v_shr81_3 tmp_to_be_used v_xor76_3 20;
(*   %or82.3 = or i32 %shl77.3, %shr81.3 *)
(* You may need to modify here *)
or uint32 v_or82_3 v_shl77_3 v_shr81_3;
(*   %add86.3 = add i32 %or82.3, %add58.3 *)
adds discard_204 v_add86_3 v_or82_3 v_add58_3;
(*   %xor90.3 = xor i32 %add86.3, %or68.3 *)
(* You may need to modify here *)
xor uint32 v_xor90_3 v_add86_3 v_or68_3;
(*   %shl91.3 = shl i32 %xor90.3, 8 *)
shls discard_205 v_shl91_3 v_xor90_3 8;
(*   %shr95.3 = lshr i32 %xor90.3, 24 *)
(* You may need to modify here *)
split v_shr95_3 tmp_to_be_used v_xor90_3 24;
(*   %or96.3 = or i32 %shl91.3, %shr95.3 *)
(* You may need to modify here *)
or uint32 v_or96_3 v_shl91_3 v_shr95_3;
(*   %add100.3 = add i32 %or96.3, %add72.3 *)
adds discard_206 v_add100_3 v_or96_3 v_add72_3;
(*   %xor104.3 = xor i32 %add100.3, %or82.3 *)
(* You may need to modify here *)
xor uint32 v_xor104_3 v_add100_3 v_or82_3;
(*   %shl105.3 = shl i32 %xor104.3, 7 *)
shls discard_207 v_shl105_3 v_xor104_3 7;
(*   %shr109.3 = lshr i32 %xor104.3, 25 *)
(* You may need to modify here *)
split v_shr109_3 tmp_to_be_used v_xor104_3 25;
(*   %or110.3 = or i32 %shl105.3, %shr109.3 *)
(* You may need to modify here *)
or uint32 v_or110_3 v_shl105_3 v_shr109_3;
(*   %add114.3 = add i32 %or334.2, %add366.2 *)
adds discard_208 v_add114_3 v_or334_2 v_add366_2;
(*   %xor118.3 = xor i32 %or432.2, %add114.3 *)
(* You may need to modify here *)
xor uint32 v_xor118_3 v_or432_2 v_add114_3;
(*   %shl119.3 = shl i32 %xor118.3, 16 *)
shls discard_209 v_shl119_3 v_xor118_3 16;
(*   %shr123.3 = lshr i32 %xor118.3, 16 *)
(* You may need to modify here *)
split v_shr123_3 tmp_to_be_used v_xor118_3 16;
(*   %or124.3 = or i32 %shl119.3, %shr123.3 *)
(* You may need to modify here *)
or uint32 v_or124_3 v_shl119_3 v_shr123_3;
(*   %add128.3 = add i32 %or124.3, %add268.2 *)
adds discard_210 v_add128_3 v_or124_3 v_add268_2;
(*   %xor132.3 = xor i32 %add128.3, %or334.2 *)
(* You may need to modify here *)
xor uint32 v_xor132_3 v_add128_3 v_or334_2;
(*   %shl133.3 = shl i32 %xor132.3, 12 *)
shls discard_211 v_shl133_3 v_xor132_3 12;
(*   %shr137.3 = lshr i32 %xor132.3, 20 *)
(* You may need to modify here *)
split v_shr137_3 tmp_to_be_used v_xor132_3 20;
(*   %or138.3 = or i32 %shl133.3, %shr137.3 *)
(* You may need to modify here *)
or uint32 v_or138_3 v_shl133_3 v_shr137_3;
(*   %add142.3 = add i32 %or138.3, %add114.3 *)
adds discard_212 v_add142_3 v_or138_3 v_add114_3;
(*   %xor146.3 = xor i32 %add142.3, %or124.3 *)
(* You may need to modify here *)
xor uint32 v_xor146_3 v_add142_3 v_or124_3;
(*   %shl147.3 = shl i32 %xor146.3, 8 *)
shls discard_213 v_shl147_3 v_xor146_3 8;
(*   %shr151.3 = lshr i32 %xor146.3, 24 *)
(* You may need to modify here *)
split v_shr151_3 tmp_to_be_used v_xor146_3 24;
(*   %or152.3 = or i32 %shl147.3, %shr151.3 *)
(* You may need to modify here *)
or uint32 v_or152_3 v_shl147_3 v_shr151_3;
(*   %add156.3 = add i32 %or152.3, %add128.3 *)
adds discard_214 v_add156_3 v_or152_3 v_add128_3;
(*   %xor160.3 = xor i32 %add156.3, %or138.3 *)
(* You may need to modify here *)
xor uint32 v_xor160_3 v_add156_3 v_or138_3;
(*   %shl161.3 = shl i32 %xor160.3, 7 *)
shls discard_215 v_shl161_3 v_xor160_3 7;
(*   %shr165.3 = lshr i32 %xor160.3, 25 *)
(* You may need to modify here *)
split v_shr165_3 tmp_to_be_used v_xor160_3 25;
(*   %or166.3 = or i32 %shl161.3, %shr165.3 *)
(* You may need to modify here *)
or uint32 v_or166_3 v_shl161_3 v_shr165_3;
(*   %add170.3 = add i32 %or390.2, %add422.2 *)
adds discard_216 v_add170_3 v_or390_2 v_add422_2;
(*   %xor174.3 = xor i32 %or264.2, %add170.3 *)
(* You may need to modify here *)
xor uint32 v_xor174_3 v_or264_2 v_add170_3;
(*   %shl175.3 = shl i32 %xor174.3, 16 *)
shls discard_217 v_shl175_3 v_xor174_3 16;
(*   %shr179.3 = lshr i32 %xor174.3, 16 *)
(* You may need to modify here *)
split v_shr179_3 tmp_to_be_used v_xor174_3 16;
(*   %or180.3 = or i32 %shl175.3, %shr179.3 *)
(* You may need to modify here *)
or uint32 v_or180_3 v_shl175_3 v_shr179_3;
(*   %add184.3 = add i32 %or180.3, %add324.2 *)
adds discard_218 v_add184_3 v_or180_3 v_add324_2;
(*   %xor188.3 = xor i32 %add184.3, %or390.2 *)
(* You may need to modify here *)
xor uint32 v_xor188_3 v_add184_3 v_or390_2;
(*   %shl189.3 = shl i32 %xor188.3, 12 *)
shls discard_219 v_shl189_3 v_xor188_3 12;
(*   %shr193.3 = lshr i32 %xor188.3, 20 *)
(* You may need to modify here *)
split v_shr193_3 tmp_to_be_used v_xor188_3 20;
(*   %or194.3 = or i32 %shl189.3, %shr193.3 *)
(* You may need to modify here *)
or uint32 v_or194_3 v_shl189_3 v_shr193_3;
(*   %add198.3 = add i32 %or194.3, %add170.3 *)
adds discard_220 v_add198_3 v_or194_3 v_add170_3;
(*   %xor202.3 = xor i32 %add198.3, %or180.3 *)
(* You may need to modify here *)
xor uint32 v_xor202_3 v_add198_3 v_or180_3;
(*   %shl203.3 = shl i32 %xor202.3, 8 *)
shls discard_221 v_shl203_3 v_xor202_3 8;
(*   %shr207.3 = lshr i32 %xor202.3, 24 *)
(* You may need to modify here *)
split v_shr207_3 tmp_to_be_used v_xor202_3 24;
(*   %or208.3 = or i32 %shl203.3, %shr207.3 *)
(* You may need to modify here *)
or uint32 v_or208_3 v_shl203_3 v_shr207_3;
(*   %add212.3 = add i32 %or208.3, %add184.3 *)
adds discard_222 v_add212_3 v_or208_3 v_add184_3;
(*   %xor216.3 = xor i32 %add212.3, %or194.3 *)
(* You may need to modify here *)
xor uint32 v_xor216_3 v_add212_3 v_or194_3;
(*   %shl217.3 = shl i32 %xor216.3, 7 *)
shls discard_223 v_shl217_3 v_xor216_3 7;
(*   %shr221.3 = lshr i32 %xor216.3, 25 *)
(* You may need to modify here *)
split v_shr221_3 tmp_to_be_used v_xor216_3 25;
(*   %or222.3 = or i32 %shl217.3, %shr221.3 *)
(* You may need to modify here *)
or uint32 v_or222_3 v_shl217_3 v_shr221_3;
(*   %add226.3 = add i32 %or110.3, %add30.3 *)
adds discard_224 v_add226_3 v_or110_3 v_add30_3;
(*   %xor230.3 = xor i32 %or208.3, %add226.3 *)
(* You may need to modify here *)
xor uint32 v_xor230_3 v_or208_3 v_add226_3;
(*   %shl231.3 = shl i32 %xor230.3, 16 *)
shls discard_225 v_shl231_3 v_xor230_3 16;
(*   %shr235.3 = lshr i32 %xor230.3, 16 *)
(* You may need to modify here *)
split v_shr235_3 tmp_to_be_used v_xor230_3 16;
(*   %or236.3 = or i32 %shl231.3, %shr235.3 *)
(* You may need to modify here *)
or uint32 v_or236_3 v_shl231_3 v_shr235_3;
(*   %add240.3 = add i32 %or236.3, %add156.3 *)
adds discard_226 v_add240_3 v_or236_3 v_add156_3;
(*   %xor244.3 = xor i32 %add240.3, %or110.3 *)
(* You may need to modify here *)
xor uint32 v_xor244_3 v_add240_3 v_or110_3;
(*   %shl245.3 = shl i32 %xor244.3, 12 *)
shls discard_227 v_shl245_3 v_xor244_3 12;
(*   %shr249.3 = lshr i32 %xor244.3, 20 *)
(* You may need to modify here *)
split v_shr249_3 tmp_to_be_used v_xor244_3 20;
(*   %or250.3 = or i32 %shl245.3, %shr249.3 *)
(* You may need to modify here *)
or uint32 v_or250_3 v_shl245_3 v_shr249_3;
(*   %add254.3 = add i32 %or250.3, %add226.3 *)
adds discard_228 v_add254_3 v_or250_3 v_add226_3;
(*   %xor258.3 = xor i32 %add254.3, %or236.3 *)
(* You may need to modify here *)
xor uint32 v_xor258_3 v_add254_3 v_or236_3;
(*   %shl259.3 = shl i32 %xor258.3, 8 *)
shls discard_229 v_shl259_3 v_xor258_3 8;
(*   %shr263.3 = lshr i32 %xor258.3, 24 *)
(* You may need to modify here *)
split v_shr263_3 tmp_to_be_used v_xor258_3 24;
(*   %or264.3 = or i32 %shl259.3, %shr263.3 *)
(* You may need to modify here *)
or uint32 v_or264_3 v_shl259_3 v_shr263_3;
(*   %add268.3 = add i32 %or264.3, %add240.3 *)
adds discard_230 v_add268_3 v_or264_3 v_add240_3;
(*   %xor272.3 = xor i32 %add268.3, %or250.3 *)
(* You may need to modify here *)
xor uint32 v_xor272_3 v_add268_3 v_or250_3;
(*   %shl273.3 = shl i32 %xor272.3, 7 *)
shls discard_231 v_shl273_3 v_xor272_3 7;
(*   %shr277.3 = lshr i32 %xor272.3, 25 *)
(* You may need to modify here *)
split v_shr277_3 tmp_to_be_used v_xor272_3 25;
(*   %or278.3 = or i32 %shl273.3, %shr277.3 *)
(* You may need to modify here *)
or uint32 v_or278_3 v_shl273_3 v_shr277_3;
(*   %add282.3 = add i32 %or166.3, %add86.3 *)
adds discard_232 v_add282_3 v_or166_3 v_add86_3;
(*   %xor286.3 = xor i32 %add282.3, %or40.3 *)
(* You may need to modify here *)
xor uint32 v_xor286_3 v_add282_3 v_or40_3;
(*   %shl287.3 = shl i32 %xor286.3, 16 *)
shls discard_233 v_shl287_3 v_xor286_3 16;
(*   %shr291.3 = lshr i32 %xor286.3, 16 *)
(* You may need to modify here *)
split v_shr291_3 tmp_to_be_used v_xor286_3 16;
(*   %or292.3 = or i32 %shl287.3, %shr291.3 *)
(* You may need to modify here *)
or uint32 v_or292_3 v_shl287_3 v_shr291_3;
(*   %add296.3 = add i32 %add212.3, %or292.3 *)
adds discard_234 v_add296_3 v_add212_3 v_or292_3;
(*   %xor300.3 = xor i32 %add296.3, %or166.3 *)
(* You may need to modify here *)
xor uint32 v_xor300_3 v_add296_3 v_or166_3;
(*   %shl301.3 = shl i32 %xor300.3, 12 *)
shls discard_235 v_shl301_3 v_xor300_3 12;
(*   %shr305.3 = lshr i32 %xor300.3, 20 *)
(* You may need to modify here *)
split v_shr305_3 tmp_to_be_used v_xor300_3 20;
(*   %or306.3 = or i32 %shl301.3, %shr305.3 *)
(* You may need to modify here *)
or uint32 v_or306_3 v_shl301_3 v_shr305_3;
(*   %add310.3 = add i32 %or306.3, %add282.3 *)
adds discard_236 v_add310_3 v_or306_3 v_add282_3;
(*   %xor314.3 = xor i32 %add310.3, %or292.3 *)
(* You may need to modify here *)
xor uint32 v_xor314_3 v_add310_3 v_or292_3;
(*   %shl315.3 = shl i32 %xor314.3, 8 *)
shls discard_237 v_shl315_3 v_xor314_3 8;
(*   %shr319.3 = lshr i32 %xor314.3, 24 *)
(* You may need to modify here *)
split v_shr319_3 tmp_to_be_used v_xor314_3 24;
(*   %or320.3 = or i32 %shl315.3, %shr319.3 *)
(* You may need to modify here *)
or uint32 v_or320_3 v_shl315_3 v_shr319_3;
(*   %add324.3 = add i32 %or320.3, %add296.3 *)
adds discard_238 v_add324_3 v_or320_3 v_add296_3;
(*   %xor328.3 = xor i32 %add324.3, %or306.3 *)
(* You may need to modify here *)
xor uint32 v_xor328_3 v_add324_3 v_or306_3;
(*   %shl329.3 = shl i32 %xor328.3, 7 *)
shls discard_239 v_shl329_3 v_xor328_3 7;
(*   %shr333.3 = lshr i32 %xor328.3, 25 *)
(* You may need to modify here *)
split v_shr333_3 tmp_to_be_used v_xor328_3 25;
(*   %or334.3 = or i32 %shl329.3, %shr333.3 *)
(* You may need to modify here *)
or uint32 v_or334_3 v_shl329_3 v_shr333_3;
(*   %add338.3 = add i32 %or222.3, %add142.3 *)
adds discard_240 v_add338_3 v_or222_3 v_add142_3;
(*   %xor342.3 = xor i32 %add338.3, %or96.3 *)
(* You may need to modify here *)
xor uint32 v_xor342_3 v_add338_3 v_or96_3;
(*   %shl343.3 = shl i32 %xor342.3, 16 *)
shls discard_241 v_shl343_3 v_xor342_3 16;
(*   %shr347.3 = lshr i32 %xor342.3, 16 *)
(* You may need to modify here *)
split v_shr347_3 tmp_to_be_used v_xor342_3 16;
(*   %or348.3 = or i32 %shl343.3, %shr347.3 *)
(* You may need to modify here *)
or uint32 v_or348_3 v_shl343_3 v_shr347_3;
(*   %add352.3 = add i32 %or348.3, %add44.3 *)
adds discard_242 v_add352_3 v_or348_3 v_add44_3;
(*   %xor356.3 = xor i32 %add352.3, %or222.3 *)
(* You may need to modify here *)
xor uint32 v_xor356_3 v_add352_3 v_or222_3;
(*   %shl357.3 = shl i32 %xor356.3, 12 *)
shls discard_243 v_shl357_3 v_xor356_3 12;
(*   %shr361.3 = lshr i32 %xor356.3, 20 *)
(* You may need to modify here *)
split v_shr361_3 tmp_to_be_used v_xor356_3 20;
(*   %or362.3 = or i32 %shl357.3, %shr361.3 *)
(* You may need to modify here *)
or uint32 v_or362_3 v_shl357_3 v_shr361_3;
(*   %add366.3 = add i32 %or362.3, %add338.3 *)
adds discard_244 v_add366_3 v_or362_3 v_add338_3;
(*   %xor370.3 = xor i32 %add366.3, %or348.3 *)
(* You may need to modify here *)
xor uint32 v_xor370_3 v_add366_3 v_or348_3;
(*   %shl371.3 = shl i32 %xor370.3, 8 *)
shls discard_245 v_shl371_3 v_xor370_3 8;
(*   %shr375.3 = lshr i32 %xor370.3, 24 *)
(* You may need to modify here *)
split v_shr375_3 tmp_to_be_used v_xor370_3 24;
(*   %or376.3 = or i32 %shl371.3, %shr375.3 *)
(* You may need to modify here *)
or uint32 v_or376_3 v_shl371_3 v_shr375_3;
(*   %add380.3 = add i32 %or376.3, %add352.3 *)
adds discard_246 v_add380_3 v_or376_3 v_add352_3;
(*   %xor384.3 = xor i32 %add380.3, %or362.3 *)
(* You may need to modify here *)
xor uint32 v_xor384_3 v_add380_3 v_or362_3;
(*   %shl385.3 = shl i32 %xor384.3, 7 *)
shls discard_247 v_shl385_3 v_xor384_3 7;
(*   %shr389.3 = lshr i32 %xor384.3, 25 *)
(* You may need to modify here *)
split v_shr389_3 tmp_to_be_used v_xor384_3 25;
(*   %or390.3 = or i32 %shl385.3, %shr389.3 *)
(* You may need to modify here *)
or uint32 v_or390_3 v_shl385_3 v_shr389_3;
(*   %add394.3 = add i32 %add198.3, %or54.3 *)
adds discard_248 v_add394_3 v_add198_3 v_or54_3;
(*   %xor398.3 = xor i32 %add394.3, %or152.3 *)
(* You may need to modify here *)
xor uint32 v_xor398_3 v_add394_3 v_or152_3;
(*   %shl399.3 = shl i32 %xor398.3, 16 *)
shls discard_249 v_shl399_3 v_xor398_3 16;
(*   %shr403.3 = lshr i32 %xor398.3, 16 *)
(* You may need to modify here *)
split v_shr403_3 tmp_to_be_used v_xor398_3 16;
(*   %or404.3 = or i32 %shl399.3, %shr403.3 *)
(* You may need to modify here *)
or uint32 v_or404_3 v_shl399_3 v_shr403_3;
(*   %add408.3 = add i32 %or404.3, %add100.3 *)
adds discard_250 v_add408_3 v_or404_3 v_add100_3;
(*   %xor412.3 = xor i32 %add408.3, %or54.3 *)
(* You may need to modify here *)
xor uint32 v_xor412_3 v_add408_3 v_or54_3;
(*   %shl413.3 = shl i32 %xor412.3, 12 *)
shls discard_251 v_shl413_3 v_xor412_3 12;
(*   %shr417.3 = lshr i32 %xor412.3, 20 *)
(* You may need to modify here *)
split v_shr417_3 tmp_to_be_used v_xor412_3 20;
(*   %or418.3 = or i32 %shl413.3, %shr417.3 *)
(* You may need to modify here *)
or uint32 v_or418_3 v_shl413_3 v_shr417_3;
(*   %add422.3 = add i32 %or418.3, %add394.3 *)
adds discard_252 v_add422_3 v_or418_3 v_add394_3;
(*   %xor426.3 = xor i32 %add422.3, %or404.3 *)
(* You may need to modify here *)
xor uint32 v_xor426_3 v_add422_3 v_or404_3;
(*   %shl427.3 = shl i32 %xor426.3, 8 *)
shls discard_253 v_shl427_3 v_xor426_3 8;
(*   %shr431.3 = lshr i32 %xor426.3, 24 *)
(* You may need to modify here *)
split v_shr431_3 tmp_to_be_used v_xor426_3 24;
(*   %or432.3 = or i32 %shl427.3, %shr431.3 *)
(* You may need to modify here *)
or uint32 v_or432_3 v_shl427_3 v_shr431_3;
(*   %add436.3 = add i32 %or432.3, %add408.3 *)
adds discard_254 v_add436_3 v_or432_3 v_add408_3;
(*   %xor440.3 = xor i32 %add436.3, %or418.3 *)
(* You may need to modify here *)
xor uint32 v_xor440_3 v_add436_3 v_or418_3;
(*   %shl441.3 = shl i32 %xor440.3, 7 *)
shls discard_255 v_shl441_3 v_xor440_3 7;
(*   %shr445.3 = lshr i32 %xor440.3, 25 *)
(* You may need to modify here *)
split v_shr445_3 tmp_to_be_used v_xor440_3 25;
(*   %or446.3 = or i32 %shl441.3, %shr445.3 *)
(* You may need to modify here *)
or uint32 v_or446_3 v_shl441_3 v_shr445_3;
(*   %add.4 = add i32 %or446.3, %add254.3 *)
adds discard_256 v_add_4 v_or446_3 v_add254_3;
(*   %xor.4 = xor i32 %or320.3, %add.4 *)
(* You may need to modify here *)
xor uint32 v_xor_4 v_or320_3 v_add_4;
(*   %shl.4 = shl i32 %xor.4, 16 *)
shls discard_257 v_shl_4 v_xor_4 16;
(*   %shr.4 = lshr i32 %xor.4, 16 *)
(* You may need to modify here *)
split v_shr_4 tmp_to_be_used v_xor_4 16;
(*   %or.4 = or i32 %shl.4, %shr.4 *)
(* You may need to modify here *)
or uint32 v_or_4 v_shl_4 v_shr_4;
(*   %add16.4 = add i32 %or.4, %add380.3 *)
adds discard_258 v_add16_4 v_or_4 v_add380_3;
(*   %xor20.4 = xor i32 %add16.4, %or446.3 *)
(* You may need to modify here *)
xor uint32 v_xor20_4 v_add16_4 v_or446_3;
(*   %shl21.4 = shl i32 %xor20.4, 12 *)
shls discard_259 v_shl21_4 v_xor20_4 12;
(*   %shr25.4 = lshr i32 %xor20.4, 20 *)
(* You may need to modify here *)
split v_shr25_4 tmp_to_be_used v_xor20_4 20;
(*   %or26.4 = or i32 %shl21.4, %shr25.4 *)
(* You may need to modify here *)
or uint32 v_or26_4 v_shl21_4 v_shr25_4;
(*   %add30.4 = add i32 %or26.4, %add.4 *)
adds discard_260 v_add30_4 v_or26_4 v_add_4;
(*   %xor34.4 = xor i32 %add30.4, %or.4 *)
(* You may need to modify here *)
xor uint32 v_xor34_4 v_add30_4 v_or_4;
(*   %shl35.4 = shl i32 %xor34.4, 8 *)
shls discard_261 v_shl35_4 v_xor34_4 8;
(*   %shr39.4 = lshr i32 %xor34.4, 24 *)
(* You may need to modify here *)
split v_shr39_4 tmp_to_be_used v_xor34_4 24;
(*   %or40.4 = or i32 %shl35.4, %shr39.4 *)
(* You may need to modify here *)
or uint32 v_or40_4 v_shl35_4 v_shr39_4;
(*   %add44.4 = add i32 %or40.4, %add16.4 *)
adds discard_262 v_add44_4 v_or40_4 v_add16_4;
(*   %xor48.4 = xor i32 %add44.4, %or26.4 *)
(* You may need to modify here *)
xor uint32 v_xor48_4 v_add44_4 v_or26_4;
(*   %shl49.4 = shl i32 %xor48.4, 7 *)
shls discard_263 v_shl49_4 v_xor48_4 7;
(*   %shr53.4 = lshr i32 %xor48.4, 25 *)
(* You may need to modify here *)
split v_shr53_4 tmp_to_be_used v_xor48_4 25;
(*   %or54.4 = or i32 %shl49.4, %shr53.4 *)
(* You may need to modify here *)
or uint32 v_or54_4 v_shl49_4 v_shr53_4;
(*   %add58.4 = add i32 %or278.3, %add310.3 *)
adds discard_264 v_add58_4 v_or278_3 v_add310_3;
(*   %xor62.4 = xor i32 %or376.3, %add58.4 *)
(* You may need to modify here *)
xor uint32 v_xor62_4 v_or376_3 v_add58_4;
(*   %shl63.4 = shl i32 %xor62.4, 16 *)
shls discard_265 v_shl63_4 v_xor62_4 16;
(*   %shr67.4 = lshr i32 %xor62.4, 16 *)
(* You may need to modify here *)
split v_shr67_4 tmp_to_be_used v_xor62_4 16;
(*   %or68.4 = or i32 %shl63.4, %shr67.4 *)
(* You may need to modify here *)
or uint32 v_or68_4 v_shl63_4 v_shr67_4;
(*   %add72.4 = add i32 %or68.4, %add436.3 *)
adds discard_266 v_add72_4 v_or68_4 v_add436_3;
(*   %xor76.4 = xor i32 %add72.4, %or278.3 *)
(* You may need to modify here *)
xor uint32 v_xor76_4 v_add72_4 v_or278_3;
(*   %shl77.4 = shl i32 %xor76.4, 12 *)
shls discard_267 v_shl77_4 v_xor76_4 12;
(*   %shr81.4 = lshr i32 %xor76.4, 20 *)
(* You may need to modify here *)
split v_shr81_4 tmp_to_be_used v_xor76_4 20;
(*   %or82.4 = or i32 %shl77.4, %shr81.4 *)
(* You may need to modify here *)
or uint32 v_or82_4 v_shl77_4 v_shr81_4;
(*   %add86.4 = add i32 %or82.4, %add58.4 *)
adds discard_268 v_add86_4 v_or82_4 v_add58_4;
(*   %xor90.4 = xor i32 %add86.4, %or68.4 *)
(* You may need to modify here *)
xor uint32 v_xor90_4 v_add86_4 v_or68_4;
(*   %shl91.4 = shl i32 %xor90.4, 8 *)
shls discard_269 v_shl91_4 v_xor90_4 8;
(*   %shr95.4 = lshr i32 %xor90.4, 24 *)
(* You may need to modify here *)
split v_shr95_4 tmp_to_be_used v_xor90_4 24;
(*   %or96.4 = or i32 %shl91.4, %shr95.4 *)
(* You may need to modify here *)
or uint32 v_or96_4 v_shl91_4 v_shr95_4;
(*   %add100.4 = add i32 %or96.4, %add72.4 *)
adds discard_270 v_add100_4 v_or96_4 v_add72_4;
(*   %xor104.4 = xor i32 %add100.4, %or82.4 *)
(* You may need to modify here *)
xor uint32 v_xor104_4 v_add100_4 v_or82_4;
(*   %shl105.4 = shl i32 %xor104.4, 7 *)
shls discard_271 v_shl105_4 v_xor104_4 7;
(*   %shr109.4 = lshr i32 %xor104.4, 25 *)
(* You may need to modify here *)
split v_shr109_4 tmp_to_be_used v_xor104_4 25;
(*   %or110.4 = or i32 %shl105.4, %shr109.4 *)
(* You may need to modify here *)
or uint32 v_or110_4 v_shl105_4 v_shr109_4;
(*   %add114.4 = add i32 %or334.3, %add366.3 *)
adds discard_272 v_add114_4 v_or334_3 v_add366_3;
(*   %xor118.4 = xor i32 %or432.3, %add114.4 *)
(* You may need to modify here *)
xor uint32 v_xor118_4 v_or432_3 v_add114_4;
(*   %shl119.4 = shl i32 %xor118.4, 16 *)
shls discard_273 v_shl119_4 v_xor118_4 16;
(*   %shr123.4 = lshr i32 %xor118.4, 16 *)
(* You may need to modify here *)
split v_shr123_4 tmp_to_be_used v_xor118_4 16;
(*   %or124.4 = or i32 %shl119.4, %shr123.4 *)
(* You may need to modify here *)
or uint32 v_or124_4 v_shl119_4 v_shr123_4;
(*   %add128.4 = add i32 %or124.4, %add268.3 *)
adds discard_274 v_add128_4 v_or124_4 v_add268_3;
(*   %xor132.4 = xor i32 %add128.4, %or334.3 *)
(* You may need to modify here *)
xor uint32 v_xor132_4 v_add128_4 v_or334_3;
(*   %shl133.4 = shl i32 %xor132.4, 12 *)
shls discard_275 v_shl133_4 v_xor132_4 12;
(*   %shr137.4 = lshr i32 %xor132.4, 20 *)
(* You may need to modify here *)
split v_shr137_4 tmp_to_be_used v_xor132_4 20;
(*   %or138.4 = or i32 %shl133.4, %shr137.4 *)
(* You may need to modify here *)
or uint32 v_or138_4 v_shl133_4 v_shr137_4;
(*   %add142.4 = add i32 %or138.4, %add114.4 *)
adds discard_276 v_add142_4 v_or138_4 v_add114_4;
(*   %xor146.4 = xor i32 %add142.4, %or124.4 *)
(* You may need to modify here *)
xor uint32 v_xor146_4 v_add142_4 v_or124_4;
(*   %shl147.4 = shl i32 %xor146.4, 8 *)
shls discard_277 v_shl147_4 v_xor146_4 8;
(*   %shr151.4 = lshr i32 %xor146.4, 24 *)
(* You may need to modify here *)
split v_shr151_4 tmp_to_be_used v_xor146_4 24;
(*   %or152.4 = or i32 %shl147.4, %shr151.4 *)
(* You may need to modify here *)
or uint32 v_or152_4 v_shl147_4 v_shr151_4;
(*   %add156.4 = add i32 %or152.4, %add128.4 *)
adds discard_278 v_add156_4 v_or152_4 v_add128_4;
(*   %xor160.4 = xor i32 %add156.4, %or138.4 *)
(* You may need to modify here *)
xor uint32 v_xor160_4 v_add156_4 v_or138_4;
(*   %shl161.4 = shl i32 %xor160.4, 7 *)
shls discard_279 v_shl161_4 v_xor160_4 7;
(*   %shr165.4 = lshr i32 %xor160.4, 25 *)
(* You may need to modify here *)
split v_shr165_4 tmp_to_be_used v_xor160_4 25;
(*   %or166.4 = or i32 %shl161.4, %shr165.4 *)
(* You may need to modify here *)
or uint32 v_or166_4 v_shl161_4 v_shr165_4;
(*   %add170.4 = add i32 %or390.3, %add422.3 *)
adds discard_280 v_add170_4 v_or390_3 v_add422_3;
(*   %xor174.4 = xor i32 %or264.3, %add170.4 *)
(* You may need to modify here *)
xor uint32 v_xor174_4 v_or264_3 v_add170_4;
(*   %shl175.4 = shl i32 %xor174.4, 16 *)
shls discard_281 v_shl175_4 v_xor174_4 16;
(*   %shr179.4 = lshr i32 %xor174.4, 16 *)
(* You may need to modify here *)
split v_shr179_4 tmp_to_be_used v_xor174_4 16;
(*   %or180.4 = or i32 %shl175.4, %shr179.4 *)
(* You may need to modify here *)
or uint32 v_or180_4 v_shl175_4 v_shr179_4;
(*   %add184.4 = add i32 %or180.4, %add324.3 *)
adds discard_282 v_add184_4 v_or180_4 v_add324_3;
(*   %xor188.4 = xor i32 %add184.4, %or390.3 *)
(* You may need to modify here *)
xor uint32 v_xor188_4 v_add184_4 v_or390_3;
(*   %shl189.4 = shl i32 %xor188.4, 12 *)
shls discard_283 v_shl189_4 v_xor188_4 12;
(*   %shr193.4 = lshr i32 %xor188.4, 20 *)
(* You may need to modify here *)
split v_shr193_4 tmp_to_be_used v_xor188_4 20;
(*   %or194.4 = or i32 %shl189.4, %shr193.4 *)
(* You may need to modify here *)
or uint32 v_or194_4 v_shl189_4 v_shr193_4;
(*   %add198.4 = add i32 %or194.4, %add170.4 *)
adds discard_284 v_add198_4 v_or194_4 v_add170_4;
(*   %xor202.4 = xor i32 %add198.4, %or180.4 *)
(* You may need to modify here *)
xor uint32 v_xor202_4 v_add198_4 v_or180_4;
(*   %shl203.4 = shl i32 %xor202.4, 8 *)
shls discard_285 v_shl203_4 v_xor202_4 8;
(*   %shr207.4 = lshr i32 %xor202.4, 24 *)
(* You may need to modify here *)
split v_shr207_4 tmp_to_be_used v_xor202_4 24;
(*   %or208.4 = or i32 %shl203.4, %shr207.4 *)
(* You may need to modify here *)
or uint32 v_or208_4 v_shl203_4 v_shr207_4;
(*   %add212.4 = add i32 %or208.4, %add184.4 *)
adds discard_286 v_add212_4 v_or208_4 v_add184_4;
(*   %xor216.4 = xor i32 %add212.4, %or194.4 *)
(* You may need to modify here *)
xor uint32 v_xor216_4 v_add212_4 v_or194_4;
(*   %shl217.4 = shl i32 %xor216.4, 7 *)
shls discard_287 v_shl217_4 v_xor216_4 7;
(*   %shr221.4 = lshr i32 %xor216.4, 25 *)
(* You may need to modify here *)
split v_shr221_4 tmp_to_be_used v_xor216_4 25;
(*   %or222.4 = or i32 %shl217.4, %shr221.4 *)
(* You may need to modify here *)
or uint32 v_or222_4 v_shl217_4 v_shr221_4;
(*   %add226.4 = add i32 %or110.4, %add30.4 *)
adds discard_288 v_add226_4 v_or110_4 v_add30_4;
(*   %xor230.4 = xor i32 %or208.4, %add226.4 *)
(* You may need to modify here *)
xor uint32 v_xor230_4 v_or208_4 v_add226_4;
(*   %shl231.4 = shl i32 %xor230.4, 16 *)
shls discard_289 v_shl231_4 v_xor230_4 16;
(*   %shr235.4 = lshr i32 %xor230.4, 16 *)
(* You may need to modify here *)
split v_shr235_4 tmp_to_be_used v_xor230_4 16;
(*   %or236.4 = or i32 %shl231.4, %shr235.4 *)
(* You may need to modify here *)
or uint32 v_or236_4 v_shl231_4 v_shr235_4;
(*   %add240.4 = add i32 %or236.4, %add156.4 *)
adds discard_290 v_add240_4 v_or236_4 v_add156_4;
(*   %xor244.4 = xor i32 %add240.4, %or110.4 *)
(* You may need to modify here *)
xor uint32 v_xor244_4 v_add240_4 v_or110_4;
(*   %shl245.4 = shl i32 %xor244.4, 12 *)
shls discard_291 v_shl245_4 v_xor244_4 12;
(*   %shr249.4 = lshr i32 %xor244.4, 20 *)
(* You may need to modify here *)
split v_shr249_4 tmp_to_be_used v_xor244_4 20;
(*   %or250.4 = or i32 %shl245.4, %shr249.4 *)
(* You may need to modify here *)
or uint32 v_or250_4 v_shl245_4 v_shr249_4;
(*   %add254.4 = add i32 %or250.4, %add226.4 *)
adds discard_292 v_add254_4 v_or250_4 v_add226_4;
(*   %xor258.4 = xor i32 %add254.4, %or236.4 *)
(* You may need to modify here *)
xor uint32 v_xor258_4 v_add254_4 v_or236_4;
(*   %shl259.4 = shl i32 %xor258.4, 8 *)
shls discard_293 v_shl259_4 v_xor258_4 8;
(*   %shr263.4 = lshr i32 %xor258.4, 24 *)
(* You may need to modify here *)
split v_shr263_4 tmp_to_be_used v_xor258_4 24;
(*   %or264.4 = or i32 %shl259.4, %shr263.4 *)
(* You may need to modify here *)
or uint32 v_or264_4 v_shl259_4 v_shr263_4;
(*   %add268.4 = add i32 %or264.4, %add240.4 *)
adds discard_294 v_add268_4 v_or264_4 v_add240_4;
(*   %xor272.4 = xor i32 %add268.4, %or250.4 *)
(* You may need to modify here *)
xor uint32 v_xor272_4 v_add268_4 v_or250_4;
(*   %shl273.4 = shl i32 %xor272.4, 7 *)
shls discard_295 v_shl273_4 v_xor272_4 7;
(*   %shr277.4 = lshr i32 %xor272.4, 25 *)
(* You may need to modify here *)
split v_shr277_4 tmp_to_be_used v_xor272_4 25;
(*   %or278.4 = or i32 %shl273.4, %shr277.4 *)
(* You may need to modify here *)
or uint32 v_or278_4 v_shl273_4 v_shr277_4;
(*   %add282.4 = add i32 %or166.4, %add86.4 *)
adds discard_296 v_add282_4 v_or166_4 v_add86_4;
(*   %xor286.4 = xor i32 %add282.4, %or40.4 *)
(* You may need to modify here *)
xor uint32 v_xor286_4 v_add282_4 v_or40_4;
(*   %shl287.4 = shl i32 %xor286.4, 16 *)
shls discard_297 v_shl287_4 v_xor286_4 16;
(*   %shr291.4 = lshr i32 %xor286.4, 16 *)
(* You may need to modify here *)
split v_shr291_4 tmp_to_be_used v_xor286_4 16;
(*   %or292.4 = or i32 %shl287.4, %shr291.4 *)
(* You may need to modify here *)
or uint32 v_or292_4 v_shl287_4 v_shr291_4;
(*   %add296.4 = add i32 %add212.4, %or292.4 *)
adds discard_298 v_add296_4 v_add212_4 v_or292_4;
(*   %xor300.4 = xor i32 %add296.4, %or166.4 *)
(* You may need to modify here *)
xor uint32 v_xor300_4 v_add296_4 v_or166_4;
(*   %shl301.4 = shl i32 %xor300.4, 12 *)
shls discard_299 v_shl301_4 v_xor300_4 12;
(*   %shr305.4 = lshr i32 %xor300.4, 20 *)
(* You may need to modify here *)
split v_shr305_4 tmp_to_be_used v_xor300_4 20;
(*   %or306.4 = or i32 %shl301.4, %shr305.4 *)
(* You may need to modify here *)
or uint32 v_or306_4 v_shl301_4 v_shr305_4;
(*   %add310.4 = add i32 %or306.4, %add282.4 *)
adds discard_300 v_add310_4 v_or306_4 v_add282_4;
(*   %xor314.4 = xor i32 %add310.4, %or292.4 *)
(* You may need to modify here *)
xor uint32 v_xor314_4 v_add310_4 v_or292_4;
(*   %shl315.4 = shl i32 %xor314.4, 8 *)
shls discard_301 v_shl315_4 v_xor314_4 8;
(*   %shr319.4 = lshr i32 %xor314.4, 24 *)
(* You may need to modify here *)
split v_shr319_4 tmp_to_be_used v_xor314_4 24;
(*   %or320.4 = or i32 %shl315.4, %shr319.4 *)
(* You may need to modify here *)
or uint32 v_or320_4 v_shl315_4 v_shr319_4;
(*   %add324.4 = add i32 %or320.4, %add296.4 *)
adds discard_302 v_add324_4 v_or320_4 v_add296_4;
(*   %xor328.4 = xor i32 %add324.4, %or306.4 *)
(* You may need to modify here *)
xor uint32 v_xor328_4 v_add324_4 v_or306_4;
(*   %shl329.4 = shl i32 %xor328.4, 7 *)
shls discard_303 v_shl329_4 v_xor328_4 7;
(*   %shr333.4 = lshr i32 %xor328.4, 25 *)
(* You may need to modify here *)
split v_shr333_4 tmp_to_be_used v_xor328_4 25;
(*   %or334.4 = or i32 %shl329.4, %shr333.4 *)
(* You may need to modify here *)
or uint32 v_or334_4 v_shl329_4 v_shr333_4;
(*   %add338.4 = add i32 %or222.4, %add142.4 *)
adds discard_304 v_add338_4 v_or222_4 v_add142_4;
(*   %xor342.4 = xor i32 %add338.4, %or96.4 *)
(* You may need to modify here *)
xor uint32 v_xor342_4 v_add338_4 v_or96_4;
(*   %shl343.4 = shl i32 %xor342.4, 16 *)
shls discard_305 v_shl343_4 v_xor342_4 16;
(*   %shr347.4 = lshr i32 %xor342.4, 16 *)
(* You may need to modify here *)
split v_shr347_4 tmp_to_be_used v_xor342_4 16;
(*   %or348.4 = or i32 %shl343.4, %shr347.4 *)
(* You may need to modify here *)
or uint32 v_or348_4 v_shl343_4 v_shr347_4;
(*   %add352.4 = add i32 %or348.4, %add44.4 *)
adds discard_306 v_add352_4 v_or348_4 v_add44_4;
(*   %xor356.4 = xor i32 %add352.4, %or222.4 *)
(* You may need to modify here *)
xor uint32 v_xor356_4 v_add352_4 v_or222_4;
(*   %shl357.4 = shl i32 %xor356.4, 12 *)
shls discard_307 v_shl357_4 v_xor356_4 12;
(*   %shr361.4 = lshr i32 %xor356.4, 20 *)
(* You may need to modify here *)
split v_shr361_4 tmp_to_be_used v_xor356_4 20;
(*   %or362.4 = or i32 %shl357.4, %shr361.4 *)
(* You may need to modify here *)
or uint32 v_or362_4 v_shl357_4 v_shr361_4;
(*   %add366.4 = add i32 %or362.4, %add338.4 *)
adds discard_308 v_add366_4 v_or362_4 v_add338_4;
(*   %xor370.4 = xor i32 %add366.4, %or348.4 *)
(* You may need to modify here *)
xor uint32 v_xor370_4 v_add366_4 v_or348_4;
(*   %shl371.4 = shl i32 %xor370.4, 8 *)
shls discard_309 v_shl371_4 v_xor370_4 8;
(*   %shr375.4 = lshr i32 %xor370.4, 24 *)
(* You may need to modify here *)
split v_shr375_4 tmp_to_be_used v_xor370_4 24;
(*   %or376.4 = or i32 %shl371.4, %shr375.4 *)
(* You may need to modify here *)
or uint32 v_or376_4 v_shl371_4 v_shr375_4;
(*   %add380.4 = add i32 %or376.4, %add352.4 *)
adds discard_310 v_add380_4 v_or376_4 v_add352_4;
(*   %xor384.4 = xor i32 %add380.4, %or362.4 *)
(* You may need to modify here *)
xor uint32 v_xor384_4 v_add380_4 v_or362_4;
(*   %shl385.4 = shl i32 %xor384.4, 7 *)
shls discard_311 v_shl385_4 v_xor384_4 7;
(*   %shr389.4 = lshr i32 %xor384.4, 25 *)
(* You may need to modify here *)
split v_shr389_4 tmp_to_be_used v_xor384_4 25;
(*   %or390.4 = or i32 %shl385.4, %shr389.4 *)
(* You may need to modify here *)
or uint32 v_or390_4 v_shl385_4 v_shr389_4;
(*   %add394.4 = add i32 %add198.4, %or54.4 *)
adds discard_312 v_add394_4 v_add198_4 v_or54_4;
(*   %xor398.4 = xor i32 %add394.4, %or152.4 *)
(* You may need to modify here *)
xor uint32 v_xor398_4 v_add394_4 v_or152_4;
(*   %shl399.4 = shl i32 %xor398.4, 16 *)
shls discard_313 v_shl399_4 v_xor398_4 16;
(*   %shr403.4 = lshr i32 %xor398.4, 16 *)
(* You may need to modify here *)
split v_shr403_4 tmp_to_be_used v_xor398_4 16;
(*   %or404.4 = or i32 %shl399.4, %shr403.4 *)
(* You may need to modify here *)
or uint32 v_or404_4 v_shl399_4 v_shr403_4;
(*   %add408.4 = add i32 %or404.4, %add100.4 *)
adds discard_314 v_add408_4 v_or404_4 v_add100_4;
(*   %xor412.4 = xor i32 %add408.4, %or54.4 *)
(* You may need to modify here *)
xor uint32 v_xor412_4 v_add408_4 v_or54_4;
(*   %shl413.4 = shl i32 %xor412.4, 12 *)
shls discard_315 v_shl413_4 v_xor412_4 12;
(*   %shr417.4 = lshr i32 %xor412.4, 20 *)
(* You may need to modify here *)
split v_shr417_4 tmp_to_be_used v_xor412_4 20;
(*   %or418.4 = or i32 %shl413.4, %shr417.4 *)
(* You may need to modify here *)
or uint32 v_or418_4 v_shl413_4 v_shr417_4;
(*   %add422.4 = add i32 %or418.4, %add394.4 *)
adds discard_316 v_add422_4 v_or418_4 v_add394_4;
(*   %xor426.4 = xor i32 %add422.4, %or404.4 *)
(* You may need to modify here *)
xor uint32 v_xor426_4 v_add422_4 v_or404_4;
(*   %shl427.4 = shl i32 %xor426.4, 8 *)
shls discard_317 v_shl427_4 v_xor426_4 8;
(*   %shr431.4 = lshr i32 %xor426.4, 24 *)
(* You may need to modify here *)
split v_shr431_4 tmp_to_be_used v_xor426_4 24;
(*   %or432.4 = or i32 %shl427.4, %shr431.4 *)
(* You may need to modify here *)
or uint32 v_or432_4 v_shl427_4 v_shr431_4;
(*   %add436.4 = add i32 %or432.4, %add408.4 *)
adds discard_318 v_add436_4 v_or432_4 v_add408_4;
(*   %xor440.4 = xor i32 %add436.4, %or418.4 *)
(* You may need to modify here *)
xor uint32 v_xor440_4 v_add436_4 v_or418_4;
(*   %shl441.4 = shl i32 %xor440.4, 7 *)
shls discard_319 v_shl441_4 v_xor440_4 7;
(*   %shr445.4 = lshr i32 %xor440.4, 25 *)
(* You may need to modify here *)
split v_shr445_4 tmp_to_be_used v_xor440_4 25;
(*   %or446.4 = or i32 %shl441.4, %shr445.4 *)
(* You may need to modify here *)
or uint32 v_or446_4 v_shl441_4 v_shr445_4;
(*   %add.5 = add i32 %or446.4, %add254.4 *)
adds discard_320 v_add_5 v_or446_4 v_add254_4;
(*   %xor.5 = xor i32 %or320.4, %add.5 *)
(* You may need to modify here *)
xor uint32 v_xor_5 v_or320_4 v_add_5;
(*   %shl.5 = shl i32 %xor.5, 16 *)
shls discard_321 v_shl_5 v_xor_5 16;
(*   %shr.5 = lshr i32 %xor.5, 16 *)
(* You may need to modify here *)
split v_shr_5 tmp_to_be_used v_xor_5 16;
(*   %or.5 = or i32 %shl.5, %shr.5 *)
(* You may need to modify here *)
or uint32 v_or_5 v_shl_5 v_shr_5;
(*   %add16.5 = add i32 %or.5, %add380.4 *)
adds discard_322 v_add16_5 v_or_5 v_add380_4;
(*   %xor20.5 = xor i32 %add16.5, %or446.4 *)
(* You may need to modify here *)
xor uint32 v_xor20_5 v_add16_5 v_or446_4;
(*   %shl21.5 = shl i32 %xor20.5, 12 *)
shls discard_323 v_shl21_5 v_xor20_5 12;
(*   %shr25.5 = lshr i32 %xor20.5, 20 *)
(* You may need to modify here *)
split v_shr25_5 tmp_to_be_used v_xor20_5 20;
(*   %or26.5 = or i32 %shl21.5, %shr25.5 *)
(* You may need to modify here *)
or uint32 v_or26_5 v_shl21_5 v_shr25_5;
(*   %add30.5 = add i32 %or26.5, %add.5 *)
adds discard_324 v_add30_5 v_or26_5 v_add_5;
(*   %xor34.5 = xor i32 %add30.5, %or.5 *)
(* You may need to modify here *)
xor uint32 v_xor34_5 v_add30_5 v_or_5;
(*   %shl35.5 = shl i32 %xor34.5, 8 *)
shls discard_325 v_shl35_5 v_xor34_5 8;
(*   %shr39.5 = lshr i32 %xor34.5, 24 *)
(* You may need to modify here *)
split v_shr39_5 tmp_to_be_used v_xor34_5 24;
(*   %or40.5 = or i32 %shl35.5, %shr39.5 *)
(* You may need to modify here *)
or uint32 v_or40_5 v_shl35_5 v_shr39_5;
(*   %add44.5 = add i32 %or40.5, %add16.5 *)
adds discard_326 v_add44_5 v_or40_5 v_add16_5;
(*   %xor48.5 = xor i32 %add44.5, %or26.5 *)
(* You may need to modify here *)
xor uint32 v_xor48_5 v_add44_5 v_or26_5;
(*   %shl49.5 = shl i32 %xor48.5, 7 *)
shls discard_327 v_shl49_5 v_xor48_5 7;
(*   %shr53.5 = lshr i32 %xor48.5, 25 *)
(* You may need to modify here *)
split v_shr53_5 tmp_to_be_used v_xor48_5 25;
(*   %or54.5 = or i32 %shl49.5, %shr53.5 *)
(* You may need to modify here *)
or uint32 v_or54_5 v_shl49_5 v_shr53_5;
(*   %add58.5 = add i32 %or278.4, %add310.4 *)
adds discard_328 v_add58_5 v_or278_4 v_add310_4;
(*   %xor62.5 = xor i32 %or376.4, %add58.5 *)
(* You may need to modify here *)
xor uint32 v_xor62_5 v_or376_4 v_add58_5;
(*   %shl63.5 = shl i32 %xor62.5, 16 *)
shls discard_329 v_shl63_5 v_xor62_5 16;
(*   %shr67.5 = lshr i32 %xor62.5, 16 *)
(* You may need to modify here *)
split v_shr67_5 tmp_to_be_used v_xor62_5 16;
(*   %or68.5 = or i32 %shl63.5, %shr67.5 *)
(* You may need to modify here *)
or uint32 v_or68_5 v_shl63_5 v_shr67_5;
(*   %add72.5 = add i32 %or68.5, %add436.4 *)
adds discard_330 v_add72_5 v_or68_5 v_add436_4;
(*   %xor76.5 = xor i32 %add72.5, %or278.4 *)
(* You may need to modify here *)
xor uint32 v_xor76_5 v_add72_5 v_or278_4;
(*   %shl77.5 = shl i32 %xor76.5, 12 *)
shls discard_331 v_shl77_5 v_xor76_5 12;
(*   %shr81.5 = lshr i32 %xor76.5, 20 *)
(* You may need to modify here *)
split v_shr81_5 tmp_to_be_used v_xor76_5 20;
(*   %or82.5 = or i32 %shl77.5, %shr81.5 *)
(* You may need to modify here *)
or uint32 v_or82_5 v_shl77_5 v_shr81_5;
(*   %add86.5 = add i32 %or82.5, %add58.5 *)
adds discard_332 v_add86_5 v_or82_5 v_add58_5;
(*   %xor90.5 = xor i32 %add86.5, %or68.5 *)
(* You may need to modify here *)
xor uint32 v_xor90_5 v_add86_5 v_or68_5;
(*   %shl91.5 = shl i32 %xor90.5, 8 *)
shls discard_333 v_shl91_5 v_xor90_5 8;
(*   %shr95.5 = lshr i32 %xor90.5, 24 *)
(* You may need to modify here *)
split v_shr95_5 tmp_to_be_used v_xor90_5 24;
(*   %or96.5 = or i32 %shl91.5, %shr95.5 *)
(* You may need to modify here *)
or uint32 v_or96_5 v_shl91_5 v_shr95_5;
(*   %add100.5 = add i32 %or96.5, %add72.5 *)
adds discard_334 v_add100_5 v_or96_5 v_add72_5;
(*   %xor104.5 = xor i32 %add100.5, %or82.5 *)
(* You may need to modify here *)
xor uint32 v_xor104_5 v_add100_5 v_or82_5;
(*   %shl105.5 = shl i32 %xor104.5, 7 *)
shls discard_335 v_shl105_5 v_xor104_5 7;
(*   %shr109.5 = lshr i32 %xor104.5, 25 *)
(* You may need to modify here *)
split v_shr109_5 tmp_to_be_used v_xor104_5 25;
(*   %or110.5 = or i32 %shl105.5, %shr109.5 *)
(* You may need to modify here *)
or uint32 v_or110_5 v_shl105_5 v_shr109_5;
(*   %add114.5 = add i32 %or334.4, %add366.4 *)
adds discard_336 v_add114_5 v_or334_4 v_add366_4;
(*   %xor118.5 = xor i32 %or432.4, %add114.5 *)
(* You may need to modify here *)
xor uint32 v_xor118_5 v_or432_4 v_add114_5;
(*   %shl119.5 = shl i32 %xor118.5, 16 *)
shls discard_337 v_shl119_5 v_xor118_5 16;
(*   %shr123.5 = lshr i32 %xor118.5, 16 *)
(* You may need to modify here *)
split v_shr123_5 tmp_to_be_used v_xor118_5 16;
(*   %or124.5 = or i32 %shl119.5, %shr123.5 *)
(* You may need to modify here *)
or uint32 v_or124_5 v_shl119_5 v_shr123_5;
(*   %add128.5 = add i32 %or124.5, %add268.4 *)
adds discard_338 v_add128_5 v_or124_5 v_add268_4;
(*   %xor132.5 = xor i32 %add128.5, %or334.4 *)
(* You may need to modify here *)
xor uint32 v_xor132_5 v_add128_5 v_or334_4;
(*   %shl133.5 = shl i32 %xor132.5, 12 *)
shls discard_339 v_shl133_5 v_xor132_5 12;
(*   %shr137.5 = lshr i32 %xor132.5, 20 *)
(* You may need to modify here *)
split v_shr137_5 tmp_to_be_used v_xor132_5 20;
(*   %or138.5 = or i32 %shl133.5, %shr137.5 *)
(* You may need to modify here *)
or uint32 v_or138_5 v_shl133_5 v_shr137_5;
(*   %add142.5 = add i32 %or138.5, %add114.5 *)
adds discard_340 v_add142_5 v_or138_5 v_add114_5;
(*   %xor146.5 = xor i32 %add142.5, %or124.5 *)
(* You may need to modify here *)
xor uint32 v_xor146_5 v_add142_5 v_or124_5;
(*   %shl147.5 = shl i32 %xor146.5, 8 *)
shls discard_341 v_shl147_5 v_xor146_5 8;
(*   %shr151.5 = lshr i32 %xor146.5, 24 *)
(* You may need to modify here *)
split v_shr151_5 tmp_to_be_used v_xor146_5 24;
(*   %or152.5 = or i32 %shl147.5, %shr151.5 *)
(* You may need to modify here *)
or uint32 v_or152_5 v_shl147_5 v_shr151_5;
(*   %add156.5 = add i32 %or152.5, %add128.5 *)
adds discard_342 v_add156_5 v_or152_5 v_add128_5;
(*   %xor160.5 = xor i32 %add156.5, %or138.5 *)
(* You may need to modify here *)
xor uint32 v_xor160_5 v_add156_5 v_or138_5;
(*   %shl161.5 = shl i32 %xor160.5, 7 *)
shls discard_343 v_shl161_5 v_xor160_5 7;
(*   %shr165.5 = lshr i32 %xor160.5, 25 *)
(* You may need to modify here *)
split v_shr165_5 tmp_to_be_used v_xor160_5 25;
(*   %or166.5 = or i32 %shl161.5, %shr165.5 *)
(* You may need to modify here *)
or uint32 v_or166_5 v_shl161_5 v_shr165_5;
(*   %add170.5 = add i32 %or390.4, %add422.4 *)
adds discard_344 v_add170_5 v_or390_4 v_add422_4;
(*   %xor174.5 = xor i32 %or264.4, %add170.5 *)
(* You may need to modify here *)
xor uint32 v_xor174_5 v_or264_4 v_add170_5;
(*   %shl175.5 = shl i32 %xor174.5, 16 *)
shls discard_345 v_shl175_5 v_xor174_5 16;
(*   %shr179.5 = lshr i32 %xor174.5, 16 *)
(* You may need to modify here *)
split v_shr179_5 tmp_to_be_used v_xor174_5 16;
(*   %or180.5 = or i32 %shl175.5, %shr179.5 *)
(* You may need to modify here *)
or uint32 v_or180_5 v_shl175_5 v_shr179_5;
(*   %add184.5 = add i32 %or180.5, %add324.4 *)
adds discard_346 v_add184_5 v_or180_5 v_add324_4;
(*   %xor188.5 = xor i32 %add184.5, %or390.4 *)
(* You may need to modify here *)
xor uint32 v_xor188_5 v_add184_5 v_or390_4;
(*   %shl189.5 = shl i32 %xor188.5, 12 *)
shls discard_347 v_shl189_5 v_xor188_5 12;
(*   %shr193.5 = lshr i32 %xor188.5, 20 *)
(* You may need to modify here *)
split v_shr193_5 tmp_to_be_used v_xor188_5 20;
(*   %or194.5 = or i32 %shl189.5, %shr193.5 *)
(* You may need to modify here *)
or uint32 v_or194_5 v_shl189_5 v_shr193_5;
(*   %add198.5 = add i32 %or194.5, %add170.5 *)
adds discard_348 v_add198_5 v_or194_5 v_add170_5;
(*   %xor202.5 = xor i32 %add198.5, %or180.5 *)
(* You may need to modify here *)
xor uint32 v_xor202_5 v_add198_5 v_or180_5;
(*   %shl203.5 = shl i32 %xor202.5, 8 *)
shls discard_349 v_shl203_5 v_xor202_5 8;
(*   %shr207.5 = lshr i32 %xor202.5, 24 *)
(* You may need to modify here *)
split v_shr207_5 tmp_to_be_used v_xor202_5 24;
(*   %or208.5 = or i32 %shl203.5, %shr207.5 *)
(* You may need to modify here *)
or uint32 v_or208_5 v_shl203_5 v_shr207_5;
(*   %add212.5 = add i32 %or208.5, %add184.5 *)
adds discard_350 v_add212_5 v_or208_5 v_add184_5;
(*   %xor216.5 = xor i32 %add212.5, %or194.5 *)
(* You may need to modify here *)
xor uint32 v_xor216_5 v_add212_5 v_or194_5;
(*   %shl217.5 = shl i32 %xor216.5, 7 *)
shls discard_351 v_shl217_5 v_xor216_5 7;
(*   %shr221.5 = lshr i32 %xor216.5, 25 *)
(* You may need to modify here *)
split v_shr221_5 tmp_to_be_used v_xor216_5 25;
(*   %or222.5 = or i32 %shl217.5, %shr221.5 *)
(* You may need to modify here *)
or uint32 v_or222_5 v_shl217_5 v_shr221_5;
(*   %add226.5 = add i32 %or110.5, %add30.5 *)
adds discard_352 v_add226_5 v_or110_5 v_add30_5;
(*   %xor230.5 = xor i32 %or208.5, %add226.5 *)
(* You may need to modify here *)
xor uint32 v_xor230_5 v_or208_5 v_add226_5;
(*   %shl231.5 = shl i32 %xor230.5, 16 *)
shls discard_353 v_shl231_5 v_xor230_5 16;
(*   %shr235.5 = lshr i32 %xor230.5, 16 *)
(* You may need to modify here *)
split v_shr235_5 tmp_to_be_used v_xor230_5 16;
(*   %or236.5 = or i32 %shl231.5, %shr235.5 *)
(* You may need to modify here *)
or uint32 v_or236_5 v_shl231_5 v_shr235_5;
(*   %add240.5 = add i32 %or236.5, %add156.5 *)
adds discard_354 v_add240_5 v_or236_5 v_add156_5;
(*   %xor244.5 = xor i32 %add240.5, %or110.5 *)
(* You may need to modify here *)
xor uint32 v_xor244_5 v_add240_5 v_or110_5;
(*   %shl245.5 = shl i32 %xor244.5, 12 *)
shls discard_355 v_shl245_5 v_xor244_5 12;
(*   %shr249.5 = lshr i32 %xor244.5, 20 *)
(* You may need to modify here *)
split v_shr249_5 tmp_to_be_used v_xor244_5 20;
(*   %or250.5 = or i32 %shl245.5, %shr249.5 *)
(* You may need to modify here *)
or uint32 v_or250_5 v_shl245_5 v_shr249_5;
(*   %add254.5 = add i32 %or250.5, %add226.5 *)
adds discard_356 v_add254_5 v_or250_5 v_add226_5;
(*   %xor258.5 = xor i32 %add254.5, %or236.5 *)
(* You may need to modify here *)
xor uint32 v_xor258_5 v_add254_5 v_or236_5;
(*   %shl259.5 = shl i32 %xor258.5, 8 *)
shls discard_357 v_shl259_5 v_xor258_5 8;
(*   %shr263.5 = lshr i32 %xor258.5, 24 *)
(* You may need to modify here *)
split v_shr263_5 tmp_to_be_used v_xor258_5 24;
(*   %or264.5 = or i32 %shl259.5, %shr263.5 *)
(* You may need to modify here *)
or uint32 v_or264_5 v_shl259_5 v_shr263_5;
(*   %add268.5 = add i32 %or264.5, %add240.5 *)
adds discard_358 v_add268_5 v_or264_5 v_add240_5;
(*   %xor272.5 = xor i32 %add268.5, %or250.5 *)
(* You may need to modify here *)
xor uint32 v_xor272_5 v_add268_5 v_or250_5;
(*   %shl273.5 = shl i32 %xor272.5, 7 *)
shls discard_359 v_shl273_5 v_xor272_5 7;
(*   %shr277.5 = lshr i32 %xor272.5, 25 *)
(* You may need to modify here *)
split v_shr277_5 tmp_to_be_used v_xor272_5 25;
(*   %or278.5 = or i32 %shl273.5, %shr277.5 *)
(* You may need to modify here *)
or uint32 v_or278_5 v_shl273_5 v_shr277_5;
(*   %add282.5 = add i32 %or166.5, %add86.5 *)
adds discard_360 v_add282_5 v_or166_5 v_add86_5;
(*   %xor286.5 = xor i32 %add282.5, %or40.5 *)
(* You may need to modify here *)
xor uint32 v_xor286_5 v_add282_5 v_or40_5;
(*   %shl287.5 = shl i32 %xor286.5, 16 *)
shls discard_361 v_shl287_5 v_xor286_5 16;
(*   %shr291.5 = lshr i32 %xor286.5, 16 *)
(* You may need to modify here *)
split v_shr291_5 tmp_to_be_used v_xor286_5 16;
(*   %or292.5 = or i32 %shl287.5, %shr291.5 *)
(* You may need to modify here *)
or uint32 v_or292_5 v_shl287_5 v_shr291_5;
(*   %add296.5 = add i32 %add212.5, %or292.5 *)
adds discard_362 v_add296_5 v_add212_5 v_or292_5;
(*   %xor300.5 = xor i32 %add296.5, %or166.5 *)
(* You may need to modify here *)
xor uint32 v_xor300_5 v_add296_5 v_or166_5;
(*   %shl301.5 = shl i32 %xor300.5, 12 *)
shls discard_363 v_shl301_5 v_xor300_5 12;
(*   %shr305.5 = lshr i32 %xor300.5, 20 *)
(* You may need to modify here *)
split v_shr305_5 tmp_to_be_used v_xor300_5 20;
(*   %or306.5 = or i32 %shl301.5, %shr305.5 *)
(* You may need to modify here *)
or uint32 v_or306_5 v_shl301_5 v_shr305_5;
(*   %add310.5 = add i32 %or306.5, %add282.5 *)
adds discard_364 v_add310_5 v_or306_5 v_add282_5;
(*   %xor314.5 = xor i32 %add310.5, %or292.5 *)
(* You may need to modify here *)
xor uint32 v_xor314_5 v_add310_5 v_or292_5;
(*   %shl315.5 = shl i32 %xor314.5, 8 *)
shls discard_365 v_shl315_5 v_xor314_5 8;
(*   %shr319.5 = lshr i32 %xor314.5, 24 *)
(* You may need to modify here *)
split v_shr319_5 tmp_to_be_used v_xor314_5 24;
(*   %or320.5 = or i32 %shl315.5, %shr319.5 *)
(* You may need to modify here *)
or uint32 v_or320_5 v_shl315_5 v_shr319_5;
(*   %add324.5 = add i32 %or320.5, %add296.5 *)
adds discard_366 v_add324_5 v_or320_5 v_add296_5;
(*   %xor328.5 = xor i32 %add324.5, %or306.5 *)
(* You may need to modify here *)
xor uint32 v_xor328_5 v_add324_5 v_or306_5;
(*   %shl329.5 = shl i32 %xor328.5, 7 *)
shls discard_367 v_shl329_5 v_xor328_5 7;
(*   %shr333.5 = lshr i32 %xor328.5, 25 *)
(* You may need to modify here *)
split v_shr333_5 tmp_to_be_used v_xor328_5 25;
(*   %or334.5 = or i32 %shl329.5, %shr333.5 *)
(* You may need to modify here *)
or uint32 v_or334_5 v_shl329_5 v_shr333_5;
(*   %add338.5 = add i32 %or222.5, %add142.5 *)
adds discard_368 v_add338_5 v_or222_5 v_add142_5;
(*   %xor342.5 = xor i32 %add338.5, %or96.5 *)
(* You may need to modify here *)
xor uint32 v_xor342_5 v_add338_5 v_or96_5;
(*   %shl343.5 = shl i32 %xor342.5, 16 *)
shls discard_369 v_shl343_5 v_xor342_5 16;
(*   %shr347.5 = lshr i32 %xor342.5, 16 *)
(* You may need to modify here *)
split v_shr347_5 tmp_to_be_used v_xor342_5 16;
(*   %or348.5 = or i32 %shl343.5, %shr347.5 *)
(* You may need to modify here *)
or uint32 v_or348_5 v_shl343_5 v_shr347_5;
(*   %add352.5 = add i32 %or348.5, %add44.5 *)
adds discard_370 v_add352_5 v_or348_5 v_add44_5;
(*   %xor356.5 = xor i32 %add352.5, %or222.5 *)
(* You may need to modify here *)
xor uint32 v_xor356_5 v_add352_5 v_or222_5;
(*   %shl357.5 = shl i32 %xor356.5, 12 *)
shls discard_371 v_shl357_5 v_xor356_5 12;
(*   %shr361.5 = lshr i32 %xor356.5, 20 *)
(* You may need to modify here *)
split v_shr361_5 tmp_to_be_used v_xor356_5 20;
(*   %or362.5 = or i32 %shl357.5, %shr361.5 *)
(* You may need to modify here *)
or uint32 v_or362_5 v_shl357_5 v_shr361_5;
(*   %add366.5 = add i32 %or362.5, %add338.5 *)
adds discard_372 v_add366_5 v_or362_5 v_add338_5;
(*   %xor370.5 = xor i32 %add366.5, %or348.5 *)
(* You may need to modify here *)
xor uint32 v_xor370_5 v_add366_5 v_or348_5;
(*   %shl371.5 = shl i32 %xor370.5, 8 *)
shls discard_373 v_shl371_5 v_xor370_5 8;
(*   %shr375.5 = lshr i32 %xor370.5, 24 *)
(* You may need to modify here *)
split v_shr375_5 tmp_to_be_used v_xor370_5 24;
(*   %or376.5 = or i32 %shl371.5, %shr375.5 *)
(* You may need to modify here *)
or uint32 v_or376_5 v_shl371_5 v_shr375_5;
(*   %add380.5 = add i32 %or376.5, %add352.5 *)
adds discard_374 v_add380_5 v_or376_5 v_add352_5;
(*   %xor384.5 = xor i32 %add380.5, %or362.5 *)
(* You may need to modify here *)
xor uint32 v_xor384_5 v_add380_5 v_or362_5;
(*   %shl385.5 = shl i32 %xor384.5, 7 *)
shls discard_375 v_shl385_5 v_xor384_5 7;
(*   %shr389.5 = lshr i32 %xor384.5, 25 *)
(* You may need to modify here *)
split v_shr389_5 tmp_to_be_used v_xor384_5 25;
(*   %or390.5 = or i32 %shl385.5, %shr389.5 *)
(* You may need to modify here *)
or uint32 v_or390_5 v_shl385_5 v_shr389_5;
(*   %add394.5 = add i32 %add198.5, %or54.5 *)
adds discard_376 v_add394_5 v_add198_5 v_or54_5;
(*   %xor398.5 = xor i32 %add394.5, %or152.5 *)
(* You may need to modify here *)
xor uint32 v_xor398_5 v_add394_5 v_or152_5;
(*   %shl399.5 = shl i32 %xor398.5, 16 *)
shls discard_377 v_shl399_5 v_xor398_5 16;
(*   %shr403.5 = lshr i32 %xor398.5, 16 *)
(* You may need to modify here *)
split v_shr403_5 tmp_to_be_used v_xor398_5 16;
(*   %or404.5 = or i32 %shl399.5, %shr403.5 *)
(* You may need to modify here *)
or uint32 v_or404_5 v_shl399_5 v_shr403_5;
(*   %add408.5 = add i32 %or404.5, %add100.5 *)
adds discard_378 v_add408_5 v_or404_5 v_add100_5;
(*   %xor412.5 = xor i32 %add408.5, %or54.5 *)
(* You may need to modify here *)
xor uint32 v_xor412_5 v_add408_5 v_or54_5;
(*   %shl413.5 = shl i32 %xor412.5, 12 *)
shls discard_379 v_shl413_5 v_xor412_5 12;
(*   %shr417.5 = lshr i32 %xor412.5, 20 *)
(* You may need to modify here *)
split v_shr417_5 tmp_to_be_used v_xor412_5 20;
(*   %or418.5 = or i32 %shl413.5, %shr417.5 *)
(* You may need to modify here *)
or uint32 v_or418_5 v_shl413_5 v_shr417_5;
(*   %add422.5 = add i32 %or418.5, %add394.5 *)
adds discard_380 v_add422_5 v_or418_5 v_add394_5;
(*   %xor426.5 = xor i32 %add422.5, %or404.5 *)
(* You may need to modify here *)
xor uint32 v_xor426_5 v_add422_5 v_or404_5;
(*   %shl427.5 = shl i32 %xor426.5, 8 *)
shls discard_381 v_shl427_5 v_xor426_5 8;
(*   %shr431.5 = lshr i32 %xor426.5, 24 *)
(* You may need to modify here *)
split v_shr431_5 tmp_to_be_used v_xor426_5 24;
(*   %or432.5 = or i32 %shl427.5, %shr431.5 *)
(* You may need to modify here *)
or uint32 v_or432_5 v_shl427_5 v_shr431_5;
(*   %add436.5 = add i32 %or432.5, %add408.5 *)
adds discard_382 v_add436_5 v_or432_5 v_add408_5;
(*   %xor440.5 = xor i32 %add436.5, %or418.5 *)
(* You may need to modify here *)
xor uint32 v_xor440_5 v_add436_5 v_or418_5;
(*   %shl441.5 = shl i32 %xor440.5, 7 *)
shls discard_383 v_shl441_5 v_xor440_5 7;
(*   %shr445.5 = lshr i32 %xor440.5, 25 *)
(* You may need to modify here *)
split v_shr445_5 tmp_to_be_used v_xor440_5 25;
(*   %or446.5 = or i32 %shl441.5, %shr445.5 *)
(* You may need to modify here *)
or uint32 v_or446_5 v_shl441_5 v_shr445_5;
(*   %add.6 = add i32 %or446.5, %add254.5 *)
adds discard_384 v_add_6 v_or446_5 v_add254_5;
(*   %xor.6 = xor i32 %or320.5, %add.6 *)
(* You may need to modify here *)
xor uint32 v_xor_6 v_or320_5 v_add_6;
(*   %shl.6 = shl i32 %xor.6, 16 *)
shls discard_385 v_shl_6 v_xor_6 16;
(*   %shr.6 = lshr i32 %xor.6, 16 *)
(* You may need to modify here *)
split v_shr_6 tmp_to_be_used v_xor_6 16;
(*   %or.6 = or i32 %shl.6, %shr.6 *)
(* You may need to modify here *)
or uint32 v_or_6 v_shl_6 v_shr_6;
(*   %add16.6 = add i32 %or.6, %add380.5 *)
adds discard_386 v_add16_6 v_or_6 v_add380_5;
(*   %xor20.6 = xor i32 %add16.6, %or446.5 *)
(* You may need to modify here *)
xor uint32 v_xor20_6 v_add16_6 v_or446_5;
(*   %shl21.6 = shl i32 %xor20.6, 12 *)
shls discard_387 v_shl21_6 v_xor20_6 12;
(*   %shr25.6 = lshr i32 %xor20.6, 20 *)
(* You may need to modify here *)
split v_shr25_6 tmp_to_be_used v_xor20_6 20;
(*   %or26.6 = or i32 %shl21.6, %shr25.6 *)
(* You may need to modify here *)
or uint32 v_or26_6 v_shl21_6 v_shr25_6;
(*   %add30.6 = add i32 %or26.6, %add.6 *)
adds discard_388 v_add30_6 v_or26_6 v_add_6;
(*   %xor34.6 = xor i32 %add30.6, %or.6 *)
(* You may need to modify here *)
xor uint32 v_xor34_6 v_add30_6 v_or_6;
(*   %shl35.6 = shl i32 %xor34.6, 8 *)
shls discard_389 v_shl35_6 v_xor34_6 8;
(*   %shr39.6 = lshr i32 %xor34.6, 24 *)
(* You may need to modify here *)
split v_shr39_6 tmp_to_be_used v_xor34_6 24;
(*   %or40.6 = or i32 %shl35.6, %shr39.6 *)
(* You may need to modify here *)
or uint32 v_or40_6 v_shl35_6 v_shr39_6;
(*   %add44.6 = add i32 %or40.6, %add16.6 *)
adds discard_390 v_add44_6 v_or40_6 v_add16_6;
(*   %xor48.6 = xor i32 %add44.6, %or26.6 *)
(* You may need to modify here *)
xor uint32 v_xor48_6 v_add44_6 v_or26_6;
(*   %shl49.6 = shl i32 %xor48.6, 7 *)
shls discard_391 v_shl49_6 v_xor48_6 7;
(*   %shr53.6 = lshr i32 %xor48.6, 25 *)
(* You may need to modify here *)
split v_shr53_6 tmp_to_be_used v_xor48_6 25;
(*   %or54.6 = or i32 %shl49.6, %shr53.6 *)
(* You may need to modify here *)
or uint32 v_or54_6 v_shl49_6 v_shr53_6;
(*   %add58.6 = add i32 %or278.5, %add310.5 *)
adds discard_392 v_add58_6 v_or278_5 v_add310_5;
(*   %xor62.6 = xor i32 %or376.5, %add58.6 *)
(* You may need to modify here *)
xor uint32 v_xor62_6 v_or376_5 v_add58_6;
(*   %shl63.6 = shl i32 %xor62.6, 16 *)
shls discard_393 v_shl63_6 v_xor62_6 16;
(*   %shr67.6 = lshr i32 %xor62.6, 16 *)
(* You may need to modify here *)
split v_shr67_6 tmp_to_be_used v_xor62_6 16;
(*   %or68.6 = or i32 %shl63.6, %shr67.6 *)
(* You may need to modify here *)
or uint32 v_or68_6 v_shl63_6 v_shr67_6;
(*   %add72.6 = add i32 %or68.6, %add436.5 *)
adds discard_394 v_add72_6 v_or68_6 v_add436_5;
(*   %xor76.6 = xor i32 %add72.6, %or278.5 *)
(* You may need to modify here *)
xor uint32 v_xor76_6 v_add72_6 v_or278_5;
(*   %shl77.6 = shl i32 %xor76.6, 12 *)
shls discard_395 v_shl77_6 v_xor76_6 12;
(*   %shr81.6 = lshr i32 %xor76.6, 20 *)
(* You may need to modify here *)
split v_shr81_6 tmp_to_be_used v_xor76_6 20;
(*   %or82.6 = or i32 %shl77.6, %shr81.6 *)
(* You may need to modify here *)
or uint32 v_or82_6 v_shl77_6 v_shr81_6;
(*   %add86.6 = add i32 %or82.6, %add58.6 *)
adds discard_396 v_add86_6 v_or82_6 v_add58_6;
(*   %xor90.6 = xor i32 %add86.6, %or68.6 *)
(* You may need to modify here *)
xor uint32 v_xor90_6 v_add86_6 v_or68_6;
(*   %shl91.6 = shl i32 %xor90.6, 8 *)
shls discard_397 v_shl91_6 v_xor90_6 8;
(*   %shr95.6 = lshr i32 %xor90.6, 24 *)
(* You may need to modify here *)
split v_shr95_6 tmp_to_be_used v_xor90_6 24;
(*   %or96.6 = or i32 %shl91.6, %shr95.6 *)
(* You may need to modify here *)
or uint32 v_or96_6 v_shl91_6 v_shr95_6;
(*   %add100.6 = add i32 %or96.6, %add72.6 *)
adds discard_398 v_add100_6 v_or96_6 v_add72_6;
(*   %xor104.6 = xor i32 %add100.6, %or82.6 *)
(* You may need to modify here *)
xor uint32 v_xor104_6 v_add100_6 v_or82_6;
(*   %shl105.6 = shl i32 %xor104.6, 7 *)
shls discard_399 v_shl105_6 v_xor104_6 7;
(*   %shr109.6 = lshr i32 %xor104.6, 25 *)
(* You may need to modify here *)
split v_shr109_6 tmp_to_be_used v_xor104_6 25;
(*   %or110.6 = or i32 %shl105.6, %shr109.6 *)
(* You may need to modify here *)
or uint32 v_or110_6 v_shl105_6 v_shr109_6;
(*   %add114.6 = add i32 %or334.5, %add366.5 *)
adds discard_400 v_add114_6 v_or334_5 v_add366_5;
(*   %xor118.6 = xor i32 %or432.5, %add114.6 *)
(* You may need to modify here *)
xor uint32 v_xor118_6 v_or432_5 v_add114_6;
(*   %shl119.6 = shl i32 %xor118.6, 16 *)
shls discard_401 v_shl119_6 v_xor118_6 16;
(*   %shr123.6 = lshr i32 %xor118.6, 16 *)
(* You may need to modify here *)
split v_shr123_6 tmp_to_be_used v_xor118_6 16;
(*   %or124.6 = or i32 %shl119.6, %shr123.6 *)
(* You may need to modify here *)
or uint32 v_or124_6 v_shl119_6 v_shr123_6;
(*   %add128.6 = add i32 %or124.6, %add268.5 *)
adds discard_402 v_add128_6 v_or124_6 v_add268_5;
(*   %xor132.6 = xor i32 %add128.6, %or334.5 *)
(* You may need to modify here *)
xor uint32 v_xor132_6 v_add128_6 v_or334_5;
(*   %shl133.6 = shl i32 %xor132.6, 12 *)
shls discard_403 v_shl133_6 v_xor132_6 12;
(*   %shr137.6 = lshr i32 %xor132.6, 20 *)
(* You may need to modify here *)
split v_shr137_6 tmp_to_be_used v_xor132_6 20;
(*   %or138.6 = or i32 %shl133.6, %shr137.6 *)
(* You may need to modify here *)
or uint32 v_or138_6 v_shl133_6 v_shr137_6;
(*   %add142.6 = add i32 %or138.6, %add114.6 *)
adds discard_404 v_add142_6 v_or138_6 v_add114_6;
(*   %xor146.6 = xor i32 %add142.6, %or124.6 *)
(* You may need to modify here *)
xor uint32 v_xor146_6 v_add142_6 v_or124_6;
(*   %shl147.6 = shl i32 %xor146.6, 8 *)
shls discard_405 v_shl147_6 v_xor146_6 8;
(*   %shr151.6 = lshr i32 %xor146.6, 24 *)
(* You may need to modify here *)
split v_shr151_6 tmp_to_be_used v_xor146_6 24;
(*   %or152.6 = or i32 %shl147.6, %shr151.6 *)
(* You may need to modify here *)
or uint32 v_or152_6 v_shl147_6 v_shr151_6;
(*   %add156.6 = add i32 %or152.6, %add128.6 *)
adds discard_406 v_add156_6 v_or152_6 v_add128_6;
(*   %xor160.6 = xor i32 %add156.6, %or138.6 *)
(* You may need to modify here *)
xor uint32 v_xor160_6 v_add156_6 v_or138_6;
(*   %shl161.6 = shl i32 %xor160.6, 7 *)
shls discard_407 v_shl161_6 v_xor160_6 7;
(*   %shr165.6 = lshr i32 %xor160.6, 25 *)
(* You may need to modify here *)
split v_shr165_6 tmp_to_be_used v_xor160_6 25;
(*   %or166.6 = or i32 %shl161.6, %shr165.6 *)
(* You may need to modify here *)
or uint32 v_or166_6 v_shl161_6 v_shr165_6;
(*   %add170.6 = add i32 %or390.5, %add422.5 *)
adds discard_408 v_add170_6 v_or390_5 v_add422_5;
(*   %xor174.6 = xor i32 %or264.5, %add170.6 *)
(* You may need to modify here *)
xor uint32 v_xor174_6 v_or264_5 v_add170_6;
(*   %shl175.6 = shl i32 %xor174.6, 16 *)
shls discard_409 v_shl175_6 v_xor174_6 16;
(*   %shr179.6 = lshr i32 %xor174.6, 16 *)
(* You may need to modify here *)
split v_shr179_6 tmp_to_be_used v_xor174_6 16;
(*   %or180.6 = or i32 %shl175.6, %shr179.6 *)
(* You may need to modify here *)
or uint32 v_or180_6 v_shl175_6 v_shr179_6;
(*   %add184.6 = add i32 %or180.6, %add324.5 *)
adds discard_410 v_add184_6 v_or180_6 v_add324_5;
(*   %xor188.6 = xor i32 %add184.6, %or390.5 *)
(* You may need to modify here *)
xor uint32 v_xor188_6 v_add184_6 v_or390_5;
(*   %shl189.6 = shl i32 %xor188.6, 12 *)
shls discard_411 v_shl189_6 v_xor188_6 12;
(*   %shr193.6 = lshr i32 %xor188.6, 20 *)
(* You may need to modify here *)
split v_shr193_6 tmp_to_be_used v_xor188_6 20;
(*   %or194.6 = or i32 %shl189.6, %shr193.6 *)
(* You may need to modify here *)
or uint32 v_or194_6 v_shl189_6 v_shr193_6;
(*   %add198.6 = add i32 %or194.6, %add170.6 *)
adds discard_412 v_add198_6 v_or194_6 v_add170_6;
(*   %xor202.6 = xor i32 %add198.6, %or180.6 *)
(* You may need to modify here *)
xor uint32 v_xor202_6 v_add198_6 v_or180_6;
(*   %shl203.6 = shl i32 %xor202.6, 8 *)
shls discard_413 v_shl203_6 v_xor202_6 8;
(*   %shr207.6 = lshr i32 %xor202.6, 24 *)
(* You may need to modify here *)
split v_shr207_6 tmp_to_be_used v_xor202_6 24;
(*   %or208.6 = or i32 %shl203.6, %shr207.6 *)
(* You may need to modify here *)
or uint32 v_or208_6 v_shl203_6 v_shr207_6;
(*   %add212.6 = add i32 %or208.6, %add184.6 *)
adds discard_414 v_add212_6 v_or208_6 v_add184_6;
(*   %xor216.6 = xor i32 %add212.6, %or194.6 *)
(* You may need to modify here *)
xor uint32 v_xor216_6 v_add212_6 v_or194_6;
(*   %shl217.6 = shl i32 %xor216.6, 7 *)
shls discard_415 v_shl217_6 v_xor216_6 7;
(*   %shr221.6 = lshr i32 %xor216.6, 25 *)
(* You may need to modify here *)
split v_shr221_6 tmp_to_be_used v_xor216_6 25;
(*   %or222.6 = or i32 %shl217.6, %shr221.6 *)
(* You may need to modify here *)
or uint32 v_or222_6 v_shl217_6 v_shr221_6;
(*   %add226.6 = add i32 %or110.6, %add30.6 *)
adds discard_416 v_add226_6 v_or110_6 v_add30_6;
(*   %xor230.6 = xor i32 %or208.6, %add226.6 *)
(* You may need to modify here *)
xor uint32 v_xor230_6 v_or208_6 v_add226_6;
(*   %shl231.6 = shl i32 %xor230.6, 16 *)
shls discard_417 v_shl231_6 v_xor230_6 16;
(*   %shr235.6 = lshr i32 %xor230.6, 16 *)
(* You may need to modify here *)
split v_shr235_6 tmp_to_be_used v_xor230_6 16;
(*   %or236.6 = or i32 %shl231.6, %shr235.6 *)
(* You may need to modify here *)
or uint32 v_or236_6 v_shl231_6 v_shr235_6;
(*   %add240.6 = add i32 %or236.6, %add156.6 *)
adds discard_418 v_add240_6 v_or236_6 v_add156_6;
(*   %xor244.6 = xor i32 %add240.6, %or110.6 *)
(* You may need to modify here *)
xor uint32 v_xor244_6 v_add240_6 v_or110_6;
(*   %shl245.6 = shl i32 %xor244.6, 12 *)
shls discard_419 v_shl245_6 v_xor244_6 12;
(*   %shr249.6 = lshr i32 %xor244.6, 20 *)
(* You may need to modify here *)
split v_shr249_6 tmp_to_be_used v_xor244_6 20;
(*   %or250.6 = or i32 %shl245.6, %shr249.6 *)
(* You may need to modify here *)
or uint32 v_or250_6 v_shl245_6 v_shr249_6;
(*   %add254.6 = add i32 %or250.6, %add226.6 *)
adds discard_420 v_add254_6 v_or250_6 v_add226_6;
(*   %xor258.6 = xor i32 %add254.6, %or236.6 *)
(* You may need to modify here *)
xor uint32 v_xor258_6 v_add254_6 v_or236_6;
(*   %shl259.6 = shl i32 %xor258.6, 8 *)
shls discard_421 v_shl259_6 v_xor258_6 8;
(*   %shr263.6 = lshr i32 %xor258.6, 24 *)
(* You may need to modify here *)
split v_shr263_6 tmp_to_be_used v_xor258_6 24;
(*   %or264.6 = or i32 %shl259.6, %shr263.6 *)
(* You may need to modify here *)
or uint32 v_or264_6 v_shl259_6 v_shr263_6;
(*   %add268.6 = add i32 %or264.6, %add240.6 *)
adds discard_422 v_add268_6 v_or264_6 v_add240_6;
(*   %xor272.6 = xor i32 %add268.6, %or250.6 *)
(* You may need to modify here *)
xor uint32 v_xor272_6 v_add268_6 v_or250_6;
(*   %shl273.6 = shl i32 %xor272.6, 7 *)
shls discard_423 v_shl273_6 v_xor272_6 7;
(*   %shr277.6 = lshr i32 %xor272.6, 25 *)
(* You may need to modify here *)
split v_shr277_6 tmp_to_be_used v_xor272_6 25;
(*   %or278.6 = or i32 %shl273.6, %shr277.6 *)
(* You may need to modify here *)
or uint32 v_or278_6 v_shl273_6 v_shr277_6;
(*   %add282.6 = add i32 %or166.6, %add86.6 *)
adds discard_424 v_add282_6 v_or166_6 v_add86_6;
(*   %xor286.6 = xor i32 %add282.6, %or40.6 *)
(* You may need to modify here *)
xor uint32 v_xor286_6 v_add282_6 v_or40_6;
(*   %shl287.6 = shl i32 %xor286.6, 16 *)
shls discard_425 v_shl287_6 v_xor286_6 16;
(*   %shr291.6 = lshr i32 %xor286.6, 16 *)
(* You may need to modify here *)
split v_shr291_6 tmp_to_be_used v_xor286_6 16;
(*   %or292.6 = or i32 %shl287.6, %shr291.6 *)
(* You may need to modify here *)
or uint32 v_or292_6 v_shl287_6 v_shr291_6;
(*   %add296.6 = add i32 %add212.6, %or292.6 *)
adds discard_426 v_add296_6 v_add212_6 v_or292_6;
(*   %xor300.6 = xor i32 %add296.6, %or166.6 *)
(* You may need to modify here *)
xor uint32 v_xor300_6 v_add296_6 v_or166_6;
(*   %shl301.6 = shl i32 %xor300.6, 12 *)
shls discard_427 v_shl301_6 v_xor300_6 12;
(*   %shr305.6 = lshr i32 %xor300.6, 20 *)
(* You may need to modify here *)
split v_shr305_6 tmp_to_be_used v_xor300_6 20;
(*   %or306.6 = or i32 %shl301.6, %shr305.6 *)
(* You may need to modify here *)
or uint32 v_or306_6 v_shl301_6 v_shr305_6;
(*   %add310.6 = add i32 %or306.6, %add282.6 *)
adds discard_428 v_add310_6 v_or306_6 v_add282_6;
(*   %xor314.6 = xor i32 %add310.6, %or292.6 *)
(* You may need to modify here *)
xor uint32 v_xor314_6 v_add310_6 v_or292_6;
(*   %shl315.6 = shl i32 %xor314.6, 8 *)
shls discard_429 v_shl315_6 v_xor314_6 8;
(*   %shr319.6 = lshr i32 %xor314.6, 24 *)
(* You may need to modify here *)
split v_shr319_6 tmp_to_be_used v_xor314_6 24;
(*   %or320.6 = or i32 %shl315.6, %shr319.6 *)
(* You may need to modify here *)
or uint32 v_or320_6 v_shl315_6 v_shr319_6;
(*   %add324.6 = add i32 %or320.6, %add296.6 *)
adds discard_430 v_add324_6 v_or320_6 v_add296_6;
(*   %xor328.6 = xor i32 %add324.6, %or306.6 *)
(* You may need to modify here *)
xor uint32 v_xor328_6 v_add324_6 v_or306_6;
(*   %shl329.6 = shl i32 %xor328.6, 7 *)
shls discard_431 v_shl329_6 v_xor328_6 7;
(*   %shr333.6 = lshr i32 %xor328.6, 25 *)
(* You may need to modify here *)
split v_shr333_6 tmp_to_be_used v_xor328_6 25;
(*   %or334.6 = or i32 %shl329.6, %shr333.6 *)
(* You may need to modify here *)
or uint32 v_or334_6 v_shl329_6 v_shr333_6;
(*   %add338.6 = add i32 %or222.6, %add142.6 *)
adds discard_432 v_add338_6 v_or222_6 v_add142_6;
(*   %xor342.6 = xor i32 %add338.6, %or96.6 *)
(* You may need to modify here *)
xor uint32 v_xor342_6 v_add338_6 v_or96_6;
(*   %shl343.6 = shl i32 %xor342.6, 16 *)
shls discard_433 v_shl343_6 v_xor342_6 16;
(*   %shr347.6 = lshr i32 %xor342.6, 16 *)
(* You may need to modify here *)
split v_shr347_6 tmp_to_be_used v_xor342_6 16;
(*   %or348.6 = or i32 %shl343.6, %shr347.6 *)
(* You may need to modify here *)
or uint32 v_or348_6 v_shl343_6 v_shr347_6;
(*   %add352.6 = add i32 %or348.6, %add44.6 *)
adds discard_434 v_add352_6 v_or348_6 v_add44_6;
(*   %xor356.6 = xor i32 %add352.6, %or222.6 *)
(* You may need to modify here *)
xor uint32 v_xor356_6 v_add352_6 v_or222_6;
(*   %shl357.6 = shl i32 %xor356.6, 12 *)
shls discard_435 v_shl357_6 v_xor356_6 12;
(*   %shr361.6 = lshr i32 %xor356.6, 20 *)
(* You may need to modify here *)
split v_shr361_6 tmp_to_be_used v_xor356_6 20;
(*   %or362.6 = or i32 %shl357.6, %shr361.6 *)
(* You may need to modify here *)
or uint32 v_or362_6 v_shl357_6 v_shr361_6;
(*   %add366.6 = add i32 %or362.6, %add338.6 *)
adds discard_436 v_add366_6 v_or362_6 v_add338_6;
(*   %xor370.6 = xor i32 %add366.6, %or348.6 *)
(* You may need to modify here *)
xor uint32 v_xor370_6 v_add366_6 v_or348_6;
(*   %shl371.6 = shl i32 %xor370.6, 8 *)
shls discard_437 v_shl371_6 v_xor370_6 8;
(*   %shr375.6 = lshr i32 %xor370.6, 24 *)
(* You may need to modify here *)
split v_shr375_6 tmp_to_be_used v_xor370_6 24;
(*   %or376.6 = or i32 %shl371.6, %shr375.6 *)
(* You may need to modify here *)
or uint32 v_or376_6 v_shl371_6 v_shr375_6;
(*   %add380.6 = add i32 %or376.6, %add352.6 *)
adds discard_438 v_add380_6 v_or376_6 v_add352_6;
(*   %xor384.6 = xor i32 %add380.6, %or362.6 *)
(* You may need to modify here *)
xor uint32 v_xor384_6 v_add380_6 v_or362_6;
(*   %shl385.6 = shl i32 %xor384.6, 7 *)
shls discard_439 v_shl385_6 v_xor384_6 7;
(*   %shr389.6 = lshr i32 %xor384.6, 25 *)
(* You may need to modify here *)
split v_shr389_6 tmp_to_be_used v_xor384_6 25;
(*   %or390.6 = or i32 %shl385.6, %shr389.6 *)
(* You may need to modify here *)
or uint32 v_or390_6 v_shl385_6 v_shr389_6;
(*   %add394.6 = add i32 %add198.6, %or54.6 *)
adds discard_440 v_add394_6 v_add198_6 v_or54_6;
(*   %xor398.6 = xor i32 %add394.6, %or152.6 *)
(* You may need to modify here *)
xor uint32 v_xor398_6 v_add394_6 v_or152_6;
(*   %shl399.6 = shl i32 %xor398.6, 16 *)
shls discard_441 v_shl399_6 v_xor398_6 16;
(*   %shr403.6 = lshr i32 %xor398.6, 16 *)
(* You may need to modify here *)
split v_shr403_6 tmp_to_be_used v_xor398_6 16;
(*   %or404.6 = or i32 %shl399.6, %shr403.6 *)
(* You may need to modify here *)
or uint32 v_or404_6 v_shl399_6 v_shr403_6;
(*   %add408.6 = add i32 %or404.6, %add100.6 *)
adds discard_442 v_add408_6 v_or404_6 v_add100_6;
(*   %xor412.6 = xor i32 %add408.6, %or54.6 *)
(* You may need to modify here *)
xor uint32 v_xor412_6 v_add408_6 v_or54_6;
(*   %shl413.6 = shl i32 %xor412.6, 12 *)
shls discard_443 v_shl413_6 v_xor412_6 12;
(*   %shr417.6 = lshr i32 %xor412.6, 20 *)
(* You may need to modify here *)
split v_shr417_6 tmp_to_be_used v_xor412_6 20;
(*   %or418.6 = or i32 %shl413.6, %shr417.6 *)
(* You may need to modify here *)
or uint32 v_or418_6 v_shl413_6 v_shr417_6;
(*   %add422.6 = add i32 %or418.6, %add394.6 *)
adds discard_444 v_add422_6 v_or418_6 v_add394_6;
(*   %xor426.6 = xor i32 %add422.6, %or404.6 *)
(* You may need to modify here *)
xor uint32 v_xor426_6 v_add422_6 v_or404_6;
(*   %shl427.6 = shl i32 %xor426.6, 8 *)
shls discard_445 v_shl427_6 v_xor426_6 8;
(*   %shr431.6 = lshr i32 %xor426.6, 24 *)
(* You may need to modify here *)
split v_shr431_6 tmp_to_be_used v_xor426_6 24;
(*   %or432.6 = or i32 %shl427.6, %shr431.6 *)
(* You may need to modify here *)
or uint32 v_or432_6 v_shl427_6 v_shr431_6;
(*   %add436.6 = add i32 %or432.6, %add408.6 *)
adds discard_446 v_add436_6 v_or432_6 v_add408_6;
(*   %xor440.6 = xor i32 %add436.6, %or418.6 *)
(* You may need to modify here *)
xor uint32 v_xor440_6 v_add436_6 v_or418_6;
(*   %shl441.6 = shl i32 %xor440.6, 7 *)
shls discard_447 v_shl441_6 v_xor440_6 7;
(*   %shr445.6 = lshr i32 %xor440.6, 25 *)
(* You may need to modify here *)
split v_shr445_6 tmp_to_be_used v_xor440_6 25;
(*   %or446.6 = or i32 %shl441.6, %shr445.6 *)
(* You may need to modify here *)
or uint32 v_or446_6 v_shl441_6 v_shr445_6;
(*   %add.7 = add i32 %or446.6, %add254.6 *)
adds discard_448 v_add_7 v_or446_6 v_add254_6;
(*   %xor.7 = xor i32 %or320.6, %add.7 *)
(* You may need to modify here *)
xor uint32 v_xor_7 v_or320_6 v_add_7;
(*   %shl.7 = shl i32 %xor.7, 16 *)
shls discard_449 v_shl_7 v_xor_7 16;
(*   %shr.7 = lshr i32 %xor.7, 16 *)
(* You may need to modify here *)
split v_shr_7 tmp_to_be_used v_xor_7 16;
(*   %or.7 = or i32 %shl.7, %shr.7 *)
(* You may need to modify here *)
or uint32 v_or_7 v_shl_7 v_shr_7;
(*   %add16.7 = add i32 %or.7, %add380.6 *)
adds discard_450 v_add16_7 v_or_7 v_add380_6;
(*   %xor20.7 = xor i32 %add16.7, %or446.6 *)
(* You may need to modify here *)
xor uint32 v_xor20_7 v_add16_7 v_or446_6;
(*   %shl21.7 = shl i32 %xor20.7, 12 *)
shls discard_451 v_shl21_7 v_xor20_7 12;
(*   %shr25.7 = lshr i32 %xor20.7, 20 *)
(* You may need to modify here *)
split v_shr25_7 tmp_to_be_used v_xor20_7 20;
(*   %or26.7 = or i32 %shl21.7, %shr25.7 *)
(* You may need to modify here *)
or uint32 v_or26_7 v_shl21_7 v_shr25_7;
(*   %add30.7 = add i32 %or26.7, %add.7 *)
adds discard_452 v_add30_7 v_or26_7 v_add_7;
(*   %xor34.7 = xor i32 %add30.7, %or.7 *)
(* You may need to modify here *)
xor uint32 v_xor34_7 v_add30_7 v_or_7;
(*   %shl35.7 = shl i32 %xor34.7, 8 *)
shls discard_453 v_shl35_7 v_xor34_7 8;
(*   %shr39.7 = lshr i32 %xor34.7, 24 *)
(* You may need to modify here *)
split v_shr39_7 tmp_to_be_used v_xor34_7 24;
(*   %or40.7 = or i32 %shl35.7, %shr39.7 *)
(* You may need to modify here *)
or uint32 v_or40_7 v_shl35_7 v_shr39_7;
(*   %add44.7 = add i32 %or40.7, %add16.7 *)
adds discard_454 v_add44_7 v_or40_7 v_add16_7;
(*   %xor48.7 = xor i32 %add44.7, %or26.7 *)
(* You may need to modify here *)
xor uint32 v_xor48_7 v_add44_7 v_or26_7;
(*   %shl49.7 = shl i32 %xor48.7, 7 *)
shls discard_455 v_shl49_7 v_xor48_7 7;
(*   %shr53.7 = lshr i32 %xor48.7, 25 *)
(* You may need to modify here *)
split v_shr53_7 tmp_to_be_used v_xor48_7 25;
(*   %or54.7 = or i32 %shl49.7, %shr53.7 *)
(* You may need to modify here *)
or uint32 v_or54_7 v_shl49_7 v_shr53_7;
(*   %add58.7 = add i32 %or278.6, %add310.6 *)
adds discard_456 v_add58_7 v_or278_6 v_add310_6;
(*   %xor62.7 = xor i32 %or376.6, %add58.7 *)
(* You may need to modify here *)
xor uint32 v_xor62_7 v_or376_6 v_add58_7;
(*   %shl63.7 = shl i32 %xor62.7, 16 *)
shls discard_457 v_shl63_7 v_xor62_7 16;
(*   %shr67.7 = lshr i32 %xor62.7, 16 *)
(* You may need to modify here *)
split v_shr67_7 tmp_to_be_used v_xor62_7 16;
(*   %or68.7 = or i32 %shl63.7, %shr67.7 *)
(* You may need to modify here *)
or uint32 v_or68_7 v_shl63_7 v_shr67_7;
(*   %add72.7 = add i32 %or68.7, %add436.6 *)
adds discard_458 v_add72_7 v_or68_7 v_add436_6;
(*   %xor76.7 = xor i32 %add72.7, %or278.6 *)
(* You may need to modify here *)
xor uint32 v_xor76_7 v_add72_7 v_or278_6;
(*   %shl77.7 = shl i32 %xor76.7, 12 *)
shls discard_459 v_shl77_7 v_xor76_7 12;
(*   %shr81.7 = lshr i32 %xor76.7, 20 *)
(* You may need to modify here *)
split v_shr81_7 tmp_to_be_used v_xor76_7 20;
(*   %or82.7 = or i32 %shl77.7, %shr81.7 *)
(* You may need to modify here *)
or uint32 v_or82_7 v_shl77_7 v_shr81_7;
(*   %add86.7 = add i32 %or82.7, %add58.7 *)
adds discard_460 v_add86_7 v_or82_7 v_add58_7;
(*   %xor90.7 = xor i32 %add86.7, %or68.7 *)
(* You may need to modify here *)
xor uint32 v_xor90_7 v_add86_7 v_or68_7;
(*   %shl91.7 = shl i32 %xor90.7, 8 *)
shls discard_461 v_shl91_7 v_xor90_7 8;
(*   %shr95.7 = lshr i32 %xor90.7, 24 *)
(* You may need to modify here *)
split v_shr95_7 tmp_to_be_used v_xor90_7 24;
(*   %or96.7 = or i32 %shl91.7, %shr95.7 *)
(* You may need to modify here *)
or uint32 v_or96_7 v_shl91_7 v_shr95_7;
(*   %add100.7 = add i32 %or96.7, %add72.7 *)
adds discard_462 v_add100_7 v_or96_7 v_add72_7;
(*   %xor104.7 = xor i32 %add100.7, %or82.7 *)
(* You may need to modify here *)
xor uint32 v_xor104_7 v_add100_7 v_or82_7;
(*   %shl105.7 = shl i32 %xor104.7, 7 *)
shls discard_463 v_shl105_7 v_xor104_7 7;
(*   %shr109.7 = lshr i32 %xor104.7, 25 *)
(* You may need to modify here *)
split v_shr109_7 tmp_to_be_used v_xor104_7 25;
(*   %or110.7 = or i32 %shl105.7, %shr109.7 *)
(* You may need to modify here *)
or uint32 v_or110_7 v_shl105_7 v_shr109_7;
(*   %add114.7 = add i32 %or334.6, %add366.6 *)
adds discard_464 v_add114_7 v_or334_6 v_add366_6;
(*   %xor118.7 = xor i32 %or432.6, %add114.7 *)
(* You may need to modify here *)
xor uint32 v_xor118_7 v_or432_6 v_add114_7;
(*   %shl119.7 = shl i32 %xor118.7, 16 *)
shls discard_465 v_shl119_7 v_xor118_7 16;
(*   %shr123.7 = lshr i32 %xor118.7, 16 *)
(* You may need to modify here *)
split v_shr123_7 tmp_to_be_used v_xor118_7 16;
(*   %or124.7 = or i32 %shl119.7, %shr123.7 *)
(* You may need to modify here *)
or uint32 v_or124_7 v_shl119_7 v_shr123_7;
(*   %add128.7 = add i32 %or124.7, %add268.6 *)
adds discard_466 v_add128_7 v_or124_7 v_add268_6;
(*   %xor132.7 = xor i32 %add128.7, %or334.6 *)
(* You may need to modify here *)
xor uint32 v_xor132_7 v_add128_7 v_or334_6;
(*   %shl133.7 = shl i32 %xor132.7, 12 *)
shls discard_467 v_shl133_7 v_xor132_7 12;
(*   %shr137.7 = lshr i32 %xor132.7, 20 *)
(* You may need to modify here *)
split v_shr137_7 tmp_to_be_used v_xor132_7 20;
(*   %or138.7 = or i32 %shl133.7, %shr137.7 *)
(* You may need to modify here *)
or uint32 v_or138_7 v_shl133_7 v_shr137_7;
(*   %add142.7 = add i32 %or138.7, %add114.7 *)
adds discard_468 v_add142_7 v_or138_7 v_add114_7;
(*   %xor146.7 = xor i32 %add142.7, %or124.7 *)
(* You may need to modify here *)
xor uint32 v_xor146_7 v_add142_7 v_or124_7;
(*   %shl147.7 = shl i32 %xor146.7, 8 *)
shls discard_469 v_shl147_7 v_xor146_7 8;
(*   %shr151.7 = lshr i32 %xor146.7, 24 *)
(* You may need to modify here *)
split v_shr151_7 tmp_to_be_used v_xor146_7 24;
(*   %or152.7 = or i32 %shl147.7, %shr151.7 *)
(* You may need to modify here *)
or uint32 v_or152_7 v_shl147_7 v_shr151_7;
(*   %add156.7 = add i32 %or152.7, %add128.7 *)
adds discard_470 v_add156_7 v_or152_7 v_add128_7;
(*   %xor160.7 = xor i32 %add156.7, %or138.7 *)
(* You may need to modify here *)
xor uint32 v_xor160_7 v_add156_7 v_or138_7;
(*   %shl161.7 = shl i32 %xor160.7, 7 *)
shls discard_471 v_shl161_7 v_xor160_7 7;
(*   %shr165.7 = lshr i32 %xor160.7, 25 *)
(* You may need to modify here *)
split v_shr165_7 tmp_to_be_used v_xor160_7 25;
(*   %or166.7 = or i32 %shl161.7, %shr165.7 *)
(* You may need to modify here *)
or uint32 v_or166_7 v_shl161_7 v_shr165_7;
(*   %add170.7 = add i32 %or390.6, %add422.6 *)
adds discard_472 v_add170_7 v_or390_6 v_add422_6;
(*   %xor174.7 = xor i32 %or264.6, %add170.7 *)
(* You may need to modify here *)
xor uint32 v_xor174_7 v_or264_6 v_add170_7;
(*   %shl175.7 = shl i32 %xor174.7, 16 *)
shls discard_473 v_shl175_7 v_xor174_7 16;
(*   %shr179.7 = lshr i32 %xor174.7, 16 *)
(* You may need to modify here *)
split v_shr179_7 tmp_to_be_used v_xor174_7 16;
(*   %or180.7 = or i32 %shl175.7, %shr179.7 *)
(* You may need to modify here *)
or uint32 v_or180_7 v_shl175_7 v_shr179_7;
(*   %add184.7 = add i32 %or180.7, %add324.6 *)
adds discard_474 v_add184_7 v_or180_7 v_add324_6;
(*   %xor188.7 = xor i32 %add184.7, %or390.6 *)
(* You may need to modify here *)
xor uint32 v_xor188_7 v_add184_7 v_or390_6;
(*   %shl189.7 = shl i32 %xor188.7, 12 *)
shls discard_475 v_shl189_7 v_xor188_7 12;
(*   %shr193.7 = lshr i32 %xor188.7, 20 *)
(* You may need to modify here *)
split v_shr193_7 tmp_to_be_used v_xor188_7 20;
(*   %or194.7 = or i32 %shl189.7, %shr193.7 *)
(* You may need to modify here *)
or uint32 v_or194_7 v_shl189_7 v_shr193_7;
(*   %add198.7 = add i32 %or194.7, %add170.7 *)
adds discard_476 v_add198_7 v_or194_7 v_add170_7;
(*   %xor202.7 = xor i32 %add198.7, %or180.7 *)
(* You may need to modify here *)
xor uint32 v_xor202_7 v_add198_7 v_or180_7;
(*   %shl203.7 = shl i32 %xor202.7, 8 *)
shls discard_477 v_shl203_7 v_xor202_7 8;
(*   %shr207.7 = lshr i32 %xor202.7, 24 *)
(* You may need to modify here *)
split v_shr207_7 tmp_to_be_used v_xor202_7 24;
(*   %or208.7 = or i32 %shl203.7, %shr207.7 *)
(* You may need to modify here *)
or uint32 v_or208_7 v_shl203_7 v_shr207_7;
(*   %add212.7 = add i32 %or208.7, %add184.7 *)
adds discard_478 v_add212_7 v_or208_7 v_add184_7;
(*   %xor216.7 = xor i32 %add212.7, %or194.7 *)
(* You may need to modify here *)
xor uint32 v_xor216_7 v_add212_7 v_or194_7;
(*   %shl217.7 = shl i32 %xor216.7, 7 *)
shls discard_479 v_shl217_7 v_xor216_7 7;
(*   %shr221.7 = lshr i32 %xor216.7, 25 *)
(* You may need to modify here *)
split v_shr221_7 tmp_to_be_used v_xor216_7 25;
(*   %or222.7 = or i32 %shl217.7, %shr221.7 *)
(* You may need to modify here *)
or uint32 v_or222_7 v_shl217_7 v_shr221_7;
(*   %add226.7 = add i32 %or110.7, %add30.7 *)
adds discard_480 v_add226_7 v_or110_7 v_add30_7;
(*   %xor230.7 = xor i32 %or208.7, %add226.7 *)
(* You may need to modify here *)
xor uint32 v_xor230_7 v_or208_7 v_add226_7;
(*   %shl231.7 = shl i32 %xor230.7, 16 *)
shls discard_481 v_shl231_7 v_xor230_7 16;
(*   %shr235.7 = lshr i32 %xor230.7, 16 *)
(* You may need to modify here *)
split v_shr235_7 tmp_to_be_used v_xor230_7 16;
(*   %or236.7 = or i32 %shl231.7, %shr235.7 *)
(* You may need to modify here *)
or uint32 v_or236_7 v_shl231_7 v_shr235_7;
(*   %add240.7 = add i32 %or236.7, %add156.7 *)
adds discard_482 v_add240_7 v_or236_7 v_add156_7;
(*   %xor244.7 = xor i32 %add240.7, %or110.7 *)
(* You may need to modify here *)
xor uint32 v_xor244_7 v_add240_7 v_or110_7;
(*   %shl245.7 = shl i32 %xor244.7, 12 *)
shls discard_483 v_shl245_7 v_xor244_7 12;
(*   %shr249.7 = lshr i32 %xor244.7, 20 *)
(* You may need to modify here *)
split v_shr249_7 tmp_to_be_used v_xor244_7 20;
(*   %or250.7 = or i32 %shl245.7, %shr249.7 *)
(* You may need to modify here *)
or uint32 v_or250_7 v_shl245_7 v_shr249_7;
(*   %add254.7 = add i32 %or250.7, %add226.7 *)
adds discard_484 v_add254_7 v_or250_7 v_add226_7;
(*   %xor258.7 = xor i32 %add254.7, %or236.7 *)
(* You may need to modify here *)
xor uint32 v_xor258_7 v_add254_7 v_or236_7;
(*   %shl259.7 = shl i32 %xor258.7, 8 *)
shls discard_485 v_shl259_7 v_xor258_7 8;
(*   %shr263.7 = lshr i32 %xor258.7, 24 *)
(* You may need to modify here *)
split v_shr263_7 tmp_to_be_used v_xor258_7 24;
(*   %or264.7 = or i32 %shl259.7, %shr263.7 *)
(* You may need to modify here *)
or uint32 v_or264_7 v_shl259_7 v_shr263_7;
(*   %add268.7 = add i32 %or264.7, %add240.7 *)
adds discard_486 v_add268_7 v_or264_7 v_add240_7;
(*   %xor272.7 = xor i32 %add268.7, %or250.7 *)
(* You may need to modify here *)
xor uint32 v_xor272_7 v_add268_7 v_or250_7;
(*   %shl273.7 = shl i32 %xor272.7, 7 *)
shls discard_487 v_shl273_7 v_xor272_7 7;
(*   %shr277.7 = lshr i32 %xor272.7, 25 *)
(* You may need to modify here *)
split v_shr277_7 tmp_to_be_used v_xor272_7 25;
(*   %or278.7 = or i32 %shl273.7, %shr277.7 *)
(* You may need to modify here *)
or uint32 v_or278_7 v_shl273_7 v_shr277_7;
(*   %add282.7 = add i32 %or166.7, %add86.7 *)
adds discard_488 v_add282_7 v_or166_7 v_add86_7;
(*   %xor286.7 = xor i32 %add282.7, %or40.7 *)
(* You may need to modify here *)
xor uint32 v_xor286_7 v_add282_7 v_or40_7;
(*   %shl287.7 = shl i32 %xor286.7, 16 *)
shls discard_489 v_shl287_7 v_xor286_7 16;
(*   %shr291.7 = lshr i32 %xor286.7, 16 *)
(* You may need to modify here *)
split v_shr291_7 tmp_to_be_used v_xor286_7 16;
(*   %or292.7 = or i32 %shl287.7, %shr291.7 *)
(* You may need to modify here *)
or uint32 v_or292_7 v_shl287_7 v_shr291_7;
(*   %add296.7 = add i32 %add212.7, %or292.7 *)
adds discard_490 v_add296_7 v_add212_7 v_or292_7;
(*   %xor300.7 = xor i32 %add296.7, %or166.7 *)
(* You may need to modify here *)
xor uint32 v_xor300_7 v_add296_7 v_or166_7;
(*   %shl301.7 = shl i32 %xor300.7, 12 *)
shls discard_491 v_shl301_7 v_xor300_7 12;
(*   %shr305.7 = lshr i32 %xor300.7, 20 *)
(* You may need to modify here *)
split v_shr305_7 tmp_to_be_used v_xor300_7 20;
(*   %or306.7 = or i32 %shl301.7, %shr305.7 *)
(* You may need to modify here *)
or uint32 v_or306_7 v_shl301_7 v_shr305_7;
(*   %add310.7 = add i32 %or306.7, %add282.7 *)
adds discard_492 v_add310_7 v_or306_7 v_add282_7;
(*   %xor314.7 = xor i32 %add310.7, %or292.7 *)
(* You may need to modify here *)
xor uint32 v_xor314_7 v_add310_7 v_or292_7;
(*   %shl315.7 = shl i32 %xor314.7, 8 *)
shls discard_493 v_shl315_7 v_xor314_7 8;
(*   %shr319.7 = lshr i32 %xor314.7, 24 *)
(* You may need to modify here *)
split v_shr319_7 tmp_to_be_used v_xor314_7 24;
(*   %or320.7 = or i32 %shl315.7, %shr319.7 *)
(* You may need to modify here *)
or uint32 v_or320_7 v_shl315_7 v_shr319_7;
(*   %add324.7 = add i32 %or320.7, %add296.7 *)
adds discard_494 v_add324_7 v_or320_7 v_add296_7;
(*   %xor328.7 = xor i32 %add324.7, %or306.7 *)
(* You may need to modify here *)
xor uint32 v_xor328_7 v_add324_7 v_or306_7;
(*   %shl329.7 = shl i32 %xor328.7, 7 *)
shls discard_495 v_shl329_7 v_xor328_7 7;
(*   %shr333.7 = lshr i32 %xor328.7, 25 *)
(* You may need to modify here *)
split v_shr333_7 tmp_to_be_used v_xor328_7 25;
(*   %or334.7 = or i32 %shl329.7, %shr333.7 *)
(* You may need to modify here *)
or uint32 v_or334_7 v_shl329_7 v_shr333_7;
(*   %add338.7 = add i32 %or222.7, %add142.7 *)
adds discard_496 v_add338_7 v_or222_7 v_add142_7;
(*   %xor342.7 = xor i32 %add338.7, %or96.7 *)
(* You may need to modify here *)
xor uint32 v_xor342_7 v_add338_7 v_or96_7;
(*   %shl343.7 = shl i32 %xor342.7, 16 *)
shls discard_497 v_shl343_7 v_xor342_7 16;
(*   %shr347.7 = lshr i32 %xor342.7, 16 *)
(* You may need to modify here *)
split v_shr347_7 tmp_to_be_used v_xor342_7 16;
(*   %or348.7 = or i32 %shl343.7, %shr347.7 *)
(* You may need to modify here *)
or uint32 v_or348_7 v_shl343_7 v_shr347_7;
(*   %add352.7 = add i32 %or348.7, %add44.7 *)
adds discard_498 v_add352_7 v_or348_7 v_add44_7;
(*   %xor356.7 = xor i32 %add352.7, %or222.7 *)
(* You may need to modify here *)
xor uint32 v_xor356_7 v_add352_7 v_or222_7;
(*   %shl357.7 = shl i32 %xor356.7, 12 *)
shls discard_499 v_shl357_7 v_xor356_7 12;
(*   %shr361.7 = lshr i32 %xor356.7, 20 *)
(* You may need to modify here *)
split v_shr361_7 tmp_to_be_used v_xor356_7 20;
(*   %or362.7 = or i32 %shl357.7, %shr361.7 *)
(* You may need to modify here *)
or uint32 v_or362_7 v_shl357_7 v_shr361_7;
(*   %add366.7 = add i32 %or362.7, %add338.7 *)
adds discard_500 v_add366_7 v_or362_7 v_add338_7;
(*   %xor370.7 = xor i32 %add366.7, %or348.7 *)
(* You may need to modify here *)
xor uint32 v_xor370_7 v_add366_7 v_or348_7;
(*   %shl371.7 = shl i32 %xor370.7, 8 *)
shls discard_501 v_shl371_7 v_xor370_7 8;
(*   %shr375.7 = lshr i32 %xor370.7, 24 *)
(* You may need to modify here *)
split v_shr375_7 tmp_to_be_used v_xor370_7 24;
(*   %or376.7 = or i32 %shl371.7, %shr375.7 *)
(* You may need to modify here *)
or uint32 v_or376_7 v_shl371_7 v_shr375_7;
(*   %add380.7 = add i32 %or376.7, %add352.7 *)
adds discard_502 v_add380_7 v_or376_7 v_add352_7;
(*   %xor384.7 = xor i32 %add380.7, %or362.7 *)
(* You may need to modify here *)
xor uint32 v_xor384_7 v_add380_7 v_or362_7;
(*   %shl385.7 = shl i32 %xor384.7, 7 *)
shls discard_503 v_shl385_7 v_xor384_7 7;
(*   %shr389.7 = lshr i32 %xor384.7, 25 *)
(* You may need to modify here *)
split v_shr389_7 tmp_to_be_used v_xor384_7 25;
(*   %or390.7 = or i32 %shl385.7, %shr389.7 *)
(* You may need to modify here *)
or uint32 v_or390_7 v_shl385_7 v_shr389_7;
(*   %add394.7 = add i32 %add198.7, %or54.7 *)
adds discard_504 v_add394_7 v_add198_7 v_or54_7;
(*   %xor398.7 = xor i32 %add394.7, %or152.7 *)
(* You may need to modify here *)
xor uint32 v_xor398_7 v_add394_7 v_or152_7;
(*   %shl399.7 = shl i32 %xor398.7, 16 *)
shls discard_505 v_shl399_7 v_xor398_7 16;
(*   %shr403.7 = lshr i32 %xor398.7, 16 *)
(* You may need to modify here *)
split v_shr403_7 tmp_to_be_used v_xor398_7 16;
(*   %or404.7 = or i32 %shl399.7, %shr403.7 *)
(* You may need to modify here *)
or uint32 v_or404_7 v_shl399_7 v_shr403_7;
(*   %add408.7 = add i32 %or404.7, %add100.7 *)
adds discard_506 v_add408_7 v_or404_7 v_add100_7;
(*   %xor412.7 = xor i32 %add408.7, %or54.7 *)
(* You may need to modify here *)
xor uint32 v_xor412_7 v_add408_7 v_or54_7;
(*   %shl413.7 = shl i32 %xor412.7, 12 *)
shls discard_507 v_shl413_7 v_xor412_7 12;
(*   %shr417.7 = lshr i32 %xor412.7, 20 *)
(* You may need to modify here *)
split v_shr417_7 tmp_to_be_used v_xor412_7 20;
(*   %or418.7 = or i32 %shl413.7, %shr417.7 *)
(* You may need to modify here *)
or uint32 v_or418_7 v_shl413_7 v_shr417_7;
(*   %add422.7 = add i32 %or418.7, %add394.7 *)
adds discard_508 v_add422_7 v_or418_7 v_add394_7;
(*   %xor426.7 = xor i32 %add422.7, %or404.7 *)
(* You may need to modify here *)
xor uint32 v_xor426_7 v_add422_7 v_or404_7;
(*   %shl427.7 = shl i32 %xor426.7, 8 *)
shls discard_509 v_shl427_7 v_xor426_7 8;
(*   %shr431.7 = lshr i32 %xor426.7, 24 *)
(* You may need to modify here *)
split v_shr431_7 tmp_to_be_used v_xor426_7 24;
(*   %or432.7 = or i32 %shl427.7, %shr431.7 *)
(* You may need to modify here *)
or uint32 v_or432_7 v_shl427_7 v_shr431_7;
(*   %add436.7 = add i32 %or432.7, %add408.7 *)
adds discard_510 v_add436_7 v_or432_7 v_add408_7;
(*   %xor440.7 = xor i32 %add436.7, %or418.7 *)
(* You may need to modify here *)
xor uint32 v_xor440_7 v_add436_7 v_or418_7;
(*   %shl441.7 = shl i32 %xor440.7, 7 *)
shls discard_511 v_shl441_7 v_xor440_7 7;
(*   %shr445.7 = lshr i32 %xor440.7, 25 *)
(* You may need to modify here *)
split v_shr445_7 tmp_to_be_used v_xor440_7 25;
(*   %or446.7 = or i32 %shl441.7, %shr445.7 *)
(* You may need to modify here *)
or uint32 v_or446_7 v_shl441_7 v_shr445_7;
(*   %add.8 = add i32 %or446.7, %add254.7 *)
adds discard_512 v_add_8 v_or446_7 v_add254_7;
(*   %xor.8 = xor i32 %or320.7, %add.8 *)
(* You may need to modify here *)
xor uint32 v_xor_8 v_or320_7 v_add_8;
(*   %shl.8 = shl i32 %xor.8, 16 *)
shls discard_513 v_shl_8 v_xor_8 16;
(*   %shr.8 = lshr i32 %xor.8, 16 *)
(* You may need to modify here *)
split v_shr_8 tmp_to_be_used v_xor_8 16;
(*   %or.8 = or i32 %shl.8, %shr.8 *)
(* You may need to modify here *)
or uint32 v_or_8 v_shl_8 v_shr_8;
(*   %add16.8 = add i32 %or.8, %add380.7 *)
adds discard_514 v_add16_8 v_or_8 v_add380_7;
(*   %xor20.8 = xor i32 %add16.8, %or446.7 *)
(* You may need to modify here *)
xor uint32 v_xor20_8 v_add16_8 v_or446_7;
(*   %shl21.8 = shl i32 %xor20.8, 12 *)
shls discard_515 v_shl21_8 v_xor20_8 12;
(*   %shr25.8 = lshr i32 %xor20.8, 20 *)
(* You may need to modify here *)
split v_shr25_8 tmp_to_be_used v_xor20_8 20;
(*   %or26.8 = or i32 %shl21.8, %shr25.8 *)
(* You may need to modify here *)
or uint32 v_or26_8 v_shl21_8 v_shr25_8;
(*   %add30.8 = add i32 %or26.8, %add.8 *)
adds discard_516 v_add30_8 v_or26_8 v_add_8;
(*   %xor34.8 = xor i32 %add30.8, %or.8 *)
(* You may need to modify here *)
xor uint32 v_xor34_8 v_add30_8 v_or_8;
(*   %shl35.8 = shl i32 %xor34.8, 8 *)
shls discard_517 v_shl35_8 v_xor34_8 8;
(*   %shr39.8 = lshr i32 %xor34.8, 24 *)
(* You may need to modify here *)
split v_shr39_8 tmp_to_be_used v_xor34_8 24;
(*   %or40.8 = or i32 %shl35.8, %shr39.8 *)
(* You may need to modify here *)
or uint32 v_or40_8 v_shl35_8 v_shr39_8;
(*   %add44.8 = add i32 %or40.8, %add16.8 *)
adds discard_518 v_add44_8 v_or40_8 v_add16_8;
(*   %xor48.8 = xor i32 %add44.8, %or26.8 *)
(* You may need to modify here *)
xor uint32 v_xor48_8 v_add44_8 v_or26_8;
(*   %shl49.8 = shl i32 %xor48.8, 7 *)
shls discard_519 v_shl49_8 v_xor48_8 7;
(*   %shr53.8 = lshr i32 %xor48.8, 25 *)
(* You may need to modify here *)
split v_shr53_8 tmp_to_be_used v_xor48_8 25;
(*   %or54.8 = or i32 %shl49.8, %shr53.8 *)
(* You may need to modify here *)
or uint32 v_or54_8 v_shl49_8 v_shr53_8;
(*   %add58.8 = add i32 %or278.7, %add310.7 *)
adds discard_520 v_add58_8 v_or278_7 v_add310_7;
(*   %xor62.8 = xor i32 %or376.7, %add58.8 *)
(* You may need to modify here *)
xor uint32 v_xor62_8 v_or376_7 v_add58_8;
(*   %shl63.8 = shl i32 %xor62.8, 16 *)
shls discard_521 v_shl63_8 v_xor62_8 16;
(*   %shr67.8 = lshr i32 %xor62.8, 16 *)
(* You may need to modify here *)
split v_shr67_8 tmp_to_be_used v_xor62_8 16;
(*   %or68.8 = or i32 %shl63.8, %shr67.8 *)
(* You may need to modify here *)
or uint32 v_or68_8 v_shl63_8 v_shr67_8;
(*   %add72.8 = add i32 %or68.8, %add436.7 *)
adds discard_522 v_add72_8 v_or68_8 v_add436_7;
(*   %xor76.8 = xor i32 %add72.8, %or278.7 *)
(* You may need to modify here *)
xor uint32 v_xor76_8 v_add72_8 v_or278_7;
(*   %shl77.8 = shl i32 %xor76.8, 12 *)
shls discard_523 v_shl77_8 v_xor76_8 12;
(*   %shr81.8 = lshr i32 %xor76.8, 20 *)
(* You may need to modify here *)
split v_shr81_8 tmp_to_be_used v_xor76_8 20;
(*   %or82.8 = or i32 %shl77.8, %shr81.8 *)
(* You may need to modify here *)
or uint32 v_or82_8 v_shl77_8 v_shr81_8;
(*   %add86.8 = add i32 %or82.8, %add58.8 *)
adds discard_524 v_add86_8 v_or82_8 v_add58_8;
(*   %xor90.8 = xor i32 %add86.8, %or68.8 *)
(* You may need to modify here *)
xor uint32 v_xor90_8 v_add86_8 v_or68_8;
(*   %shl91.8 = shl i32 %xor90.8, 8 *)
shls discard_525 v_shl91_8 v_xor90_8 8;
(*   %shr95.8 = lshr i32 %xor90.8, 24 *)
(* You may need to modify here *)
split v_shr95_8 tmp_to_be_used v_xor90_8 24;
(*   %or96.8 = or i32 %shl91.8, %shr95.8 *)
(* You may need to modify here *)
or uint32 v_or96_8 v_shl91_8 v_shr95_8;
(*   %add100.8 = add i32 %or96.8, %add72.8 *)
adds discard_526 v_add100_8 v_or96_8 v_add72_8;
(*   %xor104.8 = xor i32 %add100.8, %or82.8 *)
(* You may need to modify here *)
xor uint32 v_xor104_8 v_add100_8 v_or82_8;
(*   %shl105.8 = shl i32 %xor104.8, 7 *)
shls discard_527 v_shl105_8 v_xor104_8 7;
(*   %shr109.8 = lshr i32 %xor104.8, 25 *)
(* You may need to modify here *)
split v_shr109_8 tmp_to_be_used v_xor104_8 25;
(*   %or110.8 = or i32 %shl105.8, %shr109.8 *)
(* You may need to modify here *)
or uint32 v_or110_8 v_shl105_8 v_shr109_8;
(*   %add114.8 = add i32 %or334.7, %add366.7 *)
adds discard_528 v_add114_8 v_or334_7 v_add366_7;
(*   %xor118.8 = xor i32 %or432.7, %add114.8 *)
(* You may need to modify here *)
xor uint32 v_xor118_8 v_or432_7 v_add114_8;
(*   %shl119.8 = shl i32 %xor118.8, 16 *)
shls discard_529 v_shl119_8 v_xor118_8 16;
(*   %shr123.8 = lshr i32 %xor118.8, 16 *)
(* You may need to modify here *)
split v_shr123_8 tmp_to_be_used v_xor118_8 16;
(*   %or124.8 = or i32 %shl119.8, %shr123.8 *)
(* You may need to modify here *)
or uint32 v_or124_8 v_shl119_8 v_shr123_8;
(*   %add128.8 = add i32 %or124.8, %add268.7 *)
adds discard_530 v_add128_8 v_or124_8 v_add268_7;
(*   %xor132.8 = xor i32 %add128.8, %or334.7 *)
(* You may need to modify here *)
xor uint32 v_xor132_8 v_add128_8 v_or334_7;
(*   %shl133.8 = shl i32 %xor132.8, 12 *)
shls discard_531 v_shl133_8 v_xor132_8 12;
(*   %shr137.8 = lshr i32 %xor132.8, 20 *)
(* You may need to modify here *)
split v_shr137_8 tmp_to_be_used v_xor132_8 20;
(*   %or138.8 = or i32 %shl133.8, %shr137.8 *)
(* You may need to modify here *)
or uint32 v_or138_8 v_shl133_8 v_shr137_8;
(*   %add142.8 = add i32 %or138.8, %add114.8 *)
adds discard_532 v_add142_8 v_or138_8 v_add114_8;
(*   %xor146.8 = xor i32 %add142.8, %or124.8 *)
(* You may need to modify here *)
xor uint32 v_xor146_8 v_add142_8 v_or124_8;
(*   %shl147.8 = shl i32 %xor146.8, 8 *)
shls discard_533 v_shl147_8 v_xor146_8 8;
(*   %shr151.8 = lshr i32 %xor146.8, 24 *)
(* You may need to modify here *)
split v_shr151_8 tmp_to_be_used v_xor146_8 24;
(*   %or152.8 = or i32 %shl147.8, %shr151.8 *)
(* You may need to modify here *)
or uint32 v_or152_8 v_shl147_8 v_shr151_8;
(*   %add156.8 = add i32 %or152.8, %add128.8 *)
adds discard_534 v_add156_8 v_or152_8 v_add128_8;
(*   %xor160.8 = xor i32 %add156.8, %or138.8 *)
(* You may need to modify here *)
xor uint32 v_xor160_8 v_add156_8 v_or138_8;
(*   %shl161.8 = shl i32 %xor160.8, 7 *)
shls discard_535 v_shl161_8 v_xor160_8 7;
(*   %shr165.8 = lshr i32 %xor160.8, 25 *)
(* You may need to modify here *)
split v_shr165_8 tmp_to_be_used v_xor160_8 25;
(*   %or166.8 = or i32 %shl161.8, %shr165.8 *)
(* You may need to modify here *)
or uint32 v_or166_8 v_shl161_8 v_shr165_8;
(*   %add170.8 = add i32 %or390.7, %add422.7 *)
adds discard_536 v_add170_8 v_or390_7 v_add422_7;
(*   %xor174.8 = xor i32 %or264.7, %add170.8 *)
(* You may need to modify here *)
xor uint32 v_xor174_8 v_or264_7 v_add170_8;
(*   %shl175.8 = shl i32 %xor174.8, 16 *)
shls discard_537 v_shl175_8 v_xor174_8 16;
(*   %shr179.8 = lshr i32 %xor174.8, 16 *)
(* You may need to modify here *)
split v_shr179_8 tmp_to_be_used v_xor174_8 16;
(*   %or180.8 = or i32 %shl175.8, %shr179.8 *)
(* You may need to modify here *)
or uint32 v_or180_8 v_shl175_8 v_shr179_8;
(*   %add184.8 = add i32 %or180.8, %add324.7 *)
adds discard_538 v_add184_8 v_or180_8 v_add324_7;
(*   %xor188.8 = xor i32 %add184.8, %or390.7 *)
(* You may need to modify here *)
xor uint32 v_xor188_8 v_add184_8 v_or390_7;
(*   %shl189.8 = shl i32 %xor188.8, 12 *)
shls discard_539 v_shl189_8 v_xor188_8 12;
(*   %shr193.8 = lshr i32 %xor188.8, 20 *)
(* You may need to modify here *)
split v_shr193_8 tmp_to_be_used v_xor188_8 20;
(*   %or194.8 = or i32 %shl189.8, %shr193.8 *)
(* You may need to modify here *)
or uint32 v_or194_8 v_shl189_8 v_shr193_8;
(*   %add198.8 = add i32 %or194.8, %add170.8 *)
adds discard_540 v_add198_8 v_or194_8 v_add170_8;
(*   %xor202.8 = xor i32 %add198.8, %or180.8 *)
(* You may need to modify here *)
xor uint32 v_xor202_8 v_add198_8 v_or180_8;
(*   %shl203.8 = shl i32 %xor202.8, 8 *)
shls discard_541 v_shl203_8 v_xor202_8 8;
(*   %shr207.8 = lshr i32 %xor202.8, 24 *)
(* You may need to modify here *)
split v_shr207_8 tmp_to_be_used v_xor202_8 24;
(*   %or208.8 = or i32 %shl203.8, %shr207.8 *)
(* You may need to modify here *)
or uint32 v_or208_8 v_shl203_8 v_shr207_8;
(*   %add212.8 = add i32 %or208.8, %add184.8 *)
adds discard_542 v_add212_8 v_or208_8 v_add184_8;
(*   %xor216.8 = xor i32 %add212.8, %or194.8 *)
(* You may need to modify here *)
xor uint32 v_xor216_8 v_add212_8 v_or194_8;
(*   %shl217.8 = shl i32 %xor216.8, 7 *)
shls discard_543 v_shl217_8 v_xor216_8 7;
(*   %shr221.8 = lshr i32 %xor216.8, 25 *)
(* You may need to modify here *)
split v_shr221_8 tmp_to_be_used v_xor216_8 25;
(*   %or222.8 = or i32 %shl217.8, %shr221.8 *)
(* You may need to modify here *)
or uint32 v_or222_8 v_shl217_8 v_shr221_8;
(*   %add226.8 = add i32 %or110.8, %add30.8 *)
adds discard_544 v_add226_8 v_or110_8 v_add30_8;
(*   %xor230.8 = xor i32 %or208.8, %add226.8 *)
(* You may need to modify here *)
xor uint32 v_xor230_8 v_or208_8 v_add226_8;
(*   %shl231.8 = shl i32 %xor230.8, 16 *)
shls discard_545 v_shl231_8 v_xor230_8 16;
(*   %shr235.8 = lshr i32 %xor230.8, 16 *)
(* You may need to modify here *)
split v_shr235_8 tmp_to_be_used v_xor230_8 16;
(*   %or236.8 = or i32 %shl231.8, %shr235.8 *)
(* You may need to modify here *)
or uint32 v_or236_8 v_shl231_8 v_shr235_8;
(*   %add240.8 = add i32 %or236.8, %add156.8 *)
adds discard_546 v_add240_8 v_or236_8 v_add156_8;
(*   %xor244.8 = xor i32 %add240.8, %or110.8 *)
(* You may need to modify here *)
xor uint32 v_xor244_8 v_add240_8 v_or110_8;
(*   %shl245.8 = shl i32 %xor244.8, 12 *)
shls discard_547 v_shl245_8 v_xor244_8 12;
(*   %shr249.8 = lshr i32 %xor244.8, 20 *)
(* You may need to modify here *)
split v_shr249_8 tmp_to_be_used v_xor244_8 20;
(*   %or250.8 = or i32 %shl245.8, %shr249.8 *)
(* You may need to modify here *)
or uint32 v_or250_8 v_shl245_8 v_shr249_8;
(*   %add254.8 = add i32 %or250.8, %add226.8 *)
adds discard_548 v_add254_8 v_or250_8 v_add226_8;
(*   %xor258.8 = xor i32 %add254.8, %or236.8 *)
(* You may need to modify here *)
xor uint32 v_xor258_8 v_add254_8 v_or236_8;
(*   %shl259.8 = shl i32 %xor258.8, 8 *)
shls discard_549 v_shl259_8 v_xor258_8 8;
(*   %shr263.8 = lshr i32 %xor258.8, 24 *)
(* You may need to modify here *)
split v_shr263_8 tmp_to_be_used v_xor258_8 24;
(*   %or264.8 = or i32 %shl259.8, %shr263.8 *)
(* You may need to modify here *)
or uint32 v_or264_8 v_shl259_8 v_shr263_8;
(*   %add268.8 = add i32 %or264.8, %add240.8 *)
adds discard_550 v_add268_8 v_or264_8 v_add240_8;
(*   %xor272.8 = xor i32 %add268.8, %or250.8 *)
(* You may need to modify here *)
xor uint32 v_xor272_8 v_add268_8 v_or250_8;
(*   %shl273.8 = shl i32 %xor272.8, 7 *)
shls discard_551 v_shl273_8 v_xor272_8 7;
(*   %shr277.8 = lshr i32 %xor272.8, 25 *)
(* You may need to modify here *)
split v_shr277_8 tmp_to_be_used v_xor272_8 25;
(*   %or278.8 = or i32 %shl273.8, %shr277.8 *)
(* You may need to modify here *)
or uint32 v_or278_8 v_shl273_8 v_shr277_8;
(*   %add282.8 = add i32 %or166.8, %add86.8 *)
adds discard_552 v_add282_8 v_or166_8 v_add86_8;
(*   %xor286.8 = xor i32 %add282.8, %or40.8 *)
(* You may need to modify here *)
xor uint32 v_xor286_8 v_add282_8 v_or40_8;
(*   %shl287.8 = shl i32 %xor286.8, 16 *)
shls discard_553 v_shl287_8 v_xor286_8 16;
(*   %shr291.8 = lshr i32 %xor286.8, 16 *)
(* You may need to modify here *)
split v_shr291_8 tmp_to_be_used v_xor286_8 16;
(*   %or292.8 = or i32 %shl287.8, %shr291.8 *)
(* You may need to modify here *)
or uint32 v_or292_8 v_shl287_8 v_shr291_8;
(*   %add296.8 = add i32 %add212.8, %or292.8 *)
adds discard_554 v_add296_8 v_add212_8 v_or292_8;
(*   %xor300.8 = xor i32 %add296.8, %or166.8 *)
(* You may need to modify here *)
xor uint32 v_xor300_8 v_add296_8 v_or166_8;
(*   %shl301.8 = shl i32 %xor300.8, 12 *)
shls discard_555 v_shl301_8 v_xor300_8 12;
(*   %shr305.8 = lshr i32 %xor300.8, 20 *)
(* You may need to modify here *)
split v_shr305_8 tmp_to_be_used v_xor300_8 20;
(*   %or306.8 = or i32 %shl301.8, %shr305.8 *)
(* You may need to modify here *)
or uint32 v_or306_8 v_shl301_8 v_shr305_8;
(*   %add310.8 = add i32 %or306.8, %add282.8 *)
adds discard_556 v_add310_8 v_or306_8 v_add282_8;
(*   %xor314.8 = xor i32 %add310.8, %or292.8 *)
(* You may need to modify here *)
xor uint32 v_xor314_8 v_add310_8 v_or292_8;
(*   %shl315.8 = shl i32 %xor314.8, 8 *)
shls discard_557 v_shl315_8 v_xor314_8 8;
(*   %shr319.8 = lshr i32 %xor314.8, 24 *)
(* You may need to modify here *)
split v_shr319_8 tmp_to_be_used v_xor314_8 24;
(*   %or320.8 = or i32 %shl315.8, %shr319.8 *)
(* You may need to modify here *)
or uint32 v_or320_8 v_shl315_8 v_shr319_8;
(*   %add324.8 = add i32 %or320.8, %add296.8 *)
adds discard_558 v_add324_8 v_or320_8 v_add296_8;
(*   %xor328.8 = xor i32 %add324.8, %or306.8 *)
(* You may need to modify here *)
xor uint32 v_xor328_8 v_add324_8 v_or306_8;
(*   %shl329.8 = shl i32 %xor328.8, 7 *)
shls discard_559 v_shl329_8 v_xor328_8 7;
(*   %shr333.8 = lshr i32 %xor328.8, 25 *)
(* You may need to modify here *)
split v_shr333_8 tmp_to_be_used v_xor328_8 25;
(*   %or334.8 = or i32 %shl329.8, %shr333.8 *)
(* You may need to modify here *)
or uint32 v_or334_8 v_shl329_8 v_shr333_8;
(*   %add338.8 = add i32 %or222.8, %add142.8 *)
adds discard_560 v_add338_8 v_or222_8 v_add142_8;
(*   %xor342.8 = xor i32 %add338.8, %or96.8 *)
(* You may need to modify here *)
xor uint32 v_xor342_8 v_add338_8 v_or96_8;
(*   %shl343.8 = shl i32 %xor342.8, 16 *)
shls discard_561 v_shl343_8 v_xor342_8 16;
(*   %shr347.8 = lshr i32 %xor342.8, 16 *)
(* You may need to modify here *)
split v_shr347_8 tmp_to_be_used v_xor342_8 16;
(*   %or348.8 = or i32 %shl343.8, %shr347.8 *)
(* You may need to modify here *)
or uint32 v_or348_8 v_shl343_8 v_shr347_8;
(*   %add352.8 = add i32 %or348.8, %add44.8 *)
adds discard_562 v_add352_8 v_or348_8 v_add44_8;
(*   %xor356.8 = xor i32 %add352.8, %or222.8 *)
(* You may need to modify here *)
xor uint32 v_xor356_8 v_add352_8 v_or222_8;
(*   %shl357.8 = shl i32 %xor356.8, 12 *)
shls discard_563 v_shl357_8 v_xor356_8 12;
(*   %shr361.8 = lshr i32 %xor356.8, 20 *)
(* You may need to modify here *)
split v_shr361_8 tmp_to_be_used v_xor356_8 20;
(*   %or362.8 = or i32 %shl357.8, %shr361.8 *)
(* You may need to modify here *)
or uint32 v_or362_8 v_shl357_8 v_shr361_8;
(*   %add366.8 = add i32 %or362.8, %add338.8 *)
adds discard_564 v_add366_8 v_or362_8 v_add338_8;
(*   %xor370.8 = xor i32 %add366.8, %or348.8 *)
(* You may need to modify here *)
xor uint32 v_xor370_8 v_add366_8 v_or348_8;
(*   %shl371.8 = shl i32 %xor370.8, 8 *)
shls discard_565 v_shl371_8 v_xor370_8 8;
(*   %shr375.8 = lshr i32 %xor370.8, 24 *)
(* You may need to modify here *)
split v_shr375_8 tmp_to_be_used v_xor370_8 24;
(*   %or376.8 = or i32 %shl371.8, %shr375.8 *)
(* You may need to modify here *)
or uint32 v_or376_8 v_shl371_8 v_shr375_8;
(*   %add380.8 = add i32 %or376.8, %add352.8 *)
adds discard_566 v_add380_8 v_or376_8 v_add352_8;
(*   %xor384.8 = xor i32 %add380.8, %or362.8 *)
(* You may need to modify here *)
xor uint32 v_xor384_8 v_add380_8 v_or362_8;
(*   %shl385.8 = shl i32 %xor384.8, 7 *)
shls discard_567 v_shl385_8 v_xor384_8 7;
(*   %shr389.8 = lshr i32 %xor384.8, 25 *)
(* You may need to modify here *)
split v_shr389_8 tmp_to_be_used v_xor384_8 25;
(*   %or390.8 = or i32 %shl385.8, %shr389.8 *)
(* You may need to modify here *)
or uint32 v_or390_8 v_shl385_8 v_shr389_8;
(*   %add394.8 = add i32 %add198.8, %or54.8 *)
adds discard_568 v_add394_8 v_add198_8 v_or54_8;
(*   %xor398.8 = xor i32 %add394.8, %or152.8 *)
(* You may need to modify here *)
xor uint32 v_xor398_8 v_add394_8 v_or152_8;
(*   %shl399.8 = shl i32 %xor398.8, 16 *)
shls discard_569 v_shl399_8 v_xor398_8 16;
(*   %shr403.8 = lshr i32 %xor398.8, 16 *)
(* You may need to modify here *)
split v_shr403_8 tmp_to_be_used v_xor398_8 16;
(*   %or404.8 = or i32 %shl399.8, %shr403.8 *)
(* You may need to modify here *)
or uint32 v_or404_8 v_shl399_8 v_shr403_8;
(*   %add408.8 = add i32 %or404.8, %add100.8 *)
adds discard_570 v_add408_8 v_or404_8 v_add100_8;
(*   %xor412.8 = xor i32 %add408.8, %or54.8 *)
(* You may need to modify here *)
xor uint32 v_xor412_8 v_add408_8 v_or54_8;
(*   %shl413.8 = shl i32 %xor412.8, 12 *)
shls discard_571 v_shl413_8 v_xor412_8 12;
(*   %shr417.8 = lshr i32 %xor412.8, 20 *)
(* You may need to modify here *)
split v_shr417_8 tmp_to_be_used v_xor412_8 20;
(*   %or418.8 = or i32 %shl413.8, %shr417.8 *)
(* You may need to modify here *)
or uint32 v_or418_8 v_shl413_8 v_shr417_8;
(*   %add422.8 = add i32 %or418.8, %add394.8 *)
adds discard_572 v_add422_8 v_or418_8 v_add394_8;
(*   %xor426.8 = xor i32 %add422.8, %or404.8 *)
(* You may need to modify here *)
xor uint32 v_xor426_8 v_add422_8 v_or404_8;
(*   %shl427.8 = shl i32 %xor426.8, 8 *)
shls discard_573 v_shl427_8 v_xor426_8 8;
(*   %shr431.8 = lshr i32 %xor426.8, 24 *)
(* You may need to modify here *)
split v_shr431_8 tmp_to_be_used v_xor426_8 24;
(*   %or432.8 = or i32 %shl427.8, %shr431.8 *)
(* You may need to modify here *)
or uint32 v_or432_8 v_shl427_8 v_shr431_8;
(*   %add436.8 = add i32 %or432.8, %add408.8 *)
adds discard_574 v_add436_8 v_or432_8 v_add408_8;
(*   %xor440.8 = xor i32 %add436.8, %or418.8 *)
(* You may need to modify here *)
xor uint32 v_xor440_8 v_add436_8 v_or418_8;
(*   %shl441.8 = shl i32 %xor440.8, 7 *)
shls discard_575 v_shl441_8 v_xor440_8 7;
(*   %shr445.8 = lshr i32 %xor440.8, 25 *)
(* You may need to modify here *)
split v_shr445_8 tmp_to_be_used v_xor440_8 25;
(*   %or446.8 = or i32 %shl441.8, %shr445.8 *)
(* You may need to modify here *)
or uint32 v_or446_8 v_shl441_8 v_shr445_8;
(*   %add.9 = add i32 %or446.8, %add254.8 *)
adds discard_576 v_add_9 v_or446_8 v_add254_8;
(*   %xor.9 = xor i32 %or320.8, %add.9 *)
(* You may need to modify here *)
xor uint32 v_xor_9 v_or320_8 v_add_9;
(*   %shl.9 = shl i32 %xor.9, 16 *)
shls discard_577 v_shl_9 v_xor_9 16;
(*   %shr.9 = lshr i32 %xor.9, 16 *)
(* You may need to modify here *)
split v_shr_9 tmp_to_be_used v_xor_9 16;
(*   %or.9 = or i32 %shl.9, %shr.9 *)
(* You may need to modify here *)
or uint32 v_or_9 v_shl_9 v_shr_9;
(*   %add16.9 = add i32 %or.9, %add380.8 *)
adds discard_578 v_add16_9 v_or_9 v_add380_8;
(*   %xor20.9 = xor i32 %add16.9, %or446.8 *)
(* You may need to modify here *)
xor uint32 v_xor20_9 v_add16_9 v_or446_8;
(*   %shl21.9 = shl i32 %xor20.9, 12 *)
shls discard_579 v_shl21_9 v_xor20_9 12;
(*   %shr25.9 = lshr i32 %xor20.9, 20 *)
(* You may need to modify here *)
split v_shr25_9 tmp_to_be_used v_xor20_9 20;
(*   %or26.9 = or i32 %shl21.9, %shr25.9 *)
(* You may need to modify here *)
or uint32 v_or26_9 v_shl21_9 v_shr25_9;
(*   %add30.9 = add i32 %or26.9, %add.9 *)
adds discard_580 v_add30_9 v_or26_9 v_add_9;
(*   %xor34.9 = xor i32 %add30.9, %or.9 *)
(* You may need to modify here *)
xor uint32 v_xor34_9 v_add30_9 v_or_9;
(*   %shl35.9 = shl i32 %xor34.9, 8 *)
shls discard_581 v_shl35_9 v_xor34_9 8;
(*   %shr39.9 = lshr i32 %xor34.9, 24 *)
(* You may need to modify here *)
split v_shr39_9 tmp_to_be_used v_xor34_9 24;
(*   %or40.9 = or i32 %shl35.9, %shr39.9 *)
(* You may need to modify here *)
or uint32 v_or40_9 v_shl35_9 v_shr39_9;
(*   %add44.9 = add i32 %or40.9, %add16.9 *)
adds discard_582 v_add44_9 v_or40_9 v_add16_9;
(*   %xor48.9 = xor i32 %add44.9, %or26.9 *)
(* You may need to modify here *)
xor uint32 v_xor48_9 v_add44_9 v_or26_9;
(*   %shl49.9 = shl i32 %xor48.9, 7 *)
shls discard_583 v_shl49_9 v_xor48_9 7;
(*   %shr53.9 = lshr i32 %xor48.9, 25 *)
(* You may need to modify here *)
split v_shr53_9 tmp_to_be_used v_xor48_9 25;
(*   %or54.9 = or i32 %shl49.9, %shr53.9 *)
(* You may need to modify here *)
or uint32 v_or54_9 v_shl49_9 v_shr53_9;
(*   %add58.9 = add i32 %or278.8, %add310.8 *)
adds discard_584 v_add58_9 v_or278_8 v_add310_8;
(*   %xor62.9 = xor i32 %or376.8, %add58.9 *)
(* You may need to modify here *)
xor uint32 v_xor62_9 v_or376_8 v_add58_9;
(*   %shl63.9 = shl i32 %xor62.9, 16 *)
shls discard_585 v_shl63_9 v_xor62_9 16;
(*   %shr67.9 = lshr i32 %xor62.9, 16 *)
(* You may need to modify here *)
split v_shr67_9 tmp_to_be_used v_xor62_9 16;
(*   %or68.9 = or i32 %shl63.9, %shr67.9 *)
(* You may need to modify here *)
or uint32 v_or68_9 v_shl63_9 v_shr67_9;
(*   %add72.9 = add i32 %or68.9, %add436.8 *)
adds discard_586 v_add72_9 v_or68_9 v_add436_8;
(*   %xor76.9 = xor i32 %add72.9, %or278.8 *)
(* You may need to modify here *)
xor uint32 v_xor76_9 v_add72_9 v_or278_8;
(*   %shl77.9 = shl i32 %xor76.9, 12 *)
shls discard_587 v_shl77_9 v_xor76_9 12;
(*   %shr81.9 = lshr i32 %xor76.9, 20 *)
(* You may need to modify here *)
split v_shr81_9 tmp_to_be_used v_xor76_9 20;
(*   %or82.9 = or i32 %shl77.9, %shr81.9 *)
(* You may need to modify here *)
or uint32 v_or82_9 v_shl77_9 v_shr81_9;
(*   %add86.9 = add i32 %or82.9, %add58.9 *)
adds discard_588 v_add86_9 v_or82_9 v_add58_9;
(*   %xor90.9 = xor i32 %add86.9, %or68.9 *)
(* You may need to modify here *)
xor uint32 v_xor90_9 v_add86_9 v_or68_9;
(*   %shl91.9 = shl i32 %xor90.9, 8 *)
shls discard_589 v_shl91_9 v_xor90_9 8;
(*   %shr95.9 = lshr i32 %xor90.9, 24 *)
(* You may need to modify here *)
split v_shr95_9 tmp_to_be_used v_xor90_9 24;
(*   %or96.9 = or i32 %shl91.9, %shr95.9 *)
(* You may need to modify here *)
or uint32 v_or96_9 v_shl91_9 v_shr95_9;
(*   %add100.9 = add i32 %or96.9, %add72.9 *)
adds discard_590 v_add100_9 v_or96_9 v_add72_9;
(*   %xor104.9 = xor i32 %add100.9, %or82.9 *)
(* You may need to modify here *)
xor uint32 v_xor104_9 v_add100_9 v_or82_9;
(*   %shl105.9 = shl i32 %xor104.9, 7 *)
shls discard_591 v_shl105_9 v_xor104_9 7;
(*   %shr109.9 = lshr i32 %xor104.9, 25 *)
(* You may need to modify here *)
split v_shr109_9 tmp_to_be_used v_xor104_9 25;
(*   %or110.9 = or i32 %shl105.9, %shr109.9 *)
(* You may need to modify here *)
or uint32 v_or110_9 v_shl105_9 v_shr109_9;
(*   %add114.9 = add i32 %or334.8, %add366.8 *)
adds discard_592 v_add114_9 v_or334_8 v_add366_8;
(*   %xor118.9 = xor i32 %or432.8, %add114.9 *)
(* You may need to modify here *)
xor uint32 v_xor118_9 v_or432_8 v_add114_9;
(*   %shl119.9 = shl i32 %xor118.9, 16 *)
shls discard_593 v_shl119_9 v_xor118_9 16;
(*   %shr123.9 = lshr i32 %xor118.9, 16 *)
(* You may need to modify here *)
split v_shr123_9 tmp_to_be_used v_xor118_9 16;
(*   %or124.9 = or i32 %shl119.9, %shr123.9 *)
(* You may need to modify here *)
or uint32 v_or124_9 v_shl119_9 v_shr123_9;
(*   %add128.9 = add i32 %or124.9, %add268.8 *)
adds discard_594 v_add128_9 v_or124_9 v_add268_8;
(*   %xor132.9 = xor i32 %add128.9, %or334.8 *)
(* You may need to modify here *)
xor uint32 v_xor132_9 v_add128_9 v_or334_8;
(*   %shl133.9 = shl i32 %xor132.9, 12 *)
shls discard_595 v_shl133_9 v_xor132_9 12;
(*   %shr137.9 = lshr i32 %xor132.9, 20 *)
(* You may need to modify here *)
split v_shr137_9 tmp_to_be_used v_xor132_9 20;
(*   %or138.9 = or i32 %shl133.9, %shr137.9 *)
(* You may need to modify here *)
or uint32 v_or138_9 v_shl133_9 v_shr137_9;
(*   %add142.9 = add i32 %or138.9, %add114.9 *)
adds discard_596 v_add142_9 v_or138_9 v_add114_9;
(*   %xor146.9 = xor i32 %add142.9, %or124.9 *)
(* You may need to modify here *)
xor uint32 v_xor146_9 v_add142_9 v_or124_9;
(*   %shl147.9 = shl i32 %xor146.9, 8 *)
shls discard_597 v_shl147_9 v_xor146_9 8;
(*   %shr151.9 = lshr i32 %xor146.9, 24 *)
(* You may need to modify here *)
split v_shr151_9 tmp_to_be_used v_xor146_9 24;
(*   %or152.9 = or i32 %shl147.9, %shr151.9 *)
(* You may need to modify here *)
or uint32 v_or152_9 v_shl147_9 v_shr151_9;
(*   %add156.9 = add i32 %or152.9, %add128.9 *)
adds discard_598 v_add156_9 v_or152_9 v_add128_9;
(*   %xor160.9 = xor i32 %add156.9, %or138.9 *)
(* You may need to modify here *)
xor uint32 v_xor160_9 v_add156_9 v_or138_9;
(*   %shl161.9 = shl i32 %xor160.9, 7 *)
shls discard_599 v_shl161_9 v_xor160_9 7;
(*   %shr165.9 = lshr i32 %xor160.9, 25 *)
(* You may need to modify here *)
split v_shr165_9 tmp_to_be_used v_xor160_9 25;
(*   %or166.9 = or i32 %shl161.9, %shr165.9 *)
(* You may need to modify here *)
or uint32 v_or166_9 v_shl161_9 v_shr165_9;
(*   %add170.9 = add i32 %or390.8, %add422.8 *)
adds discard_600 v_add170_9 v_or390_8 v_add422_8;
(*   %xor174.9 = xor i32 %or264.8, %add170.9 *)
(* You may need to modify here *)
xor uint32 v_xor174_9 v_or264_8 v_add170_9;
(*   %shl175.9 = shl i32 %xor174.9, 16 *)
shls discard_601 v_shl175_9 v_xor174_9 16;
(*   %shr179.9 = lshr i32 %xor174.9, 16 *)
(* You may need to modify here *)
split v_shr179_9 tmp_to_be_used v_xor174_9 16;
(*   %or180.9 = or i32 %shl175.9, %shr179.9 *)
(* You may need to modify here *)
or uint32 v_or180_9 v_shl175_9 v_shr179_9;
(*   %add184.9 = add i32 %or180.9, %add324.8 *)
adds discard_602 v_add184_9 v_or180_9 v_add324_8;
(*   %xor188.9 = xor i32 %add184.9, %or390.8 *)
(* You may need to modify here *)
xor uint32 v_xor188_9 v_add184_9 v_or390_8;
(*   %shl189.9 = shl i32 %xor188.9, 12 *)
shls discard_603 v_shl189_9 v_xor188_9 12;
(*   %shr193.9 = lshr i32 %xor188.9, 20 *)
(* You may need to modify here *)
split v_shr193_9 tmp_to_be_used v_xor188_9 20;
(*   %or194.9 = or i32 %shl189.9, %shr193.9 *)
(* You may need to modify here *)
or uint32 v_or194_9 v_shl189_9 v_shr193_9;
(*   %add198.9 = add i32 %or194.9, %add170.9 *)
adds discard_604 v_add198_9 v_or194_9 v_add170_9;
(*   %xor202.9 = xor i32 %add198.9, %or180.9 *)
(* You may need to modify here *)
xor uint32 v_xor202_9 v_add198_9 v_or180_9;
(*   %shl203.9 = shl i32 %xor202.9, 8 *)
shls discard_605 v_shl203_9 v_xor202_9 8;
(*   %shr207.9 = lshr i32 %xor202.9, 24 *)
(* You may need to modify here *)
split v_shr207_9 tmp_to_be_used v_xor202_9 24;
(*   %or208.9 = or i32 %shl203.9, %shr207.9 *)
(* You may need to modify here *)
or uint32 v_or208_9 v_shl203_9 v_shr207_9;
(*   %add212.9 = add i32 %or208.9, %add184.9 *)
adds discard_606 v_add212_9 v_or208_9 v_add184_9;
(*   %xor216.9 = xor i32 %add212.9, %or194.9 *)
(* You may need to modify here *)
xor uint32 v_xor216_9 v_add212_9 v_or194_9;
(*   %shl217.9 = shl i32 %xor216.9, 7 *)
shls discard_607 v_shl217_9 v_xor216_9 7;
(*   %shr221.9 = lshr i32 %xor216.9, 25 *)
(* You may need to modify here *)
split v_shr221_9 tmp_to_be_used v_xor216_9 25;
(*   %or222.9 = or i32 %shl217.9, %shr221.9 *)
(* You may need to modify here *)
or uint32 v_or222_9 v_shl217_9 v_shr221_9;
(*   %add226.9 = add i32 %or110.9, %add30.9 *)
adds discard_608 v_add226_9 v_or110_9 v_add30_9;
(*   %xor230.9 = xor i32 %or208.9, %add226.9 *)
(* You may need to modify here *)
xor uint32 v_xor230_9 v_or208_9 v_add226_9;
(*   %shl231.9 = shl i32 %xor230.9, 16 *)
shls discard_609 v_shl231_9 v_xor230_9 16;
(*   %shr235.9 = lshr i32 %xor230.9, 16 *)
(* You may need to modify here *)
split v_shr235_9 tmp_to_be_used v_xor230_9 16;
(*   %or236.9 = or i32 %shl231.9, %shr235.9 *)
(* You may need to modify here *)
or uint32 v_or236_9 v_shl231_9 v_shr235_9;
(*   %add240.9 = add i32 %or236.9, %add156.9 *)
adds discard_610 v_add240_9 v_or236_9 v_add156_9;
(*   %xor244.9 = xor i32 %add240.9, %or110.9 *)
(* You may need to modify here *)
xor uint32 v_xor244_9 v_add240_9 v_or110_9;
(*   %shl245.9 = shl i32 %xor244.9, 12 *)
shls discard_611 v_shl245_9 v_xor244_9 12;
(*   %shr249.9 = lshr i32 %xor244.9, 20 *)
(* You may need to modify here *)
split v_shr249_9 tmp_to_be_used v_xor244_9 20;
(*   %or250.9 = or i32 %shl245.9, %shr249.9 *)
(* You may need to modify here *)
or uint32 v_or250_9 v_shl245_9 v_shr249_9;
(*   %add254.9 = add i32 %or250.9, %add226.9 *)
adds discard_612 v_add254_9 v_or250_9 v_add226_9;
(*   %xor258.9 = xor i32 %add254.9, %or236.9 *)
(* You may need to modify here *)
xor uint32 v_xor258_9 v_add254_9 v_or236_9;
(*   %shl259.9 = shl i32 %xor258.9, 8 *)
shls discard_613 v_shl259_9 v_xor258_9 8;
(*   %shr263.9 = lshr i32 %xor258.9, 24 *)
(* You may need to modify here *)
split v_shr263_9 tmp_to_be_used v_xor258_9 24;
(*   %or264.9 = or i32 %shl259.9, %shr263.9 *)
(* You may need to modify here *)
or uint32 v_or264_9 v_shl259_9 v_shr263_9;
(*   %add268.9 = add i32 %or264.9, %add240.9 *)
adds discard_614 v_add268_9 v_or264_9 v_add240_9;
(*   %xor272.9 = xor i32 %add268.9, %or250.9 *)
(* You may need to modify here *)
xor uint32 v_xor272_9 v_add268_9 v_or250_9;
(*   %shl273.9 = shl i32 %xor272.9, 7 *)
shls discard_615 v_shl273_9 v_xor272_9 7;
(*   %shr277.9 = lshr i32 %xor272.9, 25 *)
(* You may need to modify here *)
split v_shr277_9 tmp_to_be_used v_xor272_9 25;
(*   %or278.9 = or i32 %shl273.9, %shr277.9 *)
(* You may need to modify here *)
or uint32 v_or278_9 v_shl273_9 v_shr277_9;
(*   %add282.9 = add i32 %or166.9, %add86.9 *)
adds discard_616 v_add282_9 v_or166_9 v_add86_9;
(*   %xor286.9 = xor i32 %add282.9, %or40.9 *)
(* You may need to modify here *)
xor uint32 v_xor286_9 v_add282_9 v_or40_9;
(*   %shl287.9 = shl i32 %xor286.9, 16 *)
shls discard_617 v_shl287_9 v_xor286_9 16;
(*   %shr291.9 = lshr i32 %xor286.9, 16 *)
(* You may need to modify here *)
split v_shr291_9 tmp_to_be_used v_xor286_9 16;
(*   %or292.9 = or i32 %shl287.9, %shr291.9 *)
(* You may need to modify here *)
or uint32 v_or292_9 v_shl287_9 v_shr291_9;
(*   %add296.9 = add i32 %add212.9, %or292.9 *)
adds discard_618 v_add296_9 v_add212_9 v_or292_9;
(*   %xor300.9 = xor i32 %add296.9, %or166.9 *)
(* You may need to modify here *)
xor uint32 v_xor300_9 v_add296_9 v_or166_9;
(*   %shl301.9 = shl i32 %xor300.9, 12 *)
shls discard_619 v_shl301_9 v_xor300_9 12;
(*   %shr305.9 = lshr i32 %xor300.9, 20 *)
(* You may need to modify here *)
split v_shr305_9 tmp_to_be_used v_xor300_9 20;
(*   %or306.9 = or i32 %shl301.9, %shr305.9 *)
(* You may need to modify here *)
or uint32 v_or306_9 v_shl301_9 v_shr305_9;
(*   %add310.9 = add i32 %or306.9, %add282.9 *)
adds discard_620 v_add310_9 v_or306_9 v_add282_9;
(*   %xor314.9 = xor i32 %add310.9, %or292.9 *)
(* You may need to modify here *)
xor uint32 v_xor314_9 v_add310_9 v_or292_9;
(*   %shl315.9 = shl i32 %xor314.9, 8 *)
shls discard_621 v_shl315_9 v_xor314_9 8;
(*   %shr319.9 = lshr i32 %xor314.9, 24 *)
(* You may need to modify here *)
split v_shr319_9 tmp_to_be_used v_xor314_9 24;
(*   %or320.9 = or i32 %shl315.9, %shr319.9 *)
(* You may need to modify here *)
or uint32 v_or320_9 v_shl315_9 v_shr319_9;
(*   %add324.9 = add i32 %or320.9, %add296.9 *)
adds discard_622 v_add324_9 v_or320_9 v_add296_9;
(*   %xor328.9 = xor i32 %add324.9, %or306.9 *)
(* You may need to modify here *)
xor uint32 v_xor328_9 v_add324_9 v_or306_9;
(*   %shl329.9 = shl i32 %xor328.9, 7 *)
shls discard_623 v_shl329_9 v_xor328_9 7;
(*   %shr333.9 = lshr i32 %xor328.9, 25 *)
(* You may need to modify here *)
split v_shr333_9 tmp_to_be_used v_xor328_9 25;
(*   %or334.9 = or i32 %shl329.9, %shr333.9 *)
(* You may need to modify here *)
or uint32 v_or334_9 v_shl329_9 v_shr333_9;
(*   %add338.9 = add i32 %or222.9, %add142.9 *)
adds discard_624 v_add338_9 v_or222_9 v_add142_9;
(*   %xor342.9 = xor i32 %add338.9, %or96.9 *)
(* You may need to modify here *)
xor uint32 v_xor342_9 v_add338_9 v_or96_9;
(*   %shl343.9 = shl i32 %xor342.9, 16 *)
shls discard_625 v_shl343_9 v_xor342_9 16;
(*   %shr347.9 = lshr i32 %xor342.9, 16 *)
(* You may need to modify here *)
split v_shr347_9 tmp_to_be_used v_xor342_9 16;
(*   %or348.9 = or i32 %shl343.9, %shr347.9 *)
(* You may need to modify here *)
or uint32 v_or348_9 v_shl343_9 v_shr347_9;
(*   %add352.9 = add i32 %or348.9, %add44.9 *)
adds discard_626 v_add352_9 v_or348_9 v_add44_9;
(*   %xor356.9 = xor i32 %add352.9, %or222.9 *)
(* You may need to modify here *)
xor uint32 v_xor356_9 v_add352_9 v_or222_9;
(*   %shl357.9 = shl i32 %xor356.9, 12 *)
shls discard_627 v_shl357_9 v_xor356_9 12;
(*   %shr361.9 = lshr i32 %xor356.9, 20 *)
(* You may need to modify here *)
split v_shr361_9 tmp_to_be_used v_xor356_9 20;
(*   %or362.9 = or i32 %shl357.9, %shr361.9 *)
(* You may need to modify here *)
or uint32 v_or362_9 v_shl357_9 v_shr361_9;
(*   %add366.9 = add i32 %or362.9, %add338.9 *)
adds discard_628 v_add366_9 v_or362_9 v_add338_9;
(*   %xor370.9 = xor i32 %add366.9, %or348.9 *)
(* You may need to modify here *)
xor uint32 v_xor370_9 v_add366_9 v_or348_9;
(*   %shl371.9 = shl i32 %xor370.9, 8 *)
shls discard_629 v_shl371_9 v_xor370_9 8;
(*   %shr375.9 = lshr i32 %xor370.9, 24 *)
(* You may need to modify here *)
split v_shr375_9 tmp_to_be_used v_xor370_9 24;
(*   %or376.9 = or i32 %shl371.9, %shr375.9 *)
(* You may need to modify here *)
or uint32 v_or376_9 v_shl371_9 v_shr375_9;
(*   %add380.9 = add i32 %or376.9, %add352.9 *)
adds discard_630 v_add380_9 v_or376_9 v_add352_9;
(*   %xor384.9 = xor i32 %add380.9, %or362.9 *)
(* You may need to modify here *)
xor uint32 v_xor384_9 v_add380_9 v_or362_9;
(*   %shl385.9 = shl i32 %xor384.9, 7 *)
shls discard_631 v_shl385_9 v_xor384_9 7;
(*   %shr389.9 = lshr i32 %xor384.9, 25 *)
(* You may need to modify here *)
split v_shr389_9 tmp_to_be_used v_xor384_9 25;
(*   %or390.9 = or i32 %shl385.9, %shr389.9 *)
(* You may need to modify here *)
or uint32 v_or390_9 v_shl385_9 v_shr389_9;
(*   %add394.9 = add i32 %add198.9, %or54.9 *)
adds discard_632 v_add394_9 v_add198_9 v_or54_9;
(*   %xor398.9 = xor i32 %add394.9, %or152.9 *)
(* You may need to modify here *)
xor uint32 v_xor398_9 v_add394_9 v_or152_9;
(*   %shl399.9 = shl i32 %xor398.9, 16 *)
shls discard_633 v_shl399_9 v_xor398_9 16;
(*   %shr403.9 = lshr i32 %xor398.9, 16 *)
(* You may need to modify here *)
split v_shr403_9 tmp_to_be_used v_xor398_9 16;
(*   %or404.9 = or i32 %shl399.9, %shr403.9 *)
(* You may need to modify here *)
or uint32 v_or404_9 v_shl399_9 v_shr403_9;
(*   %add408.9 = add i32 %or404.9, %add100.9 *)
adds discard_634 v_add408_9 v_or404_9 v_add100_9;
(*   %xor412.9 = xor i32 %add408.9, %or54.9 *)
(* You may need to modify here *)
xor uint32 v_xor412_9 v_add408_9 v_or54_9;
(*   %shl413.9 = shl i32 %xor412.9, 12 *)
shls discard_635 v_shl413_9 v_xor412_9 12;
(*   %shr417.9 = lshr i32 %xor412.9, 20 *)
(* You may need to modify here *)
split v_shr417_9 tmp_to_be_used v_xor412_9 20;
(*   %or418.9 = or i32 %shl413.9, %shr417.9 *)
(* You may need to modify here *)
or uint32 v_or418_9 v_shl413_9 v_shr417_9;
(*   %add422.9 = add i32 %or418.9, %add394.9 *)
adds discard_636 v_add422_9 v_or418_9 v_add394_9;
(*   %xor426.9 = xor i32 %add422.9, %or404.9 *)
(* You may need to modify here *)
xor uint32 v_xor426_9 v_add422_9 v_or404_9;
(*   %shl427.9 = shl i32 %xor426.9, 8 *)
shls discard_637 v_shl427_9 v_xor426_9 8;
(*   %shr431.9 = lshr i32 %xor426.9, 24 *)
(* You may need to modify here *)
split v_shr431_9 tmp_to_be_used v_xor426_9 24;
(*   %or432.9 = or i32 %shl427.9, %shr431.9 *)
(* You may need to modify here *)
or uint32 v_or432_9 v_shl427_9 v_shr431_9;
(*   %add436.9 = add i32 %or432.9, %add408.9 *)
adds discard_638 v_add436_9 v_or432_9 v_add408_9;
(*   %xor440.9 = xor i32 %add436.9, %or418.9 *)
(* You may need to modify here *)
xor uint32 v_xor440_9 v_add436_9 v_or418_9;
(*   %shl441.9 = shl i32 %xor440.9, 7 *)
shls discard_639 v_shl441_9 v_xor440_9 7;
(*   %shr445.9 = lshr i32 %xor440.9, 25 *)
(* You may need to modify here *)
split v_shr445_9 tmp_to_be_used v_xor440_9 25;
(*   %or446.9 = or i32 %shl441.9, %shr445.9 *)
(* You may need to modify here *)
or uint32 v_or446_9 v_shl441_9 v_shr445_9;
(*   %1 = load i32, i32* %input, align 4, !tbaa !4 *)
mov v1 input_0;
(*   %add455 = add i32 %1, %add254.9 *)
adds discard_640 v_add455 v1 v_add254_9;
(*   store i32 %add455, i32* %arrayidx5, align 4, !tbaa !4 *)
mov x_0 v_add455;
(*   %arrayidx454.1 = getelementptr inbounds i32, i32* %input, i32 1 *)
(*   %2 = load i32, i32* %arrayidx454.1, align 4, !tbaa !4 *)
mov v2 input_4;
(*   %add455.1 = add i32 %2, %add310.9 *)
adds discard_641 v_add455_1 v2 v_add310_9;
(*   store i32 %add455.1, i32* %arrayidx56, align 4, !tbaa !4 *)
mov x_4 v_add455_1;
(*   %arrayidx454.2 = getelementptr inbounds i32, i32* %input, i32 2 *)
(*   %3 = load i32, i32* %arrayidx454.2, align 4, !tbaa !4 *)
mov v3 input_8;
(*   %add455.2 = add i32 %3, %add366.9 *)
adds discard_642 v_add455_2 v3 v_add366_9;
(*   store i32 %add455.2, i32* %arrayidx112, align 4, !tbaa !4 *)
mov x_8 v_add455_2;
(*   %arrayidx454.3 = getelementptr inbounds i32, i32* %input, i32 3 *)
(*   %4 = load i32, i32* %arrayidx454.3, align 4, !tbaa !4 *)
mov v4 input_12;
(*   %add455.3 = add i32 %4, %add422.9 *)
adds discard_643 v_add455_3 v4 v_add422_9;
(*   store i32 %add455.3, i32* %arrayidx168, align 4, !tbaa !4 *)
mov x_12 v_add455_3;
(*   %arrayidx454.4 = getelementptr inbounds i32, i32* %input, i32 4 *)
(*   %5 = load i32, i32* %arrayidx454.4, align 4, !tbaa !4 *)
mov v5 input_16;
(*   %add455.4 = add i32 %5, %or446.9 *)
adds discard_644 v_add455_4 v5 v_or446_9;
(*   store i32 %add455.4, i32* %arrayidx6, align 4, !tbaa !4 *)
mov x_16 v_add455_4;
(*   %arrayidx454.5 = getelementptr inbounds i32, i32* %input, i32 5 *)
(*   %6 = load i32, i32* %arrayidx454.5, align 4, !tbaa !4 *)
mov v6 input_20;
(*   %add455.5 = add i32 %6, %or278.9 *)
adds discard_645 v_add455_5 v6 v_or278_9;
(*   store i32 %add455.5, i32* %arrayidx57, align 4, !tbaa !4 *)
mov x_20 v_add455_5;
(*   %arrayidx454.6 = getelementptr inbounds i32, i32* %input, i32 6 *)
(*   %7 = load i32, i32* %arrayidx454.6, align 4, !tbaa !4 *)
mov v7 input_24;
(*   %add455.6 = add i32 %7, %or334.9 *)
adds discard_646 v_add455_6 v7 v_or334_9;
(*   store i32 %add455.6, i32* %arrayidx113, align 4, !tbaa !4 *)
mov x_24 v_add455_6;
(*   %arrayidx454.7 = getelementptr inbounds i32, i32* %input, i32 7 *)
(*   %8 = load i32, i32* %arrayidx454.7, align 4, !tbaa !4 *)
mov v8 input_28;
(*   %add455.7 = add i32 %8, %or390.9 *)
adds discard_647 v_add455_7 v8 v_or390_9;
(*   store i32 %add455.7, i32* %arrayidx169, align 4, !tbaa !4 *)
mov x_28 v_add455_7;
(*   %arrayidx454.8 = getelementptr inbounds i32, i32* %input, i32 8 *)
(*   %9 = load i32, i32* %arrayidx454.8, align 4, !tbaa !4 *)
mov v9 input_32;
(*   %add455.8 = add i32 %9, %add380.9 *)
adds discard_648 v_add455_8 v9 v_add380_9;
(*   store i32 %add455.8, i32* %arrayidx14, align 4, !tbaa !4 *)
mov x_32 v_add455_8;
(*   %arrayidx454.9 = getelementptr inbounds i32, i32* %input, i32 9 *)
(*   %10 = load i32, i32* %arrayidx454.9, align 4, !tbaa !4 *)
mov v10 input_36;
(*   %add455.9 = add i32 %10, %add436.9 *)
adds discard_649 v_add455_9 v10 v_add436_9;
(*   store i32 %add455.9, i32* %arrayidx70, align 4, !tbaa !4 *)
mov x_36 v_add455_9;
(*   %arrayidx454.10 = getelementptr inbounds i32, i32* %input, i32 10 *)
(*   %11 = load i32, i32* %arrayidx454.10, align 4, !tbaa !4 *)
mov v11 input_40;
(*   %add455.10 = add i32 %11, %add268.9 *)
adds discard_650 v_add455_10 v11 v_add268_9;
(*   store i32 %add455.10, i32* %arrayidx126, align 4, !tbaa !4 *)
mov x_40 v_add455_10;
(*   %arrayidx454.11 = getelementptr inbounds i32, i32* %input, i32 11 *)
(*   %12 = load i32, i32* %arrayidx454.11, align 4, !tbaa !4 *)
mov v12 input_44;
(*   %add455.11 = add i32 %12, %add324.9 *)
adds discard_651 v_add455_11 v12 v_add324_9;
(*   store i32 %add455.11, i32* %arrayidx182, align 4, !tbaa !4 *)
mov x_44 v_add455_11;
(*   %arrayidx454.12 = getelementptr inbounds i32, i32* %input, i32 12 *)
(*   %13 = load i32, i32* %arrayidx454.12, align 4, !tbaa !4 *)
mov v13 input_48;
(*   %add455.12 = add i32 %13, %or320.9 *)
adds discard_652 v_add455_12 v13 v_or320_9;
(*   store i32 %add455.12, i32* %arrayidx8, align 4, !tbaa !4 *)
mov x_48 v_add455_12;
(*   %arrayidx454.13 = getelementptr inbounds i32, i32* %input, i32 13 *)
(*   %14 = load i32, i32* %arrayidx454.13, align 4, !tbaa !4 *)
mov v14 input_52;
(*   %add455.13 = add i32 %14, %or376.9 *)
adds discard_653 v_add455_13 v14 v_or376_9;
(*   store i32 %add455.13, i32* %arrayidx60, align 4, !tbaa !4 *)
mov x_52 v_add455_13;
(*   %arrayidx454.14 = getelementptr inbounds i32, i32* %input, i32 14 *)
(*   %15 = load i32, i32* %arrayidx454.14, align 4, !tbaa !4 *)
mov v15 input_56;
(*   %add455.14 = add i32 %15, %or432.9 *)
adds discard_654 v_add455_14 v15 v_or432_9;
(*   store i32 %add455.14, i32* %arrayidx116, align 4, !tbaa !4 *)
mov x_56 v_add455_14;
(*   %arrayidx454.15 = getelementptr inbounds i32, i32* %input, i32 15 *)
(*   %16 = load i32, i32* %arrayidx454.15, align 4, !tbaa !4 *)
mov v16 input_60;
(*   %add455.15 = add i32 %16, %or264.9 *)
adds discard_655 v_add455_15 v16 v_or264_9;
(*   store i32 %add455.15, i32* %arrayidx172, align 4, !tbaa !4 *)
mov x_60 v_add455_15;
(*   %conv465545 = trunc i32 %add455 to i8 *)
split tmp_v_add455 v_conv465545 v_add455 8;
vpc v_conv465545@uint8 v_conv465545@uint32;
(*   store i8 %conv465545, i8* %output, align 1, !tbaa !8 *)
mov output_0 v_conv465545;
(*   %shr468546 = lshr i32 %add455, 8 *)
(* You may need to modify here *)
split v_shr468546 tmp_to_be_used v_add455 8;
(*   %conv472547 = trunc i32 %shr468546 to i8 *)
split tmp_v_shr468546 v_conv472547 v_shr468546 8;
vpc v_conv472547@uint8 v_conv472547@uint32;
(*   %arrayidx475548 = getelementptr inbounds i8, i8* %output, i32 1 *)
(*   store i8 %conv472547, i8* %arrayidx475548, align 1, !tbaa !8 *)
mov output_1 v_conv472547;
(*   %shr477549 = lshr i32 %add455, 16 *)
(* You may need to modify here *)
split v_shr477549 tmp_to_be_used v_add455 16;
(*   %conv481550 = trunc i32 %shr477549 to i8 *)
split tmp_v_shr477549 v_conv481550 v_shr477549 8;
vpc v_conv481550@uint8 v_conv481550@uint32;
(*   %arrayidx484551 = getelementptr inbounds i8, i8* %output, i32 2 *)
(*   store i8 %conv481550, i8* %arrayidx484551, align 1, !tbaa !8 *)
mov output_2 v_conv481550;
(*   %shr486552 = lshr i32 %add455, 24 *)
(* You may need to modify here *)
split v_shr486552 tmp_to_be_used v_add455 24;
(*   %conv490553 = trunc i32 %shr486552 to i8 *)
split tmp_v_shr486552 v_conv490553 v_shr486552 8;
vpc v_conv490553@uint8 v_conv490553@uint32;
(*   %arrayidx493554 = getelementptr inbounds i8, i8* %output, i32 3 *)
(*   store i8 %conv490553, i8* %arrayidx493554, align 1, !tbaa !8 *)
mov output_3 v_conv490553;
(*   br label %do.body.do.body_crit_edge *)


(* Outputs *)

(* mov _ output_0@uint8; *)
(* mov _ output_1@uint8; *)
(* mov _ output_2@uint8; *)
(* mov _ output_3@uint8; *)

mov a0 x_0@uint32;
mov a1 x_4@uint32;
mov a2 x_8@uint32;
mov a3 x_12@uint32;
mov a4 x_16@uint32;
mov a5 x_20@uint32;
mov a6 x_24@uint32;
mov a7 x_28@uint32;
mov a8 x_32@uint32;
mov a9 x_36@uint32;
mov aa x_40@uint32;
mov ab x_44@uint32;
mov ac x_48@uint32;
mov ad x_52@uint32;
mov ae x_56@uint32;
mov af x_60@uint32;


{
  true
  &&
  true
}

