
let lnum = ref 1
let cnum = ref 0

let ztwo = Z.of_int 2

let rec big_pow x n =
  if Z.equal n Z.zero then Z.one
  else if Z.equal n Z.one then x
  else
    let y = big_pow x (Z.div n ztwo) in
    let z = Z.pow y 2 in
    if Z.equal (Z.rem n ztwo) Z.zero then z
    else Z.mul x z
