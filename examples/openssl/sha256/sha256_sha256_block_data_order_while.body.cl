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
  uint32 A0, uint32 A1, uint32 A2, uint32 A3,
  uint32 A4, uint32 A5, uint32 A6, uint32 A7
) =
{
  true
  &&
  true
}


mov data_02557_0 A00; mov data_02557_1 A01; mov data_02557_2 A02;
mov data_02557_3 A03; mov data_02557_4 A04; mov data_02557_5 A05;
mov data_02557_6 A06; mov data_02557_7 A07; mov data_02557_8 A08;
mov data_02557_9 A09; mov data_02557_10 A10; mov data_02557_11 A11;
mov data_02557_12 A12; mov data_02557_13 A13; mov data_02557_14 A14;
mov data_02557_15 A15; mov data_02557_16 A16; mov data_02557_17 A17;
mov data_02557_18 A18; mov data_02557_19 A19; mov data_02557_20 A20;
mov data_02557_21 A21; mov data_02557_22 A22; mov data_02557_23 A23;
mov data_02557_24 A24; mov data_02557_25 A25; mov data_02557_26 A26;
mov data_02557_27 A27; mov data_02557_28 A28; mov data_02557_29 A29;
mov data_02557_30 A30; mov data_02557_31 A31; mov data_02557_32 A32;
mov data_02557_33 A33; mov data_02557_34 A34; mov data_02557_35 A35;
mov data_02557_36 A36; mov data_02557_37 A37; mov data_02557_38 A38;
mov data_02557_39 A39; mov data_02557_40 A40; mov data_02557_41 A41;
mov data_02557_42 A42; mov data_02557_43 A43; mov data_02557_44 A44;
mov data_02557_45 A45; mov data_02557_46 A46; mov data_02557_47 A47;
mov data_02557_48 A48; mov data_02557_49 A49; mov data_02557_50 A50;
mov data_02557_51 A51; mov data_02557_52 A52; mov data_02557_53 A53;
mov data_02557_54 A54; mov data_02557_55 A55; mov data_02557_56 A56;
mov data_02557_57 A57; mov data_02557_58 A58; mov data_02557_59 A59;
mov data_02557_60 A60; mov data_02557_61 A61; mov data_02557_62 A62;
mov data_02557_63 A63; 

mov v8 A0; mov v7 A1; mov v6 A2; mov v5 A3;
mov v4 A4; mov v3 A5; mov v2 A6; mov v1 A7;

nondet v_dec2558_in@uint32;



(*   %1 = phi i32 [ %.pre2566, %while.body.lr.ph ], [ %add1581, %while.body ] *)
(*   %2 = phi i32 [ %.pre2565, %while.body.lr.ph ], [ %add1578, %while.body ] *)
(*   %3 = phi i32 [ %.pre2564, %while.body.lr.ph ], [ %add1575, %while.body ] *)
(*   %4 = phi i32 [ %.pre2563, %while.body.lr.ph ], [ %add1572, %while.body ] *)
(*   %5 = phi i32 [ %.pre2562, %while.body.lr.ph ], [ %add1569, %while.body ] *)
(*   %6 = phi i32 [ %.pre2561, %while.body.lr.ph ], [ %add1566, %while.body ] *)
(*   %7 = phi i32 [ %.pre2560, %while.body.lr.ph ], [ %add1563, %while.body ] *)
(*   %8 = phi i32 [ %.pre, %while.body.lr.ph ], [ %add1560, %while.body ] *)
(*   %dec2558.in = phi i32 [ %num, %while.body.lr.ph ], [ %dec2558, %while.body ] *)
(*   %data.02557 = phi i8* [ %in, %while.body.lr.ph ], [ %incdec.ptr855, %while.body ] *)
(*   %incdec.ptr = getelementptr inbounds i8, i8* %data.02557, i32 1 *)
(*   %9 = load i8, i8* %data.02557, align 1, !tbaa !8 *)
mov v9 data_02557_0;
(*   %conv = zext i8 %9 to i32 *)
cast v_conv@uint32 v9@uint8;
(*   %shl = shl nuw i32 %conv, 24 *)
shls discard_0 v_shl v_conv 24;
(*   %incdec.ptr16 = getelementptr inbounds i8, i8* %data.02557, i32 2 *)
(*   %10 = load i8, i8* %incdec.ptr, align 1, !tbaa !8 *)
mov v10 data_02557_1;
(*   %conv17 = zext i8 %10 to i32 *)
cast v_conv17@uint32 v10@uint8;
(*   %shl18 = shl nuw nsw i32 %conv17, 16 *)
shls discard_1 v_shl18 v_conv17 16;
(*   %or = or i32 %shl18, %shl *)
(* You may need to modify here *)
or uint32 v_or v_shl18 v_shl;
(*   %incdec.ptr19 = getelementptr inbounds i8, i8* %data.02557, i32 3 *)
(*   %11 = load i8, i8* %incdec.ptr16, align 1, !tbaa !8 *)
mov v11 data_02557_2;
(*   %conv20 = zext i8 %11 to i32 *)
cast v_conv20@uint32 v11@uint8;
(*   %shl21 = shl nuw nsw i32 %conv20, 8 *)
shls discard_2 v_shl21 v_conv20 8;
(*   %or22 = or i32 %or, %shl21 *)
(* You may need to modify here *)
or uint32 v_or22 v_or v_shl21;
(*   %incdec.ptr23 = getelementptr inbounds i8, i8* %data.02557, i32 4 *)
(*   %12 = load i8, i8* %incdec.ptr19, align 1, !tbaa !8 *)
mov v12 data_02557_3;
(*   %conv24 = zext i8 %12 to i32 *)
cast v_conv24@uint32 v12@uint8;
(*   %or25 = or i32 %or22, %conv24 *)
(* You may need to modify here *)
or uint32 v_or25 v_or22 v_conv24;
(*   store i32 %or25, i32* %arrayidx26, align 4, !tbaa !4 *)
mov arrayidx26_0 v_or25;
(*   %shl27 = shl i32 %4, 26 *)
shls discard_3 v_shl27 v4 26;
(*   %shr = lshr i32 %4, 6 *)
(* You may need to modify here *)
split v_shr tmp_to_be_used v4 6;
(*   %or28 = or i32 %shl27, %shr *)
(* You may need to modify here *)
or uint32 v_or28 v_shl27 v_shr;
(*   %shl29 = shl i32 %4, 21 *)
shls discard_4 v_shl29 v4 21;
(*   %shr30 = lshr i32 %4, 11 *)
(* You may need to modify here *)
split v_shr30 tmp_to_be_used v4 11;
(*   %or31 = or i32 %shl29, %shr30 *)
(* You may need to modify here *)
or uint32 v_or31 v_shl29 v_shr30;
(*   %xor = xor i32 %or28, %or31 *)
(* You may need to modify here *)
xor uint32 v_xor v_or28 v_or31;
(*   %shl32 = shl i32 %4, 7 *)
shls discard_5 v_shl32 v4 7;
(*   %shr33 = lshr i32 %4, 25 *)
(* You may need to modify here *)
split v_shr33 tmp_to_be_used v4 25;
(*   %or34 = or i32 %shl32, %shr33 *)
(* You may need to modify here *)
or uint32 v_or34 v_shl32 v_shr33;
(*   %xor35 = xor i32 %xor, %or34 *)
(* You may need to modify here *)
xor uint32 v_xor35 v_xor v_or34;
(*   %and = and i32 %3, %4 *)
(* You may need to modify here *)
and uint32 v_and v3 v4;
(*   %neg = xor i32 %4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg v4 (0xFFFFFFFF)@uint32;
(*   %and36 = and i32 %2, %neg *)
(* You may need to modify here *)
and uint32 v_and36 v2 v_neg;
(*   %xor37 = or i32 %and36, %and *)
(* You may need to modify here *)
or uint32 v_xor37 v_and36 v_and;
(*   %add = add i32 %1, 1116352408 *)
adds discard_6 v_add v1 (1116352408)@uint32;
(*   %add38 = add i32 %add, %xor35 *)
adds discard_7 v_add38 v_add v_xor35;
(*   %add39 = add i32 %add38, %xor37 *)
adds discard_8 v_add39 v_add38 v_xor37;
(*   %add40 = add i32 %add39, %or25 *)
adds discard_9 v_add40 v_add39 v_or25;
(*   %shl41 = shl i32 %8, 30 *)
shls discard_10 v_shl41 v8 30;
(*   %shr42 = lshr i32 %8, 2 *)
(* You may need to modify here *)
split v_shr42 tmp_to_be_used v8 2;
(*   %or43 = or i32 %shl41, %shr42 *)
(* You may need to modify here *)
or uint32 v_or43 v_shl41 v_shr42;
(*   %shl44 = shl i32 %8, 19 *)
shls discard_11 v_shl44 v8 19;
(*   %shr45 = lshr i32 %8, 13 *)
(* You may need to modify here *)
split v_shr45 tmp_to_be_used v8 13;
(*   %or46 = or i32 %shl44, %shr45 *)
(* You may need to modify here *)
or uint32 v_or46 v_shl44 v_shr45;
(*   %xor47 = xor i32 %or43, %or46 *)
(* You may need to modify here *)
xor uint32 v_xor47 v_or43 v_or46;
(*   %shl48 = shl i32 %8, 10 *)
shls discard_12 v_shl48 v8 10;
(*   %shr49 = lshr i32 %8, 22 *)
(* You may need to modify here *)
split v_shr49 tmp_to_be_used v8 22;
(*   %or50 = or i32 %shl48, %shr49 *)
(* You may need to modify here *)
or uint32 v_or50 v_shl48 v_shr49;
(*   %xor51 = xor i32 %xor47, %or50 *)
(* You may need to modify here *)
xor uint32 v_xor51 v_xor47 v_or50;
(*   %and52 = and i32 %7, %8 *)
(* You may need to modify here *)
and uint32 v_and52 v7 v8;
(*   %and53 = and i32 %6, %8 *)
(* You may need to modify here *)
and uint32 v_and53 v6 v8;
(*   %xor54 = xor i32 %and53, %and52 *)
(* You may need to modify here *)
xor uint32 v_xor54 v_and53 v_and52;
(*   %and55 = and i32 %6, %7 *)
(* You may need to modify here *)
and uint32 v_and55 v6 v7;
(*   %xor56 = xor i32 %xor54, %and55 *)
(* You may need to modify here *)
xor uint32 v_xor56 v_xor54 v_and55;
(*   %add57 = add i32 %xor56, %xor51 *)
adds discard_13 v_add57 v_xor56 v_xor51;
(*   %add58 = add i32 %add40, %5 *)
adds discard_14 v_add58 v_add40 v5;
(*   %add59 = add i32 %add57, %add40 *)
adds discard_15 v_add59 v_add57 v_add40;
(*   %incdec.ptr60 = getelementptr inbounds i8, i8* %data.02557, i32 5 *)
(*   %13 = load i8, i8* %incdec.ptr23, align 1, !tbaa !8 *)
mov v13 data_02557_4;
(*   %conv61 = zext i8 %13 to i32 *)
cast v_conv61@uint32 v13@uint8;
(*   %shl62 = shl nuw i32 %conv61, 24 *)
shls discard_16 v_shl62 v_conv61 24;
(*   %incdec.ptr63 = getelementptr inbounds i8, i8* %data.02557, i32 6 *)
(*   %14 = load i8, i8* %incdec.ptr60, align 1, !tbaa !8 *)
mov v14 data_02557_5;
(*   %conv64 = zext i8 %14 to i32 *)
cast v_conv64@uint32 v14@uint8;
(*   %shl65 = shl nuw nsw i32 %conv64, 16 *)
shls discard_17 v_shl65 v_conv64 16;
(*   %or66 = or i32 %shl65, %shl62 *)
(* You may need to modify here *)
or uint32 v_or66 v_shl65 v_shl62;
(*   %incdec.ptr67 = getelementptr inbounds i8, i8* %data.02557, i32 7 *)
(*   %15 = load i8, i8* %incdec.ptr63, align 1, !tbaa !8 *)
mov v15 data_02557_6;
(*   %conv68 = zext i8 %15 to i32 *)
cast v_conv68@uint32 v15@uint8;
(*   %shl69 = shl nuw nsw i32 %conv68, 8 *)
shls discard_18 v_shl69 v_conv68 8;
(*   %or70 = or i32 %or66, %shl69 *)
(* You may need to modify here *)
or uint32 v_or70 v_or66 v_shl69;
(*   %incdec.ptr71 = getelementptr inbounds i8, i8* %data.02557, i32 8 *)
(*   %16 = load i8, i8* %incdec.ptr67, align 1, !tbaa !8 *)
mov v16 data_02557_7;
(*   %conv72 = zext i8 %16 to i32 *)
cast v_conv72@uint32 v16@uint8;
(*   %or73 = or i32 %or70, %conv72 *)
(* You may need to modify here *)
or uint32 v_or73 v_or70 v_conv72;
(*   store i32 %or73, i32* %arrayidx74, align 4, !tbaa !4 *)
mov arrayidx74_0 v_or73;
(*   %shl76 = shl i32 %add58, 26 *)
shls discard_19 v_shl76 v_add58 26;
(*   %shr77 = lshr i32 %add58, 6 *)
(* You may need to modify here *)
split v_shr77 tmp_to_be_used v_add58 6;
(*   %or78 = or i32 %shl76, %shr77 *)
(* You may need to modify here *)
or uint32 v_or78 v_shl76 v_shr77;
(*   %shl79 = shl i32 %add58, 21 *)
shls discard_20 v_shl79 v_add58 21;
(*   %shr80 = lshr i32 %add58, 11 *)
(* You may need to modify here *)
split v_shr80 tmp_to_be_used v_add58 11;
(*   %or81 = or i32 %shl79, %shr80 *)
(* You may need to modify here *)
or uint32 v_or81 v_shl79 v_shr80;
(*   %xor82 = xor i32 %or78, %or81 *)
(* You may need to modify here *)
xor uint32 v_xor82 v_or78 v_or81;
(*   %shl83 = shl i32 %add58, 7 *)
shls discard_21 v_shl83 v_add58 7;
(*   %shr84 = lshr i32 %add58, 25 *)
(* You may need to modify here *)
split v_shr84 tmp_to_be_used v_add58 25;
(*   %or85 = or i32 %shl83, %shr84 *)
(* You may need to modify here *)
or uint32 v_or85 v_shl83 v_shr84;
(*   %xor86 = xor i32 %xor82, %or85 *)
(* You may need to modify here *)
xor uint32 v_xor86 v_xor82 v_or85;
(*   %and88 = and i32 %add58, %4 *)
(* You may need to modify here *)
and uint32 v_and88 v_add58 v4;
(*   %neg89 = xor i32 %add58, -1 *)
(* You may need to modify here *)
xor uint32 v_neg89 v_add58 (0xFFFFFFFF)@uint32;
(*   %and90 = and i32 %3, %neg89 *)
(* You may need to modify here *)
and uint32 v_and90 v3 v_neg89;
(*   %xor91 = or i32 %and88, %and90 *)
(* You may need to modify here *)
or uint32 v_xor91 v_and88 v_and90;
(*   %add87 = add i32 %2, 1899447441 *)
adds discard_22 v_add87 v2 (1899447441)@uint32;
(*   %add92 = add i32 %add87, %xor91 *)
adds discard_23 v_add92 v_add87 v_xor91;
(*   %add93 = add i32 %add92, %or73 *)
adds discard_24 v_add93 v_add92 v_or73;
(*   %add94 = add i32 %add93, %xor86 *)
adds discard_25 v_add94 v_add93 v_xor86;
(*   %shl95 = shl i32 %add59, 30 *)
shls discard_26 v_shl95 v_add59 30;
(*   %shr96 = lshr i32 %add59, 2 *)
(* You may need to modify here *)
split v_shr96 tmp_to_be_used v_add59 2;
(*   %or97 = or i32 %shl95, %shr96 *)
(* You may need to modify here *)
or uint32 v_or97 v_shl95 v_shr96;
(*   %shl98 = shl i32 %add59, 19 *)
shls discard_27 v_shl98 v_add59 19;
(*   %shr99 = lshr i32 %add59, 13 *)
(* You may need to modify here *)
split v_shr99 tmp_to_be_used v_add59 13;
(*   %or100 = or i32 %shl98, %shr99 *)
(* You may need to modify here *)
or uint32 v_or100 v_shl98 v_shr99;
(*   %xor101 = xor i32 %or97, %or100 *)
(* You may need to modify here *)
xor uint32 v_xor101 v_or97 v_or100;
(*   %shl102 = shl i32 %add59, 10 *)
shls discard_28 v_shl102 v_add59 10;
(*   %shr103 = lshr i32 %add59, 22 *)
(* You may need to modify here *)
split v_shr103 tmp_to_be_used v_add59 22;
(*   %or104 = or i32 %shl102, %shr103 *)
(* You may need to modify here *)
or uint32 v_or104 v_shl102 v_shr103;
(*   %xor105 = xor i32 %xor101, %or104 *)
(* You may need to modify here *)
xor uint32 v_xor105 v_xor101 v_or104;
(*   %and106 = and i32 %add59, %8 *)
(* You may need to modify here *)
and uint32 v_and106 v_add59 v8;
(*   %and107 = and i32 %add59, %7 *)
(* You may need to modify here *)
and uint32 v_and107 v_add59 v7;
(*   %xor108 = xor i32 %and107, %and52 *)
(* You may need to modify here *)
xor uint32 v_xor108 v_and107 v_and52;
(*   %xor110 = xor i32 %xor108, %and106 *)
(* You may need to modify here *)
xor uint32 v_xor110 v_xor108 v_and106;
(*   %add111 = add i32 %xor105, %xor110 *)
adds discard_29 v_add111 v_xor105 v_xor110;
(*   %add112 = add i32 %add94, %6 *)
adds discard_30 v_add112 v_add94 v6;
(*   %add113 = add i32 %add111, %add94 *)
adds discard_31 v_add113 v_add111 v_add94;
(*   %incdec.ptr116 = getelementptr inbounds i8, i8* %data.02557, i32 9 *)
(*   %17 = load i8, i8* %incdec.ptr71, align 1, !tbaa !8 *)
mov v17 data_02557_8;
(*   %conv117 = zext i8 %17 to i32 *)
cast v_conv117@uint32 v17@uint8;
(*   %shl118 = shl nuw i32 %conv117, 24 *)
shls discard_32 v_shl118 v_conv117 24;
(*   %incdec.ptr119 = getelementptr inbounds i8, i8* %data.02557, i32 10 *)
(*   %18 = load i8, i8* %incdec.ptr116, align 1, !tbaa !8 *)
mov v18 data_02557_9;
(*   %conv120 = zext i8 %18 to i32 *)
cast v_conv120@uint32 v18@uint8;
(*   %shl121 = shl nuw nsw i32 %conv120, 16 *)
shls discard_33 v_shl121 v_conv120 16;
(*   %or122 = or i32 %shl121, %shl118 *)
(* You may need to modify here *)
or uint32 v_or122 v_shl121 v_shl118;
(*   %incdec.ptr123 = getelementptr inbounds i8, i8* %data.02557, i32 11 *)
(*   %19 = load i8, i8* %incdec.ptr119, align 1, !tbaa !8 *)
mov v19 data_02557_10;
(*   %conv124 = zext i8 %19 to i32 *)
cast v_conv124@uint32 v19@uint8;
(*   %shl125 = shl nuw nsw i32 %conv124, 8 *)
shls discard_34 v_shl125 v_conv124 8;
(*   %or126 = or i32 %or122, %shl125 *)
(* You may need to modify here *)
or uint32 v_or126 v_or122 v_shl125;
(*   %incdec.ptr127 = getelementptr inbounds i8, i8* %data.02557, i32 12 *)
(*   %20 = load i8, i8* %incdec.ptr123, align 1, !tbaa !8 *)
mov v20 data_02557_11;
(*   %conv128 = zext i8 %20 to i32 *)
cast v_conv128@uint32 v20@uint8;
(*   %or129 = or i32 %or126, %conv128 *)
(* You may need to modify here *)
or uint32 v_or129 v_or126 v_conv128;
(*   store i32 %or129, i32* %arrayidx130, align 4, !tbaa !4 *)
mov arrayidx130_0 v_or129;
(*   %shl132 = shl i32 %add112, 26 *)
shls discard_35 v_shl132 v_add112 26;
(*   %shr133 = lshr i32 %add112, 6 *)
(* You may need to modify here *)
split v_shr133 tmp_to_be_used v_add112 6;
(*   %or134 = or i32 %shl132, %shr133 *)
(* You may need to modify here *)
or uint32 v_or134 v_shl132 v_shr133;
(*   %shl135 = shl i32 %add112, 21 *)
shls discard_36 v_shl135 v_add112 21;
(*   %shr136 = lshr i32 %add112, 11 *)
(* You may need to modify here *)
split v_shr136 tmp_to_be_used v_add112 11;
(*   %or137 = or i32 %shl135, %shr136 *)
(* You may need to modify here *)
or uint32 v_or137 v_shl135 v_shr136;
(*   %xor138 = xor i32 %or134, %or137 *)
(* You may need to modify here *)
xor uint32 v_xor138 v_or134 v_or137;
(*   %shl139 = shl i32 %add112, 7 *)
shls discard_37 v_shl139 v_add112 7;
(*   %shr140 = lshr i32 %add112, 25 *)
(* You may need to modify here *)
split v_shr140 tmp_to_be_used v_add112 25;
(*   %or141 = or i32 %shl139, %shr140 *)
(* You may need to modify here *)
or uint32 v_or141 v_shl139 v_shr140;
(*   %xor142 = xor i32 %xor138, %or141 *)
(* You may need to modify here *)
xor uint32 v_xor142 v_xor138 v_or141;
(*   %and144 = and i32 %add112, %add58 *)
(* You may need to modify here *)
and uint32 v_and144 v_add112 v_add58;
(*   %neg145 = xor i32 %add112, -1 *)
(* You may need to modify here *)
xor uint32 v_neg145 v_add112 (0xFFFFFFFF)@uint32;
(*   %and146 = and i32 %4, %neg145 *)
(* You may need to modify here *)
and uint32 v_and146 v4 v_neg145;
(*   %xor147 = or i32 %and144, %and146 *)
(* You may need to modify here *)
or uint32 v_xor147 v_and144 v_and146;
(*   %add143 = add i32 %3, -1245643825 *)
adds discard_38 v_add143 v3 (3049323471)@uint32;
(*   %add148 = add i32 %add143, %or129 *)
adds discard_39 v_add148 v_add143 v_or129;
(*   %add149 = add i32 %add148, %xor147 *)
adds discard_40 v_add149 v_add148 v_xor147;
(*   %add150 = add i32 %add149, %xor142 *)
adds discard_41 v_add150 v_add149 v_xor142;
(*   %shl151 = shl i32 %add113, 30 *)
shls discard_42 v_shl151 v_add113 30;
(*   %shr152 = lshr i32 %add113, 2 *)
(* You may need to modify here *)
split v_shr152 tmp_to_be_used v_add113 2;
(*   %or153 = or i32 %shl151, %shr152 *)
(* You may need to modify here *)
or uint32 v_or153 v_shl151 v_shr152;
(*   %shl154 = shl i32 %add113, 19 *)
shls discard_43 v_shl154 v_add113 19;
(*   %shr155 = lshr i32 %add113, 13 *)
(* You may need to modify here *)
split v_shr155 tmp_to_be_used v_add113 13;
(*   %or156 = or i32 %shl154, %shr155 *)
(* You may need to modify here *)
or uint32 v_or156 v_shl154 v_shr155;
(*   %xor157 = xor i32 %or153, %or156 *)
(* You may need to modify here *)
xor uint32 v_xor157 v_or153 v_or156;
(*   %shl158 = shl i32 %add113, 10 *)
shls discard_44 v_shl158 v_add113 10;
(*   %shr159 = lshr i32 %add113, 22 *)
(* You may need to modify here *)
split v_shr159 tmp_to_be_used v_add113 22;
(*   %or160 = or i32 %shl158, %shr159 *)
(* You may need to modify here *)
or uint32 v_or160 v_shl158 v_shr159;
(*   %xor161 = xor i32 %xor157, %or160 *)
(* You may need to modify here *)
xor uint32 v_xor161 v_xor157 v_or160;
(*   %and162 = and i32 %add113, %add59 *)
(* You may need to modify here *)
and uint32 v_and162 v_add113 v_add59;
(*   %and163 = and i32 %add113, %8 *)
(* You may need to modify here *)
and uint32 v_and163 v_add113 v8;
(*   %xor164 = xor i32 %and163, %and106 *)
(* You may need to modify here *)
xor uint32 v_xor164 v_and163 v_and106;
(*   %xor166 = xor i32 %xor164, %and162 *)
(* You may need to modify here *)
xor uint32 v_xor166 v_xor164 v_and162;
(*   %add167 = add i32 %xor161, %xor166 *)
adds discard_45 v_add167 v_xor161 v_xor166;
(*   %add168 = add i32 %add150, %7 *)
adds discard_46 v_add168 v_add150 v7;
(*   %add169 = add i32 %add167, %add150 *)
adds discard_47 v_add169 v_add167 v_add150;
(*   %incdec.ptr172 = getelementptr inbounds i8, i8* %data.02557, i32 13 *)
(*   %21 = load i8, i8* %incdec.ptr127, align 1, !tbaa !8 *)
mov v21 data_02557_12;
(*   %conv173 = zext i8 %21 to i32 *)
cast v_conv173@uint32 v21@uint8;
(*   %shl174 = shl nuw i32 %conv173, 24 *)
shls discard_48 v_shl174 v_conv173 24;
(*   %incdec.ptr175 = getelementptr inbounds i8, i8* %data.02557, i32 14 *)
(*   %22 = load i8, i8* %incdec.ptr172, align 1, !tbaa !8 *)
mov v22 data_02557_13;
(*   %conv176 = zext i8 %22 to i32 *)
cast v_conv176@uint32 v22@uint8;
(*   %shl177 = shl nuw nsw i32 %conv176, 16 *)
shls discard_49 v_shl177 v_conv176 16;
(*   %or178 = or i32 %shl177, %shl174 *)
(* You may need to modify here *)
or uint32 v_or178 v_shl177 v_shl174;
(*   %incdec.ptr179 = getelementptr inbounds i8, i8* %data.02557, i32 15 *)
(*   %23 = load i8, i8* %incdec.ptr175, align 1, !tbaa !8 *)
mov v23 data_02557_14;
(*   %conv180 = zext i8 %23 to i32 *)
cast v_conv180@uint32 v23@uint8;
(*   %shl181 = shl nuw nsw i32 %conv180, 8 *)
shls discard_50 v_shl181 v_conv180 8;
(*   %or182 = or i32 %or178, %shl181 *)
(* You may need to modify here *)
or uint32 v_or182 v_or178 v_shl181;
(*   %incdec.ptr183 = getelementptr inbounds i8, i8* %data.02557, i32 16 *)
(*   %24 = load i8, i8* %incdec.ptr179, align 1, !tbaa !8 *)
mov v24 data_02557_15;
(*   %conv184 = zext i8 %24 to i32 *)
cast v_conv184@uint32 v24@uint8;
(*   %or185 = or i32 %or182, %conv184 *)
(* You may need to modify here *)
or uint32 v_or185 v_or182 v_conv184;
(*   store i32 %or185, i32* %arrayidx186, align 4, !tbaa !4 *)
mov arrayidx186_0 v_or185;
(*   %shl188 = shl i32 %add168, 26 *)
shls discard_51 v_shl188 v_add168 26;
(*   %shr189 = lshr i32 %add168, 6 *)
(* You may need to modify here *)
split v_shr189 tmp_to_be_used v_add168 6;
(*   %or190 = or i32 %shl188, %shr189 *)
(* You may need to modify here *)
or uint32 v_or190 v_shl188 v_shr189;
(*   %shl191 = shl i32 %add168, 21 *)
shls discard_52 v_shl191 v_add168 21;
(*   %shr192 = lshr i32 %add168, 11 *)
(* You may need to modify here *)
split v_shr192 tmp_to_be_used v_add168 11;
(*   %or193 = or i32 %shl191, %shr192 *)
(* You may need to modify here *)
or uint32 v_or193 v_shl191 v_shr192;
(*   %xor194 = xor i32 %or190, %or193 *)
(* You may need to modify here *)
xor uint32 v_xor194 v_or190 v_or193;
(*   %shl195 = shl i32 %add168, 7 *)
shls discard_53 v_shl195 v_add168 7;
(*   %shr196 = lshr i32 %add168, 25 *)
(* You may need to modify here *)
split v_shr196 tmp_to_be_used v_add168 25;
(*   %or197 = or i32 %shl195, %shr196 *)
(* You may need to modify here *)
or uint32 v_or197 v_shl195 v_shr196;
(*   %xor198 = xor i32 %xor194, %or197 *)
(* You may need to modify here *)
xor uint32 v_xor198 v_xor194 v_or197;
(*   %and200 = and i32 %add168, %add112 *)
(* You may need to modify here *)
and uint32 v_and200 v_add168 v_add112;
(*   %neg201 = xor i32 %add168, -1 *)
(* You may need to modify here *)
xor uint32 v_neg201 v_add168 (0xFFFFFFFF)@uint32;
(*   %and202 = and i32 %add58, %neg201 *)
(* You may need to modify here *)
and uint32 v_and202 v_add58 v_neg201;
(*   %xor203 = or i32 %and200, %and202 *)
(* You may need to modify here *)
or uint32 v_xor203 v_and200 v_and202;
(*   %add199 = add i32 %4, -373957723 *)
adds discard_54 v_add199 v4 (3921009573)@uint32;
(*   %add204 = add i32 %add199, %or185 *)
adds discard_55 v_add204 v_add199 v_or185;
(*   %add205 = add i32 %add204, %xor203 *)
adds discard_56 v_add205 v_add204 v_xor203;
(*   %add206 = add i32 %add205, %xor198 *)
adds discard_57 v_add206 v_add205 v_xor198;
(*   %shl207 = shl i32 %add169, 30 *)
shls discard_58 v_shl207 v_add169 30;
(*   %shr208 = lshr i32 %add169, 2 *)
(* You may need to modify here *)
split v_shr208 tmp_to_be_used v_add169 2;
(*   %or209 = or i32 %shl207, %shr208 *)
(* You may need to modify here *)
or uint32 v_or209 v_shl207 v_shr208;
(*   %shl210 = shl i32 %add169, 19 *)
shls discard_59 v_shl210 v_add169 19;
(*   %shr211 = lshr i32 %add169, 13 *)
(* You may need to modify here *)
split v_shr211 tmp_to_be_used v_add169 13;
(*   %or212 = or i32 %shl210, %shr211 *)
(* You may need to modify here *)
or uint32 v_or212 v_shl210 v_shr211;
(*   %xor213 = xor i32 %or209, %or212 *)
(* You may need to modify here *)
xor uint32 v_xor213 v_or209 v_or212;
(*   %shl214 = shl i32 %add169, 10 *)
shls discard_60 v_shl214 v_add169 10;
(*   %shr215 = lshr i32 %add169, 22 *)
(* You may need to modify here *)
split v_shr215 tmp_to_be_used v_add169 22;
(*   %or216 = or i32 %shl214, %shr215 *)
(* You may need to modify here *)
or uint32 v_or216 v_shl214 v_shr215;
(*   %xor217 = xor i32 %xor213, %or216 *)
(* You may need to modify here *)
xor uint32 v_xor217 v_xor213 v_or216;
(*   %and218 = and i32 %add169, %add113 *)
(* You may need to modify here *)
and uint32 v_and218 v_add169 v_add113;
(*   %and219 = and i32 %add169, %add59 *)
(* You may need to modify here *)
and uint32 v_and219 v_add169 v_add59;
(*   %xor220 = xor i32 %and219, %and162 *)
(* You may need to modify here *)
xor uint32 v_xor220 v_and219 v_and162;
(*   %xor222 = xor i32 %xor220, %and218 *)
(* You may need to modify here *)
xor uint32 v_xor222 v_xor220 v_and218;
(*   %add223 = add i32 %xor217, %xor222 *)
adds discard_61 v_add223 v_xor217 v_xor222;
(*   %add224 = add i32 %add206, %8 *)
adds discard_62 v_add224 v_add206 v8;
(*   %add225 = add i32 %add223, %add206 *)
adds discard_63 v_add225 v_add223 v_add206;
(*   %incdec.ptr228 = getelementptr inbounds i8, i8* %data.02557, i32 17 *)
(*   %25 = load i8, i8* %incdec.ptr183, align 1, !tbaa !8 *)
mov v25 data_02557_16;
(*   %conv229 = zext i8 %25 to i32 *)
cast v_conv229@uint32 v25@uint8;
(*   %shl230 = shl nuw i32 %conv229, 24 *)
shls discard_64 v_shl230 v_conv229 24;
(*   %incdec.ptr231 = getelementptr inbounds i8, i8* %data.02557, i32 18 *)
(*   %26 = load i8, i8* %incdec.ptr228, align 1, !tbaa !8 *)
mov v26 data_02557_17;
(*   %conv232 = zext i8 %26 to i32 *)
cast v_conv232@uint32 v26@uint8;
(*   %shl233 = shl nuw nsw i32 %conv232, 16 *)
shls discard_65 v_shl233 v_conv232 16;
(*   %or234 = or i32 %shl233, %shl230 *)
(* You may need to modify here *)
or uint32 v_or234 v_shl233 v_shl230;
(*   %incdec.ptr235 = getelementptr inbounds i8, i8* %data.02557, i32 19 *)
(*   %27 = load i8, i8* %incdec.ptr231, align 1, !tbaa !8 *)
mov v27 data_02557_18;
(*   %conv236 = zext i8 %27 to i32 *)
cast v_conv236@uint32 v27@uint8;
(*   %shl237 = shl nuw nsw i32 %conv236, 8 *)
shls discard_66 v_shl237 v_conv236 8;
(*   %or238 = or i32 %or234, %shl237 *)
(* You may need to modify here *)
or uint32 v_or238 v_or234 v_shl237;
(*   %incdec.ptr239 = getelementptr inbounds i8, i8* %data.02557, i32 20 *)
(*   %28 = load i8, i8* %incdec.ptr235, align 1, !tbaa !8 *)
mov v28 data_02557_19;
(*   %conv240 = zext i8 %28 to i32 *)
cast v_conv240@uint32 v28@uint8;
(*   %or241 = or i32 %or238, %conv240 *)
(* You may need to modify here *)
or uint32 v_or241 v_or238 v_conv240;
(*   store i32 %or241, i32* %arrayidx242, align 4, !tbaa !4 *)
mov arrayidx242_0 v_or241;
(*   %shl244 = shl i32 %add224, 26 *)
shls discard_67 v_shl244 v_add224 26;
(*   %shr245 = lshr i32 %add224, 6 *)
(* You may need to modify here *)
split v_shr245 tmp_to_be_used v_add224 6;
(*   %or246 = or i32 %shl244, %shr245 *)
(* You may need to modify here *)
or uint32 v_or246 v_shl244 v_shr245;
(*   %shl247 = shl i32 %add224, 21 *)
shls discard_68 v_shl247 v_add224 21;
(*   %shr248 = lshr i32 %add224, 11 *)
(* You may need to modify here *)
split v_shr248 tmp_to_be_used v_add224 11;
(*   %or249 = or i32 %shl247, %shr248 *)
(* You may need to modify here *)
or uint32 v_or249 v_shl247 v_shr248;
(*   %xor250 = xor i32 %or246, %or249 *)
(* You may need to modify here *)
xor uint32 v_xor250 v_or246 v_or249;
(*   %shl251 = shl i32 %add224, 7 *)
shls discard_69 v_shl251 v_add224 7;
(*   %shr252 = lshr i32 %add224, 25 *)
(* You may need to modify here *)
split v_shr252 tmp_to_be_used v_add224 25;
(*   %or253 = or i32 %shl251, %shr252 *)
(* You may need to modify here *)
or uint32 v_or253 v_shl251 v_shr252;
(*   %xor254 = xor i32 %xor250, %or253 *)
(* You may need to modify here *)
xor uint32 v_xor254 v_xor250 v_or253;
(*   %and256 = and i32 %add224, %add168 *)
(* You may need to modify here *)
and uint32 v_and256 v_add224 v_add168;
(*   %neg257 = xor i32 %add224, -1 *)
(* You may need to modify here *)
xor uint32 v_neg257 v_add224 (0xFFFFFFFF)@uint32;
(*   %and258 = and i32 %add112, %neg257 *)
(* You may need to modify here *)
and uint32 v_and258 v_add112 v_neg257;
(*   %xor259 = or i32 %and256, %and258 *)
(* You may need to modify here *)
or uint32 v_xor259 v_and256 v_and258;
(*   %add255 = add i32 %add58, 961987163 *)
adds discard_70 v_add255 v_add58 (961987163)@uint32;
(*   %add260 = add i32 %add255, %or241 *)
adds discard_71 v_add260 v_add255 v_or241;
(*   %add261 = add i32 %add260, %xor259 *)
adds discard_72 v_add261 v_add260 v_xor259;
(*   %add262 = add i32 %add261, %xor254 *)
adds discard_73 v_add262 v_add261 v_xor254;
(*   %shl263 = shl i32 %add225, 30 *)
shls discard_74 v_shl263 v_add225 30;
(*   %shr264 = lshr i32 %add225, 2 *)
(* You may need to modify here *)
split v_shr264 tmp_to_be_used v_add225 2;
(*   %or265 = or i32 %shl263, %shr264 *)
(* You may need to modify here *)
or uint32 v_or265 v_shl263 v_shr264;
(*   %shl266 = shl i32 %add225, 19 *)
shls discard_75 v_shl266 v_add225 19;
(*   %shr267 = lshr i32 %add225, 13 *)
(* You may need to modify here *)
split v_shr267 tmp_to_be_used v_add225 13;
(*   %or268 = or i32 %shl266, %shr267 *)
(* You may need to modify here *)
or uint32 v_or268 v_shl266 v_shr267;
(*   %xor269 = xor i32 %or265, %or268 *)
(* You may need to modify here *)
xor uint32 v_xor269 v_or265 v_or268;
(*   %shl270 = shl i32 %add225, 10 *)
shls discard_76 v_shl270 v_add225 10;
(*   %shr271 = lshr i32 %add225, 22 *)
(* You may need to modify here *)
split v_shr271 tmp_to_be_used v_add225 22;
(*   %or272 = or i32 %shl270, %shr271 *)
(* You may need to modify here *)
or uint32 v_or272 v_shl270 v_shr271;
(*   %xor273 = xor i32 %xor269, %or272 *)
(* You may need to modify here *)
xor uint32 v_xor273 v_xor269 v_or272;
(*   %and274 = and i32 %add225, %add169 *)
(* You may need to modify here *)
and uint32 v_and274 v_add225 v_add169;
(*   %and275 = and i32 %add225, %add113 *)
(* You may need to modify here *)
and uint32 v_and275 v_add225 v_add113;
(*   %xor276 = xor i32 %and275, %and218 *)
(* You may need to modify here *)
xor uint32 v_xor276 v_and275 v_and218;
(*   %xor278 = xor i32 %xor276, %and274 *)
(* You may need to modify here *)
xor uint32 v_xor278 v_xor276 v_and274;
(*   %add279 = add i32 %xor273, %xor278 *)
adds discard_77 v_add279 v_xor273 v_xor278;
(*   %add280 = add i32 %add262, %add59 *)
adds discard_78 v_add280 v_add262 v_add59;
(*   %add281 = add i32 %add279, %add262 *)
adds discard_79 v_add281 v_add279 v_add262;
(*   %incdec.ptr284 = getelementptr inbounds i8, i8* %data.02557, i32 21 *)
(*   %29 = load i8, i8* %incdec.ptr239, align 1, !tbaa !8 *)
mov v29 data_02557_20;
(*   %conv285 = zext i8 %29 to i32 *)
cast v_conv285@uint32 v29@uint8;
(*   %shl286 = shl nuw i32 %conv285, 24 *)
shls discard_80 v_shl286 v_conv285 24;
(*   %incdec.ptr287 = getelementptr inbounds i8, i8* %data.02557, i32 22 *)
(*   %30 = load i8, i8* %incdec.ptr284, align 1, !tbaa !8 *)
mov v30 data_02557_21;
(*   %conv288 = zext i8 %30 to i32 *)
cast v_conv288@uint32 v30@uint8;
(*   %shl289 = shl nuw nsw i32 %conv288, 16 *)
shls discard_81 v_shl289 v_conv288 16;
(*   %or290 = or i32 %shl289, %shl286 *)
(* You may need to modify here *)
or uint32 v_or290 v_shl289 v_shl286;
(*   %incdec.ptr291 = getelementptr inbounds i8, i8* %data.02557, i32 23 *)
(*   %31 = load i8, i8* %incdec.ptr287, align 1, !tbaa !8 *)
mov v31 data_02557_22;
(*   %conv292 = zext i8 %31 to i32 *)
cast v_conv292@uint32 v31@uint8;
(*   %shl293 = shl nuw nsw i32 %conv292, 8 *)
shls discard_82 v_shl293 v_conv292 8;
(*   %or294 = or i32 %or290, %shl293 *)
(* You may need to modify here *)
or uint32 v_or294 v_or290 v_shl293;
(*   %incdec.ptr295 = getelementptr inbounds i8, i8* %data.02557, i32 24 *)
(*   %32 = load i8, i8* %incdec.ptr291, align 1, !tbaa !8 *)
mov v32 data_02557_23;
(*   %conv296 = zext i8 %32 to i32 *)
cast v_conv296@uint32 v32@uint8;
(*   %or297 = or i32 %or294, %conv296 *)
(* You may need to modify here *)
or uint32 v_or297 v_or294 v_conv296;
(*   store i32 %or297, i32* %arrayidx298, align 4, !tbaa !4 *)
mov arrayidx298_0 v_or297;
(*   %shl300 = shl i32 %add280, 26 *)
shls discard_83 v_shl300 v_add280 26;
(*   %shr301 = lshr i32 %add280, 6 *)
(* You may need to modify here *)
split v_shr301 tmp_to_be_used v_add280 6;
(*   %or302 = or i32 %shl300, %shr301 *)
(* You may need to modify here *)
or uint32 v_or302 v_shl300 v_shr301;
(*   %shl303 = shl i32 %add280, 21 *)
shls discard_84 v_shl303 v_add280 21;
(*   %shr304 = lshr i32 %add280, 11 *)
(* You may need to modify here *)
split v_shr304 tmp_to_be_used v_add280 11;
(*   %or305 = or i32 %shl303, %shr304 *)
(* You may need to modify here *)
or uint32 v_or305 v_shl303 v_shr304;
(*   %xor306 = xor i32 %or302, %or305 *)
(* You may need to modify here *)
xor uint32 v_xor306 v_or302 v_or305;
(*   %shl307 = shl i32 %add280, 7 *)
shls discard_85 v_shl307 v_add280 7;
(*   %shr308 = lshr i32 %add280, 25 *)
(* You may need to modify here *)
split v_shr308 tmp_to_be_used v_add280 25;
(*   %or309 = or i32 %shl307, %shr308 *)
(* You may need to modify here *)
or uint32 v_or309 v_shl307 v_shr308;
(*   %xor310 = xor i32 %xor306, %or309 *)
(* You may need to modify here *)
xor uint32 v_xor310 v_xor306 v_or309;
(*   %and312 = and i32 %add280, %add224 *)
(* You may need to modify here *)
and uint32 v_and312 v_add280 v_add224;
(*   %neg313 = xor i32 %add280, -1 *)
(* You may need to modify here *)
xor uint32 v_neg313 v_add280 (0xFFFFFFFF)@uint32;
(*   %and314 = and i32 %add168, %neg313 *)
(* You may need to modify here *)
and uint32 v_and314 v_add168 v_neg313;
(*   %xor315 = or i32 %and312, %and314 *)
(* You may need to modify here *)
or uint32 v_xor315 v_and312 v_and314;
(*   %add311 = add i32 %add112, 1508970993 *)
adds discard_86 v_add311 v_add112 (1508970993)@uint32;
(*   %add316 = add i32 %add311, %or297 *)
adds discard_87 v_add316 v_add311 v_or297;
(*   %add317 = add i32 %add316, %xor315 *)
adds discard_88 v_add317 v_add316 v_xor315;
(*   %add318 = add i32 %add317, %xor310 *)
adds discard_89 v_add318 v_add317 v_xor310;
(*   %shl319 = shl i32 %add281, 30 *)
shls discard_90 v_shl319 v_add281 30;
(*   %shr320 = lshr i32 %add281, 2 *)
(* You may need to modify here *)
split v_shr320 tmp_to_be_used v_add281 2;
(*   %or321 = or i32 %shl319, %shr320 *)
(* You may need to modify here *)
or uint32 v_or321 v_shl319 v_shr320;
(*   %shl322 = shl i32 %add281, 19 *)
shls discard_91 v_shl322 v_add281 19;
(*   %shr323 = lshr i32 %add281, 13 *)
(* You may need to modify here *)
split v_shr323 tmp_to_be_used v_add281 13;
(*   %or324 = or i32 %shl322, %shr323 *)
(* You may need to modify here *)
or uint32 v_or324 v_shl322 v_shr323;
(*   %xor325 = xor i32 %or321, %or324 *)
(* You may need to modify here *)
xor uint32 v_xor325 v_or321 v_or324;
(*   %shl326 = shl i32 %add281, 10 *)
shls discard_92 v_shl326 v_add281 10;
(*   %shr327 = lshr i32 %add281, 22 *)
(* You may need to modify here *)
split v_shr327 tmp_to_be_used v_add281 22;
(*   %or328 = or i32 %shl326, %shr327 *)
(* You may need to modify here *)
or uint32 v_or328 v_shl326 v_shr327;
(*   %xor329 = xor i32 %xor325, %or328 *)
(* You may need to modify here *)
xor uint32 v_xor329 v_xor325 v_or328;
(*   %and330 = and i32 %add281, %add225 *)
(* You may need to modify here *)
and uint32 v_and330 v_add281 v_add225;
(*   %and331 = and i32 %add281, %add169 *)
(* You may need to modify here *)
and uint32 v_and331 v_add281 v_add169;
(*   %xor332 = xor i32 %and331, %and274 *)
(* You may need to modify here *)
xor uint32 v_xor332 v_and331 v_and274;
(*   %xor334 = xor i32 %xor332, %and330 *)
(* You may need to modify here *)
xor uint32 v_xor334 v_xor332 v_and330;
(*   %add335 = add i32 %xor329, %xor334 *)
adds discard_93 v_add335 v_xor329 v_xor334;
(*   %add336 = add i32 %add318, %add113 *)
adds discard_94 v_add336 v_add318 v_add113;
(*   %add337 = add i32 %add335, %add318 *)
adds discard_95 v_add337 v_add335 v_add318;
(*   %incdec.ptr340 = getelementptr inbounds i8, i8* %data.02557, i32 25 *)
(*   %33 = load i8, i8* %incdec.ptr295, align 1, !tbaa !8 *)
mov v33 data_02557_24;
(*   %conv341 = zext i8 %33 to i32 *)
cast v_conv341@uint32 v33@uint8;
(*   %shl342 = shl nuw i32 %conv341, 24 *)
shls discard_96 v_shl342 v_conv341 24;
(*   %incdec.ptr343 = getelementptr inbounds i8, i8* %data.02557, i32 26 *)
(*   %34 = load i8, i8* %incdec.ptr340, align 1, !tbaa !8 *)
mov v34 data_02557_25;
(*   %conv344 = zext i8 %34 to i32 *)
cast v_conv344@uint32 v34@uint8;
(*   %shl345 = shl nuw nsw i32 %conv344, 16 *)
shls discard_97 v_shl345 v_conv344 16;
(*   %or346 = or i32 %shl345, %shl342 *)
(* You may need to modify here *)
or uint32 v_or346 v_shl345 v_shl342;
(*   %incdec.ptr347 = getelementptr inbounds i8, i8* %data.02557, i32 27 *)
(*   %35 = load i8, i8* %incdec.ptr343, align 1, !tbaa !8 *)
mov v35 data_02557_26;
(*   %conv348 = zext i8 %35 to i32 *)
cast v_conv348@uint32 v35@uint8;
(*   %shl349 = shl nuw nsw i32 %conv348, 8 *)
shls discard_98 v_shl349 v_conv348 8;
(*   %or350 = or i32 %or346, %shl349 *)
(* You may need to modify here *)
or uint32 v_or350 v_or346 v_shl349;
(*   %incdec.ptr351 = getelementptr inbounds i8, i8* %data.02557, i32 28 *)
(*   %36 = load i8, i8* %incdec.ptr347, align 1, !tbaa !8 *)
mov v36 data_02557_27;
(*   %conv352 = zext i8 %36 to i32 *)
cast v_conv352@uint32 v36@uint8;
(*   %or353 = or i32 %or350, %conv352 *)
(* You may need to modify here *)
or uint32 v_or353 v_or350 v_conv352;
(*   store i32 %or353, i32* %arrayidx354, align 4, !tbaa !4 *)
mov arrayidx354_0 v_or353;
(*   %shl356 = shl i32 %add336, 26 *)
shls discard_99 v_shl356 v_add336 26;
(*   %shr357 = lshr i32 %add336, 6 *)
(* You may need to modify here *)
split v_shr357 tmp_to_be_used v_add336 6;
(*   %or358 = or i32 %shl356, %shr357 *)
(* You may need to modify here *)
or uint32 v_or358 v_shl356 v_shr357;
(*   %shl359 = shl i32 %add336, 21 *)
shls discard_100 v_shl359 v_add336 21;
(*   %shr360 = lshr i32 %add336, 11 *)
(* You may need to modify here *)
split v_shr360 tmp_to_be_used v_add336 11;
(*   %or361 = or i32 %shl359, %shr360 *)
(* You may need to modify here *)
or uint32 v_or361 v_shl359 v_shr360;
(*   %xor362 = xor i32 %or358, %or361 *)
(* You may need to modify here *)
xor uint32 v_xor362 v_or358 v_or361;
(*   %shl363 = shl i32 %add336, 7 *)
shls discard_101 v_shl363 v_add336 7;
(*   %shr364 = lshr i32 %add336, 25 *)
(* You may need to modify here *)
split v_shr364 tmp_to_be_used v_add336 25;
(*   %or365 = or i32 %shl363, %shr364 *)
(* You may need to modify here *)
or uint32 v_or365 v_shl363 v_shr364;
(*   %xor366 = xor i32 %xor362, %or365 *)
(* You may need to modify here *)
xor uint32 v_xor366 v_xor362 v_or365;
(*   %and368 = and i32 %add336, %add280 *)
(* You may need to modify here *)
and uint32 v_and368 v_add336 v_add280;
(*   %neg369 = xor i32 %add336, -1 *)
(* You may need to modify here *)
xor uint32 v_neg369 v_add336 (0xFFFFFFFF)@uint32;
(*   %and370 = and i32 %add224, %neg369 *)
(* You may need to modify here *)
and uint32 v_and370 v_add224 v_neg369;
(*   %xor371 = or i32 %and368, %and370 *)
(* You may need to modify here *)
or uint32 v_xor371 v_and368 v_and370;
(*   %add367 = add i32 %add168, -1841331548 *)
adds discard_102 v_add367 v_add168 (2453635748)@uint32;
(*   %add372 = add i32 %add367, %or353 *)
adds discard_103 v_add372 v_add367 v_or353;
(*   %add373 = add i32 %add372, %xor371 *)
adds discard_104 v_add373 v_add372 v_xor371;
(*   %add374 = add i32 %add373, %xor366 *)
adds discard_105 v_add374 v_add373 v_xor366;
(*   %shl375 = shl i32 %add337, 30 *)
shls discard_106 v_shl375 v_add337 30;
(*   %shr376 = lshr i32 %add337, 2 *)
(* You may need to modify here *)
split v_shr376 tmp_to_be_used v_add337 2;
(*   %or377 = or i32 %shl375, %shr376 *)
(* You may need to modify here *)
or uint32 v_or377 v_shl375 v_shr376;
(*   %shl378 = shl i32 %add337, 19 *)
shls discard_107 v_shl378 v_add337 19;
(*   %shr379 = lshr i32 %add337, 13 *)
(* You may need to modify here *)
split v_shr379 tmp_to_be_used v_add337 13;
(*   %or380 = or i32 %shl378, %shr379 *)
(* You may need to modify here *)
or uint32 v_or380 v_shl378 v_shr379;
(*   %xor381 = xor i32 %or377, %or380 *)
(* You may need to modify here *)
xor uint32 v_xor381 v_or377 v_or380;
(*   %shl382 = shl i32 %add337, 10 *)
shls discard_108 v_shl382 v_add337 10;
(*   %shr383 = lshr i32 %add337, 22 *)
(* You may need to modify here *)
split v_shr383 tmp_to_be_used v_add337 22;
(*   %or384 = or i32 %shl382, %shr383 *)
(* You may need to modify here *)
or uint32 v_or384 v_shl382 v_shr383;
(*   %xor385 = xor i32 %xor381, %or384 *)
(* You may need to modify here *)
xor uint32 v_xor385 v_xor381 v_or384;
(*   %and386 = and i32 %add337, %add281 *)
(* You may need to modify here *)
and uint32 v_and386 v_add337 v_add281;
(*   %and387 = and i32 %add337, %add225 *)
(* You may need to modify here *)
and uint32 v_and387 v_add337 v_add225;
(*   %xor388 = xor i32 %and387, %and330 *)
(* You may need to modify here *)
xor uint32 v_xor388 v_and387 v_and330;
(*   %xor390 = xor i32 %xor388, %and386 *)
(* You may need to modify here *)
xor uint32 v_xor390 v_xor388 v_and386;
(*   %add391 = add i32 %xor385, %xor390 *)
adds discard_109 v_add391 v_xor385 v_xor390;
(*   %add392 = add i32 %add374, %add169 *)
adds discard_110 v_add392 v_add374 v_add169;
(*   %add393 = add i32 %add391, %add374 *)
adds discard_111 v_add393 v_add391 v_add374;
(*   %incdec.ptr396 = getelementptr inbounds i8, i8* %data.02557, i32 29 *)
(*   %37 = load i8, i8* %incdec.ptr351, align 1, !tbaa !8 *)
mov v37 data_02557_28;
(*   %conv397 = zext i8 %37 to i32 *)
cast v_conv397@uint32 v37@uint8;
(*   %shl398 = shl nuw i32 %conv397, 24 *)
shls discard_112 v_shl398 v_conv397 24;
(*   %incdec.ptr399 = getelementptr inbounds i8, i8* %data.02557, i32 30 *)
(*   %38 = load i8, i8* %incdec.ptr396, align 1, !tbaa !8 *)
mov v38 data_02557_29;
(*   %conv400 = zext i8 %38 to i32 *)
cast v_conv400@uint32 v38@uint8;
(*   %shl401 = shl nuw nsw i32 %conv400, 16 *)
shls discard_113 v_shl401 v_conv400 16;
(*   %or402 = or i32 %shl401, %shl398 *)
(* You may need to modify here *)
or uint32 v_or402 v_shl401 v_shl398;
(*   %incdec.ptr403 = getelementptr inbounds i8, i8* %data.02557, i32 31 *)
(*   %39 = load i8, i8* %incdec.ptr399, align 1, !tbaa !8 *)
mov v39 data_02557_30;
(*   %conv404 = zext i8 %39 to i32 *)
cast v_conv404@uint32 v39@uint8;
(*   %shl405 = shl nuw nsw i32 %conv404, 8 *)
shls discard_114 v_shl405 v_conv404 8;
(*   %or406 = or i32 %or402, %shl405 *)
(* You may need to modify here *)
or uint32 v_or406 v_or402 v_shl405;
(*   %incdec.ptr407 = getelementptr inbounds i8, i8* %data.02557, i32 32 *)
(*   %40 = load i8, i8* %incdec.ptr403, align 1, !tbaa !8 *)
mov v40 data_02557_31;
(*   %conv408 = zext i8 %40 to i32 *)
cast v_conv408@uint32 v40@uint8;
(*   %or409 = or i32 %or406, %conv408 *)
(* You may need to modify here *)
or uint32 v_or409 v_or406 v_conv408;
(*   store i32 %or409, i32* %arrayidx410, align 4, !tbaa !4 *)
mov arrayidx410_0 v_or409;
(*   %shl412 = shl i32 %add392, 26 *)
shls discard_115 v_shl412 v_add392 26;
(*   %shr413 = lshr i32 %add392, 6 *)
(* You may need to modify here *)
split v_shr413 tmp_to_be_used v_add392 6;
(*   %or414 = or i32 %shl412, %shr413 *)
(* You may need to modify here *)
or uint32 v_or414 v_shl412 v_shr413;
(*   %shl415 = shl i32 %add392, 21 *)
shls discard_116 v_shl415 v_add392 21;
(*   %shr416 = lshr i32 %add392, 11 *)
(* You may need to modify here *)
split v_shr416 tmp_to_be_used v_add392 11;
(*   %or417 = or i32 %shl415, %shr416 *)
(* You may need to modify here *)
or uint32 v_or417 v_shl415 v_shr416;
(*   %xor418 = xor i32 %or414, %or417 *)
(* You may need to modify here *)
xor uint32 v_xor418 v_or414 v_or417;
(*   %shl419 = shl i32 %add392, 7 *)
shls discard_117 v_shl419 v_add392 7;
(*   %shr420 = lshr i32 %add392, 25 *)
(* You may need to modify here *)
split v_shr420 tmp_to_be_used v_add392 25;
(*   %or421 = or i32 %shl419, %shr420 *)
(* You may need to modify here *)
or uint32 v_or421 v_shl419 v_shr420;
(*   %xor422 = xor i32 %xor418, %or421 *)
(* You may need to modify here *)
xor uint32 v_xor422 v_xor418 v_or421;
(*   %and424 = and i32 %add392, %add336 *)
(* You may need to modify here *)
and uint32 v_and424 v_add392 v_add336;
(*   %neg425 = xor i32 %add392, -1 *)
(* You may need to modify here *)
xor uint32 v_neg425 v_add392 (0xFFFFFFFF)@uint32;
(*   %and426 = and i32 %add280, %neg425 *)
(* You may need to modify here *)
and uint32 v_and426 v_add280 v_neg425;
(*   %xor427 = or i32 %and424, %and426 *)
(* You may need to modify here *)
or uint32 v_xor427 v_and424 v_and426;
(*   %add423 = add i32 %add224, -1424204075 *)
adds discard_118 v_add423 v_add224 (2870763221)@uint32;
(*   %add428 = add i32 %add423, %or409 *)
adds discard_119 v_add428 v_add423 v_or409;
(*   %add429 = add i32 %add428, %xor427 *)
adds discard_120 v_add429 v_add428 v_xor427;
(*   %add430 = add i32 %add429, %xor422 *)
adds discard_121 v_add430 v_add429 v_xor422;
(*   %shl431 = shl i32 %add393, 30 *)
shls discard_122 v_shl431 v_add393 30;
(*   %shr432 = lshr i32 %add393, 2 *)
(* You may need to modify here *)
split v_shr432 tmp_to_be_used v_add393 2;
(*   %or433 = or i32 %shl431, %shr432 *)
(* You may need to modify here *)
or uint32 v_or433 v_shl431 v_shr432;
(*   %shl434 = shl i32 %add393, 19 *)
shls discard_123 v_shl434 v_add393 19;
(*   %shr435 = lshr i32 %add393, 13 *)
(* You may need to modify here *)
split v_shr435 tmp_to_be_used v_add393 13;
(*   %or436 = or i32 %shl434, %shr435 *)
(* You may need to modify here *)
or uint32 v_or436 v_shl434 v_shr435;
(*   %xor437 = xor i32 %or433, %or436 *)
(* You may need to modify here *)
xor uint32 v_xor437 v_or433 v_or436;
(*   %shl438 = shl i32 %add393, 10 *)
shls discard_124 v_shl438 v_add393 10;
(*   %shr439 = lshr i32 %add393, 22 *)
(* You may need to modify here *)
split v_shr439 tmp_to_be_used v_add393 22;
(*   %or440 = or i32 %shl438, %shr439 *)
(* You may need to modify here *)
or uint32 v_or440 v_shl438 v_shr439;
(*   %xor441 = xor i32 %xor437, %or440 *)
(* You may need to modify here *)
xor uint32 v_xor441 v_xor437 v_or440;
(*   %and442 = and i32 %add393, %add337 *)
(* You may need to modify here *)
and uint32 v_and442 v_add393 v_add337;
(*   %and443 = and i32 %add393, %add281 *)
(* You may need to modify here *)
and uint32 v_and443 v_add393 v_add281;
(*   %xor444 = xor i32 %and443, %and386 *)
(* You may need to modify here *)
xor uint32 v_xor444 v_and443 v_and386;
(*   %xor446 = xor i32 %xor444, %and442 *)
(* You may need to modify here *)
xor uint32 v_xor446 v_xor444 v_and442;
(*   %add447 = add i32 %xor441, %xor446 *)
adds discard_125 v_add447 v_xor441 v_xor446;
(*   %add448 = add i32 %add430, %add225 *)
adds discard_126 v_add448 v_add430 v_add225;
(*   %add449 = add i32 %add447, %add430 *)
adds discard_127 v_add449 v_add447 v_add430;
(*   %incdec.ptr452 = getelementptr inbounds i8, i8* %data.02557, i32 33 *)
(*   %41 = load i8, i8* %incdec.ptr407, align 1, !tbaa !8 *)
mov v41 data_02557_32;
(*   %conv453 = zext i8 %41 to i32 *)
cast v_conv453@uint32 v41@uint8;
(*   %shl454 = shl nuw i32 %conv453, 24 *)
shls discard_128 v_shl454 v_conv453 24;
(*   %incdec.ptr455 = getelementptr inbounds i8, i8* %data.02557, i32 34 *)
(*   %42 = load i8, i8* %incdec.ptr452, align 1, !tbaa !8 *)
mov v42 data_02557_33;
(*   %conv456 = zext i8 %42 to i32 *)
cast v_conv456@uint32 v42@uint8;
(*   %shl457 = shl nuw nsw i32 %conv456, 16 *)
shls discard_129 v_shl457 v_conv456 16;
(*   %or458 = or i32 %shl457, %shl454 *)
(* You may need to modify here *)
or uint32 v_or458 v_shl457 v_shl454;
(*   %incdec.ptr459 = getelementptr inbounds i8, i8* %data.02557, i32 35 *)
(*   %43 = load i8, i8* %incdec.ptr455, align 1, !tbaa !8 *)
mov v43 data_02557_34;
(*   %conv460 = zext i8 %43 to i32 *)
cast v_conv460@uint32 v43@uint8;
(*   %shl461 = shl nuw nsw i32 %conv460, 8 *)
shls discard_130 v_shl461 v_conv460 8;
(*   %or462 = or i32 %or458, %shl461 *)
(* You may need to modify here *)
or uint32 v_or462 v_or458 v_shl461;
(*   %incdec.ptr463 = getelementptr inbounds i8, i8* %data.02557, i32 36 *)
(*   %44 = load i8, i8* %incdec.ptr459, align 1, !tbaa !8 *)
mov v44 data_02557_35;
(*   %conv464 = zext i8 %44 to i32 *)
cast v_conv464@uint32 v44@uint8;
(*   %or465 = or i32 %or462, %conv464 *)
(* You may need to modify here *)
or uint32 v_or465 v_or462 v_conv464;
(*   store i32 %or465, i32* %arrayidx466, align 4, !tbaa !4 *)
mov arrayidx466_0 v_or465;
(*   %shl468 = shl i32 %add448, 26 *)
shls discard_131 v_shl468 v_add448 26;
(*   %shr469 = lshr i32 %add448, 6 *)
(* You may need to modify here *)
split v_shr469 tmp_to_be_used v_add448 6;
(*   %or470 = or i32 %shl468, %shr469 *)
(* You may need to modify here *)
or uint32 v_or470 v_shl468 v_shr469;
(*   %shl471 = shl i32 %add448, 21 *)
shls discard_132 v_shl471 v_add448 21;
(*   %shr472 = lshr i32 %add448, 11 *)
(* You may need to modify here *)
split v_shr472 tmp_to_be_used v_add448 11;
(*   %or473 = or i32 %shl471, %shr472 *)
(* You may need to modify here *)
or uint32 v_or473 v_shl471 v_shr472;
(*   %xor474 = xor i32 %or470, %or473 *)
(* You may need to modify here *)
xor uint32 v_xor474 v_or470 v_or473;
(*   %shl475 = shl i32 %add448, 7 *)
shls discard_133 v_shl475 v_add448 7;
(*   %shr476 = lshr i32 %add448, 25 *)
(* You may need to modify here *)
split v_shr476 tmp_to_be_used v_add448 25;
(*   %or477 = or i32 %shl475, %shr476 *)
(* You may need to modify here *)
or uint32 v_or477 v_shl475 v_shr476;
(*   %xor478 = xor i32 %xor474, %or477 *)
(* You may need to modify here *)
xor uint32 v_xor478 v_xor474 v_or477;
(*   %and480 = and i32 %add448, %add392 *)
(* You may need to modify here *)
and uint32 v_and480 v_add448 v_add392;
(*   %neg481 = xor i32 %add448, -1 *)
(* You may need to modify here *)
xor uint32 v_neg481 v_add448 (0xFFFFFFFF)@uint32;
(*   %and482 = and i32 %add336, %neg481 *)
(* You may need to modify here *)
and uint32 v_and482 v_add336 v_neg481;
(*   %xor483 = or i32 %and480, %and482 *)
(* You may need to modify here *)
or uint32 v_xor483 v_and480 v_and482;
(*   %add479 = add i32 %add280, -670586216 *)
adds discard_134 v_add479 v_add280 (3624381080)@uint32;
(*   %add484 = add i32 %add479, %or465 *)
adds discard_135 v_add484 v_add479 v_or465;
(*   %add485 = add i32 %add484, %xor483 *)
adds discard_136 v_add485 v_add484 v_xor483;
(*   %add486 = add i32 %add485, %xor478 *)
adds discard_137 v_add486 v_add485 v_xor478;
(*   %shl487 = shl i32 %add449, 30 *)
shls discard_138 v_shl487 v_add449 30;
(*   %shr488 = lshr i32 %add449, 2 *)
(* You may need to modify here *)
split v_shr488 tmp_to_be_used v_add449 2;
(*   %or489 = or i32 %shl487, %shr488 *)
(* You may need to modify here *)
or uint32 v_or489 v_shl487 v_shr488;
(*   %shl490 = shl i32 %add449, 19 *)
shls discard_139 v_shl490 v_add449 19;
(*   %shr491 = lshr i32 %add449, 13 *)
(* You may need to modify here *)
split v_shr491 tmp_to_be_used v_add449 13;
(*   %or492 = or i32 %shl490, %shr491 *)
(* You may need to modify here *)
or uint32 v_or492 v_shl490 v_shr491;
(*   %xor493 = xor i32 %or489, %or492 *)
(* You may need to modify here *)
xor uint32 v_xor493 v_or489 v_or492;
(*   %shl494 = shl i32 %add449, 10 *)
shls discard_140 v_shl494 v_add449 10;
(*   %shr495 = lshr i32 %add449, 22 *)
(* You may need to modify here *)
split v_shr495 tmp_to_be_used v_add449 22;
(*   %or496 = or i32 %shl494, %shr495 *)
(* You may need to modify here *)
or uint32 v_or496 v_shl494 v_shr495;
(*   %xor497 = xor i32 %xor493, %or496 *)
(* You may need to modify here *)
xor uint32 v_xor497 v_xor493 v_or496;
(*   %and498 = and i32 %add449, %add393 *)
(* You may need to modify here *)
and uint32 v_and498 v_add449 v_add393;
(*   %and499 = and i32 %add449, %add337 *)
(* You may need to modify here *)
and uint32 v_and499 v_add449 v_add337;
(*   %xor500 = xor i32 %and499, %and442 *)
(* You may need to modify here *)
xor uint32 v_xor500 v_and499 v_and442;
(*   %xor502 = xor i32 %xor500, %and498 *)
(* You may need to modify here *)
xor uint32 v_xor502 v_xor500 v_and498;
(*   %add503 = add i32 %xor497, %xor502 *)
adds discard_141 v_add503 v_xor497 v_xor502;
(*   %add504 = add i32 %add486, %add281 *)
adds discard_142 v_add504 v_add486 v_add281;
(*   %add505 = add i32 %add503, %add486 *)
adds discard_143 v_add505 v_add503 v_add486;
(*   %incdec.ptr508 = getelementptr inbounds i8, i8* %data.02557, i32 37 *)
(*   %45 = load i8, i8* %incdec.ptr463, align 1, !tbaa !8 *)
mov v45 data_02557_36;
(*   %conv509 = zext i8 %45 to i32 *)
cast v_conv509@uint32 v45@uint8;
(*   %shl510 = shl nuw i32 %conv509, 24 *)
shls discard_144 v_shl510 v_conv509 24;
(*   %incdec.ptr511 = getelementptr inbounds i8, i8* %data.02557, i32 38 *)
(*   %46 = load i8, i8* %incdec.ptr508, align 1, !tbaa !8 *)
mov v46 data_02557_37;
(*   %conv512 = zext i8 %46 to i32 *)
cast v_conv512@uint32 v46@uint8;
(*   %shl513 = shl nuw nsw i32 %conv512, 16 *)
shls discard_145 v_shl513 v_conv512 16;
(*   %or514 = or i32 %shl513, %shl510 *)
(* You may need to modify here *)
or uint32 v_or514 v_shl513 v_shl510;
(*   %incdec.ptr515 = getelementptr inbounds i8, i8* %data.02557, i32 39 *)
(*   %47 = load i8, i8* %incdec.ptr511, align 1, !tbaa !8 *)
mov v47 data_02557_38;
(*   %conv516 = zext i8 %47 to i32 *)
cast v_conv516@uint32 v47@uint8;
(*   %shl517 = shl nuw nsw i32 %conv516, 8 *)
shls discard_146 v_shl517 v_conv516 8;
(*   %or518 = or i32 %or514, %shl517 *)
(* You may need to modify here *)
or uint32 v_or518 v_or514 v_shl517;
(*   %incdec.ptr519 = getelementptr inbounds i8, i8* %data.02557, i32 40 *)
(*   %48 = load i8, i8* %incdec.ptr515, align 1, !tbaa !8 *)
mov v48 data_02557_39;
(*   %conv520 = zext i8 %48 to i32 *)
cast v_conv520@uint32 v48@uint8;
(*   %or521 = or i32 %or518, %conv520 *)
(* You may need to modify here *)
or uint32 v_or521 v_or518 v_conv520;
(*   store i32 %or521, i32* %arrayidx522, align 4, !tbaa !4 *)
mov arrayidx522_0 v_or521;
(*   %shl524 = shl i32 %add504, 26 *)
shls discard_147 v_shl524 v_add504 26;
(*   %shr525 = lshr i32 %add504, 6 *)
(* You may need to modify here *)
split v_shr525 tmp_to_be_used v_add504 6;
(*   %or526 = or i32 %shl524, %shr525 *)
(* You may need to modify here *)
or uint32 v_or526 v_shl524 v_shr525;
(*   %shl527 = shl i32 %add504, 21 *)
shls discard_148 v_shl527 v_add504 21;
(*   %shr528 = lshr i32 %add504, 11 *)
(* You may need to modify here *)
split v_shr528 tmp_to_be_used v_add504 11;
(*   %or529 = or i32 %shl527, %shr528 *)
(* You may need to modify here *)
or uint32 v_or529 v_shl527 v_shr528;
(*   %xor530 = xor i32 %or526, %or529 *)
(* You may need to modify here *)
xor uint32 v_xor530 v_or526 v_or529;
(*   %shl531 = shl i32 %add504, 7 *)
shls discard_149 v_shl531 v_add504 7;
(*   %shr532 = lshr i32 %add504, 25 *)
(* You may need to modify here *)
split v_shr532 tmp_to_be_used v_add504 25;
(*   %or533 = or i32 %shl531, %shr532 *)
(* You may need to modify here *)
or uint32 v_or533 v_shl531 v_shr532;
(*   %xor534 = xor i32 %xor530, %or533 *)
(* You may need to modify here *)
xor uint32 v_xor534 v_xor530 v_or533;
(*   %and536 = and i32 %add504, %add448 *)
(* You may need to modify here *)
and uint32 v_and536 v_add504 v_add448;
(*   %neg537 = xor i32 %add504, -1 *)
(* You may need to modify here *)
xor uint32 v_neg537 v_add504 (0xFFFFFFFF)@uint32;
(*   %and538 = and i32 %add392, %neg537 *)
(* You may need to modify here *)
and uint32 v_and538 v_add392 v_neg537;
(*   %xor539 = or i32 %and536, %and538 *)
(* You may need to modify here *)
or uint32 v_xor539 v_and536 v_and538;
(*   %add535 = add i32 %or521, 310598401 *)
adds discard_150 v_add535 v_or521 (310598401)@uint32;
(*   %add540 = add i32 %add535, %add336 *)
adds discard_151 v_add540 v_add535 v_add336;
(*   %add541 = add i32 %add540, %xor539 *)
adds discard_152 v_add541 v_add540 v_xor539;
(*   %add542 = add i32 %add541, %xor534 *)
adds discard_153 v_add542 v_add541 v_xor534;
(*   %shl543 = shl i32 %add505, 30 *)
shls discard_154 v_shl543 v_add505 30;
(*   %shr544 = lshr i32 %add505, 2 *)
(* You may need to modify here *)
split v_shr544 tmp_to_be_used v_add505 2;
(*   %or545 = or i32 %shl543, %shr544 *)
(* You may need to modify here *)
or uint32 v_or545 v_shl543 v_shr544;
(*   %shl546 = shl i32 %add505, 19 *)
shls discard_155 v_shl546 v_add505 19;
(*   %shr547 = lshr i32 %add505, 13 *)
(* You may need to modify here *)
split v_shr547 tmp_to_be_used v_add505 13;
(*   %or548 = or i32 %shl546, %shr547 *)
(* You may need to modify here *)
or uint32 v_or548 v_shl546 v_shr547;
(*   %xor549 = xor i32 %or545, %or548 *)
(* You may need to modify here *)
xor uint32 v_xor549 v_or545 v_or548;
(*   %shl550 = shl i32 %add505, 10 *)
shls discard_156 v_shl550 v_add505 10;
(*   %shr551 = lshr i32 %add505, 22 *)
(* You may need to modify here *)
split v_shr551 tmp_to_be_used v_add505 22;
(*   %or552 = or i32 %shl550, %shr551 *)
(* You may need to modify here *)
or uint32 v_or552 v_shl550 v_shr551;
(*   %xor553 = xor i32 %xor549, %or552 *)
(* You may need to modify here *)
xor uint32 v_xor553 v_xor549 v_or552;
(*   %and554 = and i32 %add505, %add449 *)
(* You may need to modify here *)
and uint32 v_and554 v_add505 v_add449;
(*   %and555 = and i32 %add505, %add393 *)
(* You may need to modify here *)
and uint32 v_and555 v_add505 v_add393;
(*   %xor556 = xor i32 %and555, %and498 *)
(* You may need to modify here *)
xor uint32 v_xor556 v_and555 v_and498;
(*   %xor558 = xor i32 %xor556, %and554 *)
(* You may need to modify here *)
xor uint32 v_xor558 v_xor556 v_and554;
(*   %add559 = add i32 %xor553, %xor558 *)
adds discard_157 v_add559 v_xor553 v_xor558;
(*   %add560 = add i32 %add542, %add337 *)
adds discard_158 v_add560 v_add542 v_add337;
(*   %add561 = add i32 %add559, %add542 *)
adds discard_159 v_add561 v_add559 v_add542;
(*   %incdec.ptr564 = getelementptr inbounds i8, i8* %data.02557, i32 41 *)
(*   %49 = load i8, i8* %incdec.ptr519, align 1, !tbaa !8 *)
mov v49 data_02557_40;
(*   %conv565 = zext i8 %49 to i32 *)
cast v_conv565@uint32 v49@uint8;
(*   %shl566 = shl nuw i32 %conv565, 24 *)
shls discard_160 v_shl566 v_conv565 24;
(*   %incdec.ptr567 = getelementptr inbounds i8, i8* %data.02557, i32 42 *)
(*   %50 = load i8, i8* %incdec.ptr564, align 1, !tbaa !8 *)
mov v50 data_02557_41;
(*   %conv568 = zext i8 %50 to i32 *)
cast v_conv568@uint32 v50@uint8;
(*   %shl569 = shl nuw nsw i32 %conv568, 16 *)
shls discard_161 v_shl569 v_conv568 16;
(*   %or570 = or i32 %shl569, %shl566 *)
(* You may need to modify here *)
or uint32 v_or570 v_shl569 v_shl566;
(*   %incdec.ptr571 = getelementptr inbounds i8, i8* %data.02557, i32 43 *)
(*   %51 = load i8, i8* %incdec.ptr567, align 1, !tbaa !8 *)
mov v51 data_02557_42;
(*   %conv572 = zext i8 %51 to i32 *)
cast v_conv572@uint32 v51@uint8;
(*   %shl573 = shl nuw nsw i32 %conv572, 8 *)
shls discard_162 v_shl573 v_conv572 8;
(*   %or574 = or i32 %or570, %shl573 *)
(* You may need to modify here *)
or uint32 v_or574 v_or570 v_shl573;
(*   %incdec.ptr575 = getelementptr inbounds i8, i8* %data.02557, i32 44 *)
(*   %52 = load i8, i8* %incdec.ptr571, align 1, !tbaa !8 *)
mov v52 data_02557_43;
(*   %conv576 = zext i8 %52 to i32 *)
cast v_conv576@uint32 v52@uint8;
(*   %or577 = or i32 %or574, %conv576 *)
(* You may need to modify here *)
or uint32 v_or577 v_or574 v_conv576;
(*   store i32 %or577, i32* %arrayidx578, align 4, !tbaa !4 *)
mov arrayidx578_0 v_or577;
(*   %shl580 = shl i32 %add560, 26 *)
shls discard_163 v_shl580 v_add560 26;
(*   %shr581 = lshr i32 %add560, 6 *)
(* You may need to modify here *)
split v_shr581 tmp_to_be_used v_add560 6;
(*   %or582 = or i32 %shl580, %shr581 *)
(* You may need to modify here *)
or uint32 v_or582 v_shl580 v_shr581;
(*   %shl583 = shl i32 %add560, 21 *)
shls discard_164 v_shl583 v_add560 21;
(*   %shr584 = lshr i32 %add560, 11 *)
(* You may need to modify here *)
split v_shr584 tmp_to_be_used v_add560 11;
(*   %or585 = or i32 %shl583, %shr584 *)
(* You may need to modify here *)
or uint32 v_or585 v_shl583 v_shr584;
(*   %xor586 = xor i32 %or582, %or585 *)
(* You may need to modify here *)
xor uint32 v_xor586 v_or582 v_or585;
(*   %shl587 = shl i32 %add560, 7 *)
shls discard_165 v_shl587 v_add560 7;
(*   %shr588 = lshr i32 %add560, 25 *)
(* You may need to modify here *)
split v_shr588 tmp_to_be_used v_add560 25;
(*   %or589 = or i32 %shl587, %shr588 *)
(* You may need to modify here *)
or uint32 v_or589 v_shl587 v_shr588;
(*   %xor590 = xor i32 %xor586, %or589 *)
(* You may need to modify here *)
xor uint32 v_xor590 v_xor586 v_or589;
(*   %and592 = and i32 %add560, %add504 *)
(* You may need to modify here *)
and uint32 v_and592 v_add560 v_add504;
(*   %neg593 = xor i32 %add560, -1 *)
(* You may need to modify here *)
xor uint32 v_neg593 v_add560 (0xFFFFFFFF)@uint32;
(*   %and594 = and i32 %add448, %neg593 *)
(* You may need to modify here *)
and uint32 v_and594 v_add448 v_neg593;
(*   %xor595 = or i32 %and592, %and594 *)
(* You may need to modify here *)
or uint32 v_xor595 v_and592 v_and594;
(*   %add591 = add i32 %or577, 607225278 *)
adds discard_166 v_add591 v_or577 (607225278)@uint32;
(*   %add596 = add i32 %add591, %add392 *)
adds discard_167 v_add596 v_add591 v_add392;
(*   %add597 = add i32 %add596, %xor595 *)
adds discard_168 v_add597 v_add596 v_xor595;
(*   %add598 = add i32 %add597, %xor590 *)
adds discard_169 v_add598 v_add597 v_xor590;
(*   %shl599 = shl i32 %add561, 30 *)
shls discard_170 v_shl599 v_add561 30;
(*   %shr600 = lshr i32 %add561, 2 *)
(* You may need to modify here *)
split v_shr600 tmp_to_be_used v_add561 2;
(*   %or601 = or i32 %shl599, %shr600 *)
(* You may need to modify here *)
or uint32 v_or601 v_shl599 v_shr600;
(*   %shl602 = shl i32 %add561, 19 *)
shls discard_171 v_shl602 v_add561 19;
(*   %shr603 = lshr i32 %add561, 13 *)
(* You may need to modify here *)
split v_shr603 tmp_to_be_used v_add561 13;
(*   %or604 = or i32 %shl602, %shr603 *)
(* You may need to modify here *)
or uint32 v_or604 v_shl602 v_shr603;
(*   %xor605 = xor i32 %or601, %or604 *)
(* You may need to modify here *)
xor uint32 v_xor605 v_or601 v_or604;
(*   %shl606 = shl i32 %add561, 10 *)
shls discard_172 v_shl606 v_add561 10;
(*   %shr607 = lshr i32 %add561, 22 *)
(* You may need to modify here *)
split v_shr607 tmp_to_be_used v_add561 22;
(*   %or608 = or i32 %shl606, %shr607 *)
(* You may need to modify here *)
or uint32 v_or608 v_shl606 v_shr607;
(*   %xor609 = xor i32 %xor605, %or608 *)
(* You may need to modify here *)
xor uint32 v_xor609 v_xor605 v_or608;
(*   %and610 = and i32 %add561, %add505 *)
(* You may need to modify here *)
and uint32 v_and610 v_add561 v_add505;
(*   %and611 = and i32 %add561, %add449 *)
(* You may need to modify here *)
and uint32 v_and611 v_add561 v_add449;
(*   %xor612 = xor i32 %and611, %and554 *)
(* You may need to modify here *)
xor uint32 v_xor612 v_and611 v_and554;
(*   %xor614 = xor i32 %xor612, %and610 *)
(* You may need to modify here *)
xor uint32 v_xor614 v_xor612 v_and610;
(*   %add615 = add i32 %xor609, %xor614 *)
adds discard_173 v_add615 v_xor609 v_xor614;
(*   %add616 = add i32 %add598, %add393 *)
adds discard_174 v_add616 v_add598 v_add393;
(*   %add617 = add i32 %add615, %add598 *)
adds discard_175 v_add617 v_add615 v_add598;
(*   %incdec.ptr620 = getelementptr inbounds i8, i8* %data.02557, i32 45 *)
(*   %53 = load i8, i8* %incdec.ptr575, align 1, !tbaa !8 *)
mov v53 data_02557_44;
(*   %conv621 = zext i8 %53 to i32 *)
cast v_conv621@uint32 v53@uint8;
(*   %shl622 = shl nuw i32 %conv621, 24 *)
shls discard_176 v_shl622 v_conv621 24;
(*   %incdec.ptr623 = getelementptr inbounds i8, i8* %data.02557, i32 46 *)
(*   %54 = load i8, i8* %incdec.ptr620, align 1, !tbaa !8 *)
mov v54 data_02557_45;
(*   %conv624 = zext i8 %54 to i32 *)
cast v_conv624@uint32 v54@uint8;
(*   %shl625 = shl nuw nsw i32 %conv624, 16 *)
shls discard_177 v_shl625 v_conv624 16;
(*   %or626 = or i32 %shl625, %shl622 *)
(* You may need to modify here *)
or uint32 v_or626 v_shl625 v_shl622;
(*   %incdec.ptr627 = getelementptr inbounds i8, i8* %data.02557, i32 47 *)
(*   %55 = load i8, i8* %incdec.ptr623, align 1, !tbaa !8 *)
mov v55 data_02557_46;
(*   %conv628 = zext i8 %55 to i32 *)
cast v_conv628@uint32 v55@uint8;
(*   %shl629 = shl nuw nsw i32 %conv628, 8 *)
shls discard_178 v_shl629 v_conv628 8;
(*   %or630 = or i32 %or626, %shl629 *)
(* You may need to modify here *)
or uint32 v_or630 v_or626 v_shl629;
(*   %incdec.ptr631 = getelementptr inbounds i8, i8* %data.02557, i32 48 *)
(*   %56 = load i8, i8* %incdec.ptr627, align 1, !tbaa !8 *)
mov v56 data_02557_47;
(*   %conv632 = zext i8 %56 to i32 *)
cast v_conv632@uint32 v56@uint8;
(*   %or633 = or i32 %or630, %conv632 *)
(* You may need to modify here *)
or uint32 v_or633 v_or630 v_conv632;
(*   store i32 %or633, i32* %arrayidx634, align 4, !tbaa !4 *)
mov arrayidx634_0 v_or633;
(*   %shl636 = shl i32 %add616, 26 *)
shls discard_179 v_shl636 v_add616 26;
(*   %shr637 = lshr i32 %add616, 6 *)
(* You may need to modify here *)
split v_shr637 tmp_to_be_used v_add616 6;
(*   %or638 = or i32 %shl636, %shr637 *)
(* You may need to modify here *)
or uint32 v_or638 v_shl636 v_shr637;
(*   %shl639 = shl i32 %add616, 21 *)
shls discard_180 v_shl639 v_add616 21;
(*   %shr640 = lshr i32 %add616, 11 *)
(* You may need to modify here *)
split v_shr640 tmp_to_be_used v_add616 11;
(*   %or641 = or i32 %shl639, %shr640 *)
(* You may need to modify here *)
or uint32 v_or641 v_shl639 v_shr640;
(*   %xor642 = xor i32 %or638, %or641 *)
(* You may need to modify here *)
xor uint32 v_xor642 v_or638 v_or641;
(*   %shl643 = shl i32 %add616, 7 *)
shls discard_181 v_shl643 v_add616 7;
(*   %shr644 = lshr i32 %add616, 25 *)
(* You may need to modify here *)
split v_shr644 tmp_to_be_used v_add616 25;
(*   %or645 = or i32 %shl643, %shr644 *)
(* You may need to modify here *)
or uint32 v_or645 v_shl643 v_shr644;
(*   %xor646 = xor i32 %xor642, %or645 *)
(* You may need to modify here *)
xor uint32 v_xor646 v_xor642 v_or645;
(*   %and648 = and i32 %add616, %add560 *)
(* You may need to modify here *)
and uint32 v_and648 v_add616 v_add560;
(*   %neg649 = xor i32 %add616, -1 *)
(* You may need to modify here *)
xor uint32 v_neg649 v_add616 (0xFFFFFFFF)@uint32;
(*   %and650 = and i32 %add504, %neg649 *)
(* You may need to modify here *)
and uint32 v_and650 v_add504 v_neg649;
(*   %xor651 = or i32 %and648, %and650 *)
(* You may need to modify here *)
or uint32 v_xor651 v_and648 v_and650;
(*   %add647 = add i32 %or633, 1426881987 *)
adds discard_182 v_add647 v_or633 (1426881987)@uint32;
(*   %add652 = add i32 %add647, %add448 *)
adds discard_183 v_add652 v_add647 v_add448;
(*   %add653 = add i32 %add652, %xor651 *)
adds discard_184 v_add653 v_add652 v_xor651;
(*   %add654 = add i32 %add653, %xor646 *)
adds discard_185 v_add654 v_add653 v_xor646;
(*   %shl655 = shl i32 %add617, 30 *)
shls discard_186 v_shl655 v_add617 30;
(*   %shr656 = lshr i32 %add617, 2 *)
(* You may need to modify here *)
split v_shr656 tmp_to_be_used v_add617 2;
(*   %or657 = or i32 %shl655, %shr656 *)
(* You may need to modify here *)
or uint32 v_or657 v_shl655 v_shr656;
(*   %shl658 = shl i32 %add617, 19 *)
shls discard_187 v_shl658 v_add617 19;
(*   %shr659 = lshr i32 %add617, 13 *)
(* You may need to modify here *)
split v_shr659 tmp_to_be_used v_add617 13;
(*   %or660 = or i32 %shl658, %shr659 *)
(* You may need to modify here *)
or uint32 v_or660 v_shl658 v_shr659;
(*   %xor661 = xor i32 %or657, %or660 *)
(* You may need to modify here *)
xor uint32 v_xor661 v_or657 v_or660;
(*   %shl662 = shl i32 %add617, 10 *)
shls discard_188 v_shl662 v_add617 10;
(*   %shr663 = lshr i32 %add617, 22 *)
(* You may need to modify here *)
split v_shr663 tmp_to_be_used v_add617 22;
(*   %or664 = or i32 %shl662, %shr663 *)
(* You may need to modify here *)
or uint32 v_or664 v_shl662 v_shr663;
(*   %xor665 = xor i32 %xor661, %or664 *)
(* You may need to modify here *)
xor uint32 v_xor665 v_xor661 v_or664;
(*   %and666 = and i32 %add617, %add561 *)
(* You may need to modify here *)
and uint32 v_and666 v_add617 v_add561;
(*   %and667 = and i32 %add617, %add505 *)
(* You may need to modify here *)
and uint32 v_and667 v_add617 v_add505;
(*   %xor668 = xor i32 %and667, %and610 *)
(* You may need to modify here *)
xor uint32 v_xor668 v_and667 v_and610;
(*   %xor670 = xor i32 %xor668, %and666 *)
(* You may need to modify here *)
xor uint32 v_xor670 v_xor668 v_and666;
(*   %add671 = add i32 %xor665, %xor670 *)
adds discard_189 v_add671 v_xor665 v_xor670;
(*   %add672 = add i32 %add654, %add449 *)
adds discard_190 v_add672 v_add654 v_add449;
(*   %add673 = add i32 %add671, %add654 *)
adds discard_191 v_add673 v_add671 v_add654;
(*   %incdec.ptr676 = getelementptr inbounds i8, i8* %data.02557, i32 49 *)
(*   %57 = load i8, i8* %incdec.ptr631, align 1, !tbaa !8 *)
mov v57 data_02557_48;
(*   %conv677 = zext i8 %57 to i32 *)
cast v_conv677@uint32 v57@uint8;
(*   %shl678 = shl nuw i32 %conv677, 24 *)
shls discard_192 v_shl678 v_conv677 24;
(*   %incdec.ptr679 = getelementptr inbounds i8, i8* %data.02557, i32 50 *)
(*   %58 = load i8, i8* %incdec.ptr676, align 1, !tbaa !8 *)
mov v58 data_02557_49;
(*   %conv680 = zext i8 %58 to i32 *)
cast v_conv680@uint32 v58@uint8;
(*   %shl681 = shl nuw nsw i32 %conv680, 16 *)
shls discard_193 v_shl681 v_conv680 16;
(*   %or682 = or i32 %shl681, %shl678 *)
(* You may need to modify here *)
or uint32 v_or682 v_shl681 v_shl678;
(*   %incdec.ptr683 = getelementptr inbounds i8, i8* %data.02557, i32 51 *)
(*   %59 = load i8, i8* %incdec.ptr679, align 1, !tbaa !8 *)
mov v59 data_02557_50;
(*   %conv684 = zext i8 %59 to i32 *)
cast v_conv684@uint32 v59@uint8;
(*   %shl685 = shl nuw nsw i32 %conv684, 8 *)
shls discard_194 v_shl685 v_conv684 8;
(*   %or686 = or i32 %or682, %shl685 *)
(* You may need to modify here *)
or uint32 v_or686 v_or682 v_shl685;
(*   %incdec.ptr687 = getelementptr inbounds i8, i8* %data.02557, i32 52 *)
(*   %60 = load i8, i8* %incdec.ptr683, align 1, !tbaa !8 *)
mov v60 data_02557_51;
(*   %conv688 = zext i8 %60 to i32 *)
cast v_conv688@uint32 v60@uint8;
(*   %or689 = or i32 %or686, %conv688 *)
(* You may need to modify here *)
or uint32 v_or689 v_or686 v_conv688;
(*   store i32 %or689, i32* %arrayidx690, align 4, !tbaa !4 *)
mov arrayidx690_0 v_or689;
(*   %shl692 = shl i32 %add672, 26 *)
shls discard_195 v_shl692 v_add672 26;
(*   %shr693 = lshr i32 %add672, 6 *)
(* You may need to modify here *)
split v_shr693 tmp_to_be_used v_add672 6;
(*   %or694 = or i32 %shl692, %shr693 *)
(* You may need to modify here *)
or uint32 v_or694 v_shl692 v_shr693;
(*   %shl695 = shl i32 %add672, 21 *)
shls discard_196 v_shl695 v_add672 21;
(*   %shr696 = lshr i32 %add672, 11 *)
(* You may need to modify here *)
split v_shr696 tmp_to_be_used v_add672 11;
(*   %or697 = or i32 %shl695, %shr696 *)
(* You may need to modify here *)
or uint32 v_or697 v_shl695 v_shr696;
(*   %xor698 = xor i32 %or694, %or697 *)
(* You may need to modify here *)
xor uint32 v_xor698 v_or694 v_or697;
(*   %shl699 = shl i32 %add672, 7 *)
shls discard_197 v_shl699 v_add672 7;
(*   %shr700 = lshr i32 %add672, 25 *)
(* You may need to modify here *)
split v_shr700 tmp_to_be_used v_add672 25;
(*   %or701 = or i32 %shl699, %shr700 *)
(* You may need to modify here *)
or uint32 v_or701 v_shl699 v_shr700;
(*   %xor702 = xor i32 %xor698, %or701 *)
(* You may need to modify here *)
xor uint32 v_xor702 v_xor698 v_or701;
(*   %and704 = and i32 %add672, %add616 *)
(* You may need to modify here *)
and uint32 v_and704 v_add672 v_add616;
(*   %neg705 = xor i32 %add672, -1 *)
(* You may need to modify here *)
xor uint32 v_neg705 v_add672 (0xFFFFFFFF)@uint32;
(*   %and706 = and i32 %add560, %neg705 *)
(* You may need to modify here *)
and uint32 v_and706 v_add560 v_neg705;
(*   %xor707 = or i32 %and704, %and706 *)
(* You may need to modify here *)
or uint32 v_xor707 v_and704 v_and706;
(*   %add703 = add i32 %or689, 1925078388 *)
adds discard_198 v_add703 v_or689 (1925078388)@uint32;
(*   %add708 = add i32 %add703, %add504 *)
adds discard_199 v_add708 v_add703 v_add504;
(*   %add709 = add i32 %add708, %xor707 *)
adds discard_200 v_add709 v_add708 v_xor707;
(*   %add710 = add i32 %add709, %xor702 *)
adds discard_201 v_add710 v_add709 v_xor702;
(*   %shl711 = shl i32 %add673, 30 *)
shls discard_202 v_shl711 v_add673 30;
(*   %shr712 = lshr i32 %add673, 2 *)
(* You may need to modify here *)
split v_shr712 tmp_to_be_used v_add673 2;
(*   %or713 = or i32 %shl711, %shr712 *)
(* You may need to modify here *)
or uint32 v_or713 v_shl711 v_shr712;
(*   %shl714 = shl i32 %add673, 19 *)
shls discard_203 v_shl714 v_add673 19;
(*   %shr715 = lshr i32 %add673, 13 *)
(* You may need to modify here *)
split v_shr715 tmp_to_be_used v_add673 13;
(*   %or716 = or i32 %shl714, %shr715 *)
(* You may need to modify here *)
or uint32 v_or716 v_shl714 v_shr715;
(*   %xor717 = xor i32 %or713, %or716 *)
(* You may need to modify here *)
xor uint32 v_xor717 v_or713 v_or716;
(*   %shl718 = shl i32 %add673, 10 *)
shls discard_204 v_shl718 v_add673 10;
(*   %shr719 = lshr i32 %add673, 22 *)
(* You may need to modify here *)
split v_shr719 tmp_to_be_used v_add673 22;
(*   %or720 = or i32 %shl718, %shr719 *)
(* You may need to modify here *)
or uint32 v_or720 v_shl718 v_shr719;
(*   %xor721 = xor i32 %xor717, %or720 *)
(* You may need to modify here *)
xor uint32 v_xor721 v_xor717 v_or720;
(*   %and722 = and i32 %add673, %add617 *)
(* You may need to modify here *)
and uint32 v_and722 v_add673 v_add617;
(*   %and723 = and i32 %add673, %add561 *)
(* You may need to modify here *)
and uint32 v_and723 v_add673 v_add561;
(*   %xor724 = xor i32 %and723, %and666 *)
(* You may need to modify here *)
xor uint32 v_xor724 v_and723 v_and666;
(*   %xor726 = xor i32 %xor724, %and722 *)
(* You may need to modify here *)
xor uint32 v_xor726 v_xor724 v_and722;
(*   %add727 = add i32 %xor721, %xor726 *)
adds discard_205 v_add727 v_xor721 v_xor726;
(*   %add728 = add i32 %add710, %add505 *)
adds discard_206 v_add728 v_add710 v_add505;
(*   %add729 = add i32 %add727, %add710 *)
adds discard_207 v_add729 v_add727 v_add710;
(*   %incdec.ptr732 = getelementptr inbounds i8, i8* %data.02557, i32 53 *)
(*   %61 = load i8, i8* %incdec.ptr687, align 1, !tbaa !8 *)
mov v61 data_02557_52;
(*   %conv733 = zext i8 %61 to i32 *)
cast v_conv733@uint32 v61@uint8;
(*   %shl734 = shl nuw i32 %conv733, 24 *)
shls discard_208 v_shl734 v_conv733 24;
(*   %incdec.ptr735 = getelementptr inbounds i8, i8* %data.02557, i32 54 *)
(*   %62 = load i8, i8* %incdec.ptr732, align 1, !tbaa !8 *)
mov v62 data_02557_53;
(*   %conv736 = zext i8 %62 to i32 *)
cast v_conv736@uint32 v62@uint8;
(*   %shl737 = shl nuw nsw i32 %conv736, 16 *)
shls discard_209 v_shl737 v_conv736 16;
(*   %or738 = or i32 %shl737, %shl734 *)
(* You may need to modify here *)
or uint32 v_or738 v_shl737 v_shl734;
(*   %incdec.ptr739 = getelementptr inbounds i8, i8* %data.02557, i32 55 *)
(*   %63 = load i8, i8* %incdec.ptr735, align 1, !tbaa !8 *)
mov v63 data_02557_54;
(*   %conv740 = zext i8 %63 to i32 *)
cast v_conv740@uint32 v63@uint8;
(*   %shl741 = shl nuw nsw i32 %conv740, 8 *)
shls discard_210 v_shl741 v_conv740 8;
(*   %or742 = or i32 %or738, %shl741 *)
(* You may need to modify here *)
or uint32 v_or742 v_or738 v_shl741;
(*   %incdec.ptr743 = getelementptr inbounds i8, i8* %data.02557, i32 56 *)
(*   %64 = load i8, i8* %incdec.ptr739, align 1, !tbaa !8 *)
mov v64 data_02557_55;
(*   %conv744 = zext i8 %64 to i32 *)
cast v_conv744@uint32 v64@uint8;
(*   %or745 = or i32 %or742, %conv744 *)
(* You may need to modify here *)
or uint32 v_or745 v_or742 v_conv744;
(*   store i32 %or745, i32* %arrayidx746, align 4, !tbaa !4 *)
mov arrayidx746_0 v_or745;
(*   %shl748 = shl i32 %add728, 26 *)
shls discard_211 v_shl748 v_add728 26;
(*   %shr749 = lshr i32 %add728, 6 *)
(* You may need to modify here *)
split v_shr749 tmp_to_be_used v_add728 6;
(*   %or750 = or i32 %shl748, %shr749 *)
(* You may need to modify here *)
or uint32 v_or750 v_shl748 v_shr749;
(*   %shl751 = shl i32 %add728, 21 *)
shls discard_212 v_shl751 v_add728 21;
(*   %shr752 = lshr i32 %add728, 11 *)
(* You may need to modify here *)
split v_shr752 tmp_to_be_used v_add728 11;
(*   %or753 = or i32 %shl751, %shr752 *)
(* You may need to modify here *)
or uint32 v_or753 v_shl751 v_shr752;
(*   %xor754 = xor i32 %or750, %or753 *)
(* You may need to modify here *)
xor uint32 v_xor754 v_or750 v_or753;
(*   %shl755 = shl i32 %add728, 7 *)
shls discard_213 v_shl755 v_add728 7;
(*   %shr756 = lshr i32 %add728, 25 *)
(* You may need to modify here *)
split v_shr756 tmp_to_be_used v_add728 25;
(*   %or757 = or i32 %shl755, %shr756 *)
(* You may need to modify here *)
or uint32 v_or757 v_shl755 v_shr756;
(*   %xor758 = xor i32 %xor754, %or757 *)
(* You may need to modify here *)
xor uint32 v_xor758 v_xor754 v_or757;
(*   %and760 = and i32 %add728, %add672 *)
(* You may need to modify here *)
and uint32 v_and760 v_add728 v_add672;
(*   %neg761 = xor i32 %add728, -1 *)
(* You may need to modify here *)
xor uint32 v_neg761 v_add728 (0xFFFFFFFF)@uint32;
(*   %and762 = and i32 %add616, %neg761 *)
(* You may need to modify here *)
and uint32 v_and762 v_add616 v_neg761;
(*   %xor763 = or i32 %and760, %and762 *)
(* You may need to modify here *)
or uint32 v_xor763 v_and760 v_and762;
(*   %add759 = add i32 %or745, -2132889090 *)
adds discard_214 v_add759 v_or745 (2162078206)@uint32;
(*   %add764 = add i32 %add759, %add560 *)
adds discard_215 v_add764 v_add759 v_add560;
(*   %add765 = add i32 %add764, %xor763 *)
adds discard_216 v_add765 v_add764 v_xor763;
(*   %add766 = add i32 %add765, %xor758 *)
adds discard_217 v_add766 v_add765 v_xor758;
(*   %shl767 = shl i32 %add729, 30 *)
shls discard_218 v_shl767 v_add729 30;
(*   %shr768 = lshr i32 %add729, 2 *)
(* You may need to modify here *)
split v_shr768 tmp_to_be_used v_add729 2;
(*   %or769 = or i32 %shl767, %shr768 *)
(* You may need to modify here *)
or uint32 v_or769 v_shl767 v_shr768;
(*   %shl770 = shl i32 %add729, 19 *)
shls discard_219 v_shl770 v_add729 19;
(*   %shr771 = lshr i32 %add729, 13 *)
(* You may need to modify here *)
split v_shr771 tmp_to_be_used v_add729 13;
(*   %or772 = or i32 %shl770, %shr771 *)
(* You may need to modify here *)
or uint32 v_or772 v_shl770 v_shr771;
(*   %xor773 = xor i32 %or769, %or772 *)
(* You may need to modify here *)
xor uint32 v_xor773 v_or769 v_or772;
(*   %shl774 = shl i32 %add729, 10 *)
shls discard_220 v_shl774 v_add729 10;
(*   %shr775 = lshr i32 %add729, 22 *)
(* You may need to modify here *)
split v_shr775 tmp_to_be_used v_add729 22;
(*   %or776 = or i32 %shl774, %shr775 *)
(* You may need to modify here *)
or uint32 v_or776 v_shl774 v_shr775;
(*   %xor777 = xor i32 %xor773, %or776 *)
(* You may need to modify here *)
xor uint32 v_xor777 v_xor773 v_or776;
(*   %and778 = and i32 %add729, %add673 *)
(* You may need to modify here *)
and uint32 v_and778 v_add729 v_add673;
(*   %and779 = and i32 %add729, %add617 *)
(* You may need to modify here *)
and uint32 v_and779 v_add729 v_add617;
(*   %xor780 = xor i32 %and779, %and722 *)
(* You may need to modify here *)
xor uint32 v_xor780 v_and779 v_and722;
(*   %xor782 = xor i32 %xor780, %and778 *)
(* You may need to modify here *)
xor uint32 v_xor782 v_xor780 v_and778;
(*   %add783 = add i32 %xor777, %xor782 *)
adds discard_221 v_add783 v_xor777 v_xor782;
(*   %add784 = add i32 %add766, %add561 *)
adds discard_222 v_add784 v_add766 v_add561;
(*   %add785 = add i32 %add783, %add766 *)
adds discard_223 v_add785 v_add783 v_add766;
(*   %incdec.ptr788 = getelementptr inbounds i8, i8* %data.02557, i32 57 *)
(*   %65 = load i8, i8* %incdec.ptr743, align 1, !tbaa !8 *)
mov v65 data_02557_56;
(*   %conv789 = zext i8 %65 to i32 *)
cast v_conv789@uint32 v65@uint8;
(*   %shl790 = shl nuw i32 %conv789, 24 *)
shls discard_224 v_shl790 v_conv789 24;
(*   %incdec.ptr791 = getelementptr inbounds i8, i8* %data.02557, i32 58 *)
(*   %66 = load i8, i8* %incdec.ptr788, align 1, !tbaa !8 *)
mov v66 data_02557_57;
(*   %conv792 = zext i8 %66 to i32 *)
cast v_conv792@uint32 v66@uint8;
(*   %shl793 = shl nuw nsw i32 %conv792, 16 *)
shls discard_225 v_shl793 v_conv792 16;
(*   %or794 = or i32 %shl793, %shl790 *)
(* You may need to modify here *)
or uint32 v_or794 v_shl793 v_shl790;
(*   %incdec.ptr795 = getelementptr inbounds i8, i8* %data.02557, i32 59 *)
(*   %67 = load i8, i8* %incdec.ptr791, align 1, !tbaa !8 *)
mov v67 data_02557_58;
(*   %conv796 = zext i8 %67 to i32 *)
cast v_conv796@uint32 v67@uint8;
(*   %shl797 = shl nuw nsw i32 %conv796, 8 *)
shls discard_226 v_shl797 v_conv796 8;
(*   %or798 = or i32 %or794, %shl797 *)
(* You may need to modify here *)
or uint32 v_or798 v_or794 v_shl797;
(*   %incdec.ptr799 = getelementptr inbounds i8, i8* %data.02557, i32 60 *)
(*   %68 = load i8, i8* %incdec.ptr795, align 1, !tbaa !8 *)
mov v68 data_02557_59;
(*   %conv800 = zext i8 %68 to i32 *)
cast v_conv800@uint32 v68@uint8;
(*   %or801 = or i32 %or798, %conv800 *)
(* You may need to modify here *)
or uint32 v_or801 v_or798 v_conv800;
(*   store i32 %or801, i32* %arrayidx802, align 4, !tbaa !4 *)
mov arrayidx802_0 v_or801;
(*   %shl804 = shl i32 %add784, 26 *)
shls discard_227 v_shl804 v_add784 26;
(*   %shr805 = lshr i32 %add784, 6 *)
(* You may need to modify here *)
split v_shr805 tmp_to_be_used v_add784 6;
(*   %or806 = or i32 %shl804, %shr805 *)
(* You may need to modify here *)
or uint32 v_or806 v_shl804 v_shr805;
(*   %shl807 = shl i32 %add784, 21 *)
shls discard_228 v_shl807 v_add784 21;
(*   %shr808 = lshr i32 %add784, 11 *)
(* You may need to modify here *)
split v_shr808 tmp_to_be_used v_add784 11;
(*   %or809 = or i32 %shl807, %shr808 *)
(* You may need to modify here *)
or uint32 v_or809 v_shl807 v_shr808;
(*   %xor810 = xor i32 %or806, %or809 *)
(* You may need to modify here *)
xor uint32 v_xor810 v_or806 v_or809;
(*   %shl811 = shl i32 %add784, 7 *)
shls discard_229 v_shl811 v_add784 7;
(*   %shr812 = lshr i32 %add784, 25 *)
(* You may need to modify here *)
split v_shr812 tmp_to_be_used v_add784 25;
(*   %or813 = or i32 %shl811, %shr812 *)
(* You may need to modify here *)
or uint32 v_or813 v_shl811 v_shr812;
(*   %xor814 = xor i32 %xor810, %or813 *)
(* You may need to modify here *)
xor uint32 v_xor814 v_xor810 v_or813;
(*   %and816 = and i32 %add784, %add728 *)
(* You may need to modify here *)
and uint32 v_and816 v_add784 v_add728;
(*   %neg817 = xor i32 %add784, -1 *)
(* You may need to modify here *)
xor uint32 v_neg817 v_add784 (0xFFFFFFFF)@uint32;
(*   %and818 = and i32 %add672, %neg817 *)
(* You may need to modify here *)
and uint32 v_and818 v_add672 v_neg817;
(*   %xor819 = or i32 %and816, %and818 *)
(* You may need to modify here *)
or uint32 v_xor819 v_and816 v_and818;
(*   %add815 = add i32 %or801, -1680079193 *)
adds discard_230 v_add815 v_or801 (2614888103)@uint32;
(*   %add820 = add i32 %add815, %add616 *)
adds discard_231 v_add820 v_add815 v_add616;
(*   %add821 = add i32 %add820, %xor819 *)
adds discard_232 v_add821 v_add820 v_xor819;
(*   %add822 = add i32 %add821, %xor814 *)
adds discard_233 v_add822 v_add821 v_xor814;
(*   %shl823 = shl i32 %add785, 30 *)
shls discard_234 v_shl823 v_add785 30;
(*   %shr824 = lshr i32 %add785, 2 *)
(* You may need to modify here *)
split v_shr824 tmp_to_be_used v_add785 2;
(*   %or825 = or i32 %shl823, %shr824 *)
(* You may need to modify here *)
or uint32 v_or825 v_shl823 v_shr824;
(*   %shl826 = shl i32 %add785, 19 *)
shls discard_235 v_shl826 v_add785 19;
(*   %shr827 = lshr i32 %add785, 13 *)
(* You may need to modify here *)
split v_shr827 tmp_to_be_used v_add785 13;
(*   %or828 = or i32 %shl826, %shr827 *)
(* You may need to modify here *)
or uint32 v_or828 v_shl826 v_shr827;
(*   %xor829 = xor i32 %or825, %or828 *)
(* You may need to modify here *)
xor uint32 v_xor829 v_or825 v_or828;
(*   %shl830 = shl i32 %add785, 10 *)
shls discard_236 v_shl830 v_add785 10;
(*   %shr831 = lshr i32 %add785, 22 *)
(* You may need to modify here *)
split v_shr831 tmp_to_be_used v_add785 22;
(*   %or832 = or i32 %shl830, %shr831 *)
(* You may need to modify here *)
or uint32 v_or832 v_shl830 v_shr831;
(*   %xor833 = xor i32 %xor829, %or832 *)
(* You may need to modify here *)
xor uint32 v_xor833 v_xor829 v_or832;
(*   %and834 = and i32 %add785, %add729 *)
(* You may need to modify here *)
and uint32 v_and834 v_add785 v_add729;
(*   %and835 = and i32 %add785, %add673 *)
(* You may need to modify here *)
and uint32 v_and835 v_add785 v_add673;
(*   %xor836 = xor i32 %and835, %and778 *)
(* You may need to modify here *)
xor uint32 v_xor836 v_and835 v_and778;
(*   %xor838 = xor i32 %xor836, %and834 *)
(* You may need to modify here *)
xor uint32 v_xor838 v_xor836 v_and834;
(*   %add839 = add i32 %xor833, %xor838 *)
adds discard_237 v_add839 v_xor833 v_xor838;
(*   %add840 = add i32 %add822, %add617 *)
adds discard_238 v_add840 v_add822 v_add617;
(*   %add841 = add i32 %add839, %add822 *)
adds discard_239 v_add841 v_add839 v_add822;
(*   %incdec.ptr844 = getelementptr inbounds i8, i8* %data.02557, i32 61 *)
(*   %69 = load i8, i8* %incdec.ptr799, align 1, !tbaa !8 *)
mov v69 data_02557_60;
(*   %conv845 = zext i8 %69 to i32 *)
cast v_conv845@uint32 v69@uint8;
(*   %shl846 = shl nuw i32 %conv845, 24 *)
shls discard_240 v_shl846 v_conv845 24;
(*   %incdec.ptr847 = getelementptr inbounds i8, i8* %data.02557, i32 62 *)
(*   %70 = load i8, i8* %incdec.ptr844, align 1, !tbaa !8 *)
mov v70 data_02557_61;
(*   %conv848 = zext i8 %70 to i32 *)
cast v_conv848@uint32 v70@uint8;
(*   %shl849 = shl nuw nsw i32 %conv848, 16 *)
shls discard_241 v_shl849 v_conv848 16;
(*   %or850 = or i32 %shl849, %shl846 *)
(* You may need to modify here *)
or uint32 v_or850 v_shl849 v_shl846;
(*   %incdec.ptr851 = getelementptr inbounds i8, i8* %data.02557, i32 63 *)
(*   %71 = load i8, i8* %incdec.ptr847, align 1, !tbaa !8 *)
mov v71 data_02557_62;
(*   %conv852 = zext i8 %71 to i32 *)
cast v_conv852@uint32 v71@uint8;
(*   %shl853 = shl nuw nsw i32 %conv852, 8 *)
shls discard_242 v_shl853 v_conv852 8;
(*   %or854 = or i32 %or850, %shl853 *)
(* You may need to modify here *)
or uint32 v_or854 v_or850 v_shl853;
(*   %72 = load i8, i8* %incdec.ptr851, align 1, !tbaa !8 *)
mov v72 data_02557_63;
(*   %conv856 = zext i8 %72 to i32 *)
cast v_conv856@uint32 v72@uint8;
(*   %or857 = or i32 %or854, %conv856 *)
(* You may need to modify here *)
or uint32 v_or857 v_or854 v_conv856;
(*   store i32 %or857, i32* %arrayidx858, align 4, !tbaa !4 *)
mov arrayidx858_0 v_or857;
(*   %shl860 = shl i32 %add840, 26 *)
shls discard_243 v_shl860 v_add840 26;
(*   %shr861 = lshr i32 %add840, 6 *)
(* You may need to modify here *)
split v_shr861 tmp_to_be_used v_add840 6;
(*   %or862 = or i32 %shl860, %shr861 *)
(* You may need to modify here *)
or uint32 v_or862 v_shl860 v_shr861;
(*   %shl863 = shl i32 %add840, 21 *)
shls discard_244 v_shl863 v_add840 21;
(*   %shr864 = lshr i32 %add840, 11 *)
(* You may need to modify here *)
split v_shr864 tmp_to_be_used v_add840 11;
(*   %or865 = or i32 %shl863, %shr864 *)
(* You may need to modify here *)
or uint32 v_or865 v_shl863 v_shr864;
(*   %xor866 = xor i32 %or862, %or865 *)
(* You may need to modify here *)
xor uint32 v_xor866 v_or862 v_or865;
(*   %shl867 = shl i32 %add840, 7 *)
shls discard_245 v_shl867 v_add840 7;
(*   %shr868 = lshr i32 %add840, 25 *)
(* You may need to modify here *)
split v_shr868 tmp_to_be_used v_add840 25;
(*   %or869 = or i32 %shl867, %shr868 *)
(* You may need to modify here *)
or uint32 v_or869 v_shl867 v_shr868;
(*   %xor870 = xor i32 %xor866, %or869 *)
(* You may need to modify here *)
xor uint32 v_xor870 v_xor866 v_or869;
(*   %and872 = and i32 %add840, %add784 *)
(* You may need to modify here *)
and uint32 v_and872 v_add840 v_add784;
(*   %neg873 = xor i32 %add840, -1 *)
(* You may need to modify here *)
xor uint32 v_neg873 v_add840 (0xFFFFFFFF)@uint32;
(*   %and874 = and i32 %add728, %neg873 *)
(* You may need to modify here *)
and uint32 v_and874 v_add728 v_neg873;
(*   %xor875 = or i32 %and872, %and874 *)
(* You may need to modify here *)
or uint32 v_xor875 v_and872 v_and874;
(*   %add871 = add i32 %or857, -1046744716 *)
adds discard_246 v_add871 v_or857 (3248222580)@uint32;
(*   %add876 = add i32 %add871, %add672 *)
adds discard_247 v_add876 v_add871 v_add672;
(*   %add877 = add i32 %add876, %xor875 *)
adds discard_248 v_add877 v_add876 v_xor875;
(*   %add878 = add i32 %add877, %xor870 *)
adds discard_249 v_add878 v_add877 v_xor870;
(*   %shl879 = shl i32 %add841, 30 *)
shls discard_250 v_shl879 v_add841 30;
(*   %shr880 = lshr i32 %add841, 2 *)
(* You may need to modify here *)
split v_shr880 tmp_to_be_used v_add841 2;
(*   %or881 = or i32 %shl879, %shr880 *)
(* You may need to modify here *)
or uint32 v_or881 v_shl879 v_shr880;
(*   %shl882 = shl i32 %add841, 19 *)
shls discard_251 v_shl882 v_add841 19;
(*   %shr883 = lshr i32 %add841, 13 *)
(* You may need to modify here *)
split v_shr883 tmp_to_be_used v_add841 13;
(*   %or884 = or i32 %shl882, %shr883 *)
(* You may need to modify here *)
or uint32 v_or884 v_shl882 v_shr883;
(*   %xor885 = xor i32 %or881, %or884 *)
(* You may need to modify here *)
xor uint32 v_xor885 v_or881 v_or884;
(*   %shl886 = shl i32 %add841, 10 *)
shls discard_252 v_shl886 v_add841 10;
(*   %shr887 = lshr i32 %add841, 22 *)
(* You may need to modify here *)
split v_shr887 tmp_to_be_used v_add841 22;
(*   %or888 = or i32 %shl886, %shr887 *)
(* You may need to modify here *)
or uint32 v_or888 v_shl886 v_shr887;
(*   %xor889 = xor i32 %xor885, %or888 *)
(* You may need to modify here *)
xor uint32 v_xor889 v_xor885 v_or888;
(*   %and8912544 = xor i32 %add785, %add729 *)
(* You may need to modify here *)
xor uint32 v_and8912544 v_add785 v_add729;
(*   %xor892 = and i32 %add841, %and8912544 *)
(* You may need to modify here *)
and uint32 v_xor892 v_add841 v_and8912544;
(*   %xor894 = xor i32 %xor892, %and834 *)
(* You may need to modify here *)
xor uint32 v_xor894 v_xor892 v_and834;
(*   %add895 = add i32 %xor889, %xor894 *)
adds discard_253 v_add895 v_xor889 v_xor894;
(*   %add896 = add i32 %add878, %add673 *)
adds discard_254 v_add896 v_add878 v_add673;
(*   %add897 = add i32 %add895, %add878 *)
adds discard_255 v_add897 v_add895 v_add878;
(*   %73 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v73 arrayidx74_0;
(*   %shl906 = shl i32 %73, 25 *)
shls discard_256 v_shl906 v73 25;
(*   %shr907 = lshr i32 %73, 7 *)
(* You may need to modify here *)
split v_shr907 tmp_to_be_used v73 7;
(*   %or908 = or i32 %shl906, %shr907 *)
(* You may need to modify here *)
or uint32 v_or908 v_shl906 v_shr907;
(*   %shl909 = shl i32 %73, 14 *)
shls discard_257 v_shl909 v73 14;
(*   %shr910 = lshr i32 %73, 18 *)
(* You may need to modify here *)
split v_shr910 tmp_to_be_used v73 18;
(*   %or911 = or i32 %shl909, %shr910 *)
(* You may need to modify here *)
or uint32 v_or911 v_shl909 v_shr910;
(*   %shr913 = lshr i32 %73, 3 *)
(* You may need to modify here *)
split v_shr913 tmp_to_be_used v73 3;
(*   %xor912 = xor i32 %or911, %shr913 *)
(* You may need to modify here *)
xor uint32 v_xor912 v_or911 v_shr913;
(*   %xor914 = xor i32 %xor912, %or908 *)
(* You may need to modify here *)
xor uint32 v_xor914 v_xor912 v_or908;
(*   %74 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v74 arrayidx802_0;
(*   %shl919 = shl i32 %74, 15 *)
shls discard_258 v_shl919 v74 15;
(*   %shr920 = lshr i32 %74, 17 *)
(* You may need to modify here *)
split v_shr920 tmp_to_be_used v74 17;
(*   %or921 = or i32 %shl919, %shr920 *)
(* You may need to modify here *)
or uint32 v_or921 v_shl919 v_shr920;
(*   %shl922 = shl i32 %74, 13 *)
shls discard_259 v_shl922 v74 13;
(*   %shr923 = lshr i32 %74, 19 *)
(* You may need to modify here *)
split v_shr923 tmp_to_be_used v74 19;
(*   %or924 = or i32 %shl922, %shr923 *)
(* You may need to modify here *)
or uint32 v_or924 v_shl922 v_shr923;
(*   %shr926 = lshr i32 %74, 10 *)
(* You may need to modify here *)
split v_shr926 tmp_to_be_used v74 10;
(*   %xor925 = xor i32 %or924, %shr926 *)
(* You may need to modify here *)
xor uint32 v_xor925 v_or924 v_shr926;
(*   %xor927 = xor i32 %xor925, %or921 *)
(* You may need to modify here *)
xor uint32 v_xor927 v_xor925 v_or921;
(*   %75 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v75 arrayidx522_0;
(*   %76 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v76 arrayidx26_0;
(*   %add928 = add i32 %76, %75 *)
adds discard_260 v_add928 v76 v75;
(*   %add933 = add i32 %add928, %xor914 *)
adds discard_261 v_add933 v_add928 v_xor914;
(*   %add937 = add i32 %add933, %xor927 *)
adds discard_262 v_add937 v_add933 v_xor927;
(*   store i32 %add937, i32* %arrayidx26, align 4, !tbaa !4 *)
mov arrayidx26_0 v_add937;
(*   %shl939 = shl i32 %add896, 26 *)
shls discard_263 v_shl939 v_add896 26;
(*   %shr940 = lshr i32 %add896, 6 *)
(* You may need to modify here *)
split v_shr940 tmp_to_be_used v_add896 6;
(*   %or941 = or i32 %shl939, %shr940 *)
(* You may need to modify here *)
or uint32 v_or941 v_shl939 v_shr940;
(*   %shl942 = shl i32 %add896, 21 *)
shls discard_264 v_shl942 v_add896 21;
(*   %shr943 = lshr i32 %add896, 11 *)
(* You may need to modify here *)
split v_shr943 tmp_to_be_used v_add896 11;
(*   %or944 = or i32 %shl942, %shr943 *)
(* You may need to modify here *)
or uint32 v_or944 v_shl942 v_shr943;
(*   %xor945 = xor i32 %or941, %or944 *)
(* You may need to modify here *)
xor uint32 v_xor945 v_or941 v_or944;
(*   %shl946 = shl i32 %add896, 7 *)
shls discard_265 v_shl946 v_add896 7;
(*   %shr947 = lshr i32 %add896, 25 *)
(* You may need to modify here *)
split v_shr947 tmp_to_be_used v_add896 25;
(*   %or948 = or i32 %shl946, %shr947 *)
(* You may need to modify here *)
or uint32 v_or948 v_shl946 v_shr947;
(*   %xor949 = xor i32 %xor945, %or948 *)
(* You may need to modify here *)
xor uint32 v_xor949 v_xor945 v_or948;
(*   %add950 = add i32 %xor949, %add728 *)
adds discard_266 v_add950 v_xor949 v_add728;
(*   %and951 = and i32 %add840, %add896 *)
(* You may need to modify here *)
and uint32 v_and951 v_add840 v_add896;
(*   %neg952 = xor i32 %add896, -1 *)
(* You may need to modify here *)
xor uint32 v_neg952 v_add896 (0xFFFFFFFF)@uint32;
(*   %and953 = and i32 %add784, %neg952 *)
(* You may need to modify here *)
and uint32 v_and953 v_add784 v_neg952;
(*   %xor954 = or i32 %and953, %and951 *)
(* You may need to modify here *)
or uint32 v_xor954 v_and953 v_and951;
(*   %add955 = add i32 %add950, %xor954 *)
adds discard_267 v_add955 v_add950 v_xor954;
(*   %add958 = add i32 %add955, -459576895 *)
adds discard_268 v_add958 v_add955 (3835390401)@uint32;
(*   %add959 = add i32 %add958, %add937 *)
adds discard_269 v_add959 v_add958 v_add937;
(*   %shl960 = shl i32 %add897, 30 *)
shls discard_270 v_shl960 v_add897 30;
(*   %shr961 = lshr i32 %add897, 2 *)
(* You may need to modify here *)
split v_shr961 tmp_to_be_used v_add897 2;
(*   %or962 = or i32 %shl960, %shr961 *)
(* You may need to modify here *)
or uint32 v_or962 v_shl960 v_shr961;
(*   %shl963 = shl i32 %add897, 19 *)
shls discard_271 v_shl963 v_add897 19;
(*   %shr964 = lshr i32 %add897, 13 *)
(* You may need to modify here *)
split v_shr964 tmp_to_be_used v_add897 13;
(*   %or965 = or i32 %shl963, %shr964 *)
(* You may need to modify here *)
or uint32 v_or965 v_shl963 v_shr964;
(*   %xor966 = xor i32 %or962, %or965 *)
(* You may need to modify here *)
xor uint32 v_xor966 v_or962 v_or965;
(*   %shl967 = shl i32 %add897, 10 *)
shls discard_272 v_shl967 v_add897 10;
(*   %shr968 = lshr i32 %add897, 22 *)
(* You may need to modify here *)
split v_shr968 tmp_to_be_used v_add897 22;
(*   %or969 = or i32 %shl967, %shr968 *)
(* You may need to modify here *)
or uint32 v_or969 v_shl967 v_shr968;
(*   %xor970 = xor i32 %xor966, %or969 *)
(* You may need to modify here *)
xor uint32 v_xor970 v_xor966 v_or969;
(*   %and971 = and i32 %add897, %add841 *)
(* You may need to modify here *)
and uint32 v_and971 v_add897 v_add841;
(*   %and9722559 = xor i32 %add897, %add841 *)
(* You may need to modify here *)
xor uint32 v_and9722559 v_add897 v_add841;
(*   %xor973 = and i32 %and9722559, %add785 *)
(* You may need to modify here *)
and uint32 v_xor973 v_and9722559 v_add785;
(*   %xor975 = xor i32 %xor973, %and971 *)
(* You may need to modify here *)
xor uint32 v_xor975 v_xor973 v_and971;
(*   %add976 = add i32 %xor970, %xor975 *)
adds discard_273 v_add976 v_xor970 v_xor975;
(*   %add977 = add i32 %add959, %add729 *)
adds discard_274 v_add977 v_add959 v_add729;
(*   %add978 = add i32 %add976, %add959 *)
adds discard_275 v_add978 v_add976 v_add959;
(*   %77 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v77 arrayidx130_0;
(*   %shl988 = shl i32 %77, 25 *)
shls discard_276 v_shl988 v77 25;
(*   %shr989 = lshr i32 %77, 7 *)
(* You may need to modify here *)
split v_shr989 tmp_to_be_used v77 7;
(*   %or990 = or i32 %shl988, %shr989 *)
(* You may need to modify here *)
or uint32 v_or990 v_shl988 v_shr989;
(*   %shl991 = shl i32 %77, 14 *)
shls discard_277 v_shl991 v77 14;
(*   %shr992 = lshr i32 %77, 18 *)
(* You may need to modify here *)
split v_shr992 tmp_to_be_used v77 18;
(*   %or993 = or i32 %shl991, %shr992 *)
(* You may need to modify here *)
or uint32 v_or993 v_shl991 v_shr992;
(*   %shr995 = lshr i32 %77, 3 *)
(* You may need to modify here *)
split v_shr995 tmp_to_be_used v77 3;
(*   %xor994 = xor i32 %or993, %shr995 *)
(* You may need to modify here *)
xor uint32 v_xor994 v_or993 v_shr995;
(*   %xor996 = xor i32 %xor994, %or990 *)
(* You may need to modify here *)
xor uint32 v_xor996 v_xor994 v_or990;
(*   %78 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v78 arrayidx858_0;
(*   %shl1001 = shl i32 %78, 15 *)
shls discard_278 v_shl1001 v78 15;
(*   %shr1002 = lshr i32 %78, 17 *)
(* You may need to modify here *)
split v_shr1002 tmp_to_be_used v78 17;
(*   %or1003 = or i32 %shl1001, %shr1002 *)
(* You may need to modify here *)
or uint32 v_or1003 v_shl1001 v_shr1002;
(*   %shl1004 = shl i32 %78, 13 *)
shls discard_279 v_shl1004 v78 13;
(*   %shr1005 = lshr i32 %78, 19 *)
(* You may need to modify here *)
split v_shr1005 tmp_to_be_used v78 19;
(*   %or1006 = or i32 %shl1004, %shr1005 *)
(* You may need to modify here *)
or uint32 v_or1006 v_shl1004 v_shr1005;
(*   %shr1008 = lshr i32 %78, 10 *)
(* You may need to modify here *)
split v_shr1008 tmp_to_be_used v78 10;
(*   %xor1007 = xor i32 %or1006, %shr1008 *)
(* You may need to modify here *)
xor uint32 v_xor1007 v_or1006 v_shr1008;
(*   %xor1009 = xor i32 %xor1007, %or1003 *)
(* You may need to modify here *)
xor uint32 v_xor1009 v_xor1007 v_or1003;
(*   %79 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v79 arrayidx578_0;
(*   %add1010 = add i32 %79, %73 *)
adds discard_280 v_add1010 v79 v73;
(*   %add1015 = add i32 %add1010, %xor996 *)
adds discard_281 v_add1015 v_add1010 v_xor996;
(*   %add1019 = add i32 %add1015, %xor1009 *)
adds discard_282 v_add1019 v_add1015 v_xor1009;
(*   store i32 %add1019, i32* %arrayidx74, align 4, !tbaa !4 *)
mov arrayidx74_0 v_add1019;
(*   %shl1021 = shl i32 %add977, 26 *)
shls discard_283 v_shl1021 v_add977 26;
(*   %shr1022 = lshr i32 %add977, 6 *)
(* You may need to modify here *)
split v_shr1022 tmp_to_be_used v_add977 6;
(*   %or1023 = or i32 %shl1021, %shr1022 *)
(* You may need to modify here *)
or uint32 v_or1023 v_shl1021 v_shr1022;
(*   %shl1024 = shl i32 %add977, 21 *)
shls discard_284 v_shl1024 v_add977 21;
(*   %shr1025 = lshr i32 %add977, 11 *)
(* You may need to modify here *)
split v_shr1025 tmp_to_be_used v_add977 11;
(*   %or1026 = or i32 %shl1024, %shr1025 *)
(* You may need to modify here *)
or uint32 v_or1026 v_shl1024 v_shr1025;
(*   %xor1027 = xor i32 %or1023, %or1026 *)
(* You may need to modify here *)
xor uint32 v_xor1027 v_or1023 v_or1026;
(*   %shl1028 = shl i32 %add977, 7 *)
shls discard_285 v_shl1028 v_add977 7;
(*   %shr1029 = lshr i32 %add977, 25 *)
(* You may need to modify here *)
split v_shr1029 tmp_to_be_used v_add977 25;
(*   %or1030 = or i32 %shl1028, %shr1029 *)
(* You may need to modify here *)
or uint32 v_or1030 v_shl1028 v_shr1029;
(*   %xor1031 = xor i32 %xor1027, %or1030 *)
(* You may need to modify here *)
xor uint32 v_xor1031 v_xor1027 v_or1030;
(*   %and1033 = and i32 %add977, %add896 *)
(* You may need to modify here *)
and uint32 v_and1033 v_add977 v_add896;
(*   %neg1034 = xor i32 %add977, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1034 v_add977 (0xFFFFFFFF)@uint32;
(*   %and1035 = and i32 %add840, %neg1034 *)
(* You may need to modify here *)
and uint32 v_and1035 v_add840 v_neg1034;
(*   %xor1036 = or i32 %and1033, %and1035 *)
(* You may need to modify here *)
or uint32 v_xor1036 v_and1033 v_and1035;
(*   %add1032 = add i32 %add784, -272742522 *)
adds discard_286 v_add1032 v_add784 (4022224774)@uint32;
(*   %add1037 = add i32 %add1032, %xor1036 *)
adds discard_287 v_add1037 v_add1032 v_xor1036;
(*   %add1040 = add i32 %add1037, %xor1031 *)
adds discard_288 v_add1040 v_add1037 v_xor1031;
(*   %add1041 = add i32 %add1040, %add1019 *)
adds discard_289 v_add1041 v_add1040 v_add1019;
(*   %shl1042 = shl i32 %add978, 30 *)
shls discard_290 v_shl1042 v_add978 30;
(*   %shr1043 = lshr i32 %add978, 2 *)
(* You may need to modify here *)
split v_shr1043 tmp_to_be_used v_add978 2;
(*   %or1044 = or i32 %shl1042, %shr1043 *)
(* You may need to modify here *)
or uint32 v_or1044 v_shl1042 v_shr1043;
(*   %shl1045 = shl i32 %add978, 19 *)
shls discard_291 v_shl1045 v_add978 19;
(*   %shr1046 = lshr i32 %add978, 13 *)
(* You may need to modify here *)
split v_shr1046 tmp_to_be_used v_add978 13;
(*   %or1047 = or i32 %shl1045, %shr1046 *)
(* You may need to modify here *)
or uint32 v_or1047 v_shl1045 v_shr1046;
(*   %xor1048 = xor i32 %or1044, %or1047 *)
(* You may need to modify here *)
xor uint32 v_xor1048 v_or1044 v_or1047;
(*   %shl1049 = shl i32 %add978, 10 *)
shls discard_292 v_shl1049 v_add978 10;
(*   %shr1050 = lshr i32 %add978, 22 *)
(* You may need to modify here *)
split v_shr1050 tmp_to_be_used v_add978 22;
(*   %or1051 = or i32 %shl1049, %shr1050 *)
(* You may need to modify here *)
or uint32 v_or1051 v_shl1049 v_shr1050;
(*   %xor1052 = xor i32 %xor1048, %or1051 *)
(* You may need to modify here *)
xor uint32 v_xor1052 v_xor1048 v_or1051;
(*   %and1053 = and i32 %add978, %add897 *)
(* You may need to modify here *)
and uint32 v_and1053 v_add978 v_add897;
(*   %and1054 = and i32 %add978, %add841 *)
(* You may need to modify here *)
and uint32 v_and1054 v_add978 v_add841;
(*   %xor1055 = xor i32 %and1054, %and971 *)
(* You may need to modify here *)
xor uint32 v_xor1055 v_and1054 v_and971;
(*   %xor1057 = xor i32 %xor1055, %and1053 *)
(* You may need to modify here *)
xor uint32 v_xor1057 v_xor1055 v_and1053;
(*   %add1058 = add i32 %xor1052, %xor1057 *)
adds discard_293 v_add1058 v_xor1052 v_xor1057;
(*   %add1059 = add i32 %add1041, %add785 *)
adds discard_294 v_add1059 v_add1041 v_add785;
(*   %add1060 = add i32 %add1058, %add1041 *)
adds discard_295 v_add1060 v_add1058 v_add1041;
(*   %80 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v80 arrayidx186_0;
(*   %shl1070 = shl i32 %80, 25 *)
shls discard_296 v_shl1070 v80 25;
(*   %shr1071 = lshr i32 %80, 7 *)
(* You may need to modify here *)
split v_shr1071 tmp_to_be_used v80 7;
(*   %or1072 = or i32 %shl1070, %shr1071 *)
(* You may need to modify here *)
or uint32 v_or1072 v_shl1070 v_shr1071;
(*   %shl1073 = shl i32 %80, 14 *)
shls discard_297 v_shl1073 v80 14;
(*   %shr1074 = lshr i32 %80, 18 *)
(* You may need to modify here *)
split v_shr1074 tmp_to_be_used v80 18;
(*   %or1075 = or i32 %shl1073, %shr1074 *)
(* You may need to modify here *)
or uint32 v_or1075 v_shl1073 v_shr1074;
(*   %shr1077 = lshr i32 %80, 3 *)
(* You may need to modify here *)
split v_shr1077 tmp_to_be_used v80 3;
(*   %xor1076 = xor i32 %or1075, %shr1077 *)
(* You may need to modify here *)
xor uint32 v_xor1076 v_or1075 v_shr1077;
(*   %xor1078 = xor i32 %xor1076, %or1072 *)
(* You may need to modify here *)
xor uint32 v_xor1078 v_xor1076 v_or1072;
(*   %81 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v81 arrayidx26_0;
(*   %shl1083 = shl i32 %81, 15 *)
shls discard_298 v_shl1083 v81 15;
(*   %shr1084 = lshr i32 %81, 17 *)
(* You may need to modify here *)
split v_shr1084 tmp_to_be_used v81 17;
(*   %or1085 = or i32 %shl1083, %shr1084 *)
(* You may need to modify here *)
or uint32 v_or1085 v_shl1083 v_shr1084;
(*   %shl1086 = shl i32 %81, 13 *)
shls discard_299 v_shl1086 v81 13;
(*   %shr1087 = lshr i32 %81, 19 *)
(* You may need to modify here *)
split v_shr1087 tmp_to_be_used v81 19;
(*   %or1088 = or i32 %shl1086, %shr1087 *)
(* You may need to modify here *)
or uint32 v_or1088 v_shl1086 v_shr1087;
(*   %shr1090 = lshr i32 %81, 10 *)
(* You may need to modify here *)
split v_shr1090 tmp_to_be_used v81 10;
(*   %xor1089 = xor i32 %or1088, %shr1090 *)
(* You may need to modify here *)
xor uint32 v_xor1089 v_or1088 v_shr1090;
(*   %xor1091 = xor i32 %xor1089, %or1085 *)
(* You may need to modify here *)
xor uint32 v_xor1091 v_xor1089 v_or1085;
(*   %82 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v82 arrayidx634_0;
(*   %add1092 = add i32 %77, %82 *)
adds discard_300 v_add1092 v77 v82;
(*   %add1097 = add i32 %add1092, %xor1078 *)
adds discard_301 v_add1097 v_add1092 v_xor1078;
(*   %add1101 = add i32 %add1097, %xor1091 *)
adds discard_302 v_add1101 v_add1097 v_xor1091;
(*   store i32 %add1101, i32* %arrayidx130, align 4, !tbaa !4 *)
mov arrayidx130_0 v_add1101;
(*   %shl1103 = shl i32 %add1059, 26 *)
shls discard_303 v_shl1103 v_add1059 26;
(*   %shr1104 = lshr i32 %add1059, 6 *)
(* You may need to modify here *)
split v_shr1104 tmp_to_be_used v_add1059 6;
(*   %or1105 = or i32 %shl1103, %shr1104 *)
(* You may need to modify here *)
or uint32 v_or1105 v_shl1103 v_shr1104;
(*   %shl1106 = shl i32 %add1059, 21 *)
shls discard_304 v_shl1106 v_add1059 21;
(*   %shr1107 = lshr i32 %add1059, 11 *)
(* You may need to modify here *)
split v_shr1107 tmp_to_be_used v_add1059 11;
(*   %or1108 = or i32 %shl1106, %shr1107 *)
(* You may need to modify here *)
or uint32 v_or1108 v_shl1106 v_shr1107;
(*   %xor1109 = xor i32 %or1105, %or1108 *)
(* You may need to modify here *)
xor uint32 v_xor1109 v_or1105 v_or1108;
(*   %shl1110 = shl i32 %add1059, 7 *)
shls discard_305 v_shl1110 v_add1059 7;
(*   %shr1111 = lshr i32 %add1059, 25 *)
(* You may need to modify here *)
split v_shr1111 tmp_to_be_used v_add1059 25;
(*   %or1112 = or i32 %shl1110, %shr1111 *)
(* You may need to modify here *)
or uint32 v_or1112 v_shl1110 v_shr1111;
(*   %xor1113 = xor i32 %xor1109, %or1112 *)
(* You may need to modify here *)
xor uint32 v_xor1113 v_xor1109 v_or1112;
(*   %and1115 = and i32 %add1059, %add977 *)
(* You may need to modify here *)
and uint32 v_and1115 v_add1059 v_add977;
(*   %neg1116 = xor i32 %add1059, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1116 v_add1059 (0xFFFFFFFF)@uint32;
(*   %and1117 = and i32 %add896, %neg1116 *)
(* You may need to modify here *)
and uint32 v_and1117 v_add896 v_neg1116;
(*   %xor1118 = or i32 %and1115, %and1117 *)
(* You may need to modify here *)
or uint32 v_xor1118 v_and1115 v_and1117;
(*   %add1114 = add i32 %add840, 264347078 *)
adds discard_306 v_add1114 v_add840 (264347078)@uint32;
(*   %add1119 = add i32 %add1114, %add1101 *)
adds discard_307 v_add1119 v_add1114 v_add1101;
(*   %add1122 = add i32 %add1119, %xor1118 *)
adds discard_308 v_add1122 v_add1119 v_xor1118;
(*   %add1123 = add i32 %add1122, %xor1113 *)
adds discard_309 v_add1123 v_add1122 v_xor1113;
(*   %shl1124 = shl i32 %add1060, 30 *)
shls discard_310 v_shl1124 v_add1060 30;
(*   %shr1125 = lshr i32 %add1060, 2 *)
(* You may need to modify here *)
split v_shr1125 tmp_to_be_used v_add1060 2;
(*   %or1126 = or i32 %shl1124, %shr1125 *)
(* You may need to modify here *)
or uint32 v_or1126 v_shl1124 v_shr1125;
(*   %shl1127 = shl i32 %add1060, 19 *)
shls discard_311 v_shl1127 v_add1060 19;
(*   %shr1128 = lshr i32 %add1060, 13 *)
(* You may need to modify here *)
split v_shr1128 tmp_to_be_used v_add1060 13;
(*   %or1129 = or i32 %shl1127, %shr1128 *)
(* You may need to modify here *)
or uint32 v_or1129 v_shl1127 v_shr1128;
(*   %xor1130 = xor i32 %or1126, %or1129 *)
(* You may need to modify here *)
xor uint32 v_xor1130 v_or1126 v_or1129;
(*   %shl1131 = shl i32 %add1060, 10 *)
shls discard_312 v_shl1131 v_add1060 10;
(*   %shr1132 = lshr i32 %add1060, 22 *)
(* You may need to modify here *)
split v_shr1132 tmp_to_be_used v_add1060 22;
(*   %or1133 = or i32 %shl1131, %shr1132 *)
(* You may need to modify here *)
or uint32 v_or1133 v_shl1131 v_shr1132;
(*   %xor1134 = xor i32 %xor1130, %or1133 *)
(* You may need to modify here *)
xor uint32 v_xor1134 v_xor1130 v_or1133;
(*   %and1135 = and i32 %add1060, %add978 *)
(* You may need to modify here *)
and uint32 v_and1135 v_add1060 v_add978;
(*   %and1136 = and i32 %add1060, %add897 *)
(* You may need to modify here *)
and uint32 v_and1136 v_add1060 v_add897;
(*   %xor1137 = xor i32 %and1136, %and1053 *)
(* You may need to modify here *)
xor uint32 v_xor1137 v_and1136 v_and1053;
(*   %xor1139 = xor i32 %xor1137, %and1135 *)
(* You may need to modify here *)
xor uint32 v_xor1139 v_xor1137 v_and1135;
(*   %add1140 = add i32 %xor1134, %xor1139 *)
adds discard_313 v_add1140 v_xor1134 v_xor1139;
(*   %add1141 = add i32 %add1123, %add841 *)
adds discard_314 v_add1141 v_add1123 v_add841;
(*   %add1142 = add i32 %add1140, %add1123 *)
adds discard_315 v_add1142 v_add1140 v_add1123;
(*   %83 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v83 arrayidx242_0;
(*   %shl1152 = shl i32 %83, 25 *)
shls discard_316 v_shl1152 v83 25;
(*   %shr1153 = lshr i32 %83, 7 *)
(* You may need to modify here *)
split v_shr1153 tmp_to_be_used v83 7;
(*   %or1154 = or i32 %shl1152, %shr1153 *)
(* You may need to modify here *)
or uint32 v_or1154 v_shl1152 v_shr1153;
(*   %shl1155 = shl i32 %83, 14 *)
shls discard_317 v_shl1155 v83 14;
(*   %shr1156 = lshr i32 %83, 18 *)
(* You may need to modify here *)
split v_shr1156 tmp_to_be_used v83 18;
(*   %or1157 = or i32 %shl1155, %shr1156 *)
(* You may need to modify here *)
or uint32 v_or1157 v_shl1155 v_shr1156;
(*   %shr1159 = lshr i32 %83, 3 *)
(* You may need to modify here *)
split v_shr1159 tmp_to_be_used v83 3;
(*   %xor1158 = xor i32 %or1157, %shr1159 *)
(* You may need to modify here *)
xor uint32 v_xor1158 v_or1157 v_shr1159;
(*   %xor1160 = xor i32 %xor1158, %or1154 *)
(* You may need to modify here *)
xor uint32 v_xor1160 v_xor1158 v_or1154;
(*   %84 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v84 arrayidx74_0;
(*   %shl1165 = shl i32 %84, 15 *)
shls discard_318 v_shl1165 v84 15;
(*   %shr1166 = lshr i32 %84, 17 *)
(* You may need to modify here *)
split v_shr1166 tmp_to_be_used v84 17;
(*   %or1167 = or i32 %shl1165, %shr1166 *)
(* You may need to modify here *)
or uint32 v_or1167 v_shl1165 v_shr1166;
(*   %shl1168 = shl i32 %84, 13 *)
shls discard_319 v_shl1168 v84 13;
(*   %shr1169 = lshr i32 %84, 19 *)
(* You may need to modify here *)
split v_shr1169 tmp_to_be_used v84 19;
(*   %or1170 = or i32 %shl1168, %shr1169 *)
(* You may need to modify here *)
or uint32 v_or1170 v_shl1168 v_shr1169;
(*   %shr1172 = lshr i32 %84, 10 *)
(* You may need to modify here *)
split v_shr1172 tmp_to_be_used v84 10;
(*   %xor1171 = xor i32 %or1170, %shr1172 *)
(* You may need to modify here *)
xor uint32 v_xor1171 v_or1170 v_shr1172;
(*   %xor1173 = xor i32 %xor1171, %or1167 *)
(* You may need to modify here *)
xor uint32 v_xor1173 v_xor1171 v_or1167;
(*   %85 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v85 arrayidx690_0;
(*   %add1174 = add i32 %80, %85 *)
adds discard_320 v_add1174 v80 v85;
(*   %add1179 = add i32 %add1174, %xor1160 *)
adds discard_321 v_add1179 v_add1174 v_xor1160;
(*   %add1183 = add i32 %add1179, %xor1173 *)
adds discard_322 v_add1183 v_add1179 v_xor1173;
(*   store i32 %add1183, i32* %arrayidx186, align 4, !tbaa !4 *)
mov arrayidx186_0 v_add1183;
(*   %shl1185 = shl i32 %add1141, 26 *)
shls discard_323 v_shl1185 v_add1141 26;
(*   %shr1186 = lshr i32 %add1141, 6 *)
(* You may need to modify here *)
split v_shr1186 tmp_to_be_used v_add1141 6;
(*   %or1187 = or i32 %shl1185, %shr1186 *)
(* You may need to modify here *)
or uint32 v_or1187 v_shl1185 v_shr1186;
(*   %shl1188 = shl i32 %add1141, 21 *)
shls discard_324 v_shl1188 v_add1141 21;
(*   %shr1189 = lshr i32 %add1141, 11 *)
(* You may need to modify here *)
split v_shr1189 tmp_to_be_used v_add1141 11;
(*   %or1190 = or i32 %shl1188, %shr1189 *)
(* You may need to modify here *)
or uint32 v_or1190 v_shl1188 v_shr1189;
(*   %xor1191 = xor i32 %or1187, %or1190 *)
(* You may need to modify here *)
xor uint32 v_xor1191 v_or1187 v_or1190;
(*   %shl1192 = shl i32 %add1141, 7 *)
shls discard_325 v_shl1192 v_add1141 7;
(*   %shr1193 = lshr i32 %add1141, 25 *)
(* You may need to modify here *)
split v_shr1193 tmp_to_be_used v_add1141 25;
(*   %or1194 = or i32 %shl1192, %shr1193 *)
(* You may need to modify here *)
or uint32 v_or1194 v_shl1192 v_shr1193;
(*   %xor1195 = xor i32 %xor1191, %or1194 *)
(* You may need to modify here *)
xor uint32 v_xor1195 v_xor1191 v_or1194;
(*   %and1197 = and i32 %add1141, %add1059 *)
(* You may need to modify here *)
and uint32 v_and1197 v_add1141 v_add1059;
(*   %neg1198 = xor i32 %add1141, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1198 v_add1141 (0xFFFFFFFF)@uint32;
(*   %and1199 = and i32 %add977, %neg1198 *)
(* You may need to modify here *)
and uint32 v_and1199 v_add977 v_neg1198;
(*   %xor1200 = or i32 %and1197, %and1199 *)
(* You may need to modify here *)
or uint32 v_xor1200 v_and1197 v_and1199;
(*   %add1196 = add i32 %add896, 604807628 *)
adds discard_326 v_add1196 v_add896 (604807628)@uint32;
(*   %add1201 = add i32 %add1196, %add1183 *)
adds discard_327 v_add1201 v_add1196 v_add1183;
(*   %add1204 = add i32 %add1201, %xor1200 *)
adds discard_328 v_add1204 v_add1201 v_xor1200;
(*   %add1205 = add i32 %add1204, %xor1195 *)
adds discard_329 v_add1205 v_add1204 v_xor1195;
(*   %shl1206 = shl i32 %add1142, 30 *)
shls discard_330 v_shl1206 v_add1142 30;
(*   %shr1207 = lshr i32 %add1142, 2 *)
(* You may need to modify here *)
split v_shr1207 tmp_to_be_used v_add1142 2;
(*   %or1208 = or i32 %shl1206, %shr1207 *)
(* You may need to modify here *)
or uint32 v_or1208 v_shl1206 v_shr1207;
(*   %shl1209 = shl i32 %add1142, 19 *)
shls discard_331 v_shl1209 v_add1142 19;
(*   %shr1210 = lshr i32 %add1142, 13 *)
(* You may need to modify here *)
split v_shr1210 tmp_to_be_used v_add1142 13;
(*   %or1211 = or i32 %shl1209, %shr1210 *)
(* You may need to modify here *)
or uint32 v_or1211 v_shl1209 v_shr1210;
(*   %xor1212 = xor i32 %or1208, %or1211 *)
(* You may need to modify here *)
xor uint32 v_xor1212 v_or1208 v_or1211;
(*   %shl1213 = shl i32 %add1142, 10 *)
shls discard_332 v_shl1213 v_add1142 10;
(*   %shr1214 = lshr i32 %add1142, 22 *)
(* You may need to modify here *)
split v_shr1214 tmp_to_be_used v_add1142 22;
(*   %or1215 = or i32 %shl1213, %shr1214 *)
(* You may need to modify here *)
or uint32 v_or1215 v_shl1213 v_shr1214;
(*   %xor1216 = xor i32 %xor1212, %or1215 *)
(* You may need to modify here *)
xor uint32 v_xor1216 v_xor1212 v_or1215;
(*   %and1217 = and i32 %add1142, %add1060 *)
(* You may need to modify here *)
and uint32 v_and1217 v_add1142 v_add1060;
(*   %and1218 = and i32 %add1142, %add978 *)
(* You may need to modify here *)
and uint32 v_and1218 v_add1142 v_add978;
(*   %xor1219 = xor i32 %and1218, %and1135 *)
(* You may need to modify here *)
xor uint32 v_xor1219 v_and1218 v_and1135;
(*   %xor1221 = xor i32 %xor1219, %and1217 *)
(* You may need to modify here *)
xor uint32 v_xor1221 v_xor1219 v_and1217;
(*   %add1222 = add i32 %xor1216, %xor1221 *)
adds discard_333 v_add1222 v_xor1216 v_xor1221;
(*   %add1223 = add i32 %add1205, %add897 *)
adds discard_334 v_add1223 v_add1205 v_add897;
(*   %add1224 = add i32 %add1222, %add1205 *)
adds discard_335 v_add1224 v_add1222 v_add1205;
(*   %86 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v86 arrayidx298_0;
(*   %shl1234 = shl i32 %86, 25 *)
shls discard_336 v_shl1234 v86 25;
(*   %shr1235 = lshr i32 %86, 7 *)
(* You may need to modify here *)
split v_shr1235 tmp_to_be_used v86 7;
(*   %or1236 = or i32 %shl1234, %shr1235 *)
(* You may need to modify here *)
or uint32 v_or1236 v_shl1234 v_shr1235;
(*   %shl1237 = shl i32 %86, 14 *)
shls discard_337 v_shl1237 v86 14;
(*   %shr1238 = lshr i32 %86, 18 *)
(* You may need to modify here *)
split v_shr1238 tmp_to_be_used v86 18;
(*   %or1239 = or i32 %shl1237, %shr1238 *)
(* You may need to modify here *)
or uint32 v_or1239 v_shl1237 v_shr1238;
(*   %shr1241 = lshr i32 %86, 3 *)
(* You may need to modify here *)
split v_shr1241 tmp_to_be_used v86 3;
(*   %xor1240 = xor i32 %or1239, %shr1241 *)
(* You may need to modify here *)
xor uint32 v_xor1240 v_or1239 v_shr1241;
(*   %xor1242 = xor i32 %xor1240, %or1236 *)
(* You may need to modify here *)
xor uint32 v_xor1242 v_xor1240 v_or1236;
(*   %87 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v87 arrayidx130_0;
(*   %shl1247 = shl i32 %87, 15 *)
shls discard_338 v_shl1247 v87 15;
(*   %shr1248 = lshr i32 %87, 17 *)
(* You may need to modify here *)
split v_shr1248 tmp_to_be_used v87 17;
(*   %or1249 = or i32 %shl1247, %shr1248 *)
(* You may need to modify here *)
or uint32 v_or1249 v_shl1247 v_shr1248;
(*   %shl1250 = shl i32 %87, 13 *)
shls discard_339 v_shl1250 v87 13;
(*   %shr1251 = lshr i32 %87, 19 *)
(* You may need to modify here *)
split v_shr1251 tmp_to_be_used v87 19;
(*   %or1252 = or i32 %shl1250, %shr1251 *)
(* You may need to modify here *)
or uint32 v_or1252 v_shl1250 v_shr1251;
(*   %shr1254 = lshr i32 %87, 10 *)
(* You may need to modify here *)
split v_shr1254 tmp_to_be_used v87 10;
(*   %xor1253 = xor i32 %or1252, %shr1254 *)
(* You may need to modify here *)
xor uint32 v_xor1253 v_or1252 v_shr1254;
(*   %xor1255 = xor i32 %xor1253, %or1249 *)
(* You may need to modify here *)
xor uint32 v_xor1255 v_xor1253 v_or1249;
(*   %88 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v88 arrayidx746_0;
(*   %add1256 = add i32 %83, %88 *)
adds discard_340 v_add1256 v83 v88;
(*   %add1261 = add i32 %add1256, %xor1242 *)
adds discard_341 v_add1261 v_add1256 v_xor1242;
(*   %add1265 = add i32 %add1261, %xor1255 *)
adds discard_342 v_add1265 v_add1261 v_xor1255;
(*   store i32 %add1265, i32* %arrayidx242, align 4, !tbaa !4 *)
mov arrayidx242_0 v_add1265;
(*   %shl1267 = shl i32 %add1223, 26 *)
shls discard_343 v_shl1267 v_add1223 26;
(*   %shr1268 = lshr i32 %add1223, 6 *)
(* You may need to modify here *)
split v_shr1268 tmp_to_be_used v_add1223 6;
(*   %or1269 = or i32 %shl1267, %shr1268 *)
(* You may need to modify here *)
or uint32 v_or1269 v_shl1267 v_shr1268;
(*   %shl1270 = shl i32 %add1223, 21 *)
shls discard_344 v_shl1270 v_add1223 21;
(*   %shr1271 = lshr i32 %add1223, 11 *)
(* You may need to modify here *)
split v_shr1271 tmp_to_be_used v_add1223 11;
(*   %or1272 = or i32 %shl1270, %shr1271 *)
(* You may need to modify here *)
or uint32 v_or1272 v_shl1270 v_shr1271;
(*   %xor1273 = xor i32 %or1269, %or1272 *)
(* You may need to modify here *)
xor uint32 v_xor1273 v_or1269 v_or1272;
(*   %shl1274 = shl i32 %add1223, 7 *)
shls discard_345 v_shl1274 v_add1223 7;
(*   %shr1275 = lshr i32 %add1223, 25 *)
(* You may need to modify here *)
split v_shr1275 tmp_to_be_used v_add1223 25;
(*   %or1276 = or i32 %shl1274, %shr1275 *)
(* You may need to modify here *)
or uint32 v_or1276 v_shl1274 v_shr1275;
(*   %xor1277 = xor i32 %xor1273, %or1276 *)
(* You may need to modify here *)
xor uint32 v_xor1277 v_xor1273 v_or1276;
(*   %and1279 = and i32 %add1223, %add1141 *)
(* You may need to modify here *)
and uint32 v_and1279 v_add1223 v_add1141;
(*   %neg1280 = xor i32 %add1223, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1280 v_add1223 (0xFFFFFFFF)@uint32;
(*   %and1281 = and i32 %add1059, %neg1280 *)
(* You may need to modify here *)
and uint32 v_and1281 v_add1059 v_neg1280;
(*   %xor1282 = or i32 %and1279, %and1281 *)
(* You may need to modify here *)
or uint32 v_xor1282 v_and1279 v_and1281;
(*   %add1278 = add i32 %add977, 770255983 *)
adds discard_346 v_add1278 v_add977 (770255983)@uint32;
(*   %add1283 = add i32 %add1278, %add1265 *)
adds discard_347 v_add1283 v_add1278 v_add1265;
(*   %add1286 = add i32 %add1283, %xor1282 *)
adds discard_348 v_add1286 v_add1283 v_xor1282;
(*   %add1287 = add i32 %add1286, %xor1277 *)
adds discard_349 v_add1287 v_add1286 v_xor1277;
(*   %shl1288 = shl i32 %add1224, 30 *)
shls discard_350 v_shl1288 v_add1224 30;
(*   %shr1289 = lshr i32 %add1224, 2 *)
(* You may need to modify here *)
split v_shr1289 tmp_to_be_used v_add1224 2;
(*   %or1290 = or i32 %shl1288, %shr1289 *)
(* You may need to modify here *)
or uint32 v_or1290 v_shl1288 v_shr1289;
(*   %shl1291 = shl i32 %add1224, 19 *)
shls discard_351 v_shl1291 v_add1224 19;
(*   %shr1292 = lshr i32 %add1224, 13 *)
(* You may need to modify here *)
split v_shr1292 tmp_to_be_used v_add1224 13;
(*   %or1293 = or i32 %shl1291, %shr1292 *)
(* You may need to modify here *)
or uint32 v_or1293 v_shl1291 v_shr1292;
(*   %xor1294 = xor i32 %or1290, %or1293 *)
(* You may need to modify here *)
xor uint32 v_xor1294 v_or1290 v_or1293;
(*   %shl1295 = shl i32 %add1224, 10 *)
shls discard_352 v_shl1295 v_add1224 10;
(*   %shr1296 = lshr i32 %add1224, 22 *)
(* You may need to modify here *)
split v_shr1296 tmp_to_be_used v_add1224 22;
(*   %or1297 = or i32 %shl1295, %shr1296 *)
(* You may need to modify here *)
or uint32 v_or1297 v_shl1295 v_shr1296;
(*   %xor1298 = xor i32 %xor1294, %or1297 *)
(* You may need to modify here *)
xor uint32 v_xor1298 v_xor1294 v_or1297;
(*   %and1299 = and i32 %add1224, %add1142 *)
(* You may need to modify here *)
and uint32 v_and1299 v_add1224 v_add1142;
(*   %and1300 = and i32 %add1224, %add1060 *)
(* You may need to modify here *)
and uint32 v_and1300 v_add1224 v_add1060;
(*   %xor1301 = xor i32 %and1300, %and1217 *)
(* You may need to modify here *)
xor uint32 v_xor1301 v_and1300 v_and1217;
(*   %xor1303 = xor i32 %xor1301, %and1299 *)
(* You may need to modify here *)
xor uint32 v_xor1303 v_xor1301 v_and1299;
(*   %add1304 = add i32 %xor1298, %xor1303 *)
adds discard_353 v_add1304 v_xor1298 v_xor1303;
(*   %add1305 = add i32 %add1287, %add978 *)
adds discard_354 v_add1305 v_add1287 v_add978;
(*   %add1306 = add i32 %add1304, %add1287 *)
adds discard_355 v_add1306 v_add1304 v_add1287;
(*   %89 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v89 arrayidx354_0;
(*   %shl1316 = shl i32 %89, 25 *)
shls discard_356 v_shl1316 v89 25;
(*   %shr1317 = lshr i32 %89, 7 *)
(* You may need to modify here *)
split v_shr1317 tmp_to_be_used v89 7;
(*   %or1318 = or i32 %shl1316, %shr1317 *)
(* You may need to modify here *)
or uint32 v_or1318 v_shl1316 v_shr1317;
(*   %shl1319 = shl i32 %89, 14 *)
shls discard_357 v_shl1319 v89 14;
(*   %shr1320 = lshr i32 %89, 18 *)
(* You may need to modify here *)
split v_shr1320 tmp_to_be_used v89 18;
(*   %or1321 = or i32 %shl1319, %shr1320 *)
(* You may need to modify here *)
or uint32 v_or1321 v_shl1319 v_shr1320;
(*   %shr1323 = lshr i32 %89, 3 *)
(* You may need to modify here *)
split v_shr1323 tmp_to_be_used v89 3;
(*   %xor1322 = xor i32 %or1321, %shr1323 *)
(* You may need to modify here *)
xor uint32 v_xor1322 v_or1321 v_shr1323;
(*   %xor1324 = xor i32 %xor1322, %or1318 *)
(* You may need to modify here *)
xor uint32 v_xor1324 v_xor1322 v_or1318;
(*   %90 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v90 arrayidx186_0;
(*   %shl1329 = shl i32 %90, 15 *)
shls discard_358 v_shl1329 v90 15;
(*   %shr1330 = lshr i32 %90, 17 *)
(* You may need to modify here *)
split v_shr1330 tmp_to_be_used v90 17;
(*   %or1331 = or i32 %shl1329, %shr1330 *)
(* You may need to modify here *)
or uint32 v_or1331 v_shl1329 v_shr1330;
(*   %shl1332 = shl i32 %90, 13 *)
shls discard_359 v_shl1332 v90 13;
(*   %shr1333 = lshr i32 %90, 19 *)
(* You may need to modify here *)
split v_shr1333 tmp_to_be_used v90 19;
(*   %or1334 = or i32 %shl1332, %shr1333 *)
(* You may need to modify here *)
or uint32 v_or1334 v_shl1332 v_shr1333;
(*   %shr1336 = lshr i32 %90, 10 *)
(* You may need to modify here *)
split v_shr1336 tmp_to_be_used v90 10;
(*   %xor1335 = xor i32 %or1334, %shr1336 *)
(* You may need to modify here *)
xor uint32 v_xor1335 v_or1334 v_shr1336;
(*   %xor1337 = xor i32 %xor1335, %or1331 *)
(* You may need to modify here *)
xor uint32 v_xor1337 v_xor1335 v_or1331;
(*   %91 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v91 arrayidx802_0;
(*   %add1338 = add i32 %86, %91 *)
adds discard_360 v_add1338 v86 v91;
(*   %add1343 = add i32 %add1338, %xor1324 *)
adds discard_361 v_add1343 v_add1338 v_xor1324;
(*   %add1347 = add i32 %add1343, %xor1337 *)
adds discard_362 v_add1347 v_add1343 v_xor1337;
(*   store i32 %add1347, i32* %arrayidx298, align 4, !tbaa !4 *)
mov arrayidx298_0 v_add1347;
(*   %shl1349 = shl i32 %add1305, 26 *)
shls discard_363 v_shl1349 v_add1305 26;
(*   %shr1350 = lshr i32 %add1305, 6 *)
(* You may need to modify here *)
split v_shr1350 tmp_to_be_used v_add1305 6;
(*   %or1351 = or i32 %shl1349, %shr1350 *)
(* You may need to modify here *)
or uint32 v_or1351 v_shl1349 v_shr1350;
(*   %shl1352 = shl i32 %add1305, 21 *)
shls discard_364 v_shl1352 v_add1305 21;
(*   %shr1353 = lshr i32 %add1305, 11 *)
(* You may need to modify here *)
split v_shr1353 tmp_to_be_used v_add1305 11;
(*   %or1354 = or i32 %shl1352, %shr1353 *)
(* You may need to modify here *)
or uint32 v_or1354 v_shl1352 v_shr1353;
(*   %xor1355 = xor i32 %or1351, %or1354 *)
(* You may need to modify here *)
xor uint32 v_xor1355 v_or1351 v_or1354;
(*   %shl1356 = shl i32 %add1305, 7 *)
shls discard_365 v_shl1356 v_add1305 7;
(*   %shr1357 = lshr i32 %add1305, 25 *)
(* You may need to modify here *)
split v_shr1357 tmp_to_be_used v_add1305 25;
(*   %or1358 = or i32 %shl1356, %shr1357 *)
(* You may need to modify here *)
or uint32 v_or1358 v_shl1356 v_shr1357;
(*   %xor1359 = xor i32 %xor1355, %or1358 *)
(* You may need to modify here *)
xor uint32 v_xor1359 v_xor1355 v_or1358;
(*   %and1361 = and i32 %add1305, %add1223 *)
(* You may need to modify here *)
and uint32 v_and1361 v_add1305 v_add1223;
(*   %neg1362 = xor i32 %add1305, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1362 v_add1305 (0xFFFFFFFF)@uint32;
(*   %and1363 = and i32 %add1141, %neg1362 *)
(* You may need to modify here *)
and uint32 v_and1363 v_add1141 v_neg1362;
(*   %xor1364 = or i32 %and1361, %and1363 *)
(* You may need to modify here *)
or uint32 v_xor1364 v_and1361 v_and1363;
(*   %add1360 = add i32 %add1059, 1249150122 *)
adds discard_366 v_add1360 v_add1059 (1249150122)@uint32;
(*   %add1365 = add i32 %add1360, %add1347 *)
adds discard_367 v_add1365 v_add1360 v_add1347;
(*   %add1368 = add i32 %add1365, %xor1364 *)
adds discard_368 v_add1368 v_add1365 v_xor1364;
(*   %add1369 = add i32 %add1368, %xor1359 *)
adds discard_369 v_add1369 v_add1368 v_xor1359;
(*   %shl1370 = shl i32 %add1306, 30 *)
shls discard_370 v_shl1370 v_add1306 30;
(*   %shr1371 = lshr i32 %add1306, 2 *)
(* You may need to modify here *)
split v_shr1371 tmp_to_be_used v_add1306 2;
(*   %or1372 = or i32 %shl1370, %shr1371 *)
(* You may need to modify here *)
or uint32 v_or1372 v_shl1370 v_shr1371;
(*   %shl1373 = shl i32 %add1306, 19 *)
shls discard_371 v_shl1373 v_add1306 19;
(*   %shr1374 = lshr i32 %add1306, 13 *)
(* You may need to modify here *)
split v_shr1374 tmp_to_be_used v_add1306 13;
(*   %or1375 = or i32 %shl1373, %shr1374 *)
(* You may need to modify here *)
or uint32 v_or1375 v_shl1373 v_shr1374;
(*   %xor1376 = xor i32 %or1372, %or1375 *)
(* You may need to modify here *)
xor uint32 v_xor1376 v_or1372 v_or1375;
(*   %shl1377 = shl i32 %add1306, 10 *)
shls discard_372 v_shl1377 v_add1306 10;
(*   %shr1378 = lshr i32 %add1306, 22 *)
(* You may need to modify here *)
split v_shr1378 tmp_to_be_used v_add1306 22;
(*   %or1379 = or i32 %shl1377, %shr1378 *)
(* You may need to modify here *)
or uint32 v_or1379 v_shl1377 v_shr1378;
(*   %xor1380 = xor i32 %xor1376, %or1379 *)
(* You may need to modify here *)
xor uint32 v_xor1380 v_xor1376 v_or1379;
(*   %and1381 = and i32 %add1306, %add1224 *)
(* You may need to modify here *)
and uint32 v_and1381 v_add1306 v_add1224;
(*   %and1382 = and i32 %add1306, %add1142 *)
(* You may need to modify here *)
and uint32 v_and1382 v_add1306 v_add1142;
(*   %xor1383 = xor i32 %and1382, %and1299 *)
(* You may need to modify here *)
xor uint32 v_xor1383 v_and1382 v_and1299;
(*   %xor1385 = xor i32 %xor1383, %and1381 *)
(* You may need to modify here *)
xor uint32 v_xor1385 v_xor1383 v_and1381;
(*   %add1386 = add i32 %xor1380, %xor1385 *)
adds discard_373 v_add1386 v_xor1380 v_xor1385;
(*   %add1387 = add i32 %add1369, %add1060 *)
adds discard_374 v_add1387 v_add1369 v_add1060;
(*   %add1388 = add i32 %add1386, %add1369 *)
adds discard_375 v_add1388 v_add1386 v_add1369;
(*   %92 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v92 arrayidx410_0;
(*   %shl1398 = shl i32 %92, 25 *)
shls discard_376 v_shl1398 v92 25;
(*   %shr1399 = lshr i32 %92, 7 *)
(* You may need to modify here *)
split v_shr1399 tmp_to_be_used v92 7;
(*   %or1400 = or i32 %shl1398, %shr1399 *)
(* You may need to modify here *)
or uint32 v_or1400 v_shl1398 v_shr1399;
(*   %shl1401 = shl i32 %92, 14 *)
shls discard_377 v_shl1401 v92 14;
(*   %shr1402 = lshr i32 %92, 18 *)
(* You may need to modify here *)
split v_shr1402 tmp_to_be_used v92 18;
(*   %or1403 = or i32 %shl1401, %shr1402 *)
(* You may need to modify here *)
or uint32 v_or1403 v_shl1401 v_shr1402;
(*   %shr1405 = lshr i32 %92, 3 *)
(* You may need to modify here *)
split v_shr1405 tmp_to_be_used v92 3;
(*   %xor1404 = xor i32 %or1403, %shr1405 *)
(* You may need to modify here *)
xor uint32 v_xor1404 v_or1403 v_shr1405;
(*   %xor1406 = xor i32 %xor1404, %or1400 *)
(* You may need to modify here *)
xor uint32 v_xor1406 v_xor1404 v_or1400;
(*   %93 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v93 arrayidx242_0;
(*   %shl1411 = shl i32 %93, 15 *)
shls discard_378 v_shl1411 v93 15;
(*   %shr1412 = lshr i32 %93, 17 *)
(* You may need to modify here *)
split v_shr1412 tmp_to_be_used v93 17;
(*   %or1413 = or i32 %shl1411, %shr1412 *)
(* You may need to modify here *)
or uint32 v_or1413 v_shl1411 v_shr1412;
(*   %shl1414 = shl i32 %93, 13 *)
shls discard_379 v_shl1414 v93 13;
(*   %shr1415 = lshr i32 %93, 19 *)
(* You may need to modify here *)
split v_shr1415 tmp_to_be_used v93 19;
(*   %or1416 = or i32 %shl1414, %shr1415 *)
(* You may need to modify here *)
or uint32 v_or1416 v_shl1414 v_shr1415;
(*   %shr1418 = lshr i32 %93, 10 *)
(* You may need to modify here *)
split v_shr1418 tmp_to_be_used v93 10;
(*   %xor1417 = xor i32 %or1416, %shr1418 *)
(* You may need to modify here *)
xor uint32 v_xor1417 v_or1416 v_shr1418;
(*   %xor1419 = xor i32 %xor1417, %or1413 *)
(* You may need to modify here *)
xor uint32 v_xor1419 v_xor1417 v_or1413;
(*   %94 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v94 arrayidx858_0;
(*   %add1420 = add i32 %89, %94 *)
adds discard_380 v_add1420 v89 v94;
(*   %add1425 = add i32 %add1420, %xor1406 *)
adds discard_381 v_add1425 v_add1420 v_xor1406;
(*   %add1429 = add i32 %add1425, %xor1419 *)
adds discard_382 v_add1429 v_add1425 v_xor1419;
(*   store i32 %add1429, i32* %arrayidx354, align 4, !tbaa !4 *)
mov arrayidx354_0 v_add1429;
(*   %shl1431 = shl i32 %add1387, 26 *)
shls discard_383 v_shl1431 v_add1387 26;
(*   %shr1432 = lshr i32 %add1387, 6 *)
(* You may need to modify here *)
split v_shr1432 tmp_to_be_used v_add1387 6;
(*   %or1433 = or i32 %shl1431, %shr1432 *)
(* You may need to modify here *)
or uint32 v_or1433 v_shl1431 v_shr1432;
(*   %shl1434 = shl i32 %add1387, 21 *)
shls discard_384 v_shl1434 v_add1387 21;
(*   %shr1435 = lshr i32 %add1387, 11 *)
(* You may need to modify here *)
split v_shr1435 tmp_to_be_used v_add1387 11;
(*   %or1436 = or i32 %shl1434, %shr1435 *)
(* You may need to modify here *)
or uint32 v_or1436 v_shl1434 v_shr1435;
(*   %xor1437 = xor i32 %or1433, %or1436 *)
(* You may need to modify here *)
xor uint32 v_xor1437 v_or1433 v_or1436;
(*   %shl1438 = shl i32 %add1387, 7 *)
shls discard_385 v_shl1438 v_add1387 7;
(*   %shr1439 = lshr i32 %add1387, 25 *)
(* You may need to modify here *)
split v_shr1439 tmp_to_be_used v_add1387 25;
(*   %or1440 = or i32 %shl1438, %shr1439 *)
(* You may need to modify here *)
or uint32 v_or1440 v_shl1438 v_shr1439;
(*   %xor1441 = xor i32 %xor1437, %or1440 *)
(* You may need to modify here *)
xor uint32 v_xor1441 v_xor1437 v_or1440;
(*   %and1443 = and i32 %add1387, %add1305 *)
(* You may need to modify here *)
and uint32 v_and1443 v_add1387 v_add1305;
(*   %neg1444 = xor i32 %add1387, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1444 v_add1387 (0xFFFFFFFF)@uint32;
(*   %and1445 = and i32 %add1223, %neg1444 *)
(* You may need to modify here *)
and uint32 v_and1445 v_add1223 v_neg1444;
(*   %xor1446 = or i32 %and1443, %and1445 *)
(* You may need to modify here *)
or uint32 v_xor1446 v_and1443 v_and1445;
(*   %add1442 = add i32 %add1141, 1555081692 *)
adds discard_386 v_add1442 v_add1141 (1555081692)@uint32;
(*   %add1447 = add i32 %add1442, %add1429 *)
adds discard_387 v_add1447 v_add1442 v_add1429;
(*   %add1450 = add i32 %add1447, %xor1446 *)
adds discard_388 v_add1450 v_add1447 v_xor1446;
(*   %add1451 = add i32 %add1450, %xor1441 *)
adds discard_389 v_add1451 v_add1450 v_xor1441;
(*   %shl1452 = shl i32 %add1388, 30 *)
shls discard_390 v_shl1452 v_add1388 30;
(*   %shr1453 = lshr i32 %add1388, 2 *)
(* You may need to modify here *)
split v_shr1453 tmp_to_be_used v_add1388 2;
(*   %or1454 = or i32 %shl1452, %shr1453 *)
(* You may need to modify here *)
or uint32 v_or1454 v_shl1452 v_shr1453;
(*   %shl1455 = shl i32 %add1388, 19 *)
shls discard_391 v_shl1455 v_add1388 19;
(*   %shr1456 = lshr i32 %add1388, 13 *)
(* You may need to modify here *)
split v_shr1456 tmp_to_be_used v_add1388 13;
(*   %or1457 = or i32 %shl1455, %shr1456 *)
(* You may need to modify here *)
or uint32 v_or1457 v_shl1455 v_shr1456;
(*   %xor1458 = xor i32 %or1454, %or1457 *)
(* You may need to modify here *)
xor uint32 v_xor1458 v_or1454 v_or1457;
(*   %shl1459 = shl i32 %add1388, 10 *)
shls discard_392 v_shl1459 v_add1388 10;
(*   %shr1460 = lshr i32 %add1388, 22 *)
(* You may need to modify here *)
split v_shr1460 tmp_to_be_used v_add1388 22;
(*   %or1461 = or i32 %shl1459, %shr1460 *)
(* You may need to modify here *)
or uint32 v_or1461 v_shl1459 v_shr1460;
(*   %xor1462 = xor i32 %xor1458, %or1461 *)
(* You may need to modify here *)
xor uint32 v_xor1462 v_xor1458 v_or1461;
(*   %and1463 = and i32 %add1388, %add1306 *)
(* You may need to modify here *)
and uint32 v_and1463 v_add1388 v_add1306;
(*   %and1464 = and i32 %add1388, %add1224 *)
(* You may need to modify here *)
and uint32 v_and1464 v_add1388 v_add1224;
(*   %xor1465 = xor i32 %and1464, %and1381 *)
(* You may need to modify here *)
xor uint32 v_xor1465 v_and1464 v_and1381;
(*   %xor1467 = xor i32 %xor1465, %and1463 *)
(* You may need to modify here *)
xor uint32 v_xor1467 v_xor1465 v_and1463;
(*   %add1468 = add i32 %xor1462, %xor1467 *)
adds discard_393 v_add1468 v_xor1462 v_xor1467;
(*   %add1469 = add i32 %add1451, %add1142 *)
adds discard_394 v_add1469 v_add1451 v_add1142;
(*   %add1470 = add i32 %add1468, %add1451 *)
adds discard_395 v_add1470 v_add1468 v_add1451;
(*   %95 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v95 arrayidx466_0;
(*   %shl1480 = shl i32 %95, 25 *)
shls discard_396 v_shl1480 v95 25;
(*   %shr1481 = lshr i32 %95, 7 *)
(* You may need to modify here *)
split v_shr1481 tmp_to_be_used v95 7;
(*   %or1482 = or i32 %shl1480, %shr1481 *)
(* You may need to modify here *)
or uint32 v_or1482 v_shl1480 v_shr1481;
(*   %shl1483 = shl i32 %95, 14 *)
shls discard_397 v_shl1483 v95 14;
(*   %shr1484 = lshr i32 %95, 18 *)
(* You may need to modify here *)
split v_shr1484 tmp_to_be_used v95 18;
(*   %or1485 = or i32 %shl1483, %shr1484 *)
(* You may need to modify here *)
or uint32 v_or1485 v_shl1483 v_shr1484;
(*   %shr1487 = lshr i32 %95, 3 *)
(* You may need to modify here *)
split v_shr1487 tmp_to_be_used v95 3;
(*   %xor1486 = xor i32 %or1485, %shr1487 *)
(* You may need to modify here *)
xor uint32 v_xor1486 v_or1485 v_shr1487;
(*   %xor1488 = xor i32 %xor1486, %or1482 *)
(* You may need to modify here *)
xor uint32 v_xor1488 v_xor1486 v_or1482;
(*   %96 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v96 arrayidx298_0;
(*   %shl1493 = shl i32 %96, 15 *)
shls discard_398 v_shl1493 v96 15;
(*   %shr1494 = lshr i32 %96, 17 *)
(* You may need to modify here *)
split v_shr1494 tmp_to_be_used v96 17;
(*   %or1495 = or i32 %shl1493, %shr1494 *)
(* You may need to modify here *)
or uint32 v_or1495 v_shl1493 v_shr1494;
(*   %shl1496 = shl i32 %96, 13 *)
shls discard_399 v_shl1496 v96 13;
(*   %shr1497 = lshr i32 %96, 19 *)
(* You may need to modify here *)
split v_shr1497 tmp_to_be_used v96 19;
(*   %or1498 = or i32 %shl1496, %shr1497 *)
(* You may need to modify here *)
or uint32 v_or1498 v_shl1496 v_shr1497;
(*   %shr1500 = lshr i32 %96, 10 *)
(* You may need to modify here *)
split v_shr1500 tmp_to_be_used v96 10;
(*   %xor1499 = xor i32 %or1498, %shr1500 *)
(* You may need to modify here *)
xor uint32 v_xor1499 v_or1498 v_shr1500;
(*   %xor1501 = xor i32 %xor1499, %or1495 *)
(* You may need to modify here *)
xor uint32 v_xor1501 v_xor1499 v_or1495;
(*   %97 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v97 arrayidx26_0;
(*   %add1502 = add i32 %92, %97 *)
adds discard_400 v_add1502 v92 v97;
(*   %add1507 = add i32 %add1502, %xor1488 *)
adds discard_401 v_add1507 v_add1502 v_xor1488;
(*   %add1511 = add i32 %add1507, %xor1501 *)
adds discard_402 v_add1511 v_add1507 v_xor1501;
(*   store i32 %add1511, i32* %arrayidx410, align 4, !tbaa !4 *)
mov arrayidx410_0 v_add1511;
(*   %shl1513 = shl i32 %add1469, 26 *)
shls discard_403 v_shl1513 v_add1469 26;
(*   %shr1514 = lshr i32 %add1469, 6 *)
(* You may need to modify here *)
split v_shr1514 tmp_to_be_used v_add1469 6;
(*   %or1515 = or i32 %shl1513, %shr1514 *)
(* You may need to modify here *)
or uint32 v_or1515 v_shl1513 v_shr1514;
(*   %shl1516 = shl i32 %add1469, 21 *)
shls discard_404 v_shl1516 v_add1469 21;
(*   %shr1517 = lshr i32 %add1469, 11 *)
(* You may need to modify here *)
split v_shr1517 tmp_to_be_used v_add1469 11;
(*   %or1518 = or i32 %shl1516, %shr1517 *)
(* You may need to modify here *)
or uint32 v_or1518 v_shl1516 v_shr1517;
(*   %xor1519 = xor i32 %or1515, %or1518 *)
(* You may need to modify here *)
xor uint32 v_xor1519 v_or1515 v_or1518;
(*   %shl1520 = shl i32 %add1469, 7 *)
shls discard_405 v_shl1520 v_add1469 7;
(*   %shr1521 = lshr i32 %add1469, 25 *)
(* You may need to modify here *)
split v_shr1521 tmp_to_be_used v_add1469 25;
(*   %or1522 = or i32 %shl1520, %shr1521 *)
(* You may need to modify here *)
or uint32 v_or1522 v_shl1520 v_shr1521;
(*   %xor1523 = xor i32 %xor1519, %or1522 *)
(* You may need to modify here *)
xor uint32 v_xor1523 v_xor1519 v_or1522;
(*   %and1525 = and i32 %add1469, %add1387 *)
(* You may need to modify here *)
and uint32 v_and1525 v_add1469 v_add1387;
(*   %neg1526 = xor i32 %add1469, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1526 v_add1469 (0xFFFFFFFF)@uint32;
(*   %and1527 = and i32 %add1305, %neg1526 *)
(* You may need to modify here *)
and uint32 v_and1527 v_add1305 v_neg1526;
(*   %xor1528 = or i32 %and1525, %and1527 *)
(* You may need to modify here *)
or uint32 v_xor1528 v_and1525 v_and1527;
(*   %add1524 = add i32 %add1223, 1996064986 *)
adds discard_406 v_add1524 v_add1223 (1996064986)@uint32;
(*   %add1529 = add i32 %add1524, %add1511 *)
adds discard_407 v_add1529 v_add1524 v_add1511;
(*   %add1532 = add i32 %add1529, %xor1528 *)
adds discard_408 v_add1532 v_add1529 v_xor1528;
(*   %add1533 = add i32 %add1532, %xor1523 *)
adds discard_409 v_add1533 v_add1532 v_xor1523;
(*   %shl1534 = shl i32 %add1470, 30 *)
shls discard_410 v_shl1534 v_add1470 30;
(*   %shr1535 = lshr i32 %add1470, 2 *)
(* You may need to modify here *)
split v_shr1535 tmp_to_be_used v_add1470 2;
(*   %or1536 = or i32 %shl1534, %shr1535 *)
(* You may need to modify here *)
or uint32 v_or1536 v_shl1534 v_shr1535;
(*   %shl1537 = shl i32 %add1470, 19 *)
shls discard_411 v_shl1537 v_add1470 19;
(*   %shr1538 = lshr i32 %add1470, 13 *)
(* You may need to modify here *)
split v_shr1538 tmp_to_be_used v_add1470 13;
(*   %or1539 = or i32 %shl1537, %shr1538 *)
(* You may need to modify here *)
or uint32 v_or1539 v_shl1537 v_shr1538;
(*   %xor1540 = xor i32 %or1536, %or1539 *)
(* You may need to modify here *)
xor uint32 v_xor1540 v_or1536 v_or1539;
(*   %shl1541 = shl i32 %add1470, 10 *)
shls discard_412 v_shl1541 v_add1470 10;
(*   %shr1542 = lshr i32 %add1470, 22 *)
(* You may need to modify here *)
split v_shr1542 tmp_to_be_used v_add1470 22;
(*   %or1543 = or i32 %shl1541, %shr1542 *)
(* You may need to modify here *)
or uint32 v_or1543 v_shl1541 v_shr1542;
(*   %xor1544 = xor i32 %xor1540, %or1543 *)
(* You may need to modify here *)
xor uint32 v_xor1544 v_xor1540 v_or1543;
(*   %and15462545 = xor i32 %add1388, %add1306 *)
(* You may need to modify here *)
xor uint32 v_and15462545 v_add1388 v_add1306;
(*   %xor1547 = and i32 %add1470, %and15462545 *)
(* You may need to modify here *)
and uint32 v_xor1547 v_add1470 v_and15462545;
(*   %xor1549 = xor i32 %xor1547, %and1463 *)
(* You may need to modify here *)
xor uint32 v_xor1549 v_xor1547 v_and1463;
(*   %add1550 = add i32 %xor1544, %xor1549 *)
adds discard_413 v_add1550 v_xor1544 v_xor1549;
(*   %add1551 = add i32 %add1533, %add1224 *)
adds discard_414 v_add1551 v_add1533 v_add1224;
(*   %add1552 = add i32 %add1550, %add1533 *)
adds discard_415 v_add1552 v_add1550 v_add1533;
(*   %98 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v98 arrayidx522_0;
(*   %shl906.1 = shl i32 %98, 25 *)
shls discard_416 v_shl906_1 v98 25;
(*   %shr907.1 = lshr i32 %98, 7 *)
(* You may need to modify here *)
split v_shr907_1 tmp_to_be_used v98 7;
(*   %or908.1 = or i32 %shl906.1, %shr907.1 *)
(* You may need to modify here *)
or uint32 v_or908_1 v_shl906_1 v_shr907_1;
(*   %shl909.1 = shl i32 %98, 14 *)
shls discard_417 v_shl909_1 v98 14;
(*   %shr910.1 = lshr i32 %98, 18 *)
(* You may need to modify here *)
split v_shr910_1 tmp_to_be_used v98 18;
(*   %or911.1 = or i32 %shl909.1, %shr910.1 *)
(* You may need to modify here *)
or uint32 v_or911_1 v_shl909_1 v_shr910_1;
(*   %shr913.1 = lshr i32 %98, 3 *)
(* You may need to modify here *)
split v_shr913_1 tmp_to_be_used v98 3;
(*   %xor912.1 = xor i32 %or911.1, %shr913.1 *)
(* You may need to modify here *)
xor uint32 v_xor912_1 v_or911_1 v_shr913_1;
(*   %xor914.1 = xor i32 %xor912.1, %or908.1 *)
(* You may need to modify here *)
xor uint32 v_xor914_1 v_xor912_1 v_or908_1;
(*   %99 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v99 arrayidx354_0;
(*   %shl919.1 = shl i32 %99, 15 *)
shls discard_418 v_shl919_1 v99 15;
(*   %shr920.1 = lshr i32 %99, 17 *)
(* You may need to modify here *)
split v_shr920_1 tmp_to_be_used v99 17;
(*   %or921.1 = or i32 %shl919.1, %shr920.1 *)
(* You may need to modify here *)
or uint32 v_or921_1 v_shl919_1 v_shr920_1;
(*   %shl922.1 = shl i32 %99, 13 *)
shls discard_419 v_shl922_1 v99 13;
(*   %shr923.1 = lshr i32 %99, 19 *)
(* You may need to modify here *)
split v_shr923_1 tmp_to_be_used v99 19;
(*   %or924.1 = or i32 %shl922.1, %shr923.1 *)
(* You may need to modify here *)
or uint32 v_or924_1 v_shl922_1 v_shr923_1;
(*   %shr926.1 = lshr i32 %99, 10 *)
(* You may need to modify here *)
split v_shr926_1 tmp_to_be_used v99 10;
(*   %xor925.1 = xor i32 %or924.1, %shr926.1 *)
(* You may need to modify here *)
xor uint32 v_xor925_1 v_or924_1 v_shr926_1;
(*   %xor927.1 = xor i32 %xor925.1, %or921.1 *)
(* You may need to modify here *)
xor uint32 v_xor927_1 v_xor925_1 v_or921_1;
(*   %100 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v100 arrayidx74_0;
(*   %add928.1 = add i32 %95, %100 *)
adds discard_420 v_add928_1 v95 v100;
(*   %add933.1 = add i32 %add928.1, %xor914.1 *)
adds discard_421 v_add933_1 v_add928_1 v_xor914_1;
(*   %add937.1 = add i32 %add933.1, %xor927.1 *)
adds discard_422 v_add937_1 v_add933_1 v_xor927_1;
(*   store i32 %add937.1, i32* %arrayidx466, align 4, !tbaa !4 *)
mov arrayidx466_0 v_add937_1;
(*   %shl939.1 = shl i32 %add1551, 26 *)
shls discard_423 v_shl939_1 v_add1551 26;
(*   %shr940.1 = lshr i32 %add1551, 6 *)
(* You may need to modify here *)
split v_shr940_1 tmp_to_be_used v_add1551 6;
(*   %or941.1 = or i32 %shl939.1, %shr940.1 *)
(* You may need to modify here *)
or uint32 v_or941_1 v_shl939_1 v_shr940_1;
(*   %shl942.1 = shl i32 %add1551, 21 *)
shls discard_424 v_shl942_1 v_add1551 21;
(*   %shr943.1 = lshr i32 %add1551, 11 *)
(* You may need to modify here *)
split v_shr943_1 tmp_to_be_used v_add1551 11;
(*   %or944.1 = or i32 %shl942.1, %shr943.1 *)
(* You may need to modify here *)
or uint32 v_or944_1 v_shl942_1 v_shr943_1;
(*   %xor945.1 = xor i32 %or941.1, %or944.1 *)
(* You may need to modify here *)
xor uint32 v_xor945_1 v_or941_1 v_or944_1;
(*   %shl946.1 = shl i32 %add1551, 7 *)
shls discard_425 v_shl946_1 v_add1551 7;
(*   %shr947.1 = lshr i32 %add1551, 25 *)
(* You may need to modify here *)
split v_shr947_1 tmp_to_be_used v_add1551 25;
(*   %or948.1 = or i32 %shl946.1, %shr947.1 *)
(* You may need to modify here *)
or uint32 v_or948_1 v_shl946_1 v_shr947_1;
(*   %xor949.1 = xor i32 %xor945.1, %or948.1 *)
(* You may need to modify here *)
xor uint32 v_xor949_1 v_xor945_1 v_or948_1;
(*   %add950.1 = add i32 %xor949.1, %add1305 *)
adds discard_426 v_add950_1 v_xor949_1 v_add1305;
(*   %and951.1 = and i32 %add1469, %add1551 *)
(* You may need to modify here *)
and uint32 v_and951_1 v_add1469 v_add1551;
(*   %neg952.1 = xor i32 %add1551, -1 *)
(* You may need to modify here *)
xor uint32 v_neg952_1 v_add1551 (0xFFFFFFFF)@uint32;
(*   %and953.1 = and i32 %add1387, %neg952.1 *)
(* You may need to modify here *)
and uint32 v_and953_1 v_add1387 v_neg952_1;
(*   %xor954.1 = or i32 %and953.1, %and951.1 *)
(* You may need to modify here *)
or uint32 v_xor954_1 v_and953_1 v_and951_1;
(*   %add955.1 = add i32 %add950.1, %xor954.1 *)
adds discard_427 v_add955_1 v_add950_1 v_xor954_1;
(*   %add958.1 = add i32 %add955.1, -1740746414 *)
adds discard_428 v_add958_1 v_add955_1 (2554220882)@uint32;
(*   %add959.1 = add i32 %add958.1, %add937.1 *)
adds discard_429 v_add959_1 v_add958_1 v_add937_1;
(*   %shl960.1 = shl i32 %add1552, 30 *)
shls discard_430 v_shl960_1 v_add1552 30;
(*   %shr961.1 = lshr i32 %add1552, 2 *)
(* You may need to modify here *)
split v_shr961_1 tmp_to_be_used v_add1552 2;
(*   %or962.1 = or i32 %shl960.1, %shr961.1 *)
(* You may need to modify here *)
or uint32 v_or962_1 v_shl960_1 v_shr961_1;
(*   %shl963.1 = shl i32 %add1552, 19 *)
shls discard_431 v_shl963_1 v_add1552 19;
(*   %shr964.1 = lshr i32 %add1552, 13 *)
(* You may need to modify here *)
split v_shr964_1 tmp_to_be_used v_add1552 13;
(*   %or965.1 = or i32 %shl963.1, %shr964.1 *)
(* You may need to modify here *)
or uint32 v_or965_1 v_shl963_1 v_shr964_1;
(*   %xor966.1 = xor i32 %or962.1, %or965.1 *)
(* You may need to modify here *)
xor uint32 v_xor966_1 v_or962_1 v_or965_1;
(*   %shl967.1 = shl i32 %add1552, 10 *)
shls discard_432 v_shl967_1 v_add1552 10;
(*   %shr968.1 = lshr i32 %add1552, 22 *)
(* You may need to modify here *)
split v_shr968_1 tmp_to_be_used v_add1552 22;
(*   %or969.1 = or i32 %shl967.1, %shr968.1 *)
(* You may need to modify here *)
or uint32 v_or969_1 v_shl967_1 v_shr968_1;
(*   %xor970.1 = xor i32 %xor966.1, %or969.1 *)
(* You may need to modify here *)
xor uint32 v_xor970_1 v_xor966_1 v_or969_1;
(*   %and971.1 = and i32 %add1552, %add1470 *)
(* You may need to modify here *)
and uint32 v_and971_1 v_add1552 v_add1470;
(*   %and9722559.1 = xor i32 %add1552, %add1470 *)
(* You may need to modify here *)
xor uint32 v_and9722559_1 v_add1552 v_add1470;
(*   %xor973.1 = and i32 %and9722559.1, %add1388 *)
(* You may need to modify here *)
and uint32 v_xor973_1 v_and9722559_1 v_add1388;
(*   %xor975.1 = xor i32 %xor973.1, %and971.1 *)
(* You may need to modify here *)
xor uint32 v_xor975_1 v_xor973_1 v_and971_1;
(*   %add976.1 = add i32 %xor970.1, %xor975.1 *)
adds discard_433 v_add976_1 v_xor970_1 v_xor975_1;
(*   %add977.1 = add i32 %add959.1, %add1306 *)
adds discard_434 v_add977_1 v_add959_1 v_add1306;
(*   %add978.1 = add i32 %add976.1, %add959.1 *)
adds discard_435 v_add978_1 v_add976_1 v_add959_1;
(*   %101 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v101 arrayidx578_0;
(*   %shl988.1 = shl i32 %101, 25 *)
shls discard_436 v_shl988_1 v101 25;
(*   %shr989.1 = lshr i32 %101, 7 *)
(* You may need to modify here *)
split v_shr989_1 tmp_to_be_used v101 7;
(*   %or990.1 = or i32 %shl988.1, %shr989.1 *)
(* You may need to modify here *)
or uint32 v_or990_1 v_shl988_1 v_shr989_1;
(*   %shl991.1 = shl i32 %101, 14 *)
shls discard_437 v_shl991_1 v101 14;
(*   %shr992.1 = lshr i32 %101, 18 *)
(* You may need to modify here *)
split v_shr992_1 tmp_to_be_used v101 18;
(*   %or993.1 = or i32 %shl991.1, %shr992.1 *)
(* You may need to modify here *)
or uint32 v_or993_1 v_shl991_1 v_shr992_1;
(*   %shr995.1 = lshr i32 %101, 3 *)
(* You may need to modify here *)
split v_shr995_1 tmp_to_be_used v101 3;
(*   %xor994.1 = xor i32 %or993.1, %shr995.1 *)
(* You may need to modify here *)
xor uint32 v_xor994_1 v_or993_1 v_shr995_1;
(*   %xor996.1 = xor i32 %xor994.1, %or990.1 *)
(* You may need to modify here *)
xor uint32 v_xor996_1 v_xor994_1 v_or990_1;
(*   %102 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v102 arrayidx410_0;
(*   %shl1001.1 = shl i32 %102, 15 *)
shls discard_438 v_shl1001_1 v102 15;
(*   %shr1002.1 = lshr i32 %102, 17 *)
(* You may need to modify here *)
split v_shr1002_1 tmp_to_be_used v102 17;
(*   %or1003.1 = or i32 %shl1001.1, %shr1002.1 *)
(* You may need to modify here *)
or uint32 v_or1003_1 v_shl1001_1 v_shr1002_1;
(*   %shl1004.1 = shl i32 %102, 13 *)
shls discard_439 v_shl1004_1 v102 13;
(*   %shr1005.1 = lshr i32 %102, 19 *)
(* You may need to modify here *)
split v_shr1005_1 tmp_to_be_used v102 19;
(*   %or1006.1 = or i32 %shl1004.1, %shr1005.1 *)
(* You may need to modify here *)
or uint32 v_or1006_1 v_shl1004_1 v_shr1005_1;
(*   %shr1008.1 = lshr i32 %102, 10 *)
(* You may need to modify here *)
split v_shr1008_1 tmp_to_be_used v102 10;
(*   %xor1007.1 = xor i32 %or1006.1, %shr1008.1 *)
(* You may need to modify here *)
xor uint32 v_xor1007_1 v_or1006_1 v_shr1008_1;
(*   %xor1009.1 = xor i32 %xor1007.1, %or1003.1 *)
(* You may need to modify here *)
xor uint32 v_xor1009_1 v_xor1007_1 v_or1003_1;
(*   %103 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v103 arrayidx130_0;
(*   %add1010.1 = add i32 %103, %98 *)
adds discard_440 v_add1010_1 v103 v98;
(*   %add1015.1 = add i32 %add1010.1, %xor996.1 *)
adds discard_441 v_add1015_1 v_add1010_1 v_xor996_1;
(*   %add1019.1 = add i32 %add1015.1, %xor1009.1 *)
adds discard_442 v_add1019_1 v_add1015_1 v_xor1009_1;
(*   store i32 %add1019.1, i32* %arrayidx522, align 4, !tbaa !4 *)
mov arrayidx522_0 v_add1019_1;
(*   %shl1021.1 = shl i32 %add977.1, 26 *)
shls discard_443 v_shl1021_1 v_add977_1 26;
(*   %shr1022.1 = lshr i32 %add977.1, 6 *)
(* You may need to modify here *)
split v_shr1022_1 tmp_to_be_used v_add977_1 6;
(*   %or1023.1 = or i32 %shl1021.1, %shr1022.1 *)
(* You may need to modify here *)
or uint32 v_or1023_1 v_shl1021_1 v_shr1022_1;
(*   %shl1024.1 = shl i32 %add977.1, 21 *)
shls discard_444 v_shl1024_1 v_add977_1 21;
(*   %shr1025.1 = lshr i32 %add977.1, 11 *)
(* You may need to modify here *)
split v_shr1025_1 tmp_to_be_used v_add977_1 11;
(*   %or1026.1 = or i32 %shl1024.1, %shr1025.1 *)
(* You may need to modify here *)
or uint32 v_or1026_1 v_shl1024_1 v_shr1025_1;
(*   %xor1027.1 = xor i32 %or1023.1, %or1026.1 *)
(* You may need to modify here *)
xor uint32 v_xor1027_1 v_or1023_1 v_or1026_1;
(*   %shl1028.1 = shl i32 %add977.1, 7 *)
shls discard_445 v_shl1028_1 v_add977_1 7;
(*   %shr1029.1 = lshr i32 %add977.1, 25 *)
(* You may need to modify here *)
split v_shr1029_1 tmp_to_be_used v_add977_1 25;
(*   %or1030.1 = or i32 %shl1028.1, %shr1029.1 *)
(* You may need to modify here *)
or uint32 v_or1030_1 v_shl1028_1 v_shr1029_1;
(*   %xor1031.1 = xor i32 %xor1027.1, %or1030.1 *)
(* You may need to modify here *)
xor uint32 v_xor1031_1 v_xor1027_1 v_or1030_1;
(*   %and1033.1 = and i32 %add977.1, %add1551 *)
(* You may need to modify here *)
and uint32 v_and1033_1 v_add977_1 v_add1551;
(*   %neg1034.1 = xor i32 %add977.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1034_1 v_add977_1 (0xFFFFFFFF)@uint32;
(*   %and1035.1 = and i32 %add1469, %neg1034.1 *)
(* You may need to modify here *)
and uint32 v_and1035_1 v_add1469 v_neg1034_1;
(*   %xor1036.1 = or i32 %and1033.1, %and1035.1 *)
(* You may need to modify here *)
or uint32 v_xor1036_1 v_and1033_1 v_and1035_1;
(*   %add1032.1 = add i32 %add1387, -1473132947 *)
adds discard_446 v_add1032_1 v_add1387 (2821834349)@uint32;
(*   %add1037.1 = add i32 %add1032.1, %xor1036.1 *)
adds discard_447 v_add1037_1 v_add1032_1 v_xor1036_1;
(*   %add1040.1 = add i32 %add1037.1, %xor1031.1 *)
adds discard_448 v_add1040_1 v_add1037_1 v_xor1031_1;
(*   %add1041.1 = add i32 %add1040.1, %add1019.1 *)
adds discard_449 v_add1041_1 v_add1040_1 v_add1019_1;
(*   %shl1042.1 = shl i32 %add978.1, 30 *)
shls discard_450 v_shl1042_1 v_add978_1 30;
(*   %shr1043.1 = lshr i32 %add978.1, 2 *)
(* You may need to modify here *)
split v_shr1043_1 tmp_to_be_used v_add978_1 2;
(*   %or1044.1 = or i32 %shl1042.1, %shr1043.1 *)
(* You may need to modify here *)
or uint32 v_or1044_1 v_shl1042_1 v_shr1043_1;
(*   %shl1045.1 = shl i32 %add978.1, 19 *)
shls discard_451 v_shl1045_1 v_add978_1 19;
(*   %shr1046.1 = lshr i32 %add978.1, 13 *)
(* You may need to modify here *)
split v_shr1046_1 tmp_to_be_used v_add978_1 13;
(*   %or1047.1 = or i32 %shl1045.1, %shr1046.1 *)
(* You may need to modify here *)
or uint32 v_or1047_1 v_shl1045_1 v_shr1046_1;
(*   %xor1048.1 = xor i32 %or1044.1, %or1047.1 *)
(* You may need to modify here *)
xor uint32 v_xor1048_1 v_or1044_1 v_or1047_1;
(*   %shl1049.1 = shl i32 %add978.1, 10 *)
shls discard_452 v_shl1049_1 v_add978_1 10;
(*   %shr1050.1 = lshr i32 %add978.1, 22 *)
(* You may need to modify here *)
split v_shr1050_1 tmp_to_be_used v_add978_1 22;
(*   %or1051.1 = or i32 %shl1049.1, %shr1050.1 *)
(* You may need to modify here *)
or uint32 v_or1051_1 v_shl1049_1 v_shr1050_1;
(*   %xor1052.1 = xor i32 %xor1048.1, %or1051.1 *)
(* You may need to modify here *)
xor uint32 v_xor1052_1 v_xor1048_1 v_or1051_1;
(*   %and1053.1 = and i32 %add978.1, %add1552 *)
(* You may need to modify here *)
and uint32 v_and1053_1 v_add978_1 v_add1552;
(*   %and1054.1 = and i32 %add978.1, %add1470 *)
(* You may need to modify here *)
and uint32 v_and1054_1 v_add978_1 v_add1470;
(*   %xor1055.1 = xor i32 %and1054.1, %and971.1 *)
(* You may need to modify here *)
xor uint32 v_xor1055_1 v_and1054_1 v_and971_1;
(*   %xor1057.1 = xor i32 %xor1055.1, %and1053.1 *)
(* You may need to modify here *)
xor uint32 v_xor1057_1 v_xor1055_1 v_and1053_1;
(*   %add1058.1 = add i32 %xor1052.1, %xor1057.1 *)
adds discard_453 v_add1058_1 v_xor1052_1 v_xor1057_1;
(*   %add1059.1 = add i32 %add1041.1, %add1388 *)
adds discard_454 v_add1059_1 v_add1041_1 v_add1388;
(*   %add1060.1 = add i32 %add1058.1, %add1041.1 *)
adds discard_455 v_add1060_1 v_add1058_1 v_add1041_1;
(*   %104 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v104 arrayidx634_0;
(*   %shl1070.1 = shl i32 %104, 25 *)
shls discard_456 v_shl1070_1 v104 25;
(*   %shr1071.1 = lshr i32 %104, 7 *)
(* You may need to modify here *)
split v_shr1071_1 tmp_to_be_used v104 7;
(*   %or1072.1 = or i32 %shl1070.1, %shr1071.1 *)
(* You may need to modify here *)
or uint32 v_or1072_1 v_shl1070_1 v_shr1071_1;
(*   %shl1073.1 = shl i32 %104, 14 *)
shls discard_457 v_shl1073_1 v104 14;
(*   %shr1074.1 = lshr i32 %104, 18 *)
(* You may need to modify here *)
split v_shr1074_1 tmp_to_be_used v104 18;
(*   %or1075.1 = or i32 %shl1073.1, %shr1074.1 *)
(* You may need to modify here *)
or uint32 v_or1075_1 v_shl1073_1 v_shr1074_1;
(*   %shr1077.1 = lshr i32 %104, 3 *)
(* You may need to modify here *)
split v_shr1077_1 tmp_to_be_used v104 3;
(*   %xor1076.1 = xor i32 %or1075.1, %shr1077.1 *)
(* You may need to modify here *)
xor uint32 v_xor1076_1 v_or1075_1 v_shr1077_1;
(*   %xor1078.1 = xor i32 %xor1076.1, %or1072.1 *)
(* You may need to modify here *)
xor uint32 v_xor1078_1 v_xor1076_1 v_or1072_1;
(*   %105 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v105 arrayidx466_0;
(*   %shl1083.1 = shl i32 %105, 15 *)
shls discard_458 v_shl1083_1 v105 15;
(*   %shr1084.1 = lshr i32 %105, 17 *)
(* You may need to modify here *)
split v_shr1084_1 tmp_to_be_used v105 17;
(*   %or1085.1 = or i32 %shl1083.1, %shr1084.1 *)
(* You may need to modify here *)
or uint32 v_or1085_1 v_shl1083_1 v_shr1084_1;
(*   %shl1086.1 = shl i32 %105, 13 *)
shls discard_459 v_shl1086_1 v105 13;
(*   %shr1087.1 = lshr i32 %105, 19 *)
(* You may need to modify here *)
split v_shr1087_1 tmp_to_be_used v105 19;
(*   %or1088.1 = or i32 %shl1086.1, %shr1087.1 *)
(* You may need to modify here *)
or uint32 v_or1088_1 v_shl1086_1 v_shr1087_1;
(*   %shr1090.1 = lshr i32 %105, 10 *)
(* You may need to modify here *)
split v_shr1090_1 tmp_to_be_used v105 10;
(*   %xor1089.1 = xor i32 %or1088.1, %shr1090.1 *)
(* You may need to modify here *)
xor uint32 v_xor1089_1 v_or1088_1 v_shr1090_1;
(*   %xor1091.1 = xor i32 %xor1089.1, %or1085.1 *)
(* You may need to modify here *)
xor uint32 v_xor1091_1 v_xor1089_1 v_or1085_1;
(*   %106 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v106 arrayidx186_0;
(*   %add1092.1 = add i32 %101, %106 *)
adds discard_460 v_add1092_1 v101 v106;
(*   %add1097.1 = add i32 %add1092.1, %xor1078.1 *)
adds discard_461 v_add1097_1 v_add1092_1 v_xor1078_1;
(*   %add1101.1 = add i32 %add1097.1, %xor1091.1 *)
adds discard_462 v_add1101_1 v_add1097_1 v_xor1091_1;
(*   store i32 %add1101.1, i32* %arrayidx578, align 4, !tbaa !4 *)
mov arrayidx578_0 v_add1101_1;
(*   %shl1103.1 = shl i32 %add1059.1, 26 *)
shls discard_463 v_shl1103_1 v_add1059_1 26;
(*   %shr1104.1 = lshr i32 %add1059.1, 6 *)
(* You may need to modify here *)
split v_shr1104_1 tmp_to_be_used v_add1059_1 6;
(*   %or1105.1 = or i32 %shl1103.1, %shr1104.1 *)
(* You may need to modify here *)
or uint32 v_or1105_1 v_shl1103_1 v_shr1104_1;
(*   %shl1106.1 = shl i32 %add1059.1, 21 *)
shls discard_464 v_shl1106_1 v_add1059_1 21;
(*   %shr1107.1 = lshr i32 %add1059.1, 11 *)
(* You may need to modify here *)
split v_shr1107_1 tmp_to_be_used v_add1059_1 11;
(*   %or1108.1 = or i32 %shl1106.1, %shr1107.1 *)
(* You may need to modify here *)
or uint32 v_or1108_1 v_shl1106_1 v_shr1107_1;
(*   %xor1109.1 = xor i32 %or1105.1, %or1108.1 *)
(* You may need to modify here *)
xor uint32 v_xor1109_1 v_or1105_1 v_or1108_1;
(*   %shl1110.1 = shl i32 %add1059.1, 7 *)
shls discard_465 v_shl1110_1 v_add1059_1 7;
(*   %shr1111.1 = lshr i32 %add1059.1, 25 *)
(* You may need to modify here *)
split v_shr1111_1 tmp_to_be_used v_add1059_1 25;
(*   %or1112.1 = or i32 %shl1110.1, %shr1111.1 *)
(* You may need to modify here *)
or uint32 v_or1112_1 v_shl1110_1 v_shr1111_1;
(*   %xor1113.1 = xor i32 %xor1109.1, %or1112.1 *)
(* You may need to modify here *)
xor uint32 v_xor1113_1 v_xor1109_1 v_or1112_1;
(*   %and1115.1 = and i32 %add1059.1, %add977.1 *)
(* You may need to modify here *)
and uint32 v_and1115_1 v_add1059_1 v_add977_1;
(*   %neg1116.1 = xor i32 %add1059.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1116_1 v_add1059_1 (0xFFFFFFFF)@uint32;
(*   %and1117.1 = and i32 %add1551, %neg1116.1 *)
(* You may need to modify here *)
and uint32 v_and1117_1 v_add1551 v_neg1116_1;
(*   %xor1118.1 = or i32 %and1115.1, %and1117.1 *)
(* You may need to modify here *)
or uint32 v_xor1118_1 v_and1115_1 v_and1117_1;
(*   %add1114.1 = add i32 %add1469, -1341970488 *)
adds discard_466 v_add1114_1 v_add1469 (2952996808)@uint32;
(*   %add1119.1 = add i32 %add1114.1, %add1101.1 *)
adds discard_467 v_add1119_1 v_add1114_1 v_add1101_1;
(*   %add1122.1 = add i32 %add1119.1, %xor1118.1 *)
adds discard_468 v_add1122_1 v_add1119_1 v_xor1118_1;
(*   %add1123.1 = add i32 %add1122.1, %xor1113.1 *)
adds discard_469 v_add1123_1 v_add1122_1 v_xor1113_1;
(*   %shl1124.1 = shl i32 %add1060.1, 30 *)
shls discard_470 v_shl1124_1 v_add1060_1 30;
(*   %shr1125.1 = lshr i32 %add1060.1, 2 *)
(* You may need to modify here *)
split v_shr1125_1 tmp_to_be_used v_add1060_1 2;
(*   %or1126.1 = or i32 %shl1124.1, %shr1125.1 *)
(* You may need to modify here *)
or uint32 v_or1126_1 v_shl1124_1 v_shr1125_1;
(*   %shl1127.1 = shl i32 %add1060.1, 19 *)
shls discard_471 v_shl1127_1 v_add1060_1 19;
(*   %shr1128.1 = lshr i32 %add1060.1, 13 *)
(* You may need to modify here *)
split v_shr1128_1 tmp_to_be_used v_add1060_1 13;
(*   %or1129.1 = or i32 %shl1127.1, %shr1128.1 *)
(* You may need to modify here *)
or uint32 v_or1129_1 v_shl1127_1 v_shr1128_1;
(*   %xor1130.1 = xor i32 %or1126.1, %or1129.1 *)
(* You may need to modify here *)
xor uint32 v_xor1130_1 v_or1126_1 v_or1129_1;
(*   %shl1131.1 = shl i32 %add1060.1, 10 *)
shls discard_472 v_shl1131_1 v_add1060_1 10;
(*   %shr1132.1 = lshr i32 %add1060.1, 22 *)
(* You may need to modify here *)
split v_shr1132_1 tmp_to_be_used v_add1060_1 22;
(*   %or1133.1 = or i32 %shl1131.1, %shr1132.1 *)
(* You may need to modify here *)
or uint32 v_or1133_1 v_shl1131_1 v_shr1132_1;
(*   %xor1134.1 = xor i32 %xor1130.1, %or1133.1 *)
(* You may need to modify here *)
xor uint32 v_xor1134_1 v_xor1130_1 v_or1133_1;
(*   %and1135.1 = and i32 %add1060.1, %add978.1 *)
(* You may need to modify here *)
and uint32 v_and1135_1 v_add1060_1 v_add978_1;
(*   %and1136.1 = and i32 %add1060.1, %add1552 *)
(* You may need to modify here *)
and uint32 v_and1136_1 v_add1060_1 v_add1552;
(*   %xor1137.1 = xor i32 %and1136.1, %and1053.1 *)
(* You may need to modify here *)
xor uint32 v_xor1137_1 v_and1136_1 v_and1053_1;
(*   %xor1139.1 = xor i32 %xor1137.1, %and1135.1 *)
(* You may need to modify here *)
xor uint32 v_xor1139_1 v_xor1137_1 v_and1135_1;
(*   %add1140.1 = add i32 %xor1134.1, %xor1139.1 *)
adds discard_473 v_add1140_1 v_xor1134_1 v_xor1139_1;
(*   %add1141.1 = add i32 %add1123.1, %add1470 *)
adds discard_474 v_add1141_1 v_add1123_1 v_add1470;
(*   %add1142.1 = add i32 %add1140.1, %add1123.1 *)
adds discard_475 v_add1142_1 v_add1140_1 v_add1123_1;
(*   %107 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v107 arrayidx690_0;
(*   %shl1152.1 = shl i32 %107, 25 *)
shls discard_476 v_shl1152_1 v107 25;
(*   %shr1153.1 = lshr i32 %107, 7 *)
(* You may need to modify here *)
split v_shr1153_1 tmp_to_be_used v107 7;
(*   %or1154.1 = or i32 %shl1152.1, %shr1153.1 *)
(* You may need to modify here *)
or uint32 v_or1154_1 v_shl1152_1 v_shr1153_1;
(*   %shl1155.1 = shl i32 %107, 14 *)
shls discard_477 v_shl1155_1 v107 14;
(*   %shr1156.1 = lshr i32 %107, 18 *)
(* You may need to modify here *)
split v_shr1156_1 tmp_to_be_used v107 18;
(*   %or1157.1 = or i32 %shl1155.1, %shr1156.1 *)
(* You may need to modify here *)
or uint32 v_or1157_1 v_shl1155_1 v_shr1156_1;
(*   %shr1159.1 = lshr i32 %107, 3 *)
(* You may need to modify here *)
split v_shr1159_1 tmp_to_be_used v107 3;
(*   %xor1158.1 = xor i32 %or1157.1, %shr1159.1 *)
(* You may need to modify here *)
xor uint32 v_xor1158_1 v_or1157_1 v_shr1159_1;
(*   %xor1160.1 = xor i32 %xor1158.1, %or1154.1 *)
(* You may need to modify here *)
xor uint32 v_xor1160_1 v_xor1158_1 v_or1154_1;
(*   %108 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v108 arrayidx522_0;
(*   %shl1165.1 = shl i32 %108, 15 *)
shls discard_478 v_shl1165_1 v108 15;
(*   %shr1166.1 = lshr i32 %108, 17 *)
(* You may need to modify here *)
split v_shr1166_1 tmp_to_be_used v108 17;
(*   %or1167.1 = or i32 %shl1165.1, %shr1166.1 *)
(* You may need to modify here *)
or uint32 v_or1167_1 v_shl1165_1 v_shr1166_1;
(*   %shl1168.1 = shl i32 %108, 13 *)
shls discard_479 v_shl1168_1 v108 13;
(*   %shr1169.1 = lshr i32 %108, 19 *)
(* You may need to modify here *)
split v_shr1169_1 tmp_to_be_used v108 19;
(*   %or1170.1 = or i32 %shl1168.1, %shr1169.1 *)
(* You may need to modify here *)
or uint32 v_or1170_1 v_shl1168_1 v_shr1169_1;
(*   %shr1172.1 = lshr i32 %108, 10 *)
(* You may need to modify here *)
split v_shr1172_1 tmp_to_be_used v108 10;
(*   %xor1171.1 = xor i32 %or1170.1, %shr1172.1 *)
(* You may need to modify here *)
xor uint32 v_xor1171_1 v_or1170_1 v_shr1172_1;
(*   %xor1173.1 = xor i32 %xor1171.1, %or1167.1 *)
(* You may need to modify here *)
xor uint32 v_xor1173_1 v_xor1171_1 v_or1167_1;
(*   %109 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v109 arrayidx242_0;
(*   %add1174.1 = add i32 %104, %109 *)
adds discard_480 v_add1174_1 v104 v109;
(*   %add1179.1 = add i32 %add1174.1, %xor1160.1 *)
adds discard_481 v_add1179_1 v_add1174_1 v_xor1160_1;
(*   %add1183.1 = add i32 %add1179.1, %xor1173.1 *)
adds discard_482 v_add1183_1 v_add1179_1 v_xor1173_1;
(*   store i32 %add1183.1, i32* %arrayidx634, align 4, !tbaa !4 *)
mov arrayidx634_0 v_add1183_1;
(*   %shl1185.1 = shl i32 %add1141.1, 26 *)
shls discard_483 v_shl1185_1 v_add1141_1 26;
(*   %shr1186.1 = lshr i32 %add1141.1, 6 *)
(* You may need to modify here *)
split v_shr1186_1 tmp_to_be_used v_add1141_1 6;
(*   %or1187.1 = or i32 %shl1185.1, %shr1186.1 *)
(* You may need to modify here *)
or uint32 v_or1187_1 v_shl1185_1 v_shr1186_1;
(*   %shl1188.1 = shl i32 %add1141.1, 21 *)
shls discard_484 v_shl1188_1 v_add1141_1 21;
(*   %shr1189.1 = lshr i32 %add1141.1, 11 *)
(* You may need to modify here *)
split v_shr1189_1 tmp_to_be_used v_add1141_1 11;
(*   %or1190.1 = or i32 %shl1188.1, %shr1189.1 *)
(* You may need to modify here *)
or uint32 v_or1190_1 v_shl1188_1 v_shr1189_1;
(*   %xor1191.1 = xor i32 %or1187.1, %or1190.1 *)
(* You may need to modify here *)
xor uint32 v_xor1191_1 v_or1187_1 v_or1190_1;
(*   %shl1192.1 = shl i32 %add1141.1, 7 *)
shls discard_485 v_shl1192_1 v_add1141_1 7;
(*   %shr1193.1 = lshr i32 %add1141.1, 25 *)
(* You may need to modify here *)
split v_shr1193_1 tmp_to_be_used v_add1141_1 25;
(*   %or1194.1 = or i32 %shl1192.1, %shr1193.1 *)
(* You may need to modify here *)
or uint32 v_or1194_1 v_shl1192_1 v_shr1193_1;
(*   %xor1195.1 = xor i32 %xor1191.1, %or1194.1 *)
(* You may need to modify here *)
xor uint32 v_xor1195_1 v_xor1191_1 v_or1194_1;
(*   %and1197.1 = and i32 %add1141.1, %add1059.1 *)
(* You may need to modify here *)
and uint32 v_and1197_1 v_add1141_1 v_add1059_1;
(*   %neg1198.1 = xor i32 %add1141.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1198_1 v_add1141_1 (0xFFFFFFFF)@uint32;
(*   %and1199.1 = and i32 %add977.1, %neg1198.1 *)
(* You may need to modify here *)
and uint32 v_and1199_1 v_add977_1 v_neg1198_1;
(*   %xor1200.1 = or i32 %and1197.1, %and1199.1 *)
(* You may need to modify here *)
or uint32 v_xor1200_1 v_and1197_1 v_and1199_1;
(*   %add1196.1 = add i32 %add1551, -1084653625 *)
adds discard_486 v_add1196_1 v_add1551 (3210313671)@uint32;
(*   %add1201.1 = add i32 %add1196.1, %add1183.1 *)
adds discard_487 v_add1201_1 v_add1196_1 v_add1183_1;
(*   %add1204.1 = add i32 %add1201.1, %xor1200.1 *)
adds discard_488 v_add1204_1 v_add1201_1 v_xor1200_1;
(*   %add1205.1 = add i32 %add1204.1, %xor1195.1 *)
adds discard_489 v_add1205_1 v_add1204_1 v_xor1195_1;
(*   %shl1206.1 = shl i32 %add1142.1, 30 *)
shls discard_490 v_shl1206_1 v_add1142_1 30;
(*   %shr1207.1 = lshr i32 %add1142.1, 2 *)
(* You may need to modify here *)
split v_shr1207_1 tmp_to_be_used v_add1142_1 2;
(*   %or1208.1 = or i32 %shl1206.1, %shr1207.1 *)
(* You may need to modify here *)
or uint32 v_or1208_1 v_shl1206_1 v_shr1207_1;
(*   %shl1209.1 = shl i32 %add1142.1, 19 *)
shls discard_491 v_shl1209_1 v_add1142_1 19;
(*   %shr1210.1 = lshr i32 %add1142.1, 13 *)
(* You may need to modify here *)
split v_shr1210_1 tmp_to_be_used v_add1142_1 13;
(*   %or1211.1 = or i32 %shl1209.1, %shr1210.1 *)
(* You may need to modify here *)
or uint32 v_or1211_1 v_shl1209_1 v_shr1210_1;
(*   %xor1212.1 = xor i32 %or1208.1, %or1211.1 *)
(* You may need to modify here *)
xor uint32 v_xor1212_1 v_or1208_1 v_or1211_1;
(*   %shl1213.1 = shl i32 %add1142.1, 10 *)
shls discard_492 v_shl1213_1 v_add1142_1 10;
(*   %shr1214.1 = lshr i32 %add1142.1, 22 *)
(* You may need to modify here *)
split v_shr1214_1 tmp_to_be_used v_add1142_1 22;
(*   %or1215.1 = or i32 %shl1213.1, %shr1214.1 *)
(* You may need to modify here *)
or uint32 v_or1215_1 v_shl1213_1 v_shr1214_1;
(*   %xor1216.1 = xor i32 %xor1212.1, %or1215.1 *)
(* You may need to modify here *)
xor uint32 v_xor1216_1 v_xor1212_1 v_or1215_1;
(*   %and1217.1 = and i32 %add1142.1, %add1060.1 *)
(* You may need to modify here *)
and uint32 v_and1217_1 v_add1142_1 v_add1060_1;
(*   %and1218.1 = and i32 %add1142.1, %add978.1 *)
(* You may need to modify here *)
and uint32 v_and1218_1 v_add1142_1 v_add978_1;
(*   %xor1219.1 = xor i32 %and1218.1, %and1135.1 *)
(* You may need to modify here *)
xor uint32 v_xor1219_1 v_and1218_1 v_and1135_1;
(*   %xor1221.1 = xor i32 %xor1219.1, %and1217.1 *)
(* You may need to modify here *)
xor uint32 v_xor1221_1 v_xor1219_1 v_and1217_1;
(*   %add1222.1 = add i32 %xor1216.1, %xor1221.1 *)
adds discard_493 v_add1222_1 v_xor1216_1 v_xor1221_1;
(*   %add1223.1 = add i32 %add1205.1, %add1552 *)
adds discard_494 v_add1223_1 v_add1205_1 v_add1552;
(*   %add1224.1 = add i32 %add1222.1, %add1205.1 *)
adds discard_495 v_add1224_1 v_add1222_1 v_add1205_1;
(*   %110 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v110 arrayidx746_0;
(*   %shl1234.1 = shl i32 %110, 25 *)
shls discard_496 v_shl1234_1 v110 25;
(*   %shr1235.1 = lshr i32 %110, 7 *)
(* You may need to modify here *)
split v_shr1235_1 tmp_to_be_used v110 7;
(*   %or1236.1 = or i32 %shl1234.1, %shr1235.1 *)
(* You may need to modify here *)
or uint32 v_or1236_1 v_shl1234_1 v_shr1235_1;
(*   %shl1237.1 = shl i32 %110, 14 *)
shls discard_497 v_shl1237_1 v110 14;
(*   %shr1238.1 = lshr i32 %110, 18 *)
(* You may need to modify here *)
split v_shr1238_1 tmp_to_be_used v110 18;
(*   %or1239.1 = or i32 %shl1237.1, %shr1238.1 *)
(* You may need to modify here *)
or uint32 v_or1239_1 v_shl1237_1 v_shr1238_1;
(*   %shr1241.1 = lshr i32 %110, 3 *)
(* You may need to modify here *)
split v_shr1241_1 tmp_to_be_used v110 3;
(*   %xor1240.1 = xor i32 %or1239.1, %shr1241.1 *)
(* You may need to modify here *)
xor uint32 v_xor1240_1 v_or1239_1 v_shr1241_1;
(*   %xor1242.1 = xor i32 %xor1240.1, %or1236.1 *)
(* You may need to modify here *)
xor uint32 v_xor1242_1 v_xor1240_1 v_or1236_1;
(*   %111 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v111 arrayidx578_0;
(*   %shl1247.1 = shl i32 %111, 15 *)
shls discard_498 v_shl1247_1 v111 15;
(*   %shr1248.1 = lshr i32 %111, 17 *)
(* You may need to modify here *)
split v_shr1248_1 tmp_to_be_used v111 17;
(*   %or1249.1 = or i32 %shl1247.1, %shr1248.1 *)
(* You may need to modify here *)
or uint32 v_or1249_1 v_shl1247_1 v_shr1248_1;
(*   %shl1250.1 = shl i32 %111, 13 *)
shls discard_499 v_shl1250_1 v111 13;
(*   %shr1251.1 = lshr i32 %111, 19 *)
(* You may need to modify here *)
split v_shr1251_1 tmp_to_be_used v111 19;
(*   %or1252.1 = or i32 %shl1250.1, %shr1251.1 *)
(* You may need to modify here *)
or uint32 v_or1252_1 v_shl1250_1 v_shr1251_1;
(*   %shr1254.1 = lshr i32 %111, 10 *)
(* You may need to modify here *)
split v_shr1254_1 tmp_to_be_used v111 10;
(*   %xor1253.1 = xor i32 %or1252.1, %shr1254.1 *)
(* You may need to modify here *)
xor uint32 v_xor1253_1 v_or1252_1 v_shr1254_1;
(*   %xor1255.1 = xor i32 %xor1253.1, %or1249.1 *)
(* You may need to modify here *)
xor uint32 v_xor1255_1 v_xor1253_1 v_or1249_1;
(*   %112 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v112 arrayidx298_0;
(*   %add1256.1 = add i32 %107, %112 *)
adds discard_500 v_add1256_1 v107 v112;
(*   %add1261.1 = add i32 %add1256.1, %xor1242.1 *)
adds discard_501 v_add1261_1 v_add1256_1 v_xor1242_1;
(*   %add1265.1 = add i32 %add1261.1, %xor1255.1 *)
adds discard_502 v_add1265_1 v_add1261_1 v_xor1255_1;
(*   store i32 %add1265.1, i32* %arrayidx690, align 4, !tbaa !4 *)
mov arrayidx690_0 v_add1265_1;
(*   %shl1267.1 = shl i32 %add1223.1, 26 *)
shls discard_503 v_shl1267_1 v_add1223_1 26;
(*   %shr1268.1 = lshr i32 %add1223.1, 6 *)
(* You may need to modify here *)
split v_shr1268_1 tmp_to_be_used v_add1223_1 6;
(*   %or1269.1 = or i32 %shl1267.1, %shr1268.1 *)
(* You may need to modify here *)
or uint32 v_or1269_1 v_shl1267_1 v_shr1268_1;
(*   %shl1270.1 = shl i32 %add1223.1, 21 *)
shls discard_504 v_shl1270_1 v_add1223_1 21;
(*   %shr1271.1 = lshr i32 %add1223.1, 11 *)
(* You may need to modify here *)
split v_shr1271_1 tmp_to_be_used v_add1223_1 11;
(*   %or1272.1 = or i32 %shl1270.1, %shr1271.1 *)
(* You may need to modify here *)
or uint32 v_or1272_1 v_shl1270_1 v_shr1271_1;
(*   %xor1273.1 = xor i32 %or1269.1, %or1272.1 *)
(* You may need to modify here *)
xor uint32 v_xor1273_1 v_or1269_1 v_or1272_1;
(*   %shl1274.1 = shl i32 %add1223.1, 7 *)
shls discard_505 v_shl1274_1 v_add1223_1 7;
(*   %shr1275.1 = lshr i32 %add1223.1, 25 *)
(* You may need to modify here *)
split v_shr1275_1 tmp_to_be_used v_add1223_1 25;
(*   %or1276.1 = or i32 %shl1274.1, %shr1275.1 *)
(* You may need to modify here *)
or uint32 v_or1276_1 v_shl1274_1 v_shr1275_1;
(*   %xor1277.1 = xor i32 %xor1273.1, %or1276.1 *)
(* You may need to modify here *)
xor uint32 v_xor1277_1 v_xor1273_1 v_or1276_1;
(*   %and1279.1 = and i32 %add1223.1, %add1141.1 *)
(* You may need to modify here *)
and uint32 v_and1279_1 v_add1223_1 v_add1141_1;
(*   %neg1280.1 = xor i32 %add1223.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1280_1 v_add1223_1 (0xFFFFFFFF)@uint32;
(*   %and1281.1 = and i32 %add1059.1, %neg1280.1 *)
(* You may need to modify here *)
and uint32 v_and1281_1 v_add1059_1 v_neg1280_1;
(*   %xor1282.1 = or i32 %and1279.1, %and1281.1 *)
(* You may need to modify here *)
or uint32 v_xor1282_1 v_and1279_1 v_and1281_1;
(*   %add1278.1 = add i32 %add977.1, -958395405 *)
adds discard_506 v_add1278_1 v_add977_1 (3336571891)@uint32;
(*   %add1283.1 = add i32 %add1278.1, %add1265.1 *)
adds discard_507 v_add1283_1 v_add1278_1 v_add1265_1;
(*   %add1286.1 = add i32 %add1283.1, %xor1282.1 *)
adds discard_508 v_add1286_1 v_add1283_1 v_xor1282_1;
(*   %add1287.1 = add i32 %add1286.1, %xor1277.1 *)
adds discard_509 v_add1287_1 v_add1286_1 v_xor1277_1;
(*   %shl1288.1 = shl i32 %add1224.1, 30 *)
shls discard_510 v_shl1288_1 v_add1224_1 30;
(*   %shr1289.1 = lshr i32 %add1224.1, 2 *)
(* You may need to modify here *)
split v_shr1289_1 tmp_to_be_used v_add1224_1 2;
(*   %or1290.1 = or i32 %shl1288.1, %shr1289.1 *)
(* You may need to modify here *)
or uint32 v_or1290_1 v_shl1288_1 v_shr1289_1;
(*   %shl1291.1 = shl i32 %add1224.1, 19 *)
shls discard_511 v_shl1291_1 v_add1224_1 19;
(*   %shr1292.1 = lshr i32 %add1224.1, 13 *)
(* You may need to modify here *)
split v_shr1292_1 tmp_to_be_used v_add1224_1 13;
(*   %or1293.1 = or i32 %shl1291.1, %shr1292.1 *)
(* You may need to modify here *)
or uint32 v_or1293_1 v_shl1291_1 v_shr1292_1;
(*   %xor1294.1 = xor i32 %or1290.1, %or1293.1 *)
(* You may need to modify here *)
xor uint32 v_xor1294_1 v_or1290_1 v_or1293_1;
(*   %shl1295.1 = shl i32 %add1224.1, 10 *)
shls discard_512 v_shl1295_1 v_add1224_1 10;
(*   %shr1296.1 = lshr i32 %add1224.1, 22 *)
(* You may need to modify here *)
split v_shr1296_1 tmp_to_be_used v_add1224_1 22;
(*   %or1297.1 = or i32 %shl1295.1, %shr1296.1 *)
(* You may need to modify here *)
or uint32 v_or1297_1 v_shl1295_1 v_shr1296_1;
(*   %xor1298.1 = xor i32 %xor1294.1, %or1297.1 *)
(* You may need to modify here *)
xor uint32 v_xor1298_1 v_xor1294_1 v_or1297_1;
(*   %and1299.1 = and i32 %add1224.1, %add1142.1 *)
(* You may need to modify here *)
and uint32 v_and1299_1 v_add1224_1 v_add1142_1;
(*   %and1300.1 = and i32 %add1224.1, %add1060.1 *)
(* You may need to modify here *)
and uint32 v_and1300_1 v_add1224_1 v_add1060_1;
(*   %xor1301.1 = xor i32 %and1300.1, %and1217.1 *)
(* You may need to modify here *)
xor uint32 v_xor1301_1 v_and1300_1 v_and1217_1;
(*   %xor1303.1 = xor i32 %xor1301.1, %and1299.1 *)
(* You may need to modify here *)
xor uint32 v_xor1303_1 v_xor1301_1 v_and1299_1;
(*   %add1304.1 = add i32 %xor1298.1, %xor1303.1 *)
adds discard_513 v_add1304_1 v_xor1298_1 v_xor1303_1;
(*   %add1305.1 = add i32 %add1287.1, %add978.1 *)
adds discard_514 v_add1305_1 v_add1287_1 v_add978_1;
(*   %add1306.1 = add i32 %add1304.1, %add1287.1 *)
adds discard_515 v_add1306_1 v_add1304_1 v_add1287_1;
(*   %113 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v113 arrayidx802_0;
(*   %shl1316.1 = shl i32 %113, 25 *)
shls discard_516 v_shl1316_1 v113 25;
(*   %shr1317.1 = lshr i32 %113, 7 *)
(* You may need to modify here *)
split v_shr1317_1 tmp_to_be_used v113 7;
(*   %or1318.1 = or i32 %shl1316.1, %shr1317.1 *)
(* You may need to modify here *)
or uint32 v_or1318_1 v_shl1316_1 v_shr1317_1;
(*   %shl1319.1 = shl i32 %113, 14 *)
shls discard_517 v_shl1319_1 v113 14;
(*   %shr1320.1 = lshr i32 %113, 18 *)
(* You may need to modify here *)
split v_shr1320_1 tmp_to_be_used v113 18;
(*   %or1321.1 = or i32 %shl1319.1, %shr1320.1 *)
(* You may need to modify here *)
or uint32 v_or1321_1 v_shl1319_1 v_shr1320_1;
(*   %shr1323.1 = lshr i32 %113, 3 *)
(* You may need to modify here *)
split v_shr1323_1 tmp_to_be_used v113 3;
(*   %xor1322.1 = xor i32 %or1321.1, %shr1323.1 *)
(* You may need to modify here *)
xor uint32 v_xor1322_1 v_or1321_1 v_shr1323_1;
(*   %xor1324.1 = xor i32 %xor1322.1, %or1318.1 *)
(* You may need to modify here *)
xor uint32 v_xor1324_1 v_xor1322_1 v_or1318_1;
(*   %114 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v114 arrayidx634_0;
(*   %shl1329.1 = shl i32 %114, 15 *)
shls discard_518 v_shl1329_1 v114 15;
(*   %shr1330.1 = lshr i32 %114, 17 *)
(* You may need to modify here *)
split v_shr1330_1 tmp_to_be_used v114 17;
(*   %or1331.1 = or i32 %shl1329.1, %shr1330.1 *)
(* You may need to modify here *)
or uint32 v_or1331_1 v_shl1329_1 v_shr1330_1;
(*   %shl1332.1 = shl i32 %114, 13 *)
shls discard_519 v_shl1332_1 v114 13;
(*   %shr1333.1 = lshr i32 %114, 19 *)
(* You may need to modify here *)
split v_shr1333_1 tmp_to_be_used v114 19;
(*   %or1334.1 = or i32 %shl1332.1, %shr1333.1 *)
(* You may need to modify here *)
or uint32 v_or1334_1 v_shl1332_1 v_shr1333_1;
(*   %shr1336.1 = lshr i32 %114, 10 *)
(* You may need to modify here *)
split v_shr1336_1 tmp_to_be_used v114 10;
(*   %xor1335.1 = xor i32 %or1334.1, %shr1336.1 *)
(* You may need to modify here *)
xor uint32 v_xor1335_1 v_or1334_1 v_shr1336_1;
(*   %xor1337.1 = xor i32 %xor1335.1, %or1331.1 *)
(* You may need to modify here *)
xor uint32 v_xor1337_1 v_xor1335_1 v_or1331_1;
(*   %115 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v115 arrayidx354_0;
(*   %add1338.1 = add i32 %110, %115 *)
adds discard_520 v_add1338_1 v110 v115;
(*   %add1343.1 = add i32 %add1338.1, %xor1324.1 *)
adds discard_521 v_add1343_1 v_add1338_1 v_xor1324_1;
(*   %add1347.1 = add i32 %add1343.1, %xor1337.1 *)
adds discard_522 v_add1347_1 v_add1343_1 v_xor1337_1;
(*   store i32 %add1347.1, i32* %arrayidx746, align 4, !tbaa !4 *)
mov arrayidx746_0 v_add1347_1;
(*   %shl1349.1 = shl i32 %add1305.1, 26 *)
shls discard_523 v_shl1349_1 v_add1305_1 26;
(*   %shr1350.1 = lshr i32 %add1305.1, 6 *)
(* You may need to modify here *)
split v_shr1350_1 tmp_to_be_used v_add1305_1 6;
(*   %or1351.1 = or i32 %shl1349.1, %shr1350.1 *)
(* You may need to modify here *)
or uint32 v_or1351_1 v_shl1349_1 v_shr1350_1;
(*   %shl1352.1 = shl i32 %add1305.1, 21 *)
shls discard_524 v_shl1352_1 v_add1305_1 21;
(*   %shr1353.1 = lshr i32 %add1305.1, 11 *)
(* You may need to modify here *)
split v_shr1353_1 tmp_to_be_used v_add1305_1 11;
(*   %or1354.1 = or i32 %shl1352.1, %shr1353.1 *)
(* You may need to modify here *)
or uint32 v_or1354_1 v_shl1352_1 v_shr1353_1;
(*   %xor1355.1 = xor i32 %or1351.1, %or1354.1 *)
(* You may need to modify here *)
xor uint32 v_xor1355_1 v_or1351_1 v_or1354_1;
(*   %shl1356.1 = shl i32 %add1305.1, 7 *)
shls discard_525 v_shl1356_1 v_add1305_1 7;
(*   %shr1357.1 = lshr i32 %add1305.1, 25 *)
(* You may need to modify here *)
split v_shr1357_1 tmp_to_be_used v_add1305_1 25;
(*   %or1358.1 = or i32 %shl1356.1, %shr1357.1 *)
(* You may need to modify here *)
or uint32 v_or1358_1 v_shl1356_1 v_shr1357_1;
(*   %xor1359.1 = xor i32 %xor1355.1, %or1358.1 *)
(* You may need to modify here *)
xor uint32 v_xor1359_1 v_xor1355_1 v_or1358_1;
(*   %and1361.1 = and i32 %add1305.1, %add1223.1 *)
(* You may need to modify here *)
and uint32 v_and1361_1 v_add1305_1 v_add1223_1;
(*   %neg1362.1 = xor i32 %add1305.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1362_1 v_add1305_1 (0xFFFFFFFF)@uint32;
(*   %and1363.1 = and i32 %add1141.1, %neg1362.1 *)
(* You may need to modify here *)
and uint32 v_and1363_1 v_add1141_1 v_neg1362_1;
(*   %xor1364.1 = or i32 %and1361.1, %and1363.1 *)
(* You may need to modify here *)
or uint32 v_xor1364_1 v_and1361_1 v_and1363_1;
(*   %add1360.1 = add i32 %add1059.1, -710438585 *)
adds discard_526 v_add1360_1 v_add1059_1 (3584528711)@uint32;
(*   %add1365.1 = add i32 %add1360.1, %add1347.1 *)
adds discard_527 v_add1365_1 v_add1360_1 v_add1347_1;
(*   %add1368.1 = add i32 %add1365.1, %xor1364.1 *)
adds discard_528 v_add1368_1 v_add1365_1 v_xor1364_1;
(*   %add1369.1 = add i32 %add1368.1, %xor1359.1 *)
adds discard_529 v_add1369_1 v_add1368_1 v_xor1359_1;
(*   %shl1370.1 = shl i32 %add1306.1, 30 *)
shls discard_530 v_shl1370_1 v_add1306_1 30;
(*   %shr1371.1 = lshr i32 %add1306.1, 2 *)
(* You may need to modify here *)
split v_shr1371_1 tmp_to_be_used v_add1306_1 2;
(*   %or1372.1 = or i32 %shl1370.1, %shr1371.1 *)
(* You may need to modify here *)
or uint32 v_or1372_1 v_shl1370_1 v_shr1371_1;
(*   %shl1373.1 = shl i32 %add1306.1, 19 *)
shls discard_531 v_shl1373_1 v_add1306_1 19;
(*   %shr1374.1 = lshr i32 %add1306.1, 13 *)
(* You may need to modify here *)
split v_shr1374_1 tmp_to_be_used v_add1306_1 13;
(*   %or1375.1 = or i32 %shl1373.1, %shr1374.1 *)
(* You may need to modify here *)
or uint32 v_or1375_1 v_shl1373_1 v_shr1374_1;
(*   %xor1376.1 = xor i32 %or1372.1, %or1375.1 *)
(* You may need to modify here *)
xor uint32 v_xor1376_1 v_or1372_1 v_or1375_1;
(*   %shl1377.1 = shl i32 %add1306.1, 10 *)
shls discard_532 v_shl1377_1 v_add1306_1 10;
(*   %shr1378.1 = lshr i32 %add1306.1, 22 *)
(* You may need to modify here *)
split v_shr1378_1 tmp_to_be_used v_add1306_1 22;
(*   %or1379.1 = or i32 %shl1377.1, %shr1378.1 *)
(* You may need to modify here *)
or uint32 v_or1379_1 v_shl1377_1 v_shr1378_1;
(*   %xor1380.1 = xor i32 %xor1376.1, %or1379.1 *)
(* You may need to modify here *)
xor uint32 v_xor1380_1 v_xor1376_1 v_or1379_1;
(*   %and1381.1 = and i32 %add1306.1, %add1224.1 *)
(* You may need to modify here *)
and uint32 v_and1381_1 v_add1306_1 v_add1224_1;
(*   %and1382.1 = and i32 %add1306.1, %add1142.1 *)
(* You may need to modify here *)
and uint32 v_and1382_1 v_add1306_1 v_add1142_1;
(*   %xor1383.1 = xor i32 %and1382.1, %and1299.1 *)
(* You may need to modify here *)
xor uint32 v_xor1383_1 v_and1382_1 v_and1299_1;
(*   %xor1385.1 = xor i32 %xor1383.1, %and1381.1 *)
(* You may need to modify here *)
xor uint32 v_xor1385_1 v_xor1383_1 v_and1381_1;
(*   %add1386.1 = add i32 %xor1380.1, %xor1385.1 *)
adds discard_533 v_add1386_1 v_xor1380_1 v_xor1385_1;
(*   %add1387.1 = add i32 %add1369.1, %add1060.1 *)
adds discard_534 v_add1387_1 v_add1369_1 v_add1060_1;
(*   %add1388.1 = add i32 %add1386.1, %add1369.1 *)
adds discard_535 v_add1388_1 v_add1386_1 v_add1369_1;
(*   %116 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v116 arrayidx858_0;
(*   %shl1398.1 = shl i32 %116, 25 *)
shls discard_536 v_shl1398_1 v116 25;
(*   %shr1399.1 = lshr i32 %116, 7 *)
(* You may need to modify here *)
split v_shr1399_1 tmp_to_be_used v116 7;
(*   %or1400.1 = or i32 %shl1398.1, %shr1399.1 *)
(* You may need to modify here *)
or uint32 v_or1400_1 v_shl1398_1 v_shr1399_1;
(*   %shl1401.1 = shl i32 %116, 14 *)
shls discard_537 v_shl1401_1 v116 14;
(*   %shr1402.1 = lshr i32 %116, 18 *)
(* You may need to modify here *)
split v_shr1402_1 tmp_to_be_used v116 18;
(*   %or1403.1 = or i32 %shl1401.1, %shr1402.1 *)
(* You may need to modify here *)
or uint32 v_or1403_1 v_shl1401_1 v_shr1402_1;
(*   %shr1405.1 = lshr i32 %116, 3 *)
(* You may need to modify here *)
split v_shr1405_1 tmp_to_be_used v116 3;
(*   %xor1404.1 = xor i32 %or1403.1, %shr1405.1 *)
(* You may need to modify here *)
xor uint32 v_xor1404_1 v_or1403_1 v_shr1405_1;
(*   %xor1406.1 = xor i32 %xor1404.1, %or1400.1 *)
(* You may need to modify here *)
xor uint32 v_xor1406_1 v_xor1404_1 v_or1400_1;
(*   %117 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v117 arrayidx690_0;
(*   %shl1411.1 = shl i32 %117, 15 *)
shls discard_538 v_shl1411_1 v117 15;
(*   %shr1412.1 = lshr i32 %117, 17 *)
(* You may need to modify here *)
split v_shr1412_1 tmp_to_be_used v117 17;
(*   %or1413.1 = or i32 %shl1411.1, %shr1412.1 *)
(* You may need to modify here *)
or uint32 v_or1413_1 v_shl1411_1 v_shr1412_1;
(*   %shl1414.1 = shl i32 %117, 13 *)
shls discard_539 v_shl1414_1 v117 13;
(*   %shr1415.1 = lshr i32 %117, 19 *)
(* You may need to modify here *)
split v_shr1415_1 tmp_to_be_used v117 19;
(*   %or1416.1 = or i32 %shl1414.1, %shr1415.1 *)
(* You may need to modify here *)
or uint32 v_or1416_1 v_shl1414_1 v_shr1415_1;
(*   %shr1418.1 = lshr i32 %117, 10 *)
(* You may need to modify here *)
split v_shr1418_1 tmp_to_be_used v117 10;
(*   %xor1417.1 = xor i32 %or1416.1, %shr1418.1 *)
(* You may need to modify here *)
xor uint32 v_xor1417_1 v_or1416_1 v_shr1418_1;
(*   %xor1419.1 = xor i32 %xor1417.1, %or1413.1 *)
(* You may need to modify here *)
xor uint32 v_xor1419_1 v_xor1417_1 v_or1413_1;
(*   %118 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v118 arrayidx410_0;
(*   %add1420.1 = add i32 %113, %118 *)
adds discard_540 v_add1420_1 v113 v118;
(*   %add1425.1 = add i32 %add1420.1, %xor1406.1 *)
adds discard_541 v_add1425_1 v_add1420_1 v_xor1406_1;
(*   %add1429.1 = add i32 %add1425.1, %xor1419.1 *)
adds discard_542 v_add1429_1 v_add1425_1 v_xor1419_1;
(*   store i32 %add1429.1, i32* %arrayidx802, align 4, !tbaa !4 *)
mov arrayidx802_0 v_add1429_1;
(*   %shl1431.1 = shl i32 %add1387.1, 26 *)
shls discard_543 v_shl1431_1 v_add1387_1 26;
(*   %shr1432.1 = lshr i32 %add1387.1, 6 *)
(* You may need to modify here *)
split v_shr1432_1 tmp_to_be_used v_add1387_1 6;
(*   %or1433.1 = or i32 %shl1431.1, %shr1432.1 *)
(* You may need to modify here *)
or uint32 v_or1433_1 v_shl1431_1 v_shr1432_1;
(*   %shl1434.1 = shl i32 %add1387.1, 21 *)
shls discard_544 v_shl1434_1 v_add1387_1 21;
(*   %shr1435.1 = lshr i32 %add1387.1, 11 *)
(* You may need to modify here *)
split v_shr1435_1 tmp_to_be_used v_add1387_1 11;
(*   %or1436.1 = or i32 %shl1434.1, %shr1435.1 *)
(* You may need to modify here *)
or uint32 v_or1436_1 v_shl1434_1 v_shr1435_1;
(*   %xor1437.1 = xor i32 %or1433.1, %or1436.1 *)
(* You may need to modify here *)
xor uint32 v_xor1437_1 v_or1433_1 v_or1436_1;
(*   %shl1438.1 = shl i32 %add1387.1, 7 *)
shls discard_545 v_shl1438_1 v_add1387_1 7;
(*   %shr1439.1 = lshr i32 %add1387.1, 25 *)
(* You may need to modify here *)
split v_shr1439_1 tmp_to_be_used v_add1387_1 25;
(*   %or1440.1 = or i32 %shl1438.1, %shr1439.1 *)
(* You may need to modify here *)
or uint32 v_or1440_1 v_shl1438_1 v_shr1439_1;
(*   %xor1441.1 = xor i32 %xor1437.1, %or1440.1 *)
(* You may need to modify here *)
xor uint32 v_xor1441_1 v_xor1437_1 v_or1440_1;
(*   %and1443.1 = and i32 %add1387.1, %add1305.1 *)
(* You may need to modify here *)
and uint32 v_and1443_1 v_add1387_1 v_add1305_1;
(*   %neg1444.1 = xor i32 %add1387.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1444_1 v_add1387_1 (0xFFFFFFFF)@uint32;
(*   %and1445.1 = and i32 %add1223.1, %neg1444.1 *)
(* You may need to modify here *)
and uint32 v_and1445_1 v_add1223_1 v_neg1444_1;
(*   %xor1446.1 = or i32 %and1443.1, %and1445.1 *)
(* You may need to modify here *)
or uint32 v_xor1446_1 v_and1443_1 v_and1445_1;
(*   %add1442.1 = add i32 %add1141.1, 113926993 *)
adds discard_546 v_add1442_1 v_add1141_1 (113926993)@uint32;
(*   %add1447.1 = add i32 %add1442.1, %add1429.1 *)
adds discard_547 v_add1447_1 v_add1442_1 v_add1429_1;
(*   %add1450.1 = add i32 %add1447.1, %xor1446.1 *)
adds discard_548 v_add1450_1 v_add1447_1 v_xor1446_1;
(*   %add1451.1 = add i32 %add1450.1, %xor1441.1 *)
adds discard_549 v_add1451_1 v_add1450_1 v_xor1441_1;
(*   %shl1452.1 = shl i32 %add1388.1, 30 *)
shls discard_550 v_shl1452_1 v_add1388_1 30;
(*   %shr1453.1 = lshr i32 %add1388.1, 2 *)
(* You may need to modify here *)
split v_shr1453_1 tmp_to_be_used v_add1388_1 2;
(*   %or1454.1 = or i32 %shl1452.1, %shr1453.1 *)
(* You may need to modify here *)
or uint32 v_or1454_1 v_shl1452_1 v_shr1453_1;
(*   %shl1455.1 = shl i32 %add1388.1, 19 *)
shls discard_551 v_shl1455_1 v_add1388_1 19;
(*   %shr1456.1 = lshr i32 %add1388.1, 13 *)
(* You may need to modify here *)
split v_shr1456_1 tmp_to_be_used v_add1388_1 13;
(*   %or1457.1 = or i32 %shl1455.1, %shr1456.1 *)
(* You may need to modify here *)
or uint32 v_or1457_1 v_shl1455_1 v_shr1456_1;
(*   %xor1458.1 = xor i32 %or1454.1, %or1457.1 *)
(* You may need to modify here *)
xor uint32 v_xor1458_1 v_or1454_1 v_or1457_1;
(*   %shl1459.1 = shl i32 %add1388.1, 10 *)
shls discard_552 v_shl1459_1 v_add1388_1 10;
(*   %shr1460.1 = lshr i32 %add1388.1, 22 *)
(* You may need to modify here *)
split v_shr1460_1 tmp_to_be_used v_add1388_1 22;
(*   %or1461.1 = or i32 %shl1459.1, %shr1460.1 *)
(* You may need to modify here *)
or uint32 v_or1461_1 v_shl1459_1 v_shr1460_1;
(*   %xor1462.1 = xor i32 %xor1458.1, %or1461.1 *)
(* You may need to modify here *)
xor uint32 v_xor1462_1 v_xor1458_1 v_or1461_1;
(*   %and1463.1 = and i32 %add1388.1, %add1306.1 *)
(* You may need to modify here *)
and uint32 v_and1463_1 v_add1388_1 v_add1306_1;
(*   %and1464.1 = and i32 %add1388.1, %add1224.1 *)
(* You may need to modify here *)
and uint32 v_and1464_1 v_add1388_1 v_add1224_1;
(*   %xor1465.1 = xor i32 %and1464.1, %and1381.1 *)
(* You may need to modify here *)
xor uint32 v_xor1465_1 v_and1464_1 v_and1381_1;
(*   %xor1467.1 = xor i32 %xor1465.1, %and1463.1 *)
(* You may need to modify here *)
xor uint32 v_xor1467_1 v_xor1465_1 v_and1463_1;
(*   %add1468.1 = add i32 %xor1462.1, %xor1467.1 *)
adds discard_553 v_add1468_1 v_xor1462_1 v_xor1467_1;
(*   %add1469.1 = add i32 %add1451.1, %add1142.1 *)
adds discard_554 v_add1469_1 v_add1451_1 v_add1142_1;
(*   %add1470.1 = add i32 %add1468.1, %add1451.1 *)
adds discard_555 v_add1470_1 v_add1468_1 v_add1451_1;
(*   %119 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v119 arrayidx26_0;
(*   %shl1480.1 = shl i32 %119, 25 *)
shls discard_556 v_shl1480_1 v119 25;
(*   %shr1481.1 = lshr i32 %119, 7 *)
(* You may need to modify here *)
split v_shr1481_1 tmp_to_be_used v119 7;
(*   %or1482.1 = or i32 %shl1480.1, %shr1481.1 *)
(* You may need to modify here *)
or uint32 v_or1482_1 v_shl1480_1 v_shr1481_1;
(*   %shl1483.1 = shl i32 %119, 14 *)
shls discard_557 v_shl1483_1 v119 14;
(*   %shr1484.1 = lshr i32 %119, 18 *)
(* You may need to modify here *)
split v_shr1484_1 tmp_to_be_used v119 18;
(*   %or1485.1 = or i32 %shl1483.1, %shr1484.1 *)
(* You may need to modify here *)
or uint32 v_or1485_1 v_shl1483_1 v_shr1484_1;
(*   %shr1487.1 = lshr i32 %119, 3 *)
(* You may need to modify here *)
split v_shr1487_1 tmp_to_be_used v119 3;
(*   %xor1486.1 = xor i32 %or1485.1, %shr1487.1 *)
(* You may need to modify here *)
xor uint32 v_xor1486_1 v_or1485_1 v_shr1487_1;
(*   %xor1488.1 = xor i32 %xor1486.1, %or1482.1 *)
(* You may need to modify here *)
xor uint32 v_xor1488_1 v_xor1486_1 v_or1482_1;
(*   %120 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v120 arrayidx746_0;
(*   %shl1493.1 = shl i32 %120, 15 *)
shls discard_558 v_shl1493_1 v120 15;
(*   %shr1494.1 = lshr i32 %120, 17 *)
(* You may need to modify here *)
split v_shr1494_1 tmp_to_be_used v120 17;
(*   %or1495.1 = or i32 %shl1493.1, %shr1494.1 *)
(* You may need to modify here *)
or uint32 v_or1495_1 v_shl1493_1 v_shr1494_1;
(*   %shl1496.1 = shl i32 %120, 13 *)
shls discard_559 v_shl1496_1 v120 13;
(*   %shr1497.1 = lshr i32 %120, 19 *)
(* You may need to modify here *)
split v_shr1497_1 tmp_to_be_used v120 19;
(*   %or1498.1 = or i32 %shl1496.1, %shr1497.1 *)
(* You may need to modify here *)
or uint32 v_or1498_1 v_shl1496_1 v_shr1497_1;
(*   %shr1500.1 = lshr i32 %120, 10 *)
(* You may need to modify here *)
split v_shr1500_1 tmp_to_be_used v120 10;
(*   %xor1499.1 = xor i32 %or1498.1, %shr1500.1 *)
(* You may need to modify here *)
xor uint32 v_xor1499_1 v_or1498_1 v_shr1500_1;
(*   %xor1501.1 = xor i32 %xor1499.1, %or1495.1 *)
(* You may need to modify here *)
xor uint32 v_xor1501_1 v_xor1499_1 v_or1495_1;
(*   %121 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v121 arrayidx466_0;
(*   %add1502.1 = add i32 %116, %121 *)
adds discard_560 v_add1502_1 v116 v121;
(*   %add1507.1 = add i32 %add1502.1, %xor1488.1 *)
adds discard_561 v_add1507_1 v_add1502_1 v_xor1488_1;
(*   %add1511.1 = add i32 %add1507.1, %xor1501.1 *)
adds discard_562 v_add1511_1 v_add1507_1 v_xor1501_1;
(*   store i32 %add1511.1, i32* %arrayidx858, align 4, !tbaa !4 *)
mov arrayidx858_0 v_add1511_1;
(*   %shl1513.1 = shl i32 %add1469.1, 26 *)
shls discard_563 v_shl1513_1 v_add1469_1 26;
(*   %shr1514.1 = lshr i32 %add1469.1, 6 *)
(* You may need to modify here *)
split v_shr1514_1 tmp_to_be_used v_add1469_1 6;
(*   %or1515.1 = or i32 %shl1513.1, %shr1514.1 *)
(* You may need to modify here *)
or uint32 v_or1515_1 v_shl1513_1 v_shr1514_1;
(*   %shl1516.1 = shl i32 %add1469.1, 21 *)
shls discard_564 v_shl1516_1 v_add1469_1 21;
(*   %shr1517.1 = lshr i32 %add1469.1, 11 *)
(* You may need to modify here *)
split v_shr1517_1 tmp_to_be_used v_add1469_1 11;
(*   %or1518.1 = or i32 %shl1516.1, %shr1517.1 *)
(* You may need to modify here *)
or uint32 v_or1518_1 v_shl1516_1 v_shr1517_1;
(*   %xor1519.1 = xor i32 %or1515.1, %or1518.1 *)
(* You may need to modify here *)
xor uint32 v_xor1519_1 v_or1515_1 v_or1518_1;
(*   %shl1520.1 = shl i32 %add1469.1, 7 *)
shls discard_565 v_shl1520_1 v_add1469_1 7;
(*   %shr1521.1 = lshr i32 %add1469.1, 25 *)
(* You may need to modify here *)
split v_shr1521_1 tmp_to_be_used v_add1469_1 25;
(*   %or1522.1 = or i32 %shl1520.1, %shr1521.1 *)
(* You may need to modify here *)
or uint32 v_or1522_1 v_shl1520_1 v_shr1521_1;
(*   %xor1523.1 = xor i32 %xor1519.1, %or1522.1 *)
(* You may need to modify here *)
xor uint32 v_xor1523_1 v_xor1519_1 v_or1522_1;
(*   %and1525.1 = and i32 %add1469.1, %add1387.1 *)
(* You may need to modify here *)
and uint32 v_and1525_1 v_add1469_1 v_add1387_1;
(*   %neg1526.1 = xor i32 %add1469.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1526_1 v_add1469_1 (0xFFFFFFFF)@uint32;
(*   %and1527.1 = and i32 %add1305.1, %neg1526.1 *)
(* You may need to modify here *)
and uint32 v_and1527_1 v_add1305_1 v_neg1526_1;
(*   %xor1528.1 = or i32 %and1525.1, %and1527.1 *)
(* You may need to modify here *)
or uint32 v_xor1528_1 v_and1525_1 v_and1527_1;
(*   %add1524.1 = add i32 %add1223.1, 338241895 *)
adds discard_566 v_add1524_1 v_add1223_1 (338241895)@uint32;
(*   %add1529.1 = add i32 %add1524.1, %add1511.1 *)
adds discard_567 v_add1529_1 v_add1524_1 v_add1511_1;
(*   %add1532.1 = add i32 %add1529.1, %xor1528.1 *)
adds discard_568 v_add1532_1 v_add1529_1 v_xor1528_1;
(*   %add1533.1 = add i32 %add1532.1, %xor1523.1 *)
adds discard_569 v_add1533_1 v_add1532_1 v_xor1523_1;
(*   %shl1534.1 = shl i32 %add1470.1, 30 *)
shls discard_570 v_shl1534_1 v_add1470_1 30;
(*   %shr1535.1 = lshr i32 %add1470.1, 2 *)
(* You may need to modify here *)
split v_shr1535_1 tmp_to_be_used v_add1470_1 2;
(*   %or1536.1 = or i32 %shl1534.1, %shr1535.1 *)
(* You may need to modify here *)
or uint32 v_or1536_1 v_shl1534_1 v_shr1535_1;
(*   %shl1537.1 = shl i32 %add1470.1, 19 *)
shls discard_571 v_shl1537_1 v_add1470_1 19;
(*   %shr1538.1 = lshr i32 %add1470.1, 13 *)
(* You may need to modify here *)
split v_shr1538_1 tmp_to_be_used v_add1470_1 13;
(*   %or1539.1 = or i32 %shl1537.1, %shr1538.1 *)
(* You may need to modify here *)
or uint32 v_or1539_1 v_shl1537_1 v_shr1538_1;
(*   %xor1540.1 = xor i32 %or1536.1, %or1539.1 *)
(* You may need to modify here *)
xor uint32 v_xor1540_1 v_or1536_1 v_or1539_1;
(*   %shl1541.1 = shl i32 %add1470.1, 10 *)
shls discard_572 v_shl1541_1 v_add1470_1 10;
(*   %shr1542.1 = lshr i32 %add1470.1, 22 *)
(* You may need to modify here *)
split v_shr1542_1 tmp_to_be_used v_add1470_1 22;
(*   %or1543.1 = or i32 %shl1541.1, %shr1542.1 *)
(* You may need to modify here *)
or uint32 v_or1543_1 v_shl1541_1 v_shr1542_1;
(*   %xor1544.1 = xor i32 %xor1540.1, %or1543.1 *)
(* You may need to modify here *)
xor uint32 v_xor1544_1 v_xor1540_1 v_or1543_1;
(*   %and15462545.1 = xor i32 %add1388.1, %add1306.1 *)
(* You may need to modify here *)
xor uint32 v_and15462545_1 v_add1388_1 v_add1306_1;
(*   %xor1547.1 = and i32 %add1470.1, %and15462545.1 *)
(* You may need to modify here *)
and uint32 v_xor1547_1 v_add1470_1 v_and15462545_1;
(*   %xor1549.1 = xor i32 %xor1547.1, %and1463.1 *)
(* You may need to modify here *)
xor uint32 v_xor1549_1 v_xor1547_1 v_and1463_1;
(*   %add1550.1 = add i32 %xor1544.1, %xor1549.1 *)
adds discard_573 v_add1550_1 v_xor1544_1 v_xor1549_1;
(*   %add1551.1 = add i32 %add1533.1, %add1224.1 *)
adds discard_574 v_add1551_1 v_add1533_1 v_add1224_1;
(*   %add1552.1 = add i32 %add1550.1, %add1533.1 *)
adds discard_575 v_add1552_1 v_add1550_1 v_add1533_1;
(*   %122 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v122 arrayidx74_0;
(*   %shl906.2 = shl i32 %122, 25 *)
shls discard_576 v_shl906_2 v122 25;
(*   %shr907.2 = lshr i32 %122, 7 *)
(* You may need to modify here *)
split v_shr907_2 tmp_to_be_used v122 7;
(*   %or908.2 = or i32 %shl906.2, %shr907.2 *)
(* You may need to modify here *)
or uint32 v_or908_2 v_shl906_2 v_shr907_2;
(*   %shl909.2 = shl i32 %122, 14 *)
shls discard_577 v_shl909_2 v122 14;
(*   %shr910.2 = lshr i32 %122, 18 *)
(* You may need to modify here *)
split v_shr910_2 tmp_to_be_used v122 18;
(*   %or911.2 = or i32 %shl909.2, %shr910.2 *)
(* You may need to modify here *)
or uint32 v_or911_2 v_shl909_2 v_shr910_2;
(*   %shr913.2 = lshr i32 %122, 3 *)
(* You may need to modify here *)
split v_shr913_2 tmp_to_be_used v122 3;
(*   %xor912.2 = xor i32 %or911.2, %shr913.2 *)
(* You may need to modify here *)
xor uint32 v_xor912_2 v_or911_2 v_shr913_2;
(*   %xor914.2 = xor i32 %xor912.2, %or908.2 *)
(* You may need to modify here *)
xor uint32 v_xor914_2 v_xor912_2 v_or908_2;
(*   %123 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v123 arrayidx802_0;
(*   %shl919.2 = shl i32 %123, 15 *)
shls discard_578 v_shl919_2 v123 15;
(*   %shr920.2 = lshr i32 %123, 17 *)
(* You may need to modify here *)
split v_shr920_2 tmp_to_be_used v123 17;
(*   %or921.2 = or i32 %shl919.2, %shr920.2 *)
(* You may need to modify here *)
or uint32 v_or921_2 v_shl919_2 v_shr920_2;
(*   %shl922.2 = shl i32 %123, 13 *)
shls discard_579 v_shl922_2 v123 13;
(*   %shr923.2 = lshr i32 %123, 19 *)
(* You may need to modify here *)
split v_shr923_2 tmp_to_be_used v123 19;
(*   %or924.2 = or i32 %shl922.2, %shr923.2 *)
(* You may need to modify here *)
or uint32 v_or924_2 v_shl922_2 v_shr923_2;
(*   %shr926.2 = lshr i32 %123, 10 *)
(* You may need to modify here *)
split v_shr926_2 tmp_to_be_used v123 10;
(*   %xor925.2 = xor i32 %or924.2, %shr926.2 *)
(* You may need to modify here *)
xor uint32 v_xor925_2 v_or924_2 v_shr926_2;
(*   %xor927.2 = xor i32 %xor925.2, %or921.2 *)
(* You may need to modify here *)
xor uint32 v_xor927_2 v_xor925_2 v_or921_2;
(*   %124 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v124 arrayidx522_0;
(*   %add928.2 = add i32 %119, %124 *)
adds discard_580 v_add928_2 v119 v124;
(*   %add933.2 = add i32 %add928.2, %xor914.2 *)
adds discard_581 v_add933_2 v_add928_2 v_xor914_2;
(*   %add937.2 = add i32 %add933.2, %xor927.2 *)
adds discard_582 v_add937_2 v_add933_2 v_xor927_2;
(*   store i32 %add937.2, i32* %arrayidx26, align 4, !tbaa !4 *)
mov arrayidx26_0 v_add937_2;
(*   %shl939.2 = shl i32 %add1551.1, 26 *)
shls discard_583 v_shl939_2 v_add1551_1 26;
(*   %shr940.2 = lshr i32 %add1551.1, 6 *)
(* You may need to modify here *)
split v_shr940_2 tmp_to_be_used v_add1551_1 6;
(*   %or941.2 = or i32 %shl939.2, %shr940.2 *)
(* You may need to modify here *)
or uint32 v_or941_2 v_shl939_2 v_shr940_2;
(*   %shl942.2 = shl i32 %add1551.1, 21 *)
shls discard_584 v_shl942_2 v_add1551_1 21;
(*   %shr943.2 = lshr i32 %add1551.1, 11 *)
(* You may need to modify here *)
split v_shr943_2 tmp_to_be_used v_add1551_1 11;
(*   %or944.2 = or i32 %shl942.2, %shr943.2 *)
(* You may need to modify here *)
or uint32 v_or944_2 v_shl942_2 v_shr943_2;
(*   %xor945.2 = xor i32 %or941.2, %or944.2 *)
(* You may need to modify here *)
xor uint32 v_xor945_2 v_or941_2 v_or944_2;
(*   %shl946.2 = shl i32 %add1551.1, 7 *)
shls discard_585 v_shl946_2 v_add1551_1 7;
(*   %shr947.2 = lshr i32 %add1551.1, 25 *)
(* You may need to modify here *)
split v_shr947_2 tmp_to_be_used v_add1551_1 25;
(*   %or948.2 = or i32 %shl946.2, %shr947.2 *)
(* You may need to modify here *)
or uint32 v_or948_2 v_shl946_2 v_shr947_2;
(*   %xor949.2 = xor i32 %xor945.2, %or948.2 *)
(* You may need to modify here *)
xor uint32 v_xor949_2 v_xor945_2 v_or948_2;
(*   %add950.2 = add i32 %xor949.2, %add1305.1 *)
adds discard_586 v_add950_2 v_xor949_2 v_add1305_1;
(*   %and951.2 = and i32 %add1469.1, %add1551.1 *)
(* You may need to modify here *)
and uint32 v_and951_2 v_add1469_1 v_add1551_1;
(*   %neg952.2 = xor i32 %add1551.1, -1 *)
(* You may need to modify here *)
xor uint32 v_neg952_2 v_add1551_1 (0xFFFFFFFF)@uint32;
(*   %and953.2 = and i32 %add1387.1, %neg952.2 *)
(* You may need to modify here *)
and uint32 v_and953_2 v_add1387_1 v_neg952_2;
(*   %xor954.2 = or i32 %and953.2, %and951.2 *)
(* You may need to modify here *)
or uint32 v_xor954_2 v_and953_2 v_and951_2;
(*   %add955.2 = add i32 %add950.2, %xor954.2 *)
adds discard_587 v_add955_2 v_add950_2 v_xor954_2;
(*   %add958.2 = add i32 %add955.2, 666307205 *)
adds discard_588 v_add958_2 v_add955_2 (666307205)@uint32;
(*   %add959.2 = add i32 %add958.2, %add937.2 *)
adds discard_589 v_add959_2 v_add958_2 v_add937_2;
(*   %shl960.2 = shl i32 %add1552.1, 30 *)
shls discard_590 v_shl960_2 v_add1552_1 30;
(*   %shr961.2 = lshr i32 %add1552.1, 2 *)
(* You may need to modify here *)
split v_shr961_2 tmp_to_be_used v_add1552_1 2;
(*   %or962.2 = or i32 %shl960.2, %shr961.2 *)
(* You may need to modify here *)
or uint32 v_or962_2 v_shl960_2 v_shr961_2;
(*   %shl963.2 = shl i32 %add1552.1, 19 *)
shls discard_591 v_shl963_2 v_add1552_1 19;
(*   %shr964.2 = lshr i32 %add1552.1, 13 *)
(* You may need to modify here *)
split v_shr964_2 tmp_to_be_used v_add1552_1 13;
(*   %or965.2 = or i32 %shl963.2, %shr964.2 *)
(* You may need to modify here *)
or uint32 v_or965_2 v_shl963_2 v_shr964_2;
(*   %xor966.2 = xor i32 %or962.2, %or965.2 *)
(* You may need to modify here *)
xor uint32 v_xor966_2 v_or962_2 v_or965_2;
(*   %shl967.2 = shl i32 %add1552.1, 10 *)
shls discard_592 v_shl967_2 v_add1552_1 10;
(*   %shr968.2 = lshr i32 %add1552.1, 22 *)
(* You may need to modify here *)
split v_shr968_2 tmp_to_be_used v_add1552_1 22;
(*   %or969.2 = or i32 %shl967.2, %shr968.2 *)
(* You may need to modify here *)
or uint32 v_or969_2 v_shl967_2 v_shr968_2;
(*   %xor970.2 = xor i32 %xor966.2, %or969.2 *)
(* You may need to modify here *)
xor uint32 v_xor970_2 v_xor966_2 v_or969_2;
(*   %and971.2 = and i32 %add1552.1, %add1470.1 *)
(* You may need to modify here *)
and uint32 v_and971_2 v_add1552_1 v_add1470_1;
(*   %and9722559.2 = xor i32 %add1552.1, %add1470.1 *)
(* You may need to modify here *)
xor uint32 v_and9722559_2 v_add1552_1 v_add1470_1;
(*   %xor973.2 = and i32 %and9722559.2, %add1388.1 *)
(* You may need to modify here *)
and uint32 v_xor973_2 v_and9722559_2 v_add1388_1;
(*   %xor975.2 = xor i32 %xor973.2, %and971.2 *)
(* You may need to modify here *)
xor uint32 v_xor975_2 v_xor973_2 v_and971_2;
(*   %add976.2 = add i32 %xor970.2, %xor975.2 *)
adds discard_593 v_add976_2 v_xor970_2 v_xor975_2;
(*   %add977.2 = add i32 %add959.2, %add1306.1 *)
adds discard_594 v_add977_2 v_add959_2 v_add1306_1;
(*   %add978.2 = add i32 %add976.2, %add959.2 *)
adds discard_595 v_add978_2 v_add976_2 v_add959_2;
(*   %125 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v125 arrayidx130_0;
(*   %shl988.2 = shl i32 %125, 25 *)
shls discard_596 v_shl988_2 v125 25;
(*   %shr989.2 = lshr i32 %125, 7 *)
(* You may need to modify here *)
split v_shr989_2 tmp_to_be_used v125 7;
(*   %or990.2 = or i32 %shl988.2, %shr989.2 *)
(* You may need to modify here *)
or uint32 v_or990_2 v_shl988_2 v_shr989_2;
(*   %shl991.2 = shl i32 %125, 14 *)
shls discard_597 v_shl991_2 v125 14;
(*   %shr992.2 = lshr i32 %125, 18 *)
(* You may need to modify here *)
split v_shr992_2 tmp_to_be_used v125 18;
(*   %or993.2 = or i32 %shl991.2, %shr992.2 *)
(* You may need to modify here *)
or uint32 v_or993_2 v_shl991_2 v_shr992_2;
(*   %shr995.2 = lshr i32 %125, 3 *)
(* You may need to modify here *)
split v_shr995_2 tmp_to_be_used v125 3;
(*   %xor994.2 = xor i32 %or993.2, %shr995.2 *)
(* You may need to modify here *)
xor uint32 v_xor994_2 v_or993_2 v_shr995_2;
(*   %xor996.2 = xor i32 %xor994.2, %or990.2 *)
(* You may need to modify here *)
xor uint32 v_xor996_2 v_xor994_2 v_or990_2;
(*   %126 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v126 arrayidx858_0;
(*   %shl1001.2 = shl i32 %126, 15 *)
shls discard_598 v_shl1001_2 v126 15;
(*   %shr1002.2 = lshr i32 %126, 17 *)
(* You may need to modify here *)
split v_shr1002_2 tmp_to_be_used v126 17;
(*   %or1003.2 = or i32 %shl1001.2, %shr1002.2 *)
(* You may need to modify here *)
or uint32 v_or1003_2 v_shl1001_2 v_shr1002_2;
(*   %shl1004.2 = shl i32 %126, 13 *)
shls discard_599 v_shl1004_2 v126 13;
(*   %shr1005.2 = lshr i32 %126, 19 *)
(* You may need to modify here *)
split v_shr1005_2 tmp_to_be_used v126 19;
(*   %or1006.2 = or i32 %shl1004.2, %shr1005.2 *)
(* You may need to modify here *)
or uint32 v_or1006_2 v_shl1004_2 v_shr1005_2;
(*   %shr1008.2 = lshr i32 %126, 10 *)
(* You may need to modify here *)
split v_shr1008_2 tmp_to_be_used v126 10;
(*   %xor1007.2 = xor i32 %or1006.2, %shr1008.2 *)
(* You may need to modify here *)
xor uint32 v_xor1007_2 v_or1006_2 v_shr1008_2;
(*   %xor1009.2 = xor i32 %xor1007.2, %or1003.2 *)
(* You may need to modify here *)
xor uint32 v_xor1009_2 v_xor1007_2 v_or1003_2;
(*   %127 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v127 arrayidx578_0;
(*   %add1010.2 = add i32 %127, %122 *)
adds discard_600 v_add1010_2 v127 v122;
(*   %add1015.2 = add i32 %add1010.2, %xor996.2 *)
adds discard_601 v_add1015_2 v_add1010_2 v_xor996_2;
(*   %add1019.2 = add i32 %add1015.2, %xor1009.2 *)
adds discard_602 v_add1019_2 v_add1015_2 v_xor1009_2;
(*   store i32 %add1019.2, i32* %arrayidx74, align 4, !tbaa !4 *)
mov arrayidx74_0 v_add1019_2;
(*   %shl1021.2 = shl i32 %add977.2, 26 *)
shls discard_603 v_shl1021_2 v_add977_2 26;
(*   %shr1022.2 = lshr i32 %add977.2, 6 *)
(* You may need to modify here *)
split v_shr1022_2 tmp_to_be_used v_add977_2 6;
(*   %or1023.2 = or i32 %shl1021.2, %shr1022.2 *)
(* You may need to modify here *)
or uint32 v_or1023_2 v_shl1021_2 v_shr1022_2;
(*   %shl1024.2 = shl i32 %add977.2, 21 *)
shls discard_604 v_shl1024_2 v_add977_2 21;
(*   %shr1025.2 = lshr i32 %add977.2, 11 *)
(* You may need to modify here *)
split v_shr1025_2 tmp_to_be_used v_add977_2 11;
(*   %or1026.2 = or i32 %shl1024.2, %shr1025.2 *)
(* You may need to modify here *)
or uint32 v_or1026_2 v_shl1024_2 v_shr1025_2;
(*   %xor1027.2 = xor i32 %or1023.2, %or1026.2 *)
(* You may need to modify here *)
xor uint32 v_xor1027_2 v_or1023_2 v_or1026_2;
(*   %shl1028.2 = shl i32 %add977.2, 7 *)
shls discard_605 v_shl1028_2 v_add977_2 7;
(*   %shr1029.2 = lshr i32 %add977.2, 25 *)
(* You may need to modify here *)
split v_shr1029_2 tmp_to_be_used v_add977_2 25;
(*   %or1030.2 = or i32 %shl1028.2, %shr1029.2 *)
(* You may need to modify here *)
or uint32 v_or1030_2 v_shl1028_2 v_shr1029_2;
(*   %xor1031.2 = xor i32 %xor1027.2, %or1030.2 *)
(* You may need to modify here *)
xor uint32 v_xor1031_2 v_xor1027_2 v_or1030_2;
(*   %and1033.2 = and i32 %add977.2, %add1551.1 *)
(* You may need to modify here *)
and uint32 v_and1033_2 v_add977_2 v_add1551_1;
(*   %neg1034.2 = xor i32 %add977.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1034_2 v_add977_2 (0xFFFFFFFF)@uint32;
(*   %and1035.2 = and i32 %add1469.1, %neg1034.2 *)
(* You may need to modify here *)
and uint32 v_and1035_2 v_add1469_1 v_neg1034_2;
(*   %xor1036.2 = or i32 %and1033.2, %and1035.2 *)
(* You may need to modify here *)
or uint32 v_xor1036_2 v_and1033_2 v_and1035_2;
(*   %add1032.2 = add i32 %add1387.1, 773529912 *)
adds discard_606 v_add1032_2 v_add1387_1 (773529912)@uint32;
(*   %add1037.2 = add i32 %add1032.2, %xor1036.2 *)
adds discard_607 v_add1037_2 v_add1032_2 v_xor1036_2;
(*   %add1040.2 = add i32 %add1037.2, %xor1031.2 *)
adds discard_608 v_add1040_2 v_add1037_2 v_xor1031_2;
(*   %add1041.2 = add i32 %add1040.2, %add1019.2 *)
adds discard_609 v_add1041_2 v_add1040_2 v_add1019_2;
(*   %shl1042.2 = shl i32 %add978.2, 30 *)
shls discard_610 v_shl1042_2 v_add978_2 30;
(*   %shr1043.2 = lshr i32 %add978.2, 2 *)
(* You may need to modify here *)
split v_shr1043_2 tmp_to_be_used v_add978_2 2;
(*   %or1044.2 = or i32 %shl1042.2, %shr1043.2 *)
(* You may need to modify here *)
or uint32 v_or1044_2 v_shl1042_2 v_shr1043_2;
(*   %shl1045.2 = shl i32 %add978.2, 19 *)
shls discard_611 v_shl1045_2 v_add978_2 19;
(*   %shr1046.2 = lshr i32 %add978.2, 13 *)
(* You may need to modify here *)
split v_shr1046_2 tmp_to_be_used v_add978_2 13;
(*   %or1047.2 = or i32 %shl1045.2, %shr1046.2 *)
(* You may need to modify here *)
or uint32 v_or1047_2 v_shl1045_2 v_shr1046_2;
(*   %xor1048.2 = xor i32 %or1044.2, %or1047.2 *)
(* You may need to modify here *)
xor uint32 v_xor1048_2 v_or1044_2 v_or1047_2;
(*   %shl1049.2 = shl i32 %add978.2, 10 *)
shls discard_612 v_shl1049_2 v_add978_2 10;
(*   %shr1050.2 = lshr i32 %add978.2, 22 *)
(* You may need to modify here *)
split v_shr1050_2 tmp_to_be_used v_add978_2 22;
(*   %or1051.2 = or i32 %shl1049.2, %shr1050.2 *)
(* You may need to modify here *)
or uint32 v_or1051_2 v_shl1049_2 v_shr1050_2;
(*   %xor1052.2 = xor i32 %xor1048.2, %or1051.2 *)
(* You may need to modify here *)
xor uint32 v_xor1052_2 v_xor1048_2 v_or1051_2;
(*   %and1053.2 = and i32 %add978.2, %add1552.1 *)
(* You may need to modify here *)
and uint32 v_and1053_2 v_add978_2 v_add1552_1;
(*   %and1054.2 = and i32 %add978.2, %add1470.1 *)
(* You may need to modify here *)
and uint32 v_and1054_2 v_add978_2 v_add1470_1;
(*   %xor1055.2 = xor i32 %and1054.2, %and971.2 *)
(* You may need to modify here *)
xor uint32 v_xor1055_2 v_and1054_2 v_and971_2;
(*   %xor1057.2 = xor i32 %xor1055.2, %and1053.2 *)
(* You may need to modify here *)
xor uint32 v_xor1057_2 v_xor1055_2 v_and1053_2;
(*   %add1058.2 = add i32 %xor1052.2, %xor1057.2 *)
adds discard_613 v_add1058_2 v_xor1052_2 v_xor1057_2;
(*   %add1059.2 = add i32 %add1041.2, %add1388.1 *)
adds discard_614 v_add1059_2 v_add1041_2 v_add1388_1;
(*   %add1060.2 = add i32 %add1058.2, %add1041.2 *)
adds discard_615 v_add1060_2 v_add1058_2 v_add1041_2;
(*   %128 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v128 arrayidx186_0;
(*   %shl1070.2 = shl i32 %128, 25 *)
shls discard_616 v_shl1070_2 v128 25;
(*   %shr1071.2 = lshr i32 %128, 7 *)
(* You may need to modify here *)
split v_shr1071_2 tmp_to_be_used v128 7;
(*   %or1072.2 = or i32 %shl1070.2, %shr1071.2 *)
(* You may need to modify here *)
or uint32 v_or1072_2 v_shl1070_2 v_shr1071_2;
(*   %shl1073.2 = shl i32 %128, 14 *)
shls discard_617 v_shl1073_2 v128 14;
(*   %shr1074.2 = lshr i32 %128, 18 *)
(* You may need to modify here *)
split v_shr1074_2 tmp_to_be_used v128 18;
(*   %or1075.2 = or i32 %shl1073.2, %shr1074.2 *)
(* You may need to modify here *)
or uint32 v_or1075_2 v_shl1073_2 v_shr1074_2;
(*   %shr1077.2 = lshr i32 %128, 3 *)
(* You may need to modify here *)
split v_shr1077_2 tmp_to_be_used v128 3;
(*   %xor1076.2 = xor i32 %or1075.2, %shr1077.2 *)
(* You may need to modify here *)
xor uint32 v_xor1076_2 v_or1075_2 v_shr1077_2;
(*   %xor1078.2 = xor i32 %xor1076.2, %or1072.2 *)
(* You may need to modify here *)
xor uint32 v_xor1078_2 v_xor1076_2 v_or1072_2;
(*   %129 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v129 arrayidx26_0;
(*   %shl1083.2 = shl i32 %129, 15 *)
shls discard_618 v_shl1083_2 v129 15;
(*   %shr1084.2 = lshr i32 %129, 17 *)
(* You may need to modify here *)
split v_shr1084_2 tmp_to_be_used v129 17;
(*   %or1085.2 = or i32 %shl1083.2, %shr1084.2 *)
(* You may need to modify here *)
or uint32 v_or1085_2 v_shl1083_2 v_shr1084_2;
(*   %shl1086.2 = shl i32 %129, 13 *)
shls discard_619 v_shl1086_2 v129 13;
(*   %shr1087.2 = lshr i32 %129, 19 *)
(* You may need to modify here *)
split v_shr1087_2 tmp_to_be_used v129 19;
(*   %or1088.2 = or i32 %shl1086.2, %shr1087.2 *)
(* You may need to modify here *)
or uint32 v_or1088_2 v_shl1086_2 v_shr1087_2;
(*   %shr1090.2 = lshr i32 %129, 10 *)
(* You may need to modify here *)
split v_shr1090_2 tmp_to_be_used v129 10;
(*   %xor1089.2 = xor i32 %or1088.2, %shr1090.2 *)
(* You may need to modify here *)
xor uint32 v_xor1089_2 v_or1088_2 v_shr1090_2;
(*   %xor1091.2 = xor i32 %xor1089.2, %or1085.2 *)
(* You may need to modify here *)
xor uint32 v_xor1091_2 v_xor1089_2 v_or1085_2;
(*   %130 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v130 arrayidx634_0;
(*   %add1092.2 = add i32 %125, %130 *)
adds discard_620 v_add1092_2 v125 v130;
(*   %add1097.2 = add i32 %add1092.2, %xor1078.2 *)
adds discard_621 v_add1097_2 v_add1092_2 v_xor1078_2;
(*   %add1101.2 = add i32 %add1097.2, %xor1091.2 *)
adds discard_622 v_add1101_2 v_add1097_2 v_xor1091_2;
(*   store i32 %add1101.2, i32* %arrayidx130, align 4, !tbaa !4 *)
mov arrayidx130_0 v_add1101_2;
(*   %shl1103.2 = shl i32 %add1059.2, 26 *)
shls discard_623 v_shl1103_2 v_add1059_2 26;
(*   %shr1104.2 = lshr i32 %add1059.2, 6 *)
(* You may need to modify here *)
split v_shr1104_2 tmp_to_be_used v_add1059_2 6;
(*   %or1105.2 = or i32 %shl1103.2, %shr1104.2 *)
(* You may need to modify here *)
or uint32 v_or1105_2 v_shl1103_2 v_shr1104_2;
(*   %shl1106.2 = shl i32 %add1059.2, 21 *)
shls discard_624 v_shl1106_2 v_add1059_2 21;
(*   %shr1107.2 = lshr i32 %add1059.2, 11 *)
(* You may need to modify here *)
split v_shr1107_2 tmp_to_be_used v_add1059_2 11;
(*   %or1108.2 = or i32 %shl1106.2, %shr1107.2 *)
(* You may need to modify here *)
or uint32 v_or1108_2 v_shl1106_2 v_shr1107_2;
(*   %xor1109.2 = xor i32 %or1105.2, %or1108.2 *)
(* You may need to modify here *)
xor uint32 v_xor1109_2 v_or1105_2 v_or1108_2;
(*   %shl1110.2 = shl i32 %add1059.2, 7 *)
shls discard_625 v_shl1110_2 v_add1059_2 7;
(*   %shr1111.2 = lshr i32 %add1059.2, 25 *)
(* You may need to modify here *)
split v_shr1111_2 tmp_to_be_used v_add1059_2 25;
(*   %or1112.2 = or i32 %shl1110.2, %shr1111.2 *)
(* You may need to modify here *)
or uint32 v_or1112_2 v_shl1110_2 v_shr1111_2;
(*   %xor1113.2 = xor i32 %xor1109.2, %or1112.2 *)
(* You may need to modify here *)
xor uint32 v_xor1113_2 v_xor1109_2 v_or1112_2;
(*   %and1115.2 = and i32 %add1059.2, %add977.2 *)
(* You may need to modify here *)
and uint32 v_and1115_2 v_add1059_2 v_add977_2;
(*   %neg1116.2 = xor i32 %add1059.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1116_2 v_add1059_2 (0xFFFFFFFF)@uint32;
(*   %and1117.2 = and i32 %add1551.1, %neg1116.2 *)
(* You may need to modify here *)
and uint32 v_and1117_2 v_add1551_1 v_neg1116_2;
(*   %xor1118.2 = or i32 %and1115.2, %and1117.2 *)
(* You may need to modify here *)
or uint32 v_xor1118_2 v_and1115_2 v_and1117_2;
(*   %add1114.2 = add i32 %add1469.1, 1294757372 *)
adds discard_626 v_add1114_2 v_add1469_1 (1294757372)@uint32;
(*   %add1119.2 = add i32 %add1114.2, %add1101.2 *)
adds discard_627 v_add1119_2 v_add1114_2 v_add1101_2;
(*   %add1122.2 = add i32 %add1119.2, %xor1118.2 *)
adds discard_628 v_add1122_2 v_add1119_2 v_xor1118_2;
(*   %add1123.2 = add i32 %add1122.2, %xor1113.2 *)
adds discard_629 v_add1123_2 v_add1122_2 v_xor1113_2;
(*   %shl1124.2 = shl i32 %add1060.2, 30 *)
shls discard_630 v_shl1124_2 v_add1060_2 30;
(*   %shr1125.2 = lshr i32 %add1060.2, 2 *)
(* You may need to modify here *)
split v_shr1125_2 tmp_to_be_used v_add1060_2 2;
(*   %or1126.2 = or i32 %shl1124.2, %shr1125.2 *)
(* You may need to modify here *)
or uint32 v_or1126_2 v_shl1124_2 v_shr1125_2;
(*   %shl1127.2 = shl i32 %add1060.2, 19 *)
shls discard_631 v_shl1127_2 v_add1060_2 19;
(*   %shr1128.2 = lshr i32 %add1060.2, 13 *)
(* You may need to modify here *)
split v_shr1128_2 tmp_to_be_used v_add1060_2 13;
(*   %or1129.2 = or i32 %shl1127.2, %shr1128.2 *)
(* You may need to modify here *)
or uint32 v_or1129_2 v_shl1127_2 v_shr1128_2;
(*   %xor1130.2 = xor i32 %or1126.2, %or1129.2 *)
(* You may need to modify here *)
xor uint32 v_xor1130_2 v_or1126_2 v_or1129_2;
(*   %shl1131.2 = shl i32 %add1060.2, 10 *)
shls discard_632 v_shl1131_2 v_add1060_2 10;
(*   %shr1132.2 = lshr i32 %add1060.2, 22 *)
(* You may need to modify here *)
split v_shr1132_2 tmp_to_be_used v_add1060_2 22;
(*   %or1133.2 = or i32 %shl1131.2, %shr1132.2 *)
(* You may need to modify here *)
or uint32 v_or1133_2 v_shl1131_2 v_shr1132_2;
(*   %xor1134.2 = xor i32 %xor1130.2, %or1133.2 *)
(* You may need to modify here *)
xor uint32 v_xor1134_2 v_xor1130_2 v_or1133_2;
(*   %and1135.2 = and i32 %add1060.2, %add978.2 *)
(* You may need to modify here *)
and uint32 v_and1135_2 v_add1060_2 v_add978_2;
(*   %and1136.2 = and i32 %add1060.2, %add1552.1 *)
(* You may need to modify here *)
and uint32 v_and1136_2 v_add1060_2 v_add1552_1;
(*   %xor1137.2 = xor i32 %and1136.2, %and1053.2 *)
(* You may need to modify here *)
xor uint32 v_xor1137_2 v_and1136_2 v_and1053_2;
(*   %xor1139.2 = xor i32 %xor1137.2, %and1135.2 *)
(* You may need to modify here *)
xor uint32 v_xor1139_2 v_xor1137_2 v_and1135_2;
(*   %add1140.2 = add i32 %xor1134.2, %xor1139.2 *)
adds discard_633 v_add1140_2 v_xor1134_2 v_xor1139_2;
(*   %add1141.2 = add i32 %add1123.2, %add1470.1 *)
adds discard_634 v_add1141_2 v_add1123_2 v_add1470_1;
(*   %add1142.2 = add i32 %add1140.2, %add1123.2 *)
adds discard_635 v_add1142_2 v_add1140_2 v_add1123_2;
(*   %131 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v131 arrayidx242_0;
(*   %shl1152.2 = shl i32 %131, 25 *)
shls discard_636 v_shl1152_2 v131 25;
(*   %shr1153.2 = lshr i32 %131, 7 *)
(* You may need to modify here *)
split v_shr1153_2 tmp_to_be_used v131 7;
(*   %or1154.2 = or i32 %shl1152.2, %shr1153.2 *)
(* You may need to modify here *)
or uint32 v_or1154_2 v_shl1152_2 v_shr1153_2;
(*   %shl1155.2 = shl i32 %131, 14 *)
shls discard_637 v_shl1155_2 v131 14;
(*   %shr1156.2 = lshr i32 %131, 18 *)
(* You may need to modify here *)
split v_shr1156_2 tmp_to_be_used v131 18;
(*   %or1157.2 = or i32 %shl1155.2, %shr1156.2 *)
(* You may need to modify here *)
or uint32 v_or1157_2 v_shl1155_2 v_shr1156_2;
(*   %shr1159.2 = lshr i32 %131, 3 *)
(* You may need to modify here *)
split v_shr1159_2 tmp_to_be_used v131 3;
(*   %xor1158.2 = xor i32 %or1157.2, %shr1159.2 *)
(* You may need to modify here *)
xor uint32 v_xor1158_2 v_or1157_2 v_shr1159_2;
(*   %xor1160.2 = xor i32 %xor1158.2, %or1154.2 *)
(* You may need to modify here *)
xor uint32 v_xor1160_2 v_xor1158_2 v_or1154_2;
(*   %132 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v132 arrayidx74_0;
(*   %shl1165.2 = shl i32 %132, 15 *)
shls discard_638 v_shl1165_2 v132 15;
(*   %shr1166.2 = lshr i32 %132, 17 *)
(* You may need to modify here *)
split v_shr1166_2 tmp_to_be_used v132 17;
(*   %or1167.2 = or i32 %shl1165.2, %shr1166.2 *)
(* You may need to modify here *)
or uint32 v_or1167_2 v_shl1165_2 v_shr1166_2;
(*   %shl1168.2 = shl i32 %132, 13 *)
shls discard_639 v_shl1168_2 v132 13;
(*   %shr1169.2 = lshr i32 %132, 19 *)
(* You may need to modify here *)
split v_shr1169_2 tmp_to_be_used v132 19;
(*   %or1170.2 = or i32 %shl1168.2, %shr1169.2 *)
(* You may need to modify here *)
or uint32 v_or1170_2 v_shl1168_2 v_shr1169_2;
(*   %shr1172.2 = lshr i32 %132, 10 *)
(* You may need to modify here *)
split v_shr1172_2 tmp_to_be_used v132 10;
(*   %xor1171.2 = xor i32 %or1170.2, %shr1172.2 *)
(* You may need to modify here *)
xor uint32 v_xor1171_2 v_or1170_2 v_shr1172_2;
(*   %xor1173.2 = xor i32 %xor1171.2, %or1167.2 *)
(* You may need to modify here *)
xor uint32 v_xor1173_2 v_xor1171_2 v_or1167_2;
(*   %133 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v133 arrayidx690_0;
(*   %add1174.2 = add i32 %128, %133 *)
adds discard_640 v_add1174_2 v128 v133;
(*   %add1179.2 = add i32 %add1174.2, %xor1160.2 *)
adds discard_641 v_add1179_2 v_add1174_2 v_xor1160_2;
(*   %add1183.2 = add i32 %add1179.2, %xor1173.2 *)
adds discard_642 v_add1183_2 v_add1179_2 v_xor1173_2;
(*   store i32 %add1183.2, i32* %arrayidx186, align 4, !tbaa !4 *)
mov arrayidx186_0 v_add1183_2;
(*   %shl1185.2 = shl i32 %add1141.2, 26 *)
shls discard_643 v_shl1185_2 v_add1141_2 26;
(*   %shr1186.2 = lshr i32 %add1141.2, 6 *)
(* You may need to modify here *)
split v_shr1186_2 tmp_to_be_used v_add1141_2 6;
(*   %or1187.2 = or i32 %shl1185.2, %shr1186.2 *)
(* You may need to modify here *)
or uint32 v_or1187_2 v_shl1185_2 v_shr1186_2;
(*   %shl1188.2 = shl i32 %add1141.2, 21 *)
shls discard_644 v_shl1188_2 v_add1141_2 21;
(*   %shr1189.2 = lshr i32 %add1141.2, 11 *)
(* You may need to modify here *)
split v_shr1189_2 tmp_to_be_used v_add1141_2 11;
(*   %or1190.2 = or i32 %shl1188.2, %shr1189.2 *)
(* You may need to modify here *)
or uint32 v_or1190_2 v_shl1188_2 v_shr1189_2;
(*   %xor1191.2 = xor i32 %or1187.2, %or1190.2 *)
(* You may need to modify here *)
xor uint32 v_xor1191_2 v_or1187_2 v_or1190_2;
(*   %shl1192.2 = shl i32 %add1141.2, 7 *)
shls discard_645 v_shl1192_2 v_add1141_2 7;
(*   %shr1193.2 = lshr i32 %add1141.2, 25 *)
(* You may need to modify here *)
split v_shr1193_2 tmp_to_be_used v_add1141_2 25;
(*   %or1194.2 = or i32 %shl1192.2, %shr1193.2 *)
(* You may need to modify here *)
or uint32 v_or1194_2 v_shl1192_2 v_shr1193_2;
(*   %xor1195.2 = xor i32 %xor1191.2, %or1194.2 *)
(* You may need to modify here *)
xor uint32 v_xor1195_2 v_xor1191_2 v_or1194_2;
(*   %and1197.2 = and i32 %add1141.2, %add1059.2 *)
(* You may need to modify here *)
and uint32 v_and1197_2 v_add1141_2 v_add1059_2;
(*   %neg1198.2 = xor i32 %add1141.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1198_2 v_add1141_2 (0xFFFFFFFF)@uint32;
(*   %and1199.2 = and i32 %add977.2, %neg1198.2 *)
(* You may need to modify here *)
and uint32 v_and1199_2 v_add977_2 v_neg1198_2;
(*   %xor1200.2 = or i32 %and1197.2, %and1199.2 *)
(* You may need to modify here *)
or uint32 v_xor1200_2 v_and1197_2 v_and1199_2;
(*   %add1196.2 = add i32 %add1551.1, 1396182291 *)
adds discard_646 v_add1196_2 v_add1551_1 (1396182291)@uint32;
(*   %add1201.2 = add i32 %add1196.2, %add1183.2 *)
adds discard_647 v_add1201_2 v_add1196_2 v_add1183_2;
(*   %add1204.2 = add i32 %add1201.2, %xor1200.2 *)
adds discard_648 v_add1204_2 v_add1201_2 v_xor1200_2;
(*   %add1205.2 = add i32 %add1204.2, %xor1195.2 *)
adds discard_649 v_add1205_2 v_add1204_2 v_xor1195_2;
(*   %shl1206.2 = shl i32 %add1142.2, 30 *)
shls discard_650 v_shl1206_2 v_add1142_2 30;
(*   %shr1207.2 = lshr i32 %add1142.2, 2 *)
(* You may need to modify here *)
split v_shr1207_2 tmp_to_be_used v_add1142_2 2;
(*   %or1208.2 = or i32 %shl1206.2, %shr1207.2 *)
(* You may need to modify here *)
or uint32 v_or1208_2 v_shl1206_2 v_shr1207_2;
(*   %shl1209.2 = shl i32 %add1142.2, 19 *)
shls discard_651 v_shl1209_2 v_add1142_2 19;
(*   %shr1210.2 = lshr i32 %add1142.2, 13 *)
(* You may need to modify here *)
split v_shr1210_2 tmp_to_be_used v_add1142_2 13;
(*   %or1211.2 = or i32 %shl1209.2, %shr1210.2 *)
(* You may need to modify here *)
or uint32 v_or1211_2 v_shl1209_2 v_shr1210_2;
(*   %xor1212.2 = xor i32 %or1208.2, %or1211.2 *)
(* You may need to modify here *)
xor uint32 v_xor1212_2 v_or1208_2 v_or1211_2;
(*   %shl1213.2 = shl i32 %add1142.2, 10 *)
shls discard_652 v_shl1213_2 v_add1142_2 10;
(*   %shr1214.2 = lshr i32 %add1142.2, 22 *)
(* You may need to modify here *)
split v_shr1214_2 tmp_to_be_used v_add1142_2 22;
(*   %or1215.2 = or i32 %shl1213.2, %shr1214.2 *)
(* You may need to modify here *)
or uint32 v_or1215_2 v_shl1213_2 v_shr1214_2;
(*   %xor1216.2 = xor i32 %xor1212.2, %or1215.2 *)
(* You may need to modify here *)
xor uint32 v_xor1216_2 v_xor1212_2 v_or1215_2;
(*   %and1217.2 = and i32 %add1142.2, %add1060.2 *)
(* You may need to modify here *)
and uint32 v_and1217_2 v_add1142_2 v_add1060_2;
(*   %and1218.2 = and i32 %add1142.2, %add978.2 *)
(* You may need to modify here *)
and uint32 v_and1218_2 v_add1142_2 v_add978_2;
(*   %xor1219.2 = xor i32 %and1218.2, %and1135.2 *)
(* You may need to modify here *)
xor uint32 v_xor1219_2 v_and1218_2 v_and1135_2;
(*   %xor1221.2 = xor i32 %xor1219.2, %and1217.2 *)
(* You may need to modify here *)
xor uint32 v_xor1221_2 v_xor1219_2 v_and1217_2;
(*   %add1222.2 = add i32 %xor1216.2, %xor1221.2 *)
adds discard_653 v_add1222_2 v_xor1216_2 v_xor1221_2;
(*   %add1223.2 = add i32 %add1205.2, %add1552.1 *)
adds discard_654 v_add1223_2 v_add1205_2 v_add1552_1;
(*   %add1224.2 = add i32 %add1222.2, %add1205.2 *)
adds discard_655 v_add1224_2 v_add1222_2 v_add1205_2;
(*   %134 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v134 arrayidx298_0;
(*   %shl1234.2 = shl i32 %134, 25 *)
shls discard_656 v_shl1234_2 v134 25;
(*   %shr1235.2 = lshr i32 %134, 7 *)
(* You may need to modify here *)
split v_shr1235_2 tmp_to_be_used v134 7;
(*   %or1236.2 = or i32 %shl1234.2, %shr1235.2 *)
(* You may need to modify here *)
or uint32 v_or1236_2 v_shl1234_2 v_shr1235_2;
(*   %shl1237.2 = shl i32 %134, 14 *)
shls discard_657 v_shl1237_2 v134 14;
(*   %shr1238.2 = lshr i32 %134, 18 *)
(* You may need to modify here *)
split v_shr1238_2 tmp_to_be_used v134 18;
(*   %or1239.2 = or i32 %shl1237.2, %shr1238.2 *)
(* You may need to modify here *)
or uint32 v_or1239_2 v_shl1237_2 v_shr1238_2;
(*   %shr1241.2 = lshr i32 %134, 3 *)
(* You may need to modify here *)
split v_shr1241_2 tmp_to_be_used v134 3;
(*   %xor1240.2 = xor i32 %or1239.2, %shr1241.2 *)
(* You may need to modify here *)
xor uint32 v_xor1240_2 v_or1239_2 v_shr1241_2;
(*   %xor1242.2 = xor i32 %xor1240.2, %or1236.2 *)
(* You may need to modify here *)
xor uint32 v_xor1242_2 v_xor1240_2 v_or1236_2;
(*   %135 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v135 arrayidx130_0;
(*   %shl1247.2 = shl i32 %135, 15 *)
shls discard_658 v_shl1247_2 v135 15;
(*   %shr1248.2 = lshr i32 %135, 17 *)
(* You may need to modify here *)
split v_shr1248_2 tmp_to_be_used v135 17;
(*   %or1249.2 = or i32 %shl1247.2, %shr1248.2 *)
(* You may need to modify here *)
or uint32 v_or1249_2 v_shl1247_2 v_shr1248_2;
(*   %shl1250.2 = shl i32 %135, 13 *)
shls discard_659 v_shl1250_2 v135 13;
(*   %shr1251.2 = lshr i32 %135, 19 *)
(* You may need to modify here *)
split v_shr1251_2 tmp_to_be_used v135 19;
(*   %or1252.2 = or i32 %shl1250.2, %shr1251.2 *)
(* You may need to modify here *)
or uint32 v_or1252_2 v_shl1250_2 v_shr1251_2;
(*   %shr1254.2 = lshr i32 %135, 10 *)
(* You may need to modify here *)
split v_shr1254_2 tmp_to_be_used v135 10;
(*   %xor1253.2 = xor i32 %or1252.2, %shr1254.2 *)
(* You may need to modify here *)
xor uint32 v_xor1253_2 v_or1252_2 v_shr1254_2;
(*   %xor1255.2 = xor i32 %xor1253.2, %or1249.2 *)
(* You may need to modify here *)
xor uint32 v_xor1255_2 v_xor1253_2 v_or1249_2;
(*   %136 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v136 arrayidx746_0;
(*   %add1256.2 = add i32 %131, %136 *)
adds discard_660 v_add1256_2 v131 v136;
(*   %add1261.2 = add i32 %add1256.2, %xor1242.2 *)
adds discard_661 v_add1261_2 v_add1256_2 v_xor1242_2;
(*   %add1265.2 = add i32 %add1261.2, %xor1255.2 *)
adds discard_662 v_add1265_2 v_add1261_2 v_xor1255_2;
(*   store i32 %add1265.2, i32* %arrayidx242, align 4, !tbaa !4 *)
mov arrayidx242_0 v_add1265_2;
(*   %shl1267.2 = shl i32 %add1223.2, 26 *)
shls discard_663 v_shl1267_2 v_add1223_2 26;
(*   %shr1268.2 = lshr i32 %add1223.2, 6 *)
(* You may need to modify here *)
split v_shr1268_2 tmp_to_be_used v_add1223_2 6;
(*   %or1269.2 = or i32 %shl1267.2, %shr1268.2 *)
(* You may need to modify here *)
or uint32 v_or1269_2 v_shl1267_2 v_shr1268_2;
(*   %shl1270.2 = shl i32 %add1223.2, 21 *)
shls discard_664 v_shl1270_2 v_add1223_2 21;
(*   %shr1271.2 = lshr i32 %add1223.2, 11 *)
(* You may need to modify here *)
split v_shr1271_2 tmp_to_be_used v_add1223_2 11;
(*   %or1272.2 = or i32 %shl1270.2, %shr1271.2 *)
(* You may need to modify here *)
or uint32 v_or1272_2 v_shl1270_2 v_shr1271_2;
(*   %xor1273.2 = xor i32 %or1269.2, %or1272.2 *)
(* You may need to modify here *)
xor uint32 v_xor1273_2 v_or1269_2 v_or1272_2;
(*   %shl1274.2 = shl i32 %add1223.2, 7 *)
shls discard_665 v_shl1274_2 v_add1223_2 7;
(*   %shr1275.2 = lshr i32 %add1223.2, 25 *)
(* You may need to modify here *)
split v_shr1275_2 tmp_to_be_used v_add1223_2 25;
(*   %or1276.2 = or i32 %shl1274.2, %shr1275.2 *)
(* You may need to modify here *)
or uint32 v_or1276_2 v_shl1274_2 v_shr1275_2;
(*   %xor1277.2 = xor i32 %xor1273.2, %or1276.2 *)
(* You may need to modify here *)
xor uint32 v_xor1277_2 v_xor1273_2 v_or1276_2;
(*   %and1279.2 = and i32 %add1223.2, %add1141.2 *)
(* You may need to modify here *)
and uint32 v_and1279_2 v_add1223_2 v_add1141_2;
(*   %neg1280.2 = xor i32 %add1223.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1280_2 v_add1223_2 (0xFFFFFFFF)@uint32;
(*   %and1281.2 = and i32 %add1059.2, %neg1280.2 *)
(* You may need to modify here *)
and uint32 v_and1281_2 v_add1059_2 v_neg1280_2;
(*   %xor1282.2 = or i32 %and1279.2, %and1281.2 *)
(* You may need to modify here *)
or uint32 v_xor1282_2 v_and1279_2 v_and1281_2;
(*   %add1278.2 = add i32 %add977.2, 1695183700 *)
adds discard_666 v_add1278_2 v_add977_2 (1695183700)@uint32;
(*   %add1283.2 = add i32 %add1278.2, %add1265.2 *)
adds discard_667 v_add1283_2 v_add1278_2 v_add1265_2;
(*   %add1286.2 = add i32 %add1283.2, %xor1282.2 *)
adds discard_668 v_add1286_2 v_add1283_2 v_xor1282_2;
(*   %add1287.2 = add i32 %add1286.2, %xor1277.2 *)
adds discard_669 v_add1287_2 v_add1286_2 v_xor1277_2;
(*   %shl1288.2 = shl i32 %add1224.2, 30 *)
shls discard_670 v_shl1288_2 v_add1224_2 30;
(*   %shr1289.2 = lshr i32 %add1224.2, 2 *)
(* You may need to modify here *)
split v_shr1289_2 tmp_to_be_used v_add1224_2 2;
(*   %or1290.2 = or i32 %shl1288.2, %shr1289.2 *)
(* You may need to modify here *)
or uint32 v_or1290_2 v_shl1288_2 v_shr1289_2;
(*   %shl1291.2 = shl i32 %add1224.2, 19 *)
shls discard_671 v_shl1291_2 v_add1224_2 19;
(*   %shr1292.2 = lshr i32 %add1224.2, 13 *)
(* You may need to modify here *)
split v_shr1292_2 tmp_to_be_used v_add1224_2 13;
(*   %or1293.2 = or i32 %shl1291.2, %shr1292.2 *)
(* You may need to modify here *)
or uint32 v_or1293_2 v_shl1291_2 v_shr1292_2;
(*   %xor1294.2 = xor i32 %or1290.2, %or1293.2 *)
(* You may need to modify here *)
xor uint32 v_xor1294_2 v_or1290_2 v_or1293_2;
(*   %shl1295.2 = shl i32 %add1224.2, 10 *)
shls discard_672 v_shl1295_2 v_add1224_2 10;
(*   %shr1296.2 = lshr i32 %add1224.2, 22 *)
(* You may need to modify here *)
split v_shr1296_2 tmp_to_be_used v_add1224_2 22;
(*   %or1297.2 = or i32 %shl1295.2, %shr1296.2 *)
(* You may need to modify here *)
or uint32 v_or1297_2 v_shl1295_2 v_shr1296_2;
(*   %xor1298.2 = xor i32 %xor1294.2, %or1297.2 *)
(* You may need to modify here *)
xor uint32 v_xor1298_2 v_xor1294_2 v_or1297_2;
(*   %and1299.2 = and i32 %add1224.2, %add1142.2 *)
(* You may need to modify here *)
and uint32 v_and1299_2 v_add1224_2 v_add1142_2;
(*   %and1300.2 = and i32 %add1224.2, %add1060.2 *)
(* You may need to modify here *)
and uint32 v_and1300_2 v_add1224_2 v_add1060_2;
(*   %xor1301.2 = xor i32 %and1300.2, %and1217.2 *)
(* You may need to modify here *)
xor uint32 v_xor1301_2 v_and1300_2 v_and1217_2;
(*   %xor1303.2 = xor i32 %xor1301.2, %and1299.2 *)
(* You may need to modify here *)
xor uint32 v_xor1303_2 v_xor1301_2 v_and1299_2;
(*   %add1304.2 = add i32 %xor1298.2, %xor1303.2 *)
adds discard_673 v_add1304_2 v_xor1298_2 v_xor1303_2;
(*   %add1305.2 = add i32 %add1287.2, %add978.2 *)
adds discard_674 v_add1305_2 v_add1287_2 v_add978_2;
(*   %add1306.2 = add i32 %add1304.2, %add1287.2 *)
adds discard_675 v_add1306_2 v_add1304_2 v_add1287_2;
(*   %137 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v137 arrayidx354_0;
(*   %shl1316.2 = shl i32 %137, 25 *)
shls discard_676 v_shl1316_2 v137 25;
(*   %shr1317.2 = lshr i32 %137, 7 *)
(* You may need to modify here *)
split v_shr1317_2 tmp_to_be_used v137 7;
(*   %or1318.2 = or i32 %shl1316.2, %shr1317.2 *)
(* You may need to modify here *)
or uint32 v_or1318_2 v_shl1316_2 v_shr1317_2;
(*   %shl1319.2 = shl i32 %137, 14 *)
shls discard_677 v_shl1319_2 v137 14;
(*   %shr1320.2 = lshr i32 %137, 18 *)
(* You may need to modify here *)
split v_shr1320_2 tmp_to_be_used v137 18;
(*   %or1321.2 = or i32 %shl1319.2, %shr1320.2 *)
(* You may need to modify here *)
or uint32 v_or1321_2 v_shl1319_2 v_shr1320_2;
(*   %shr1323.2 = lshr i32 %137, 3 *)
(* You may need to modify here *)
split v_shr1323_2 tmp_to_be_used v137 3;
(*   %xor1322.2 = xor i32 %or1321.2, %shr1323.2 *)
(* You may need to modify here *)
xor uint32 v_xor1322_2 v_or1321_2 v_shr1323_2;
(*   %xor1324.2 = xor i32 %xor1322.2, %or1318.2 *)
(* You may need to modify here *)
xor uint32 v_xor1324_2 v_xor1322_2 v_or1318_2;
(*   %138 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v138 arrayidx186_0;
(*   %shl1329.2 = shl i32 %138, 15 *)
shls discard_678 v_shl1329_2 v138 15;
(*   %shr1330.2 = lshr i32 %138, 17 *)
(* You may need to modify here *)
split v_shr1330_2 tmp_to_be_used v138 17;
(*   %or1331.2 = or i32 %shl1329.2, %shr1330.2 *)
(* You may need to modify here *)
or uint32 v_or1331_2 v_shl1329_2 v_shr1330_2;
(*   %shl1332.2 = shl i32 %138, 13 *)
shls discard_679 v_shl1332_2 v138 13;
(*   %shr1333.2 = lshr i32 %138, 19 *)
(* You may need to modify here *)
split v_shr1333_2 tmp_to_be_used v138 19;
(*   %or1334.2 = or i32 %shl1332.2, %shr1333.2 *)
(* You may need to modify here *)
or uint32 v_or1334_2 v_shl1332_2 v_shr1333_2;
(*   %shr1336.2 = lshr i32 %138, 10 *)
(* You may need to modify here *)
split v_shr1336_2 tmp_to_be_used v138 10;
(*   %xor1335.2 = xor i32 %or1334.2, %shr1336.2 *)
(* You may need to modify here *)
xor uint32 v_xor1335_2 v_or1334_2 v_shr1336_2;
(*   %xor1337.2 = xor i32 %xor1335.2, %or1331.2 *)
(* You may need to modify here *)
xor uint32 v_xor1337_2 v_xor1335_2 v_or1331_2;
(*   %139 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v139 arrayidx802_0;
(*   %add1338.2 = add i32 %134, %139 *)
adds discard_680 v_add1338_2 v134 v139;
(*   %add1343.2 = add i32 %add1338.2, %xor1324.2 *)
adds discard_681 v_add1343_2 v_add1338_2 v_xor1324_2;
(*   %add1347.2 = add i32 %add1343.2, %xor1337.2 *)
adds discard_682 v_add1347_2 v_add1343_2 v_xor1337_2;
(*   store i32 %add1347.2, i32* %arrayidx298, align 4, !tbaa !4 *)
mov arrayidx298_0 v_add1347_2;
(*   %shl1349.2 = shl i32 %add1305.2, 26 *)
shls discard_683 v_shl1349_2 v_add1305_2 26;
(*   %shr1350.2 = lshr i32 %add1305.2, 6 *)
(* You may need to modify here *)
split v_shr1350_2 tmp_to_be_used v_add1305_2 6;
(*   %or1351.2 = or i32 %shl1349.2, %shr1350.2 *)
(* You may need to modify here *)
or uint32 v_or1351_2 v_shl1349_2 v_shr1350_2;
(*   %shl1352.2 = shl i32 %add1305.2, 21 *)
shls discard_684 v_shl1352_2 v_add1305_2 21;
(*   %shr1353.2 = lshr i32 %add1305.2, 11 *)
(* You may need to modify here *)
split v_shr1353_2 tmp_to_be_used v_add1305_2 11;
(*   %or1354.2 = or i32 %shl1352.2, %shr1353.2 *)
(* You may need to modify here *)
or uint32 v_or1354_2 v_shl1352_2 v_shr1353_2;
(*   %xor1355.2 = xor i32 %or1351.2, %or1354.2 *)
(* You may need to modify here *)
xor uint32 v_xor1355_2 v_or1351_2 v_or1354_2;
(*   %shl1356.2 = shl i32 %add1305.2, 7 *)
shls discard_685 v_shl1356_2 v_add1305_2 7;
(*   %shr1357.2 = lshr i32 %add1305.2, 25 *)
(* You may need to modify here *)
split v_shr1357_2 tmp_to_be_used v_add1305_2 25;
(*   %or1358.2 = or i32 %shl1356.2, %shr1357.2 *)
(* You may need to modify here *)
or uint32 v_or1358_2 v_shl1356_2 v_shr1357_2;
(*   %xor1359.2 = xor i32 %xor1355.2, %or1358.2 *)
(* You may need to modify here *)
xor uint32 v_xor1359_2 v_xor1355_2 v_or1358_2;
(*   %and1361.2 = and i32 %add1305.2, %add1223.2 *)
(* You may need to modify here *)
and uint32 v_and1361_2 v_add1305_2 v_add1223_2;
(*   %neg1362.2 = xor i32 %add1305.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1362_2 v_add1305_2 (0xFFFFFFFF)@uint32;
(*   %and1363.2 = and i32 %add1141.2, %neg1362.2 *)
(* You may need to modify here *)
and uint32 v_and1363_2 v_add1141_2 v_neg1362_2;
(*   %xor1364.2 = or i32 %and1361.2, %and1363.2 *)
(* You may need to modify here *)
or uint32 v_xor1364_2 v_and1361_2 v_and1363_2;
(*   %add1360.2 = add i32 %add1059.2, 1986661051 *)
adds discard_686 v_add1360_2 v_add1059_2 (1986661051)@uint32;
(*   %add1365.2 = add i32 %add1360.2, %add1347.2 *)
adds discard_687 v_add1365_2 v_add1360_2 v_add1347_2;
(*   %add1368.2 = add i32 %add1365.2, %xor1364.2 *)
adds discard_688 v_add1368_2 v_add1365_2 v_xor1364_2;
(*   %add1369.2 = add i32 %add1368.2, %xor1359.2 *)
adds discard_689 v_add1369_2 v_add1368_2 v_xor1359_2;
(*   %shl1370.2 = shl i32 %add1306.2, 30 *)
shls discard_690 v_shl1370_2 v_add1306_2 30;
(*   %shr1371.2 = lshr i32 %add1306.2, 2 *)
(* You may need to modify here *)
split v_shr1371_2 tmp_to_be_used v_add1306_2 2;
(*   %or1372.2 = or i32 %shl1370.2, %shr1371.2 *)
(* You may need to modify here *)
or uint32 v_or1372_2 v_shl1370_2 v_shr1371_2;
(*   %shl1373.2 = shl i32 %add1306.2, 19 *)
shls discard_691 v_shl1373_2 v_add1306_2 19;
(*   %shr1374.2 = lshr i32 %add1306.2, 13 *)
(* You may need to modify here *)
split v_shr1374_2 tmp_to_be_used v_add1306_2 13;
(*   %or1375.2 = or i32 %shl1373.2, %shr1374.2 *)
(* You may need to modify here *)
or uint32 v_or1375_2 v_shl1373_2 v_shr1374_2;
(*   %xor1376.2 = xor i32 %or1372.2, %or1375.2 *)
(* You may need to modify here *)
xor uint32 v_xor1376_2 v_or1372_2 v_or1375_2;
(*   %shl1377.2 = shl i32 %add1306.2, 10 *)
shls discard_692 v_shl1377_2 v_add1306_2 10;
(*   %shr1378.2 = lshr i32 %add1306.2, 22 *)
(* You may need to modify here *)
split v_shr1378_2 tmp_to_be_used v_add1306_2 22;
(*   %or1379.2 = or i32 %shl1377.2, %shr1378.2 *)
(* You may need to modify here *)
or uint32 v_or1379_2 v_shl1377_2 v_shr1378_2;
(*   %xor1380.2 = xor i32 %xor1376.2, %or1379.2 *)
(* You may need to modify here *)
xor uint32 v_xor1380_2 v_xor1376_2 v_or1379_2;
(*   %and1381.2 = and i32 %add1306.2, %add1224.2 *)
(* You may need to modify here *)
and uint32 v_and1381_2 v_add1306_2 v_add1224_2;
(*   %and1382.2 = and i32 %add1306.2, %add1142.2 *)
(* You may need to modify here *)
and uint32 v_and1382_2 v_add1306_2 v_add1142_2;
(*   %xor1383.2 = xor i32 %and1382.2, %and1299.2 *)
(* You may need to modify here *)
xor uint32 v_xor1383_2 v_and1382_2 v_and1299_2;
(*   %xor1385.2 = xor i32 %xor1383.2, %and1381.2 *)
(* You may need to modify here *)
xor uint32 v_xor1385_2 v_xor1383_2 v_and1381_2;
(*   %add1386.2 = add i32 %xor1380.2, %xor1385.2 *)
adds discard_693 v_add1386_2 v_xor1380_2 v_xor1385_2;
(*   %add1387.2 = add i32 %add1369.2, %add1060.2 *)
adds discard_694 v_add1387_2 v_add1369_2 v_add1060_2;
(*   %add1388.2 = add i32 %add1386.2, %add1369.2 *)
adds discard_695 v_add1388_2 v_add1386_2 v_add1369_2;
(*   %140 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v140 arrayidx410_0;
(*   %shl1398.2 = shl i32 %140, 25 *)
shls discard_696 v_shl1398_2 v140 25;
(*   %shr1399.2 = lshr i32 %140, 7 *)
(* You may need to modify here *)
split v_shr1399_2 tmp_to_be_used v140 7;
(*   %or1400.2 = or i32 %shl1398.2, %shr1399.2 *)
(* You may need to modify here *)
or uint32 v_or1400_2 v_shl1398_2 v_shr1399_2;
(*   %shl1401.2 = shl i32 %140, 14 *)
shls discard_697 v_shl1401_2 v140 14;
(*   %shr1402.2 = lshr i32 %140, 18 *)
(* You may need to modify here *)
split v_shr1402_2 tmp_to_be_used v140 18;
(*   %or1403.2 = or i32 %shl1401.2, %shr1402.2 *)
(* You may need to modify here *)
or uint32 v_or1403_2 v_shl1401_2 v_shr1402_2;
(*   %shr1405.2 = lshr i32 %140, 3 *)
(* You may need to modify here *)
split v_shr1405_2 tmp_to_be_used v140 3;
(*   %xor1404.2 = xor i32 %or1403.2, %shr1405.2 *)
(* You may need to modify here *)
xor uint32 v_xor1404_2 v_or1403_2 v_shr1405_2;
(*   %xor1406.2 = xor i32 %xor1404.2, %or1400.2 *)
(* You may need to modify here *)
xor uint32 v_xor1406_2 v_xor1404_2 v_or1400_2;
(*   %141 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v141 arrayidx242_0;
(*   %shl1411.2 = shl i32 %141, 15 *)
shls discard_698 v_shl1411_2 v141 15;
(*   %shr1412.2 = lshr i32 %141, 17 *)
(* You may need to modify here *)
split v_shr1412_2 tmp_to_be_used v141 17;
(*   %or1413.2 = or i32 %shl1411.2, %shr1412.2 *)
(* You may need to modify here *)
or uint32 v_or1413_2 v_shl1411_2 v_shr1412_2;
(*   %shl1414.2 = shl i32 %141, 13 *)
shls discard_699 v_shl1414_2 v141 13;
(*   %shr1415.2 = lshr i32 %141, 19 *)
(* You may need to modify here *)
split v_shr1415_2 tmp_to_be_used v141 19;
(*   %or1416.2 = or i32 %shl1414.2, %shr1415.2 *)
(* You may need to modify here *)
or uint32 v_or1416_2 v_shl1414_2 v_shr1415_2;
(*   %shr1418.2 = lshr i32 %141, 10 *)
(* You may need to modify here *)
split v_shr1418_2 tmp_to_be_used v141 10;
(*   %xor1417.2 = xor i32 %or1416.2, %shr1418.2 *)
(* You may need to modify here *)
xor uint32 v_xor1417_2 v_or1416_2 v_shr1418_2;
(*   %xor1419.2 = xor i32 %xor1417.2, %or1413.2 *)
(* You may need to modify here *)
xor uint32 v_xor1419_2 v_xor1417_2 v_or1413_2;
(*   %142 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v142 arrayidx858_0;
(*   %add1420.2 = add i32 %137, %142 *)
adds discard_700 v_add1420_2 v137 v142;
(*   %add1425.2 = add i32 %add1420.2, %xor1406.2 *)
adds discard_701 v_add1425_2 v_add1420_2 v_xor1406_2;
(*   %add1429.2 = add i32 %add1425.2, %xor1419.2 *)
adds discard_702 v_add1429_2 v_add1425_2 v_xor1419_2;
(*   store i32 %add1429.2, i32* %arrayidx354, align 4, !tbaa !4 *)
mov arrayidx354_0 v_add1429_2;
(*   %shl1431.2 = shl i32 %add1387.2, 26 *)
shls discard_703 v_shl1431_2 v_add1387_2 26;
(*   %shr1432.2 = lshr i32 %add1387.2, 6 *)
(* You may need to modify here *)
split v_shr1432_2 tmp_to_be_used v_add1387_2 6;
(*   %or1433.2 = or i32 %shl1431.2, %shr1432.2 *)
(* You may need to modify here *)
or uint32 v_or1433_2 v_shl1431_2 v_shr1432_2;
(*   %shl1434.2 = shl i32 %add1387.2, 21 *)
shls discard_704 v_shl1434_2 v_add1387_2 21;
(*   %shr1435.2 = lshr i32 %add1387.2, 11 *)
(* You may need to modify here *)
split v_shr1435_2 tmp_to_be_used v_add1387_2 11;
(*   %or1436.2 = or i32 %shl1434.2, %shr1435.2 *)
(* You may need to modify here *)
or uint32 v_or1436_2 v_shl1434_2 v_shr1435_2;
(*   %xor1437.2 = xor i32 %or1433.2, %or1436.2 *)
(* You may need to modify here *)
xor uint32 v_xor1437_2 v_or1433_2 v_or1436_2;
(*   %shl1438.2 = shl i32 %add1387.2, 7 *)
shls discard_705 v_shl1438_2 v_add1387_2 7;
(*   %shr1439.2 = lshr i32 %add1387.2, 25 *)
(* You may need to modify here *)
split v_shr1439_2 tmp_to_be_used v_add1387_2 25;
(*   %or1440.2 = or i32 %shl1438.2, %shr1439.2 *)
(* You may need to modify here *)
or uint32 v_or1440_2 v_shl1438_2 v_shr1439_2;
(*   %xor1441.2 = xor i32 %xor1437.2, %or1440.2 *)
(* You may need to modify here *)
xor uint32 v_xor1441_2 v_xor1437_2 v_or1440_2;
(*   %and1443.2 = and i32 %add1387.2, %add1305.2 *)
(* You may need to modify here *)
and uint32 v_and1443_2 v_add1387_2 v_add1305_2;
(*   %neg1444.2 = xor i32 %add1387.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1444_2 v_add1387_2 (0xFFFFFFFF)@uint32;
(*   %and1445.2 = and i32 %add1223.2, %neg1444.2 *)
(* You may need to modify here *)
and uint32 v_and1445_2 v_add1223_2 v_neg1444_2;
(*   %xor1446.2 = or i32 %and1443.2, %and1445.2 *)
(* You may need to modify here *)
or uint32 v_xor1446_2 v_and1443_2 v_and1445_2;
(*   %add1442.2 = add i32 %add1141.2, -2117940946 *)
adds discard_706 v_add1442_2 v_add1141_2 (2177026350)@uint32;
(*   %add1447.2 = add i32 %add1442.2, %add1429.2 *)
adds discard_707 v_add1447_2 v_add1442_2 v_add1429_2;
(*   %add1450.2 = add i32 %add1447.2, %xor1446.2 *)
adds discard_708 v_add1450_2 v_add1447_2 v_xor1446_2;
(*   %add1451.2 = add i32 %add1450.2, %xor1441.2 *)
adds discard_709 v_add1451_2 v_add1450_2 v_xor1441_2;
(*   %shl1452.2 = shl i32 %add1388.2, 30 *)
shls discard_710 v_shl1452_2 v_add1388_2 30;
(*   %shr1453.2 = lshr i32 %add1388.2, 2 *)
(* You may need to modify here *)
split v_shr1453_2 tmp_to_be_used v_add1388_2 2;
(*   %or1454.2 = or i32 %shl1452.2, %shr1453.2 *)
(* You may need to modify here *)
or uint32 v_or1454_2 v_shl1452_2 v_shr1453_2;
(*   %shl1455.2 = shl i32 %add1388.2, 19 *)
shls discard_711 v_shl1455_2 v_add1388_2 19;
(*   %shr1456.2 = lshr i32 %add1388.2, 13 *)
(* You may need to modify here *)
split v_shr1456_2 tmp_to_be_used v_add1388_2 13;
(*   %or1457.2 = or i32 %shl1455.2, %shr1456.2 *)
(* You may need to modify here *)
or uint32 v_or1457_2 v_shl1455_2 v_shr1456_2;
(*   %xor1458.2 = xor i32 %or1454.2, %or1457.2 *)
(* You may need to modify here *)
xor uint32 v_xor1458_2 v_or1454_2 v_or1457_2;
(*   %shl1459.2 = shl i32 %add1388.2, 10 *)
shls discard_712 v_shl1459_2 v_add1388_2 10;
(*   %shr1460.2 = lshr i32 %add1388.2, 22 *)
(* You may need to modify here *)
split v_shr1460_2 tmp_to_be_used v_add1388_2 22;
(*   %or1461.2 = or i32 %shl1459.2, %shr1460.2 *)
(* You may need to modify here *)
or uint32 v_or1461_2 v_shl1459_2 v_shr1460_2;
(*   %xor1462.2 = xor i32 %xor1458.2, %or1461.2 *)
(* You may need to modify here *)
xor uint32 v_xor1462_2 v_xor1458_2 v_or1461_2;
(*   %and1463.2 = and i32 %add1388.2, %add1306.2 *)
(* You may need to modify here *)
and uint32 v_and1463_2 v_add1388_2 v_add1306_2;
(*   %and1464.2 = and i32 %add1388.2, %add1224.2 *)
(* You may need to modify here *)
and uint32 v_and1464_2 v_add1388_2 v_add1224_2;
(*   %xor1465.2 = xor i32 %and1464.2, %and1381.2 *)
(* You may need to modify here *)
xor uint32 v_xor1465_2 v_and1464_2 v_and1381_2;
(*   %xor1467.2 = xor i32 %xor1465.2, %and1463.2 *)
(* You may need to modify here *)
xor uint32 v_xor1467_2 v_xor1465_2 v_and1463_2;
(*   %add1468.2 = add i32 %xor1462.2, %xor1467.2 *)
adds discard_713 v_add1468_2 v_xor1462_2 v_xor1467_2;
(*   %add1469.2 = add i32 %add1451.2, %add1142.2 *)
adds discard_714 v_add1469_2 v_add1451_2 v_add1142_2;
(*   %add1470.2 = add i32 %add1468.2, %add1451.2 *)
adds discard_715 v_add1470_2 v_add1468_2 v_add1451_2;
(*   %143 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v143 arrayidx466_0;
(*   %shl1480.2 = shl i32 %143, 25 *)
shls discard_716 v_shl1480_2 v143 25;
(*   %shr1481.2 = lshr i32 %143, 7 *)
(* You may need to modify here *)
split v_shr1481_2 tmp_to_be_used v143 7;
(*   %or1482.2 = or i32 %shl1480.2, %shr1481.2 *)
(* You may need to modify here *)
or uint32 v_or1482_2 v_shl1480_2 v_shr1481_2;
(*   %shl1483.2 = shl i32 %143, 14 *)
shls discard_717 v_shl1483_2 v143 14;
(*   %shr1484.2 = lshr i32 %143, 18 *)
(* You may need to modify here *)
split v_shr1484_2 tmp_to_be_used v143 18;
(*   %or1485.2 = or i32 %shl1483.2, %shr1484.2 *)
(* You may need to modify here *)
or uint32 v_or1485_2 v_shl1483_2 v_shr1484_2;
(*   %shr1487.2 = lshr i32 %143, 3 *)
(* You may need to modify here *)
split v_shr1487_2 tmp_to_be_used v143 3;
(*   %xor1486.2 = xor i32 %or1485.2, %shr1487.2 *)
(* You may need to modify here *)
xor uint32 v_xor1486_2 v_or1485_2 v_shr1487_2;
(*   %xor1488.2 = xor i32 %xor1486.2, %or1482.2 *)
(* You may need to modify here *)
xor uint32 v_xor1488_2 v_xor1486_2 v_or1482_2;
(*   %144 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v144 arrayidx298_0;
(*   %shl1493.2 = shl i32 %144, 15 *)
shls discard_718 v_shl1493_2 v144 15;
(*   %shr1494.2 = lshr i32 %144, 17 *)
(* You may need to modify here *)
split v_shr1494_2 tmp_to_be_used v144 17;
(*   %or1495.2 = or i32 %shl1493.2, %shr1494.2 *)
(* You may need to modify here *)
or uint32 v_or1495_2 v_shl1493_2 v_shr1494_2;
(*   %shl1496.2 = shl i32 %144, 13 *)
shls discard_719 v_shl1496_2 v144 13;
(*   %shr1497.2 = lshr i32 %144, 19 *)
(* You may need to modify here *)
split v_shr1497_2 tmp_to_be_used v144 19;
(*   %or1498.2 = or i32 %shl1496.2, %shr1497.2 *)
(* You may need to modify here *)
or uint32 v_or1498_2 v_shl1496_2 v_shr1497_2;
(*   %shr1500.2 = lshr i32 %144, 10 *)
(* You may need to modify here *)
split v_shr1500_2 tmp_to_be_used v144 10;
(*   %xor1499.2 = xor i32 %or1498.2, %shr1500.2 *)
(* You may need to modify here *)
xor uint32 v_xor1499_2 v_or1498_2 v_shr1500_2;
(*   %xor1501.2 = xor i32 %xor1499.2, %or1495.2 *)
(* You may need to modify here *)
xor uint32 v_xor1501_2 v_xor1499_2 v_or1495_2;
(*   %145 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v145 arrayidx26_0;
(*   %add1502.2 = add i32 %140, %145 *)
adds discard_720 v_add1502_2 v140 v145;
(*   %add1507.2 = add i32 %add1502.2, %xor1488.2 *)
adds discard_721 v_add1507_2 v_add1502_2 v_xor1488_2;
(*   %add1511.2 = add i32 %add1507.2, %xor1501.2 *)
adds discard_722 v_add1511_2 v_add1507_2 v_xor1501_2;
(*   store i32 %add1511.2, i32* %arrayidx410, align 4, !tbaa !4 *)
mov arrayidx410_0 v_add1511_2;
(*   %shl1513.2 = shl i32 %add1469.2, 26 *)
shls discard_723 v_shl1513_2 v_add1469_2 26;
(*   %shr1514.2 = lshr i32 %add1469.2, 6 *)
(* You may need to modify here *)
split v_shr1514_2 tmp_to_be_used v_add1469_2 6;
(*   %or1515.2 = or i32 %shl1513.2, %shr1514.2 *)
(* You may need to modify here *)
or uint32 v_or1515_2 v_shl1513_2 v_shr1514_2;
(*   %shl1516.2 = shl i32 %add1469.2, 21 *)
shls discard_724 v_shl1516_2 v_add1469_2 21;
(*   %shr1517.2 = lshr i32 %add1469.2, 11 *)
(* You may need to modify here *)
split v_shr1517_2 tmp_to_be_used v_add1469_2 11;
(*   %or1518.2 = or i32 %shl1516.2, %shr1517.2 *)
(* You may need to modify here *)
or uint32 v_or1518_2 v_shl1516_2 v_shr1517_2;
(*   %xor1519.2 = xor i32 %or1515.2, %or1518.2 *)
(* You may need to modify here *)
xor uint32 v_xor1519_2 v_or1515_2 v_or1518_2;
(*   %shl1520.2 = shl i32 %add1469.2, 7 *)
shls discard_725 v_shl1520_2 v_add1469_2 7;
(*   %shr1521.2 = lshr i32 %add1469.2, 25 *)
(* You may need to modify here *)
split v_shr1521_2 tmp_to_be_used v_add1469_2 25;
(*   %or1522.2 = or i32 %shl1520.2, %shr1521.2 *)
(* You may need to modify here *)
or uint32 v_or1522_2 v_shl1520_2 v_shr1521_2;
(*   %xor1523.2 = xor i32 %xor1519.2, %or1522.2 *)
(* You may need to modify here *)
xor uint32 v_xor1523_2 v_xor1519_2 v_or1522_2;
(*   %and1525.2 = and i32 %add1469.2, %add1387.2 *)
(* You may need to modify here *)
and uint32 v_and1525_2 v_add1469_2 v_add1387_2;
(*   %neg1526.2 = xor i32 %add1469.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1526_2 v_add1469_2 (0xFFFFFFFF)@uint32;
(*   %and1527.2 = and i32 %add1305.2, %neg1526.2 *)
(* You may need to modify here *)
and uint32 v_and1527_2 v_add1305_2 v_neg1526_2;
(*   %xor1528.2 = or i32 %and1525.2, %and1527.2 *)
(* You may need to modify here *)
or uint32 v_xor1528_2 v_and1525_2 v_and1527_2;
(*   %add1524.2 = add i32 %add1223.2, -1838011259 *)
adds discard_726 v_add1524_2 v_add1223_2 (2456956037)@uint32;
(*   %add1529.2 = add i32 %add1524.2, %add1511.2 *)
adds discard_727 v_add1529_2 v_add1524_2 v_add1511_2;
(*   %add1532.2 = add i32 %add1529.2, %xor1528.2 *)
adds discard_728 v_add1532_2 v_add1529_2 v_xor1528_2;
(*   %add1533.2 = add i32 %add1532.2, %xor1523.2 *)
adds discard_729 v_add1533_2 v_add1532_2 v_xor1523_2;
(*   %shl1534.2 = shl i32 %add1470.2, 30 *)
shls discard_730 v_shl1534_2 v_add1470_2 30;
(*   %shr1535.2 = lshr i32 %add1470.2, 2 *)
(* You may need to modify here *)
split v_shr1535_2 tmp_to_be_used v_add1470_2 2;
(*   %or1536.2 = or i32 %shl1534.2, %shr1535.2 *)
(* You may need to modify here *)
or uint32 v_or1536_2 v_shl1534_2 v_shr1535_2;
(*   %shl1537.2 = shl i32 %add1470.2, 19 *)
shls discard_731 v_shl1537_2 v_add1470_2 19;
(*   %shr1538.2 = lshr i32 %add1470.2, 13 *)
(* You may need to modify here *)
split v_shr1538_2 tmp_to_be_used v_add1470_2 13;
(*   %or1539.2 = or i32 %shl1537.2, %shr1538.2 *)
(* You may need to modify here *)
or uint32 v_or1539_2 v_shl1537_2 v_shr1538_2;
(*   %xor1540.2 = xor i32 %or1536.2, %or1539.2 *)
(* You may need to modify here *)
xor uint32 v_xor1540_2 v_or1536_2 v_or1539_2;
(*   %shl1541.2 = shl i32 %add1470.2, 10 *)
shls discard_732 v_shl1541_2 v_add1470_2 10;
(*   %shr1542.2 = lshr i32 %add1470.2, 22 *)
(* You may need to modify here *)
split v_shr1542_2 tmp_to_be_used v_add1470_2 22;
(*   %or1543.2 = or i32 %shl1541.2, %shr1542.2 *)
(* You may need to modify here *)
or uint32 v_or1543_2 v_shl1541_2 v_shr1542_2;
(*   %xor1544.2 = xor i32 %xor1540.2, %or1543.2 *)
(* You may need to modify here *)
xor uint32 v_xor1544_2 v_xor1540_2 v_or1543_2;
(*   %and15462545.2 = xor i32 %add1388.2, %add1306.2 *)
(* You may need to modify here *)
xor uint32 v_and15462545_2 v_add1388_2 v_add1306_2;
(*   %xor1547.2 = and i32 %add1470.2, %and15462545.2 *)
(* You may need to modify here *)
and uint32 v_xor1547_2 v_add1470_2 v_and15462545_2;
(*   %xor1549.2 = xor i32 %xor1547.2, %and1463.2 *)
(* You may need to modify here *)
xor uint32 v_xor1549_2 v_xor1547_2 v_and1463_2;
(*   %add1550.2 = add i32 %xor1544.2, %xor1549.2 *)
adds discard_733 v_add1550_2 v_xor1544_2 v_xor1549_2;
(*   %add1551.2 = add i32 %add1533.2, %add1224.2 *)
adds discard_734 v_add1551_2 v_add1533_2 v_add1224_2;
(*   %add1552.2 = add i32 %add1550.2, %add1533.2 *)
adds discard_735 v_add1552_2 v_add1550_2 v_add1533_2;
(*   %146 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v146 arrayidx522_0;
(*   %shl906.3 = shl i32 %146, 25 *)
shls discard_736 v_shl906_3 v146 25;
(*   %shr907.3 = lshr i32 %146, 7 *)
(* You may need to modify here *)
split v_shr907_3 tmp_to_be_used v146 7;
(*   %or908.3 = or i32 %shl906.3, %shr907.3 *)
(* You may need to modify here *)
or uint32 v_or908_3 v_shl906_3 v_shr907_3;
(*   %shl909.3 = shl i32 %146, 14 *)
shls discard_737 v_shl909_3 v146 14;
(*   %shr910.3 = lshr i32 %146, 18 *)
(* You may need to modify here *)
split v_shr910_3 tmp_to_be_used v146 18;
(*   %or911.3 = or i32 %shl909.3, %shr910.3 *)
(* You may need to modify here *)
or uint32 v_or911_3 v_shl909_3 v_shr910_3;
(*   %shr913.3 = lshr i32 %146, 3 *)
(* You may need to modify here *)
split v_shr913_3 tmp_to_be_used v146 3;
(*   %xor912.3 = xor i32 %or911.3, %shr913.3 *)
(* You may need to modify here *)
xor uint32 v_xor912_3 v_or911_3 v_shr913_3;
(*   %xor914.3 = xor i32 %xor912.3, %or908.3 *)
(* You may need to modify here *)
xor uint32 v_xor914_3 v_xor912_3 v_or908_3;
(*   %147 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v147 arrayidx354_0;
(*   %shl919.3 = shl i32 %147, 15 *)
shls discard_738 v_shl919_3 v147 15;
(*   %shr920.3 = lshr i32 %147, 17 *)
(* You may need to modify here *)
split v_shr920_3 tmp_to_be_used v147 17;
(*   %or921.3 = or i32 %shl919.3, %shr920.3 *)
(* You may need to modify here *)
or uint32 v_or921_3 v_shl919_3 v_shr920_3;
(*   %shl922.3 = shl i32 %147, 13 *)
shls discard_739 v_shl922_3 v147 13;
(*   %shr923.3 = lshr i32 %147, 19 *)
(* You may need to modify here *)
split v_shr923_3 tmp_to_be_used v147 19;
(*   %or924.3 = or i32 %shl922.3, %shr923.3 *)
(* You may need to modify here *)
or uint32 v_or924_3 v_shl922_3 v_shr923_3;
(*   %shr926.3 = lshr i32 %147, 10 *)
(* You may need to modify here *)
split v_shr926_3 tmp_to_be_used v147 10;
(*   %xor925.3 = xor i32 %or924.3, %shr926.3 *)
(* You may need to modify here *)
xor uint32 v_xor925_3 v_or924_3 v_shr926_3;
(*   %xor927.3 = xor i32 %xor925.3, %or921.3 *)
(* You may need to modify here *)
xor uint32 v_xor927_3 v_xor925_3 v_or921_3;
(*   %148 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v148 arrayidx74_0;
(*   %add928.3 = add i32 %143, %148 *)
adds discard_740 v_add928_3 v143 v148;
(*   %add933.3 = add i32 %add928.3, %xor914.3 *)
adds discard_741 v_add933_3 v_add928_3 v_xor914_3;
(*   %add937.3 = add i32 %add933.3, %xor927.3 *)
adds discard_742 v_add937_3 v_add933_3 v_xor927_3;
(*   store i32 %add937.3, i32* %arrayidx466, align 4, !tbaa !4 *)
mov arrayidx466_0 v_add937_3;
(*   %shl939.3 = shl i32 %add1551.2, 26 *)
shls discard_743 v_shl939_3 v_add1551_2 26;
(*   %shr940.3 = lshr i32 %add1551.2, 6 *)
(* You may need to modify here *)
split v_shr940_3 tmp_to_be_used v_add1551_2 6;
(*   %or941.3 = or i32 %shl939.3, %shr940.3 *)
(* You may need to modify here *)
or uint32 v_or941_3 v_shl939_3 v_shr940_3;
(*   %shl942.3 = shl i32 %add1551.2, 21 *)
shls discard_744 v_shl942_3 v_add1551_2 21;
(*   %shr943.3 = lshr i32 %add1551.2, 11 *)
(* You may need to modify here *)
split v_shr943_3 tmp_to_be_used v_add1551_2 11;
(*   %or944.3 = or i32 %shl942.3, %shr943.3 *)
(* You may need to modify here *)
or uint32 v_or944_3 v_shl942_3 v_shr943_3;
(*   %xor945.3 = xor i32 %or941.3, %or944.3 *)
(* You may need to modify here *)
xor uint32 v_xor945_3 v_or941_3 v_or944_3;
(*   %shl946.3 = shl i32 %add1551.2, 7 *)
shls discard_745 v_shl946_3 v_add1551_2 7;
(*   %shr947.3 = lshr i32 %add1551.2, 25 *)
(* You may need to modify here *)
split v_shr947_3 tmp_to_be_used v_add1551_2 25;
(*   %or948.3 = or i32 %shl946.3, %shr947.3 *)
(* You may need to modify here *)
or uint32 v_or948_3 v_shl946_3 v_shr947_3;
(*   %xor949.3 = xor i32 %xor945.3, %or948.3 *)
(* You may need to modify here *)
xor uint32 v_xor949_3 v_xor945_3 v_or948_3;
(*   %add950.3 = add i32 %xor949.3, %add1305.2 *)
adds discard_746 v_add950_3 v_xor949_3 v_add1305_2;
(*   %and951.3 = and i32 %add1469.2, %add1551.2 *)
(* You may need to modify here *)
and uint32 v_and951_3 v_add1469_2 v_add1551_2;
(*   %neg952.3 = xor i32 %add1551.2, -1 *)
(* You may need to modify here *)
xor uint32 v_neg952_3 v_add1551_2 (0xFFFFFFFF)@uint32;
(*   %and953.3 = and i32 %add1387.2, %neg952.3 *)
(* You may need to modify here *)
and uint32 v_and953_3 v_add1387_2 v_neg952_3;
(*   %xor954.3 = or i32 %and953.3, %and951.3 *)
(* You may need to modify here *)
or uint32 v_xor954_3 v_and953_3 v_and951_3;
(*   %add955.3 = add i32 %add950.3, %xor954.3 *)
adds discard_747 v_add955_3 v_add950_3 v_xor954_3;
(*   %add958.3 = add i32 %add955.3, -1564481375 *)
adds discard_748 v_add958_3 v_add955_3 (2730485921)@uint32;
(*   %add959.3 = add i32 %add958.3, %add937.3 *)
adds discard_749 v_add959_3 v_add958_3 v_add937_3;
(*   %shl960.3 = shl i32 %add1552.2, 30 *)
shls discard_750 v_shl960_3 v_add1552_2 30;
(*   %shr961.3 = lshr i32 %add1552.2, 2 *)
(* You may need to modify here *)
split v_shr961_3 tmp_to_be_used v_add1552_2 2;
(*   %or962.3 = or i32 %shl960.3, %shr961.3 *)
(* You may need to modify here *)
or uint32 v_or962_3 v_shl960_3 v_shr961_3;
(*   %shl963.3 = shl i32 %add1552.2, 19 *)
shls discard_751 v_shl963_3 v_add1552_2 19;
(*   %shr964.3 = lshr i32 %add1552.2, 13 *)
(* You may need to modify here *)
split v_shr964_3 tmp_to_be_used v_add1552_2 13;
(*   %or965.3 = or i32 %shl963.3, %shr964.3 *)
(* You may need to modify here *)
or uint32 v_or965_3 v_shl963_3 v_shr964_3;
(*   %xor966.3 = xor i32 %or962.3, %or965.3 *)
(* You may need to modify here *)
xor uint32 v_xor966_3 v_or962_3 v_or965_3;
(*   %shl967.3 = shl i32 %add1552.2, 10 *)
shls discard_752 v_shl967_3 v_add1552_2 10;
(*   %shr968.3 = lshr i32 %add1552.2, 22 *)
(* You may need to modify here *)
split v_shr968_3 tmp_to_be_used v_add1552_2 22;
(*   %or969.3 = or i32 %shl967.3, %shr968.3 *)
(* You may need to modify here *)
or uint32 v_or969_3 v_shl967_3 v_shr968_3;
(*   %xor970.3 = xor i32 %xor966.3, %or969.3 *)
(* You may need to modify here *)
xor uint32 v_xor970_3 v_xor966_3 v_or969_3;
(*   %and971.3 = and i32 %add1552.2, %add1470.2 *)
(* You may need to modify here *)
and uint32 v_and971_3 v_add1552_2 v_add1470_2;
(*   %and9722559.3 = xor i32 %add1552.2, %add1470.2 *)
(* You may need to modify here *)
xor uint32 v_and9722559_3 v_add1552_2 v_add1470_2;
(*   %xor973.3 = and i32 %and9722559.3, %add1388.2 *)
(* You may need to modify here *)
and uint32 v_xor973_3 v_and9722559_3 v_add1388_2;
(*   %xor975.3 = xor i32 %xor973.3, %and971.3 *)
(* You may need to modify here *)
xor uint32 v_xor975_3 v_xor973_3 v_and971_3;
(*   %add976.3 = add i32 %xor970.3, %xor975.3 *)
adds discard_753 v_add976_3 v_xor970_3 v_xor975_3;
(*   %add977.3 = add i32 %add959.3, %add1306.2 *)
adds discard_754 v_add977_3 v_add959_3 v_add1306_2;
(*   %add978.3 = add i32 %add976.3, %add959.3 *)
adds discard_755 v_add978_3 v_add976_3 v_add959_3;
(*   %149 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v149 arrayidx578_0;
(*   %shl988.3 = shl i32 %149, 25 *)
shls discard_756 v_shl988_3 v149 25;
(*   %shr989.3 = lshr i32 %149, 7 *)
(* You may need to modify here *)
split v_shr989_3 tmp_to_be_used v149 7;
(*   %or990.3 = or i32 %shl988.3, %shr989.3 *)
(* You may need to modify here *)
or uint32 v_or990_3 v_shl988_3 v_shr989_3;
(*   %shl991.3 = shl i32 %149, 14 *)
shls discard_757 v_shl991_3 v149 14;
(*   %shr992.3 = lshr i32 %149, 18 *)
(* You may need to modify here *)
split v_shr992_3 tmp_to_be_used v149 18;
(*   %or993.3 = or i32 %shl991.3, %shr992.3 *)
(* You may need to modify here *)
or uint32 v_or993_3 v_shl991_3 v_shr992_3;
(*   %shr995.3 = lshr i32 %149, 3 *)
(* You may need to modify here *)
split v_shr995_3 tmp_to_be_used v149 3;
(*   %xor994.3 = xor i32 %or993.3, %shr995.3 *)
(* You may need to modify here *)
xor uint32 v_xor994_3 v_or993_3 v_shr995_3;
(*   %xor996.3 = xor i32 %xor994.3, %or990.3 *)
(* You may need to modify here *)
xor uint32 v_xor996_3 v_xor994_3 v_or990_3;
(*   %150 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v150 arrayidx410_0;
(*   %shl1001.3 = shl i32 %150, 15 *)
shls discard_758 v_shl1001_3 v150 15;
(*   %shr1002.3 = lshr i32 %150, 17 *)
(* You may need to modify here *)
split v_shr1002_3 tmp_to_be_used v150 17;
(*   %or1003.3 = or i32 %shl1001.3, %shr1002.3 *)
(* You may need to modify here *)
or uint32 v_or1003_3 v_shl1001_3 v_shr1002_3;
(*   %shl1004.3 = shl i32 %150, 13 *)
shls discard_759 v_shl1004_3 v150 13;
(*   %shr1005.3 = lshr i32 %150, 19 *)
(* You may need to modify here *)
split v_shr1005_3 tmp_to_be_used v150 19;
(*   %or1006.3 = or i32 %shl1004.3, %shr1005.3 *)
(* You may need to modify here *)
or uint32 v_or1006_3 v_shl1004_3 v_shr1005_3;
(*   %shr1008.3 = lshr i32 %150, 10 *)
(* You may need to modify here *)
split v_shr1008_3 tmp_to_be_used v150 10;
(*   %xor1007.3 = xor i32 %or1006.3, %shr1008.3 *)
(* You may need to modify here *)
xor uint32 v_xor1007_3 v_or1006_3 v_shr1008_3;
(*   %xor1009.3 = xor i32 %xor1007.3, %or1003.3 *)
(* You may need to modify here *)
xor uint32 v_xor1009_3 v_xor1007_3 v_or1003_3;
(*   %151 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v151 arrayidx130_0;
(*   %add1010.3 = add i32 %151, %146 *)
adds discard_760 v_add1010_3 v151 v146;
(*   %add1015.3 = add i32 %add1010.3, %xor996.3 *)
adds discard_761 v_add1015_3 v_add1010_3 v_xor996_3;
(*   %add1019.3 = add i32 %add1015.3, %xor1009.3 *)
adds discard_762 v_add1019_3 v_add1015_3 v_xor1009_3;
(*   store i32 %add1019.3, i32* %arrayidx522, align 4, !tbaa !4 *)
mov arrayidx522_0 v_add1019_3;
(*   %shl1021.3 = shl i32 %add977.3, 26 *)
shls discard_763 v_shl1021_3 v_add977_3 26;
(*   %shr1022.3 = lshr i32 %add977.3, 6 *)
(* You may need to modify here *)
split v_shr1022_3 tmp_to_be_used v_add977_3 6;
(*   %or1023.3 = or i32 %shl1021.3, %shr1022.3 *)
(* You may need to modify here *)
or uint32 v_or1023_3 v_shl1021_3 v_shr1022_3;
(*   %shl1024.3 = shl i32 %add977.3, 21 *)
shls discard_764 v_shl1024_3 v_add977_3 21;
(*   %shr1025.3 = lshr i32 %add977.3, 11 *)
(* You may need to modify here *)
split v_shr1025_3 tmp_to_be_used v_add977_3 11;
(*   %or1026.3 = or i32 %shl1024.3, %shr1025.3 *)
(* You may need to modify here *)
or uint32 v_or1026_3 v_shl1024_3 v_shr1025_3;
(*   %xor1027.3 = xor i32 %or1023.3, %or1026.3 *)
(* You may need to modify here *)
xor uint32 v_xor1027_3 v_or1023_3 v_or1026_3;
(*   %shl1028.3 = shl i32 %add977.3, 7 *)
shls discard_765 v_shl1028_3 v_add977_3 7;
(*   %shr1029.3 = lshr i32 %add977.3, 25 *)
(* You may need to modify here *)
split v_shr1029_3 tmp_to_be_used v_add977_3 25;
(*   %or1030.3 = or i32 %shl1028.3, %shr1029.3 *)
(* You may need to modify here *)
or uint32 v_or1030_3 v_shl1028_3 v_shr1029_3;
(*   %xor1031.3 = xor i32 %xor1027.3, %or1030.3 *)
(* You may need to modify here *)
xor uint32 v_xor1031_3 v_xor1027_3 v_or1030_3;
(*   %and1033.3 = and i32 %add977.3, %add1551.2 *)
(* You may need to modify here *)
and uint32 v_and1033_3 v_add977_3 v_add1551_2;
(*   %neg1034.3 = xor i32 %add977.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1034_3 v_add977_3 (0xFFFFFFFF)@uint32;
(*   %and1035.3 = and i32 %add1469.2, %neg1034.3 *)
(* You may need to modify here *)
and uint32 v_and1035_3 v_add1469_2 v_neg1034_3;
(*   %xor1036.3 = or i32 %and1033.3, %and1035.3 *)
(* You may need to modify here *)
or uint32 v_xor1036_3 v_and1033_3 v_and1035_3;
(*   %add1032.3 = add i32 %add1387.2, -1474664885 *)
adds discard_766 v_add1032_3 v_add1387_2 (2820302411)@uint32;
(*   %add1037.3 = add i32 %add1032.3, %xor1036.3 *)
adds discard_767 v_add1037_3 v_add1032_3 v_xor1036_3;
(*   %add1040.3 = add i32 %add1037.3, %xor1031.3 *)
adds discard_768 v_add1040_3 v_add1037_3 v_xor1031_3;
(*   %add1041.3 = add i32 %add1040.3, %add1019.3 *)
adds discard_769 v_add1041_3 v_add1040_3 v_add1019_3;
(*   %shl1042.3 = shl i32 %add978.3, 30 *)
shls discard_770 v_shl1042_3 v_add978_3 30;
(*   %shr1043.3 = lshr i32 %add978.3, 2 *)
(* You may need to modify here *)
split v_shr1043_3 tmp_to_be_used v_add978_3 2;
(*   %or1044.3 = or i32 %shl1042.3, %shr1043.3 *)
(* You may need to modify here *)
or uint32 v_or1044_3 v_shl1042_3 v_shr1043_3;
(*   %shl1045.3 = shl i32 %add978.3, 19 *)
shls discard_771 v_shl1045_3 v_add978_3 19;
(*   %shr1046.3 = lshr i32 %add978.3, 13 *)
(* You may need to modify here *)
split v_shr1046_3 tmp_to_be_used v_add978_3 13;
(*   %or1047.3 = or i32 %shl1045.3, %shr1046.3 *)
(* You may need to modify here *)
or uint32 v_or1047_3 v_shl1045_3 v_shr1046_3;
(*   %xor1048.3 = xor i32 %or1044.3, %or1047.3 *)
(* You may need to modify here *)
xor uint32 v_xor1048_3 v_or1044_3 v_or1047_3;
(*   %shl1049.3 = shl i32 %add978.3, 10 *)
shls discard_772 v_shl1049_3 v_add978_3 10;
(*   %shr1050.3 = lshr i32 %add978.3, 22 *)
(* You may need to modify here *)
split v_shr1050_3 tmp_to_be_used v_add978_3 22;
(*   %or1051.3 = or i32 %shl1049.3, %shr1050.3 *)
(* You may need to modify here *)
or uint32 v_or1051_3 v_shl1049_3 v_shr1050_3;
(*   %xor1052.3 = xor i32 %xor1048.3, %or1051.3 *)
(* You may need to modify here *)
xor uint32 v_xor1052_3 v_xor1048_3 v_or1051_3;
(*   %and1053.3 = and i32 %add978.3, %add1552.2 *)
(* You may need to modify here *)
and uint32 v_and1053_3 v_add978_3 v_add1552_2;
(*   %and1054.3 = and i32 %add978.3, %add1470.2 *)
(* You may need to modify here *)
and uint32 v_and1054_3 v_add978_3 v_add1470_2;
(*   %xor1055.3 = xor i32 %and1054.3, %and971.3 *)
(* You may need to modify here *)
xor uint32 v_xor1055_3 v_and1054_3 v_and971_3;
(*   %xor1057.3 = xor i32 %xor1055.3, %and1053.3 *)
(* You may need to modify here *)
xor uint32 v_xor1057_3 v_xor1055_3 v_and1053_3;
(*   %add1058.3 = add i32 %xor1052.3, %xor1057.3 *)
adds discard_773 v_add1058_3 v_xor1052_3 v_xor1057_3;
(*   %add1059.3 = add i32 %add1041.3, %add1388.2 *)
adds discard_774 v_add1059_3 v_add1041_3 v_add1388_2;
(*   %add1060.3 = add i32 %add1058.3, %add1041.3 *)
adds discard_775 v_add1060_3 v_add1058_3 v_add1041_3;
(*   %152 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v152 arrayidx634_0;
(*   %shl1070.3 = shl i32 %152, 25 *)
shls discard_776 v_shl1070_3 v152 25;
(*   %shr1071.3 = lshr i32 %152, 7 *)
(* You may need to modify here *)
split v_shr1071_3 tmp_to_be_used v152 7;
(*   %or1072.3 = or i32 %shl1070.3, %shr1071.3 *)
(* You may need to modify here *)
or uint32 v_or1072_3 v_shl1070_3 v_shr1071_3;
(*   %shl1073.3 = shl i32 %152, 14 *)
shls discard_777 v_shl1073_3 v152 14;
(*   %shr1074.3 = lshr i32 %152, 18 *)
(* You may need to modify here *)
split v_shr1074_3 tmp_to_be_used v152 18;
(*   %or1075.3 = or i32 %shl1073.3, %shr1074.3 *)
(* You may need to modify here *)
or uint32 v_or1075_3 v_shl1073_3 v_shr1074_3;
(*   %shr1077.3 = lshr i32 %152, 3 *)
(* You may need to modify here *)
split v_shr1077_3 tmp_to_be_used v152 3;
(*   %xor1076.3 = xor i32 %or1075.3, %shr1077.3 *)
(* You may need to modify here *)
xor uint32 v_xor1076_3 v_or1075_3 v_shr1077_3;
(*   %xor1078.3 = xor i32 %xor1076.3, %or1072.3 *)
(* You may need to modify here *)
xor uint32 v_xor1078_3 v_xor1076_3 v_or1072_3;
(*   %153 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v153 arrayidx466_0;
(*   %shl1083.3 = shl i32 %153, 15 *)
shls discard_778 v_shl1083_3 v153 15;
(*   %shr1084.3 = lshr i32 %153, 17 *)
(* You may need to modify here *)
split v_shr1084_3 tmp_to_be_used v153 17;
(*   %or1085.3 = or i32 %shl1083.3, %shr1084.3 *)
(* You may need to modify here *)
or uint32 v_or1085_3 v_shl1083_3 v_shr1084_3;
(*   %shl1086.3 = shl i32 %153, 13 *)
shls discard_779 v_shl1086_3 v153 13;
(*   %shr1087.3 = lshr i32 %153, 19 *)
(* You may need to modify here *)
split v_shr1087_3 tmp_to_be_used v153 19;
(*   %or1088.3 = or i32 %shl1086.3, %shr1087.3 *)
(* You may need to modify here *)
or uint32 v_or1088_3 v_shl1086_3 v_shr1087_3;
(*   %shr1090.3 = lshr i32 %153, 10 *)
(* You may need to modify here *)
split v_shr1090_3 tmp_to_be_used v153 10;
(*   %xor1089.3 = xor i32 %or1088.3, %shr1090.3 *)
(* You may need to modify here *)
xor uint32 v_xor1089_3 v_or1088_3 v_shr1090_3;
(*   %xor1091.3 = xor i32 %xor1089.3, %or1085.3 *)
(* You may need to modify here *)
xor uint32 v_xor1091_3 v_xor1089_3 v_or1085_3;
(*   %154 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v154 arrayidx186_0;
(*   %add1092.3 = add i32 %149, %154 *)
adds discard_780 v_add1092_3 v149 v154;
(*   %add1097.3 = add i32 %add1092.3, %xor1078.3 *)
adds discard_781 v_add1097_3 v_add1092_3 v_xor1078_3;
(*   %add1101.3 = add i32 %add1097.3, %xor1091.3 *)
adds discard_782 v_add1101_3 v_add1097_3 v_xor1091_3;
(*   store i32 %add1101.3, i32* %arrayidx578, align 4, !tbaa !4 *)
mov arrayidx578_0 v_add1101_3;
(*   %shl1103.3 = shl i32 %add1059.3, 26 *)
shls discard_783 v_shl1103_3 v_add1059_3 26;
(*   %shr1104.3 = lshr i32 %add1059.3, 6 *)
(* You may need to modify here *)
split v_shr1104_3 tmp_to_be_used v_add1059_3 6;
(*   %or1105.3 = or i32 %shl1103.3, %shr1104.3 *)
(* You may need to modify here *)
or uint32 v_or1105_3 v_shl1103_3 v_shr1104_3;
(*   %shl1106.3 = shl i32 %add1059.3, 21 *)
shls discard_784 v_shl1106_3 v_add1059_3 21;
(*   %shr1107.3 = lshr i32 %add1059.3, 11 *)
(* You may need to modify here *)
split v_shr1107_3 tmp_to_be_used v_add1059_3 11;
(*   %or1108.3 = or i32 %shl1106.3, %shr1107.3 *)
(* You may need to modify here *)
or uint32 v_or1108_3 v_shl1106_3 v_shr1107_3;
(*   %xor1109.3 = xor i32 %or1105.3, %or1108.3 *)
(* You may need to modify here *)
xor uint32 v_xor1109_3 v_or1105_3 v_or1108_3;
(*   %shl1110.3 = shl i32 %add1059.3, 7 *)
shls discard_785 v_shl1110_3 v_add1059_3 7;
(*   %shr1111.3 = lshr i32 %add1059.3, 25 *)
(* You may need to modify here *)
split v_shr1111_3 tmp_to_be_used v_add1059_3 25;
(*   %or1112.3 = or i32 %shl1110.3, %shr1111.3 *)
(* You may need to modify here *)
or uint32 v_or1112_3 v_shl1110_3 v_shr1111_3;
(*   %xor1113.3 = xor i32 %xor1109.3, %or1112.3 *)
(* You may need to modify here *)
xor uint32 v_xor1113_3 v_xor1109_3 v_or1112_3;
(*   %and1115.3 = and i32 %add1059.3, %add977.3 *)
(* You may need to modify here *)
and uint32 v_and1115_3 v_add1059_3 v_add977_3;
(*   %neg1116.3 = xor i32 %add1059.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1116_3 v_add1059_3 (0xFFFFFFFF)@uint32;
(*   %and1117.3 = and i32 %add1551.2, %neg1116.3 *)
(* You may need to modify here *)
and uint32 v_and1117_3 v_add1551_2 v_neg1116_3;
(*   %xor1118.3 = or i32 %and1115.3, %and1117.3 *)
(* You may need to modify here *)
or uint32 v_xor1118_3 v_and1115_3 v_and1117_3;
(*   %add1114.3 = add i32 %add1469.2, -1035236496 *)
adds discard_786 v_add1114_3 v_add1469_2 (3259730800)@uint32;
(*   %add1119.3 = add i32 %add1114.3, %add1101.3 *)
adds discard_787 v_add1119_3 v_add1114_3 v_add1101_3;
(*   %add1122.3 = add i32 %add1119.3, %xor1118.3 *)
adds discard_788 v_add1122_3 v_add1119_3 v_xor1118_3;
(*   %add1123.3 = add i32 %add1122.3, %xor1113.3 *)
adds discard_789 v_add1123_3 v_add1122_3 v_xor1113_3;
(*   %shl1124.3 = shl i32 %add1060.3, 30 *)
shls discard_790 v_shl1124_3 v_add1060_3 30;
(*   %shr1125.3 = lshr i32 %add1060.3, 2 *)
(* You may need to modify here *)
split v_shr1125_3 tmp_to_be_used v_add1060_3 2;
(*   %or1126.3 = or i32 %shl1124.3, %shr1125.3 *)
(* You may need to modify here *)
or uint32 v_or1126_3 v_shl1124_3 v_shr1125_3;
(*   %shl1127.3 = shl i32 %add1060.3, 19 *)
shls discard_791 v_shl1127_3 v_add1060_3 19;
(*   %shr1128.3 = lshr i32 %add1060.3, 13 *)
(* You may need to modify here *)
split v_shr1128_3 tmp_to_be_used v_add1060_3 13;
(*   %or1129.3 = or i32 %shl1127.3, %shr1128.3 *)
(* You may need to modify here *)
or uint32 v_or1129_3 v_shl1127_3 v_shr1128_3;
(*   %xor1130.3 = xor i32 %or1126.3, %or1129.3 *)
(* You may need to modify here *)
xor uint32 v_xor1130_3 v_or1126_3 v_or1129_3;
(*   %shl1131.3 = shl i32 %add1060.3, 10 *)
shls discard_792 v_shl1131_3 v_add1060_3 10;
(*   %shr1132.3 = lshr i32 %add1060.3, 22 *)
(* You may need to modify here *)
split v_shr1132_3 tmp_to_be_used v_add1060_3 22;
(*   %or1133.3 = or i32 %shl1131.3, %shr1132.3 *)
(* You may need to modify here *)
or uint32 v_or1133_3 v_shl1131_3 v_shr1132_3;
(*   %xor1134.3 = xor i32 %xor1130.3, %or1133.3 *)
(* You may need to modify here *)
xor uint32 v_xor1134_3 v_xor1130_3 v_or1133_3;
(*   %and1135.3 = and i32 %add1060.3, %add978.3 *)
(* You may need to modify here *)
and uint32 v_and1135_3 v_add1060_3 v_add978_3;
(*   %and1136.3 = and i32 %add1060.3, %add1552.2 *)
(* You may need to modify here *)
and uint32 v_and1136_3 v_add1060_3 v_add1552_2;
(*   %xor1137.3 = xor i32 %and1136.3, %and1053.3 *)
(* You may need to modify here *)
xor uint32 v_xor1137_3 v_and1136_3 v_and1053_3;
(*   %xor1139.3 = xor i32 %xor1137.3, %and1135.3 *)
(* You may need to modify here *)
xor uint32 v_xor1139_3 v_xor1137_3 v_and1135_3;
(*   %add1140.3 = add i32 %xor1134.3, %xor1139.3 *)
adds discard_793 v_add1140_3 v_xor1134_3 v_xor1139_3;
(*   %add1141.3 = add i32 %add1123.3, %add1470.2 *)
adds discard_794 v_add1141_3 v_add1123_3 v_add1470_2;
(*   %add1142.3 = add i32 %add1140.3, %add1123.3 *)
adds discard_795 v_add1142_3 v_add1140_3 v_add1123_3;
(*   %155 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v155 arrayidx690_0;
(*   %shl1152.3 = shl i32 %155, 25 *)
shls discard_796 v_shl1152_3 v155 25;
(*   %shr1153.3 = lshr i32 %155, 7 *)
(* You may need to modify here *)
split v_shr1153_3 tmp_to_be_used v155 7;
(*   %or1154.3 = or i32 %shl1152.3, %shr1153.3 *)
(* You may need to modify here *)
or uint32 v_or1154_3 v_shl1152_3 v_shr1153_3;
(*   %shl1155.3 = shl i32 %155, 14 *)
shls discard_797 v_shl1155_3 v155 14;
(*   %shr1156.3 = lshr i32 %155, 18 *)
(* You may need to modify here *)
split v_shr1156_3 tmp_to_be_used v155 18;
(*   %or1157.3 = or i32 %shl1155.3, %shr1156.3 *)
(* You may need to modify here *)
or uint32 v_or1157_3 v_shl1155_3 v_shr1156_3;
(*   %shr1159.3 = lshr i32 %155, 3 *)
(* You may need to modify here *)
split v_shr1159_3 tmp_to_be_used v155 3;
(*   %xor1158.3 = xor i32 %or1157.3, %shr1159.3 *)
(* You may need to modify here *)
xor uint32 v_xor1158_3 v_or1157_3 v_shr1159_3;
(*   %xor1160.3 = xor i32 %xor1158.3, %or1154.3 *)
(* You may need to modify here *)
xor uint32 v_xor1160_3 v_xor1158_3 v_or1154_3;
(*   %156 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v156 arrayidx522_0;
(*   %shl1165.3 = shl i32 %156, 15 *)
shls discard_798 v_shl1165_3 v156 15;
(*   %shr1166.3 = lshr i32 %156, 17 *)
(* You may need to modify here *)
split v_shr1166_3 tmp_to_be_used v156 17;
(*   %or1167.3 = or i32 %shl1165.3, %shr1166.3 *)
(* You may need to modify here *)
or uint32 v_or1167_3 v_shl1165_3 v_shr1166_3;
(*   %shl1168.3 = shl i32 %156, 13 *)
shls discard_799 v_shl1168_3 v156 13;
(*   %shr1169.3 = lshr i32 %156, 19 *)
(* You may need to modify here *)
split v_shr1169_3 tmp_to_be_used v156 19;
(*   %or1170.3 = or i32 %shl1168.3, %shr1169.3 *)
(* You may need to modify here *)
or uint32 v_or1170_3 v_shl1168_3 v_shr1169_3;
(*   %shr1172.3 = lshr i32 %156, 10 *)
(* You may need to modify here *)
split v_shr1172_3 tmp_to_be_used v156 10;
(*   %xor1171.3 = xor i32 %or1170.3, %shr1172.3 *)
(* You may need to modify here *)
xor uint32 v_xor1171_3 v_or1170_3 v_shr1172_3;
(*   %xor1173.3 = xor i32 %xor1171.3, %or1167.3 *)
(* You may need to modify here *)
xor uint32 v_xor1173_3 v_xor1171_3 v_or1167_3;
(*   %157 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v157 arrayidx242_0;
(*   %add1174.3 = add i32 %152, %157 *)
adds discard_800 v_add1174_3 v152 v157;
(*   %add1179.3 = add i32 %add1174.3, %xor1160.3 *)
adds discard_801 v_add1179_3 v_add1174_3 v_xor1160_3;
(*   %add1183.3 = add i32 %add1179.3, %xor1173.3 *)
adds discard_802 v_add1183_3 v_add1179_3 v_xor1173_3;
(*   store i32 %add1183.3, i32* %arrayidx634, align 4, !tbaa !4 *)
mov arrayidx634_0 v_add1183_3;
(*   %shl1185.3 = shl i32 %add1141.3, 26 *)
shls discard_803 v_shl1185_3 v_add1141_3 26;
(*   %shr1186.3 = lshr i32 %add1141.3, 6 *)
(* You may need to modify here *)
split v_shr1186_3 tmp_to_be_used v_add1141_3 6;
(*   %or1187.3 = or i32 %shl1185.3, %shr1186.3 *)
(* You may need to modify here *)
or uint32 v_or1187_3 v_shl1185_3 v_shr1186_3;
(*   %shl1188.3 = shl i32 %add1141.3, 21 *)
shls discard_804 v_shl1188_3 v_add1141_3 21;
(*   %shr1189.3 = lshr i32 %add1141.3, 11 *)
(* You may need to modify here *)
split v_shr1189_3 tmp_to_be_used v_add1141_3 11;
(*   %or1190.3 = or i32 %shl1188.3, %shr1189.3 *)
(* You may need to modify here *)
or uint32 v_or1190_3 v_shl1188_3 v_shr1189_3;
(*   %xor1191.3 = xor i32 %or1187.3, %or1190.3 *)
(* You may need to modify here *)
xor uint32 v_xor1191_3 v_or1187_3 v_or1190_3;
(*   %shl1192.3 = shl i32 %add1141.3, 7 *)
shls discard_805 v_shl1192_3 v_add1141_3 7;
(*   %shr1193.3 = lshr i32 %add1141.3, 25 *)
(* You may need to modify here *)
split v_shr1193_3 tmp_to_be_used v_add1141_3 25;
(*   %or1194.3 = or i32 %shl1192.3, %shr1193.3 *)
(* You may need to modify here *)
or uint32 v_or1194_3 v_shl1192_3 v_shr1193_3;
(*   %xor1195.3 = xor i32 %xor1191.3, %or1194.3 *)
(* You may need to modify here *)
xor uint32 v_xor1195_3 v_xor1191_3 v_or1194_3;
(*   %and1197.3 = and i32 %add1141.3, %add1059.3 *)
(* You may need to modify here *)
and uint32 v_and1197_3 v_add1141_3 v_add1059_3;
(*   %neg1198.3 = xor i32 %add1141.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1198_3 v_add1141_3 (0xFFFFFFFF)@uint32;
(*   %and1199.3 = and i32 %add977.3, %neg1198.3 *)
(* You may need to modify here *)
and uint32 v_and1199_3 v_add977_3 v_neg1198_3;
(*   %xor1200.3 = or i32 %and1197.3, %and1199.3 *)
(* You may need to modify here *)
or uint32 v_xor1200_3 v_and1197_3 v_and1199_3;
(*   %add1196.3 = add i32 %add1551.2, -949202525 *)
adds discard_806 v_add1196_3 v_add1551_2 (3345764771)@uint32;
(*   %add1201.3 = add i32 %add1196.3, %add1183.3 *)
adds discard_807 v_add1201_3 v_add1196_3 v_add1183_3;
(*   %add1204.3 = add i32 %add1201.3, %xor1200.3 *)
adds discard_808 v_add1204_3 v_add1201_3 v_xor1200_3;
(*   %add1205.3 = add i32 %add1204.3, %xor1195.3 *)
adds discard_809 v_add1205_3 v_add1204_3 v_xor1195_3;
(*   %shl1206.3 = shl i32 %add1142.3, 30 *)
shls discard_810 v_shl1206_3 v_add1142_3 30;
(*   %shr1207.3 = lshr i32 %add1142.3, 2 *)
(* You may need to modify here *)
split v_shr1207_3 tmp_to_be_used v_add1142_3 2;
(*   %or1208.3 = or i32 %shl1206.3, %shr1207.3 *)
(* You may need to modify here *)
or uint32 v_or1208_3 v_shl1206_3 v_shr1207_3;
(*   %shl1209.3 = shl i32 %add1142.3, 19 *)
shls discard_811 v_shl1209_3 v_add1142_3 19;
(*   %shr1210.3 = lshr i32 %add1142.3, 13 *)
(* You may need to modify here *)
split v_shr1210_3 tmp_to_be_used v_add1142_3 13;
(*   %or1211.3 = or i32 %shl1209.3, %shr1210.3 *)
(* You may need to modify here *)
or uint32 v_or1211_3 v_shl1209_3 v_shr1210_3;
(*   %xor1212.3 = xor i32 %or1208.3, %or1211.3 *)
(* You may need to modify here *)
xor uint32 v_xor1212_3 v_or1208_3 v_or1211_3;
(*   %shl1213.3 = shl i32 %add1142.3, 10 *)
shls discard_812 v_shl1213_3 v_add1142_3 10;
(*   %shr1214.3 = lshr i32 %add1142.3, 22 *)
(* You may need to modify here *)
split v_shr1214_3 tmp_to_be_used v_add1142_3 22;
(*   %or1215.3 = or i32 %shl1213.3, %shr1214.3 *)
(* You may need to modify here *)
or uint32 v_or1215_3 v_shl1213_3 v_shr1214_3;
(*   %xor1216.3 = xor i32 %xor1212.3, %or1215.3 *)
(* You may need to modify here *)
xor uint32 v_xor1216_3 v_xor1212_3 v_or1215_3;
(*   %and1217.3 = and i32 %add1142.3, %add1060.3 *)
(* You may need to modify here *)
and uint32 v_and1217_3 v_add1142_3 v_add1060_3;
(*   %and1218.3 = and i32 %add1142.3, %add978.3 *)
(* You may need to modify here *)
and uint32 v_and1218_3 v_add1142_3 v_add978_3;
(*   %xor1219.3 = xor i32 %and1218.3, %and1135.3 *)
(* You may need to modify here *)
xor uint32 v_xor1219_3 v_and1218_3 v_and1135_3;
(*   %xor1221.3 = xor i32 %xor1219.3, %and1217.3 *)
(* You may need to modify here *)
xor uint32 v_xor1221_3 v_xor1219_3 v_and1217_3;
(*   %add1222.3 = add i32 %xor1216.3, %xor1221.3 *)
adds discard_813 v_add1222_3 v_xor1216_3 v_xor1221_3;
(*   %add1223.3 = add i32 %add1205.3, %add1552.2 *)
adds discard_814 v_add1223_3 v_add1205_3 v_add1552_2;
(*   %add1224.3 = add i32 %add1222.3, %add1205.3 *)
adds discard_815 v_add1224_3 v_add1222_3 v_add1205_3;
(*   %158 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v158 arrayidx746_0;
(*   %shl1234.3 = shl i32 %158, 25 *)
shls discard_816 v_shl1234_3 v158 25;
(*   %shr1235.3 = lshr i32 %158, 7 *)
(* You may need to modify here *)
split v_shr1235_3 tmp_to_be_used v158 7;
(*   %or1236.3 = or i32 %shl1234.3, %shr1235.3 *)
(* You may need to modify here *)
or uint32 v_or1236_3 v_shl1234_3 v_shr1235_3;
(*   %shl1237.3 = shl i32 %158, 14 *)
shls discard_817 v_shl1237_3 v158 14;
(*   %shr1238.3 = lshr i32 %158, 18 *)
(* You may need to modify here *)
split v_shr1238_3 tmp_to_be_used v158 18;
(*   %or1239.3 = or i32 %shl1237.3, %shr1238.3 *)
(* You may need to modify here *)
or uint32 v_or1239_3 v_shl1237_3 v_shr1238_3;
(*   %shr1241.3 = lshr i32 %158, 3 *)
(* You may need to modify here *)
split v_shr1241_3 tmp_to_be_used v158 3;
(*   %xor1240.3 = xor i32 %or1239.3, %shr1241.3 *)
(* You may need to modify here *)
xor uint32 v_xor1240_3 v_or1239_3 v_shr1241_3;
(*   %xor1242.3 = xor i32 %xor1240.3, %or1236.3 *)
(* You may need to modify here *)
xor uint32 v_xor1242_3 v_xor1240_3 v_or1236_3;
(*   %159 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v159 arrayidx578_0;
(*   %shl1247.3 = shl i32 %159, 15 *)
shls discard_818 v_shl1247_3 v159 15;
(*   %shr1248.3 = lshr i32 %159, 17 *)
(* You may need to modify here *)
split v_shr1248_3 tmp_to_be_used v159 17;
(*   %or1249.3 = or i32 %shl1247.3, %shr1248.3 *)
(* You may need to modify here *)
or uint32 v_or1249_3 v_shl1247_3 v_shr1248_3;
(*   %shl1250.3 = shl i32 %159, 13 *)
shls discard_819 v_shl1250_3 v159 13;
(*   %shr1251.3 = lshr i32 %159, 19 *)
(* You may need to modify here *)
split v_shr1251_3 tmp_to_be_used v159 19;
(*   %or1252.3 = or i32 %shl1250.3, %shr1251.3 *)
(* You may need to modify here *)
or uint32 v_or1252_3 v_shl1250_3 v_shr1251_3;
(*   %shr1254.3 = lshr i32 %159, 10 *)
(* You may need to modify here *)
split v_shr1254_3 tmp_to_be_used v159 10;
(*   %xor1253.3 = xor i32 %or1252.3, %shr1254.3 *)
(* You may need to modify here *)
xor uint32 v_xor1253_3 v_or1252_3 v_shr1254_3;
(*   %xor1255.3 = xor i32 %xor1253.3, %or1249.3 *)
(* You may need to modify here *)
xor uint32 v_xor1255_3 v_xor1253_3 v_or1249_3;
(*   %160 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v160 arrayidx298_0;
(*   %add1256.3 = add i32 %155, %160 *)
adds discard_820 v_add1256_3 v155 v160;
(*   %add1261.3 = add i32 %add1256.3, %xor1242.3 *)
adds discard_821 v_add1261_3 v_add1256_3 v_xor1242_3;
(*   %add1265.3 = add i32 %add1261.3, %xor1255.3 *)
adds discard_822 v_add1265_3 v_add1261_3 v_xor1255_3;
(*   store i32 %add1265.3, i32* %arrayidx690, align 4, !tbaa !4 *)
mov arrayidx690_0 v_add1265_3;
(*   %shl1267.3 = shl i32 %add1223.3, 26 *)
shls discard_823 v_shl1267_3 v_add1223_3 26;
(*   %shr1268.3 = lshr i32 %add1223.3, 6 *)
(* You may need to modify here *)
split v_shr1268_3 tmp_to_be_used v_add1223_3 6;
(*   %or1269.3 = or i32 %shl1267.3, %shr1268.3 *)
(* You may need to modify here *)
or uint32 v_or1269_3 v_shl1267_3 v_shr1268_3;
(*   %shl1270.3 = shl i32 %add1223.3, 21 *)
shls discard_824 v_shl1270_3 v_add1223_3 21;
(*   %shr1271.3 = lshr i32 %add1223.3, 11 *)
(* You may need to modify here *)
split v_shr1271_3 tmp_to_be_used v_add1223_3 11;
(*   %or1272.3 = or i32 %shl1270.3, %shr1271.3 *)
(* You may need to modify here *)
or uint32 v_or1272_3 v_shl1270_3 v_shr1271_3;
(*   %xor1273.3 = xor i32 %or1269.3, %or1272.3 *)
(* You may need to modify here *)
xor uint32 v_xor1273_3 v_or1269_3 v_or1272_3;
(*   %shl1274.3 = shl i32 %add1223.3, 7 *)
shls discard_825 v_shl1274_3 v_add1223_3 7;
(*   %shr1275.3 = lshr i32 %add1223.3, 25 *)
(* You may need to modify here *)
split v_shr1275_3 tmp_to_be_used v_add1223_3 25;
(*   %or1276.3 = or i32 %shl1274.3, %shr1275.3 *)
(* You may need to modify here *)
or uint32 v_or1276_3 v_shl1274_3 v_shr1275_3;
(*   %xor1277.3 = xor i32 %xor1273.3, %or1276.3 *)
(* You may need to modify here *)
xor uint32 v_xor1277_3 v_xor1273_3 v_or1276_3;
(*   %and1279.3 = and i32 %add1223.3, %add1141.3 *)
(* You may need to modify here *)
and uint32 v_and1279_3 v_add1223_3 v_add1141_3;
(*   %neg1280.3 = xor i32 %add1223.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1280_3 v_add1223_3 (0xFFFFFFFF)@uint32;
(*   %and1281.3 = and i32 %add1059.3, %neg1280.3 *)
(* You may need to modify here *)
and uint32 v_and1281_3 v_add1059_3 v_neg1280_3;
(*   %xor1282.3 = or i32 %and1279.3, %and1281.3 *)
(* You may need to modify here *)
or uint32 v_xor1282_3 v_and1279_3 v_and1281_3;
(*   %add1278.3 = add i32 %add977.3, -778901479 *)
adds discard_826 v_add1278_3 v_add977_3 (3516065817)@uint32;
(*   %add1283.3 = add i32 %add1278.3, %add1265.3 *)
adds discard_827 v_add1283_3 v_add1278_3 v_add1265_3;
(*   %add1286.3 = add i32 %add1283.3, %xor1282.3 *)
adds discard_828 v_add1286_3 v_add1283_3 v_xor1282_3;
(*   %add1287.3 = add i32 %add1286.3, %xor1277.3 *)
adds discard_829 v_add1287_3 v_add1286_3 v_xor1277_3;
(*   %shl1288.3 = shl i32 %add1224.3, 30 *)
shls discard_830 v_shl1288_3 v_add1224_3 30;
(*   %shr1289.3 = lshr i32 %add1224.3, 2 *)
(* You may need to modify here *)
split v_shr1289_3 tmp_to_be_used v_add1224_3 2;
(*   %or1290.3 = or i32 %shl1288.3, %shr1289.3 *)
(* You may need to modify here *)
or uint32 v_or1290_3 v_shl1288_3 v_shr1289_3;
(*   %shl1291.3 = shl i32 %add1224.3, 19 *)
shls discard_831 v_shl1291_3 v_add1224_3 19;
(*   %shr1292.3 = lshr i32 %add1224.3, 13 *)
(* You may need to modify here *)
split v_shr1292_3 tmp_to_be_used v_add1224_3 13;
(*   %or1293.3 = or i32 %shl1291.3, %shr1292.3 *)
(* You may need to modify here *)
or uint32 v_or1293_3 v_shl1291_3 v_shr1292_3;
(*   %xor1294.3 = xor i32 %or1290.3, %or1293.3 *)
(* You may need to modify here *)
xor uint32 v_xor1294_3 v_or1290_3 v_or1293_3;
(*   %shl1295.3 = shl i32 %add1224.3, 10 *)
shls discard_832 v_shl1295_3 v_add1224_3 10;
(*   %shr1296.3 = lshr i32 %add1224.3, 22 *)
(* You may need to modify here *)
split v_shr1296_3 tmp_to_be_used v_add1224_3 22;
(*   %or1297.3 = or i32 %shl1295.3, %shr1296.3 *)
(* You may need to modify here *)
or uint32 v_or1297_3 v_shl1295_3 v_shr1296_3;
(*   %xor1298.3 = xor i32 %xor1294.3, %or1297.3 *)
(* You may need to modify here *)
xor uint32 v_xor1298_3 v_xor1294_3 v_or1297_3;
(*   %and1299.3 = and i32 %add1224.3, %add1142.3 *)
(* You may need to modify here *)
and uint32 v_and1299_3 v_add1224_3 v_add1142_3;
(*   %and1300.3 = and i32 %add1224.3, %add1060.3 *)
(* You may need to modify here *)
and uint32 v_and1300_3 v_add1224_3 v_add1060_3;
(*   %xor1301.3 = xor i32 %and1300.3, %and1217.3 *)
(* You may need to modify here *)
xor uint32 v_xor1301_3 v_and1300_3 v_and1217_3;
(*   %xor1303.3 = xor i32 %xor1301.3, %and1299.3 *)
(* You may need to modify here *)
xor uint32 v_xor1303_3 v_xor1301_3 v_and1299_3;
(*   %add1304.3 = add i32 %xor1298.3, %xor1303.3 *)
adds discard_833 v_add1304_3 v_xor1298_3 v_xor1303_3;
(*   %add1305.3 = add i32 %add1287.3, %add978.3 *)
adds discard_834 v_add1305_3 v_add1287_3 v_add978_3;
(*   %add1306.3 = add i32 %add1304.3, %add1287.3 *)
adds discard_835 v_add1306_3 v_add1304_3 v_add1287_3;
(*   %161 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v161 arrayidx802_0;
(*   %shl1316.3 = shl i32 %161, 25 *)
shls discard_836 v_shl1316_3 v161 25;
(*   %shr1317.3 = lshr i32 %161, 7 *)
(* You may need to modify here *)
split v_shr1317_3 tmp_to_be_used v161 7;
(*   %or1318.3 = or i32 %shl1316.3, %shr1317.3 *)
(* You may need to modify here *)
or uint32 v_or1318_3 v_shl1316_3 v_shr1317_3;
(*   %shl1319.3 = shl i32 %161, 14 *)
shls discard_837 v_shl1319_3 v161 14;
(*   %shr1320.3 = lshr i32 %161, 18 *)
(* You may need to modify here *)
split v_shr1320_3 tmp_to_be_used v161 18;
(*   %or1321.3 = or i32 %shl1319.3, %shr1320.3 *)
(* You may need to modify here *)
or uint32 v_or1321_3 v_shl1319_3 v_shr1320_3;
(*   %shr1323.3 = lshr i32 %161, 3 *)
(* You may need to modify here *)
split v_shr1323_3 tmp_to_be_used v161 3;
(*   %xor1322.3 = xor i32 %or1321.3, %shr1323.3 *)
(* You may need to modify here *)
xor uint32 v_xor1322_3 v_or1321_3 v_shr1323_3;
(*   %xor1324.3 = xor i32 %xor1322.3, %or1318.3 *)
(* You may need to modify here *)
xor uint32 v_xor1324_3 v_xor1322_3 v_or1318_3;
(*   %162 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v162 arrayidx634_0;
(*   %shl1329.3 = shl i32 %162, 15 *)
shls discard_838 v_shl1329_3 v162 15;
(*   %shr1330.3 = lshr i32 %162, 17 *)
(* You may need to modify here *)
split v_shr1330_3 tmp_to_be_used v162 17;
(*   %or1331.3 = or i32 %shl1329.3, %shr1330.3 *)
(* You may need to modify here *)
or uint32 v_or1331_3 v_shl1329_3 v_shr1330_3;
(*   %shl1332.3 = shl i32 %162, 13 *)
shls discard_839 v_shl1332_3 v162 13;
(*   %shr1333.3 = lshr i32 %162, 19 *)
(* You may need to modify here *)
split v_shr1333_3 tmp_to_be_used v162 19;
(*   %or1334.3 = or i32 %shl1332.3, %shr1333.3 *)
(* You may need to modify here *)
or uint32 v_or1334_3 v_shl1332_3 v_shr1333_3;
(*   %shr1336.3 = lshr i32 %162, 10 *)
(* You may need to modify here *)
split v_shr1336_3 tmp_to_be_used v162 10;
(*   %xor1335.3 = xor i32 %or1334.3, %shr1336.3 *)
(* You may need to modify here *)
xor uint32 v_xor1335_3 v_or1334_3 v_shr1336_3;
(*   %xor1337.3 = xor i32 %xor1335.3, %or1331.3 *)
(* You may need to modify here *)
xor uint32 v_xor1337_3 v_xor1335_3 v_or1331_3;
(*   %163 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v163 arrayidx354_0;
(*   %add1338.3 = add i32 %158, %163 *)
adds discard_840 v_add1338_3 v158 v163;
(*   %add1343.3 = add i32 %add1338.3, %xor1324.3 *)
adds discard_841 v_add1343_3 v_add1338_3 v_xor1324_3;
(*   %add1347.3 = add i32 %add1343.3, %xor1337.3 *)
adds discard_842 v_add1347_3 v_add1343_3 v_xor1337_3;
(*   store i32 %add1347.3, i32* %arrayidx746, align 4, !tbaa !4 *)
mov arrayidx746_0 v_add1347_3;
(*   %shl1349.3 = shl i32 %add1305.3, 26 *)
shls discard_843 v_shl1349_3 v_add1305_3 26;
(*   %shr1350.3 = lshr i32 %add1305.3, 6 *)
(* You may need to modify here *)
split v_shr1350_3 tmp_to_be_used v_add1305_3 6;
(*   %or1351.3 = or i32 %shl1349.3, %shr1350.3 *)
(* You may need to modify here *)
or uint32 v_or1351_3 v_shl1349_3 v_shr1350_3;
(*   %shl1352.3 = shl i32 %add1305.3, 21 *)
shls discard_844 v_shl1352_3 v_add1305_3 21;
(*   %shr1353.3 = lshr i32 %add1305.3, 11 *)
(* You may need to modify here *)
split v_shr1353_3 tmp_to_be_used v_add1305_3 11;
(*   %or1354.3 = or i32 %shl1352.3, %shr1353.3 *)
(* You may need to modify here *)
or uint32 v_or1354_3 v_shl1352_3 v_shr1353_3;
(*   %xor1355.3 = xor i32 %or1351.3, %or1354.3 *)
(* You may need to modify here *)
xor uint32 v_xor1355_3 v_or1351_3 v_or1354_3;
(*   %shl1356.3 = shl i32 %add1305.3, 7 *)
shls discard_845 v_shl1356_3 v_add1305_3 7;
(*   %shr1357.3 = lshr i32 %add1305.3, 25 *)
(* You may need to modify here *)
split v_shr1357_3 tmp_to_be_used v_add1305_3 25;
(*   %or1358.3 = or i32 %shl1356.3, %shr1357.3 *)
(* You may need to modify here *)
or uint32 v_or1358_3 v_shl1356_3 v_shr1357_3;
(*   %xor1359.3 = xor i32 %xor1355.3, %or1358.3 *)
(* You may need to modify here *)
xor uint32 v_xor1359_3 v_xor1355_3 v_or1358_3;
(*   %and1361.3 = and i32 %add1305.3, %add1223.3 *)
(* You may need to modify here *)
and uint32 v_and1361_3 v_add1305_3 v_add1223_3;
(*   %neg1362.3 = xor i32 %add1305.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1362_3 v_add1305_3 (0xFFFFFFFF)@uint32;
(*   %and1363.3 = and i32 %add1141.3, %neg1362.3 *)
(* You may need to modify here *)
and uint32 v_and1363_3 v_add1141_3 v_neg1362_3;
(*   %xor1364.3 = or i32 %and1361.3, %and1363.3 *)
(* You may need to modify here *)
or uint32 v_xor1364_3 v_and1361_3 v_and1363_3;
(*   %add1360.3 = add i32 %add1059.3, -694614492 *)
adds discard_846 v_add1360_3 v_add1059_3 (3600352804)@uint32;
(*   %add1365.3 = add i32 %add1360.3, %add1347.3 *)
adds discard_847 v_add1365_3 v_add1360_3 v_add1347_3;
(*   %add1368.3 = add i32 %add1365.3, %xor1364.3 *)
adds discard_848 v_add1368_3 v_add1365_3 v_xor1364_3;
(*   %add1369.3 = add i32 %add1368.3, %xor1359.3 *)
adds discard_849 v_add1369_3 v_add1368_3 v_xor1359_3;
(*   %shl1370.3 = shl i32 %add1306.3, 30 *)
shls discard_850 v_shl1370_3 v_add1306_3 30;
(*   %shr1371.3 = lshr i32 %add1306.3, 2 *)
(* You may need to modify here *)
split v_shr1371_3 tmp_to_be_used v_add1306_3 2;
(*   %or1372.3 = or i32 %shl1370.3, %shr1371.3 *)
(* You may need to modify here *)
or uint32 v_or1372_3 v_shl1370_3 v_shr1371_3;
(*   %shl1373.3 = shl i32 %add1306.3, 19 *)
shls discard_851 v_shl1373_3 v_add1306_3 19;
(*   %shr1374.3 = lshr i32 %add1306.3, 13 *)
(* You may need to modify here *)
split v_shr1374_3 tmp_to_be_used v_add1306_3 13;
(*   %or1375.3 = or i32 %shl1373.3, %shr1374.3 *)
(* You may need to modify here *)
or uint32 v_or1375_3 v_shl1373_3 v_shr1374_3;
(*   %xor1376.3 = xor i32 %or1372.3, %or1375.3 *)
(* You may need to modify here *)
xor uint32 v_xor1376_3 v_or1372_3 v_or1375_3;
(*   %shl1377.3 = shl i32 %add1306.3, 10 *)
shls discard_852 v_shl1377_3 v_add1306_3 10;
(*   %shr1378.3 = lshr i32 %add1306.3, 22 *)
(* You may need to modify here *)
split v_shr1378_3 tmp_to_be_used v_add1306_3 22;
(*   %or1379.3 = or i32 %shl1377.3, %shr1378.3 *)
(* You may need to modify here *)
or uint32 v_or1379_3 v_shl1377_3 v_shr1378_3;
(*   %xor1380.3 = xor i32 %xor1376.3, %or1379.3 *)
(* You may need to modify here *)
xor uint32 v_xor1380_3 v_xor1376_3 v_or1379_3;
(*   %and1381.3 = and i32 %add1306.3, %add1224.3 *)
(* You may need to modify here *)
and uint32 v_and1381_3 v_add1306_3 v_add1224_3;
(*   %and1382.3 = and i32 %add1306.3, %add1142.3 *)
(* You may need to modify here *)
and uint32 v_and1382_3 v_add1306_3 v_add1142_3;
(*   %xor1383.3 = xor i32 %and1382.3, %and1299.3 *)
(* You may need to modify here *)
xor uint32 v_xor1383_3 v_and1382_3 v_and1299_3;
(*   %xor1385.3 = xor i32 %xor1383.3, %and1381.3 *)
(* You may need to modify here *)
xor uint32 v_xor1385_3 v_xor1383_3 v_and1381_3;
(*   %add1386.3 = add i32 %xor1380.3, %xor1385.3 *)
adds discard_853 v_add1386_3 v_xor1380_3 v_xor1385_3;
(*   %add1387.3 = add i32 %add1369.3, %add1060.3 *)
adds discard_854 v_add1387_3 v_add1369_3 v_add1060_3;
(*   %add1388.3 = add i32 %add1386.3, %add1369.3 *)
adds discard_855 v_add1388_3 v_add1386_3 v_add1369_3;
(*   %164 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v164 arrayidx858_0;
(*   %shl1398.3 = shl i32 %164, 25 *)
shls discard_856 v_shl1398_3 v164 25;
(*   %shr1399.3 = lshr i32 %164, 7 *)
(* You may need to modify here *)
split v_shr1399_3 tmp_to_be_used v164 7;
(*   %or1400.3 = or i32 %shl1398.3, %shr1399.3 *)
(* You may need to modify here *)
or uint32 v_or1400_3 v_shl1398_3 v_shr1399_3;
(*   %shl1401.3 = shl i32 %164, 14 *)
shls discard_857 v_shl1401_3 v164 14;
(*   %shr1402.3 = lshr i32 %164, 18 *)
(* You may need to modify here *)
split v_shr1402_3 tmp_to_be_used v164 18;
(*   %or1403.3 = or i32 %shl1401.3, %shr1402.3 *)
(* You may need to modify here *)
or uint32 v_or1403_3 v_shl1401_3 v_shr1402_3;
(*   %shr1405.3 = lshr i32 %164, 3 *)
(* You may need to modify here *)
split v_shr1405_3 tmp_to_be_used v164 3;
(*   %xor1404.3 = xor i32 %or1403.3, %shr1405.3 *)
(* You may need to modify here *)
xor uint32 v_xor1404_3 v_or1403_3 v_shr1405_3;
(*   %xor1406.3 = xor i32 %xor1404.3, %or1400.3 *)
(* You may need to modify here *)
xor uint32 v_xor1406_3 v_xor1404_3 v_or1400_3;
(*   %165 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v165 arrayidx690_0;
(*   %shl1411.3 = shl i32 %165, 15 *)
shls discard_858 v_shl1411_3 v165 15;
(*   %shr1412.3 = lshr i32 %165, 17 *)
(* You may need to modify here *)
split v_shr1412_3 tmp_to_be_used v165 17;
(*   %or1413.3 = or i32 %shl1411.3, %shr1412.3 *)
(* You may need to modify here *)
or uint32 v_or1413_3 v_shl1411_3 v_shr1412_3;
(*   %shl1414.3 = shl i32 %165, 13 *)
shls discard_859 v_shl1414_3 v165 13;
(*   %shr1415.3 = lshr i32 %165, 19 *)
(* You may need to modify here *)
split v_shr1415_3 tmp_to_be_used v165 19;
(*   %or1416.3 = or i32 %shl1414.3, %shr1415.3 *)
(* You may need to modify here *)
or uint32 v_or1416_3 v_shl1414_3 v_shr1415_3;
(*   %shr1418.3 = lshr i32 %165, 10 *)
(* You may need to modify here *)
split v_shr1418_3 tmp_to_be_used v165 10;
(*   %xor1417.3 = xor i32 %or1416.3, %shr1418.3 *)
(* You may need to modify here *)
xor uint32 v_xor1417_3 v_or1416_3 v_shr1418_3;
(*   %xor1419.3 = xor i32 %xor1417.3, %or1413.3 *)
(* You may need to modify here *)
xor uint32 v_xor1419_3 v_xor1417_3 v_or1413_3;
(*   %166 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v166 arrayidx410_0;
(*   %add1420.3 = add i32 %161, %166 *)
adds discard_860 v_add1420_3 v161 v166;
(*   %add1425.3 = add i32 %add1420.3, %xor1406.3 *)
adds discard_861 v_add1425_3 v_add1420_3 v_xor1406_3;
(*   %add1429.3 = add i32 %add1425.3, %xor1419.3 *)
adds discard_862 v_add1429_3 v_add1425_3 v_xor1419_3;
(*   store i32 %add1429.3, i32* %arrayidx802, align 4, !tbaa !4 *)
mov arrayidx802_0 v_add1429_3;
(*   %shl1431.3 = shl i32 %add1387.3, 26 *)
shls discard_863 v_shl1431_3 v_add1387_3 26;
(*   %shr1432.3 = lshr i32 %add1387.3, 6 *)
(* You may need to modify here *)
split v_shr1432_3 tmp_to_be_used v_add1387_3 6;
(*   %or1433.3 = or i32 %shl1431.3, %shr1432.3 *)
(* You may need to modify here *)
or uint32 v_or1433_3 v_shl1431_3 v_shr1432_3;
(*   %shl1434.3 = shl i32 %add1387.3, 21 *)
shls discard_864 v_shl1434_3 v_add1387_3 21;
(*   %shr1435.3 = lshr i32 %add1387.3, 11 *)
(* You may need to modify here *)
split v_shr1435_3 tmp_to_be_used v_add1387_3 11;
(*   %or1436.3 = or i32 %shl1434.3, %shr1435.3 *)
(* You may need to modify here *)
or uint32 v_or1436_3 v_shl1434_3 v_shr1435_3;
(*   %xor1437.3 = xor i32 %or1433.3, %or1436.3 *)
(* You may need to modify here *)
xor uint32 v_xor1437_3 v_or1433_3 v_or1436_3;
(*   %shl1438.3 = shl i32 %add1387.3, 7 *)
shls discard_865 v_shl1438_3 v_add1387_3 7;
(*   %shr1439.3 = lshr i32 %add1387.3, 25 *)
(* You may need to modify here *)
split v_shr1439_3 tmp_to_be_used v_add1387_3 25;
(*   %or1440.3 = or i32 %shl1438.3, %shr1439.3 *)
(* You may need to modify here *)
or uint32 v_or1440_3 v_shl1438_3 v_shr1439_3;
(*   %xor1441.3 = xor i32 %xor1437.3, %or1440.3 *)
(* You may need to modify here *)
xor uint32 v_xor1441_3 v_xor1437_3 v_or1440_3;
(*   %and1443.3 = and i32 %add1387.3, %add1305.3 *)
(* You may need to modify here *)
and uint32 v_and1443_3 v_add1387_3 v_add1305_3;
(*   %neg1444.3 = xor i32 %add1387.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1444_3 v_add1387_3 (0xFFFFFFFF)@uint32;
(*   %and1445.3 = and i32 %add1223.3, %neg1444.3 *)
(* You may need to modify here *)
and uint32 v_and1445_3 v_add1223_3 v_neg1444_3;
(*   %xor1446.3 = or i32 %and1443.3, %and1445.3 *)
(* You may need to modify here *)
or uint32 v_xor1446_3 v_and1443_3 v_and1445_3;
(*   %add1442.3 = add i32 %add1141.3, -200395387 *)
adds discard_866 v_add1442_3 v_add1141_3 (4094571909)@uint32;
(*   %add1447.3 = add i32 %add1442.3, %add1429.3 *)
adds discard_867 v_add1447_3 v_add1442_3 v_add1429_3;
(*   %add1450.3 = add i32 %add1447.3, %xor1446.3 *)
adds discard_868 v_add1450_3 v_add1447_3 v_xor1446_3;
(*   %add1451.3 = add i32 %add1450.3, %xor1441.3 *)
adds discard_869 v_add1451_3 v_add1450_3 v_xor1441_3;
(*   %shl1452.3 = shl i32 %add1388.3, 30 *)
shls discard_870 v_shl1452_3 v_add1388_3 30;
(*   %shr1453.3 = lshr i32 %add1388.3, 2 *)
(* You may need to modify here *)
split v_shr1453_3 tmp_to_be_used v_add1388_3 2;
(*   %or1454.3 = or i32 %shl1452.3, %shr1453.3 *)
(* You may need to modify here *)
or uint32 v_or1454_3 v_shl1452_3 v_shr1453_3;
(*   %shl1455.3 = shl i32 %add1388.3, 19 *)
shls discard_871 v_shl1455_3 v_add1388_3 19;
(*   %shr1456.3 = lshr i32 %add1388.3, 13 *)
(* You may need to modify here *)
split v_shr1456_3 tmp_to_be_used v_add1388_3 13;
(*   %or1457.3 = or i32 %shl1455.3, %shr1456.3 *)
(* You may need to modify here *)
or uint32 v_or1457_3 v_shl1455_3 v_shr1456_3;
(*   %xor1458.3 = xor i32 %or1454.3, %or1457.3 *)
(* You may need to modify here *)
xor uint32 v_xor1458_3 v_or1454_3 v_or1457_3;
(*   %shl1459.3 = shl i32 %add1388.3, 10 *)
shls discard_872 v_shl1459_3 v_add1388_3 10;
(*   %shr1460.3 = lshr i32 %add1388.3, 22 *)
(* You may need to modify here *)
split v_shr1460_3 tmp_to_be_used v_add1388_3 22;
(*   %or1461.3 = or i32 %shl1459.3, %shr1460.3 *)
(* You may need to modify here *)
or uint32 v_or1461_3 v_shl1459_3 v_shr1460_3;
(*   %xor1462.3 = xor i32 %xor1458.3, %or1461.3 *)
(* You may need to modify here *)
xor uint32 v_xor1462_3 v_xor1458_3 v_or1461_3;
(*   %and1463.3 = and i32 %add1388.3, %add1306.3 *)
(* You may need to modify here *)
and uint32 v_and1463_3 v_add1388_3 v_add1306_3;
(*   %and1464.3 = and i32 %add1388.3, %add1224.3 *)
(* You may need to modify here *)
and uint32 v_and1464_3 v_add1388_3 v_add1224_3;
(*   %xor1465.3 = xor i32 %and1464.3, %and1381.3 *)
(* You may need to modify here *)
xor uint32 v_xor1465_3 v_and1464_3 v_and1381_3;
(*   %xor1467.3 = xor i32 %xor1465.3, %and1463.3 *)
(* You may need to modify here *)
xor uint32 v_xor1467_3 v_xor1465_3 v_and1463_3;
(*   %add1468.3 = add i32 %xor1462.3, %xor1467.3 *)
adds discard_873 v_add1468_3 v_xor1462_3 v_xor1467_3;
(*   %add1469.3 = add i32 %add1451.3, %add1142.3 *)
adds discard_874 v_add1469_3 v_add1451_3 v_add1142_3;
(*   %add1470.3 = add i32 %add1468.3, %add1451.3 *)
adds discard_875 v_add1470_3 v_add1468_3 v_add1451_3;
(*   %167 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v167 arrayidx26_0;
(*   %shl1480.3 = shl i32 %167, 25 *)
shls discard_876 v_shl1480_3 v167 25;
(*   %shr1481.3 = lshr i32 %167, 7 *)
(* You may need to modify here *)
split v_shr1481_3 tmp_to_be_used v167 7;
(*   %or1482.3 = or i32 %shl1480.3, %shr1481.3 *)
(* You may need to modify here *)
or uint32 v_or1482_3 v_shl1480_3 v_shr1481_3;
(*   %shl1483.3 = shl i32 %167, 14 *)
shls discard_877 v_shl1483_3 v167 14;
(*   %shr1484.3 = lshr i32 %167, 18 *)
(* You may need to modify here *)
split v_shr1484_3 tmp_to_be_used v167 18;
(*   %or1485.3 = or i32 %shl1483.3, %shr1484.3 *)
(* You may need to modify here *)
or uint32 v_or1485_3 v_shl1483_3 v_shr1484_3;
(*   %shr1487.3 = lshr i32 %167, 3 *)
(* You may need to modify here *)
split v_shr1487_3 tmp_to_be_used v167 3;
(*   %xor1486.3 = xor i32 %or1485.3, %shr1487.3 *)
(* You may need to modify here *)
xor uint32 v_xor1486_3 v_or1485_3 v_shr1487_3;
(*   %xor1488.3 = xor i32 %xor1486.3, %or1482.3 *)
(* You may need to modify here *)
xor uint32 v_xor1488_3 v_xor1486_3 v_or1482_3;
(*   %168 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v168 arrayidx746_0;
(*   %shl1493.3 = shl i32 %168, 15 *)
shls discard_878 v_shl1493_3 v168 15;
(*   %shr1494.3 = lshr i32 %168, 17 *)
(* You may need to modify here *)
split v_shr1494_3 tmp_to_be_used v168 17;
(*   %or1495.3 = or i32 %shl1493.3, %shr1494.3 *)
(* You may need to modify here *)
or uint32 v_or1495_3 v_shl1493_3 v_shr1494_3;
(*   %shl1496.3 = shl i32 %168, 13 *)
shls discard_879 v_shl1496_3 v168 13;
(*   %shr1497.3 = lshr i32 %168, 19 *)
(* You may need to modify here *)
split v_shr1497_3 tmp_to_be_used v168 19;
(*   %or1498.3 = or i32 %shl1496.3, %shr1497.3 *)
(* You may need to modify here *)
or uint32 v_or1498_3 v_shl1496_3 v_shr1497_3;
(*   %shr1500.3 = lshr i32 %168, 10 *)
(* You may need to modify here *)
split v_shr1500_3 tmp_to_be_used v168 10;
(*   %xor1499.3 = xor i32 %or1498.3, %shr1500.3 *)
(* You may need to modify here *)
xor uint32 v_xor1499_3 v_or1498_3 v_shr1500_3;
(*   %xor1501.3 = xor i32 %xor1499.3, %or1495.3 *)
(* You may need to modify here *)
xor uint32 v_xor1501_3 v_xor1499_3 v_or1495_3;
(*   %169 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v169 arrayidx466_0;
(*   %add1502.3 = add i32 %164, %169 *)
adds discard_880 v_add1502_3 v164 v169;
(*   %add1507.3 = add i32 %add1502.3, %xor1488.3 *)
adds discard_881 v_add1507_3 v_add1502_3 v_xor1488_3;
(*   %add1511.3 = add i32 %add1507.3, %xor1501.3 *)
adds discard_882 v_add1511_3 v_add1507_3 v_xor1501_3;
(*   store i32 %add1511.3, i32* %arrayidx858, align 4, !tbaa !4 *)
mov arrayidx858_0 v_add1511_3;
(*   %shl1513.3 = shl i32 %add1469.3, 26 *)
shls discard_883 v_shl1513_3 v_add1469_3 26;
(*   %shr1514.3 = lshr i32 %add1469.3, 6 *)
(* You may need to modify here *)
split v_shr1514_3 tmp_to_be_used v_add1469_3 6;
(*   %or1515.3 = or i32 %shl1513.3, %shr1514.3 *)
(* You may need to modify here *)
or uint32 v_or1515_3 v_shl1513_3 v_shr1514_3;
(*   %shl1516.3 = shl i32 %add1469.3, 21 *)
shls discard_884 v_shl1516_3 v_add1469_3 21;
(*   %shr1517.3 = lshr i32 %add1469.3, 11 *)
(* You may need to modify here *)
split v_shr1517_3 tmp_to_be_used v_add1469_3 11;
(*   %or1518.3 = or i32 %shl1516.3, %shr1517.3 *)
(* You may need to modify here *)
or uint32 v_or1518_3 v_shl1516_3 v_shr1517_3;
(*   %xor1519.3 = xor i32 %or1515.3, %or1518.3 *)
(* You may need to modify here *)
xor uint32 v_xor1519_3 v_or1515_3 v_or1518_3;
(*   %shl1520.3 = shl i32 %add1469.3, 7 *)
shls discard_885 v_shl1520_3 v_add1469_3 7;
(*   %shr1521.3 = lshr i32 %add1469.3, 25 *)
(* You may need to modify here *)
split v_shr1521_3 tmp_to_be_used v_add1469_3 25;
(*   %or1522.3 = or i32 %shl1520.3, %shr1521.3 *)
(* You may need to modify here *)
or uint32 v_or1522_3 v_shl1520_3 v_shr1521_3;
(*   %xor1523.3 = xor i32 %xor1519.3, %or1522.3 *)
(* You may need to modify here *)
xor uint32 v_xor1523_3 v_xor1519_3 v_or1522_3;
(*   %and1525.3 = and i32 %add1469.3, %add1387.3 *)
(* You may need to modify here *)
and uint32 v_and1525_3 v_add1469_3 v_add1387_3;
(*   %neg1526.3 = xor i32 %add1469.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1526_3 v_add1469_3 (0xFFFFFFFF)@uint32;
(*   %and1527.3 = and i32 %add1305.3, %neg1526.3 *)
(* You may need to modify here *)
and uint32 v_and1527_3 v_add1305_3 v_neg1526_3;
(*   %xor1528.3 = or i32 %and1525.3, %and1527.3 *)
(* You may need to modify here *)
or uint32 v_xor1528_3 v_and1525_3 v_and1527_3;
(*   %add1524.3 = add i32 %add1223.3, 275423344 *)
adds discard_886 v_add1524_3 v_add1223_3 (275423344)@uint32;
(*   %add1529.3 = add i32 %add1524.3, %add1511.3 *)
adds discard_887 v_add1529_3 v_add1524_3 v_add1511_3;
(*   %add1532.3 = add i32 %add1529.3, %xor1528.3 *)
adds discard_888 v_add1532_3 v_add1529_3 v_xor1528_3;
(*   %add1533.3 = add i32 %add1532.3, %xor1523.3 *)
adds discard_889 v_add1533_3 v_add1532_3 v_xor1523_3;
(*   %shl1534.3 = shl i32 %add1470.3, 30 *)
shls discard_890 v_shl1534_3 v_add1470_3 30;
(*   %shr1535.3 = lshr i32 %add1470.3, 2 *)
(* You may need to modify here *)
split v_shr1535_3 tmp_to_be_used v_add1470_3 2;
(*   %or1536.3 = or i32 %shl1534.3, %shr1535.3 *)
(* You may need to modify here *)
or uint32 v_or1536_3 v_shl1534_3 v_shr1535_3;
(*   %shl1537.3 = shl i32 %add1470.3, 19 *)
shls discard_891 v_shl1537_3 v_add1470_3 19;
(*   %shr1538.3 = lshr i32 %add1470.3, 13 *)
(* You may need to modify here *)
split v_shr1538_3 tmp_to_be_used v_add1470_3 13;
(*   %or1539.3 = or i32 %shl1537.3, %shr1538.3 *)
(* You may need to modify here *)
or uint32 v_or1539_3 v_shl1537_3 v_shr1538_3;
(*   %xor1540.3 = xor i32 %or1536.3, %or1539.3 *)
(* You may need to modify here *)
xor uint32 v_xor1540_3 v_or1536_3 v_or1539_3;
(*   %shl1541.3 = shl i32 %add1470.3, 10 *)
shls discard_892 v_shl1541_3 v_add1470_3 10;
(*   %shr1542.3 = lshr i32 %add1470.3, 22 *)
(* You may need to modify here *)
split v_shr1542_3 tmp_to_be_used v_add1470_3 22;
(*   %or1543.3 = or i32 %shl1541.3, %shr1542.3 *)
(* You may need to modify here *)
or uint32 v_or1543_3 v_shl1541_3 v_shr1542_3;
(*   %xor1544.3 = xor i32 %xor1540.3, %or1543.3 *)
(* You may need to modify here *)
xor uint32 v_xor1544_3 v_xor1540_3 v_or1543_3;
(*   %and15462545.3 = xor i32 %add1388.3, %add1306.3 *)
(* You may need to modify here *)
xor uint32 v_and15462545_3 v_add1388_3 v_add1306_3;
(*   %xor1547.3 = and i32 %add1470.3, %and15462545.3 *)
(* You may need to modify here *)
and uint32 v_xor1547_3 v_add1470_3 v_and15462545_3;
(*   %xor1549.3 = xor i32 %xor1547.3, %and1463.3 *)
(* You may need to modify here *)
xor uint32 v_xor1549_3 v_xor1547_3 v_and1463_3;
(*   %add1550.3 = add i32 %xor1544.3, %xor1549.3 *)
adds discard_893 v_add1550_3 v_xor1544_3 v_xor1549_3;
(*   %add1551.3 = add i32 %add1533.3, %add1224.3 *)
adds discard_894 v_add1551_3 v_add1533_3 v_add1224_3;
(*   %add1552.3 = add i32 %add1550.3, %add1533.3 *)
adds discard_895 v_add1552_3 v_add1550_3 v_add1533_3;
(*   %170 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v170 arrayidx74_0;
(*   %shl906.4 = shl i32 %170, 25 *)
shls discard_896 v_shl906_4 v170 25;
(*   %shr907.4 = lshr i32 %170, 7 *)
(* You may need to modify here *)
split v_shr907_4 tmp_to_be_used v170 7;
(*   %or908.4 = or i32 %shl906.4, %shr907.4 *)
(* You may need to modify here *)
or uint32 v_or908_4 v_shl906_4 v_shr907_4;
(*   %shl909.4 = shl i32 %170, 14 *)
shls discard_897 v_shl909_4 v170 14;
(*   %shr910.4 = lshr i32 %170, 18 *)
(* You may need to modify here *)
split v_shr910_4 tmp_to_be_used v170 18;
(*   %or911.4 = or i32 %shl909.4, %shr910.4 *)
(* You may need to modify here *)
or uint32 v_or911_4 v_shl909_4 v_shr910_4;
(*   %shr913.4 = lshr i32 %170, 3 *)
(* You may need to modify here *)
split v_shr913_4 tmp_to_be_used v170 3;
(*   %xor912.4 = xor i32 %or911.4, %shr913.4 *)
(* You may need to modify here *)
xor uint32 v_xor912_4 v_or911_4 v_shr913_4;
(*   %xor914.4 = xor i32 %xor912.4, %or908.4 *)
(* You may need to modify here *)
xor uint32 v_xor914_4 v_xor912_4 v_or908_4;
(*   %171 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v171 arrayidx802_0;
(*   %shl919.4 = shl i32 %171, 15 *)
shls discard_898 v_shl919_4 v171 15;
(*   %shr920.4 = lshr i32 %171, 17 *)
(* You may need to modify here *)
split v_shr920_4 tmp_to_be_used v171 17;
(*   %or921.4 = or i32 %shl919.4, %shr920.4 *)
(* You may need to modify here *)
or uint32 v_or921_4 v_shl919_4 v_shr920_4;
(*   %shl922.4 = shl i32 %171, 13 *)
shls discard_899 v_shl922_4 v171 13;
(*   %shr923.4 = lshr i32 %171, 19 *)
(* You may need to modify here *)
split v_shr923_4 tmp_to_be_used v171 19;
(*   %or924.4 = or i32 %shl922.4, %shr923.4 *)
(* You may need to modify here *)
or uint32 v_or924_4 v_shl922_4 v_shr923_4;
(*   %shr926.4 = lshr i32 %171, 10 *)
(* You may need to modify here *)
split v_shr926_4 tmp_to_be_used v171 10;
(*   %xor925.4 = xor i32 %or924.4, %shr926.4 *)
(* You may need to modify here *)
xor uint32 v_xor925_4 v_or924_4 v_shr926_4;
(*   %xor927.4 = xor i32 %xor925.4, %or921.4 *)
(* You may need to modify here *)
xor uint32 v_xor927_4 v_xor925_4 v_or921_4;
(*   %172 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v172 arrayidx522_0;
(*   %add928.4 = add i32 %167, %172 *)
adds discard_900 v_add928_4 v167 v172;
(*   %add933.4 = add i32 %add928.4, %xor914.4 *)
adds discard_901 v_add933_4 v_add928_4 v_xor914_4;
(*   %add937.4 = add i32 %add933.4, %xor927.4 *)
adds discard_902 v_add937_4 v_add933_4 v_xor927_4;
(*   store i32 %add937.4, i32* %arrayidx26, align 4, !tbaa !4 *)
mov arrayidx26_0 v_add937_4;
(*   %shl939.4 = shl i32 %add1551.3, 26 *)
shls discard_903 v_shl939_4 v_add1551_3 26;
(*   %shr940.4 = lshr i32 %add1551.3, 6 *)
(* You may need to modify here *)
split v_shr940_4 tmp_to_be_used v_add1551_3 6;
(*   %or941.4 = or i32 %shl939.4, %shr940.4 *)
(* You may need to modify here *)
or uint32 v_or941_4 v_shl939_4 v_shr940_4;
(*   %shl942.4 = shl i32 %add1551.3, 21 *)
shls discard_904 v_shl942_4 v_add1551_3 21;
(*   %shr943.4 = lshr i32 %add1551.3, 11 *)
(* You may need to modify here *)
split v_shr943_4 tmp_to_be_used v_add1551_3 11;
(*   %or944.4 = or i32 %shl942.4, %shr943.4 *)
(* You may need to modify here *)
or uint32 v_or944_4 v_shl942_4 v_shr943_4;
(*   %xor945.4 = xor i32 %or941.4, %or944.4 *)
(* You may need to modify here *)
xor uint32 v_xor945_4 v_or941_4 v_or944_4;
(*   %shl946.4 = shl i32 %add1551.3, 7 *)
shls discard_905 v_shl946_4 v_add1551_3 7;
(*   %shr947.4 = lshr i32 %add1551.3, 25 *)
(* You may need to modify here *)
split v_shr947_4 tmp_to_be_used v_add1551_3 25;
(*   %or948.4 = or i32 %shl946.4, %shr947.4 *)
(* You may need to modify here *)
or uint32 v_or948_4 v_shl946_4 v_shr947_4;
(*   %xor949.4 = xor i32 %xor945.4, %or948.4 *)
(* You may need to modify here *)
xor uint32 v_xor949_4 v_xor945_4 v_or948_4;
(*   %add950.4 = add i32 %xor949.4, %add1305.3 *)
adds discard_906 v_add950_4 v_xor949_4 v_add1305_3;
(*   %and951.4 = and i32 %add1469.3, %add1551.3 *)
(* You may need to modify here *)
and uint32 v_and951_4 v_add1469_3 v_add1551_3;
(*   %neg952.4 = xor i32 %add1551.3, -1 *)
(* You may need to modify here *)
xor uint32 v_neg952_4 v_add1551_3 (0xFFFFFFFF)@uint32;
(*   %and953.4 = and i32 %add1387.3, %neg952.4 *)
(* You may need to modify here *)
and uint32 v_and953_4 v_add1387_3 v_neg952_4;
(*   %xor954.4 = or i32 %and953.4, %and951.4 *)
(* You may need to modify here *)
or uint32 v_xor954_4 v_and953_4 v_and951_4;
(*   %add955.4 = add i32 %add950.4, %xor954.4 *)
adds discard_907 v_add955_4 v_add950_4 v_xor954_4;
(*   %add958.4 = add i32 %add955.4, 430227734 *)
adds discard_908 v_add958_4 v_add955_4 (430227734)@uint32;
(*   %add959.4 = add i32 %add958.4, %add937.4 *)
adds discard_909 v_add959_4 v_add958_4 v_add937_4;
(*   %shl960.4 = shl i32 %add1552.3, 30 *)
shls discard_910 v_shl960_4 v_add1552_3 30;
(*   %shr961.4 = lshr i32 %add1552.3, 2 *)
(* You may need to modify here *)
split v_shr961_4 tmp_to_be_used v_add1552_3 2;
(*   %or962.4 = or i32 %shl960.4, %shr961.4 *)
(* You may need to modify here *)
or uint32 v_or962_4 v_shl960_4 v_shr961_4;
(*   %shl963.4 = shl i32 %add1552.3, 19 *)
shls discard_911 v_shl963_4 v_add1552_3 19;
(*   %shr964.4 = lshr i32 %add1552.3, 13 *)
(* You may need to modify here *)
split v_shr964_4 tmp_to_be_used v_add1552_3 13;
(*   %or965.4 = or i32 %shl963.4, %shr964.4 *)
(* You may need to modify here *)
or uint32 v_or965_4 v_shl963_4 v_shr964_4;
(*   %xor966.4 = xor i32 %or962.4, %or965.4 *)
(* You may need to modify here *)
xor uint32 v_xor966_4 v_or962_4 v_or965_4;
(*   %shl967.4 = shl i32 %add1552.3, 10 *)
shls discard_912 v_shl967_4 v_add1552_3 10;
(*   %shr968.4 = lshr i32 %add1552.3, 22 *)
(* You may need to modify here *)
split v_shr968_4 tmp_to_be_used v_add1552_3 22;
(*   %or969.4 = or i32 %shl967.4, %shr968.4 *)
(* You may need to modify here *)
or uint32 v_or969_4 v_shl967_4 v_shr968_4;
(*   %xor970.4 = xor i32 %xor966.4, %or969.4 *)
(* You may need to modify here *)
xor uint32 v_xor970_4 v_xor966_4 v_or969_4;
(*   %and971.4 = and i32 %add1552.3, %add1470.3 *)
(* You may need to modify here *)
and uint32 v_and971_4 v_add1552_3 v_add1470_3;
(*   %and9722559.4 = xor i32 %add1552.3, %add1470.3 *)
(* You may need to modify here *)
xor uint32 v_and9722559_4 v_add1552_3 v_add1470_3;
(*   %xor973.4 = and i32 %and9722559.4, %add1388.3 *)
(* You may need to modify here *)
and uint32 v_xor973_4 v_and9722559_4 v_add1388_3;
(*   %xor975.4 = xor i32 %xor973.4, %and971.4 *)
(* You may need to modify here *)
xor uint32 v_xor975_4 v_xor973_4 v_and971_4;
(*   %add976.4 = add i32 %xor970.4, %xor975.4 *)
adds discard_913 v_add976_4 v_xor970_4 v_xor975_4;
(*   %add977.4 = add i32 %add959.4, %add1306.3 *)
adds discard_914 v_add977_4 v_add959_4 v_add1306_3;
(*   %add978.4 = add i32 %add976.4, %add959.4 *)
adds discard_915 v_add978_4 v_add976_4 v_add959_4;
(*   %173 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v173 arrayidx130_0;
(*   %shl988.4 = shl i32 %173, 25 *)
shls discard_916 v_shl988_4 v173 25;
(*   %shr989.4 = lshr i32 %173, 7 *)
(* You may need to modify here *)
split v_shr989_4 tmp_to_be_used v173 7;
(*   %or990.4 = or i32 %shl988.4, %shr989.4 *)
(* You may need to modify here *)
or uint32 v_or990_4 v_shl988_4 v_shr989_4;
(*   %shl991.4 = shl i32 %173, 14 *)
shls discard_917 v_shl991_4 v173 14;
(*   %shr992.4 = lshr i32 %173, 18 *)
(* You may need to modify here *)
split v_shr992_4 tmp_to_be_used v173 18;
(*   %or993.4 = or i32 %shl991.4, %shr992.4 *)
(* You may need to modify here *)
or uint32 v_or993_4 v_shl991_4 v_shr992_4;
(*   %shr995.4 = lshr i32 %173, 3 *)
(* You may need to modify here *)
split v_shr995_4 tmp_to_be_used v173 3;
(*   %xor994.4 = xor i32 %or993.4, %shr995.4 *)
(* You may need to modify here *)
xor uint32 v_xor994_4 v_or993_4 v_shr995_4;
(*   %xor996.4 = xor i32 %xor994.4, %or990.4 *)
(* You may need to modify here *)
xor uint32 v_xor996_4 v_xor994_4 v_or990_4;
(*   %174 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v174 arrayidx858_0;
(*   %shl1001.4 = shl i32 %174, 15 *)
shls discard_918 v_shl1001_4 v174 15;
(*   %shr1002.4 = lshr i32 %174, 17 *)
(* You may need to modify here *)
split v_shr1002_4 tmp_to_be_used v174 17;
(*   %or1003.4 = or i32 %shl1001.4, %shr1002.4 *)
(* You may need to modify here *)
or uint32 v_or1003_4 v_shl1001_4 v_shr1002_4;
(*   %shl1004.4 = shl i32 %174, 13 *)
shls discard_919 v_shl1004_4 v174 13;
(*   %shr1005.4 = lshr i32 %174, 19 *)
(* You may need to modify here *)
split v_shr1005_4 tmp_to_be_used v174 19;
(*   %or1006.4 = or i32 %shl1004.4, %shr1005.4 *)
(* You may need to modify here *)
or uint32 v_or1006_4 v_shl1004_4 v_shr1005_4;
(*   %shr1008.4 = lshr i32 %174, 10 *)
(* You may need to modify here *)
split v_shr1008_4 tmp_to_be_used v174 10;
(*   %xor1007.4 = xor i32 %or1006.4, %shr1008.4 *)
(* You may need to modify here *)
xor uint32 v_xor1007_4 v_or1006_4 v_shr1008_4;
(*   %xor1009.4 = xor i32 %xor1007.4, %or1003.4 *)
(* You may need to modify here *)
xor uint32 v_xor1009_4 v_xor1007_4 v_or1003_4;
(*   %175 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v175 arrayidx578_0;
(*   %add1010.4 = add i32 %175, %170 *)
adds discard_920 v_add1010_4 v175 v170;
(*   %add1015.4 = add i32 %add1010.4, %xor996.4 *)
adds discard_921 v_add1015_4 v_add1010_4 v_xor996_4;
(*   %add1019.4 = add i32 %add1015.4, %xor1009.4 *)
adds discard_922 v_add1019_4 v_add1015_4 v_xor1009_4;
(*   store i32 %add1019.4, i32* %arrayidx74, align 4, !tbaa !4 *)
mov arrayidx74_0 v_add1019_4;
(*   %shl1021.4 = shl i32 %add977.4, 26 *)
shls discard_923 v_shl1021_4 v_add977_4 26;
(*   %shr1022.4 = lshr i32 %add977.4, 6 *)
(* You may need to modify here *)
split v_shr1022_4 tmp_to_be_used v_add977_4 6;
(*   %or1023.4 = or i32 %shl1021.4, %shr1022.4 *)
(* You may need to modify here *)
or uint32 v_or1023_4 v_shl1021_4 v_shr1022_4;
(*   %shl1024.4 = shl i32 %add977.4, 21 *)
shls discard_924 v_shl1024_4 v_add977_4 21;
(*   %shr1025.4 = lshr i32 %add977.4, 11 *)
(* You may need to modify here *)
split v_shr1025_4 tmp_to_be_used v_add977_4 11;
(*   %or1026.4 = or i32 %shl1024.4, %shr1025.4 *)
(* You may need to modify here *)
or uint32 v_or1026_4 v_shl1024_4 v_shr1025_4;
(*   %xor1027.4 = xor i32 %or1023.4, %or1026.4 *)
(* You may need to modify here *)
xor uint32 v_xor1027_4 v_or1023_4 v_or1026_4;
(*   %shl1028.4 = shl i32 %add977.4, 7 *)
shls discard_925 v_shl1028_4 v_add977_4 7;
(*   %shr1029.4 = lshr i32 %add977.4, 25 *)
(* You may need to modify here *)
split v_shr1029_4 tmp_to_be_used v_add977_4 25;
(*   %or1030.4 = or i32 %shl1028.4, %shr1029.4 *)
(* You may need to modify here *)
or uint32 v_or1030_4 v_shl1028_4 v_shr1029_4;
(*   %xor1031.4 = xor i32 %xor1027.4, %or1030.4 *)
(* You may need to modify here *)
xor uint32 v_xor1031_4 v_xor1027_4 v_or1030_4;
(*   %and1033.4 = and i32 %add977.4, %add1551.3 *)
(* You may need to modify here *)
and uint32 v_and1033_4 v_add977_4 v_add1551_3;
(*   %neg1034.4 = xor i32 %add977.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1034_4 v_add977_4 (0xFFFFFFFF)@uint32;
(*   %and1035.4 = and i32 %add1469.3, %neg1034.4 *)
(* You may need to modify here *)
and uint32 v_and1035_4 v_add1469_3 v_neg1034_4;
(*   %xor1036.4 = or i32 %and1033.4, %and1035.4 *)
(* You may need to modify here *)
or uint32 v_xor1036_4 v_and1033_4 v_and1035_4;
(*   %add1032.4 = add i32 %add1387.3, 506948616 *)
adds discard_926 v_add1032_4 v_add1387_3 (506948616)@uint32;
(*   %add1037.4 = add i32 %add1032.4, %xor1036.4 *)
adds discard_927 v_add1037_4 v_add1032_4 v_xor1036_4;
(*   %add1040.4 = add i32 %add1037.4, %xor1031.4 *)
adds discard_928 v_add1040_4 v_add1037_4 v_xor1031_4;
(*   %add1041.4 = add i32 %add1040.4, %add1019.4 *)
adds discard_929 v_add1041_4 v_add1040_4 v_add1019_4;
(*   %shl1042.4 = shl i32 %add978.4, 30 *)
shls discard_930 v_shl1042_4 v_add978_4 30;
(*   %shr1043.4 = lshr i32 %add978.4, 2 *)
(* You may need to modify here *)
split v_shr1043_4 tmp_to_be_used v_add978_4 2;
(*   %or1044.4 = or i32 %shl1042.4, %shr1043.4 *)
(* You may need to modify here *)
or uint32 v_or1044_4 v_shl1042_4 v_shr1043_4;
(*   %shl1045.4 = shl i32 %add978.4, 19 *)
shls discard_931 v_shl1045_4 v_add978_4 19;
(*   %shr1046.4 = lshr i32 %add978.4, 13 *)
(* You may need to modify here *)
split v_shr1046_4 tmp_to_be_used v_add978_4 13;
(*   %or1047.4 = or i32 %shl1045.4, %shr1046.4 *)
(* You may need to modify here *)
or uint32 v_or1047_4 v_shl1045_4 v_shr1046_4;
(*   %xor1048.4 = xor i32 %or1044.4, %or1047.4 *)
(* You may need to modify here *)
xor uint32 v_xor1048_4 v_or1044_4 v_or1047_4;
(*   %shl1049.4 = shl i32 %add978.4, 10 *)
shls discard_932 v_shl1049_4 v_add978_4 10;
(*   %shr1050.4 = lshr i32 %add978.4, 22 *)
(* You may need to modify here *)
split v_shr1050_4 tmp_to_be_used v_add978_4 22;
(*   %or1051.4 = or i32 %shl1049.4, %shr1050.4 *)
(* You may need to modify here *)
or uint32 v_or1051_4 v_shl1049_4 v_shr1050_4;
(*   %xor1052.4 = xor i32 %xor1048.4, %or1051.4 *)
(* You may need to modify here *)
xor uint32 v_xor1052_4 v_xor1048_4 v_or1051_4;
(*   %and1053.4 = and i32 %add978.4, %add1552.3 *)
(* You may need to modify here *)
and uint32 v_and1053_4 v_add978_4 v_add1552_3;
(*   %and1054.4 = and i32 %add978.4, %add1470.3 *)
(* You may need to modify here *)
and uint32 v_and1054_4 v_add978_4 v_add1470_3;
(*   %xor1055.4 = xor i32 %and1054.4, %and971.4 *)
(* You may need to modify here *)
xor uint32 v_xor1055_4 v_and1054_4 v_and971_4;
(*   %xor1057.4 = xor i32 %xor1055.4, %and1053.4 *)
(* You may need to modify here *)
xor uint32 v_xor1057_4 v_xor1055_4 v_and1053_4;
(*   %add1058.4 = add i32 %xor1052.4, %xor1057.4 *)
adds discard_933 v_add1058_4 v_xor1052_4 v_xor1057_4;
(*   %add1059.4 = add i32 %add1041.4, %add1388.3 *)
adds discard_934 v_add1059_4 v_add1041_4 v_add1388_3;
(*   %add1060.4 = add i32 %add1058.4, %add1041.4 *)
adds discard_935 v_add1060_4 v_add1058_4 v_add1041_4;
(*   %176 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v176 arrayidx186_0;
(*   %shl1070.4 = shl i32 %176, 25 *)
shls discard_936 v_shl1070_4 v176 25;
(*   %shr1071.4 = lshr i32 %176, 7 *)
(* You may need to modify here *)
split v_shr1071_4 tmp_to_be_used v176 7;
(*   %or1072.4 = or i32 %shl1070.4, %shr1071.4 *)
(* You may need to modify here *)
or uint32 v_or1072_4 v_shl1070_4 v_shr1071_4;
(*   %shl1073.4 = shl i32 %176, 14 *)
shls discard_937 v_shl1073_4 v176 14;
(*   %shr1074.4 = lshr i32 %176, 18 *)
(* You may need to modify here *)
split v_shr1074_4 tmp_to_be_used v176 18;
(*   %or1075.4 = or i32 %shl1073.4, %shr1074.4 *)
(* You may need to modify here *)
or uint32 v_or1075_4 v_shl1073_4 v_shr1074_4;
(*   %shr1077.4 = lshr i32 %176, 3 *)
(* You may need to modify here *)
split v_shr1077_4 tmp_to_be_used v176 3;
(*   %xor1076.4 = xor i32 %or1075.4, %shr1077.4 *)
(* You may need to modify here *)
xor uint32 v_xor1076_4 v_or1075_4 v_shr1077_4;
(*   %xor1078.4 = xor i32 %xor1076.4, %or1072.4 *)
(* You may need to modify here *)
xor uint32 v_xor1078_4 v_xor1076_4 v_or1072_4;
(*   %177 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v177 arrayidx26_0;
(*   %shl1083.4 = shl i32 %177, 15 *)
shls discard_938 v_shl1083_4 v177 15;
(*   %shr1084.4 = lshr i32 %177, 17 *)
(* You may need to modify here *)
split v_shr1084_4 tmp_to_be_used v177 17;
(*   %or1085.4 = or i32 %shl1083.4, %shr1084.4 *)
(* You may need to modify here *)
or uint32 v_or1085_4 v_shl1083_4 v_shr1084_4;
(*   %shl1086.4 = shl i32 %177, 13 *)
shls discard_939 v_shl1086_4 v177 13;
(*   %shr1087.4 = lshr i32 %177, 19 *)
(* You may need to modify here *)
split v_shr1087_4 tmp_to_be_used v177 19;
(*   %or1088.4 = or i32 %shl1086.4, %shr1087.4 *)
(* You may need to modify here *)
or uint32 v_or1088_4 v_shl1086_4 v_shr1087_4;
(*   %shr1090.4 = lshr i32 %177, 10 *)
(* You may need to modify here *)
split v_shr1090_4 tmp_to_be_used v177 10;
(*   %xor1089.4 = xor i32 %or1088.4, %shr1090.4 *)
(* You may need to modify here *)
xor uint32 v_xor1089_4 v_or1088_4 v_shr1090_4;
(*   %xor1091.4 = xor i32 %xor1089.4, %or1085.4 *)
(* You may need to modify here *)
xor uint32 v_xor1091_4 v_xor1089_4 v_or1085_4;
(*   %178 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v178 arrayidx634_0;
(*   %add1092.4 = add i32 %173, %178 *)
adds discard_940 v_add1092_4 v173 v178;
(*   %add1097.4 = add i32 %add1092.4, %xor1078.4 *)
adds discard_941 v_add1097_4 v_add1092_4 v_xor1078_4;
(*   %add1101.4 = add i32 %add1097.4, %xor1091.4 *)
adds discard_942 v_add1101_4 v_add1097_4 v_xor1091_4;
(*   store i32 %add1101.4, i32* %arrayidx130, align 4, !tbaa !4 *)
mov arrayidx130_0 v_add1101_4;
(*   %shl1103.4 = shl i32 %add1059.4, 26 *)
shls discard_943 v_shl1103_4 v_add1059_4 26;
(*   %shr1104.4 = lshr i32 %add1059.4, 6 *)
(* You may need to modify here *)
split v_shr1104_4 tmp_to_be_used v_add1059_4 6;
(*   %or1105.4 = or i32 %shl1103.4, %shr1104.4 *)
(* You may need to modify here *)
or uint32 v_or1105_4 v_shl1103_4 v_shr1104_4;
(*   %shl1106.4 = shl i32 %add1059.4, 21 *)
shls discard_944 v_shl1106_4 v_add1059_4 21;
(*   %shr1107.4 = lshr i32 %add1059.4, 11 *)
(* You may need to modify here *)
split v_shr1107_4 tmp_to_be_used v_add1059_4 11;
(*   %or1108.4 = or i32 %shl1106.4, %shr1107.4 *)
(* You may need to modify here *)
or uint32 v_or1108_4 v_shl1106_4 v_shr1107_4;
(*   %xor1109.4 = xor i32 %or1105.4, %or1108.4 *)
(* You may need to modify here *)
xor uint32 v_xor1109_4 v_or1105_4 v_or1108_4;
(*   %shl1110.4 = shl i32 %add1059.4, 7 *)
shls discard_945 v_shl1110_4 v_add1059_4 7;
(*   %shr1111.4 = lshr i32 %add1059.4, 25 *)
(* You may need to modify here *)
split v_shr1111_4 tmp_to_be_used v_add1059_4 25;
(*   %or1112.4 = or i32 %shl1110.4, %shr1111.4 *)
(* You may need to modify here *)
or uint32 v_or1112_4 v_shl1110_4 v_shr1111_4;
(*   %xor1113.4 = xor i32 %xor1109.4, %or1112.4 *)
(* You may need to modify here *)
xor uint32 v_xor1113_4 v_xor1109_4 v_or1112_4;
(*   %and1115.4 = and i32 %add1059.4, %add977.4 *)
(* You may need to modify here *)
and uint32 v_and1115_4 v_add1059_4 v_add977_4;
(*   %neg1116.4 = xor i32 %add1059.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1116_4 v_add1059_4 (0xFFFFFFFF)@uint32;
(*   %and1117.4 = and i32 %add1551.3, %neg1116.4 *)
(* You may need to modify here *)
and uint32 v_and1117_4 v_add1551_3 v_neg1116_4;
(*   %xor1118.4 = or i32 %and1115.4, %and1117.4 *)
(* You may need to modify here *)
or uint32 v_xor1118_4 v_and1115_4 v_and1117_4;
(*   %add1114.4 = add i32 %add1469.3, 659060556 *)
adds discard_946 v_add1114_4 v_add1469_3 (659060556)@uint32;
(*   %add1119.4 = add i32 %add1114.4, %add1101.4 *)
adds discard_947 v_add1119_4 v_add1114_4 v_add1101_4;
(*   %add1122.4 = add i32 %add1119.4, %xor1118.4 *)
adds discard_948 v_add1122_4 v_add1119_4 v_xor1118_4;
(*   %add1123.4 = add i32 %add1122.4, %xor1113.4 *)
adds discard_949 v_add1123_4 v_add1122_4 v_xor1113_4;
(*   %shl1124.4 = shl i32 %add1060.4, 30 *)
shls discard_950 v_shl1124_4 v_add1060_4 30;
(*   %shr1125.4 = lshr i32 %add1060.4, 2 *)
(* You may need to modify here *)
split v_shr1125_4 tmp_to_be_used v_add1060_4 2;
(*   %or1126.4 = or i32 %shl1124.4, %shr1125.4 *)
(* You may need to modify here *)
or uint32 v_or1126_4 v_shl1124_4 v_shr1125_4;
(*   %shl1127.4 = shl i32 %add1060.4, 19 *)
shls discard_951 v_shl1127_4 v_add1060_4 19;
(*   %shr1128.4 = lshr i32 %add1060.4, 13 *)
(* You may need to modify here *)
split v_shr1128_4 tmp_to_be_used v_add1060_4 13;
(*   %or1129.4 = or i32 %shl1127.4, %shr1128.4 *)
(* You may need to modify here *)
or uint32 v_or1129_4 v_shl1127_4 v_shr1128_4;
(*   %xor1130.4 = xor i32 %or1126.4, %or1129.4 *)
(* You may need to modify here *)
xor uint32 v_xor1130_4 v_or1126_4 v_or1129_4;
(*   %shl1131.4 = shl i32 %add1060.4, 10 *)
shls discard_952 v_shl1131_4 v_add1060_4 10;
(*   %shr1132.4 = lshr i32 %add1060.4, 22 *)
(* You may need to modify here *)
split v_shr1132_4 tmp_to_be_used v_add1060_4 22;
(*   %or1133.4 = or i32 %shl1131.4, %shr1132.4 *)
(* You may need to modify here *)
or uint32 v_or1133_4 v_shl1131_4 v_shr1132_4;
(*   %xor1134.4 = xor i32 %xor1130.4, %or1133.4 *)
(* You may need to modify here *)
xor uint32 v_xor1134_4 v_xor1130_4 v_or1133_4;
(*   %and1135.4 = and i32 %add1060.4, %add978.4 *)
(* You may need to modify here *)
and uint32 v_and1135_4 v_add1060_4 v_add978_4;
(*   %and1136.4 = and i32 %add1060.4, %add1552.3 *)
(* You may need to modify here *)
and uint32 v_and1136_4 v_add1060_4 v_add1552_3;
(*   %xor1137.4 = xor i32 %and1136.4, %and1053.4 *)
(* You may need to modify here *)
xor uint32 v_xor1137_4 v_and1136_4 v_and1053_4;
(*   %xor1139.4 = xor i32 %xor1137.4, %and1135.4 *)
(* You may need to modify here *)
xor uint32 v_xor1139_4 v_xor1137_4 v_and1135_4;
(*   %add1140.4 = add i32 %xor1134.4, %xor1139.4 *)
adds discard_953 v_add1140_4 v_xor1134_4 v_xor1139_4;
(*   %add1141.4 = add i32 %add1123.4, %add1470.3 *)
adds discard_954 v_add1141_4 v_add1123_4 v_add1470_3;
(*   %add1142.4 = add i32 %add1140.4, %add1123.4 *)
adds discard_955 v_add1142_4 v_add1140_4 v_add1123_4;
(*   %179 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v179 arrayidx242_0;
(*   %shl1152.4 = shl i32 %179, 25 *)
shls discard_956 v_shl1152_4 v179 25;
(*   %shr1153.4 = lshr i32 %179, 7 *)
(* You may need to modify here *)
split v_shr1153_4 tmp_to_be_used v179 7;
(*   %or1154.4 = or i32 %shl1152.4, %shr1153.4 *)
(* You may need to modify here *)
or uint32 v_or1154_4 v_shl1152_4 v_shr1153_4;
(*   %shl1155.4 = shl i32 %179, 14 *)
shls discard_957 v_shl1155_4 v179 14;
(*   %shr1156.4 = lshr i32 %179, 18 *)
(* You may need to modify here *)
split v_shr1156_4 tmp_to_be_used v179 18;
(*   %or1157.4 = or i32 %shl1155.4, %shr1156.4 *)
(* You may need to modify here *)
or uint32 v_or1157_4 v_shl1155_4 v_shr1156_4;
(*   %shr1159.4 = lshr i32 %179, 3 *)
(* You may need to modify here *)
split v_shr1159_4 tmp_to_be_used v179 3;
(*   %xor1158.4 = xor i32 %or1157.4, %shr1159.4 *)
(* You may need to modify here *)
xor uint32 v_xor1158_4 v_or1157_4 v_shr1159_4;
(*   %xor1160.4 = xor i32 %xor1158.4, %or1154.4 *)
(* You may need to modify here *)
xor uint32 v_xor1160_4 v_xor1158_4 v_or1154_4;
(*   %180 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v180 arrayidx74_0;
(*   %shl1165.4 = shl i32 %180, 15 *)
shls discard_958 v_shl1165_4 v180 15;
(*   %shr1166.4 = lshr i32 %180, 17 *)
(* You may need to modify here *)
split v_shr1166_4 tmp_to_be_used v180 17;
(*   %or1167.4 = or i32 %shl1165.4, %shr1166.4 *)
(* You may need to modify here *)
or uint32 v_or1167_4 v_shl1165_4 v_shr1166_4;
(*   %shl1168.4 = shl i32 %180, 13 *)
shls discard_959 v_shl1168_4 v180 13;
(*   %shr1169.4 = lshr i32 %180, 19 *)
(* You may need to modify here *)
split v_shr1169_4 tmp_to_be_used v180 19;
(*   %or1170.4 = or i32 %shl1168.4, %shr1169.4 *)
(* You may need to modify here *)
or uint32 v_or1170_4 v_shl1168_4 v_shr1169_4;
(*   %shr1172.4 = lshr i32 %180, 10 *)
(* You may need to modify here *)
split v_shr1172_4 tmp_to_be_used v180 10;
(*   %xor1171.4 = xor i32 %or1170.4, %shr1172.4 *)
(* You may need to modify here *)
xor uint32 v_xor1171_4 v_or1170_4 v_shr1172_4;
(*   %xor1173.4 = xor i32 %xor1171.4, %or1167.4 *)
(* You may need to modify here *)
xor uint32 v_xor1173_4 v_xor1171_4 v_or1167_4;
(*   %181 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v181 arrayidx690_0;
(*   %add1174.4 = add i32 %176, %181 *)
adds discard_960 v_add1174_4 v176 v181;
(*   %add1179.4 = add i32 %add1174.4, %xor1160.4 *)
adds discard_961 v_add1179_4 v_add1174_4 v_xor1160_4;
(*   %add1183.4 = add i32 %add1179.4, %xor1173.4 *)
adds discard_962 v_add1183_4 v_add1179_4 v_xor1173_4;
(*   store i32 %add1183.4, i32* %arrayidx186, align 4, !tbaa !4 *)
mov arrayidx186_0 v_add1183_4;
(*   %shl1185.4 = shl i32 %add1141.4, 26 *)
shls discard_963 v_shl1185_4 v_add1141_4 26;
(*   %shr1186.4 = lshr i32 %add1141.4, 6 *)
(* You may need to modify here *)
split v_shr1186_4 tmp_to_be_used v_add1141_4 6;
(*   %or1187.4 = or i32 %shl1185.4, %shr1186.4 *)
(* You may need to modify here *)
or uint32 v_or1187_4 v_shl1185_4 v_shr1186_4;
(*   %shl1188.4 = shl i32 %add1141.4, 21 *)
shls discard_964 v_shl1188_4 v_add1141_4 21;
(*   %shr1189.4 = lshr i32 %add1141.4, 11 *)
(* You may need to modify here *)
split v_shr1189_4 tmp_to_be_used v_add1141_4 11;
(*   %or1190.4 = or i32 %shl1188.4, %shr1189.4 *)
(* You may need to modify here *)
or uint32 v_or1190_4 v_shl1188_4 v_shr1189_4;
(*   %xor1191.4 = xor i32 %or1187.4, %or1190.4 *)
(* You may need to modify here *)
xor uint32 v_xor1191_4 v_or1187_4 v_or1190_4;
(*   %shl1192.4 = shl i32 %add1141.4, 7 *)
shls discard_965 v_shl1192_4 v_add1141_4 7;
(*   %shr1193.4 = lshr i32 %add1141.4, 25 *)
(* You may need to modify here *)
split v_shr1193_4 tmp_to_be_used v_add1141_4 25;
(*   %or1194.4 = or i32 %shl1192.4, %shr1193.4 *)
(* You may need to modify here *)
or uint32 v_or1194_4 v_shl1192_4 v_shr1193_4;
(*   %xor1195.4 = xor i32 %xor1191.4, %or1194.4 *)
(* You may need to modify here *)
xor uint32 v_xor1195_4 v_xor1191_4 v_or1194_4;
(*   %and1197.4 = and i32 %add1141.4, %add1059.4 *)
(* You may need to modify here *)
and uint32 v_and1197_4 v_add1141_4 v_add1059_4;
(*   %neg1198.4 = xor i32 %add1141.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1198_4 v_add1141_4 (0xFFFFFFFF)@uint32;
(*   %and1199.4 = and i32 %add977.4, %neg1198.4 *)
(* You may need to modify here *)
and uint32 v_and1199_4 v_add977_4 v_neg1198_4;
(*   %xor1200.4 = or i32 %and1197.4, %and1199.4 *)
(* You may need to modify here *)
or uint32 v_xor1200_4 v_and1197_4 v_and1199_4;
(*   %add1196.4 = add i32 %add1551.3, 883997877 *)
adds discard_966 v_add1196_4 v_add1551_3 (883997877)@uint32;
(*   %add1201.4 = add i32 %add1196.4, %add1183.4 *)
adds discard_967 v_add1201_4 v_add1196_4 v_add1183_4;
(*   %add1204.4 = add i32 %add1201.4, %xor1200.4 *)
adds discard_968 v_add1204_4 v_add1201_4 v_xor1200_4;
(*   %add1205.4 = add i32 %add1204.4, %xor1195.4 *)
adds discard_969 v_add1205_4 v_add1204_4 v_xor1195_4;
(*   %shl1206.4 = shl i32 %add1142.4, 30 *)
shls discard_970 v_shl1206_4 v_add1142_4 30;
(*   %shr1207.4 = lshr i32 %add1142.4, 2 *)
(* You may need to modify here *)
split v_shr1207_4 tmp_to_be_used v_add1142_4 2;
(*   %or1208.4 = or i32 %shl1206.4, %shr1207.4 *)
(* You may need to modify here *)
or uint32 v_or1208_4 v_shl1206_4 v_shr1207_4;
(*   %shl1209.4 = shl i32 %add1142.4, 19 *)
shls discard_971 v_shl1209_4 v_add1142_4 19;
(*   %shr1210.4 = lshr i32 %add1142.4, 13 *)
(* You may need to modify here *)
split v_shr1210_4 tmp_to_be_used v_add1142_4 13;
(*   %or1211.4 = or i32 %shl1209.4, %shr1210.4 *)
(* You may need to modify here *)
or uint32 v_or1211_4 v_shl1209_4 v_shr1210_4;
(*   %xor1212.4 = xor i32 %or1208.4, %or1211.4 *)
(* You may need to modify here *)
xor uint32 v_xor1212_4 v_or1208_4 v_or1211_4;
(*   %shl1213.4 = shl i32 %add1142.4, 10 *)
shls discard_972 v_shl1213_4 v_add1142_4 10;
(*   %shr1214.4 = lshr i32 %add1142.4, 22 *)
(* You may need to modify here *)
split v_shr1214_4 tmp_to_be_used v_add1142_4 22;
(*   %or1215.4 = or i32 %shl1213.4, %shr1214.4 *)
(* You may need to modify here *)
or uint32 v_or1215_4 v_shl1213_4 v_shr1214_4;
(*   %xor1216.4 = xor i32 %xor1212.4, %or1215.4 *)
(* You may need to modify here *)
xor uint32 v_xor1216_4 v_xor1212_4 v_or1215_4;
(*   %and1217.4 = and i32 %add1142.4, %add1060.4 *)
(* You may need to modify here *)
and uint32 v_and1217_4 v_add1142_4 v_add1060_4;
(*   %and1218.4 = and i32 %add1142.4, %add978.4 *)
(* You may need to modify here *)
and uint32 v_and1218_4 v_add1142_4 v_add978_4;
(*   %xor1219.4 = xor i32 %and1218.4, %and1135.4 *)
(* You may need to modify here *)
xor uint32 v_xor1219_4 v_and1218_4 v_and1135_4;
(*   %xor1221.4 = xor i32 %xor1219.4, %and1217.4 *)
(* You may need to modify here *)
xor uint32 v_xor1221_4 v_xor1219_4 v_and1217_4;
(*   %add1222.4 = add i32 %xor1216.4, %xor1221.4 *)
adds discard_973 v_add1222_4 v_xor1216_4 v_xor1221_4;
(*   %add1223.4 = add i32 %add1205.4, %add1552.3 *)
adds discard_974 v_add1223_4 v_add1205_4 v_add1552_3;
(*   %add1224.4 = add i32 %add1222.4, %add1205.4 *)
adds discard_975 v_add1224_4 v_add1222_4 v_add1205_4;
(*   %182 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v182 arrayidx298_0;
(*   %shl1234.4 = shl i32 %182, 25 *)
shls discard_976 v_shl1234_4 v182 25;
(*   %shr1235.4 = lshr i32 %182, 7 *)
(* You may need to modify here *)
split v_shr1235_4 tmp_to_be_used v182 7;
(*   %or1236.4 = or i32 %shl1234.4, %shr1235.4 *)
(* You may need to modify here *)
or uint32 v_or1236_4 v_shl1234_4 v_shr1235_4;
(*   %shl1237.4 = shl i32 %182, 14 *)
shls discard_977 v_shl1237_4 v182 14;
(*   %shr1238.4 = lshr i32 %182, 18 *)
(* You may need to modify here *)
split v_shr1238_4 tmp_to_be_used v182 18;
(*   %or1239.4 = or i32 %shl1237.4, %shr1238.4 *)
(* You may need to modify here *)
or uint32 v_or1239_4 v_shl1237_4 v_shr1238_4;
(*   %shr1241.4 = lshr i32 %182, 3 *)
(* You may need to modify here *)
split v_shr1241_4 tmp_to_be_used v182 3;
(*   %xor1240.4 = xor i32 %or1239.4, %shr1241.4 *)
(* You may need to modify here *)
xor uint32 v_xor1240_4 v_or1239_4 v_shr1241_4;
(*   %xor1242.4 = xor i32 %xor1240.4, %or1236.4 *)
(* You may need to modify here *)
xor uint32 v_xor1242_4 v_xor1240_4 v_or1236_4;
(*   %183 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v183 arrayidx130_0;
(*   %shl1247.4 = shl i32 %183, 15 *)
shls discard_978 v_shl1247_4 v183 15;
(*   %shr1248.4 = lshr i32 %183, 17 *)
(* You may need to modify here *)
split v_shr1248_4 tmp_to_be_used v183 17;
(*   %or1249.4 = or i32 %shl1247.4, %shr1248.4 *)
(* You may need to modify here *)
or uint32 v_or1249_4 v_shl1247_4 v_shr1248_4;
(*   %shl1250.4 = shl i32 %183, 13 *)
shls discard_979 v_shl1250_4 v183 13;
(*   %shr1251.4 = lshr i32 %183, 19 *)
(* You may need to modify here *)
split v_shr1251_4 tmp_to_be_used v183 19;
(*   %or1252.4 = or i32 %shl1250.4, %shr1251.4 *)
(* You may need to modify here *)
or uint32 v_or1252_4 v_shl1250_4 v_shr1251_4;
(*   %shr1254.4 = lshr i32 %183, 10 *)
(* You may need to modify here *)
split v_shr1254_4 tmp_to_be_used v183 10;
(*   %xor1253.4 = xor i32 %or1252.4, %shr1254.4 *)
(* You may need to modify here *)
xor uint32 v_xor1253_4 v_or1252_4 v_shr1254_4;
(*   %xor1255.4 = xor i32 %xor1253.4, %or1249.4 *)
(* You may need to modify here *)
xor uint32 v_xor1255_4 v_xor1253_4 v_or1249_4;
(*   %184 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v184 arrayidx746_0;
(*   %add1256.4 = add i32 %179, %184 *)
adds discard_980 v_add1256_4 v179 v184;
(*   %add1261.4 = add i32 %add1256.4, %xor1242.4 *)
adds discard_981 v_add1261_4 v_add1256_4 v_xor1242_4;
(*   %add1265.4 = add i32 %add1261.4, %xor1255.4 *)
adds discard_982 v_add1265_4 v_add1261_4 v_xor1255_4;
(*   store i32 %add1265.4, i32* %arrayidx242, align 4, !tbaa !4 *)
mov arrayidx242_0 v_add1265_4;
(*   %shl1267.4 = shl i32 %add1223.4, 26 *)
shls discard_983 v_shl1267_4 v_add1223_4 26;
(*   %shr1268.4 = lshr i32 %add1223.4, 6 *)
(* You may need to modify here *)
split v_shr1268_4 tmp_to_be_used v_add1223_4 6;
(*   %or1269.4 = or i32 %shl1267.4, %shr1268.4 *)
(* You may need to modify here *)
or uint32 v_or1269_4 v_shl1267_4 v_shr1268_4;
(*   %shl1270.4 = shl i32 %add1223.4, 21 *)
shls discard_984 v_shl1270_4 v_add1223_4 21;
(*   %shr1271.4 = lshr i32 %add1223.4, 11 *)
(* You may need to modify here *)
split v_shr1271_4 tmp_to_be_used v_add1223_4 11;
(*   %or1272.4 = or i32 %shl1270.4, %shr1271.4 *)
(* You may need to modify here *)
or uint32 v_or1272_4 v_shl1270_4 v_shr1271_4;
(*   %xor1273.4 = xor i32 %or1269.4, %or1272.4 *)
(* You may need to modify here *)
xor uint32 v_xor1273_4 v_or1269_4 v_or1272_4;
(*   %shl1274.4 = shl i32 %add1223.4, 7 *)
shls discard_985 v_shl1274_4 v_add1223_4 7;
(*   %shr1275.4 = lshr i32 %add1223.4, 25 *)
(* You may need to modify here *)
split v_shr1275_4 tmp_to_be_used v_add1223_4 25;
(*   %or1276.4 = or i32 %shl1274.4, %shr1275.4 *)
(* You may need to modify here *)
or uint32 v_or1276_4 v_shl1274_4 v_shr1275_4;
(*   %xor1277.4 = xor i32 %xor1273.4, %or1276.4 *)
(* You may need to modify here *)
xor uint32 v_xor1277_4 v_xor1273_4 v_or1276_4;
(*   %and1279.4 = and i32 %add1223.4, %add1141.4 *)
(* You may need to modify here *)
and uint32 v_and1279_4 v_add1223_4 v_add1141_4;
(*   %neg1280.4 = xor i32 %add1223.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1280_4 v_add1223_4 (0xFFFFFFFF)@uint32;
(*   %and1281.4 = and i32 %add1059.4, %neg1280.4 *)
(* You may need to modify here *)
and uint32 v_and1281_4 v_add1059_4 v_neg1280_4;
(*   %xor1282.4 = or i32 %and1279.4, %and1281.4 *)
(* You may need to modify here *)
or uint32 v_xor1282_4 v_and1279_4 v_and1281_4;
(*   %add1278.4 = add i32 %add977.4, 958139571 *)
adds discard_986 v_add1278_4 v_add977_4 (958139571)@uint32;
(*   %add1283.4 = add i32 %add1278.4, %add1265.4 *)
adds discard_987 v_add1283_4 v_add1278_4 v_add1265_4;
(*   %add1286.4 = add i32 %add1283.4, %xor1282.4 *)
adds discard_988 v_add1286_4 v_add1283_4 v_xor1282_4;
(*   %add1287.4 = add i32 %add1286.4, %xor1277.4 *)
adds discard_989 v_add1287_4 v_add1286_4 v_xor1277_4;
(*   %shl1288.4 = shl i32 %add1224.4, 30 *)
shls discard_990 v_shl1288_4 v_add1224_4 30;
(*   %shr1289.4 = lshr i32 %add1224.4, 2 *)
(* You may need to modify here *)
split v_shr1289_4 tmp_to_be_used v_add1224_4 2;
(*   %or1290.4 = or i32 %shl1288.4, %shr1289.4 *)
(* You may need to modify here *)
or uint32 v_or1290_4 v_shl1288_4 v_shr1289_4;
(*   %shl1291.4 = shl i32 %add1224.4, 19 *)
shls discard_991 v_shl1291_4 v_add1224_4 19;
(*   %shr1292.4 = lshr i32 %add1224.4, 13 *)
(* You may need to modify here *)
split v_shr1292_4 tmp_to_be_used v_add1224_4 13;
(*   %or1293.4 = or i32 %shl1291.4, %shr1292.4 *)
(* You may need to modify here *)
or uint32 v_or1293_4 v_shl1291_4 v_shr1292_4;
(*   %xor1294.4 = xor i32 %or1290.4, %or1293.4 *)
(* You may need to modify here *)
xor uint32 v_xor1294_4 v_or1290_4 v_or1293_4;
(*   %shl1295.4 = shl i32 %add1224.4, 10 *)
shls discard_992 v_shl1295_4 v_add1224_4 10;
(*   %shr1296.4 = lshr i32 %add1224.4, 22 *)
(* You may need to modify here *)
split v_shr1296_4 tmp_to_be_used v_add1224_4 22;
(*   %or1297.4 = or i32 %shl1295.4, %shr1296.4 *)
(* You may need to modify here *)
or uint32 v_or1297_4 v_shl1295_4 v_shr1296_4;
(*   %xor1298.4 = xor i32 %xor1294.4, %or1297.4 *)
(* You may need to modify here *)
xor uint32 v_xor1298_4 v_xor1294_4 v_or1297_4;
(*   %and1299.4 = and i32 %add1224.4, %add1142.4 *)
(* You may need to modify here *)
and uint32 v_and1299_4 v_add1224_4 v_add1142_4;
(*   %and1300.4 = and i32 %add1224.4, %add1060.4 *)
(* You may need to modify here *)
and uint32 v_and1300_4 v_add1224_4 v_add1060_4;
(*   %xor1301.4 = xor i32 %and1300.4, %and1217.4 *)
(* You may need to modify here *)
xor uint32 v_xor1301_4 v_and1300_4 v_and1217_4;
(*   %xor1303.4 = xor i32 %xor1301.4, %and1299.4 *)
(* You may need to modify here *)
xor uint32 v_xor1303_4 v_xor1301_4 v_and1299_4;
(*   %add1304.4 = add i32 %xor1298.4, %xor1303.4 *)
adds discard_993 v_add1304_4 v_xor1298_4 v_xor1303_4;
(*   %add1305.4 = add i32 %add1287.4, %add978.4 *)
adds discard_994 v_add1305_4 v_add1287_4 v_add978_4;
(*   %add1306.4 = add i32 %add1304.4, %add1287.4 *)
adds discard_995 v_add1306_4 v_add1304_4 v_add1287_4;
(*   %185 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v185 arrayidx354_0;
(*   %shl1316.4 = shl i32 %185, 25 *)
shls discard_996 v_shl1316_4 v185 25;
(*   %shr1317.4 = lshr i32 %185, 7 *)
(* You may need to modify here *)
split v_shr1317_4 tmp_to_be_used v185 7;
(*   %or1318.4 = or i32 %shl1316.4, %shr1317.4 *)
(* You may need to modify here *)
or uint32 v_or1318_4 v_shl1316_4 v_shr1317_4;
(*   %shl1319.4 = shl i32 %185, 14 *)
shls discard_997 v_shl1319_4 v185 14;
(*   %shr1320.4 = lshr i32 %185, 18 *)
(* You may need to modify here *)
split v_shr1320_4 tmp_to_be_used v185 18;
(*   %or1321.4 = or i32 %shl1319.4, %shr1320.4 *)
(* You may need to modify here *)
or uint32 v_or1321_4 v_shl1319_4 v_shr1320_4;
(*   %shr1323.4 = lshr i32 %185, 3 *)
(* You may need to modify here *)
split v_shr1323_4 tmp_to_be_used v185 3;
(*   %xor1322.4 = xor i32 %or1321.4, %shr1323.4 *)
(* You may need to modify here *)
xor uint32 v_xor1322_4 v_or1321_4 v_shr1323_4;
(*   %xor1324.4 = xor i32 %xor1322.4, %or1318.4 *)
(* You may need to modify here *)
xor uint32 v_xor1324_4 v_xor1322_4 v_or1318_4;
(*   %186 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v186 arrayidx186_0;
(*   %shl1329.4 = shl i32 %186, 15 *)
shls discard_998 v_shl1329_4 v186 15;
(*   %shr1330.4 = lshr i32 %186, 17 *)
(* You may need to modify here *)
split v_shr1330_4 tmp_to_be_used v186 17;
(*   %or1331.4 = or i32 %shl1329.4, %shr1330.4 *)
(* You may need to modify here *)
or uint32 v_or1331_4 v_shl1329_4 v_shr1330_4;
(*   %shl1332.4 = shl i32 %186, 13 *)
shls discard_999 v_shl1332_4 v186 13;
(*   %shr1333.4 = lshr i32 %186, 19 *)
(* You may need to modify here *)
split v_shr1333_4 tmp_to_be_used v186 19;
(*   %or1334.4 = or i32 %shl1332.4, %shr1333.4 *)
(* You may need to modify here *)
or uint32 v_or1334_4 v_shl1332_4 v_shr1333_4;
(*   %shr1336.4 = lshr i32 %186, 10 *)
(* You may need to modify here *)
split v_shr1336_4 tmp_to_be_used v186 10;
(*   %xor1335.4 = xor i32 %or1334.4, %shr1336.4 *)
(* You may need to modify here *)
xor uint32 v_xor1335_4 v_or1334_4 v_shr1336_4;
(*   %xor1337.4 = xor i32 %xor1335.4, %or1331.4 *)
(* You may need to modify here *)
xor uint32 v_xor1337_4 v_xor1335_4 v_or1331_4;
(*   %187 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v187 arrayidx802_0;
(*   %add1338.4 = add i32 %182, %187 *)
adds discard_1000 v_add1338_4 v182 v187;
(*   %add1343.4 = add i32 %add1338.4, %xor1324.4 *)
adds discard_1001 v_add1343_4 v_add1338_4 v_xor1324_4;
(*   %add1347.4 = add i32 %add1343.4, %xor1337.4 *)
adds discard_1002 v_add1347_4 v_add1343_4 v_xor1337_4;
(*   store i32 %add1347.4, i32* %arrayidx298, align 4, !tbaa !4 *)
mov arrayidx298_0 v_add1347_4;
(*   %shl1349.4 = shl i32 %add1305.4, 26 *)
shls discard_1003 v_shl1349_4 v_add1305_4 26;
(*   %shr1350.4 = lshr i32 %add1305.4, 6 *)
(* You may need to modify here *)
split v_shr1350_4 tmp_to_be_used v_add1305_4 6;
(*   %or1351.4 = or i32 %shl1349.4, %shr1350.4 *)
(* You may need to modify here *)
or uint32 v_or1351_4 v_shl1349_4 v_shr1350_4;
(*   %shl1352.4 = shl i32 %add1305.4, 21 *)
shls discard_1004 v_shl1352_4 v_add1305_4 21;
(*   %shr1353.4 = lshr i32 %add1305.4, 11 *)
(* You may need to modify here *)
split v_shr1353_4 tmp_to_be_used v_add1305_4 11;
(*   %or1354.4 = or i32 %shl1352.4, %shr1353.4 *)
(* You may need to modify here *)
or uint32 v_or1354_4 v_shl1352_4 v_shr1353_4;
(*   %xor1355.4 = xor i32 %or1351.4, %or1354.4 *)
(* You may need to modify here *)
xor uint32 v_xor1355_4 v_or1351_4 v_or1354_4;
(*   %shl1356.4 = shl i32 %add1305.4, 7 *)
shls discard_1005 v_shl1356_4 v_add1305_4 7;
(*   %shr1357.4 = lshr i32 %add1305.4, 25 *)
(* You may need to modify here *)
split v_shr1357_4 tmp_to_be_used v_add1305_4 25;
(*   %or1358.4 = or i32 %shl1356.4, %shr1357.4 *)
(* You may need to modify here *)
or uint32 v_or1358_4 v_shl1356_4 v_shr1357_4;
(*   %xor1359.4 = xor i32 %xor1355.4, %or1358.4 *)
(* You may need to modify here *)
xor uint32 v_xor1359_4 v_xor1355_4 v_or1358_4;
(*   %and1361.4 = and i32 %add1305.4, %add1223.4 *)
(* You may need to modify here *)
and uint32 v_and1361_4 v_add1305_4 v_add1223_4;
(*   %neg1362.4 = xor i32 %add1305.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1362_4 v_add1305_4 (0xFFFFFFFF)@uint32;
(*   %and1363.4 = and i32 %add1141.4, %neg1362.4 *)
(* You may need to modify here *)
and uint32 v_and1363_4 v_add1141_4 v_neg1362_4;
(*   %xor1364.4 = or i32 %and1361.4, %and1363.4 *)
(* You may need to modify here *)
or uint32 v_xor1364_4 v_and1361_4 v_and1363_4;
(*   %add1360.4 = add i32 %add1059.4, 1322822218 *)
adds discard_1006 v_add1360_4 v_add1059_4 (1322822218)@uint32;
(*   %add1365.4 = add i32 %add1360.4, %add1347.4 *)
adds discard_1007 v_add1365_4 v_add1360_4 v_add1347_4;
(*   %add1368.4 = add i32 %add1365.4, %xor1364.4 *)
adds discard_1008 v_add1368_4 v_add1365_4 v_xor1364_4;
(*   %add1369.4 = add i32 %add1368.4, %xor1359.4 *)
adds discard_1009 v_add1369_4 v_add1368_4 v_xor1359_4;
(*   %shl1370.4 = shl i32 %add1306.4, 30 *)
shls discard_1010 v_shl1370_4 v_add1306_4 30;
(*   %shr1371.4 = lshr i32 %add1306.4, 2 *)
(* You may need to modify here *)
split v_shr1371_4 tmp_to_be_used v_add1306_4 2;
(*   %or1372.4 = or i32 %shl1370.4, %shr1371.4 *)
(* You may need to modify here *)
or uint32 v_or1372_4 v_shl1370_4 v_shr1371_4;
(*   %shl1373.4 = shl i32 %add1306.4, 19 *)
shls discard_1011 v_shl1373_4 v_add1306_4 19;
(*   %shr1374.4 = lshr i32 %add1306.4, 13 *)
(* You may need to modify here *)
split v_shr1374_4 tmp_to_be_used v_add1306_4 13;
(*   %or1375.4 = or i32 %shl1373.4, %shr1374.4 *)
(* You may need to modify here *)
or uint32 v_or1375_4 v_shl1373_4 v_shr1374_4;
(*   %xor1376.4 = xor i32 %or1372.4, %or1375.4 *)
(* You may need to modify here *)
xor uint32 v_xor1376_4 v_or1372_4 v_or1375_4;
(*   %shl1377.4 = shl i32 %add1306.4, 10 *)
shls discard_1012 v_shl1377_4 v_add1306_4 10;
(*   %shr1378.4 = lshr i32 %add1306.4, 22 *)
(* You may need to modify here *)
split v_shr1378_4 tmp_to_be_used v_add1306_4 22;
(*   %or1379.4 = or i32 %shl1377.4, %shr1378.4 *)
(* You may need to modify here *)
or uint32 v_or1379_4 v_shl1377_4 v_shr1378_4;
(*   %xor1380.4 = xor i32 %xor1376.4, %or1379.4 *)
(* You may need to modify here *)
xor uint32 v_xor1380_4 v_xor1376_4 v_or1379_4;
(*   %and1381.4 = and i32 %add1306.4, %add1224.4 *)
(* You may need to modify here *)
and uint32 v_and1381_4 v_add1306_4 v_add1224_4;
(*   %and1382.4 = and i32 %add1306.4, %add1142.4 *)
(* You may need to modify here *)
and uint32 v_and1382_4 v_add1306_4 v_add1142_4;
(*   %xor1383.4 = xor i32 %and1382.4, %and1299.4 *)
(* You may need to modify here *)
xor uint32 v_xor1383_4 v_and1382_4 v_and1299_4;
(*   %xor1385.4 = xor i32 %xor1383.4, %and1381.4 *)
(* You may need to modify here *)
xor uint32 v_xor1385_4 v_xor1383_4 v_and1381_4;
(*   %add1386.4 = add i32 %xor1380.4, %xor1385.4 *)
adds discard_1013 v_add1386_4 v_xor1380_4 v_xor1385_4;
(*   %add1387.4 = add i32 %add1369.4, %add1060.4 *)
adds discard_1014 v_add1387_4 v_add1369_4 v_add1060_4;
(*   %add1388.4 = add i32 %add1386.4, %add1369.4 *)
adds discard_1015 v_add1388_4 v_add1386_4 v_add1369_4;
(*   %188 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v188 arrayidx410_0;
(*   %shl1398.4 = shl i32 %188, 25 *)
shls discard_1016 v_shl1398_4 v188 25;
(*   %shr1399.4 = lshr i32 %188, 7 *)
(* You may need to modify here *)
split v_shr1399_4 tmp_to_be_used v188 7;
(*   %or1400.4 = or i32 %shl1398.4, %shr1399.4 *)
(* You may need to modify here *)
or uint32 v_or1400_4 v_shl1398_4 v_shr1399_4;
(*   %shl1401.4 = shl i32 %188, 14 *)
shls discard_1017 v_shl1401_4 v188 14;
(*   %shr1402.4 = lshr i32 %188, 18 *)
(* You may need to modify here *)
split v_shr1402_4 tmp_to_be_used v188 18;
(*   %or1403.4 = or i32 %shl1401.4, %shr1402.4 *)
(* You may need to modify here *)
or uint32 v_or1403_4 v_shl1401_4 v_shr1402_4;
(*   %shr1405.4 = lshr i32 %188, 3 *)
(* You may need to modify here *)
split v_shr1405_4 tmp_to_be_used v188 3;
(*   %xor1404.4 = xor i32 %or1403.4, %shr1405.4 *)
(* You may need to modify here *)
xor uint32 v_xor1404_4 v_or1403_4 v_shr1405_4;
(*   %xor1406.4 = xor i32 %xor1404.4, %or1400.4 *)
(* You may need to modify here *)
xor uint32 v_xor1406_4 v_xor1404_4 v_or1400_4;
(*   %189 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v189 arrayidx242_0;
(*   %shl1411.4 = shl i32 %189, 15 *)
shls discard_1018 v_shl1411_4 v189 15;
(*   %shr1412.4 = lshr i32 %189, 17 *)
(* You may need to modify here *)
split v_shr1412_4 tmp_to_be_used v189 17;
(*   %or1413.4 = or i32 %shl1411.4, %shr1412.4 *)
(* You may need to modify here *)
or uint32 v_or1413_4 v_shl1411_4 v_shr1412_4;
(*   %shl1414.4 = shl i32 %189, 13 *)
shls discard_1019 v_shl1414_4 v189 13;
(*   %shr1415.4 = lshr i32 %189, 19 *)
(* You may need to modify here *)
split v_shr1415_4 tmp_to_be_used v189 19;
(*   %or1416.4 = or i32 %shl1414.4, %shr1415.4 *)
(* You may need to modify here *)
or uint32 v_or1416_4 v_shl1414_4 v_shr1415_4;
(*   %shr1418.4 = lshr i32 %189, 10 *)
(* You may need to modify here *)
split v_shr1418_4 tmp_to_be_used v189 10;
(*   %xor1417.4 = xor i32 %or1416.4, %shr1418.4 *)
(* You may need to modify here *)
xor uint32 v_xor1417_4 v_or1416_4 v_shr1418_4;
(*   %xor1419.4 = xor i32 %xor1417.4, %or1413.4 *)
(* You may need to modify here *)
xor uint32 v_xor1419_4 v_xor1417_4 v_or1413_4;
(*   %190 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v190 arrayidx858_0;
(*   %add1420.4 = add i32 %185, %190 *)
adds discard_1020 v_add1420_4 v185 v190;
(*   %add1425.4 = add i32 %add1420.4, %xor1406.4 *)
adds discard_1021 v_add1425_4 v_add1420_4 v_xor1406_4;
(*   %add1429.4 = add i32 %add1425.4, %xor1419.4 *)
adds discard_1022 v_add1429_4 v_add1425_4 v_xor1419_4;
(*   store i32 %add1429.4, i32* %arrayidx354, align 4, !tbaa !4 *)
mov arrayidx354_0 v_add1429_4;
(*   %shl1431.4 = shl i32 %add1387.4, 26 *)
shls discard_1023 v_shl1431_4 v_add1387_4 26;
(*   %shr1432.4 = lshr i32 %add1387.4, 6 *)
(* You may need to modify here *)
split v_shr1432_4 tmp_to_be_used v_add1387_4 6;
(*   %or1433.4 = or i32 %shl1431.4, %shr1432.4 *)
(* You may need to modify here *)
or uint32 v_or1433_4 v_shl1431_4 v_shr1432_4;
(*   %shl1434.4 = shl i32 %add1387.4, 21 *)
shls discard_1024 v_shl1434_4 v_add1387_4 21;
(*   %shr1435.4 = lshr i32 %add1387.4, 11 *)
(* You may need to modify here *)
split v_shr1435_4 tmp_to_be_used v_add1387_4 11;
(*   %or1436.4 = or i32 %shl1434.4, %shr1435.4 *)
(* You may need to modify here *)
or uint32 v_or1436_4 v_shl1434_4 v_shr1435_4;
(*   %xor1437.4 = xor i32 %or1433.4, %or1436.4 *)
(* You may need to modify here *)
xor uint32 v_xor1437_4 v_or1433_4 v_or1436_4;
(*   %shl1438.4 = shl i32 %add1387.4, 7 *)
shls discard_1025 v_shl1438_4 v_add1387_4 7;
(*   %shr1439.4 = lshr i32 %add1387.4, 25 *)
(* You may need to modify here *)
split v_shr1439_4 tmp_to_be_used v_add1387_4 25;
(*   %or1440.4 = or i32 %shl1438.4, %shr1439.4 *)
(* You may need to modify here *)
or uint32 v_or1440_4 v_shl1438_4 v_shr1439_4;
(*   %xor1441.4 = xor i32 %xor1437.4, %or1440.4 *)
(* You may need to modify here *)
xor uint32 v_xor1441_4 v_xor1437_4 v_or1440_4;
(*   %and1443.4 = and i32 %add1387.4, %add1305.4 *)
(* You may need to modify here *)
and uint32 v_and1443_4 v_add1387_4 v_add1305_4;
(*   %neg1444.4 = xor i32 %add1387.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1444_4 v_add1387_4 (0xFFFFFFFF)@uint32;
(*   %and1445.4 = and i32 %add1223.4, %neg1444.4 *)
(* You may need to modify here *)
and uint32 v_and1445_4 v_add1223_4 v_neg1444_4;
(*   %xor1446.4 = or i32 %and1443.4, %and1445.4 *)
(* You may need to modify here *)
or uint32 v_xor1446_4 v_and1443_4 v_and1445_4;
(*   %add1442.4 = add i32 %add1141.4, 1537002063 *)
adds discard_1026 v_add1442_4 v_add1141_4 (1537002063)@uint32;
(*   %add1447.4 = add i32 %add1442.4, %add1429.4 *)
adds discard_1027 v_add1447_4 v_add1442_4 v_add1429_4;
(*   %add1450.4 = add i32 %add1447.4, %xor1446.4 *)
adds discard_1028 v_add1450_4 v_add1447_4 v_xor1446_4;
(*   %add1451.4 = add i32 %add1450.4, %xor1441.4 *)
adds discard_1029 v_add1451_4 v_add1450_4 v_xor1441_4;
(*   %shl1452.4 = shl i32 %add1388.4, 30 *)
shls discard_1030 v_shl1452_4 v_add1388_4 30;
(*   %shr1453.4 = lshr i32 %add1388.4, 2 *)
(* You may need to modify here *)
split v_shr1453_4 tmp_to_be_used v_add1388_4 2;
(*   %or1454.4 = or i32 %shl1452.4, %shr1453.4 *)
(* You may need to modify here *)
or uint32 v_or1454_4 v_shl1452_4 v_shr1453_4;
(*   %shl1455.4 = shl i32 %add1388.4, 19 *)
shls discard_1031 v_shl1455_4 v_add1388_4 19;
(*   %shr1456.4 = lshr i32 %add1388.4, 13 *)
(* You may need to modify here *)
split v_shr1456_4 tmp_to_be_used v_add1388_4 13;
(*   %or1457.4 = or i32 %shl1455.4, %shr1456.4 *)
(* You may need to modify here *)
or uint32 v_or1457_4 v_shl1455_4 v_shr1456_4;
(*   %xor1458.4 = xor i32 %or1454.4, %or1457.4 *)
(* You may need to modify here *)
xor uint32 v_xor1458_4 v_or1454_4 v_or1457_4;
(*   %shl1459.4 = shl i32 %add1388.4, 10 *)
shls discard_1032 v_shl1459_4 v_add1388_4 10;
(*   %shr1460.4 = lshr i32 %add1388.4, 22 *)
(* You may need to modify here *)
split v_shr1460_4 tmp_to_be_used v_add1388_4 22;
(*   %or1461.4 = or i32 %shl1459.4, %shr1460.4 *)
(* You may need to modify here *)
or uint32 v_or1461_4 v_shl1459_4 v_shr1460_4;
(*   %xor1462.4 = xor i32 %xor1458.4, %or1461.4 *)
(* You may need to modify here *)
xor uint32 v_xor1462_4 v_xor1458_4 v_or1461_4;
(*   %and1463.4 = and i32 %add1388.4, %add1306.4 *)
(* You may need to modify here *)
and uint32 v_and1463_4 v_add1388_4 v_add1306_4;
(*   %and1464.4 = and i32 %add1388.4, %add1224.4 *)
(* You may need to modify here *)
and uint32 v_and1464_4 v_add1388_4 v_add1224_4;
(*   %xor1465.4 = xor i32 %and1464.4, %and1381.4 *)
(* You may need to modify here *)
xor uint32 v_xor1465_4 v_and1464_4 v_and1381_4;
(*   %xor1467.4 = xor i32 %xor1465.4, %and1463.4 *)
(* You may need to modify here *)
xor uint32 v_xor1467_4 v_xor1465_4 v_and1463_4;
(*   %add1468.4 = add i32 %xor1462.4, %xor1467.4 *)
adds discard_1033 v_add1468_4 v_xor1462_4 v_xor1467_4;
(*   %add1469.4 = add i32 %add1451.4, %add1142.4 *)
adds discard_1034 v_add1469_4 v_add1451_4 v_add1142_4;
(*   %add1470.4 = add i32 %add1468.4, %add1451.4 *)
adds discard_1035 v_add1470_4 v_add1468_4 v_add1451_4;
(*   %191 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v191 arrayidx466_0;
(*   %shl1480.4 = shl i32 %191, 25 *)
shls discard_1036 v_shl1480_4 v191 25;
(*   %shr1481.4 = lshr i32 %191, 7 *)
(* You may need to modify here *)
split v_shr1481_4 tmp_to_be_used v191 7;
(*   %or1482.4 = or i32 %shl1480.4, %shr1481.4 *)
(* You may need to modify here *)
or uint32 v_or1482_4 v_shl1480_4 v_shr1481_4;
(*   %shl1483.4 = shl i32 %191, 14 *)
shls discard_1037 v_shl1483_4 v191 14;
(*   %shr1484.4 = lshr i32 %191, 18 *)
(* You may need to modify here *)
split v_shr1484_4 tmp_to_be_used v191 18;
(*   %or1485.4 = or i32 %shl1483.4, %shr1484.4 *)
(* You may need to modify here *)
or uint32 v_or1485_4 v_shl1483_4 v_shr1484_4;
(*   %shr1487.4 = lshr i32 %191, 3 *)
(* You may need to modify here *)
split v_shr1487_4 tmp_to_be_used v191 3;
(*   %xor1486.4 = xor i32 %or1485.4, %shr1487.4 *)
(* You may need to modify here *)
xor uint32 v_xor1486_4 v_or1485_4 v_shr1487_4;
(*   %xor1488.4 = xor i32 %xor1486.4, %or1482.4 *)
(* You may need to modify here *)
xor uint32 v_xor1488_4 v_xor1486_4 v_or1482_4;
(*   %192 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v192 arrayidx298_0;
(*   %shl1493.4 = shl i32 %192, 15 *)
shls discard_1038 v_shl1493_4 v192 15;
(*   %shr1494.4 = lshr i32 %192, 17 *)
(* You may need to modify here *)
split v_shr1494_4 tmp_to_be_used v192 17;
(*   %or1495.4 = or i32 %shl1493.4, %shr1494.4 *)
(* You may need to modify here *)
or uint32 v_or1495_4 v_shl1493_4 v_shr1494_4;
(*   %shl1496.4 = shl i32 %192, 13 *)
shls discard_1039 v_shl1496_4 v192 13;
(*   %shr1497.4 = lshr i32 %192, 19 *)
(* You may need to modify here *)
split v_shr1497_4 tmp_to_be_used v192 19;
(*   %or1498.4 = or i32 %shl1496.4, %shr1497.4 *)
(* You may need to modify here *)
or uint32 v_or1498_4 v_shl1496_4 v_shr1497_4;
(*   %shr1500.4 = lshr i32 %192, 10 *)
(* You may need to modify here *)
split v_shr1500_4 tmp_to_be_used v192 10;
(*   %xor1499.4 = xor i32 %or1498.4, %shr1500.4 *)
(* You may need to modify here *)
xor uint32 v_xor1499_4 v_or1498_4 v_shr1500_4;
(*   %xor1501.4 = xor i32 %xor1499.4, %or1495.4 *)
(* You may need to modify here *)
xor uint32 v_xor1501_4 v_xor1499_4 v_or1495_4;
(*   %193 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v193 arrayidx26_0;
(*   %add1502.4 = add i32 %188, %193 *)
adds discard_1040 v_add1502_4 v188 v193;
(*   %add1507.4 = add i32 %add1502.4, %xor1488.4 *)
adds discard_1041 v_add1507_4 v_add1502_4 v_xor1488_4;
(*   %add1511.4 = add i32 %add1507.4, %xor1501.4 *)
adds discard_1042 v_add1511_4 v_add1507_4 v_xor1501_4;
(*   store i32 %add1511.4, i32* %arrayidx410, align 4, !tbaa !4 *)
mov arrayidx410_0 v_add1511_4;
(*   %shl1513.4 = shl i32 %add1469.4, 26 *)
shls discard_1043 v_shl1513_4 v_add1469_4 26;
(*   %shr1514.4 = lshr i32 %add1469.4, 6 *)
(* You may need to modify here *)
split v_shr1514_4 tmp_to_be_used v_add1469_4 6;
(*   %or1515.4 = or i32 %shl1513.4, %shr1514.4 *)
(* You may need to modify here *)
or uint32 v_or1515_4 v_shl1513_4 v_shr1514_4;
(*   %shl1516.4 = shl i32 %add1469.4, 21 *)
shls discard_1044 v_shl1516_4 v_add1469_4 21;
(*   %shr1517.4 = lshr i32 %add1469.4, 11 *)
(* You may need to modify here *)
split v_shr1517_4 tmp_to_be_used v_add1469_4 11;
(*   %or1518.4 = or i32 %shl1516.4, %shr1517.4 *)
(* You may need to modify here *)
or uint32 v_or1518_4 v_shl1516_4 v_shr1517_4;
(*   %xor1519.4 = xor i32 %or1515.4, %or1518.4 *)
(* You may need to modify here *)
xor uint32 v_xor1519_4 v_or1515_4 v_or1518_4;
(*   %shl1520.4 = shl i32 %add1469.4, 7 *)
shls discard_1045 v_shl1520_4 v_add1469_4 7;
(*   %shr1521.4 = lshr i32 %add1469.4, 25 *)
(* You may need to modify here *)
split v_shr1521_4 tmp_to_be_used v_add1469_4 25;
(*   %or1522.4 = or i32 %shl1520.4, %shr1521.4 *)
(* You may need to modify here *)
or uint32 v_or1522_4 v_shl1520_4 v_shr1521_4;
(*   %xor1523.4 = xor i32 %xor1519.4, %or1522.4 *)
(* You may need to modify here *)
xor uint32 v_xor1523_4 v_xor1519_4 v_or1522_4;
(*   %and1525.4 = and i32 %add1469.4, %add1387.4 *)
(* You may need to modify here *)
and uint32 v_and1525_4 v_add1469_4 v_add1387_4;
(*   %neg1526.4 = xor i32 %add1469.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1526_4 v_add1469_4 (0xFFFFFFFF)@uint32;
(*   %and1527.4 = and i32 %add1305.4, %neg1526.4 *)
(* You may need to modify here *)
and uint32 v_and1527_4 v_add1305_4 v_neg1526_4;
(*   %xor1528.4 = or i32 %and1525.4, %and1527.4 *)
(* You may need to modify here *)
or uint32 v_xor1528_4 v_and1525_4 v_and1527_4;
(*   %add1524.4 = add i32 %add1223.4, 1747873779 *)
adds discard_1046 v_add1524_4 v_add1223_4 (1747873779)@uint32;
(*   %add1529.4 = add i32 %add1524.4, %add1511.4 *)
adds discard_1047 v_add1529_4 v_add1524_4 v_add1511_4;
(*   %add1532.4 = add i32 %add1529.4, %xor1528.4 *)
adds discard_1048 v_add1532_4 v_add1529_4 v_xor1528_4;
(*   %add1533.4 = add i32 %add1532.4, %xor1523.4 *)
adds discard_1049 v_add1533_4 v_add1532_4 v_xor1523_4;
(*   %shl1534.4 = shl i32 %add1470.4, 30 *)
shls discard_1050 v_shl1534_4 v_add1470_4 30;
(*   %shr1535.4 = lshr i32 %add1470.4, 2 *)
(* You may need to modify here *)
split v_shr1535_4 tmp_to_be_used v_add1470_4 2;
(*   %or1536.4 = or i32 %shl1534.4, %shr1535.4 *)
(* You may need to modify here *)
or uint32 v_or1536_4 v_shl1534_4 v_shr1535_4;
(*   %shl1537.4 = shl i32 %add1470.4, 19 *)
shls discard_1051 v_shl1537_4 v_add1470_4 19;
(*   %shr1538.4 = lshr i32 %add1470.4, 13 *)
(* You may need to modify here *)
split v_shr1538_4 tmp_to_be_used v_add1470_4 13;
(*   %or1539.4 = or i32 %shl1537.4, %shr1538.4 *)
(* You may need to modify here *)
or uint32 v_or1539_4 v_shl1537_4 v_shr1538_4;
(*   %xor1540.4 = xor i32 %or1536.4, %or1539.4 *)
(* You may need to modify here *)
xor uint32 v_xor1540_4 v_or1536_4 v_or1539_4;
(*   %shl1541.4 = shl i32 %add1470.4, 10 *)
shls discard_1052 v_shl1541_4 v_add1470_4 10;
(*   %shr1542.4 = lshr i32 %add1470.4, 22 *)
(* You may need to modify here *)
split v_shr1542_4 tmp_to_be_used v_add1470_4 22;
(*   %or1543.4 = or i32 %shl1541.4, %shr1542.4 *)
(* You may need to modify here *)
or uint32 v_or1543_4 v_shl1541_4 v_shr1542_4;
(*   %xor1544.4 = xor i32 %xor1540.4, %or1543.4 *)
(* You may need to modify here *)
xor uint32 v_xor1544_4 v_xor1540_4 v_or1543_4;
(*   %and15462545.4 = xor i32 %add1388.4, %add1306.4 *)
(* You may need to modify here *)
xor uint32 v_and15462545_4 v_add1388_4 v_add1306_4;
(*   %xor1547.4 = and i32 %add1470.4, %and15462545.4 *)
(* You may need to modify here *)
and uint32 v_xor1547_4 v_add1470_4 v_and15462545_4;
(*   %xor1549.4 = xor i32 %xor1547.4, %and1463.4 *)
(* You may need to modify here *)
xor uint32 v_xor1549_4 v_xor1547_4 v_and1463_4;
(*   %add1550.4 = add i32 %xor1544.4, %xor1549.4 *)
adds discard_1053 v_add1550_4 v_xor1544_4 v_xor1549_4;
(*   %add1551.4 = add i32 %add1533.4, %add1224.4 *)
adds discard_1054 v_add1551_4 v_add1533_4 v_add1224_4;
(*   %add1552.4 = add i32 %add1550.4, %add1533.4 *)
adds discard_1055 v_add1552_4 v_add1550_4 v_add1533_4;
(*   %194 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v194 arrayidx522_0;
(*   %shl906.5 = shl i32 %194, 25 *)
shls discard_1056 v_shl906_5 v194 25;
(*   %shr907.5 = lshr i32 %194, 7 *)
(* You may need to modify here *)
split v_shr907_5 tmp_to_be_used v194 7;
(*   %or908.5 = or i32 %shl906.5, %shr907.5 *)
(* You may need to modify here *)
or uint32 v_or908_5 v_shl906_5 v_shr907_5;
(*   %shl909.5 = shl i32 %194, 14 *)
shls discard_1057 v_shl909_5 v194 14;
(*   %shr910.5 = lshr i32 %194, 18 *)
(* You may need to modify here *)
split v_shr910_5 tmp_to_be_used v194 18;
(*   %or911.5 = or i32 %shl909.5, %shr910.5 *)
(* You may need to modify here *)
or uint32 v_or911_5 v_shl909_5 v_shr910_5;
(*   %shr913.5 = lshr i32 %194, 3 *)
(* You may need to modify here *)
split v_shr913_5 tmp_to_be_used v194 3;
(*   %xor912.5 = xor i32 %or911.5, %shr913.5 *)
(* You may need to modify here *)
xor uint32 v_xor912_5 v_or911_5 v_shr913_5;
(*   %xor914.5 = xor i32 %xor912.5, %or908.5 *)
(* You may need to modify here *)
xor uint32 v_xor914_5 v_xor912_5 v_or908_5;
(*   %195 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v195 arrayidx354_0;
(*   %shl919.5 = shl i32 %195, 15 *)
shls discard_1058 v_shl919_5 v195 15;
(*   %shr920.5 = lshr i32 %195, 17 *)
(* You may need to modify here *)
split v_shr920_5 tmp_to_be_used v195 17;
(*   %or921.5 = or i32 %shl919.5, %shr920.5 *)
(* You may need to modify here *)
or uint32 v_or921_5 v_shl919_5 v_shr920_5;
(*   %shl922.5 = shl i32 %195, 13 *)
shls discard_1059 v_shl922_5 v195 13;
(*   %shr923.5 = lshr i32 %195, 19 *)
(* You may need to modify here *)
split v_shr923_5 tmp_to_be_used v195 19;
(*   %or924.5 = or i32 %shl922.5, %shr923.5 *)
(* You may need to modify here *)
or uint32 v_or924_5 v_shl922_5 v_shr923_5;
(*   %shr926.5 = lshr i32 %195, 10 *)
(* You may need to modify here *)
split v_shr926_5 tmp_to_be_used v195 10;
(*   %xor925.5 = xor i32 %or924.5, %shr926.5 *)
(* You may need to modify here *)
xor uint32 v_xor925_5 v_or924_5 v_shr926_5;
(*   %xor927.5 = xor i32 %xor925.5, %or921.5 *)
(* You may need to modify here *)
xor uint32 v_xor927_5 v_xor925_5 v_or921_5;
(*   %196 = load i32, i32* %arrayidx74, align 4, !tbaa !4 *)
mov v196 arrayidx74_0;
(*   %add928.5 = add i32 %191, %196 *)
adds discard_1060 v_add928_5 v191 v196;
(*   %add933.5 = add i32 %add928.5, %xor914.5 *)
adds discard_1061 v_add933_5 v_add928_5 v_xor914_5;
(*   %add937.5 = add i32 %add933.5, %xor927.5 *)
adds discard_1062 v_add937_5 v_add933_5 v_xor927_5;
(*   store i32 %add937.5, i32* %arrayidx466, align 4, !tbaa !4 *)
mov arrayidx466_0 v_add937_5;
(*   %shl939.5 = shl i32 %add1551.4, 26 *)
shls discard_1063 v_shl939_5 v_add1551_4 26;
(*   %shr940.5 = lshr i32 %add1551.4, 6 *)
(* You may need to modify here *)
split v_shr940_5 tmp_to_be_used v_add1551_4 6;
(*   %or941.5 = or i32 %shl939.5, %shr940.5 *)
(* You may need to modify here *)
or uint32 v_or941_5 v_shl939_5 v_shr940_5;
(*   %shl942.5 = shl i32 %add1551.4, 21 *)
shls discard_1064 v_shl942_5 v_add1551_4 21;
(*   %shr943.5 = lshr i32 %add1551.4, 11 *)
(* You may need to modify here *)
split v_shr943_5 tmp_to_be_used v_add1551_4 11;
(*   %or944.5 = or i32 %shl942.5, %shr943.5 *)
(* You may need to modify here *)
or uint32 v_or944_5 v_shl942_5 v_shr943_5;
(*   %xor945.5 = xor i32 %or941.5, %or944.5 *)
(* You may need to modify here *)
xor uint32 v_xor945_5 v_or941_5 v_or944_5;
(*   %shl946.5 = shl i32 %add1551.4, 7 *)
shls discard_1065 v_shl946_5 v_add1551_4 7;
(*   %shr947.5 = lshr i32 %add1551.4, 25 *)
(* You may need to modify here *)
split v_shr947_5 tmp_to_be_used v_add1551_4 25;
(*   %or948.5 = or i32 %shl946.5, %shr947.5 *)
(* You may need to modify here *)
or uint32 v_or948_5 v_shl946_5 v_shr947_5;
(*   %xor949.5 = xor i32 %xor945.5, %or948.5 *)
(* You may need to modify here *)
xor uint32 v_xor949_5 v_xor945_5 v_or948_5;
(*   %add950.5 = add i32 %xor949.5, %add1305.4 *)
adds discard_1066 v_add950_5 v_xor949_5 v_add1305_4;
(*   %and951.5 = and i32 %add1469.4, %add1551.4 *)
(* You may need to modify here *)
and uint32 v_and951_5 v_add1469_4 v_add1551_4;
(*   %neg952.5 = xor i32 %add1551.4, -1 *)
(* You may need to modify here *)
xor uint32 v_neg952_5 v_add1551_4 (0xFFFFFFFF)@uint32;
(*   %and953.5 = and i32 %add1387.4, %neg952.5 *)
(* You may need to modify here *)
and uint32 v_and953_5 v_add1387_4 v_neg952_5;
(*   %xor954.5 = or i32 %and953.5, %and951.5 *)
(* You may need to modify here *)
or uint32 v_xor954_5 v_and953_5 v_and951_5;
(*   %add955.5 = add i32 %add950.5, %xor954.5 *)
adds discard_1067 v_add955_5 v_add950_5 v_xor954_5;
(*   %add958.5 = add i32 %add955.5, 1955562222 *)
adds discard_1068 v_add958_5 v_add955_5 (1955562222)@uint32;
(*   %add959.5 = add i32 %add958.5, %add937.5 *)
adds discard_1069 v_add959_5 v_add958_5 v_add937_5;
(*   %shl960.5 = shl i32 %add1552.4, 30 *)
shls discard_1070 v_shl960_5 v_add1552_4 30;
(*   %shr961.5 = lshr i32 %add1552.4, 2 *)
(* You may need to modify here *)
split v_shr961_5 tmp_to_be_used v_add1552_4 2;
(*   %or962.5 = or i32 %shl960.5, %shr961.5 *)
(* You may need to modify here *)
or uint32 v_or962_5 v_shl960_5 v_shr961_5;
(*   %shl963.5 = shl i32 %add1552.4, 19 *)
shls discard_1071 v_shl963_5 v_add1552_4 19;
(*   %shr964.5 = lshr i32 %add1552.4, 13 *)
(* You may need to modify here *)
split v_shr964_5 tmp_to_be_used v_add1552_4 13;
(*   %or965.5 = or i32 %shl963.5, %shr964.5 *)
(* You may need to modify here *)
or uint32 v_or965_5 v_shl963_5 v_shr964_5;
(*   %xor966.5 = xor i32 %or962.5, %or965.5 *)
(* You may need to modify here *)
xor uint32 v_xor966_5 v_or962_5 v_or965_5;
(*   %shl967.5 = shl i32 %add1552.4, 10 *)
shls discard_1072 v_shl967_5 v_add1552_4 10;
(*   %shr968.5 = lshr i32 %add1552.4, 22 *)
(* You may need to modify here *)
split v_shr968_5 tmp_to_be_used v_add1552_4 22;
(*   %or969.5 = or i32 %shl967.5, %shr968.5 *)
(* You may need to modify here *)
or uint32 v_or969_5 v_shl967_5 v_shr968_5;
(*   %xor970.5 = xor i32 %xor966.5, %or969.5 *)
(* You may need to modify here *)
xor uint32 v_xor970_5 v_xor966_5 v_or969_5;
(*   %and971.5 = and i32 %add1552.4, %add1470.4 *)
(* You may need to modify here *)
and uint32 v_and971_5 v_add1552_4 v_add1470_4;
(*   %and9722559.5 = xor i32 %add1552.4, %add1470.4 *)
(* You may need to modify here *)
xor uint32 v_and9722559_5 v_add1552_4 v_add1470_4;
(*   %xor973.5 = and i32 %and9722559.5, %add1388.4 *)
(* You may need to modify here *)
and uint32 v_xor973_5 v_and9722559_5 v_add1388_4;
(*   %xor975.5 = xor i32 %xor973.5, %and971.5 *)
(* You may need to modify here *)
xor uint32 v_xor975_5 v_xor973_5 v_and971_5;
(*   %add976.5 = add i32 %xor970.5, %xor975.5 *)
adds discard_1073 v_add976_5 v_xor970_5 v_xor975_5;
(*   %add977.5 = add i32 %add959.5, %add1306.4 *)
adds discard_1074 v_add977_5 v_add959_5 v_add1306_4;
(*   %add978.5 = add i32 %add976.5, %add959.5 *)
adds discard_1075 v_add978_5 v_add976_5 v_add959_5;
(*   %197 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v197 arrayidx578_0;
(*   %shl988.5 = shl i32 %197, 25 *)
shls discard_1076 v_shl988_5 v197 25;
(*   %shr989.5 = lshr i32 %197, 7 *)
(* You may need to modify here *)
split v_shr989_5 tmp_to_be_used v197 7;
(*   %or990.5 = or i32 %shl988.5, %shr989.5 *)
(* You may need to modify here *)
or uint32 v_or990_5 v_shl988_5 v_shr989_5;
(*   %shl991.5 = shl i32 %197, 14 *)
shls discard_1077 v_shl991_5 v197 14;
(*   %shr992.5 = lshr i32 %197, 18 *)
(* You may need to modify here *)
split v_shr992_5 tmp_to_be_used v197 18;
(*   %or993.5 = or i32 %shl991.5, %shr992.5 *)
(* You may need to modify here *)
or uint32 v_or993_5 v_shl991_5 v_shr992_5;
(*   %shr995.5 = lshr i32 %197, 3 *)
(* You may need to modify here *)
split v_shr995_5 tmp_to_be_used v197 3;
(*   %xor994.5 = xor i32 %or993.5, %shr995.5 *)
(* You may need to modify here *)
xor uint32 v_xor994_5 v_or993_5 v_shr995_5;
(*   %xor996.5 = xor i32 %xor994.5, %or990.5 *)
(* You may need to modify here *)
xor uint32 v_xor996_5 v_xor994_5 v_or990_5;
(*   %198 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v198 arrayidx410_0;
(*   %shl1001.5 = shl i32 %198, 15 *)
shls discard_1078 v_shl1001_5 v198 15;
(*   %shr1002.5 = lshr i32 %198, 17 *)
(* You may need to modify here *)
split v_shr1002_5 tmp_to_be_used v198 17;
(*   %or1003.5 = or i32 %shl1001.5, %shr1002.5 *)
(* You may need to modify here *)
or uint32 v_or1003_5 v_shl1001_5 v_shr1002_5;
(*   %shl1004.5 = shl i32 %198, 13 *)
shls discard_1079 v_shl1004_5 v198 13;
(*   %shr1005.5 = lshr i32 %198, 19 *)
(* You may need to modify here *)
split v_shr1005_5 tmp_to_be_used v198 19;
(*   %or1006.5 = or i32 %shl1004.5, %shr1005.5 *)
(* You may need to modify here *)
or uint32 v_or1006_5 v_shl1004_5 v_shr1005_5;
(*   %shr1008.5 = lshr i32 %198, 10 *)
(* You may need to modify here *)
split v_shr1008_5 tmp_to_be_used v198 10;
(*   %xor1007.5 = xor i32 %or1006.5, %shr1008.5 *)
(* You may need to modify here *)
xor uint32 v_xor1007_5 v_or1006_5 v_shr1008_5;
(*   %xor1009.5 = xor i32 %xor1007.5, %or1003.5 *)
(* You may need to modify here *)
xor uint32 v_xor1009_5 v_xor1007_5 v_or1003_5;
(*   %199 = load i32, i32* %arrayidx130, align 4, !tbaa !4 *)
mov v199 arrayidx130_0;
(*   %add1010.5 = add i32 %199, %194 *)
adds discard_1080 v_add1010_5 v199 v194;
(*   %add1015.5 = add i32 %add1010.5, %xor996.5 *)
adds discard_1081 v_add1015_5 v_add1010_5 v_xor996_5;
(*   %add1019.5 = add i32 %add1015.5, %xor1009.5 *)
adds discard_1082 v_add1019_5 v_add1015_5 v_xor1009_5;
(*   store i32 %add1019.5, i32* %arrayidx522, align 4, !tbaa !4 *)
mov arrayidx522_0 v_add1019_5;
(*   %shl1021.5 = shl i32 %add977.5, 26 *)
shls discard_1083 v_shl1021_5 v_add977_5 26;
(*   %shr1022.5 = lshr i32 %add977.5, 6 *)
(* You may need to modify here *)
split v_shr1022_5 tmp_to_be_used v_add977_5 6;
(*   %or1023.5 = or i32 %shl1021.5, %shr1022.5 *)
(* You may need to modify here *)
or uint32 v_or1023_5 v_shl1021_5 v_shr1022_5;
(*   %shl1024.5 = shl i32 %add977.5, 21 *)
shls discard_1084 v_shl1024_5 v_add977_5 21;
(*   %shr1025.5 = lshr i32 %add977.5, 11 *)
(* You may need to modify here *)
split v_shr1025_5 tmp_to_be_used v_add977_5 11;
(*   %or1026.5 = or i32 %shl1024.5, %shr1025.5 *)
(* You may need to modify here *)
or uint32 v_or1026_5 v_shl1024_5 v_shr1025_5;
(*   %xor1027.5 = xor i32 %or1023.5, %or1026.5 *)
(* You may need to modify here *)
xor uint32 v_xor1027_5 v_or1023_5 v_or1026_5;
(*   %shl1028.5 = shl i32 %add977.5, 7 *)
shls discard_1085 v_shl1028_5 v_add977_5 7;
(*   %shr1029.5 = lshr i32 %add977.5, 25 *)
(* You may need to modify here *)
split v_shr1029_5 tmp_to_be_used v_add977_5 25;
(*   %or1030.5 = or i32 %shl1028.5, %shr1029.5 *)
(* You may need to modify here *)
or uint32 v_or1030_5 v_shl1028_5 v_shr1029_5;
(*   %xor1031.5 = xor i32 %xor1027.5, %or1030.5 *)
(* You may need to modify here *)
xor uint32 v_xor1031_5 v_xor1027_5 v_or1030_5;
(*   %and1033.5 = and i32 %add977.5, %add1551.4 *)
(* You may need to modify here *)
and uint32 v_and1033_5 v_add977_5 v_add1551_4;
(*   %neg1034.5 = xor i32 %add977.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1034_5 v_add977_5 (0xFFFFFFFF)@uint32;
(*   %and1035.5 = and i32 %add1469.4, %neg1034.5 *)
(* You may need to modify here *)
and uint32 v_and1035_5 v_add1469_4 v_neg1034_5;
(*   %xor1036.5 = or i32 %and1033.5, %and1035.5 *)
(* You may need to modify here *)
or uint32 v_xor1036_5 v_and1033_5 v_and1035_5;
(*   %add1032.5 = add i32 %add1387.4, 2024104815 *)
adds discard_1086 v_add1032_5 v_add1387_4 (2024104815)@uint32;
(*   %add1037.5 = add i32 %add1032.5, %xor1036.5 *)
adds discard_1087 v_add1037_5 v_add1032_5 v_xor1036_5;
(*   %add1040.5 = add i32 %add1037.5, %xor1031.5 *)
adds discard_1088 v_add1040_5 v_add1037_5 v_xor1031_5;
(*   %add1041.5 = add i32 %add1040.5, %add1019.5 *)
adds discard_1089 v_add1041_5 v_add1040_5 v_add1019_5;
(*   %shl1042.5 = shl i32 %add978.5, 30 *)
shls discard_1090 v_shl1042_5 v_add978_5 30;
(*   %shr1043.5 = lshr i32 %add978.5, 2 *)
(* You may need to modify here *)
split v_shr1043_5 tmp_to_be_used v_add978_5 2;
(*   %or1044.5 = or i32 %shl1042.5, %shr1043.5 *)
(* You may need to modify here *)
or uint32 v_or1044_5 v_shl1042_5 v_shr1043_5;
(*   %shl1045.5 = shl i32 %add978.5, 19 *)
shls discard_1091 v_shl1045_5 v_add978_5 19;
(*   %shr1046.5 = lshr i32 %add978.5, 13 *)
(* You may need to modify here *)
split v_shr1046_5 tmp_to_be_used v_add978_5 13;
(*   %or1047.5 = or i32 %shl1045.5, %shr1046.5 *)
(* You may need to modify here *)
or uint32 v_or1047_5 v_shl1045_5 v_shr1046_5;
(*   %xor1048.5 = xor i32 %or1044.5, %or1047.5 *)
(* You may need to modify here *)
xor uint32 v_xor1048_5 v_or1044_5 v_or1047_5;
(*   %shl1049.5 = shl i32 %add978.5, 10 *)
shls discard_1092 v_shl1049_5 v_add978_5 10;
(*   %shr1050.5 = lshr i32 %add978.5, 22 *)
(* You may need to modify here *)
split v_shr1050_5 tmp_to_be_used v_add978_5 22;
(*   %or1051.5 = or i32 %shl1049.5, %shr1050.5 *)
(* You may need to modify here *)
or uint32 v_or1051_5 v_shl1049_5 v_shr1050_5;
(*   %xor1052.5 = xor i32 %xor1048.5, %or1051.5 *)
(* You may need to modify here *)
xor uint32 v_xor1052_5 v_xor1048_5 v_or1051_5;
(*   %and1053.5 = and i32 %add978.5, %add1552.4 *)
(* You may need to modify here *)
and uint32 v_and1053_5 v_add978_5 v_add1552_4;
(*   %and1054.5 = and i32 %add978.5, %add1470.4 *)
(* You may need to modify here *)
and uint32 v_and1054_5 v_add978_5 v_add1470_4;
(*   %xor1055.5 = xor i32 %and1054.5, %and971.5 *)
(* You may need to modify here *)
xor uint32 v_xor1055_5 v_and1054_5 v_and971_5;
(*   %xor1057.5 = xor i32 %xor1055.5, %and1053.5 *)
(* You may need to modify here *)
xor uint32 v_xor1057_5 v_xor1055_5 v_and1053_5;
(*   %add1058.5 = add i32 %xor1052.5, %xor1057.5 *)
adds discard_1093 v_add1058_5 v_xor1052_5 v_xor1057_5;
(*   %add1059.5 = add i32 %add1041.5, %add1388.4 *)
adds discard_1094 v_add1059_5 v_add1041_5 v_add1388_4;
(*   %add1060.5 = add i32 %add1058.5, %add1041.5 *)
adds discard_1095 v_add1060_5 v_add1058_5 v_add1041_5;
(*   %200 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v200 arrayidx634_0;
(*   %shl1070.5 = shl i32 %200, 25 *)
shls discard_1096 v_shl1070_5 v200 25;
(*   %shr1071.5 = lshr i32 %200, 7 *)
(* You may need to modify here *)
split v_shr1071_5 tmp_to_be_used v200 7;
(*   %or1072.5 = or i32 %shl1070.5, %shr1071.5 *)
(* You may need to modify here *)
or uint32 v_or1072_5 v_shl1070_5 v_shr1071_5;
(*   %shl1073.5 = shl i32 %200, 14 *)
shls discard_1097 v_shl1073_5 v200 14;
(*   %shr1074.5 = lshr i32 %200, 18 *)
(* You may need to modify here *)
split v_shr1074_5 tmp_to_be_used v200 18;
(*   %or1075.5 = or i32 %shl1073.5, %shr1074.5 *)
(* You may need to modify here *)
or uint32 v_or1075_5 v_shl1073_5 v_shr1074_5;
(*   %shr1077.5 = lshr i32 %200, 3 *)
(* You may need to modify here *)
split v_shr1077_5 tmp_to_be_used v200 3;
(*   %xor1076.5 = xor i32 %or1075.5, %shr1077.5 *)
(* You may need to modify here *)
xor uint32 v_xor1076_5 v_or1075_5 v_shr1077_5;
(*   %xor1078.5 = xor i32 %xor1076.5, %or1072.5 *)
(* You may need to modify here *)
xor uint32 v_xor1078_5 v_xor1076_5 v_or1072_5;
(*   %201 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v201 arrayidx466_0;
(*   %shl1083.5 = shl i32 %201, 15 *)
shls discard_1098 v_shl1083_5 v201 15;
(*   %shr1084.5 = lshr i32 %201, 17 *)
(* You may need to modify here *)
split v_shr1084_5 tmp_to_be_used v201 17;
(*   %or1085.5 = or i32 %shl1083.5, %shr1084.5 *)
(* You may need to modify here *)
or uint32 v_or1085_5 v_shl1083_5 v_shr1084_5;
(*   %shl1086.5 = shl i32 %201, 13 *)
shls discard_1099 v_shl1086_5 v201 13;
(*   %shr1087.5 = lshr i32 %201, 19 *)
(* You may need to modify here *)
split v_shr1087_5 tmp_to_be_used v201 19;
(*   %or1088.5 = or i32 %shl1086.5, %shr1087.5 *)
(* You may need to modify here *)
or uint32 v_or1088_5 v_shl1086_5 v_shr1087_5;
(*   %shr1090.5 = lshr i32 %201, 10 *)
(* You may need to modify here *)
split v_shr1090_5 tmp_to_be_used v201 10;
(*   %xor1089.5 = xor i32 %or1088.5, %shr1090.5 *)
(* You may need to modify here *)
xor uint32 v_xor1089_5 v_or1088_5 v_shr1090_5;
(*   %xor1091.5 = xor i32 %xor1089.5, %or1085.5 *)
(* You may need to modify here *)
xor uint32 v_xor1091_5 v_xor1089_5 v_or1085_5;
(*   %202 = load i32, i32* %arrayidx186, align 4, !tbaa !4 *)
mov v202 arrayidx186_0;
(*   %add1092.5 = add i32 %197, %202 *)
adds discard_1100 v_add1092_5 v197 v202;
(*   %add1097.5 = add i32 %add1092.5, %xor1078.5 *)
adds discard_1101 v_add1097_5 v_add1092_5 v_xor1078_5;
(*   %add1101.5 = add i32 %add1097.5, %xor1091.5 *)
adds discard_1102 v_add1101_5 v_add1097_5 v_xor1091_5;
(*   store i32 %add1101.5, i32* %arrayidx578, align 4, !tbaa !4 *)
mov arrayidx578_0 v_add1101_5;
(*   %shl1103.5 = shl i32 %add1059.5, 26 *)
shls discard_1103 v_shl1103_5 v_add1059_5 26;
(*   %shr1104.5 = lshr i32 %add1059.5, 6 *)
(* You may need to modify here *)
split v_shr1104_5 tmp_to_be_used v_add1059_5 6;
(*   %or1105.5 = or i32 %shl1103.5, %shr1104.5 *)
(* You may need to modify here *)
or uint32 v_or1105_5 v_shl1103_5 v_shr1104_5;
(*   %shl1106.5 = shl i32 %add1059.5, 21 *)
shls discard_1104 v_shl1106_5 v_add1059_5 21;
(*   %shr1107.5 = lshr i32 %add1059.5, 11 *)
(* You may need to modify here *)
split v_shr1107_5 tmp_to_be_used v_add1059_5 11;
(*   %or1108.5 = or i32 %shl1106.5, %shr1107.5 *)
(* You may need to modify here *)
or uint32 v_or1108_5 v_shl1106_5 v_shr1107_5;
(*   %xor1109.5 = xor i32 %or1105.5, %or1108.5 *)
(* You may need to modify here *)
xor uint32 v_xor1109_5 v_or1105_5 v_or1108_5;
(*   %shl1110.5 = shl i32 %add1059.5, 7 *)
shls discard_1105 v_shl1110_5 v_add1059_5 7;
(*   %shr1111.5 = lshr i32 %add1059.5, 25 *)
(* You may need to modify here *)
split v_shr1111_5 tmp_to_be_used v_add1059_5 25;
(*   %or1112.5 = or i32 %shl1110.5, %shr1111.5 *)
(* You may need to modify here *)
or uint32 v_or1112_5 v_shl1110_5 v_shr1111_5;
(*   %xor1113.5 = xor i32 %xor1109.5, %or1112.5 *)
(* You may need to modify here *)
xor uint32 v_xor1113_5 v_xor1109_5 v_or1112_5;
(*   %and1115.5 = and i32 %add1059.5, %add977.5 *)
(* You may need to modify here *)
and uint32 v_and1115_5 v_add1059_5 v_add977_5;
(*   %neg1116.5 = xor i32 %add1059.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1116_5 v_add1059_5 (0xFFFFFFFF)@uint32;
(*   %and1117.5 = and i32 %add1551.4, %neg1116.5 *)
(* You may need to modify here *)
and uint32 v_and1117_5 v_add1551_4 v_neg1116_5;
(*   %xor1118.5 = or i32 %and1115.5, %and1117.5 *)
(* You may need to modify here *)
or uint32 v_xor1118_5 v_and1115_5 v_and1117_5;
(*   %add1114.5 = add i32 %add1469.4, -2067236844 *)
adds discard_1106 v_add1114_5 v_add1469_4 (2227730452)@uint32;
(*   %add1119.5 = add i32 %add1114.5, %add1101.5 *)
adds discard_1107 v_add1119_5 v_add1114_5 v_add1101_5;
(*   %add1122.5 = add i32 %add1119.5, %xor1118.5 *)
adds discard_1108 v_add1122_5 v_add1119_5 v_xor1118_5;
(*   %add1123.5 = add i32 %add1122.5, %xor1113.5 *)
adds discard_1109 v_add1123_5 v_add1122_5 v_xor1113_5;
(*   %shl1124.5 = shl i32 %add1060.5, 30 *)
shls discard_1110 v_shl1124_5 v_add1060_5 30;
(*   %shr1125.5 = lshr i32 %add1060.5, 2 *)
(* You may need to modify here *)
split v_shr1125_5 tmp_to_be_used v_add1060_5 2;
(*   %or1126.5 = or i32 %shl1124.5, %shr1125.5 *)
(* You may need to modify here *)
or uint32 v_or1126_5 v_shl1124_5 v_shr1125_5;
(*   %shl1127.5 = shl i32 %add1060.5, 19 *)
shls discard_1111 v_shl1127_5 v_add1060_5 19;
(*   %shr1128.5 = lshr i32 %add1060.5, 13 *)
(* You may need to modify here *)
split v_shr1128_5 tmp_to_be_used v_add1060_5 13;
(*   %or1129.5 = or i32 %shl1127.5, %shr1128.5 *)
(* You may need to modify here *)
or uint32 v_or1129_5 v_shl1127_5 v_shr1128_5;
(*   %xor1130.5 = xor i32 %or1126.5, %or1129.5 *)
(* You may need to modify here *)
xor uint32 v_xor1130_5 v_or1126_5 v_or1129_5;
(*   %shl1131.5 = shl i32 %add1060.5, 10 *)
shls discard_1112 v_shl1131_5 v_add1060_5 10;
(*   %shr1132.5 = lshr i32 %add1060.5, 22 *)
(* You may need to modify here *)
split v_shr1132_5 tmp_to_be_used v_add1060_5 22;
(*   %or1133.5 = or i32 %shl1131.5, %shr1132.5 *)
(* You may need to modify here *)
or uint32 v_or1133_5 v_shl1131_5 v_shr1132_5;
(*   %xor1134.5 = xor i32 %xor1130.5, %or1133.5 *)
(* You may need to modify here *)
xor uint32 v_xor1134_5 v_xor1130_5 v_or1133_5;
(*   %and1135.5 = and i32 %add1060.5, %add978.5 *)
(* You may need to modify here *)
and uint32 v_and1135_5 v_add1060_5 v_add978_5;
(*   %and1136.5 = and i32 %add1060.5, %add1552.4 *)
(* You may need to modify here *)
and uint32 v_and1136_5 v_add1060_5 v_add1552_4;
(*   %xor1137.5 = xor i32 %and1136.5, %and1053.5 *)
(* You may need to modify here *)
xor uint32 v_xor1137_5 v_and1136_5 v_and1053_5;
(*   %xor1139.5 = xor i32 %xor1137.5, %and1135.5 *)
(* You may need to modify here *)
xor uint32 v_xor1139_5 v_xor1137_5 v_and1135_5;
(*   %add1140.5 = add i32 %xor1134.5, %xor1139.5 *)
adds discard_1113 v_add1140_5 v_xor1134_5 v_xor1139_5;
(*   %add1141.5 = add i32 %add1123.5, %add1470.4 *)
adds discard_1114 v_add1141_5 v_add1123_5 v_add1470_4;
(*   %add1142.5 = add i32 %add1140.5, %add1123.5 *)
adds discard_1115 v_add1142_5 v_add1140_5 v_add1123_5;
(*   %203 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v203 arrayidx690_0;
(*   %shl1152.5 = shl i32 %203, 25 *)
shls discard_1116 v_shl1152_5 v203 25;
(*   %shr1153.5 = lshr i32 %203, 7 *)
(* You may need to modify here *)
split v_shr1153_5 tmp_to_be_used v203 7;
(*   %or1154.5 = or i32 %shl1152.5, %shr1153.5 *)
(* You may need to modify here *)
or uint32 v_or1154_5 v_shl1152_5 v_shr1153_5;
(*   %shl1155.5 = shl i32 %203, 14 *)
shls discard_1117 v_shl1155_5 v203 14;
(*   %shr1156.5 = lshr i32 %203, 18 *)
(* You may need to modify here *)
split v_shr1156_5 tmp_to_be_used v203 18;
(*   %or1157.5 = or i32 %shl1155.5, %shr1156.5 *)
(* You may need to modify here *)
or uint32 v_or1157_5 v_shl1155_5 v_shr1156_5;
(*   %shr1159.5 = lshr i32 %203, 3 *)
(* You may need to modify here *)
split v_shr1159_5 tmp_to_be_used v203 3;
(*   %xor1158.5 = xor i32 %or1157.5, %shr1159.5 *)
(* You may need to modify here *)
xor uint32 v_xor1158_5 v_or1157_5 v_shr1159_5;
(*   %xor1160.5 = xor i32 %xor1158.5, %or1154.5 *)
(* You may need to modify here *)
xor uint32 v_xor1160_5 v_xor1158_5 v_or1154_5;
(*   %204 = load i32, i32* %arrayidx522, align 4, !tbaa !4 *)
mov v204 arrayidx522_0;
(*   %shl1165.5 = shl i32 %204, 15 *)
shls discard_1118 v_shl1165_5 v204 15;
(*   %shr1166.5 = lshr i32 %204, 17 *)
(* You may need to modify here *)
split v_shr1166_5 tmp_to_be_used v204 17;
(*   %or1167.5 = or i32 %shl1165.5, %shr1166.5 *)
(* You may need to modify here *)
or uint32 v_or1167_5 v_shl1165_5 v_shr1166_5;
(*   %shl1168.5 = shl i32 %204, 13 *)
shls discard_1119 v_shl1168_5 v204 13;
(*   %shr1169.5 = lshr i32 %204, 19 *)
(* You may need to modify here *)
split v_shr1169_5 tmp_to_be_used v204 19;
(*   %or1170.5 = or i32 %shl1168.5, %shr1169.5 *)
(* You may need to modify here *)
or uint32 v_or1170_5 v_shl1168_5 v_shr1169_5;
(*   %shr1172.5 = lshr i32 %204, 10 *)
(* You may need to modify here *)
split v_shr1172_5 tmp_to_be_used v204 10;
(*   %xor1171.5 = xor i32 %or1170.5, %shr1172.5 *)
(* You may need to modify here *)
xor uint32 v_xor1171_5 v_or1170_5 v_shr1172_5;
(*   %xor1173.5 = xor i32 %xor1171.5, %or1167.5 *)
(* You may need to modify here *)
xor uint32 v_xor1173_5 v_xor1171_5 v_or1167_5;
(*   %205 = load i32, i32* %arrayidx242, align 4, !tbaa !4 *)
mov v205 arrayidx242_0;
(*   %add1174.5 = add i32 %200, %205 *)
adds discard_1120 v_add1174_5 v200 v205;
(*   %add1179.5 = add i32 %add1174.5, %xor1160.5 *)
adds discard_1121 v_add1179_5 v_add1174_5 v_xor1160_5;
(*   %add1183.5 = add i32 %add1179.5, %xor1173.5 *)
adds discard_1122 v_add1183_5 v_add1179_5 v_xor1173_5;
(*   store i32 %add1183.5, i32* %arrayidx634, align 4, !tbaa !4 *)
mov arrayidx634_0 v_add1183_5;
(*   %shl1185.5 = shl i32 %add1141.5, 26 *)
shls discard_1123 v_shl1185_5 v_add1141_5 26;
(*   %shr1186.5 = lshr i32 %add1141.5, 6 *)
(* You may need to modify here *)
split v_shr1186_5 tmp_to_be_used v_add1141_5 6;
(*   %or1187.5 = or i32 %shl1185.5, %shr1186.5 *)
(* You may need to modify here *)
or uint32 v_or1187_5 v_shl1185_5 v_shr1186_5;
(*   %shl1188.5 = shl i32 %add1141.5, 21 *)
shls discard_1124 v_shl1188_5 v_add1141_5 21;
(*   %shr1189.5 = lshr i32 %add1141.5, 11 *)
(* You may need to modify here *)
split v_shr1189_5 tmp_to_be_used v_add1141_5 11;
(*   %or1190.5 = or i32 %shl1188.5, %shr1189.5 *)
(* You may need to modify here *)
or uint32 v_or1190_5 v_shl1188_5 v_shr1189_5;
(*   %xor1191.5 = xor i32 %or1187.5, %or1190.5 *)
(* You may need to modify here *)
xor uint32 v_xor1191_5 v_or1187_5 v_or1190_5;
(*   %shl1192.5 = shl i32 %add1141.5, 7 *)
shls discard_1125 v_shl1192_5 v_add1141_5 7;
(*   %shr1193.5 = lshr i32 %add1141.5, 25 *)
(* You may need to modify here *)
split v_shr1193_5 tmp_to_be_used v_add1141_5 25;
(*   %or1194.5 = or i32 %shl1192.5, %shr1193.5 *)
(* You may need to modify here *)
or uint32 v_or1194_5 v_shl1192_5 v_shr1193_5;
(*   %xor1195.5 = xor i32 %xor1191.5, %or1194.5 *)
(* You may need to modify here *)
xor uint32 v_xor1195_5 v_xor1191_5 v_or1194_5;
(*   %and1197.5 = and i32 %add1141.5, %add1059.5 *)
(* You may need to modify here *)
and uint32 v_and1197_5 v_add1141_5 v_add1059_5;
(*   %neg1198.5 = xor i32 %add1141.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1198_5 v_add1141_5 (0xFFFFFFFF)@uint32;
(*   %and1199.5 = and i32 %add977.5, %neg1198.5 *)
(* You may need to modify here *)
and uint32 v_and1199_5 v_add977_5 v_neg1198_5;
(*   %xor1200.5 = or i32 %and1197.5, %and1199.5 *)
(* You may need to modify here *)
or uint32 v_xor1200_5 v_and1197_5 v_and1199_5;
(*   %add1196.5 = add i32 %add1551.4, -1933114872 *)
adds discard_1126 v_add1196_5 v_add1551_4 (2361852424)@uint32;
(*   %add1201.5 = add i32 %add1196.5, %add1183.5 *)
adds discard_1127 v_add1201_5 v_add1196_5 v_add1183_5;
(*   %add1204.5 = add i32 %add1201.5, %xor1200.5 *)
adds discard_1128 v_add1204_5 v_add1201_5 v_xor1200_5;
(*   %add1205.5 = add i32 %add1204.5, %xor1195.5 *)
adds discard_1129 v_add1205_5 v_add1204_5 v_xor1195_5;
(*   %shl1206.5 = shl i32 %add1142.5, 30 *)
shls discard_1130 v_shl1206_5 v_add1142_5 30;
(*   %shr1207.5 = lshr i32 %add1142.5, 2 *)
(* You may need to modify here *)
split v_shr1207_5 tmp_to_be_used v_add1142_5 2;
(*   %or1208.5 = or i32 %shl1206.5, %shr1207.5 *)
(* You may need to modify here *)
or uint32 v_or1208_5 v_shl1206_5 v_shr1207_5;
(*   %shl1209.5 = shl i32 %add1142.5, 19 *)
shls discard_1131 v_shl1209_5 v_add1142_5 19;
(*   %shr1210.5 = lshr i32 %add1142.5, 13 *)
(* You may need to modify here *)
split v_shr1210_5 tmp_to_be_used v_add1142_5 13;
(*   %or1211.5 = or i32 %shl1209.5, %shr1210.5 *)
(* You may need to modify here *)
or uint32 v_or1211_5 v_shl1209_5 v_shr1210_5;
(*   %xor1212.5 = xor i32 %or1208.5, %or1211.5 *)
(* You may need to modify here *)
xor uint32 v_xor1212_5 v_or1208_5 v_or1211_5;
(*   %shl1213.5 = shl i32 %add1142.5, 10 *)
shls discard_1132 v_shl1213_5 v_add1142_5 10;
(*   %shr1214.5 = lshr i32 %add1142.5, 22 *)
(* You may need to modify here *)
split v_shr1214_5 tmp_to_be_used v_add1142_5 22;
(*   %or1215.5 = or i32 %shl1213.5, %shr1214.5 *)
(* You may need to modify here *)
or uint32 v_or1215_5 v_shl1213_5 v_shr1214_5;
(*   %xor1216.5 = xor i32 %xor1212.5, %or1215.5 *)
(* You may need to modify here *)
xor uint32 v_xor1216_5 v_xor1212_5 v_or1215_5;
(*   %and1217.5 = and i32 %add1142.5, %add1060.5 *)
(* You may need to modify here *)
and uint32 v_and1217_5 v_add1142_5 v_add1060_5;
(*   %and1218.5 = and i32 %add1142.5, %add978.5 *)
(* You may need to modify here *)
and uint32 v_and1218_5 v_add1142_5 v_add978_5;
(*   %xor1219.5 = xor i32 %and1218.5, %and1135.5 *)
(* You may need to modify here *)
xor uint32 v_xor1219_5 v_and1218_5 v_and1135_5;
(*   %xor1221.5 = xor i32 %xor1219.5, %and1217.5 *)
(* You may need to modify here *)
xor uint32 v_xor1221_5 v_xor1219_5 v_and1217_5;
(*   %add1222.5 = add i32 %xor1216.5, %xor1221.5 *)
adds discard_1133 v_add1222_5 v_xor1216_5 v_xor1221_5;
(*   %add1223.5 = add i32 %add1205.5, %add1552.4 *)
adds discard_1134 v_add1223_5 v_add1205_5 v_add1552_4;
(*   %add1224.5 = add i32 %add1222.5, %add1205.5 *)
adds discard_1135 v_add1224_5 v_add1222_5 v_add1205_5;
(*   %206 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v206 arrayidx746_0;
(*   %shl1234.5 = shl i32 %206, 25 *)
shls discard_1136 v_shl1234_5 v206 25;
(*   %shr1235.5 = lshr i32 %206, 7 *)
(* You may need to modify here *)
split v_shr1235_5 tmp_to_be_used v206 7;
(*   %or1236.5 = or i32 %shl1234.5, %shr1235.5 *)
(* You may need to modify here *)
or uint32 v_or1236_5 v_shl1234_5 v_shr1235_5;
(*   %shl1237.5 = shl i32 %206, 14 *)
shls discard_1137 v_shl1237_5 v206 14;
(*   %shr1238.5 = lshr i32 %206, 18 *)
(* You may need to modify here *)
split v_shr1238_5 tmp_to_be_used v206 18;
(*   %or1239.5 = or i32 %shl1237.5, %shr1238.5 *)
(* You may need to modify here *)
or uint32 v_or1239_5 v_shl1237_5 v_shr1238_5;
(*   %shr1241.5 = lshr i32 %206, 3 *)
(* You may need to modify here *)
split v_shr1241_5 tmp_to_be_used v206 3;
(*   %xor1240.5 = xor i32 %or1239.5, %shr1241.5 *)
(* You may need to modify here *)
xor uint32 v_xor1240_5 v_or1239_5 v_shr1241_5;
(*   %xor1242.5 = xor i32 %xor1240.5, %or1236.5 *)
(* You may need to modify here *)
xor uint32 v_xor1242_5 v_xor1240_5 v_or1236_5;
(*   %207 = load i32, i32* %arrayidx578, align 4, !tbaa !4 *)
mov v207 arrayidx578_0;
(*   %shl1247.5 = shl i32 %207, 15 *)
shls discard_1138 v_shl1247_5 v207 15;
(*   %shr1248.5 = lshr i32 %207, 17 *)
(* You may need to modify here *)
split v_shr1248_5 tmp_to_be_used v207 17;
(*   %or1249.5 = or i32 %shl1247.5, %shr1248.5 *)
(* You may need to modify here *)
or uint32 v_or1249_5 v_shl1247_5 v_shr1248_5;
(*   %shl1250.5 = shl i32 %207, 13 *)
shls discard_1139 v_shl1250_5 v207 13;
(*   %shr1251.5 = lshr i32 %207, 19 *)
(* You may need to modify here *)
split v_shr1251_5 tmp_to_be_used v207 19;
(*   %or1252.5 = or i32 %shl1250.5, %shr1251.5 *)
(* You may need to modify here *)
or uint32 v_or1252_5 v_shl1250_5 v_shr1251_5;
(*   %shr1254.5 = lshr i32 %207, 10 *)
(* You may need to modify here *)
split v_shr1254_5 tmp_to_be_used v207 10;
(*   %xor1253.5 = xor i32 %or1252.5, %shr1254.5 *)
(* You may need to modify here *)
xor uint32 v_xor1253_5 v_or1252_5 v_shr1254_5;
(*   %xor1255.5 = xor i32 %xor1253.5, %or1249.5 *)
(* You may need to modify here *)
xor uint32 v_xor1255_5 v_xor1253_5 v_or1249_5;
(*   %208 = load i32, i32* %arrayidx298, align 4, !tbaa !4 *)
mov v208 arrayidx298_0;
(*   %add1256.5 = add i32 %203, %208 *)
adds discard_1140 v_add1256_5 v203 v208;
(*   %add1261.5 = add i32 %add1256.5, %xor1242.5 *)
adds discard_1141 v_add1261_5 v_add1256_5 v_xor1242_5;
(*   %add1265.5 = add i32 %add1261.5, %xor1255.5 *)
adds discard_1142 v_add1265_5 v_add1261_5 v_xor1255_5;
(*   store i32 %add1265.5, i32* %arrayidx690, align 4, !tbaa !4 *)
mov arrayidx690_0 v_add1265_5;
(*   %shl1267.5 = shl i32 %add1223.5, 26 *)
shls discard_1143 v_shl1267_5 v_add1223_5 26;
(*   %shr1268.5 = lshr i32 %add1223.5, 6 *)
(* You may need to modify here *)
split v_shr1268_5 tmp_to_be_used v_add1223_5 6;
(*   %or1269.5 = or i32 %shl1267.5, %shr1268.5 *)
(* You may need to modify here *)
or uint32 v_or1269_5 v_shl1267_5 v_shr1268_5;
(*   %shl1270.5 = shl i32 %add1223.5, 21 *)
shls discard_1144 v_shl1270_5 v_add1223_5 21;
(*   %shr1271.5 = lshr i32 %add1223.5, 11 *)
(* You may need to modify here *)
split v_shr1271_5 tmp_to_be_used v_add1223_5 11;
(*   %or1272.5 = or i32 %shl1270.5, %shr1271.5 *)
(* You may need to modify here *)
or uint32 v_or1272_5 v_shl1270_5 v_shr1271_5;
(*   %xor1273.5 = xor i32 %or1269.5, %or1272.5 *)
(* You may need to modify here *)
xor uint32 v_xor1273_5 v_or1269_5 v_or1272_5;
(*   %shl1274.5 = shl i32 %add1223.5, 7 *)
shls discard_1145 v_shl1274_5 v_add1223_5 7;
(*   %shr1275.5 = lshr i32 %add1223.5, 25 *)
(* You may need to modify here *)
split v_shr1275_5 tmp_to_be_used v_add1223_5 25;
(*   %or1276.5 = or i32 %shl1274.5, %shr1275.5 *)
(* You may need to modify here *)
or uint32 v_or1276_5 v_shl1274_5 v_shr1275_5;
(*   %xor1277.5 = xor i32 %xor1273.5, %or1276.5 *)
(* You may need to modify here *)
xor uint32 v_xor1277_5 v_xor1273_5 v_or1276_5;
(*   %and1279.5 = and i32 %add1223.5, %add1141.5 *)
(* You may need to modify here *)
and uint32 v_and1279_5 v_add1223_5 v_add1141_5;
(*   %neg1280.5 = xor i32 %add1223.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1280_5 v_add1223_5 (0xFFFFFFFF)@uint32;
(*   %and1281.5 = and i32 %add1059.5, %neg1280.5 *)
(* You may need to modify here *)
and uint32 v_and1281_5 v_add1059_5 v_neg1280_5;
(*   %xor1282.5 = or i32 %and1279.5, %and1281.5 *)
(* You may need to modify here *)
or uint32 v_xor1282_5 v_and1279_5 v_and1281_5;
(*   %add1278.5 = add i32 %add977.5, -1866530822 *)
adds discard_1146 v_add1278_5 v_add977_5 (2428436474)@uint32;
(*   %add1283.5 = add i32 %add1278.5, %add1265.5 *)
adds discard_1147 v_add1283_5 v_add1278_5 v_add1265_5;
(*   %add1286.5 = add i32 %add1283.5, %xor1282.5 *)
adds discard_1148 v_add1286_5 v_add1283_5 v_xor1282_5;
(*   %add1287.5 = add i32 %add1286.5, %xor1277.5 *)
adds discard_1149 v_add1287_5 v_add1286_5 v_xor1277_5;
(*   %shl1288.5 = shl i32 %add1224.5, 30 *)
shls discard_1150 v_shl1288_5 v_add1224_5 30;
(*   %shr1289.5 = lshr i32 %add1224.5, 2 *)
(* You may need to modify here *)
split v_shr1289_5 tmp_to_be_used v_add1224_5 2;
(*   %or1290.5 = or i32 %shl1288.5, %shr1289.5 *)
(* You may need to modify here *)
or uint32 v_or1290_5 v_shl1288_5 v_shr1289_5;
(*   %shl1291.5 = shl i32 %add1224.5, 19 *)
shls discard_1151 v_shl1291_5 v_add1224_5 19;
(*   %shr1292.5 = lshr i32 %add1224.5, 13 *)
(* You may need to modify here *)
split v_shr1292_5 tmp_to_be_used v_add1224_5 13;
(*   %or1293.5 = or i32 %shl1291.5, %shr1292.5 *)
(* You may need to modify here *)
or uint32 v_or1293_5 v_shl1291_5 v_shr1292_5;
(*   %xor1294.5 = xor i32 %or1290.5, %or1293.5 *)
(* You may need to modify here *)
xor uint32 v_xor1294_5 v_or1290_5 v_or1293_5;
(*   %shl1295.5 = shl i32 %add1224.5, 10 *)
shls discard_1152 v_shl1295_5 v_add1224_5 10;
(*   %shr1296.5 = lshr i32 %add1224.5, 22 *)
(* You may need to modify here *)
split v_shr1296_5 tmp_to_be_used v_add1224_5 22;
(*   %or1297.5 = or i32 %shl1295.5, %shr1296.5 *)
(* You may need to modify here *)
or uint32 v_or1297_5 v_shl1295_5 v_shr1296_5;
(*   %xor1298.5 = xor i32 %xor1294.5, %or1297.5 *)
(* You may need to modify here *)
xor uint32 v_xor1298_5 v_xor1294_5 v_or1297_5;
(*   %and1299.5 = and i32 %add1224.5, %add1142.5 *)
(* You may need to modify here *)
and uint32 v_and1299_5 v_add1224_5 v_add1142_5;
(*   %and1300.5 = and i32 %add1224.5, %add1060.5 *)
(* You may need to modify here *)
and uint32 v_and1300_5 v_add1224_5 v_add1060_5;
(*   %xor1301.5 = xor i32 %and1300.5, %and1217.5 *)
(* You may need to modify here *)
xor uint32 v_xor1301_5 v_and1300_5 v_and1217_5;
(*   %xor1303.5 = xor i32 %xor1301.5, %and1299.5 *)
(* You may need to modify here *)
xor uint32 v_xor1303_5 v_xor1301_5 v_and1299_5;
(*   %add1304.5 = add i32 %xor1298.5, %xor1303.5 *)
adds discard_1153 v_add1304_5 v_xor1298_5 v_xor1303_5;
(*   %add1305.5 = add i32 %add1287.5, %add978.5 *)
adds discard_1154 v_add1305_5 v_add1287_5 v_add978_5;
(*   %add1306.5 = add i32 %add1304.5, %add1287.5 *)
adds discard_1155 v_add1306_5 v_add1304_5 v_add1287_5;
(*   %209 = load i32, i32* %arrayidx802, align 4, !tbaa !4 *)
mov v209 arrayidx802_0;
(*   %shl1316.5 = shl i32 %209, 25 *)
shls discard_1156 v_shl1316_5 v209 25;
(*   %shr1317.5 = lshr i32 %209, 7 *)
(* You may need to modify here *)
split v_shr1317_5 tmp_to_be_used v209 7;
(*   %or1318.5 = or i32 %shl1316.5, %shr1317.5 *)
(* You may need to modify here *)
or uint32 v_or1318_5 v_shl1316_5 v_shr1317_5;
(*   %shl1319.5 = shl i32 %209, 14 *)
shls discard_1157 v_shl1319_5 v209 14;
(*   %shr1320.5 = lshr i32 %209, 18 *)
(* You may need to modify here *)
split v_shr1320_5 tmp_to_be_used v209 18;
(*   %or1321.5 = or i32 %shl1319.5, %shr1320.5 *)
(* You may need to modify here *)
or uint32 v_or1321_5 v_shl1319_5 v_shr1320_5;
(*   %shr1323.5 = lshr i32 %209, 3 *)
(* You may need to modify here *)
split v_shr1323_5 tmp_to_be_used v209 3;
(*   %xor1322.5 = xor i32 %or1321.5, %shr1323.5 *)
(* You may need to modify here *)
xor uint32 v_xor1322_5 v_or1321_5 v_shr1323_5;
(*   %xor1324.5 = xor i32 %xor1322.5, %or1318.5 *)
(* You may need to modify here *)
xor uint32 v_xor1324_5 v_xor1322_5 v_or1318_5;
(*   %210 = load i32, i32* %arrayidx634, align 4, !tbaa !4 *)
mov v210 arrayidx634_0;
(*   %shl1329.5 = shl i32 %210, 15 *)
shls discard_1158 v_shl1329_5 v210 15;
(*   %shr1330.5 = lshr i32 %210, 17 *)
(* You may need to modify here *)
split v_shr1330_5 tmp_to_be_used v210 17;
(*   %or1331.5 = or i32 %shl1329.5, %shr1330.5 *)
(* You may need to modify here *)
or uint32 v_or1331_5 v_shl1329_5 v_shr1330_5;
(*   %shl1332.5 = shl i32 %210, 13 *)
shls discard_1159 v_shl1332_5 v210 13;
(*   %shr1333.5 = lshr i32 %210, 19 *)
(* You may need to modify here *)
split v_shr1333_5 tmp_to_be_used v210 19;
(*   %or1334.5 = or i32 %shl1332.5, %shr1333.5 *)
(* You may need to modify here *)
or uint32 v_or1334_5 v_shl1332_5 v_shr1333_5;
(*   %shr1336.5 = lshr i32 %210, 10 *)
(* You may need to modify here *)
split v_shr1336_5 tmp_to_be_used v210 10;
(*   %xor1335.5 = xor i32 %or1334.5, %shr1336.5 *)
(* You may need to modify here *)
xor uint32 v_xor1335_5 v_or1334_5 v_shr1336_5;
(*   %xor1337.5 = xor i32 %xor1335.5, %or1331.5 *)
(* You may need to modify here *)
xor uint32 v_xor1337_5 v_xor1335_5 v_or1331_5;
(*   %211 = load i32, i32* %arrayidx354, align 4, !tbaa !4 *)
mov v211 arrayidx354_0;
(*   %add1338.5 = add i32 %206, %211 *)
adds discard_1160 v_add1338_5 v206 v211;
(*   %add1343.5 = add i32 %add1338.5, %xor1324.5 *)
adds discard_1161 v_add1343_5 v_add1338_5 v_xor1324_5;
(*   %add1347.5 = add i32 %add1343.5, %xor1337.5 *)
adds discard_1162 v_add1347_5 v_add1343_5 v_xor1337_5;
(*   store i32 %add1347.5, i32* %arrayidx746, align 4, !tbaa !4 *)
mov arrayidx746_0 v_add1347_5;
(*   %shl1349.5 = shl i32 %add1305.5, 26 *)
shls discard_1163 v_shl1349_5 v_add1305_5 26;
(*   %shr1350.5 = lshr i32 %add1305.5, 6 *)
(* You may need to modify here *)
split v_shr1350_5 tmp_to_be_used v_add1305_5 6;
(*   %or1351.5 = or i32 %shl1349.5, %shr1350.5 *)
(* You may need to modify here *)
or uint32 v_or1351_5 v_shl1349_5 v_shr1350_5;
(*   %shl1352.5 = shl i32 %add1305.5, 21 *)
shls discard_1164 v_shl1352_5 v_add1305_5 21;
(*   %shr1353.5 = lshr i32 %add1305.5, 11 *)
(* You may need to modify here *)
split v_shr1353_5 tmp_to_be_used v_add1305_5 11;
(*   %or1354.5 = or i32 %shl1352.5, %shr1353.5 *)
(* You may need to modify here *)
or uint32 v_or1354_5 v_shl1352_5 v_shr1353_5;
(*   %xor1355.5 = xor i32 %or1351.5, %or1354.5 *)
(* You may need to modify here *)
xor uint32 v_xor1355_5 v_or1351_5 v_or1354_5;
(*   %shl1356.5 = shl i32 %add1305.5, 7 *)
shls discard_1165 v_shl1356_5 v_add1305_5 7;
(*   %shr1357.5 = lshr i32 %add1305.5, 25 *)
(* You may need to modify here *)
split v_shr1357_5 tmp_to_be_used v_add1305_5 25;
(*   %or1358.5 = or i32 %shl1356.5, %shr1357.5 *)
(* You may need to modify here *)
or uint32 v_or1358_5 v_shl1356_5 v_shr1357_5;
(*   %xor1359.5 = xor i32 %xor1355.5, %or1358.5 *)
(* You may need to modify here *)
xor uint32 v_xor1359_5 v_xor1355_5 v_or1358_5;
(*   %and1361.5 = and i32 %add1305.5, %add1223.5 *)
(* You may need to modify here *)
and uint32 v_and1361_5 v_add1305_5 v_add1223_5;
(*   %neg1362.5 = xor i32 %add1305.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1362_5 v_add1305_5 (0xFFFFFFFF)@uint32;
(*   %and1363.5 = and i32 %add1141.5, %neg1362.5 *)
(* You may need to modify here *)
and uint32 v_and1363_5 v_add1141_5 v_neg1362_5;
(*   %xor1364.5 = or i32 %and1361.5, %and1363.5 *)
(* You may need to modify here *)
or uint32 v_xor1364_5 v_and1361_5 v_and1363_5;
(*   %add1360.5 = add i32 %add1059.5, -1538233109 *)
adds discard_1166 v_add1360_5 v_add1059_5 (2756734187)@uint32;
(*   %add1365.5 = add i32 %add1360.5, %add1347.5 *)
adds discard_1167 v_add1365_5 v_add1360_5 v_add1347_5;
(*   %add1368.5 = add i32 %add1365.5, %xor1364.5 *)
adds discard_1168 v_add1368_5 v_add1365_5 v_xor1364_5;
(*   %add1369.5 = add i32 %add1368.5, %xor1359.5 *)
adds discard_1169 v_add1369_5 v_add1368_5 v_xor1359_5;
(*   %shl1370.5 = shl i32 %add1306.5, 30 *)
shls discard_1170 v_shl1370_5 v_add1306_5 30;
(*   %shr1371.5 = lshr i32 %add1306.5, 2 *)
(* You may need to modify here *)
split v_shr1371_5 tmp_to_be_used v_add1306_5 2;
(*   %or1372.5 = or i32 %shl1370.5, %shr1371.5 *)
(* You may need to modify here *)
or uint32 v_or1372_5 v_shl1370_5 v_shr1371_5;
(*   %shl1373.5 = shl i32 %add1306.5, 19 *)
shls discard_1171 v_shl1373_5 v_add1306_5 19;
(*   %shr1374.5 = lshr i32 %add1306.5, 13 *)
(* You may need to modify here *)
split v_shr1374_5 tmp_to_be_used v_add1306_5 13;
(*   %or1375.5 = or i32 %shl1373.5, %shr1374.5 *)
(* You may need to modify here *)
or uint32 v_or1375_5 v_shl1373_5 v_shr1374_5;
(*   %xor1376.5 = xor i32 %or1372.5, %or1375.5 *)
(* You may need to modify here *)
xor uint32 v_xor1376_5 v_or1372_5 v_or1375_5;
(*   %shl1377.5 = shl i32 %add1306.5, 10 *)
shls discard_1172 v_shl1377_5 v_add1306_5 10;
(*   %shr1378.5 = lshr i32 %add1306.5, 22 *)
(* You may need to modify here *)
split v_shr1378_5 tmp_to_be_used v_add1306_5 22;
(*   %or1379.5 = or i32 %shl1377.5, %shr1378.5 *)
(* You may need to modify here *)
or uint32 v_or1379_5 v_shl1377_5 v_shr1378_5;
(*   %xor1380.5 = xor i32 %xor1376.5, %or1379.5 *)
(* You may need to modify here *)
xor uint32 v_xor1380_5 v_xor1376_5 v_or1379_5;
(*   %and1381.5 = and i32 %add1306.5, %add1224.5 *)
(* You may need to modify here *)
and uint32 v_and1381_5 v_add1306_5 v_add1224_5;
(*   %and1382.5 = and i32 %add1306.5, %add1142.5 *)
(* You may need to modify here *)
and uint32 v_and1382_5 v_add1306_5 v_add1142_5;
(*   %xor1383.5 = xor i32 %and1382.5, %and1299.5 *)
(* You may need to modify here *)
xor uint32 v_xor1383_5 v_and1382_5 v_and1299_5;
(*   %xor1385.5 = xor i32 %xor1383.5, %and1381.5 *)
(* You may need to modify here *)
xor uint32 v_xor1385_5 v_xor1383_5 v_and1381_5;
(*   %add1386.5 = add i32 %xor1380.5, %xor1385.5 *)
adds discard_1173 v_add1386_5 v_xor1380_5 v_xor1385_5;
(*   %add1387.5 = add i32 %add1369.5, %add1060.5 *)
adds discard_1174 v_add1387_5 v_add1369_5 v_add1060_5;
(*   %add1388.5 = add i32 %add1386.5, %add1369.5 *)
adds discard_1175 v_add1388_5 v_add1386_5 v_add1369_5;
(*   %212 = load i32, i32* %arrayidx858, align 4, !tbaa !4 *)
mov v212 arrayidx858_0;
(*   %shl1398.5 = shl i32 %212, 25 *)
shls discard_1176 v_shl1398_5 v212 25;
(*   %shr1399.5 = lshr i32 %212, 7 *)
(* You may need to modify here *)
split v_shr1399_5 tmp_to_be_used v212 7;
(*   %or1400.5 = or i32 %shl1398.5, %shr1399.5 *)
(* You may need to modify here *)
or uint32 v_or1400_5 v_shl1398_5 v_shr1399_5;
(*   %shl1401.5 = shl i32 %212, 14 *)
shls discard_1177 v_shl1401_5 v212 14;
(*   %shr1402.5 = lshr i32 %212, 18 *)
(* You may need to modify here *)
split v_shr1402_5 tmp_to_be_used v212 18;
(*   %or1403.5 = or i32 %shl1401.5, %shr1402.5 *)
(* You may need to modify here *)
or uint32 v_or1403_5 v_shl1401_5 v_shr1402_5;
(*   %shr1405.5 = lshr i32 %212, 3 *)
(* You may need to modify here *)
split v_shr1405_5 tmp_to_be_used v212 3;
(*   %xor1404.5 = xor i32 %or1403.5, %shr1405.5 *)
(* You may need to modify here *)
xor uint32 v_xor1404_5 v_or1403_5 v_shr1405_5;
(*   %xor1406.5 = xor i32 %xor1404.5, %or1400.5 *)
(* You may need to modify here *)
xor uint32 v_xor1406_5 v_xor1404_5 v_or1400_5;
(*   %213 = load i32, i32* %arrayidx690, align 4, !tbaa !4 *)
mov v213 arrayidx690_0;
(*   %shl1411.5 = shl i32 %213, 15 *)
shls discard_1178 v_shl1411_5 v213 15;
(*   %shr1412.5 = lshr i32 %213, 17 *)
(* You may need to modify here *)
split v_shr1412_5 tmp_to_be_used v213 17;
(*   %or1413.5 = or i32 %shl1411.5, %shr1412.5 *)
(* You may need to modify here *)
or uint32 v_or1413_5 v_shl1411_5 v_shr1412_5;
(*   %shl1414.5 = shl i32 %213, 13 *)
shls discard_1179 v_shl1414_5 v213 13;
(*   %shr1415.5 = lshr i32 %213, 19 *)
(* You may need to modify here *)
split v_shr1415_5 tmp_to_be_used v213 19;
(*   %or1416.5 = or i32 %shl1414.5, %shr1415.5 *)
(* You may need to modify here *)
or uint32 v_or1416_5 v_shl1414_5 v_shr1415_5;
(*   %shr1418.5 = lshr i32 %213, 10 *)
(* You may need to modify here *)
split v_shr1418_5 tmp_to_be_used v213 10;
(*   %xor1417.5 = xor i32 %or1416.5, %shr1418.5 *)
(* You may need to modify here *)
xor uint32 v_xor1417_5 v_or1416_5 v_shr1418_5;
(*   %xor1419.5 = xor i32 %xor1417.5, %or1413.5 *)
(* You may need to modify here *)
xor uint32 v_xor1419_5 v_xor1417_5 v_or1413_5;
(*   %214 = load i32, i32* %arrayidx410, align 4, !tbaa !4 *)
mov v214 arrayidx410_0;
(*   %add1420.5 = add i32 %209, %214 *)
adds discard_1180 v_add1420_5 v209 v214;
(*   %add1425.5 = add i32 %add1420.5, %xor1406.5 *)
adds discard_1181 v_add1425_5 v_add1420_5 v_xor1406_5;
(*   %add1429.5 = add i32 %add1425.5, %xor1419.5 *)
adds discard_1182 v_add1429_5 v_add1425_5 v_xor1419_5;
(*   store i32 %add1429.5, i32* %arrayidx802, align 4, !tbaa !4 *)
mov arrayidx802_0 v_add1429_5;
(*   %shl1431.5 = shl i32 %add1387.5, 26 *)
shls discard_1183 v_shl1431_5 v_add1387_5 26;
(*   %shr1432.5 = lshr i32 %add1387.5, 6 *)
(* You may need to modify here *)
split v_shr1432_5 tmp_to_be_used v_add1387_5 6;
(*   %or1433.5 = or i32 %shl1431.5, %shr1432.5 *)
(* You may need to modify here *)
or uint32 v_or1433_5 v_shl1431_5 v_shr1432_5;
(*   %shl1434.5 = shl i32 %add1387.5, 21 *)
shls discard_1184 v_shl1434_5 v_add1387_5 21;
(*   %shr1435.5 = lshr i32 %add1387.5, 11 *)
(* You may need to modify here *)
split v_shr1435_5 tmp_to_be_used v_add1387_5 11;
(*   %or1436.5 = or i32 %shl1434.5, %shr1435.5 *)
(* You may need to modify here *)
or uint32 v_or1436_5 v_shl1434_5 v_shr1435_5;
(*   %xor1437.5 = xor i32 %or1433.5, %or1436.5 *)
(* You may need to modify here *)
xor uint32 v_xor1437_5 v_or1433_5 v_or1436_5;
(*   %shl1438.5 = shl i32 %add1387.5, 7 *)
shls discard_1185 v_shl1438_5 v_add1387_5 7;
(*   %shr1439.5 = lshr i32 %add1387.5, 25 *)
(* You may need to modify here *)
split v_shr1439_5 tmp_to_be_used v_add1387_5 25;
(*   %or1440.5 = or i32 %shl1438.5, %shr1439.5 *)
(* You may need to modify here *)
or uint32 v_or1440_5 v_shl1438_5 v_shr1439_5;
(*   %xor1441.5 = xor i32 %xor1437.5, %or1440.5 *)
(* You may need to modify here *)
xor uint32 v_xor1441_5 v_xor1437_5 v_or1440_5;
(*   %and1443.5 = and i32 %add1387.5, %add1305.5 *)
(* You may need to modify here *)
and uint32 v_and1443_5 v_add1387_5 v_add1305_5;
(*   %neg1444.5 = xor i32 %add1387.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1444_5 v_add1387_5 (0xFFFFFFFF)@uint32;
(*   %and1445.5 = and i32 %add1223.5, %neg1444.5 *)
(* You may need to modify here *)
and uint32 v_and1445_5 v_add1223_5 v_neg1444_5;
(*   %xor1446.5 = or i32 %and1443.5, %and1445.5 *)
(* You may need to modify here *)
or uint32 v_xor1446_5 v_and1443_5 v_and1445_5;
(*   %add1442.5 = add i32 %add1141.5, -1090935817 *)
adds discard_1186 v_add1442_5 v_add1141_5 (3204031479)@uint32;
(*   %add1447.5 = add i32 %add1442.5, %add1429.5 *)
adds discard_1187 v_add1447_5 v_add1442_5 v_add1429_5;
(*   %add1450.5 = add i32 %add1447.5, %xor1446.5 *)
adds discard_1188 v_add1450_5 v_add1447_5 v_xor1446_5;
(*   %add1451.5 = add i32 %add1450.5, %xor1441.5 *)
adds discard_1189 v_add1451_5 v_add1450_5 v_xor1441_5;
(*   %shl1452.5 = shl i32 %add1388.5, 30 *)
shls discard_1190 v_shl1452_5 v_add1388_5 30;
(*   %shr1453.5 = lshr i32 %add1388.5, 2 *)
(* You may need to modify here *)
split v_shr1453_5 tmp_to_be_used v_add1388_5 2;
(*   %or1454.5 = or i32 %shl1452.5, %shr1453.5 *)
(* You may need to modify here *)
or uint32 v_or1454_5 v_shl1452_5 v_shr1453_5;
(*   %shl1455.5 = shl i32 %add1388.5, 19 *)
shls discard_1191 v_shl1455_5 v_add1388_5 19;
(*   %shr1456.5 = lshr i32 %add1388.5, 13 *)
(* You may need to modify here *)
split v_shr1456_5 tmp_to_be_used v_add1388_5 13;
(*   %or1457.5 = or i32 %shl1455.5, %shr1456.5 *)
(* You may need to modify here *)
or uint32 v_or1457_5 v_shl1455_5 v_shr1456_5;
(*   %xor1458.5 = xor i32 %or1454.5, %or1457.5 *)
(* You may need to modify here *)
xor uint32 v_xor1458_5 v_or1454_5 v_or1457_5;
(*   %shl1459.5 = shl i32 %add1388.5, 10 *)
shls discard_1192 v_shl1459_5 v_add1388_5 10;
(*   %shr1460.5 = lshr i32 %add1388.5, 22 *)
(* You may need to modify here *)
split v_shr1460_5 tmp_to_be_used v_add1388_5 22;
(*   %or1461.5 = or i32 %shl1459.5, %shr1460.5 *)
(* You may need to modify here *)
or uint32 v_or1461_5 v_shl1459_5 v_shr1460_5;
(*   %xor1462.5 = xor i32 %xor1458.5, %or1461.5 *)
(* You may need to modify here *)
xor uint32 v_xor1462_5 v_xor1458_5 v_or1461_5;
(*   %and1463.5 = and i32 %add1388.5, %add1306.5 *)
(* You may need to modify here *)
and uint32 v_and1463_5 v_add1388_5 v_add1306_5;
(*   %and1464.5 = and i32 %add1388.5, %add1224.5 *)
(* You may need to modify here *)
and uint32 v_and1464_5 v_add1388_5 v_add1224_5;
(*   %xor1465.5 = xor i32 %and1464.5, %and1381.5 *)
(* You may need to modify here *)
xor uint32 v_xor1465_5 v_and1464_5 v_and1381_5;
(*   %xor1467.5 = xor i32 %xor1465.5, %and1463.5 *)
(* You may need to modify here *)
xor uint32 v_xor1467_5 v_xor1465_5 v_and1463_5;
(*   %add1468.5 = add i32 %xor1462.5, %xor1467.5 *)
adds discard_1193 v_add1468_5 v_xor1462_5 v_xor1467_5;
(*   %add1469.5 = add i32 %add1451.5, %add1142.5 *)
adds discard_1194 v_add1469_5 v_add1451_5 v_add1142_5;
(*   %add1470.5 = add i32 %add1468.5, %add1451.5 *)
adds discard_1195 v_add1470_5 v_add1468_5 v_add1451_5;
(*   %215 = load i32, i32* %arrayidx26, align 4, !tbaa !4 *)
mov v215 arrayidx26_0;
(*   %shl1480.5 = shl i32 %215, 25 *)
shls discard_1196 v_shl1480_5 v215 25;
(*   %shr1481.5 = lshr i32 %215, 7 *)
(* You may need to modify here *)
split v_shr1481_5 tmp_to_be_used v215 7;
(*   %or1482.5 = or i32 %shl1480.5, %shr1481.5 *)
(* You may need to modify here *)
or uint32 v_or1482_5 v_shl1480_5 v_shr1481_5;
(*   %shl1483.5 = shl i32 %215, 14 *)
shls discard_1197 v_shl1483_5 v215 14;
(*   %shr1484.5 = lshr i32 %215, 18 *)
(* You may need to modify here *)
split v_shr1484_5 tmp_to_be_used v215 18;
(*   %or1485.5 = or i32 %shl1483.5, %shr1484.5 *)
(* You may need to modify here *)
or uint32 v_or1485_5 v_shl1483_5 v_shr1484_5;
(*   %shr1487.5 = lshr i32 %215, 3 *)
(* You may need to modify here *)
split v_shr1487_5 tmp_to_be_used v215 3;
(*   %xor1486.5 = xor i32 %or1485.5, %shr1487.5 *)
(* You may need to modify here *)
xor uint32 v_xor1486_5 v_or1485_5 v_shr1487_5;
(*   %xor1488.5 = xor i32 %xor1486.5, %or1482.5 *)
(* You may need to modify here *)
xor uint32 v_xor1488_5 v_xor1486_5 v_or1482_5;
(*   %216 = load i32, i32* %arrayidx746, align 4, !tbaa !4 *)
mov v216 arrayidx746_0;
(*   %shl1493.5 = shl i32 %216, 15 *)
shls discard_1198 v_shl1493_5 v216 15;
(*   %shr1494.5 = lshr i32 %216, 17 *)
(* You may need to modify here *)
split v_shr1494_5 tmp_to_be_used v216 17;
(*   %or1495.5 = or i32 %shl1493.5, %shr1494.5 *)
(* You may need to modify here *)
or uint32 v_or1495_5 v_shl1493_5 v_shr1494_5;
(*   %shl1496.5 = shl i32 %216, 13 *)
shls discard_1199 v_shl1496_5 v216 13;
(*   %shr1497.5 = lshr i32 %216, 19 *)
(* You may need to modify here *)
split v_shr1497_5 tmp_to_be_used v216 19;
(*   %or1498.5 = or i32 %shl1496.5, %shr1497.5 *)
(* You may need to modify here *)
or uint32 v_or1498_5 v_shl1496_5 v_shr1497_5;
(*   %shr1500.5 = lshr i32 %216, 10 *)
(* You may need to modify here *)
split v_shr1500_5 tmp_to_be_used v216 10;
(*   %xor1499.5 = xor i32 %or1498.5, %shr1500.5 *)
(* You may need to modify here *)
xor uint32 v_xor1499_5 v_or1498_5 v_shr1500_5;
(*   %xor1501.5 = xor i32 %xor1499.5, %or1495.5 *)
(* You may need to modify here *)
xor uint32 v_xor1501_5 v_xor1499_5 v_or1495_5;
(*   %217 = load i32, i32* %arrayidx466, align 4, !tbaa !4 *)
mov v217 arrayidx466_0;
(*   %add1502.5 = add i32 %212, %217 *)
adds discard_1200 v_add1502_5 v212 v217;
(*   %add1507.5 = add i32 %add1502.5, %xor1488.5 *)
adds discard_1201 v_add1507_5 v_add1502_5 v_xor1488_5;
(*   %add1511.5 = add i32 %add1507.5, %xor1501.5 *)
adds discard_1202 v_add1511_5 v_add1507_5 v_xor1501_5;
(*   store i32 %add1511.5, i32* %arrayidx858, align 4, !tbaa !4 *)
mov arrayidx858_0 v_add1511_5;
(*   %shl1513.5 = shl i32 %add1469.5, 26 *)
shls discard_1203 v_shl1513_5 v_add1469_5 26;
(*   %shr1514.5 = lshr i32 %add1469.5, 6 *)
(* You may need to modify here *)
split v_shr1514_5 tmp_to_be_used v_add1469_5 6;
(*   %or1515.5 = or i32 %shl1513.5, %shr1514.5 *)
(* You may need to modify here *)
or uint32 v_or1515_5 v_shl1513_5 v_shr1514_5;
(*   %shl1516.5 = shl i32 %add1469.5, 21 *)
shls discard_1204 v_shl1516_5 v_add1469_5 21;
(*   %shr1517.5 = lshr i32 %add1469.5, 11 *)
(* You may need to modify here *)
split v_shr1517_5 tmp_to_be_used v_add1469_5 11;
(*   %or1518.5 = or i32 %shl1516.5, %shr1517.5 *)
(* You may need to modify here *)
or uint32 v_or1518_5 v_shl1516_5 v_shr1517_5;
(*   %xor1519.5 = xor i32 %or1515.5, %or1518.5 *)
(* You may need to modify here *)
xor uint32 v_xor1519_5 v_or1515_5 v_or1518_5;
(*   %shl1520.5 = shl i32 %add1469.5, 7 *)
shls discard_1205 v_shl1520_5 v_add1469_5 7;
(*   %shr1521.5 = lshr i32 %add1469.5, 25 *)
(* You may need to modify here *)
split v_shr1521_5 tmp_to_be_used v_add1469_5 25;
(*   %or1522.5 = or i32 %shl1520.5, %shr1521.5 *)
(* You may need to modify here *)
or uint32 v_or1522_5 v_shl1520_5 v_shr1521_5;
(*   %xor1523.5 = xor i32 %xor1519.5, %or1522.5 *)
(* You may need to modify here *)
xor uint32 v_xor1523_5 v_xor1519_5 v_or1522_5;
(*   %and1525.5 = and i32 %add1469.5, %add1387.5 *)
(* You may need to modify here *)
and uint32 v_and1525_5 v_add1469_5 v_add1387_5;
(*   %neg1526.5 = xor i32 %add1469.5, -1 *)
(* You may need to modify here *)
xor uint32 v_neg1526_5 v_add1469_5 (0xFFFFFFFF)@uint32;
(*   %and1527.5 = and i32 %add1305.5, %neg1526.5 *)
(* You may need to modify here *)
and uint32 v_and1527_5 v_add1305_5 v_neg1526_5;
(*   %xor1528.5 = or i32 %and1525.5, %and1527.5 *)
(* You may need to modify here *)
or uint32 v_xor1528_5 v_and1525_5 v_and1527_5;
(*   %add1524.5 = add i32 %add1223.5, -965641998 *)
adds discard_1206 v_add1524_5 v_add1223_5 (3329325298)@uint32;
(*   %add1529.5 = add i32 %add1524.5, %add1511.5 *)
adds discard_1207 v_add1529_5 v_add1524_5 v_add1511_5;
(*   %add1532.5 = add i32 %add1529.5, %xor1528.5 *)
adds discard_1208 v_add1532_5 v_add1529_5 v_xor1528_5;
(*   %add1533.5 = add i32 %add1532.5, %xor1523.5 *)
adds discard_1209 v_add1533_5 v_add1532_5 v_xor1523_5;
(*   %shl1534.5 = shl i32 %add1470.5, 30 *)
shls discard_1210 v_shl1534_5 v_add1470_5 30;
(*   %shr1535.5 = lshr i32 %add1470.5, 2 *)
(* You may need to modify here *)
split v_shr1535_5 tmp_to_be_used v_add1470_5 2;
(*   %or1536.5 = or i32 %shl1534.5, %shr1535.5 *)
(* You may need to modify here *)
or uint32 v_or1536_5 v_shl1534_5 v_shr1535_5;
(*   %shl1537.5 = shl i32 %add1470.5, 19 *)
shls discard_1211 v_shl1537_5 v_add1470_5 19;
(*   %shr1538.5 = lshr i32 %add1470.5, 13 *)
(* You may need to modify here *)
split v_shr1538_5 tmp_to_be_used v_add1470_5 13;
(*   %or1539.5 = or i32 %shl1537.5, %shr1538.5 *)
(* You may need to modify here *)
or uint32 v_or1539_5 v_shl1537_5 v_shr1538_5;
(*   %xor1540.5 = xor i32 %or1536.5, %or1539.5 *)
(* You may need to modify here *)
xor uint32 v_xor1540_5 v_or1536_5 v_or1539_5;
(*   %shl1541.5 = shl i32 %add1470.5, 10 *)
shls discard_1212 v_shl1541_5 v_add1470_5 10;
(*   %shr1542.5 = lshr i32 %add1470.5, 22 *)
(* You may need to modify here *)
split v_shr1542_5 tmp_to_be_used v_add1470_5 22;
(*   %or1543.5 = or i32 %shl1541.5, %shr1542.5 *)
(* You may need to modify here *)
or uint32 v_or1543_5 v_shl1541_5 v_shr1542_5;
(*   %xor1544.5 = xor i32 %xor1540.5, %or1543.5 *)
(* You may need to modify here *)
xor uint32 v_xor1544_5 v_xor1540_5 v_or1543_5;
(*   %and15462545.5 = xor i32 %add1388.5, %add1306.5 *)
(* You may need to modify here *)
xor uint32 v_and15462545_5 v_add1388_5 v_add1306_5;
(*   %xor1547.5 = and i32 %add1470.5, %and15462545.5 *)
(* You may need to modify here *)
and uint32 v_xor1547_5 v_add1470_5 v_and15462545_5;
(*   %xor1549.5 = xor i32 %xor1547.5, %and1463.5 *)
(* You may need to modify here *)
xor uint32 v_xor1549_5 v_xor1547_5 v_and1463_5;
(*   %add1550.5 = add i32 %xor1544.5, %xor1549.5 *)
adds discard_1213 v_add1550_5 v_xor1544_5 v_xor1549_5;
(*   %add1551.5 = add i32 %add1533.5, %add1224.5 *)
adds discard_1214 v_add1551_5 v_add1533_5 v_add1224_5;
(*   %add1552.5 = add i32 %add1550.5, %add1533.5 *)
adds discard_1215 v_add1552_5 v_add1550_5 v_add1533_5;
(*   %dec2558 = add i32 %dec2558.in, -1 *)
adds discard_1216 v_dec2558 v_dec2558_in (4294967295)@uint32;
(*   %incdec.ptr855 = getelementptr inbounds i8, i8* %data.02557, i32 64 *)
(*   %add1560 = add i32 %add1552.5, %8 *)
adds discard_1217 v_add1560 v_add1552_5 v8;
(*   store i32 %add1560, i32* %arrayidx, align 4, !tbaa !4 *)
mov arrayidx_0 v_add1560;
(*   %add1563 = add i32 %add1470.5, %7 *)
adds discard_1218 v_add1563 v_add1470_5 v7;
(*   store i32 %add1563, i32* %arrayidx3, align 4, !tbaa !4 *)
mov arrayidx3_0 v_add1563;
(*   %add1566 = add i32 %add1388.5, %6 *)
adds discard_1219 v_add1566 v_add1388_5 v6;
(*   store i32 %add1566, i32* %arrayidx5, align 4, !tbaa !4 *)
mov arrayidx5_0 v_add1566;
(*   %add1569 = add i32 %add1306.5, %5 *)
adds discard_1220 v_add1569 v_add1306_5 v5;
(*   store i32 %add1569, i32* %arrayidx7, align 4, !tbaa !4 *)
mov arrayidx7_0 v_add1569;
(*   %add1572 = add i32 %add1551.5, %4 *)
adds discard_1221 v_add1572 v_add1551_5 v4;
(*   store i32 %add1572, i32* %arrayidx9, align 4, !tbaa !4 *)
mov arrayidx9_0 v_add1572;
(*   %add1575 = add i32 %add1469.5, %3 *)
adds discard_1222 v_add1575 v_add1469_5 v3;
(*   store i32 %add1575, i32* %arrayidx11, align 4, !tbaa !4 *)
mov arrayidx11_0 v_add1575;
(*   %add1578 = add i32 %add1387.5, %2 *)
adds discard_1223 v_add1578 v_add1387_5 v2;
(*   store i32 %add1578, i32* %arrayidx13, align 4, !tbaa !4 *)
mov arrayidx13_0 v_add1578;
(*   %add1581 = add i32 %add1305.5, %1 *)
adds discard_1224 v_add1581 v_add1305_5 v1;
(*   store i32 %add1581, i32* %arrayidx15, align 4, !tbaa !4 *)
mov arrayidx15_0 v_add1581;
(*   %tobool = icmp eq i32 %dec2558, 0 *)
(*   br i1 %tobool, label %while.end, label %while.body *)


(* Outputs *)

mov a0 arrayidx_0@uint32;
mov a1 arrayidx3_0@uint32;
mov a2 arrayidx5_0@uint32;
mov a3 arrayidx7_0@uint32;
mov a4 arrayidx9_0@uint32;
mov a5 arrayidx11_0@uint32;
mov a6 arrayidx13_0@uint32;
mov a7 arrayidx15_0@uint32;

(* mov _ arrayidx802_0@uint32; *)
(* mov _ arrayidx858_0@uint32; *)
(* mov _ v_dec2558@uint32; *)

{
  true
  &&
  true
}

