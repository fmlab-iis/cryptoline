proc main (   uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4, uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9,uint32 a10,uint32 a11,uint32 a12,uint32 a13,uint32 a14,uint32 a15,
  uint32 a16,uint32 a17,uint32 a18,uint32 a19,uint32 a20,uint32 a21,uint32 a22,uint32 a23,uint32 a24,uint32 a25,uint32 a26,uint32 a27,uint32 a28,uint32 a29,uint32 a30,uint32 a31,
  uint32 a32,uint32 a33,uint32 a34,uint32 a35,uint32 a36,uint32 a37,uint32 a38,uint32 a39,uint32 a40,uint32 a41,uint32 a42,uint32 a43,uint32 a44,uint32 a45,uint32 a46,uint32 a47,
  uint32 a48,uint32 a49,uint32 a50,uint32 a51,uint32 a52,uint32 a53,uint32 a54,uint32 a55,uint32 a56,uint32 a57,uint32 a58,uint32 a59,uint32 a60,uint32 a61,uint32 a62,uint32 a63,
   uint32 b0, uint32 b1, uint32 b2, uint32 b3, uint32 b4, uint32 b5, uint32 b6, uint32 b7, uint32 b8, uint32 b9,uint32 b10,uint32 b11,uint32 b12,uint32 b13,uint32 b14,uint32 b15,
  uint32 b16,uint32 b17,uint32 b18,uint32 b19,uint32 b20,uint32 b21,uint32 b22,uint32 b23,uint32 b24,uint32 b25,uint32 b26,uint32 b27,uint32 b28,uint32 b29,uint32 b30,uint32 b31,
  uint32 b32,uint32 b33,uint32 b34,uint32 b35,uint32 b36,uint32 b37,uint32 b38,uint32 b39,uint32 b40,uint32 b41,uint32 b42,uint32 b43,uint32 b44,uint32 b45,uint32 b46,uint32 b47,
  uint32 b48,uint32 b49,uint32 b50,uint32 b51,uint32 b52,uint32 b53,uint32 b54,uint32 b55,uint32 b56,uint32 b57,uint32 b58,uint32 b59,uint32 b60,uint32 b61,uint32 b62,uint32 b63,
   uint32 m0, uint32 m1, uint32 m2, uint32 m3, uint32 m4, uint32 m5, uint32 m6, uint32 m7, uint32 m8, uint32 m9,uint32 m10,uint32 m11,uint32 m12,uint32 m13,uint32 m14,uint32 m15,
  uint32 m16,uint32 m17,uint32 m18,uint32 m19,uint32 m20,uint32 m21,uint32 m22,uint32 m23,uint32 m24,uint32 m25,uint32 m26,uint32 m27,uint32 m28,uint32 m29,uint32 m30,uint32 m31,
  uint32 m32,uint32 m33,uint32 m34,uint32 m35,uint32 m36,uint32 m37,uint32 m38,uint32 m39,uint32 m40,uint32 m41,uint32 m42,uint32 m43,uint32 m44,uint32 m45,uint32 m46,uint32 m47,
  uint32 m48,uint32 m49,uint32 m50,uint32 m51,uint32 m52,uint32 m53,uint32 m54,uint32 m55,uint32 m56,uint32 m57,uint32 m58,uint32 m59,uint32 m60,uint32 m61,uint32 m62,uint32 m63,
  uint32 alpha0) =
{
    and
      [
        eqmod m0 1 2,

        eqmod
          (
            (
              alpha0
              *
              (limbs 32 [m0, m1, m2, m3,
                         m4, m5, m6, m7,
                         m8, m9, m10, m11,
                         m12, m13, m14, m15,
                         m16, m17, m18, m19,
                         m20, m21, m22, m23,
                         m24, m25, m26, m27,
                         m28, m29, m30, m31,
                         m32, m33, m34, m35,
                         m36, m37, m38, m39,
                         m40, m41, m42, m43,
                         m44, m45, m46, m47,
                         m48, m49, m50, m51,
                         m52, m53, m54, m55,
                         m56, m57, m58, m59,
                         m60, m61, m62, m63])
            )
            +
            1
          )

          0

          (limbs 32 [0, 1 ])
      ]
&&
  and
    [
      (limbs 32 [a0, a1, a2, a3,
                 a4, a5, a6, a7,
                 a8, a9, a10, a11,
                 a12, a13, a14, a15,
                 a16, a17, a18, a19,
                 a20, a21, a22, a23,
                 a24, a25, a26, a27,
                 a28, a29, a30, a31,
                 a32, a33, a34, a35,
                 a36, a37, a38, a39,
                 a40, a41, a42, a43,
                 a44, a45, a46, a47,
                 a48, a49, a50, a51,
                 a52, a53, a54, a55,
                 a56, a57, a58, a59,
                 a60, a61, a62, a63]) <
      (limbs 32 [m0, m1, m2, m3,
                 m4, m5, m6, m7,
                 m8, m9, m10, m11,
                 m12, m13, m14, m15,
                 m16, m17, m18, m19,
                 m20, m21, m22, m23,
                 m24, m25, m26, m27,
                 m28, m29, m30, m31,
                 m32, m33, m34, m35,
                 m36, m37, m38, m39,
                 m40, m41, m42, m43,
                 m44, m45, m46, m47,
                 m48, m49, m50, m51,
                 m52, m53, m54, m55,
                 m56, m57, m58, m59,
                 m60, m61, m62, m63]),
      (limbs 32 [b0, b1, b2, b3,
                 b4, b5, b6, b7,
                 b8, b9, b10, b11,
                 b12, b13, b14, b15,
                 b16, b17, b18, b19,
                 b20, b21, b22, b23,
                 b24, b25, b26, b27,
                 b28, b29, b30, b31,
                 b32, b33, b34, b35,
                 b36, b37, b38, b39,
                 b40, b41, b42, b43,
                 b44, b45, b46, b47,
                 b48, b49, b50, b51,
                 b52, b53, b54, b55,
                 b56, b57, b58, b59,
                 b60, b61, b62, b63]) <
      (limbs 32 [m0, m1, m2, m3,
                 m4, m5, m6, m7,
                 m8, m9, m10, m11,
                 m12, m13, m14, m15,
                 m16, m17, m18, m19,
                 m20, m21, m22, m23,
                 m24, m25, m26, m27,
                 m28, m29, m30, m31,
                 m32, m33, m34, m35,
                 m36, m37, m38, m39,
                 m40, m41, m42, m43,
                 m44, m45, m46, m47,
                 m48, m49, m50, m51,
                 m52, m53, m54, m55,
                 m56, m57, m58, m59,
                 m60, m61, m62, m63])
    ]
}

