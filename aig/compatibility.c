#include <caml/mlvalues.h>
#include <caml/alloc.h>
#include <caml/memory.h>
#include "compatibility.h"

CAMLexport value caml_alloc_some(value v)
{
  CAMLparam1(v);
  value some = caml_alloc_small(1, Tag_some);
  Field(some, 0) = v;
  CAMLreturn(some);
}
