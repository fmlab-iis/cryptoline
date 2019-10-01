proc main (
  uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4, uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9, uint32 a10, uint32 a11, uint32 a12, uint32 a13, uint32 a14, uint32 a15,
  uint32 b0, uint32 b1, uint32 b2, uint32 b3, uint32 b4, uint32 b5, uint32 b6, uint32 b7, uint32 b8, uint32 b9, uint32 b10, uint32 b11, uint32 b12, uint32 b13, uint32 b14, uint32 b15,
  uint32 m0, uint32 m1, uint32 m2, uint32 m3, uint32 m4, uint32 m5, uint32 m6, uint32 m7, uint32 m8, uint32 m9, uint32 m10, uint32 m11, uint32 m12, uint32 m13, uint32 m14, uint32 m15,
  uint32 u0, uint32 u1, uint32 u2, uint32 u3, uint32 u4, uint32 u5, uint32 u6, uint32 u7, uint32 u8, uint32 u9, uint32 u10, uint32 u11, uint32 u12, uint32 u13, uint32 u14, uint32 u15, uint32 u16,
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
                         m12, m13, m14, m15])
            )
            +
            1
          )

          0

          (limbs 32 [0, 1 ]),

        eqmod
          (
            (limbs 32 [a0, a1])
            *
            (limbs 32 [b0, b1, b2, b3,
                       b4, b5, b6, b7,
                       b8, b9, b10, b11,
                       b12, b13, b14, b15])
          )

          (
            (limbs 32 [0, 0,
                       u0, u1, u2, u3,
                       u4, u5, u6, u7,
                       u8, u9, u10, u11,
                       u12, u13, u14, u15,
                       u16])
          )

          (
            (limbs 32 [m0, m1, m2, m3,
                       m4, m5, m6, m7,
                       m8, m9, m10, m11,
                       m12, m13, m14, m15])
          )
      ]
&&
  and
    [
      u16 < const 32 2,
      (limbs 32 [a0, a1, a2, a3,
                 a4, a5, a6, a7,
                 a8, a9, a10, a11,
                 a12, a13, a14, a15]) <
      (limbs 32 [m0, m1, m2, m3,
                 m4, m5, m6, m7,
                 m8, m9, m10, m11,
                 m12, m13, m14, m15]),
      (limbs 32 [b0, b1, b2, b3,
                 b4, b5, b6, b7,
                 b8, b9, b10, b11,
                 b12, b13, b14, b15]) <
      (limbs 32 [m0, m1, m2, m3,
                 m4, m5, m6, m7,
                 m8, m9, m10, m11,
                 m12, m13, m14, m15]),
      (limbs 32 [u0, u1, u2, u3,
                 u4, u5, u6, u7,
                 u8, u9, u10, u11,
                 u12, u13, u14, u15,
                 u16]) <
      (mul const 544 2
              (limbs 32 [m0, m1, m2, m3,
                         m4, m5, m6, m7,
                         m8, m9, m10, m11,
                         m12, m13, m14, m15,
                         const 32 0]))
    ]
}

