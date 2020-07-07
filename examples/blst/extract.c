
#include "fields.h"

void main (void)
{
  vec256 a256, b256, c256;
  vec384 a384, b384, c384;
  size_t count = 42;
  size_t flag = 1;
  
/*
 * BLS12-256-specifc Fp shortcuts to assembly.
 */

  blst_fr_add (c256, a256, b256);
  blst_fr_sub (c256, a256, b256);
  blst_fr_mul_by_3 (c256, a256);
  blst_fr_lshift (c256, a256, count);
  blst_fr_rshift (c256, a256, count);
  blst_fr_mul (c256, a256, b256);
  blst_fr_sqr (c256, a256, b256);
  blst_fr_cneg (c256, a256, flag);
  blst_fr_to (c256, a256);
  blst_fr_from (c256, a256);

/*
 * BLS12-381-specifc Fp shortcuts to assembly.
 */
  blst_fp_add (c384, a384, b384);
  blst_fp_sub (c384, a384, b384);
  blst_fp_mul_by_3 (c384, a384);
  blst_fp_mul_by_8 (c384, a384);
  blst_fp_lshift (c384, a384, count);
  blst_fp_mul (c384, a384, b384);
  blst_fp_sqr (c384, a384, b384);
  blst_fp_cneg (c384, a384, flag);
  blst_fp_eucl_inverse (c384, a384);
  blst_fp_to (c384, a384);
  blst_fp_from (c384, a384);
}
