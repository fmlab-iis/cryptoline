proc main(uint64 x, uint64 y, uint64 a, uint64 b) =
{ x = y && x = y }

mov a 3@uint64;
mov b 7@uint64;
seteq eqr1 x y;
seteq eqrn@uint32 x y;
seteq ner1 a b;
seteq nern@uint32 a b;

{ and [
    eqr1 = 1,
    eqrn = 2**32 - 1
    (* ner1 = 0 *) (* currently cannot prove this *)
    (* nern = 0 *) (* currently cannot prove this *)
  ]
  &&
  and [
    eqr1 = 1@1,
    eqrn = 0xFFFFFFFF@32,
    ner1 = 0@1,
    nern = 0x00000000@32
  ]
}
