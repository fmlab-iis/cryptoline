Cryptoline
==========

Cryptoline is a tool and a language for the verification of low-level
implementations of mathematical constructs.
It has been used to verify implementations in
[OpenSSL](https://www.openssl.org),
[BoringSSL](https://opensource.google.com/projects/boringssl),
[mbed TLS](https://tls.mbed.org), etc.

Prerequisite
============

To compile and run Cryptoline, the following packages need to be installed.

- [OCaml compiler](https://ocaml.org) (version 4.07.0 up, installed by [opam](http://opam.ocaml.org) is recommended)
- [GNU Make](https://www.gnu.org/software/make/)
- OCaml packages: dune, ocamlfind, lwt, lwt_ppx, num (can be installed by [opam](http://opam.ocaml.org))
- One of the following computer algebra systems:
  + [Singular](https://www.singular.uni-kl.de) (recommended)
  + [SageMath](http://www.sagemath.org)
  + [Magma](http://magma.maths.usyd.edu.au/magma/)
  + [Mathematica](https://www.wolfram.com/mathematica/)
  + [Macaulay2](https://faculty.math.illinois.edu/Macaulay2/)
- One of the following SMT solvers:
  + [Boolector](https://boolector.github.io) (recommended)
  + [Z3](https://github.com/Z3Prover/z3)
  + [Mathsat](http://mathsat.fbk.eu)

Compilation
===========

Use the following command to compile Cryptoline.

```
dune build
```

Install the executables to opam

```
dune install
```

Run the following command to see the available command-line arguments.

```
_build/default/cv.exe
cv
```

Uninstall & Clean

```
dune uninstall
dune clean
```

Cryptoline Language
===================

```
cd doc
pdflatex cryptoline.tex
```

Read doc/cryptoline.pdf for the details of the Cryptoline language.

Reference
=========

- Andy Polyakov, Ming-Hsien Tsai, Bow-Yaw Wang, Bo-Yin Yang:
  Verifying Arithmetic Assembly Programs in Cryptographic Primitives (Invited Talk).
  International Conference on Concurrency Theory (CONCUR),
  4:1-4:16, LIPIcs, 2018
- Ming-Hsien Tsai, Bow-Yaw Wang, Bo-Yin Yang:
  Certified Verification of Algebraic Properties on Low-Level Mathematical Constructs in Cryptographic Programs.
  ACM SIGSAC Conference on Computer and Communications Security (CCS),
  pp. 1973-1987, ACM, 2017
- Yu-Fang Chen, Chang-Hong Hsu, Hsin-Hung Lin, Peter Schwabe, Ming-Hsien Tsai, Bow-Yaw Wang, Bo-Yin Yang, Shang-Yi Yang:
  Verifying Curve25519 Software.
  ACM SIGSAC Conference on Computer and Communications Security (CCS),
  pp. 299-309, ACM, 2014
