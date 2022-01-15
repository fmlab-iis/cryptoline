CryptoLine
==========

CryptoLine is a tool and a language for the verification of low-level implementations of
mathematical constructs. It has been used to verify implementations in
[OpenSSL](https://www.openssl.org),
[BoringSSL](https://opensource.google.com/projects/boringssl),
[mbed TLS](https://tls.mbed.org),
[pqm4](https://github.com/mupq/pqm4),
[ntt-polymul](https://github.com/ntt-polymul/ntt-polymul), etc.


Prerequisite
============

To compile and run CryptoLine, the following packages need to be installed.

- [OCaml compiler](https://ocaml.org) (version 4.08.1 up)
- [GNU Make](https://www.gnu.org/software/make/)
- OCaml packages: dune, ocamlfind, lwt, lwt_ppx, num, zarith
- One of the following computer algebra systems:
  + [Singular](https://www.singular.uni-kl.de) (recommended, the default to be used)
  + [SageMath](http://www.sagemath.org)
  + [Magma](http://magma.maths.usyd.edu.au/magma/)
  + [Mathematica](https://www.wolfram.com/mathematica/)
  + [Macaulay2](https://faculty.math.illinois.edu/Macaulay2/)
  + [Maple](https://www.maplesoft.com)
- One of the following SMT solvers:
  + [Boolector](https://boolector.github.io) (recommended, the default to be used)
  + [Z3](https://github.com/Z3Prover/z3)
  + [Mathsat](http://mathsat.fbk.eu)


Installation
============

Follow the following instructions to build and install CryptoLine as well as the default solver Singular and Boolector on Ubuntu 20.04 LTS.

```
$ sudo apt -y install \
	build-essential ocaml ocaml-dune libzarith-ocaml-dev liblwt-ocaml-dev \
	boolector singular
$ dune build
$ dune install
```

Run the following command to see the available command-line arguments.

```
$ cv
```

To uninstall CryptoLine, run the following command.

```
dune uninstall
```

Note that Singular and Boolector provided by Ubuntu are pretty old.
It is recommended to install newer versions of Singular and Boolector.
Using the scripts install-singular.sh and install-boolector.sh, Singular
4.1.3p2 and Boolector 3.2.0 can be installed.

```
$ scripts/install-singular.sh
$ scripts/install-boolector.sh
```


CryptoLine Language
===================

Read doc/cryptoline.pdf for the details of the CryptoLine language.


Syntax Highlight in Emacs
=========================
CryptoLine-mode.el in the project root

only support syntax highlighting now

```elisp
; Change [PATH_TO_CRYPTOLINE] to the right location
(add-to-list 'load-path "[PATH_TO_CRYPTOLINE]/misc/cryptoline-mode.el")
(autoload 'cryptoline-mode "cryptoline-mode" "Major mode for CryptoLine files." t)
(add-to-list 'auto-mode-alist '("\\.cl\\'" . cryptoline-mode))
```

Reference
=========
- Yu-Fu Fu, Jiaxiang Liu, Xiaomu Shi, Ming-Hsien Tsai, Bow-Yaw Wang, and Bo-Yin Yang. 2019. Signed Cryptographic Program Verification with Typed CryptoLine. In Proceedings of the 2019 ACM SIGSAC Conference on Computer and Communications Security (CCS '19). ACM, New York, NY, USA, 1591-1606. DOI: https://doi.org/10.1145/3319535.3354199
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
