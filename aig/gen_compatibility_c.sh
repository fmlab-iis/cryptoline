#!/bin/bash

version=$1
major=`echo ${version} | cut -d "." -f 1 | bc`
minor=`echo ${version} | cut -d "." -f 2 | bc`

if [[ ${major} -lt 4 || (${major} -le 4 && ${minor} -lt 12) ]]; then
  echo "#include <caml/mlvalues.h>"
  echo "#include <caml/alloc.h>"
  echo "#include <caml/memory.h>"
  echo "#include \"compatibility.h\""
  echo
  echo "CAMLexport value caml_alloc_some(value v)"
  echo "{"
  echo "  CAMLparam1(v);"
  echo "  value some = caml_alloc_small(1, Tag_some);"
  echo "  Field(some, 0) = v;"
  echo "  CAMLreturn(some);"
  echo "}"
fi
