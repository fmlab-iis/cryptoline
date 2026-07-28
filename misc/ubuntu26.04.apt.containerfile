# This is a containerfile based on Ubuntu 26.04 with OCaml packages
# installed by apt-get as more as possible.

FROM ubuntu:26.04

# Install Ubuntu packages
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y build-essential curl git bc nano cmake gdb python3 sudo \
                          pkg-config ocaml libzarith-ocaml-dev \
                          liblwt-ocaml-dev libppx-optcomp-ocaml-dev \
                          libgmp-dev libmpfr-dev libppl-dev libglpk-dev libflint-dev \
                          libbigarray-compat-ocaml-dev libreadline-dev \
                          python3-pip python3-venv libmpc-dev vim tmux z3 singular \
                          opam

# Install OCaml packages (not available via apt), CryptoLine, and external tools
WORKDIR /home/ubuntu
RUN opam init -a -y -c ocaml-system --dot-profile=/home/ubuntu/.bashrc \
      --disable-sandboxing --root=/home/ubuntu/.opam \
    && eval $(opam env --root=/home/ubuntu/.opam --switch=ocaml-system) \
# Install domainslib and apron by opam
    && opam install -y --root=/home/ubuntu/.opam apron domainslib \
    && opam clean --root=/home/ubuntu/.opam \
# Install CryptoLine
    && git clone https://github.com/fmlab-iis/cryptoline.git cryptoline \
    && cd cryptoline \
    && dune build \
    && dune install --prefix /home/ubuntu/.local \
# Install abc
    && ./scripts/install-abc.sh \
# Install Boolector
    && ./scripts/install-boolector3.2.4-ubuntu26.04.sh \
# Install MIP solvers (islpy, pplpy and pyscipopt)
    && python3 -m venv /home/ubuntu/.local \
    && export PATH=/home/ubuntu/.local/bin:$PATH \
    && pip3 install islpy pplpy pyscipopt pyparsing \
# Set up user account
    && passwd -d ubuntu \
    && echo 'export PATH=$HOME/.local/bin:$PATH' >> /home/ubuntu/.bashrc \
    && chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
