
# The purpose of this parser is to collect variables in possiblely
# ill-formed CryptoLine specifications. The parsing is not required
# to be precise.


import pyparsing as pp


# ========== Forward Declarations =====

pp_sca_const_exp = pp.Forward()
pp_sca_atom = pp.Forward()
pp_vec_atom = pp.Forward()
pp_eexp = pp.Forward()
pp_eexp_primary = pp.Forward()
pp_eexps = pp.Forward()
pp_ebexp = pp.Forward()
pp_ebexp_primary = pp.Forward()
pp_ebexps = pp.Forward()
pp_rexp = pp.Forward()
pp_rexp_primary = pp.Forward()
pp_rexps = pp.Forward()
pp_rbexp = pp.Forward()
pp_rbexp_primary = pp.Forward()
pp_rbexps = pp.Forward()


# ========== Tokens ==========

pp_nums = pp.Word(pp.nums)
pp_nums_seq = pp.DelimitedList(pp_nums, delim=",")
pp_true = pp.Keyword("true")
pp_uint = pp.Literal("uint")
pp_sint = pp.Literal("sint")
pp_int = pp.Literal("int")
pp_bit = pp.Keyword("bit")
pp_at = pp.Literal("@")
pp_percent = pp.Literal("%")
pp_lsquare = pp.Literal("[")
pp_rsquare = pp.Literal("]")
pp_lparen = pp.Literal("(")
pp_rparen = pp.Literal(")")
pp_semicolon = pp.Literal(";")
pp_colon = pp.Literal(":")
pp_dollar = pp.Literal("$")
pp_op_eq = pp.Literal("=")
pp_op_mul = pp.Literal("*")
pp_all = pp.Keyword("all")
pp_vbar = pp.Combine(pp.Literal("&&") + pp.Opt(pp.Literal("&")))
pp_id = pp.common.identifier()
pp_id_seq = pp.DelimitedList(pp_id, delim=",")

