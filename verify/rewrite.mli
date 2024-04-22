
val is_assignment_under_moduli : Ast.Cryptoline.eexp -> Ast.Cryptoline.eexp list ->
                                 (Ast.Cryptoline.var * Ast.Cryptoline.eexp) option

val get_rewrite_pattern : Ast.Cryptoline.eexp ->
                          (Ast.Cryptoline.var * Ast.Cryptoline.eexp) option

val rewrite_assignments : Ast.Cryptoline.eexp list -> Ast.Cryptoline.eexp ->
                          Ast.Cryptoline.eexp list ->
                          Ast.Cryptoline.eexp list * Ast.Cryptoline.eexp

val rewrite_assignments' : Ast.Cryptoline.eexp list -> Ast.Cryptoline.eexp ->
                           Ast.Cryptoline.eexp list ->
                           Ast.Cryptoline.eexp list * Ast.Cryptoline.eexp

val rewrite_assignments_two_phase :
  (Ast.Cryptoline.eexp * 'a) list ->
  (Ast.Cryptoline.ebexp * Ast.Cryptoline.IS.t *
     Ast.Cryptoline.eexp * Ast.Cryptoline.eexp list) list ->
  Ast.Cryptoline.eexp list ->
  (Ast.Cryptoline.eexp * 'a) list *
    (Ast.Cryptoline.ebexp * Ast.Cryptoline.IS.t *
       Ast.Cryptoline.eexp * Ast.Cryptoline.eexp list) list

val rewrite_assignments_two_phase' :
  (Ast.Cryptoline.eexp * 'a) list ->
  (Ast.Cryptoline.ebexp * Ast.Cryptoline.IS.t *
     Ast.Cryptoline.eexp * Ast.Cryptoline.eexp list) list ->
  Ast.Cryptoline.eexp list ->
  (Ast.Cryptoline.eexp * 'a) list *
    (Ast.Cryptoline.ebexp * Ast.Cryptoline.IS.t *
       Ast.Cryptoline.eexp * Ast.Cryptoline.eexp list) list

