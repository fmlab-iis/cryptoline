#include <stdint.h>

#define P256_LIMBS 4

typedef uint64_t BN_ULONG;

typedef struct {
    BN_ULONG X[P256_LIMBS];
    BN_ULONG Y[P256_LIMBS];
    BN_ULONG Z[P256_LIMBS];
} P256_POINT;

typedef struct {
    BN_ULONG X[P256_LIMBS];
    BN_ULONG Y[P256_LIMBS];
} P256_POINT_AFFINE;

/* Modular add: res = a+b mod P   */
void ecp_nistz256_add(BN_ULONG res[P256_LIMBS],
                      const BN_ULONG a[P256_LIMBS],
                      const BN_ULONG b[P256_LIMBS]);
/* Modular mul by 2: res = 2*a mod P */
void ecp_nistz256_mul_by_2(BN_ULONG res[P256_LIMBS],
                           const BN_ULONG a[P256_LIMBS]);
/* Modular mul by 3: res = 3*a mod P */
void ecp_nistz256_mul_by_3(BN_ULONG res[P256_LIMBS],
                           const BN_ULONG a[P256_LIMBS]);

/* Modular div by 2: res = a/2 mod P */
void ecp_nistz256_div_by_2(BN_ULONG res[P256_LIMBS],
                           const BN_ULONG a[P256_LIMBS]);
/* Modular sub: res = a-b mod P   */
void ecp_nistz256_sub(BN_ULONG res[P256_LIMBS],
                      const BN_ULONG a[P256_LIMBS],
                      const BN_ULONG b[P256_LIMBS]);
/* Modular neg: res = -a mod P    */
void ecp_nistz256_neg(BN_ULONG res[P256_LIMBS], const BN_ULONG a[P256_LIMBS]);
/* Montgomery mul: res = a*b*2^-256 mod P */
void ecp_nistz256_mul_mont(BN_ULONG res[P256_LIMBS],
                           const BN_ULONG a[P256_LIMBS],
                           const BN_ULONG b[P256_LIMBS]);
/* Montgomery sqr: res = a*a*2^-256 mod P */
void ecp_nistz256_sqr_mont(BN_ULONG res[P256_LIMBS],
                           const BN_ULONG a[P256_LIMBS]);
/* Convert a number from Montgomery domain, by multiplying with 1 */
void ecp_nistz256_from_mont(BN_ULONG res[P256_LIMBS],
                            const BN_ULONG in[P256_LIMBS]);
/* Convert a number to Montgomery domain, by multiplying with 2^256 mod P*/
void ecp_nistz256_to_mont(BN_ULONG res[P256_LIMBS],
                          const BN_ULONG in[P256_LIMBS]);

/*
 * Montgomery mul modulo Order(P): res = a*b*2^-256 mod Order(P)
 */
void ecp_nistz256_ord_mul_mont(BN_ULONG res[P256_LIMBS],
                               const BN_ULONG a[P256_LIMBS],
                               const BN_ULONG b[P256_LIMBS]);
void ecp_nistz256_ord_sqr_mont(BN_ULONG res[P256_LIMBS],
                               const BN_ULONG a[P256_LIMBS],
                               BN_ULONG rep);

void ecp_nistz256_point_double(P256_POINT *r, const P256_POINT *a);
void ecp_nistz256_point_add(P256_POINT *r,
                            const P256_POINT *a, const P256_POINT *b);
void ecp_nistz256_point_add_affine(P256_POINT *r,
                                   const P256_POINT *a,
                                   const P256_POINT_AFFINE *b);

int main (void)
{
  BN_ULONG a[P256_LIMBS], b[P256_LIMBS], r[P256_LIMBS];
  P256_POINT pr, pa, pb;
  P256_POINT_AFFINE pab;
  
  /* Modular add: res = a+b mod P   */
  ecp_nistz256_add(r, a, b);
  /* Modular mul by 2: res = 2*a mod P */
  ecp_nistz256_mul_by_2(r, a);
  /* Modular mul by 3: res = 3*a mod P */
  ecp_nistz256_mul_by_3(r, a);
  /* Modular div by 2: res = a/2 mod P */
  ecp_nistz256_div_by_2(r, a);
  /* Modular sub: res = a-b mod P   */
  ecp_nistz256_sub(r, a, b);
  /* Modular neg: res = -a mod P    */
  ecp_nistz256_neg(r, a);
  /* Montgomery mul: res = a*b*2^-256 mod P */
  ecp_nistz256_mul_mont(r, a, b);
  /* Montgomery sqr: res = a*a*2^-256 mod P */
  ecp_nistz256_sqr_mont(r, a);
  /* Convert a number from Montgomery domain, by multiplying with 1 */
  ecp_nistz256_from_mont(r, a);
  /* Convert a number to Montgomery domain, by multiplying with 2^256 mod P*/
  ecp_nistz256_to_mont(r, a);

  /*
   * Montgomery mul modulo Order(P): res = a*b*2^-256 mod Order(P)
   */
  ecp_nistz256_ord_mul_mont(r, a, b);
  ecp_nistz256_ord_sqr_mont(r, a, 16);

  ecp_nistz256_point_double(&pr, &pa);
  ecp_nistz256_point_add(&pr, &pa, &pb);
  ecp_nistz256_point_add_affine(&pr, &pa, &pab);

  return 0;
}

