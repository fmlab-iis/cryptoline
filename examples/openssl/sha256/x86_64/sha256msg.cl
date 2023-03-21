proc sigma0 (uint32 x; uint32 o) =
{ true && true }
ror x07@uint32 x  7;
ror x18@uint32 x 18;
split x03 dc x  3;
xor xx@uint32 x07 x18;
xor o@uint32 xx x03;
{ true && true }

proc sigma1 (uint32 x; uint32 o) =
{ true && true }
ror x17@uint32 x 17;
ror x19@uint32 x 19;
split x10 dc x 10;
xor xx@uint32 x17 x19;
xor o@uint32 xx x10;
{ true && true }

proc sha256msg1 (uint32 src1_0, uint32 src1_1, uint32 src1_2, uint32 src1_3,
                 uint32 src2_0, uint32 src2_1, uint32 src2_2, uint32 src2_3;
                 uint32 dst_0, uint32 dst_1, uint32 dst_2, uint32 dst_3) =
{ true && true }
mov w4 src2_0; mov w3 src1_3; mov w2 src1_2; mov w1 src1_1; mov w0 src1_0;
call sigma0 (w4, o4); call sigma0 (w3, o3);
call sigma0 (w2, o2); call sigma0 (w1, o1);
adds dc dst_3 w3 o4; adds dc dst_2 w2 o3;
adds dc dst_1 w1 o2; adds dc dst_0 w0 o1;
{ true && true }

proc sha256msg2 (uint32 src1_0, uint32 src1_1, uint32 src1_2, uint32 src1_3,
                 uint32 src2_0, uint32 src2_1, uint32 src2_2, uint32 src2_3;
                 uint32 dst_0, uint32 dst_1, uint32 dst_2, uint32 dst_3) =
{ true && true }
mov w14 src2_2; mov w15 src2_3;
mov t16 src1_0; mov t17 src1_1; mov t18 src1_2; mov t19 src1_3;
call sigma1 (w14, o14); adds dc w16 t16 o14;
call sigma1 (w15, o15); adds dc w17 t17 o15;
call sigma1 (w16, o16); adds dc w18 t18 o16;
call sigma1 (w17, o17); adds dc w19 t19 o17;
mov dst_3 w19; mov dst_2 w18; mov dst_1 w17; mov dst_0 w16;
{ true && true }



