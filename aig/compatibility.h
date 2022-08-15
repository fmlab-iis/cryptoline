#include <caml/mlvalues.h>

#ifndef _COMPATIBILITY_H
#define _COMPATIBILITY_H

/* Val_none, Tag_some, and caml_alloc_some are available since OCaml 4.12.0 */
#define Val_none Val_int(0)
#define Tag_some 0
CAMLextern value caml_alloc_some(value);

#endif
