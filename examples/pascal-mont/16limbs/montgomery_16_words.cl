proc main (
  uint32 a0, uint32 a1, uint32 a2, uint32 a3, uint32 a4, uint32 a5, uint32 a6, uint32 a7, uint32 a8, uint32 a9, uint32 a10, uint32 a11, uint32 a12, uint32 a13, uint32 a14, uint32 a15,
  uint32 b0, uint32 b1, uint32 b2, uint32 b3, uint32 b4, uint32 b5, uint32 b6, uint32 b7, uint32 b8, uint32 b9, uint32 b10, uint32 b11, uint32 b12, uint32 b13, uint32 b14, uint32 b15,
  uint32 m0, uint32 m1, uint32 m2, uint32 m3, uint32 m4, uint32 m5, uint32 m6, uint32 m7, uint32 m8, uint32 m9, uint32 m10, uint32 m11, uint32 m12, uint32 m13, uint32 m14, uint32 m15,
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
            (limbs 32 [ m0,  m1,  m2,  m3,
                        m4,  m5,  m6,  m7,
                        m8,  m9, m10, m11,
                       m12, m13, m14, m15])
          )
          +
          1
        )

        0

        (limbs 32 [0, 1])
    ]
&&
  and
    [
      (limbs 32 [ a0,  a1,  a2,  a3,
                  a4,  a5,  a6,  a7,
                  a8,  a9, a10, a11,
                 a12, a13, a14, a15]) <
      (limbs 32 [ m0,  m1,  m2,  m3,
                  m4,  m5,  m6,  m7,
                  m8,  m9, m10, m11,
                 m12, m13, m14, m15]),
      (limbs 32 [ b0,  b1,  b2,  b3,
                  b4,  b5,  b6,  b7,
                  b8,  b9, b10, b11,
                 b12, b13, b14, b15]) <
      (limbs 32 [ m0,  m1,  m2,  m3,
                  m4,  m5,  m6,  m7,
                  m8,  m9, m10, m11,
                 m12, m13, m14, m15])
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
(* macc 	a0,	b1 *)
mull H L a0 b1;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b2 *)
mull H L a0 b2;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b3 *)
mull H L a0 b3;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b4 *)
mull H L a0 b4;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b5 *)
mull H L a0 b5;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b6 *)
mull H L a0 b6;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b7 *)
mull H L a0 b7;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
(* NOTE: ignore carry because it is zero *)
clear carry;
adcs carry accHL accHL H carry;
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
(* macc 	a0,	b8 *)
mull H L a0 b8;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b9 *)
mull H L a0 b9;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b10 *)
mull H L a0 b10;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b11 *)
mull H L a0 b11;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b12 *)
mull H L a0 b12;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b13 *)
mull H L a0 b13;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b14 *)
mull H L a0 b14;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a0,	b15 *)
mull H L a0 b15;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* mult 	a1,	b0 *)
mov accHH 0@uint32;
mull accHL accL a1 b0;
(* macc 	u0,	1 *)
adds carry accL accL u0;
adcs carry accHL accHL H carry;
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
(* macc 	a1,	b1 *)
mull H L a1 b1;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
clear carry;
adc accHH accHH 0@uint32 carry;
(* macc 	u1,	1 *)
adds carry accL accL u1;
adcs carry accHL accHL H carry;
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
(* macc 	a1,	b2 *)
mull H L a1 b2;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b3 *)
mull H L a1 b3;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b4 *)
mull H L a1 b4;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b5 *)
mull H L a1 b5;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b6 *)
mull H L a1 b6;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b7 *)
mull H L a1 b7;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b8 *)
mull H L a1 b8;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b9 *)
mull H L a1 b9;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b10 *)
mull H L a1 b10;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b11 *)
mull H L a1 b11;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b12 *)
mull H L a1 b12;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b13 *)
mull H L a1 b13;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b14 *)
mull H L a1 b14;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a1,	b15 *)
mull H L a1 b15;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
(* adcs carry accHL accHL H carry; *)
(* NOTE: ignore carry because it is zero *)
adc accHL accHL H carry;
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
(* macc 	a2,	b1 *)
mull H L a2 b1;
adds carry accL accL L;
(* adcs carry accHL accHL H carry; *)
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
(* macc 	a2,	b2 *)
mull H L a2 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b3 *)
mull H L a2 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b4 *)
mull H L a2 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b5 *)
mull H L a2 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b6 *)
mull H L a2 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b7 *)
mull H L a2 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b8 *)
mull H L a2 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b9 *)
mull H L a2 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b10 *)
mull H L a2 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b11 *)
mull H L a2 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b12 *)
mull H L a2 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b13 *)
mull H L a2 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b14 *)
mull H L a2 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a2,	b15 *)
mull H L a2 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* macc 	a3,	b1 *)
mull H L a3 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b2 *)
mull H L a3 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b3 *)
mull H L a3 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b4 *)
mull H L a3 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b5 *)
mull H L a3 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b6 *)
mull H L a3 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b7 *)
mull H L a3 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b8 *)
mull H L a3 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b9 *)
mull H L a3 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b10 *)
mull H L a3 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b11 *)
mull H L a3 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b12 *)
mull H L a3 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b13 *)
mull H L a3 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b14 *)
mull H L a3 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a3,	b15 *)
mull H L a3 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a4,	b0 *)
mov accHH 0@uint32;
mull accHL accL a4 b0;
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
(* macc 	a4,	b1 *)
mull H L a4 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b2 *)
mull H L a4 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b3 *)
mull H L a4 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b4 *)
mull H L a4 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b5 *)
mull H L a4 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b6 *)
mull H L a4 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b7 *)
mull H L a4 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b8 *)
mull H L a4 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b9 *)
mull H L a4 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b10 *)
mull H L a4 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b11 *)
mull H L a4 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b12 *)
mull H L a4 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b13 *)
mull H L a4 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b14 *)
mull H L a4 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a4,	b15 *)
mull H L a4 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a5,	b0 *)
mov accHH 0@uint32;
mull accHL accL a5 b0;
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
(* macc 	a5,	b1 *)
mull H L a5 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b2 *)
mull H L a5 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b3 *)
mull H L a5 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b4 *)
mull H L a5 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b5 *)
mull H L a5 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b6 *)
mull H L a5 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b7 *)
mull H L a5 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b8 *)
mull H L a5 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b9 *)
mull H L a5 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b10 *)
mull H L a5 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b11 *)
mull H L a5 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b12 *)
mull H L a5 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b13 *)
mull H L a5 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b14 *)
mull H L a5 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a5,	b15 *)
mull H L a5 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a6,	b0 *)
mov accHH 0@uint32;
mull accHL accL a6 b0;
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
(* macc 	a6,	b1 *)
mull H L a6 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b2 *)
mull H L a6 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b3 *)
mull H L a6 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b4 *)
mull H L a6 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b5 *)
mull H L a6 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b6 *)
mull H L a6 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b7 *)
mull H L a6 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b8 *)
mull H L a6 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b9 *)
mull H L a6 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b10 *)
mull H L a6 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b11 *)
mull H L a6 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b12 *)
mull H L a6 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b13 *)
mull H L a6 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b14 *)
mull H L a6 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a6,	b15 *)
mull H L a6 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a7,	b0 *)
mov accHH 0@uint32;
mull accHL accL a7 b0;
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
(* macc 	a7,	b1 *)
mull H L a7 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b2 *)
mull H L a7 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b3 *)
mull H L a7 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b4 *)
mull H L a7 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b5 *)
mull H L a7 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b6 *)
mull H L a7 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b7 *)
mull H L a7 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b8 *)
mull H L a7 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b9 *)
mull H L a7 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b10 *)
mull H L a7 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b11 *)
mull H L a7 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b12 *)
mull H L a7 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b13 *)
mull H L a7 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b14 *)
mull H L a7 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a7,	b15 *)
mull H L a7 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a8,	b0 *)
mov accHH 0@uint32;
mull accHL accL a8 b0;
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
(* macc 	a8,	b1 *)
mull H L a8 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b2 *)
mull H L a8 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b3 *)
mull H L a8 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b4 *)
mull H L a8 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b5 *)
mull H L a8 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b6 *)
mull H L a8 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b7 *)
mull H L a8 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b8 *)
mull H L a8 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b9 *)
mull H L a8 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b10 *)
mull H L a8 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b11 *)
mull H L a8 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b12 *)
mull H L a8 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b13 *)
mull H L a8 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b14 *)
mull H L a8 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a8,	b15 *)
mull H L a8 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a9,	b0 *)
mov accHH 0@uint32;
mull accHL accL a9 b0;
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
(* macc 	a9,	b1 *)
mull H L a9 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b2 *)
mull H L a9 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b3 *)
mull H L a9 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b4 *)
mull H L a9 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b5 *)
mull H L a9 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b6 *)
mull H L a9 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b7 *)
mull H L a9 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b8 *)
mull H L a9 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b9 *)
mull H L a9 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b10 *)
mull H L a9 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b11 *)
mull H L a9 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b12 *)
mull H L a9 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b13 *)
mull H L a9 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b14 *)
mull H L a9 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a9,	b15 *)
mull H L a9 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a10,	b0 *)
mov accHH 0@uint32;
mull accHL accL a10 b0;
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
(* macc 	a10,	b1 *)
mull H L a10 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b2 *)
mull H L a10 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b3 *)
mull H L a10 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b4 *)
mull H L a10 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b5 *)
mull H L a10 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b6 *)
mull H L a10 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b7 *)
mull H L a10 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b8 *)
mull H L a10 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b9 *)
mull H L a10 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b10 *)
mull H L a10 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b11 *)
mull H L a10 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b12 *)
mull H L a10 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b13 *)
mull H L a10 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b14 *)
mull H L a10 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a10,	b15 *)
mull H L a10 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a11,	b0 *)
mov accHH 0@uint32;
mull accHL accL a11 b0;
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
(* macc 	a11,	b1 *)
mull H L a11 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b2 *)
mull H L a11 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b3 *)
mull H L a11 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b4 *)
mull H L a11 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b5 *)
mull H L a11 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b6 *)
mull H L a11 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b7 *)
mull H L a11 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b8 *)
mull H L a11 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b9 *)
mull H L a11 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b10 *)
mull H L a11 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b11 *)
mull H L a11 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b12 *)
mull H L a11 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b13 *)
mull H L a11 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b14 *)
mull H L a11 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a11,	b15 *)
mull H L a11 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a12,	b0 *)
mov accHH 0@uint32;
mull accHL accL a12 b0;
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
(* macc 	a12,	b1 *)
mull H L a12 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b2 *)
mull H L a12 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b3 *)
mull H L a12 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b4 *)
mull H L a12 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b5 *)
mull H L a12 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b6 *)
mull H L a12 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b7 *)
mull H L a12 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b8 *)
mull H L a12 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b9 *)
mull H L a12 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b10 *)
mull H L a12 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b11 *)
mull H L a12 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b12 *)
mull H L a12 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b13 *)
mull H L a12 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b14 *)
mull H L a12 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a12,	b15 *)
mull H L a12 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a13,	b0 *)
mov accHH 0@uint32;
mull accHL accL a13 b0;
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
(* macc 	a13,	b1 *)
mull H L a13 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b2 *)
mull H L a13 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b3 *)
mull H L a13 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b4 *)
mull H L a13 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b5 *)
mull H L a13 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b6 *)
mull H L a13 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b7 *)
mull H L a13 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b8 *)
mull H L a13 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b9 *)
mull H L a13 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b10 *)
mull H L a13 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b11 *)
mull H L a13 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b12 *)
mull H L a13 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b13 *)
mull H L a13 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b14 *)
mull H L a13 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a13,	b15 *)
mull H L a13 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a14,	b0 *)
mov accHH 0@uint32;
mull accHL accL a14 b0;
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
(* macc 	a14,	b1 *)
mull H L a14 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b2 *)
mull H L a14 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b3 *)
mull H L a14 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b4 *)
mull H L a14 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b5 *)
mull H L a14 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b6 *)
mull H L a14 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b7 *)
mull H L a14 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b8 *)
mull H L a14 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b9 *)
mull H L a14 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b10 *)
mull H L a14 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b11 *)
mull H L a14 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b12 *)
mull H L a14 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b13 *)
mull H L a14 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b14 *)
mull H L a14 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a14,	b15 *)
mull H L a14 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
(* mult 	a15,	b0 *)
mov accHH 0@uint32;
mull accHL accL a15 b0;
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
(* macc 	a15,	b1 *)
mull H L a15 b1;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b2 *)
mull H L a15 b2;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b3 *)
mull H L a15 b3;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b4 *)
mull H L a15 b4;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b5 *)
mull H L a15 b5;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b6 *)
mull H L a15 b6;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b7 *)
mull H L a15 b7;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b8 *)
mull H L a15 b8;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b9 *)
mull H L a15 b9;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b10 *)
mull H L a15 b10;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b11 *)
mull H L a15 b11;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b12 *)
mull H L a15 b12;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b13 *)
mull H L a15 b13;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b14 *)
mull H L a15 b14;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	a15,	b15 *)
mull H L a15 b15;
adds carry accL accL L;
adcs carry accHL accHL H carry;
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
(* macc 	u16,	1 *)
adds carry accL accL u16;
adcs carry accHL accHL 0@uint32 carry;
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
      (limbs 32 [ a0,  a1,  a2,  a3,
                  a4,  a5,  a6,  a7,
                  a8,  a9, a10, a11,
                 a12, a13, a14, a15])
      *
      (limbs 32 [ b0,  b1,  b2,  b3,
                  b4,  b5,  b6,  b7,
                  b8,  b9, b10, b11,
                 b12, b13, b14, b15])
    )

    (
      (limbs 32 [0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                 0, 0, 0, 0,
                  u0,  u1,  u2,  u3,
                  u4,  u5,  u6,  u7,
                  u8,  u9, u10, u11,
                 u12, u13, u14, u15,
                 u16])
    )

    (
      (limbs 32 [ m0,  m1,  m2,  m3,
                  m4,  m5,  m6,  m7,
                  m8,  m9, m10, m11,
                 m12, m13, m14, m15])
    )
&&
  and [
    u16 < const 32 2,
    (limbs 32 [ u0,  u1,  u2,  u3,
                u4,  u5,  u6,  u7,
                u8,  u9, u10, u11,
               u12, u13, u14, u15,
               u16]) <
    (mul const 544 2
            (limbs 32 [ m0,  m1,  m2,  m3,
                        m4,  m5,  m6,  m7,
                        m8,  m9, m10, m11,
                       m12, m13, m14, m15,
                       const 32 0])) ]
}