pp_instr_mov = pp.Keyword("mov")
pp_instr_extract = pp.Keyword("extract")
pp_instr_broadcast = pp.Keyword("broadcast")
pp_instr_shl = pp.Keyword("shl")
pp_instr_shls = pp.Keyword("shls")
pp_instr_shr = pp.Keyword("shr")
pp_instr_shrs = pp.Keyword("shrs")
pp_instr_sar = pp.Keyword("sar")
pp_instr_sars = pp.Keyword("sars")
pp_instr_cshl = pp.Keyword("cshl")
pp_instr_cshls = pp.Keyword("cshls")
pp_instr_cshr = pp.Keyword("cshr")
pp_instr_cshrs = pp.Keyword("cshrs")
pp_instr_rol = pp.Keyword("rol")
pp_instr_ror = pp.Keyword("ror")
pp_instr_clear = pp.Keyword("clear")
pp_instr_nondet = pp.Keyword("nondet")
pp_instr_cmov = pp.Keyword("cmov")
pp_instr_add = pp.Keyword("add")
pp_instr_adds = pp.Keyword("adds")
pp_instr_adc = pp.Keyword("adc")
pp_instr_adcs = pp.Keyword("adcs")
pp_instr_sub = pp.Keyword("sub")
pp_instr_subc = pp.Keyword("subc")
pp_instr_subb = pp.Keyword("subb")
pp_instr_sbc = pp.Keyword("sbc")
pp_instr_sbcs = pp.Keyword("sbcs")
pp_instr_sbb = pp.Keyword("sbb")
pp_instr_sbbs = pp.Keyword("sbbs")
pp_instr_mul = pp.Keyword("mul")
pp_instr_muls = pp.Keyword("muls")
pp_instr_mull = pp.Keyword("mull")
pp_instr_mulj = pp.Keyword("mulj")
pp_instr_split = pp.Keyword("split")
pp_instr_spl = pp.Keyword("spl")
pp_instr_uadd = pp.Keyword("uadd")
pp_instr_uadds = pp.Keyword("uadds")
pp_instr_uadc = pp.Keyword("uadc")
pp_instr_uadcs = pp.Keyword("uadcs")
pp_instr_usub = pp.Keyword("usub")
pp_instr_usubc = pp.Keyword("usubc")
pp_instr_usubb = pp.Keyword("usubb")
pp_instr_usbc = pp.Keyword("usbc")
pp_instr_usbcs = pp.Keyword("usbcs")
pp_instr_usbb = pp.Keyword("usbb")
pp_instr_usbbs = pp.Keyword("usbbs")
pp_instr_umul = pp.Keyword("umul")
pp_instr_umuls = pp.Keyword("umuls")
pp_instr_umull = pp.Keyword("umull")
pp_instr_umulj = pp.Keyword("umulj")
pp_instr_usplit = pp.Keyword("usplit")
pp_instr_uspl = pp.Keyword("uspl")
pp_instr_sadd = pp.Keyword("sadd")
pp_instr_sadds = pp.Keyword("sadds")
pp_instr_sadc = pp.Keyword("sadc")
pp_instr_sadcs = pp.Keyword("sadcs")
pp_instr_ssub = pp.Keyword("ssub")
pp_instr_ssubc = pp.Keyword("ssubc")
pp_instr_ssubb = pp.Keyword("ssubb")
pp_instr_ssbc = pp.Keyword("ssbc")
pp_instr_ssbcs = pp.Keyword("ssbcs")
pp_instr_ssbb = pp.Keyword("ssbb")
pp_instr_ssbbs = pp.Keyword("ssbbs")
pp_instr_smul = pp.Keyword("smul")
pp_instr_smuls = pp.Keyword("smuls")
pp_instr_smull = pp.Keyword("smull")
pp_instr_smulj = pp.Keyword("smulj")
pp_instr_ssplit = pp.Keyword("ssplit")
pp_instr_sspl = pp.Keyword("sspl")
pp_instr_set = pp.Keyword("set")
pp_instr_clear = pp.Keyword("clear")
pp_instr_seteq = pp.Keyword("seteq")
pp_instr_setne = pp.Keyword("setne")
pp_instr_and = pp.Keyword("and")
pp_instr_or = pp.Keyword("or")
pp_instr_xor = pp.Keyword("xor")
pp_instr_not = pp.Keyword("not")
pp_instr_cast = pp.Keyword("cast")
pp_instr_vpc = pp.Keyword("vpc")
pp_instr_join = pp.Keyword("join")
pp_instr_assert = pp.Keyword("assert")
pp_instr_eassert = pp.Keyword("eassert")
pp_instr_rassert = pp.Keyword("rassert")
pp_instr_assume = pp.Keyword("assume")
pp_instr_cut = pp.Keyword("cut")
pp_instr_ecut = pp.Keyword("ecut")
pp_instr_rcut = pp.Keyword("rcut")
pp_instr_ghost = pp.Keyword("ghost")
pp_instr_call = pp.Keyword("call")
pp_instr_inlinespec = pp.Keyword("inlinespec")
pp_instr_inline = pp.Keyword("inline")
pp_instr_nop = pp.Keyword("nop")

