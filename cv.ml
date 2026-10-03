open Arg

let _ =
  try
    parse Main.Std.args Main.Std.anon Main.Std.usage
  with
  | Utils.Std.FloatingPointOverflow ->
      prerr_endline "[FloatAbs] ALARM: floating-point overflow detected.";
      exit 1
  | Utils.Std.FloatingPointDivisionByZero ->
      prerr_endline "[FloatAbs] ALARM: floating-point division by zero detected.";
      exit 1
