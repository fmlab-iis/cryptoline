This file describes the contents of this directory.

We start with the following Jasmin program, defined in `fqmul.jazz`, that is used by Kyber768 reference implementation.
```
param int KYBER_Q = 3329;
param int QINV    = 62209;     /* q^(-1) mod 2^16 */

export fn fqmul(reg u16 a b) -> reg u16
{
  reg u32 ad bd c t u;
  reg u16 r;

  ad = (32s)a;
  bd = (32s)b;

  c = ad * bd;

  u = c * QINV;

  u <<= 16;
  u >>s= 16;

  t = u * KYBER_Q;
  t = c - t;

  t >>s= 16;
  r = t;

  return r;
}
```

Intuitively, we want to prove that `r * 2^16` is equal to `a * b` mod `KYBER_Q`.

To compile `fqmul.jazz` into an assembly file, the Jasmin compiler can be used: `jasminc fqmul.jazz -o fqmul.s`. For the pushed `fqmul.s`, Jasmin compiler `v2022.09.0` was used.

The next step was to write a simple `main` function, using C, that includes a call to function `fqmul` and compile the corresponding binary: `gcc -o main main.c fqmul.s`.

Next, we produced `fqmul.gas.0` with `../../../../scripts/itrace.py main fqmul fqmul.gas.0`. In `fqmul.gas` we defined the translation rules and copied the contents of `fqmul.gas.0`.

From this file, we extracted the CryptoLine representation with `../../../../scripts/to_zdsl.py fqmul.gas > fqmul.cl.0`. We used `fqmul.cl.0` to define `fqmul.cl` which contains the pre and post-conditions.

As a convention, we keep and push the auto-generated files without modifications (`*.0`), to check (with diff,for instance) that only what was supposed to change did change during the manual editing of the file.

Running `cv -v fqmul.cl` should be OK:

```
$ cv -v -isafety fqmul.cl
Parsing CryptoLine file:        [OK]        0.000265 seconds
Checking well-formedness:       [OK]        0.000052 seconds
Transforming to SSA form:       [OK]        0.000022 seconds
Normalizing specification:      [OK]        0.000031 seconds
Rewriting assignments:          [OK]        0.000015 seconds
Verifying program safety:
     Cut 0
         Round 1 (1 safety conditions, timeout = 300 seconds)
         Safety condition #0    [OK]
     Overall                    [OK]        0.027311 seconds
Verifying range specification:        [OK]        18.345685 seconds
Rewriting value-preserved casting:    [OK]        0.000026 seconds
Verifying algebraic specification:    [OK]        0.001105 seconds
Verification result:                  [OK]        18.374723 seconds
```

In addition to the `fqmul.cl`, we also include `fqmul.annotated.cl` which contains the original Jasmin code in comments and some intermediate assertions.