pp_precondition = pp.Keyword("precondition")
pp_cuts = pp.Keyword("cuts")
pp_all = pp.Keyword("all")
pp_assumes = pp.Keyword("assumes")
pp_ghosts = pp.Keyword("ghosts")
pp_algebra = pp.Keyword("algebra")
pp_solver = pp.Keyword("solver")
pp_smt = pp.Keyword("smt")
pp_range = pp.Keyword("range")
pp_qfbv = pp.Keyword("qfbv")
pp_nia = pp.Keyword("nia")
pp_lia = pp.Keyword("lia")
pp_op_ult = pp.Literal("<u") | pp.Literal("<")
pp_op_ule = pp.Literal("<=u") | pp.Literal("<=")
pp_op_ugt = pp.Literal(">u") | pp.Literal(">")
pp_op_uge = pp.Literal(">=u") | pp.Literal(">=")
pp_op_slt = pp.Literal("<s")
pp_op_sle = pp.Literal("<=s")
pp_op_sgt = pp.Literal(">s")
pp_op_sge = pp.Literal(">=s")
pp_and = pp.Keyword("and")
pp_or = pp.Keyword("or")
pp_op_land = pp.Literal("/\\")
pp_op_lor = pp.Literal("\\/")
pp_op_add = pp.Literal("+")
pp_op_sub = pp.Literal("-")
pp_op_mul = pp.Literal("*")
pp_op_pow = pp.Literal("**")
pp_eq = pp.Keyword("eq")
pp_eqmod = pp.Keyword("eqmod")
pp_equmod = pp.Keyword("equmod")
pp_eqsmod = pp.Keyword("eqsmod")
pp_eqsrem = pp.Keyword("eqsrem")
pp_neg = pp.Keyword("neg")
pp_add = pp.Keyword("add")
pp_sub = pp.Keyword("sub")
pp_mul = pp.Keyword("mul")
pp_sq = pp.Keyword("sq")
pp_adds = pp.Keyword("adds")
pp_muls = pp.Keyword("muls")
pp_op_sub = pp.Literal("-")
pp_ulimbs = pp.Keyword("limbs") | pp.Keyword("ulimbs")
pp_poly = pp.Keyword("poly")
pp_mod = pp.Keyword("mod")
pp_umod = pp.Keyword("umod")
pp_smod = pp.Keyword("smod")
pp_srem = pp.Keyword("srem")
pp_ult = pp.Keyword("ult")
pp_ule = pp.Keyword("ule")
pp_ugt = pp.Keyword("ugt")
pp_uge = pp.Keyword("uge")
pp_slt = pp.Keyword("slt")
pp_sle = pp.Keyword("sle")
pp_sgt = pp.Keyword("sgt")
pp_sge = pp.Keyword("sge")
pp_const = pp.Keyword("const")
pp_uext = pp.Keyword("uext")
pp_sext = pp.Keyword("sext")
pp_not = pp.Keyword("not")
pp_udiv = pp.Keyword("udiv")
pp_sdiv = pp.Keyword("sdiv")
pp_xor = pp.Keyword("xor")
pp_shl = pp.Keyword("shl")
pp_shr = pp.Keyword("shr")
pp_sar = pp.Keyword("sar")
pp_rol = pp.Keyword("rol")
pp_ror = pp.Keyword("ror")
pp_concat = pp.Keyword("concat")
pp_slimbs = pp.Keyword("slimbs")
pp_op_neg = pp.Literal("~")
pp_op_not = pp.Literal("!")
pp_op_and = pp.Literal("&")
pp_op_or = pp.Literal("|")
pp_op_xor = pp.Literal("^")
pp_op_shl = pp.Literal("<<")
pp_op_shr = pp.Literal(">>")
pp_op_sar = pp.Literal(">>a")


# ========== Types ==========

pp_sca_typ = \
    pp.Combine(pp_uint + pp_nums) \
  | pp.Combine(pp_sint + pp_nums) \
  | pp.Combine(pp_int + pp_nums) \
  | pp_bit
pp_vec_typ = pp.Combine(pp_sca_typ + pp_lsquare + pp_nums + pp_rsquare)
pp_at_sca_typ_opt = pp.Opt(pp_at + pp_sca_typ)
pp_at_vec_typ_opt = pp.Opt(pp_at + pp_vec_typ)
pp_typ = pp_sca_typ | pp_vec_typ


# ========== Variables ==========

collected_vars = set()

def collect_var(v):
  collected_vars.add(v[0])

# variable names
pp_sca_id = pp_id.copy()
pp_vec_id = pp.Combine(pp_percent + pp_id.copy())
pp_sca_id.add_parse_action(collect_var)
pp_vec_id.add_parse_action(collect_var)
pp_var_id = pp_sca_id | pp_vec_id
# variable possibly with type annotation
pp_sca_var = pp_sca_id + pp_at_sca_typ_opt \
           | pp_sca_typ + pp_sca_id
pp_vec_var = pp_vec_id + pp_at_vec_typ_opt \
           | pp_vec_typ + pp_vec_id
pp_var = pp_sca_var | pp_vec_var
# ghost variables
pp_gvar = \
    pp_typ + pp_var_id \
  | pp_var_id + pp_at + pp_typ
pp_gvars = pp.DelimitedList(pp_gvar, delim=",")


