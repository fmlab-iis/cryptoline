proc main() =
{ true && true }

mov %x [1@uint64, 2@uint64, 3@uint64, 4@uint64];
mov %y [1@uint64, 0@uint64, 3@uint64, 0@uint64];
setne %eqr1 %x %y;
setne %eqrn@uint64[4] %x %y;
setne [eqr32_0@uint32, eqr32_1, eqr32_2, eqr32_3] %x %y;
mov [eqr1_0, eqr1_1, eqr1_2, eqr1_3] %eqr1;
mov [eqrn_0, eqrn_1, eqrn_2, eqrn_3] %eqrn;

{
  and [
    eqr1_0 = 0,
    eqr1_2 = 0,
    eqrn_0 = 0,
    eqrn_2 = 0,
    eqr32_0 = 0,
    eqr32_2 = 0
  ]
  &&
  and [
    eqr1_0 = 0@1,
    eqr1_1 = 1@1,
    eqr1_2 = 0@1,
    eqr1_3 = 1@1,
    eqrn_0 = 0x0000000000000000@64,
    eqrn_1 = 0xFFFFFFFFFFFFFFFF@64,
    eqrn_2 = 0x0000000000000000@64,
    eqrn_3 = 0xFFFFFFFFFFFFFFFF@64,
    eqr32_0 = 0x00000000@32,
    eqr32_1 = 0xFFFFFFFF@32,
    eqr32_2 = 0x00000000@32,
    eqr32_3 = 0xFFFFFFFF@32
  ]
}
