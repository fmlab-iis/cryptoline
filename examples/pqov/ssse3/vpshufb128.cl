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
