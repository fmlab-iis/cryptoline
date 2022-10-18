#!/bin/bash

echo "Installing prerequisite packages."
sudo apt -y install \
	build-essential bc ocaml ocaml-dune libzarith-ocaml-dev \
	liblwt-ocaml-dev

echo "Installing Singular 4.1.3."
scripts/install-singular.sh

echo "Installing Boolector 3.2.0."
scripts/install-boolector.sh

echo "Compiling CryptoLine."
dune build

echo "Installing CryptoLine."
sudo dune install
