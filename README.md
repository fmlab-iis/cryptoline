
Verified NTT Multiplications for NISTPQC KEM Lattice Finalists: Kyber, SABER, and NTRU
======================================================================================

This artifact contains the source code of CryptoLine and benchmarks to
reproduce the results from our paper "Verified NTT Multiplications
for NISTPQC KEM Lattice Finalists: Kyber, SABER, and NTRU" in CHES
2022.
The experiments in the paper run on a Ubuntu 20.04.3 server with
3.2GHz Intel Xeon (with 32 logical cores) and 1TB RAM.
All the 32 CPU cores are used during the experiments.
The minimum requirements for running the experiments are 256GB RAM
and 5GB free disk space.
Scripts provided in this artifact may not work on other Ubuntu
versions or other Linux distributions.


Prerequisite
============

To compile CryptoLine and run the experiments, the following packages
need to be installed.

- sudo
- [bc](https://www.gnu.org/software/bc/)
- [OCaml compiler](https://ocaml.org) (version 4.08.1 up)
- [GNU Make](https://www.gnu.org/software/make/)
- OCaml packages: dune, ocamlfind, lwt, lwt_ppx, zarith
- The computer algebra system [Singular](https://www.singular.uni-kl.de)
- The SMT QF_BV solver [Boolector](https://boolector.github.io)

CryptoLine is successfully compiled with OCaml 4.08.1, 4.11.2,
  4.12.1, 4.13.1, and 4.14.0 together with dune 3.2.0, lwt 5.5.0,
  lwt_ppx 2.0.3, and zarith 1.12.

All the required packages except sudo can be installed via the script
`build.sh` provided in this artifact.
To run `build.sh`, make sure that `sudo` is already installed and the
user running `build.sh` is in the group sudo.


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
$ sudo dune uninstall
```


CHES2022 Experiments
=====================


Experiment: Table 3
-------------------

To run the experiment of verifying the Intel AVX2 and Cortex-M4
assembly implementations for the NTTs for Kyber, NTRU, and Saber (see
Table 3 in the paper), run the script
`ches2022_run_experiments_table3.sh` in the project root.

```
$ ./ches2022_run_experiments_table3.sh
```

This experiment uses 32 CPU cores and the running time is around 1 day
on our server.
The CryptoLine specifications of the assembly implementations are
listed below.

- Kyber768
    + AVX2
        * Normal: `examples/ches2022/kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_ntt.cl`
        * Inverse: `examples/ches2022/kyber768/avx2/PQCLEAN_KYBER768_AVX2_polyvec_invntt_tomont2.cl`
    + Cortex-M4
        * Normal: `examples/ches2022/kyber768/pqm4/ntt_fast.cl`
        * Inverse: `examples/ches2022/kyber768/pqm4/invntt_fast_tuned.cl`
- ntru2048509
    + AVX2
        * Normal: `examples/ches2022/ntruhps2048509/avx2/nttmul_poly_ntt.cl`
        * Inverse: `examples/ches2022/ntruhps2048509/avx2/nttmul_poly_invntt_tomont2.cl`
    + Cortex-M4
        * Normal:
            - `examples/ches2022/ntruhps2048509/pqm4/__asm_ntt_0_1_2_3_32.cl`
            - `examples/ches2022/ntruhps2048509/pqm4/__asm_ntt_4_5_6_7_32.cl`
        * Inverse:
            - `examples/ches2022/ntruhps2048509/pqm4/__asm_intt_32.cl`
            - `examples/ches2022/ntruhps2048509/pqm4/__asm_final_map.cl`
- Saber
    + AVX2
        * Normal: `examples/ches2022/saber/avx2/test_sabermul_nttmul_poly_ntt.cl`
        * Inverse: `examples/ches2022/saber/avx2/test_sabermul_nttmul_poly_invntt_tomont.cl`
    + Cortex-M4
        * Normal: `examples/ches2022/saber/pqm4/asm_negacyclic_ntt_32.cl`
        * Inverse: `examples/ches2022/saber/pqm4/asm_negacyclic_intt_32.cl`

Details of the above specifications are available in Section 3.2 and
Section 4 of the paper.
To know more about CryptoLine tool and language, please read
README.CryptoLine.md.


Experiment: Figure 5
--------------------

To run the experiment of verifying AVX2 Kyber NTT with various number
of cuts, run the script `ches2022_run_experiments_figure5.sh` in the
project root.

```
$ ./ches2022_run_experiments_figure5.sh
```

This experiment takes 24 CPU cores and the running time on our server
is around 3 hours.
The CryptoLine specifications of AVX2 Kyber NTT with various number of
cuts can be found in `examples/ches2022/kyber768-avx2-cuts`.
Each specification is named `PQCLEAN_KYBER768_AVX2_polyvec_ntt_XX_cuts.cl`
where `XX` denotes the number of cuts.


Experimental Results
--------------------

All the log files of the experiments are stored in `results-*` in the
project root.
For example, log files of `ches2022_run_experiments_table3.sh` are
stored in `results-table3` while log files of
`ches2022_run_experiments_figure5.sh` are stored in `results-figure5`.
During the verification of a specification `spec.cl`, the following
log files are produced.

- `spec.log`: verbose output such as the running time of each step
- `spec_debug.log`: debugging output such as the inputs for Boolector
- `spec_summary.log`: running time summarized in four categories,
  namely algebra, overflow, range, and total, as shown in Table 3 of
  the paper

Each of the four categories in `spec_summary.log` summarizes the
running time of one or more steps in `spec.log`.

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


Extra Experiment: Lite
----------------------

Besides the experiments reproducing Table 3 and Figure 5, this
artifact provides an additional lite experiment, which verifies three
NTT implementations from Table 3 using 2 CPU cores:

- Kyber768 AVX2 normal
- Kyber768 Cortex-M4 normal
- Saber AVX2 normal

Execute the following command to run this lite experiment:

```
$ ./ches2022_run_experiments_table3_lite.sh
```

Most modern personal computer can run this lite experiment.
On a MacBook Air (M1, 2020), the running time of this experiment is 1
hour.


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

Each of our improvements made for verifying NTT implementations
spreads across different files.
Syntax of asserts, assumes, ghost variables, and cuts is in
`ast/cryptoline.ml:instr`.
Conversion from algebraic predicates in asserts, assumes, and ghost
variables to polynomials is in `verify/common.ml:bv2z_instr`.
Conversion from range predicates in asserts, assumes, and ghost
variables to SMT QF_BV expressions is in
`verify/common.ml:bexp_instr`.
Cutting specifications and processing `prove with` hints are in
`ast/cryptoline.ml:cut_espec` and `ast/cryptoline.ml:cut_rspec`.
