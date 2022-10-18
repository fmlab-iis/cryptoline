CryptoLine
==========

CryptoLine is a tool and a language for the verification of low-level
implementations of mathematical constructs. It has been used to verify
implementations in
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
- OCaml packages: dune, ocamlfind, lwt, lwt_ppx, zarith
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

CryptoLine are successfully compiled with OCaml 4.08.1, 4.11.2,
  4.12.1, 4.13.1, and 4.14.0 together with dune 3.2.0, lwt 5.5.0,
  lwt_ppx 2.0.3, and zarith 1.12.

To run the installation script `build.sh`, `sudo` is required.
On a Ubuntu machine, install `sudo` by running the following
command as root:

```
# apt -y install sudo
```


Installation
============

Follow the following instructions (or simply run the script `build.sh`
in the project root) to build and install CryptoLine as well as
the compute algebra system Singular and the SMT QF_BV solver Boolector
on Ubuntu 20.04 LTS.

```
$ sudo apt -y install \
	build-essential bc ocaml ocaml-dune libzarith-ocaml-dev \
    liblwt-ocaml-dev
$ scripts/install-singular.sh
$ scripts/install-boolector.sh
$ dune build
$ sudo dune install
```

Run the following command to see the available command-line arguments.

```
$ cv -help
```

To uninstall CryptoLine, run the following command.

```
$ dune uninstall
```

To test the installation of CryptoLine, run the script
`run_experiments` in the project root.

```
$ ./run_experiments -simple
```

Below is the expected output (time may vary).

```
Verifying examples/qhasm/fe25519_add.cl: 0 seconds                          [OK]
Verifying examples/qhasm/fe25519_sub.cl: 1 seconds                          [OK]
Verifying examples/qhasm/fe25519r64_add.cl: 0 seconds                       [OK]
Verifying examples/qhasm/fe25519r64_addsub.cl: 0 seconds                    [OK]
Verifying examples/qhasm/fe25519r64_sub.cl: 0 seconds                       [OK]
```


Basic Usage
===========

Parse a CryptoLine specification `spec.cl`.

```
$ cv -p spec.cl
```

Output the SSA (Static Single Assignment) form of a CryptoLine specification
`spec.cl`.

```
$ cv -pssa spec.cl
```

Verify a CryptoLine specification `spec.cl` with verbose outputs (`-v`),
incremental checking of algebraic soundness (`-isafety`), at most 24
parallel jobs (`-jobs 24`), program slicing (`-slicing`), and without
carry constraints for computer algebra systems
(`-no_carry_constraint`).

```
$ cv -v -isafety -jobs 24 -slicing -no_carry_constraint spec.cl
```

Many examples of CryptoLine specifications can be found in `examples`.


CryptoLine Language
===================

Read doc/cryptoline.pdf for the details of the CryptoLine language.
Examples of CryptoLine specifications are available in `examples` with
`.cl` filename suffix.
More examples can be found on
[GitHub](https://github.com/fmlab-iis/cryptoline).


Tutorial
========

A tutorial of CryptoLine is available in doc/tutorial.pdf.


Syntax Highlight
================

Syntax highlighting in Emacs is provided by misc/cryptoLine-mode.el.

```elisp
; Change [PATH_TO_CRYPTOLINE] to the right location
(add-to-list 'load-path "[PATH_TO_CRYPTOLINE]/misc")
(autoload 'cryptoline-mode "cryptoline-mode" "Major mode for CryptoLine files." t)
(add-to-list 'auto-mode-alist '("\\.cl\\'" . cryptoline-mode))
```

Syntax highlighting in Visual Studio Code is provided by the extension
misc/cryptoline-vscode-extension/cryptoline-x.y.z.vsix where x.y.z is
the version of the extension.


Reference
=========

- Yu-Fu Fu, Jiaxiang Liu, Xiaomu Shi, Ming-Hsien Tsai, Bow-Yaw Wang, and Bo-Yin Yang.
  Signed Cryptographic Program Verification with Typed CryptoLine.
  In Proceedings of the 2019 ACM SIGSAC Conference on Computer and Communications Security (CCS '19).
  ACM, New York, NY, USA, 1591-1606. DOI: https://doi.org/10.1145/3319535.3354199
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
