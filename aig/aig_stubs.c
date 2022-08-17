#include <assert.h>
#include <stdio.h>
#include <stdint.h>
#include <string.h>
#include <caml/mlvalues.h>
#include <caml/memory.h>
#include <caml/alloc.h>
#include <caml/callback.h>
#include <caml/custom.h>
#ifdef _LINUX
  #include <bits/wordsize.h>
#endif
#ifdef _FREEBSD
  #include <sys/limits.h>
#endif
#ifdef __APPLE__
  #include <stdint.h>
#endif

#include "aiger.h"
#include "aig_stubs.h"
#include "compatibility.h"

#define aiger_val(v) (*((aiger **) Data_custom_val(v)))

static void aig_dealloc_aiger (value a);

static struct custom_operations aig_ops = {
  "fmlab-iis",
  // custom_finalize_default,
  aig_dealloc_aiger,
  custom_compare_default,
  custom_hash_default,
  custom_serialize_default,
  custom_deserialize_default
};

static value aig_alloc_aiger (aiger *aig)
{
  CAMLparam0 ();
  CAMLlocal1 (ret);
  ret = caml_alloc_custom (&aig_ops, sizeof (aiger *), 0, 1);
  aiger_val (ret) = aig;
  CAMLreturn (ret);
}

static void aig_dealloc_aiger (value a) 
{
  aiger *aig;
  
  aig = aiger_val (a);
  aiger_reset (aig);
  /* free (aig); */
}

CAMLprim value aig_id (value unit)
{
  CAMLparam1 (unit);
  CAMLlocal1 (ret);

  ret = caml_copy_string (aiger_id ());
  CAMLreturn (ret);
}

CAMLprim value aig_version (value unit)
{
  CAMLparam1 (unit);
  CAMLlocal1 (ret);

  ret = caml_copy_string (aiger_version ());
  CAMLreturn (ret);
}


CAMLprim value aig_init (value unit)
{
  CAMLparam1 (unit);
  CAMLlocal1 (ret);

  ret = aig_alloc_aiger (aiger_init ());
  CAMLreturn (ret);
}

