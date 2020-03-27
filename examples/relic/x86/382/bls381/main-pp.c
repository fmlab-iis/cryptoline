#include "relic.h"

int main (void)
{
  fp12_t l;
  ep_t p;
  ep2_t r, q;
  if (core_init() != RLC_OK) {
      core_clean();
      return 1;
  }
  if (ep_param_set_any_pairf() == RLC_ERR) {
      THROW(ERR_NO_CURVE);
      core_clean();
      return 0;
  }

  ep_param_print();
  fp_param_print();

  fp12_null(l);
  ep_null(p);
  ep2_null(q);
  ep2_null(r);

  fp12_new(l);
  ep_new(p);
  ep2_new(q);
  ep2_new(r);
  do{
      ep_rand(p);
      ep2_rand(q);
      ep2_rand(r);
  } while(ep_is_infty(p) || ep2_is_infty(q) || ep2_is_infty(r));

  fp12_zero(l);

  pp_add_k12_projc_lazyr(l, r, q, p);
  pp_dbl_k12_projc_lazyr(l, r, q, p);

  return 0;
}