(* mult 	a0,	b0 *)
mov accHH 0@uint32;
mull accHL accL a0 b0;
(* lmul 	alpha0,	q0 *)
mull tmp q0 accL alpha0;
(* macc 	q0,	m0 *)
mull H L q0 m0;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	q1 *)
mov q1 accL;
(* NOTE: q1 == 0 *)
assert eqmod q1 0 (2**32) && true;
assume eq q1 0 && true;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b1 *)
mull H L a0 b1;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m1 *)
mull H L q0 m1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u0 *)
mov u0 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b2 *)
mull H L a0 b2;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m2 *)
mull H L q0 m2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u1 *)
mov u1 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b3 *)
mull H L a0 b3;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m3 *)
mull H L q0 m3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u2 *)
mov u2 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b4 *)
mull H L a0 b4;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m4 *)
mull H L q0 m4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u3 *)
mov u3 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b5 *)
mull H L a0 b5;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m5 *)
mull H L q0 m5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u4 *)
mov u4 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b6 *)
mull H L a0 b6;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m6 *)
mull H L q0 m6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u5 *)
mov u5 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b7 *)
mull H L a0 b7;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m7 *)
mull H L q0 m7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u6 *)
mov u6 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b8 *)
mull H L a0 b8;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m8 *)
mull H L q0 m8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u7 *)
mov u7 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b9 *)
mull H L a0 b9;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m9 *)
mull H L q0 m9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u8 *)
mov u8 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b10 *)
mull H L a0 b10;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m10 *)
mull H L q0 m10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u9 *)
mov u9 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b11 *)
mull H L a0 b11;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m11 *)
mull H L q0 m11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u10 *)
mov u10 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b12 *)
mull H L a0 b12;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m12 *)
mull H L q0 m12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u11 *)
mov u11 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b13 *)
mull H L a0 b13;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m13 *)
mull H L q0 m13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u12 *)
mov u12 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b14 *)
mull H L a0 b14;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m14 *)
mull H L q0 m14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u13 *)
mov u13 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b15 *)
mull H L a0 b15;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m15 *)
mull H L q0 m15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u14 *)
mov u14 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b16 *)
mull H L a0 b16;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m16 *)
mull H L q0 m16;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u15 *)
mov u15 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b17 *)
mull H L a0 b17;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m17 *)
mull H L q0 m17;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u16 *)
mov u16 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b18 *)
mull H L a0 b18;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m18 *)
mull H L q0 m18;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u17 *)
mov u17 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b19 *)
mull H L a0 b19;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m19 *)
mull H L q0 m19;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u18 *)
mov u18 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b20 *)
mull H L a0 b20;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m20 *)
mull H L q0 m20;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u19 *)
mov u19 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b21 *)
mull H L a0 b21;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m21 *)
mull H L q0 m21;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u20 *)
mov u20 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b22 *)
mull H L a0 b22;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m22 *)
mull H L q0 m22;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u21 *)
mov u21 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b23 *)
mull H L a0 b23;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m23 *)
mull H L q0 m23;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u22 *)
mov u22 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b24 *)
mull H L a0 b24;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m24 *)
mull H L q0 m24;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u23 *)
mov u23 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b25 *)
mull H L a0 b25;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m25 *)
mull H L q0 m25;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u24 *)
mov u24 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b26 *)
mull H L a0 b26;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m26 *)
mull H L q0 m26;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u25 *)
mov u25 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b27 *)
mull H L a0 b27;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m27 *)
mull H L q0 m27;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u26 *)
mov u26 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b28 *)
mull H L a0 b28;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m28 *)
mull H L q0 m28;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u27 *)
mov u27 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b29 *)
mull H L a0 b29;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m29 *)
mull H L q0 m29;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u28 *)
mov u28 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b30 *)
mull H L a0 b30;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m30 *)
mull H L q0 m30;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u29 *)
mov u29 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b31 *)
mull H L a0 b31;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m31 *)
mull H L q0 m31;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u30 *)
mov u30 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b32 *)
mull H L a0 b32;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m32 *)
mull H L q0 m32;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u31 *)
mov u31 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b33 *)
mull H L a0 b33;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m33 *)
mull H L q0 m33;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u32 *)
mov u32 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b34 *)
mull H L a0 b34;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m34 *)
mull H L q0 m34;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u33 *)
mov u33 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b35 *)
mull H L a0 b35;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m35 *)
mull H L q0 m35;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u34 *)
mov u34 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b36 *)
mull H L a0 b36;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m36 *)
mull H L q0 m36;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u35 *)
mov u35 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b37 *)
mull H L a0 b37;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m37 *)
mull H L q0 m37;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u36 *)
mov u36 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b38 *)
mull H L a0 b38;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m38 *)
mull H L q0 m38;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u37 *)
mov u37 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b39 *)
mull H L a0 b39;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m39 *)
mull H L q0 m39;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u38 *)
mov u38 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b40 *)
mull H L a0 b40;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m40 *)
mull H L q0 m40;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u39 *)
mov u39 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b41 *)
mull H L a0 b41;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m41 *)
mull H L q0 m41;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u40 *)
mov u40 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b42 *)
mull H L a0 b42;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m42 *)
mull H L q0 m42;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u41 *)
mov u41 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b43 *)
mull H L a0 b43;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m43 *)
mull H L q0 m43;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u42 *)
mov u42 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b44 *)
mull H L a0 b44;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m44 *)
mull H L q0 m44;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u43 *)
mov u43 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b45 *)
mull H L a0 b45;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m45 *)
mull H L q0 m45;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u44 *)
mov u44 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b46 *)
mull H L a0 b46;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m46 *)
mull H L q0 m46;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u45 *)
mov u45 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b47 *)
mull H L a0 b47;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m47 *)
mull H L q0 m47;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u46 *)
mov u46 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b48 *)
mull H L a0 b48;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m48 *)
mull H L q0 m48;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u47 *)
mov u47 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b49 *)
mull H L a0 b49;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m49 *)
mull H L q0 m49;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u48 *)
mov u48 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b50 *)
mull H L a0 b50;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m50 *)
mull H L q0 m50;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u49 *)
mov u49 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b51 *)
mull H L a0 b51;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m51 *)
mull H L q0 m51;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u50 *)
mov u50 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b52 *)
mull H L a0 b52;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m52 *)
mull H L q0 m52;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u51 *)
mov u51 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b53 *)
mull H L a0 b53;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m53 *)
mull H L q0 m53;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u52 *)
mov u52 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b54 *)
mull H L a0 b54;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m54 *)
mull H L q0 m54;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u53 *)
mov u53 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b55 *)
mull H L a0 b55;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m55 *)
mull H L q0 m55;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u54 *)
mov u54 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b56 *)
mull H L a0 b56;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m56 *)
mull H L q0 m56;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u55 *)
mov u55 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b57 *)
mull H L a0 b57;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m57 *)
mull H L q0 m57;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u56 *)
mov u56 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b58 *)
mull H L a0 b58;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m58 *)
mull H L q0 m58;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u57 *)
mov u57 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b59 *)
mull H L a0 b59;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m59 *)
mull H L q0 m59;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u58 *)
mov u58 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b60 *)
mull H L a0 b60;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m60 *)
mull H L q0 m60;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u59 *)
mov u59 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b61 *)
mull H L a0 b61;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m61 *)
mull H L q0 m61;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u60 *)
mov u60 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b62 *)
mull H L a0 b62;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m62 *)
mull H L q0 m62;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u61 *)
mov u61 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* macc 	aa0,	b63 *)
mull H L a0 b63;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	q0,	m63 *)
mull H L q0 m63;
adds carry accL accL L;
adcs carry accHL accHL H carry;
adc accHH accHH 0@uint32 carry;
(* shift	u62 *)
mov u62 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* shift	u63 *)
mov u63 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* shift	u64 *)
mov u64 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;

