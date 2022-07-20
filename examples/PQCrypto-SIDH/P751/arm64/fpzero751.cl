(* quine: -v -isafety fpzero751.cl
Parsing Cryptoline file:                [OK]            0.000569 seconds
Checking well-formedness:               [OK]            0.000110 seconds
Transforming to SSA form:               [OK]            0.000047 seconds
Normalizing specification:              [OK]            0.000034 seconds
Rewriting assignments:                  [OK]            0.000093 seconds
Verifying program safety:               [OK]            0.000812 seconds
Verifying range specification:          [OK]            0.047529 seconds
Rewriting value-preserved casting:      [OK]            0.000012 seconds
Verifying algebraic specification:      [OK]            0.000361 seconds
Verification result:                    [OK]            0.049940 seconds
*)

proc main () =
{
  true
  &&
  true
}

(* #! -> SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* stp	xzr, xzr, [x0]                              #! EA = L0xffffffffe658; PC = 0xaaaaaaaadd10 *)
mov L0xffffffffe658 0@uint64;
mov L0xffffffffe660 0@uint64;
(* stp	xzr, xzr, [x0, #16]                         #! EA = L0xffffffffe668; PC = 0xaaaaaaaadd14 *)
mov L0xffffffffe668 0@uint64;
mov L0xffffffffe670 0@uint64;
(* stp	xzr, xzr, [x0, #32]                         #! EA = L0xffffffffe678; PC = 0xaaaaaaaadd18 *)
mov L0xffffffffe678 0@uint64;
mov L0xffffffffe680 0@uint64;
(* stp	xzr, xzr, [x0, #48]                         #! EA = L0xffffffffe688; PC = 0xaaaaaaaadd1c *)
mov L0xffffffffe688 0@uint64;
mov L0xffffffffe690 0@uint64;
(* stp	xzr, xzr, [x0, #64]                         #! EA = L0xffffffffe698; PC = 0xaaaaaaaadd20 *)
mov L0xffffffffe698 0@uint64;
mov L0xffffffffe6a0 0@uint64;
(* stp	xzr, xzr, [x0, #80]                         #! EA = L0xffffffffe6a8; PC = 0xaaaaaaaadd24 *)
mov L0xffffffffe6a8 0@uint64;
mov L0xffffffffe6b0 0@uint64;
(* #! <- SP = 0xffffffffe570 *)
#! 0xffffffffe570 = 0xffffffffe570;
(* #ret                                            #! PC = 0xaaaaaaaadd28 *)
#ret                                            #! 0xaaaaaaaadd28 = 0xaaaaaaaadd28;

mov c0 L0xffffffffe658; mov c1 L0xffffffffe660; mov c2 L0xffffffffe668;
mov c3 L0xffffffffe670; mov c4 L0xffffffffe678; mov c5 L0xffffffffe680;
mov c6 L0xffffffffe688; mov c7 L0xffffffffe690; mov c8 L0xffffffffe698;
mov c9 L0xffffffffe6a0; mov ca L0xffffffffe6a8; mov cb L0xffffffffe6b0;

{
  true
&&
  limbs 64 [c0,c1,c2,c3,c4,c5,c6,c7,c8,c9,ca,cb] = 0@768
}

