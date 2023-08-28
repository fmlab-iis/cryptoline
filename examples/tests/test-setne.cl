proc main(uint64 x, uint64 y, uint64 a, uint64 b) =
{ x = y && x = y }

mov a 3@uint64;
mov b 7@uint64;
setne eqr1 x y;
setne eqrn@uint32 x y;
setne ner1 a b;
setne nern@uint32 a b;

{ and [
    eqr1 = 0,
    eqrn = 0
    (* ner1 = 1 *) (* currently cannot prove this *)
    (* nern = 2**32 - 1 *) (* currently cannot prove this *)
  ]
  &&
  and [
    eqr1 = 0@1,
    eqrn = 0x00000000@32,
    ner1 = 1@1,
    nern = 0xFFFFFFFF@32
  ]
}