{
    eqmod
      (
        (limbs 32 [a0])
        *
        (limbs 32 [b0, b1, b2, b3,
                   b4, b5, b6, b7,
                   b8, b9, b10, b11,
                   b12, b13, b14, b15,
                   b16, b17, b18, b19,
                   b20, b21, b22, b23,
                   b24, b25, b26, b27,
                   b28, b29, b30, b31,
                   b32, b33, b34, b35,
                   b36, b37, b38, b39,
                   b40, b41, b42, b43,
                   b44, b45, b46, b47,
                   b48, b49, b50, b51,
                   b52, b53, b54, b55,
                   b56, b57, b58, b59,
                   b60, b61, b62, b63])
      )

      (
        (limbs 32 [0,
                   u0, u1, u2, u3,
                   u4, u5, u6, u7,
                   u8, u9, u10, u11,
                   u12, u13, u14, u15,
                   u16, u17, u18, u19,
                   u20, u21, u22, u23,
                   u24, u25, u26, u27,
                   u28, u29, u30, u31,
                   u32, u33, u34, u35,
                   u36, u37, u38, u39,
                   u40, u41, u42, u43,
                   u44, u45, u46, u47,
                   u48, u49, u50, u51,
                   u52, u53, u54, u55,
                   u56, u57, u58, u59,
                   u60, u61, u62, u63,
                   u64])
      )

      (
        (limbs 32 [m0, m1, m2, m3,
                   m4, m5, m6, m7,
                   m8, m9, m10, m11,
                   m12, m13, m14, m15,
                   m16, m17, m18, m19,
                   m20, m21, m22, m23,
                   m24, m25, m26, m27,
                   m28, m29, m30, m31,
                   m32, m33, m34, m35,
                   m36, m37, m38, m39,
                   m40, m41, m42, m43,
                   m44, m45, m46, m47,
                   m48, m49, m50, m51,
                   m52, m53, m54, m55,
                   m56, m57, m58, m59,
                   m60, m61, m62, m63])
      )
&&
    and [
      u64 < const 32 2,
      (limbs 32 [u0, u1, u2, u3,
                 u4, u5, u6, u7,
                 u8, u9, u10, u11,
                 u12, u13, u14, u15,
                 u16, u17, u18, u19,
                 u20, u21, u22, u23,
                 u24, u25, u26, u27,
                 u28, u29, u30, u31,
                 u32, u33, u34, u35,
                 u36, u37, u38, u39,
                 u40, u41, u42, u43,
                 u44, u45, u46, u47,
                 u48, u49, u50, u51,
                 u52, u53, u54, u55,
                 u56, u57, u58, u59,
                 u60, u61, u62, u63,
                 u64]) <
      (mul const 2080 2
              (limbs 32 [m0, m1, m2, m3,
                         m4, m5, m6, m7,
                         m8, m9, m10, m11,
                         m12, m13, m14, m15,
                         m16, m17, m18, m19,
                         m20, m21, m22, m23,
                         m24, m25, m26, m27,
                         m28, m29, m30, m31,
                         m32, m33, m34, m35,
                         m36, m37, m38, m39,
                         m40, m41, m42, m43,
                         m44, m45, m46, m47,
                         m48, m49, m50, m51,
                         m52, m53, m54, m55,
                         m56, m57, m58, m59,
                         m60, m61, m62, m63,
                         const 32 0])) ]
}

