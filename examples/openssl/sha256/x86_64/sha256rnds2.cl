proc Ch (uint32 x, uint32 y, uint32 z; uint32 o) =
{ true && true }
and xy@uint32 x y;
not nx@uint32 x;
and nxz@uint32 nx z;
xor o@uint32 xy nxz;
{ true && true }

proc Maj (uint32 x, uint32 y, uint32 z; uint32 o) =
{ true && true }
and xy@uint32 x y;
and xz@uint32 x z;
and yz@uint32 y z;
xor xyz@uint32 xy xz;
xor o@uint32 xyz yz;
{ true && true }

proc Sigma0 (uint32 x; uint32 o) =
{ true && true }
ror x02@uint32 x  2;
ror x13@uint32 x 13;
ror x22@uint32 x 22;
xor xr@uint32 x02 x13;
xor o@uint32 xr x22;
{ true && true }

proc Sigma1 (uint32 x; uint32 o) =
{ true && true }
ror x06@uint32 x  6;
ror x11@uint32 x 11;
ror x25@uint32 x 25;
xor xr@uint32 x06 x11;
xor o@uint32 xr x25;
{ true && true }


proc sha256rnds2 (uint32 xmm0_0, uint32 xmm0_1,
                  uint32 src1_0, uint32 src1_1, uint32 src1_2, uint32 src1_3,
                  uint32 src2_0, uint32 src2_1, uint32 src2_2, uint32 src2_3;
                  uint32 dst_0, uint32 dst_1, uint32 dst_2, uint32 dst_3) =
{ true && true }
mov a0 src2_3; mov b0 src2_2; mov c0 src1_3; mov d0 src1_2;
mov e0 src2_1; mov f0 src2_0; mov g0 src1_1; mov h0 src1_0;
mov wk0 xmm0_0; mov wk1 xmm0_1;

(* round 1 *)
inline Ch (e0, f0, g0, Ch);
inline Sigma1 (e0, S1);
inline Maj (a0, b0, c0, Maj);
inline Sigma0 (a0, S0);
adds dc s0 Ch S1;
adds dc t0 wk0 h0;
adds dc u0 Maj S0;
adds dc st0 s0 t0;
adds dc a1 st0 u0;
mov b1 a0; mov c1 b0; mov d1 c0;
adds dc e1 st0 d0;
mov f1 e0; mov g1 f0; mov h1 g0;

(* round 2 *)
inline Ch (e1, f1, g1, Ch);
inline Sigma1 (e1, S1);
inline Maj (a1, b1, c1, Maj);
inline Sigma0 (a1, S0);
adds dc s1 Ch S1;
adds dc t1 wk1 h1;
adds dc u1 Maj S0;
adds dc st1 s1 t1;
adds dc a2 st1 u1;
mov b2 a1; mov c2 b1; mov d2 c1;
adds dc e2 st1 d1;
mov f2 e1; mov g2 f1; mov h2 g1;

mov dst_0 f2; mov dst_1 e2; mov dst_2 b2; mov dst_3 a2;
{ true && true }

