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
proc ymmw2b (uint16[16] ymms; uint8[32] ymmt) =
{ true && true }
mov [ymms_0, ymms_1, ymms_2, ymms_3, ymms_4, ymms_5, ymms_6, ymms_7,
     ymms_8, ymms_9, ymms_a, ymms_b, ymms_c, ymms_d, ymms_e, ymms_f] %ymms;
spl ymms_0h ymms_0l ymms_0 8;  spl ymms_1h ymms_1l ymms_1 8;
spl ymms_2h ymms_2l ymms_2 8;  spl ymms_3h ymms_3l ymms_3 8;
spl ymms_4h ymms_4l ymms_4 8;  spl ymms_5h ymms_5l ymms_5 8;
spl ymms_6h ymms_6l ymms_6 8;  spl ymms_7h ymms_7l ymms_7 8;
spl ymms_8h ymms_8l ymms_8 8;  spl ymms_9h ymms_9l ymms_9 8;
spl ymms_ah ymms_al ymms_a 8;  spl ymms_bh ymms_bl ymms_b 8;
spl ymms_ch ymms_cl ymms_c 8;  spl ymms_dh ymms_dl ymms_d 8;
spl ymms_eh ymms_el ymms_e 8;  spl ymms_fh ymms_fl ymms_f 8;
mov %ymmt [ymms_0l, ymms_0h, ymms_1l, ymms_1h, ymms_2l, ymms_2h, ymms_3l, ymms_3h,
           ymms_4l, ymms_4h, ymms_5l, ymms_5h, ymms_6l, ymms_6h, ymms_7l, ymms_7h,
           ymms_8l, ymms_8h, ymms_9l, ymms_9h, ymms_al, ymms_ah, ymms_bl, ymms_bh,
           ymms_cl, ymms_ch, ymms_dl, ymms_dh, ymms_el, ymms_eh, ymms_fl, ymms_fh];
{ true && true }
*)


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

(*
proc ymmb2w (uint8[32] ymms; uint16[16] ymmt) =
{ true && true }
mov [ymms_0l, ymms_0h, ymms_1l, ymms_1h, ymms_2l, ymms_2h, ymms_3l, ymms_3h,
     ymms_4l, ymms_4h, ymms_5l, ymms_5h, ymms_6l, ymms_6h, ymms_7l, ymms_7h,
     ymms_8l, ymms_8h, ymms_9l, ymms_9h, ymms_al, ymms_ah, ymms_bl, ymms_bh,
     ymms_cl, ymms_ch, ymms_dl, ymms_dh, ymms_el, ymms_eh, ymms_fl, ymms_fh] %ymms;
join ymmt_0 ymms_0h ymms_0l;  join ymmt_1 ymms_1h ymms_1l;
join ymmt_2 ymms_2h ymms_2l;  join ymmt_3 ymms_3h ymms_3l;
join ymmt_4 ymms_4h ymms_4l;  join ymmt_5 ymms_5h ymms_5l;
join ymmt_6 ymms_6h ymms_6l;  join ymmt_7 ymms_7h ymms_7l;
pjoin ymmt_8 ymms_8h ymms_8l;  join ymmt_9 ymms_9h ymms_9l;
join ymmt_a ymms_ah ymms_al;  join ymmt_b ymms_bh ymms_bl;
join ymmt_c ymms_ch ymms_cl;  join ymmt_d ymms_dh ymms_dl;
join ymmt_e ymms_eh ymms_el;  join ymmt_f ymms_fh ymms_fl;
mov %ymmt [ymmt_0, ymmt_1, ymmt_2, ymmt_3, ymmt_4, ymmt_5, ymmt_6, ymmt_7,
           ymmt_8, ymmt_9, ymmt_a, ymmt_b, ymmt_c, ymmt_d, ymmt_e, ymmt_f];
{ true && true }
*)



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


(*
proc vpshufb256 (uint8[32] src, uint8[32] idx; uint8[32] dst) =
{ true && true }
mov [src_00, src_01, src_02, src_03, src_04, src_05, src_06, src_07,
     src_08, src_09, src_0a, src_0b, src_0c, src_0d, src_0e, src_0f,
     src_10, src_11, src_12, src_13, src_14, src_15, src_16, src_17,
     src_18, src_19, src_1a, src_1b, src_1c, src_1d, src_1e, src_1f] %src; 
mov [idx_00, idx_01, idx_02, idx_03, idx_04, idx_05, idx_06, idx_07,
     idx_08, idx_09, idx_0a, idx_0b, idx_0c, idx_0d, idx_0e, idx_0f,
     idx_10, idx_11, idx_12, idx_13, idx_14, idx_15, idx_16, idx_17,
     idx_18, idx_19, idx_1a, idx_1b, idx_1c, idx_1d, idx_1e, idx_1f] %idx;
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
mov %dst [dst_00, dst_01, dst_02, dst_03, dst_04, dst_05, dst_06, dst_07,
          dst_08, dst_09, dst_0a, dst_0b, dst_0c, dst_0d, dst_0e, dst_0f,
          dst_10, dst_11, dst_12, dst_13, dst_14, dst_15, dst_16, dst_17,
          dst_18, dst_19, dst_1a, dst_1b, dst_1c, dst_1d, dst_1e, dst_1f];
{ true && true }
*)