CAMLprim value aig_reset (value a)
{
  CAMLparam1 (a);
  
  aiger_reset (aiger_val (a));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_input (value a, value l, value s)
{
  CAMLparam3 (a, l, s);

  aiger_add_input (aiger_val (a), Int_val (l), String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_latch (value a, value l, value n, value s)
{
  CAMLparam4 (a, l, n, s);

  aiger_add_latch (aiger_val (a), Int_val (l), Int_val (n), String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_output (value a, value l, value s)
{
  CAMLparam3 (a, l, s);

  aiger_add_output (aiger_val (a), Int_val (l), String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_bad (value a, value l, value s)
{
  CAMLparam3 (a, l, s);

  aiger_add_bad (aiger_val (a), Int_val (l), String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_constraint (value a, value l, value s)
{
  CAMLparam3 (a, l, s);

  aiger_add_constraint (aiger_val (a), Int_val (l), String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_justice (value a, value l, value s)
{
  CAMLparam3 (a, l, s);
  unsigned lits[256], size;

  size = 0;
  while (l != Val_int (0)) {
    lits[size++] = Val_int (Field (l, 0));
    l = Field (l, 1);
  }
  assert (0 < size && size <= 256);
  
  aiger_add_justice (aiger_val (a), size, lits, String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_fairness (value a, value l, value s)
{
  CAMLparam3 (a, l, s);

  aiger_add_fairness (aiger_val (a), Int_val (l), String_val (s));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_reset (value a, value l, value r)
{
  CAMLparam3 (a, l, r);

  assert (r == Val_int (0) || r == Val_int (1) || r == l);
  aiger_add_reset (aiger_val (a), Int_val (l), Int_val (r));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_and (value a, value l, value r0, value r1)
{
  CAMLparam4 (a, l, r0, r1);

  assert ((Int_val (l) & 1) == 0);
  aiger_add_and (aiger_val (a), Int_val (l), Int_val (r0), Int_val (r1));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_add_comment (value a, value s)
{
  CAMLparam2 (a, s);

  aiger_add_comment (aiger_val (a), String_val (s));
  CAMLreturn (Val_unit);
}


CAMLprim value aig_check (value a)
{
  CAMLparam1 (a);
  CAMLlocal1 (ret);
  const char *error;
  
  error = aiger_check (aiger_val (a));
  if (error) {
    ret = caml_alloc_some (caml_copy_string (error));
  } else {
    ret = Val_none;
  }
  CAMLreturn (ret);
}

CAMLprim value aig_error (value a)
{
  CAMLparam1 (a);
  CAMLlocal1 (ret);
  const char *error;

  error = aiger_error (aiger_val (a));
  if (error) {
    ret = caml_alloc_some (caml_copy_string (error));
  } else {
    ret = Val_none;
  }
  CAMLreturn (ret);
}

CAMLprim value aig_write_to_file (value a, value m, value s)
{
  CAMLparam3 (a, m, s);
  CAMLlocal1 (ret);
  int error;
  FILE *f;

  f = fopen (String_val (s), "w");
  error = aiger_write_to_file (aiger_val (a), Int_val (m), f);
  fclose (f);
  if (error) {
    ret = Val_none;
  } else {
    const char *msg = aiger_error (aiger_val (a)) ?
      aiger_error (aiger_val (a)) : "unknown error";
    ret = caml_alloc_some (caml_copy_string (msg));
  }

  CAMLreturn (ret);
}

CAMLprim value aig_open_and_write_to_file (value a, value s)
{
  CAMLparam2 (a, s);
  CAMLlocal1 (ret);
  int error;

  error = aiger_open_and_write_to_file (aiger_val (a), String_val (s));
  if (error) {
    ret = Val_none;
  } else {
    const char *msg = aiger_error (aiger_val (a)) ?
      aiger_error (aiger_val (a)) : "unknown error";
    ret = caml_alloc_some (caml_copy_string (msg));
  }

  CAMLreturn (ret);
}
  
CAMLprim value aig_is_reencoded (value a)
{
  CAMLparam1 (a);
  CAMLreturn (aiger_is_reencoded (aiger_val (a)) ? Val_true : Val_false);
}

CAMLprim value aig_reencode (value a)
{
  CAMLparam1 (a);
  aiger_reencode (aiger_val (a));
  CAMLreturn (Val_unit);
}

CAMLprim value aig_read_from_file (value a, value s)
{
  CAMLparam2 (a, s);
  CAMLlocal1 (ret);
  const char *error;
  FILE *f;

  f = fopen (String_val (s), "r");
  error = aiger_read_from_file (aiger_val (a), f);
  fclose (f);
  if (error) {
    ret = caml_alloc_some (caml_copy_string (error));
  } else {
    ret = Val_none;
  }

  CAMLreturn (ret);
}

CAMLprim value aig_open_and_read_from_file (value a, value s)
{
  CAMLparam2 (a, s);
  CAMLlocal1 (ret);
  const char *error;

  error = aiger_open_and_read_from_file (aiger_val (a), String_val (s));
  if (error) {
    ret = caml_alloc_some (caml_copy_string (error));
  } else {
    ret = Val_none;
  }

  CAMLreturn (ret);
}

CAMLprim value aig_write_symbols_to_file (value a, value s)
{
  CAMLparam2 (a, s);
  CAMLlocal1 (ret);
  int error;
  FILE *f;

  f = fopen (String_val (s), "w");
  error = aiger_write_symbols_to_file (aiger_val (a), f);
  fclose (f);
  if (error) {
    ret = Val_none;
  } else {
    const char *msg = aiger_error (aiger_val (a)) ?
      aiger_error (aiger_val (a)) : "unknown error";
    ret = caml_alloc_some (caml_copy_string (msg));
  }

  CAMLreturn (ret);
}

CAMLprim value aig_write_comments_to_file (value a, value s)
{
  CAMLparam2 (a, s);
  CAMLlocal1 (ret);
  int error;
  FILE *f;

  f = fopen (String_val (s), "w");
  error = aiger_write_comments_to_file (aiger_val (a), f);
  fclose (f);
  if (error) {
    ret = Val_none;
  } else {
    const char *msg = aiger_error (aiger_val (a)) ?
      aiger_error (aiger_val (a)) : "unknown error";
    ret = caml_alloc_some (caml_copy_string (msg));
  }

  CAMLreturn (ret);
}

CAMLprim value aig_strip_symbols_and_comments (value a)
{
  CAMLparam1 (a);
  CAMLlocal1 (ret);

  ret = Val_int (aiger_strip_symbols_and_comments (aiger_val (a)));
  CAMLreturn (ret);
}

CAMLprim value aig_get_symbol (value a, value l)
{
  CAMLparam2 (a, l);
  CAMLlocal1 (ret);

  ret = caml_copy_string (aiger_get_symbol (aiger_val (a), Int_val (l)));
  CAMLreturn (ret);
}

CAMLprim value aig_lit2tag (value a, value l)
{
  CAMLparam2 (a, l);
  CAMLlocal1 (ret);

  ret = Val_int (aiger_lit2tag (aiger_val (a), Int_val (l)));
  CAMLreturn (ret);
}

CAMLprim value aig_is_latch (value a, value l)
{
  CAMLparam2 (a, l);
  CAMLlocal1 (ret);
  aiger_symbol *sym;

  sym = aiger_is_input (aiger_val (a), Int_val (l));
  if (sym) {
    ret = caml_alloc_tuple (3);
    Store_field (ret, 0, Val_int (sym->next));
    Store_field (ret, 1, Val_int (sym->reset));
    Store_field (ret, 2, caml_copy_string (sym->name));
    ret = caml_alloc_some (ret);
  } else {
    ret = Val_none;
  }

  CAMLreturn (ret);
}

CAMLprim value aig_is_and (value a, value l)
{
  CAMLparam2 (a, l);
  CAMLlocal1 (ret);
  aiger_and *sym;

  sym = aiger_is_and (aiger_val (a), Int_val (l));
  if (sym) {
    ret = caml_alloc_tuple (2);
    Store_field (ret, 0, Val_int (sym->rhs0));
    Store_field (ret, 1, Val_int (sym->rhs1));
    ret = caml_alloc_some (ret);
  } else {
    ret = Val_none;
  }

  CAMLreturn (ret);
}

CAMLprim value aig_inputs (value a)
{
  CAMLparam1 (a);
  CAMLlocal2 (ret, tmp);
  aiger* aig = aiger_val(a);

  ret = Val_int(0);
  for (int i = aig->num_inputs - 1; i >= 0; i--) {
    tmp = caml_alloc(2, 0);
    Store_field(tmp, 0, caml_copy_string(aig->inputs[i].name));
    Store_field(tmp, 1, ret);
    ret = tmp;
  }

  CAMLreturn (ret);
}

CAMLprim value aig_maxvar (value a)
{
  CAMLparam1 (a);
  CAMLlocal1 (ret);
  aiger* aig = aiger_val(a);

  ret = Val_int(aig->maxvar);
  CAMLreturn (ret);
}
