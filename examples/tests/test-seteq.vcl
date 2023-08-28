proc main() =
{ true && true }

mov %x [1@uint64, 2@uint64, 3@uint64, 4@uint64];
mov %y [1@uint64, 0@uint64, 3@uint64, 0@uint64];
seteq %eqr1 %x %y;
seteq %eqrn@uint64[4] %x %y;
seteq [eqr32_0@uint32, eqr32_1, eqr32_2, eqr32_3] %x %y;
mov [eqr1_0, eqr1_1, eqr1_2, eqr1_3] %eqr1;
mov [eqrn_0, eqrn_1, eqrn_2, eqrn_3] %eqrn;

{
  and [
    eqr1_0 = 1,
    eqr1_2 = 1,
    eqrn_0 = 2**64 - 1,
    eqrn_2 = 2**64 - 1,
    eqr32_0 = 2**32 - 1,
    eqr32_2 = 2**32 - 1
  ]
  &&
  and [
    eqr1_0 = 1@1,
    eqr1_1 = 0@1,
    eqr1_2 = 1@1,
    eqr1_3 = 0@1,
    eqrn_0 = 0xFFFFFFFFFFFFFFFF@64,
    eqrn_1 = 0x0000000000000000@64,
    eqrn_2 = 0xFFFFFFFFFFFFFFFF@64,
    eqrn_3 = 0x0000000000000000@64,
    eqr32_0 = 0xFFFFFFFF@32,
    eqr32_1 = 0x00000000@32,
    eqr32_2 = 0xFFFFFFFF@32,
    eqr32_3 = 0x00000000@32
  ]
}
