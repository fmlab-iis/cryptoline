
type mip_var

val is_ivar : mip_var -> bool
val is_cvar : mip_var -> bool
val var_of_mip : mip_var -> Ast.Cryptoline.var

val of_espec : Cas.var_gen -> Ast.Cryptoline.espec ->
               Cas.var_gen * (mip_var list * Ast.Cryptoline.ebexp list) list
