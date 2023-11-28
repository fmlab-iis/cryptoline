
type 'a manager_t = 'a Common.manager_t

type 'a abs_t = 'a Common.abs_t

let create_manager = Common.create_manager

let top = Common.top

let bottom = Common.bottom

let is_top = Common.is_top

let is_bottom = Common.is_bottom

let meet = Common.meet

let abs_of_rbexp = Common.abs_of_rbexp

let abs_of_vars = Common.abs_of_vars

let abs_set_nondet_var = Common.abs_set_nondet_var

let interp_instr = Common.interp_instr

let interp_prog = Common.interp_prog

let sat_rbexp = Common.sat_rbexp

let instr_safe = Common.instr_safe

let string_of_abs = Common.string_of_abs

let zinterval_of_var = Common.zinterval_of_var