(* mult 	a2,	b0 *)
mov accHH 0@uint32;
mull accHL accL a2 b0;
(* macc 	u0,	1 *)
adds carry accL accL u0;
adcs carry accHL accHL 0@uint32 carry;
adc accHH accHH 0@uint32 carry;
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
(* macc 	aa2,	b1 *)
mull H L a2 b1;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u1,	1 *)
adds carry accL accL u1;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b2 *)
mull H L a2 b2;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u2,	1 *)
adds carry accL accL u2;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b3 *)
mull H L a2 b3;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u3,	1 *)
adds carry accL accL u3;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b4 *)
mull H L a2 b4;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u4,	1 *)
adds carry accL accL u4;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b5 *)
mull H L a2 b5;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u5,	1 *)
adds carry accL accL u5;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b6 *)
mull H L a2 b6;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u6,	1 *)
adds carry accL accL u6;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b7 *)
mull H L a2 b7;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u7,	1 *)
adds carry accL accL u7;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b8 *)
mull H L a2 b8;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u8,	1 *)
adds carry accL accL u8;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b9 *)
mull H L a2 b9;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u9,	1 *)
adds carry accL accL u9;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b10 *)
mull H L a2 b10;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u10,	1 *)
adds carry accL accL u10;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b11 *)
mull H L a2 b11;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u11,	1 *)
adds carry accL accL u11;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b12 *)
mull H L a2 b12;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u12,	1 *)
adds carry accL accL u12;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b13 *)
mull H L a2 b13;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u13,	1 *)
adds carry accL accL u13;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b14 *)
mull H L a2 b14;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u14,	1 *)
adds carry accL accL u14;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa2,	b15 *)
mull H L a2 b15;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u15,	1 *)
adds carry accL accL u15;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	uu16,	1 *)
adds carry accL accL u16;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL 0@uint32 carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* shift	u15 *)
mov u15 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* shift	u16 *)
mov u16 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* mult 	a3,	b0 *)
mov accHH 0@uint32;
mull accHL accL a3 b0;
(* macc 	u0,	1 *)
adds carry accL accL u0;
adcs carry accHL accHL 0@uint32 carry;
adc accHH accHH 0@uint32 carry;
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
(* macc 	aa3,	b1 *)
mull H L a3 b1;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u1,	1 *)
adds carry accL accL u1;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b2 *)
mull H L a3 b2;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u2,	1 *)
adds carry accL accL u2;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b3 *)
mull H L a3 b3;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u3,	1 *)
adds carry accL accL u3;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b4 *)
mull H L a3 b4;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u4,	1 *)
adds carry accL accL u4;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b5 *)
mull H L a3 b5;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u5,	1 *)
adds carry accL accL u5;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b6 *)
mull H L a3 b6;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u6,	1 *)
adds carry accL accL u6;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b7 *)
mull H L a3 b7;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u7,	1 *)
adds carry accL accL u7;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b8 *)
mull H L a3 b8;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u8,	1 *)
adds carry accL accL u8;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b9 *)
mull H L a3 b9;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u9,	1 *)
adds carry accL accL u9;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b10 *)
mull H L a3 b10;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u10,	1 *)
adds carry accL accL u10;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b11 *)
mull H L a3 b11;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u11,	1 *)
adds carry accL accL u11;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b12 *)
mull H L a3 b12;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u12,	1 *)
adds carry accL accL u12;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b13 *)
mull H L a3 b13;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u13,	1 *)
adds carry accL accL u13;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b14 *)
mull H L a3 b14;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u14,	1 *)
adds carry accL accL u14;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	aa3,	b15 *)
mull H L a3 b15;
adds carry accL accL L;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u15,	1 *)
adds carry accL accL u15;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	uu16,	1 *)
adds carry accL accL u16;
(* NOTE: ignore carry because it is zero *)
adc accHL accHL 0@uint32 carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* shift	u15 *)
mov u15 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;
(* shift	u16 *)
mov u16 accL;
mov accL accHL;
mov accHL accHH;
mov accHH 0@uint32;

{
    eqmod
      (
        (limbs 32 [a0, a1, a2, a3])
        *
        (limbs 32 [b0, b1, b2, b3,
                   b4, b5, b6, b7,
                   b8, b9, b10, b11,
                   b12, b13, b14, b15])
      )

      (
        (limbs 32 [0, 0, 0, 0,
                   u0, u1, u2, u3,
                   u4, u5, u6, u7,
                   u8, u9, u10, u11,
                   u12, u13, u14, u15,
                   u16])
      )

      (
        (limbs 32 [m0, m1, m2, m3,
                   m4, m5, m6, m7,
                   m8, m9, m10, m11,
                   m12, m13, m14, m15])
      )
&&
    and [
      u16 < const 32 2,
      (limbs 32 [u0, u1, u2, u3,
                 u4, u5, u6, u7,
                 u8, u9, u10, u11,
                 u12, u13, u14, u15,
                 u16]) <
      (mul const 544 2
              (limbs 32 [m0, m1, m2, m3,
                         m4, m5, m6, m7,
                         m8, m9, m10, m11,
                         m12, m13, m14, m15,
                         const 32 0])) ]
}
