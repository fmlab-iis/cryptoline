#include "relic.h"

int main (void)
{
  ep_t r, p, q;
  if (core_init() != RLC_OK) {
      core_clean();
      return 1;
  }
  ep_param_set_any();
  ep_param_print();
  fp_param_print();

  ep_null(p);
  ep_null(q);
  ep_null(r);

  ep_new(p);
  ep_new(q);
  ep_new(r);

  do{
      ep_rand(p);
      ep_rand(q);
  } while(ep_is_infty(p) || ep_is_infty(q));

  ep_print(p);
  ep_print(q);

  ep_neg_basic(r, p);
  ep_neg_projc(r, p);

  ep_add_basic(r, p, q);
  ep_add_projc(r, p, q);

  ep_sub_basic(r, p, q);
  ep_sub_projc(r, p, q);

}