# ========== Constants ==========

pp_sca_const_exp <<= pp.infix_notation(
  pp_nums,
  [
    (pp.Literal("-")("op"),   1, pp.opAssoc.RIGHT),
    (pp.Literal("**")("op"),  2, pp.opAssoc.LEFT),
    (pp.Literal("*")("op"),   2, pp.opAssoc.LEFT),
    (pp.one_of("+ -")("op"),  2, pp.opAssoc.LEFT),
  ]
)
pp_vec_const_exp = pp_lsquare + pp.DelimitedList(pp_sca_const_exp, delim=",") + pp_rsquare
pp_const_exp = \
    pp_sca_const_exp \
  | pp_vec_const_exp
pp_const_exp_seq = pp.DelimitedList(pp_const_exp, delim=",")


# ========== Ranges ==========

pp_range_slicing = \
    pp_const_exp + pp_colon + pp_const_exp + pp_colon + pp_const_exp \
  | pp.Opt(pp_const_exp) + pp_colon + pp.Opt(pp_const_exp) \
  | pp_colon + pp_const_exp + pp_colon + pp_const_exp \
  | pp_const_exp + pp_colon + pp_colon + pp_const_exp
pp_ranges_slicing = pp.DelimitedList(pp_range_slicing, delim=",")
pp_ranges_indices = pp.DelimitedList(pp_const_exp, delim=",")
pp_ranges = pp_ranges_slicing | pp_ranges_indices


# ========== Instructions ==========

pp_lval = pp_sca_var | pp_vec_var

pp_sca_atom <<= \
    pp_const_exp + pp_at_sca_typ_opt \
  | pp_sca_typ + pp_const_exp \
  | pp_sca_var \
  | pp_vec_var + pp_lsquare + pp_nums + pp_rsquare
pp_sca_atom_seq = pp.DelimitedList(pp_sca_atom, delim=",")
pp_vec_atom <<= pp.infix_notation(
  ( \
    pp_vec_var \
    | pp_lsquare() + pp_sca_atom_seq + pp_rsquare() \
  ) \
  + pp.Opt(pp_lsquare() + pp_ranges + pp_rsquare()) \
  | pp_const_exp,
  [
    (pp.Literal("++"), 2, pp.opAssoc.LEFT)
  ]
)

pp_atom = pp_sca_atom | pp_vec_atom

pp_actual_atoms = pp.DelimitedList(pp_atom, delim=",")
pp_actuals = pp_actual_atoms + pp.Opt(pp_semicolon + pp_actual_atoms)

pp_eeq_suffix = \
  pp_lparen + pp_mod + pp_eexp + pp_rparen
pp_eexp <<= \
    pp_eexp_primary \
  | pp_eexp_primary + pp_lsquare + pp_nums + pp_rsquare \
  | pp_neg + pp_eexp_primary \
  | pp_add + pp_eexp_primary + pp_eexp_primary \
  | pp_sub + pp_eexp_primary + pp_eexp_primary \
  | pp_mul + pp_eexp_primary + pp_eexp_primary \
  | pp_sq + pp_eexp_primary + pp_eexp_primary \
  | pp_adds + pp_lsquare + pp_eexps + pp_rsquare \
  | pp_muls + pp_lsquare + pp_eexps + pp_rsquare \
  | pp_op_sub + pp_eexp \
  | pp_eexp_primary + pp_op_add + pp_eexp \
  | pp_eexp_primary + pp_op_sub + pp_eexp \
  | pp_eexp_primary + pp_op_mul + pp_eexp \
  | pp_eexp_primary + pp_op_pow + pp_eexp \
  | pp_eexp_primary + pp_op_pow + pp_lsquare + pp_const_exp_seq + pp_rsquare \
  | pp_ulimbs + pp_const_exp + pp_lsquare + pp_eexps + pp_rsquare \
  | pp_poly + pp_eexp + pp_lsquare + pp_eexps + pp_rsquare \
  | pp_eexp_primary + pp_lsquare + pp_ranges + pp_rsquare
pp_eexp_primary <<= \
    pp.Opt(pp_dollar) + pp_var \
  | pp_nums \
  | pp_lsquare + pp_eexps + pp_rsquare \
  | pp_lparen + pp_eexp + pp_rparen
