#include "relic.h"
#include "relic_fp_low.h"

/* typedef unsigned long long dig_t; */
typedef dig_t fp_t[RLC_FP_DIGS];
typedef dig_t dp_t[RLC_FP_DIGS*2];

int main (void)
{
  fp_t a, b, c;
  dp_t n, m;

  fp_addm_low (c, a, b);
  fp_subm_low (c, a, b);
  fp_mulm_low (c, a, b);
  fp_rdcn_low (c, n);
}
