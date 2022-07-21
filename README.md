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

CryptoLine are successfully compiled with OCaml 4.08.1, 4.11.2,
  4.12.1, 4.13.1, and 4.14.0 together with dune 3.2.0, lwt 5.5.0,
  lwt_ppx 2.0.3, num 1.4, and zarith 1.12.


Installation
============

Follow the following instructions (or simply run the script `build.sh`
in the project root) to build and install CryptoLine as well as
the default solver Singular and Boolector on Ubuntu 20.04 LTS.

```
$ sudo apt -y install \
	build-essential ocaml ocaml-dune libzarith-ocaml-dev liblwt-ocaml-dev \
	boolector singular
$ dune build
$ dune install
```

Run the following command to see the available command-line arguments.

```
$ cv -help
```

To uninstall CryptoLine, run the following command.

```
$ dune uninstall
```

Note that Singular and Boolector provided by Ubuntu are pretty old.
It is recommended to install newer versions of Singular and Boolector.
Use the scripts `scripts/install-singular.sh` and
`scripts/install-boolector.sh` to install Singular 4.1.3p2 and
Boolector 3.2.0.

```
$ scripts/install-singular.sh
$ scripts/install-boolector.sh
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


TCHES2022 Experiments
===================

The experiments in the TCHESS 2022 paper "Verified NTT Multiplications
for NISTPQC KEM Lattice Finalists: Kyber, Saber, and NTRU" are running
on an Ubuntu 20.04.3 server with 3.2GHz Intel Xeon (with 32 logical
cores) and 1TB RAM.

To run the experiments of verifying the Intel AVX2 and Cortex M4
assembly implementations for the NTTs for Kyber, NTRU, and Saber (see
Table 3 in the paper), run the script
`tches2022_run_experiments_table3.sh` in the project root.

```
$ ./tches2022_run_experiments_table3.sh
```

Note that at least 24 CPU cores are used to run the experiments.
The CryptoLine specifications of the assembly implementations are
listed below.

- Kyber768
    + AVX2
        * Normal: `examples/tches2022/kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_ntt.cl`
        * Inverse: `examples/tches2022/kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_invntt_tomont2.cl`
    + Cortex M4
        * Normal: `examples/tches2022/kyber768/pqm4/ntt_fast.cl`
        * Inverse: `examples/tches2022/kyber768/pqm4/invntt_fast_tuned.cl`
- ntru2048509
    + AVX2
        * Normal: `examples/tches2022/ntruhps2048509/avx2/nttmul_poly_ntt.cl`
        * Inverse: `examples/tches2022/ntruhps2048509/avx2/nttmul_poly_invntt_tomont2.cl`
    + Corext M4
        * Normal:
            - `examples/tches2022/ntruhps2048509/pqm4/__asm_ntt_0_1_2_3_32.cl`
            - `examples/tches2022/ntruhps2048509/pqm4/__asm_ntt_4_5_6_7_32.cl`
        * Inverse:
            - `examples/tches2022/ntruhps2048509/pqm4/__asm_intt_32.cl`
            - `examples/tches2022/ntruhps2048509/pqm4/__asm_final_map.cl`
- Saber
    + AVX2
        * Normal: `examples/tches2022/saber/avx2/test_sabermul_nttmul_poly_ntt.cl`
        * Inverse: `examples/tches2022/saber/avx2/test_sabermul_nttmul_poly_invntt_tomont.cl`
    + Cortex M4
        * Normal: `examples/tches2022/saber/pqm4/asm_negacyclic_ntt_32.cl`
        * Inverse: `examples/tches2022/saber/pqm4/asm_negacyclic_intt_32.cl`

To run the experiments of verifying AVX2 Kyber NTT with various number
of cuts, run the script `tches2022_run_experiments_figure5.sh` in the
project root.

```
$ ./tches2022_run_experiments_figure5.sh
```

The CryptoLine specifications of AVX2 Kyber NTT with various number of
cuts can be found in `examples/tches2022/kyber768-avx2-cuts`.
Each specification is named `PQCLEAN_KYBER768_AVX2_polyvec_ntt_XX_cuts.cl`
where `XX` denotes the number of cuts.

All the log files of the experiments are stored in `results` in the
project root.
During the verification of a specification `examples/path/to/spec.cl`,
the following log files are produced.

- `results/path/to/spec.log`: verbose output such as the running
  time of each step
- `results/path/to/spec_debug.log`: debugging output such as the
  inputs for Boolector
- `results/path/to/spec_summary.log`: running time summarized in
  four categories, namely algebra, overflow, range, and total, as
  shown in Table 3 of the paper

Each of the four categories in `results/path/to/spec_summary.log`
summarizes the running time of one or more steps in
`results/path/to/spec.log`.

- Algebra
    + Verifying algebraic assertions
    + Verifying algebraic specification
- Overflow
    + Verifying program safety
- Range
    + Verifying range assertions
    + Verifying range specification
- Total
    + Verification result


Source Code Organization
========================

```
cryptoline
  +-- LICENSE: license file
  +-- README.md: readme file
  +-- cv.ml: the main entrance of CryptoLine
  +-- cv_cli.ml: CLI mode of CryptoLine, used with the -cli argument
  +-- dune-project: dune metadata of this project
  +-- dune: components to be built by dune
  +-- ast/: abstract syntax of CryptoLine
  +-- doc/: description of CryptoLine language and a tutorial
  +-- examples/: specifications in CryptoLine languages
  +-- main/: command line arguments of CryptoLine
  +-- misc/: miscellaneous supporting files
  +-- nbits/: OCaml code extracted from [coq-nbits](https://github.com/fmlab-iis/coq-nbits)
  +-- options/: options of CryptoLine
  +-- parsers/: parsers of CryptoLine specifications
  +-- qfbv:/ translation to SMT QF_BV queries
  +-- scripts:/ some useful scripts
  +-- sim/: simulator of CryptoLine programs
  +-- typecheck/: well-formednees checker of CryptoLine specifications
  +-- utils/: utility functions
  +-- verify/: verification procedures
```


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


Troubleshooting
===============

internal error in 'lglib.c': watcher stack overflow
---------------------------------------------------

The scripts `tches2022_run_experiments_table3.sh` and
`./tches2022_run_experiments_figure5.sh` may output "Failed" and the
log files contain the following error message.

```
internal error in 'lglib.c': watcher stack overflow
```

In this case, remove the line `./contrib/setup-lingeling.sh` from
`scripts/install-boolector.sh` and install Boolector again using
`scripts/install-boolector.sh`.