pp_eexps <<= pp.DelimitedList(pp_eexp, delim=",")
pp_ebexp <<= \
    pp_ebexp_primary \
  | pp_eq + pp_eexp_primary + pp_eexp_primary \
  | pp_eqmod + pp_eexp_primary + pp_eexp_primary + pp_eexp_primary \
  | pp_eqmod + pp_eexp_primary + pp_eexp_primary + pp_lsquare + pp_eexps + pp_rsquare \
  | pp_eexp + pp_op_eq + pp_eexp + pp.Opt(pp_eeq_suffix) \
  | pp_eexp + pp_op_ult + pp_eexp \
  | pp_eexp + pp_op_ule + pp_eexp \
  | pp_eexp + pp_op_ugt + pp_eexp \
  | pp_eexp + pp_op_uge + pp_eexp \
  | pp_and + pp_ebexp_primary + pp_ebexp_primary \
  | pp_ebexp_primary + pp_op_land + pp_ebexp \
  | pp_and + pp_lsquare + pp_ebexps + pp_rsquare \
  | pp_op_land + pp_lsquare + pp_ebexps + pp_rsquare
pp_ebexp_primary <<= \
    pp_true \
  | pp_lparen + pp_ebexp + pp_rparen
pp_ebexps <<= pp.DelimitedList(pp_ebexp, delim=",")

pp_rcmpop_prefix = \
    pp_ult | pp_ule | pp_ugt | pp_uge \
  | pp_slt | pp_sle | pp_sgt | pp_sge
pp_rcmpop_infix = \
    pp_op_ult | pp_op_ule | pp_op_ugt | pp_op_uge \
  | pp_op_slt | pp_op_sle | pp_op_sgt | pp_op_sge
pp_reqmod_prefix = \
  pp_eqmod | pp_equmod | pp_eqsmod | pp_eqsrem
pp_req_suffix = \
  pp_lparen + (pp_mod | pp_umod | pp_smod | pp_srem) + pp_rexp + pp_rparen
pp_rexp <<= \
    pp_rexp_primary \
  | pp_rexp_primary + pp_lsquare + pp_nums + pp_rsquare \
  | (pp_uext | pp_sext) + pp_rexp_primary + pp_const_exp \
  | (pp_neg | pp_op_neg | pp_not | pp_op_not) + pp_rexp_primary \
  | (pp_add | pp_sub | pp_mul) + pp_rexp_primary + pp_rexp_primary \
  | pp_sq + pp_rexp_primary \
  | (pp_udiv | pp_sdiv | pp_umod | pp_smod | pp_srem) + pp_rexp_primary + pp_rexp_primary \
  | (pp_and | pp_or | pp_xor) + pp_rexp_primary + pp_rexp_primary \
  | (pp_shl | pp_shr | pp_sar | pp_rol | pp_ror) + pp_rexp_primary + pp_rexp_primary \
  | pp_concat + pp_rexp_primary + pp_rexp_primary \
  | (pp_adds | pp_muls) + pp_lsquare + pp_rexps + pp_rsquare \
  | (pp_ulimbs | pp_slimbs) + pp_const_exp + pp_lsquare + pp_rexps + pp_rsquare \
  | pp_rexp_primary + (pp_op_add | pp_op_sub | pp_op_mul) + pp_rexp \
  | pp_rexp_primary + (pp_op_and | pp_op_or | pp_op_xor) + pp_rexp \
  | pp_rexp_primary + (pp_op_shl | pp_op_shr | pp_op_sar) + pp_rexp
pp_rexp_primary <<= \
    pp_var \
  | pp_const + (pp_const_exp | pp_typ) + pp_const_exp \
  | pp_const_exp + pp_at + (pp_const_exp | pp_typ) \
  | pp_lparen + pp_rexp + pp_rparen \
  | pp_lsquare + pp_rexps + pp_rsquare
