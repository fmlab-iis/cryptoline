#include <assert.h>

#include "mpi.h"
#include "mpprime.h"

void main (void)
{
  mp_int a[4], b[4], c[4], d[4];
  int num_limbs, i;

  num_limbs = 4;
  for (i = 0; i < 4; i++, num_limbs *= 2) {
    assert (mp_init_size (&a[i], num_limbs) == MP_OKAY);
    assert (mp_init_size (&b[i], num_limbs) == MP_OKAY);
    assert (mp_init_size (&c[i], num_limbs) == MP_OKAY);
    assert (mp_init_size (&d[i], num_limbs) == MP_OKAY);

    assert (mpp_random_size (&a[i], num_limbs) == MP_OKAY);
    assert (mpp_random_size (&b[i], num_limbs) == MP_OKAY);
    assert (mpp_random_size (&c[i], num_limbs) == MP_OKAY);
    assert (mpp_random_size (&d[i], num_limbs) == MP_OKAY);
    assert (mp_sqrmod (&b[i], &a[i], &c[i]) == MP_OKAY);
    assert (mp_mul (&c[i], &b[i], &a[i]) == MP_OKAY);
    assert (mp_exptmod (&a[i], &b[i], &c[i], &d[i]) == MP_OKAY);
  }
}
