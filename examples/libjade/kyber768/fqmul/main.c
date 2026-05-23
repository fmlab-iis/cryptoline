#include <stdint.h>
#include <assert.h>

extern int16_t fqmul(int16_t, int16_t);

int32_t m(int32_t a, int32_t b)
{
    int32_t r = a % b;
    if( r < 0 ){ r += b; }
    return r;
}

int main(void)
{
  int16_t r, a, b;
  int32_t t1, t2;

  for (a = INT16_MIN; a < INT16_MAX; a++)
  { for (b = 0; b < 3329; b++)
    { r = fqmul(a, b);

      t1 = m( ((int32_t)r) * 65536, 3329 );
      t2 = m( (((int32_t)a) * ((int32_t)b)), 3329 );

      assert( t1 == t2 );
    }
  }
  return 0;
}
