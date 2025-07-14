(* quine: -v -disable_safety mod25519.cl
Parsing Cryptoline file:                [OK]            0.000836 seconds
Checking well-formedness:               [OK]            0.000217 seconds
Transforming to SSA form:               [OK]            0.000084 seconds
Normalizing specification:              [OK]            0.000100 seconds
Rewriting assignments:                  [OK]            0.000072 seconds
Verifying range specification:          [OK]            3.184798 seconds
Rewriting value-preserved casting:      [OK]            0.000034 seconds
Verifying algebraic specification:      [OK]            0.000549 seconds
Verification result:                    [OK]            3.187103 seconds
*)
proc main (uint64 a0, uint64 a1, uint64 a2, sint64 a3) =
{
  true
  &&
  true
}

mov rsi a0;
mov rcx a1;
mov r8  a2;
mov rdi a3;

(* mov  %rdi,%r9 *)
mov r9 rdi;
(* sar  $63,%r9 *)
ssplit r9 dontcare r9 63;
(* btr  $63,%rdi *)
subb carry dontcare 0x7fffffffffffffff@sint64 rdi;
and rdi@sint64 rdi 0x7fffffffffffffff@sint64;
(* and  $19,%r9 *)
and r9@uint64 19@uint64 r9;
(* add  $19,%r9 *)
adds carry r9 19@uint64 r9;
(* add  %r9,%rsi *)
adds carry rsi r9 rsi;
(* adc $0,%rcx *)
adcs carry rcx 0@uint64 rcx carry;
(* adc $0,%r8 *)
adcs carry r8 0@uint64 r8 carry;
(* adc $0,%rdi *)
adcs carry rdi 0@sint64 rdi carry;
(* mov  %rdi,%r9 *)
mov r9 rdi;
(* sar  $63,%r9 *)
ssplit r9 dontcare r9 63;
(* btr  $63,%rdi *)
subb carry dontcare 0x7fffffffffffffff@sint64 rdi;
and rdi@sint64 rdi 0x7fffffffffffffff@sint64;
(* and  $19,%r9 *)
and r9@uint64 19@uint64 r9;
(* add  %r9,%rsi *)
adds carry rsi r9 rsi;
(* adc $0,%rcx *)
adcs carry rcx 0@uint64 rcx carry;
(* adc $0,%r8 *)
adcs carry r8 0@uint64 r8 carry;
(* adc $0,%rdi *)
adcs carry rdi 0@sint64 rdi carry;
(* sub  $19,%rsi *)
subb carry rsi rsi 19@uint64;
(* sbb  $0,%rcx *)
sbbs carry rcx rcx 0@uint64 carry;
(* sbb  $0,%r8 *)
sbbs carry r8 r8 0@uint64 carry;
(* sbb  $0,%rdi *)
sbbs carry rdi rdi 0@sint64 carry;

mov b0 rsi;
mov b1 rcx;
mov b2 r8;
mov b3 rdi;

{
  true
  &&
  and[
      eqmod (limbs 64 [a0, a1, a2, a3])
            (limbs 64 [b0, b1, b2, b3])
            (2**(255) - 19)@256,

            limbs 64 [b0, b1, b2, b3] >=s 0@256,
            limbs 64 [b0, b1, b2, b3] <s (2**(255) - 19)@256

      ]
         
}

