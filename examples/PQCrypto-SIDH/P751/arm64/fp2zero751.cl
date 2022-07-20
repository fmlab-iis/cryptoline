(* quine: -v -isafety fp2zero751.cl
Parsing Cryptoline file:                [OK]            0.001071 seconds
Checking well-formedness:               [OK]            0.000250 seconds
Transforming to SSA form:               [OK]            0.000113 seconds
Normalizing specification:              [OK]            0.000087 seconds
Rewriting assignments:                  [OK]            0.000238 seconds
Verifying program safety:               [OK]            0.001074 seconds
Verifying range specification:          [OK]            0.079801 seconds
Rewriting value-preserved casting:      [OK]            0.000017 seconds
Verifying algebraic specification:      [OK]            0.000429 seconds
Verification result:                    [OK]            0.083570 seconds
*)

proc main () =
{
  true
  &&
  true
}

(* #! -> SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* stp	xzr, xzr, [x0]                              #! EA = L0xffffffffe238; PC = 0xaaaaaaaae160 *)
mov L0xffffffffe238 0@uint64;
mov L0xffffffffe240 0@uint64;
(* stp	xzr, xzr, [x0, #16]                         #! EA = L0xffffffffe248; PC = 0xaaaaaaaae164 *)
mov L0xffffffffe248 0@uint64;
mov L0xffffffffe250 0@uint64;
(* stp	xzr, xzr, [x0, #32]                         #! EA = L0xffffffffe258; PC = 0xaaaaaaaae168 *)
mov L0xffffffffe258 0@uint64;
mov L0xffffffffe260 0@uint64;
(* stp	xzr, xzr, [x0, #48]                         #! EA = L0xffffffffe268; PC = 0xaaaaaaaae16c *)
mov L0xffffffffe268 0@uint64;
mov L0xffffffffe270 0@uint64;
(* stp	xzr, xzr, [x0, #64]                         #! EA = L0xffffffffe278; PC = 0xaaaaaaaae170 *)
mov L0xffffffffe278 0@uint64;
mov L0xffffffffe280 0@uint64;
(* stp	xzr, xzr, [x0, #80]                         #! EA = L0xffffffffe288; PC = 0xaaaaaaaae174 *)
mov L0xffffffffe288 0@uint64;
mov L0xffffffffe290 0@uint64;
(* stp	xzr, xzr, [x0, #96]                         #! EA = L0xffffffffe298; PC = 0xaaaaaaaae178 *)
mov L0xffffffffe298 0@uint64;
mov L0xffffffffe2a0 0@uint64;
(* stp	xzr, xzr, [x0, #112]                        #! EA = L0xffffffffe2a8; PC = 0xaaaaaaaae17c *)
mov L0xffffffffe2a8 0@uint64;
mov L0xffffffffe2b0 0@uint64;
(* stp	xzr, xzr, [x0, #128]                        #! EA = L0xffffffffe2b8; PC = 0xaaaaaaaae180 *)
mov L0xffffffffe2b8 0@uint64;
mov L0xffffffffe2c0 0@uint64;
(* stp	xzr, xzr, [x0, #144]                        #! EA = L0xffffffffe2c8; PC = 0xaaaaaaaae184 *)
mov L0xffffffffe2c8 0@uint64;
mov L0xffffffffe2d0 0@uint64;
(* stp	xzr, xzr, [x0, #160]                        #! EA = L0xffffffffe2d8; PC = 0xaaaaaaaae188 *)
mov L0xffffffffe2d8 0@uint64;
mov L0xffffffffe2e0 0@uint64;
(* stp	xzr, xzr, [x0, #176]                        #! EA = L0xffffffffe2e8; PC = 0xaaaaaaaae18c *)
mov L0xffffffffe2e8 0@uint64;
mov L0xffffffffe2f0 0@uint64;
(* #! <- SP = 0xffffffffe0f0 *)
#! 0xffffffffe0f0 = 0xffffffffe0f0;
(* #ret                                            #! PC = 0xaaaaaaaae190 *)
#ret                                            #! 0xaaaaaaaae190 = 0xaaaaaaaae190;

mov cr0 L0xffffffffe238; mov cr1 L0xffffffffe240; mov cr2 L0xffffffffe248;
mov cr3 L0xffffffffe250; mov cr4 L0xffffffffe258; mov cr5 L0xffffffffe260;
mov cr6 L0xffffffffe268; mov cr7 L0xffffffffe270; mov cr8 L0xffffffffe278;
mov cr9 L0xffffffffe280; mov cra L0xffffffffe288; mov crb L0xffffffffe290;
mov ci0 L0xffffffffe298; mov ci1 L0xffffffffe2a0; mov ci2 L0xffffffffe2a8;
mov ci3 L0xffffffffe2b0; mov ci4 L0xffffffffe2b8; mov ci5 L0xffffffffe2c0;
mov ci6 L0xffffffffe2c8; mov ci7 L0xffffffffe2d0; mov ci8 L0xffffffffe2d8;
mov ci9 L0xffffffffe2e0; mov cia L0xffffffffe2e8; mov cib L0xffffffffe2f0;

{
  true
&&
  and [limbs 64 [cr0,cr1,cr2,cr3,cr4,cr5,cr6,cr7,cr8,cr9,cra,crb] = 0@768,
       limbs 64 [ci0,ci1,ci2,ci3,ci4,ci5,ci6,ci7,ci8,ci9,cia,cib] = 0@768]
}