pp_rexps <<= pp.DelimitedList(pp_rexp, delim=",")
pp_rbexp <<= \
    pp_rbexp_primary \
  | pp_eq + pp_rexp_primary + pp_rexp_primary \
  | pp_rcmpop_prefix + pp_rexp_primary + pp_rexp_primary \
  | pp_reqmod_prefix + pp_rexp_primary + pp_rexp_primary + pp_rexp_primary \
  | pp_rexp + pp_op_eq + pp_rexp + pp.Opt(pp_req_suffix) \
  | pp_rexp + pp_rcmpop_infix + pp_rexp \
  | pp_neg + pp_rbexp_primary \
  | pp_op_neg + pp_rbexp_primary \
  | pp_and + pp_rbexp_primary + pp_rbexp_primary \
  | pp_or + pp_rbexp_primary + pp_rbexp_primary \
  | pp_rbexp_primary + pp_op_land + pp_rbexp \
  | pp_rbexp_primary + pp_op_lor + pp_rbexp \
  | (pp_and | pp_op_land) + pp_lsquare + pp_rbexps + pp_rsquare \
  | (pp_or | pp_op_lor) + pp_lsquare + pp_rbexps + pp_rsquare
pp_rbexp_primary <<= \
    pp_true \
  | pp_lparen + pp_rbexp + pp_rparen
pp_rbexps <<= pp.DelimitedList(pp_rbexp, delim=",")

pp_path = pp.dbl_quoted_string
pp_smt_logic_opt = pp.Opt(pp_colon + (pp_nia | pp_lia))
pp_prove_with_spec = \
  pp_precondition \
  | pp_cuts + pp_lsquare + pp_const_exp_seq + pp_rsquare \
  | pp_all + pp_cuts \
  | pp_all + pp_assumes \
  | pp_all + pp_ghosts \
  | pp_algebra + pp_solver + (pp_id | pp_smt + pp_colon + pp_path + pp_smt_logic_opt) \
  | pp_range + pp_solver + pp_path \
  | pp_qfbv + pp_solver + pp_path
pp_prove_with_specs = pp.DelimitedList(pp_prove_with_spec, delim=",")
pp_ebexp_prove_with = pp_ebexp + pp.Opt(pp_lsquare + pp_prove_with_specs + pp_rsquare)
pp_rbexp_prove_with = pp_rbexp + pp.Opt(pp_lsquare + pp_prove_with_specs + pp_rsquare)
pp_ebexp_prove_with_list = pp.DelimitedList(pp_ebexp_prove_with, delim=",")
pp_rbexp_prove_with_list = pp.DelimitedList(pp_rbexp_prove_with, delim=",")
pp_tagged_ebexp_prove_with = \
  pp.Opt((pp_id_seq | pp_op_mul | pp_all) + pp_colon) + pp_ebexp_prove_with_list
pp_tagged_rbexp_prove_with = \
  pp.Opt((pp_id_seq | pp_op_mul | pp_all) + pp_colon) + pp_rbexp_prove_with_list
pp_tagged_ebexp_prove_with_list = pp.DelimitedList(pp_tagged_ebexp_prove_with, delim=".")
pp_tagged_rbexp_prove_with_list = pp.DelimitedList(pp_tagged_rbexp_prove_with, delim=".")
pp_tagged_bexp_prove_with_list = \
    pp_true \
  | pp_tagged_ebexp_prove_with_list + pp_vbar + pp_tagged_rbexp_prove_with_list
pp_tagged_ebexp = pp.Opt((pp_id_seq | pp_op_mul | pp_all) + pp_colon) + pp_ebexps
pp_tagged_rbexp = pp.Opt((pp_id_seq | pp_op_mul | pp_all) + pp_colon) + pp_rbexps
pp_tagged_ebexps = pp.DelimitedList(pp_tagged_ebexp, delim=",")
pp_tagged_rbexps = pp.DelimitedList(pp_tagged_rbexp, delim=",")
pp_tagged_bexp = \
    pp_true \
  | pp_tagged_ebexps + pp_vbar + pp_tagged_rbexps

pp_instr_10 = \
    pp_instr_set \
  | pp_instr_clear \
  | pp_instr_nondet
pp_instr_11 = \
    pp_instr_mov \
  | pp_instr_not \
  | pp_instr_cast \
  | pp_instr_vpc
