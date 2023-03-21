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
ror x19@uint32 x 18;
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
                mov w13 src2_2; mov w14 src2_1; mov w15 src2_0;
mov w16 src1_3; mov w17 src1_2; mov w18 src1_1; mov w19 src1_0;
xor x16@uint32 w16 w13; rol w16@uint32 x16 1;
xor x17@uint32 w17 w14; rol w17@uint32 x17 1;
xor x18@uint32 w18 w15; rol w18@uint32 x18 1;
xor x19@uint32 w19 w16; rol w19@uint32 x19 1;
mov dst_3 w16; mov dst_2 w17; mov dst_1 w18; mov dst_0 w19;
{ true && true }



