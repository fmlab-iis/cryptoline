
typedef unsigned long BN_ULONG;

BN_ULONG bn_add_words(BN_ULONG *r, const BN_ULONG *a, const BN_ULONG *b,
                      int n);
BN_ULONG bn_sub_words(BN_ULONG *r, const BN_ULONG *a, const BN_ULONG *b,
                      int n);
void bn_sqr_words(BN_ULONG *r, const BN_ULONG *a, int n);
BN_ULONG bn_mul_words(BN_ULONG *rp, const BN_ULONG *ap, int num, BN_ULONG w);
BN_ULONG bn_mul_add_words(BN_ULONG *rp, const BN_ULONG *ap, int num,
                          BN_ULONG w);
int bn_mul_mont(BN_ULONG *rp, const BN_ULONG *ap, const BN_ULONG *bp,
                const BN_ULONG *np, const BN_ULONG *n0p, int num);

BN_ULONG a[4], b[4], r[8], n[4], n0, h, l, d;

void main (void)
{
  bn_add_words (r, a, b, 4);
  bn_sub_words (r, a, b, 4);
  bn_sqr_words (r, a, 4);
  bn_mul_words (r, a, 4, sizeof (BN_ULONG));
  bn_mul_add_words (r, a, 4, sizeof (BN_ULONG));
  bn_mul_mont (r, a, b, n, &n0, 4);
}
