open Datatypes

type typ =
| Tuint of nat
| Tsint of nat

val sizeof_typ : typ -> nat