pp_instr_12 = \
    pp_instr_shl \
  | pp_instr_shr \
  | pp_instr_sar \
  | pp_instr_rol \
  | pp_instr_ror \
  | pp_instr_add \
  | pp_instr_sub \
  | pp_instr_mul \
  | pp_instr_mulj \
  | pp_instr_uadd \
  | pp_instr_usub \
  | pp_instr_umul \
  | pp_instr_umulj \
  | pp_instr_sadd \
  | pp_instr_ssub \
  | pp_instr_smul \
  | pp_instr_smulj \
  | pp_instr_seteq \
  | pp_instr_setne \
  | pp_instr_and \
  | pp_instr_or \
  | pp_instr_xor \
  | pp_instr_join
pp_instr_13 = \
    pp_instr_cmov \
  | pp_instr_adc \
  | pp_instr_sbc \
  | pp_instr_sbb \
  | pp_instr_uadc \
  | pp_instr_usbc \
  | pp_instr_usbb \
  | pp_instr_sadc \
  | pp_instr_ssbc \
  | pp_instr_ssbb
pp_instr_22 = \
    pp_instr_mull \
  | pp_instr_umull \
  | pp_instr_smull
# pp_instr_c12: the first lval must be a carry
pp_instr_c12 = \
    pp_instr_adds \
  | pp_instr_subc \
  | pp_instr_subb \
  | pp_instr_muls \
  | pp_instr_uadds \
  | pp_instr_usubc \
  | pp_instr_usubb \
  | pp_instr_umuls \
  | pp_instr_sadds \
  | pp_instr_ssubc \
  | pp_instr_ssubb \
  | pp_instr_smuls
# pp_instr_c13: the first lval must be a carry
pp_instr_c13 = \
    pp_instr_adcs \
  | pp_instr_sbcs \
  | pp_instr_sbbs \
  | pp_instr_uadcs \
  | pp_instr_usbcs \
  | pp_instr_usbbs \
  | pp_instr_sadcs \
  | pp_instr_ssbcs \
  | pp_instr_ssbbs
pp_instr_21c = \
    pp_instr_shls \
  | pp_instr_shrs \
  | pp_instr_sars \
  | pp_instr_split \
  | pp_instr_spl \
  | pp_instr_usplit \
  | pp_instr_uspl \
  | pp_instr_ssplit \
  | pp_instr_sspl
pp_instr_22c = \
    pp_instr_cshl \
  | pp_instr_cshr
pp_instr_32c = \
    pp_instr_cshls \
  | pp_instr_cshrs
pp_instr_invoke = \
    pp_instr_call \
  | pp_instr_inlinespec \
  | pp_instr_inline
