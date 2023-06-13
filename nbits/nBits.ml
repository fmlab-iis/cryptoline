
include Extracted
include Extra

let size = List.length

let ltB = ltB_lsb

let uaddo = addB_ovf

let usubo = borrow_subB

let to_nat = to_nat0

let to_coqN = to_N

let from_coqN = from_N

let to_coqZ = to_Z

let from_coqZ = from_Z

let from_chars = from_string

let udivB_eucl = udivB

let udivB = udivB'

let sdivB_eucl = sdivB'

let eqB bs1 bs2 = eq_op bitseq_eqType (Obj.magic bs1) (Obj.magic bs2)

let neB bs1 bs2 = not (eqB bs1 bs2)
