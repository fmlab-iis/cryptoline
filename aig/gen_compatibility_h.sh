#!/bin/bash

version=$1
major=`echo ${version} | cut -d "." -f 1 | bc`
minor=`echo ${version} | cut -d "." -f 2 | bc`

if [[ ${major} -lt 4 || (${major} -le 4 && ${minor} -lt 12) ]]; then
  echo "#include <caml/mlvalues.h>"
  echo ""
  echo "#ifndef _COMPATIBILITY_H"
  echo "#define _COMPATIBILITY_H"
  echo ""
  echo "/* Val_none, Tag_some, and caml_alloc_some are available since OCaml 4.12.0 */"
  echo "#define Val_none Val_int(0)"
  echo "#define Tag_some 0"
  echo "CAMLextern value caml_alloc_some(value);"
  echo ""
  echo "#endif"
fi
