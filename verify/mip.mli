
type mip_var = IVar of Ast.Cryptoline.var | CVar of Ast.Cryptoline.var

val of_espec : Cas.var_gen -> Ast.Cryptoline.espec ->
               Cas.var_gen * (Ast.Cryptoline.var list *
                              Ast.Cryptoline.var list *
                              Ast.Cryptoline.ebexp list) list
