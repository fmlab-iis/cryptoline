proc sha256Ch (uint32 x, uint32 y, uint32 z; uint32 r) =
{ true && true }
(* r = (x && y) ^ (~x && z) *)
and r0@uint32 x y;
not xnot@uint32 x;
and r1@uint32 xnot z;
xor r@uint32 r0 r1;
{ true && true }

proc sha256Maj (uint32 x, uint32 y, uint32 z; uint32 r) =
{ true && true }
(* r = (x && y) ^ (x && z) ^ (y && z) *)
and r0@uint32 x y;
and r1@uint32 x z;
and r2@uint32 y z;
xor r3@uint32 r0 r1;
xor r@uint32 r2 r3;
{ true && true }

proc sha256Sigma0 (uint32 x; uint32 r) =
{ true && true }
(* r = (x ror 2) ^ (x ror 13) ^ (x ror 22) *)
ror r0@uint32 x  2;
ror r1@uint32 x 13;
ror r2@uint32 x 22;
xor r3@uint32 r0 r1;
xor r@uint32 r2 r3;
{ true && true }

proc sha256Sigma1 (uint32 x; uint32 r) =
{ true && true }
(* r = (x ror 6) ^ (x ror 11) ^ (x ror 25) *)
ror r0@uint32 x  6;
ror r1@uint32 x 11;
ror r2@uint32 x 25;
xor r3@uint32 r0 r1;
xor r@uint32 r2 r3;
{ true && true }

proc sha256sigma0 (uint32 x, uint32 r) =
{ true && true }
(* r = (x ror 7) ^ (x ror 18) ^ (x >> 3) *)
ror r0@uint32 x  7;
ror r1@uint32 x 18;
split r2 dc x 3;
xor r3@uint32 r0 r1;
xor r@uint32 r2 r3;
{ true && true }

proc sha256sigma1 (uint32 x; uint32 r) =
{ true && true }
(* r = (x ror 17) ^ (x ror 19) ^ (x >> 10) *)
ror r0@uint32 x 17;
ror r1@uint32 x 19;
split r2 dc x 10;
xor r3@uint32 r0 r1;
xor r@uint32 r2 r3;
{ true && true }

proc sha256rnd (uint32 A, uint32 B, uint32 C, uint32 D,
                uint32 E, uint32 F, uint32 G, uint32 H,
                uint32 K, uint32 W;
                uint32 a, uint32 b, uint32 c, uint32 d,
                uint32 e, uint32 f, uint32 g, uint32 h) =
{ true && true }
call sha256Sigma1 (E, ESigma1);
call sha256Ch (E, F, G, EFGCh);
call sha256Sigma0 (A, ASigma0);
call sha256Maj (A, B, C, ABCMaj);

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
nondet A@uint32; nondet B@uint32; nondet C@uint32; nondet D@uint32;
nondet E@uint32; nondet F@uint32; nondet G@uint32; nondet H@uint32;
nondet K@uint32; nondet W@uint32;

call sha256rnd (A, B, C, D, E, F, G, H, K, W,
                a, b, c, d, e, f, g, h);
{ true && true }
