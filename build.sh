#!/bin/bash

echo "Installing prerequisite packages."
sudo apt -y install \
	build-essential ocaml ocaml-dune libzarith-ocaml-dev liblwt-ocaml-dev \
	boolector singular

echo "Compiling CryptoLine."
dune build

echo "Installing CryptoLine."
dune install

echo "Installing Singular 4.1.3."
scripts/install-singular.sh

echo "Installing Boolector 3.2.0."
scripts/install-boolector.sh
