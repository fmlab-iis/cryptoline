
val verify_safety_inc :
  int -> Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> (int * Ast.Cryptoline.instr * Qfbv.Std.bexp) list ->
  Common.round_result
val verify_assert : Common.var_gen -> Ast.Cryptoline.spec -> bool
val verify_eassert : Common.var_gen -> Ast.Cryptoline.spec -> bool
val verify_rassert : Common.var_gen -> Ast.Cryptoline.spec -> bool
val verify_rspec : Ast.Cryptoline.rspec -> bool
val verify_espec : Common.var_gen -> Ast.Cryptoline.espec -> bool
val verify_espec_cli : Ast.Cryptoline.espec -> bool
val verify_rspec_cli : Ast.Cryptoline.rspec -> bool
val verify_safety_cli : Ast.Cryptoline.rbexp -> Ast.Cryptoline.program -> bool
val verify_assert_cli : Ast.Cryptoline.spec -> bool
val verify_eassert_cli : Ast.Cryptoline.spec -> bool
val verify_rassert_cli : Ast.Cryptoline.spec -> bool
