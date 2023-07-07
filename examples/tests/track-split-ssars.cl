#! CLFLAGS = -track-split

proc main(x@sint64) =
{ true && true }

sars y z x 13;
spl h l y 51;
spl xh xl x 13;

{
  and [
    l = y,
    l = xh,
    xh = y,
    xl = z
  ]
  &&
  and [
    sext l 13 = y,
    l = xh,
    sext xh 13 = y,
    xl = z
  ]
}
