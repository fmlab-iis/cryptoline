#include <assert.h>
#include <relic.h>

int main (void)
{
  fp2_t a, b, c;

  assert (core_init() == RLC_OK);
  fp_param_set_any(); // relic_fp_param.c: 480
  fp_param_print ();

  fp2_null(a);
  fp2_null(b);
  fp2_null(c);
  fp2_new(a);
  fp2_new(b);
  fp2_new(c);

  fp2_rand(a);
  fp2_rand(b);

  fp2_add_basic (c, a, b);
  fp2_add_integ (c, a, b);
  fp2_sub_basic (c, a, b);
  fp2_sub_integ (c, a, b);
  fp2_dbl_basic (c, a);
  fp2_dbl_integ (c, a);
  fp2_mul_basic (c, a, b);
  fp2_mul_integ (c, a, b);
  fp2_mul_nor_basic (c, a);
  fp2_mul_nor_integ (c, a);
  fp2_sqr_basic (c, a);
  fp2_sqr_integ (c, a);
}
