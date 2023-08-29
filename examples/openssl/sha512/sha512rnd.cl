proc sha512Ch (uint64 x, uint64 y, uint64 z; uint64 r) =
{ true && true }
(* r = (x && y) ^ (~x && z) *)
and r0@uint64 x y;
not xnot@uint64 x;
and r1@uint64 xnot z;
xor r@uint64 r0 r1;
{ true && true }

proc sha512Maj (uint64 x, uint64 y, uint64 z; uint64 r) =
{ true && true }
(* r = (x && y) ^ (x && z) ^ (y && z) *)
and r0@uint64 x y;
and r1@uint64 x z;
and r2@uint64 y z;
xor r3@uint64 r0 r1;
xor r@uint64 r2 r3;
{ true && true }

proc sha512Sigma0 (uint64 x; uint64 r) =
{ true && true }
(* r = (x ror 28) ^ (x ror 34) ^ (x ror 39) *)
ror r0@uint64 x 28;
ror r1@uint64 x 34;
ror r2@uint64 x 39;
xor r3@uint64 r0 r1;
xor r@uint64 r2 r3;
{ true && true }

proc sha512Sigma1 (uint64 x; uint64 r) =
{ true && true }
(* r = (x ror 14) ^ (x ror 18) ^ (x ror 41) *)
ror r0@uint64 x 14;
ror r1@uint64 x 18;
ror r2@uint64 x 41;
xor r3@uint64 r0 r1;
xor r@uint64 r2 r3;
{ true && true }

proc sha512sigma0 (uint64 x, uint64 r) =
{ true && true }
(* r = (x ror 1) ^ (x ror 8) ^ (x >> 7) *)
ror r0@uint64 x  1;
ror r1@uint64 x  8;
split r2 dc   x  7;
xor r3@uint64 r0 r1;
xor r@uint64 r2 r3;
{ true && true }

proc sha512sigma1 (uint64 x; uint64 r) =
{ true && true }
(* r = (x ror 19) ^ (x ror 61) ^ (x >> 6) *)
ror r0@uint64 x 19;
ror r1@uint64 x 61;
split r2 dc   x  6;
xor r3@uint64 r0 r1;
xor r@uint64 r2 r3;
{ true && true }

proc sha512rnd (uint64 A, uint64 B, uint64 C, uint64 D,
                uint64 E, uint64 F, uint64 G, uint64 H,
                uint64 K, uint64 W;
                uint64 a, uint64 b, uint64 c, uint64 d,
                uint64 e, uint64 f, uint64 g, uint64 h) =
{ true && true }
inline sha512Sigma1 (E, ESigma1);
inline sha512Ch (E, F, G, EFGCh);
inline sha512Sigma0 (A, ASigma0);
inline sha512Maj (A, B, C, ABCMaj);

(* T1 = H + Sigma1 (E) + Ch (E, F, G) + K + W *)
adds dc T00 H ESigma1;
adds dc T01 K W;
adds dc T02 T00 T01;
adds dc T1 T02 EFGCh;

(* T2 = Sigma0 (a) + Maj (a, b, c) *)
adds dc T2 ASigma0 ABCMaj;

mov h G;
mov g F;
mov f E;
adds dc e D T1;
mov d C;
mov c B;
mov d A;
adds dc a T1 T2;

{ true && true }

proc main () =
{ true && true }
nondet A@uint64; nondet B@uint64; nondet C@uint64; nondet D@uint64;
nondet E@uint64; nondet F@uint64; nondet G@uint64; nondet H@uint64;
nondet K@uint64; nondet W@uint64;

inline sha512rnd (A, B, C, D, E, F, G, H, K, W,
                a, b, c, d, e, f, g, h);
{ true && true }