pp_instr_nos = \
    pp_instr_nop \
  | pp.Group(pp_instr_10)("instr") + pp.Group(pp_lval)("lvs") \
  | pp.Group(pp_instr_11)("instr") + pp.Group(pp_lval)("lvs") + pp.Group(pp_atom)("rvs") \
  | pp.Group(pp_instr_12)("instr") + pp.Group(pp_lval)("lvs") + pp.Group(pp_atom*2)("rvs") \
  | pp.Group(pp_instr_13)("instr") + pp.Group(pp_lval)("lvs") + pp.Group(pp_atom*3)("rvs") \
  | pp.Group(pp_instr_22)("instr") + pp.Group(pp_lval*2)("lvs") + pp.Group(pp_atom*2)("rvs") \
  | pp.Group(pp_instr_c12)("instr") + pp.Group(pp_lval)("cvs") + \
      pp.Group(pp_lval)("lvs") + pp.Group(pp_atom*2)("rvs") \
  | pp.Group(pp_instr_c13)("instr") + pp.Group(pp_lval)("cvs") + \
      pp.Group(pp_lval)("lvs") + pp.Group(pp_atom*3)("rvs") \
  | pp.Group(pp_instr_21c)("instr") + pp.Group(pp_lval*2)("lvs") + \
      pp.Group(pp_atom)("rvs") + pp_const_exp \
  | pp.Group(pp_instr_22c)("instr") + pp.Group(pp_lval*2)("lvs") + \
      pp.Group(pp_atom*2)("rvs") + pp_const_exp \
  | pp.Group(pp_instr_32c)("instr") + pp.Group(pp_lval*3)("lvs") + \
      pp.Group(pp_atom*2)("rvs") + pp_const_exp \
  | pp.Group(pp_instr_extract)("instr") + pp.Group(pp_lval)("lvs") + \
      pp_lsquare + pp_nums_seq + pp_rsquare + pp.Group(pp_atom[1,...])("rvs") \
  | pp.Group(pp_instr_invoke)("instr") + pp_id + pp_lparen + pp.Group(pp_actuals)("rvs") + pp_rparen \
  | pp.Group(pp_instr_assert)("annot") + pp.Group(pp_tagged_bexp_prove_with_list)("rvs") \
  | pp.Group(pp_instr_eassert)("annot") + pp.Group(pp_tagged_ebexp_prove_with_list)("rvs") \
  | pp.Group(pp_instr_rassert)("annot") + pp.Group(pp_tagged_rbexp_prove_with_list)("rvs") \
  | pp.Group(pp_instr_assume)("annot") + pp.Group(pp_tagged_bexp)("rvs") \
  | pp.Group(pp_instr_cut)("annot") + pp.Group(pp_tagged_bexp_prove_with_list)("rvs") \
  | pp.Group(pp_instr_ecut)("annot") + pp.Group(pp_tagged_ebexp_prove_with_list)("rvs") \
  | pp.Group(pp_instr_rcut)("annot") + pp.Group(pp_tagged_rbexp_prove_with_list)("rvs") \
  | pp.Group(pp_instr_ghost)("annot") + pp.Group(pp_gvars)("gvs") + pp_colon + \
      pp.Group(pp_tagged_bexp)("rvs")
pp_instr = pp_instr_nos + pp_semicolon


# ========== Exported Functions ==========

def pp_flatten_list(xs):
  res = []
  for x in xs:
    if type(x) is list:
      res.extend(pp_flatten_list(x))
    else:
      res.append(x)
  return res

def pp_filter_vars(vars, strs):
  if type(strs) is list:
    return vars & set(pp_flatten_list(strs))
  elif type(strs) is dict:
    return vars & set(strs["var"])
  else:
    return vars & set([strs])

# not thread-safe
def pp_vars_of_instr(str):
  global collected_vars
  collected_vars = set()
  try:
    r = pp_instr_nos.parse_string(str, parse_all=True).as_dict()
    lvs = set()
    rvs = set()
    cvs = set()
    gvs = set()
    vars = collected_vars
    if 'lvs' in r:
      lvs |= pp_filter_vars(vars, r["lvs"])
    if 'rvs' in r:
      rvs |= pp_filter_vars(vars, r["rvs"])
    if 'cvs' in r:
      cvs |= pp_filter_vars(vars, r["cvs"])
    if 'gvs' in r:
      gvs |= pp_filter_vars(vars, r["gvs"])
    is_annot = "annot" in r
    if is_annot and r["annot"] == "ghost":
      rvs = rvs - gvs
    ret = {"lvs": lvs, "rvs": rvs, "cvs": cvs, "gvs": gvs, "is-annot": is_annot}
    return ret
  except pp.ParseException as err:
    return None

if __name__ == "__main__":
  print(pp_vars_of_instr("add r x y"))
  print(pp_vars_of_instr("ghost x@uint64 : x = y && x = 10@32"))
  print(pp_vars_of_instr("adds %_ %xmm0@uint32[4] %xmm11 %L0x7fffffd44a40"))
  print(pp_vars_of_instr("mov %ymm0 \
    [ %L0x7ffffffaf1c0[0],%L0x7ffffffaf1c0[1],%L0x7ffffffaf1c0[2],%L0x7ffffffaf1c0[3], \
      %L0x7ffffffaf1c0[4],%L0x7ffffffaf1c0[5],%L0x7ffffffaf1c0[6],%L0x7ffffffaf1c0[7], \
      %L0x7ffffffaf1c0[8],%L0x7ffffffaf1c0[9],%L0x7ffffffaf1c0[10],%L0x7ffffffaf1c0[11] ]"))
