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
$ cv -v fqmul.cl 
Parsing CryptoLine file:           [OK]        0.000343 seconds
Checking well-formedness:          [OK]        0.000064 seconds
Transforming to SSA form:          [OK]        0.000020 seconds
Normalizing specification:         [OK]        0.000024 seconds
Rewriting assignments:             [OK]        0.000009 seconds
Verifying program safety:          [OK]        0.030387 seconds
Verifying range specification:     [OK]        20.948068 seconds
Rewriting value-preserved casting: [OK]        0.000011 seconds
Verifying algebraic specification: [OK]        0.001294 seconds
Verification result:               [OK]        20.980513 seconds
```

In addition to the `fqmul.cl`, we also include `fqmul.annotated.cl` which contains the original Jasmin code in comments and some intermediate assertions.

