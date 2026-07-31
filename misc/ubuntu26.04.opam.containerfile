# This is a containerfile based on Ubuntu 26.04 with OCaml packages
# installed by opam.

FROM ubuntu:26.04

# Install Ubuntu packages
RUN apt-get update \
    && apt-get upgrade -y \
    && apt-get install -y build-essential curl git bc nano cmake gdb python3 \
                          sudo libgmp-dev libmpfr-dev libppl-dev libglpk-dev \
                          libflint-dev libreadline-dev pkg-config opam \
                          python3-pip python3-venv vim tmux z3 singular \
    && apt-get clean

# Install OCaml packages, CryptoLine, and external tools
WORKDIR /home/ubuntu
RUN opam init -a -y -c 5.5.0 --dot-profile=/home/ubuntu/.bashrc \
      --disable-sandboxing --root=/home/ubuntu/.opam \
    && eval $(opam env --root=/home/ubuntu/.opam --switch=5.5.0) \
    && opam install -y --root=/home/ubuntu/.opam \
         ocamlfind dune zarith lwt lwt_ppx ppx_optcomp apron domainslib \
    && opam clean --root=/home/ubuntu/.opam \
# Install CryptoLine
    && git clone https://github.com/fmlab-iis/cryptoline.git cryptoline \
    && cd cryptoline \
    && dune build \
    && dune install \
    && dune clean \
# Install abc
    && ./scripts/install-abc.sh \
# Install Boolector
    && ./scripts/install-boolector3.2.4-ubuntu26.04.sh \
# Clean abc and Boolector
    && rm -rf tools \
# Install MIP solvers (islpy, pplpy and pyscipopt)
    && python3 -m venv /home/ubuntu/.local \
    && export PATH=/home/ubuntu/.local/bin:$PATH \
    && pip3 install islpy pplpy pyscipopt pyparsing \
    && pip cache purge \
# Set up user account
    && passwd -d ubuntu \
    && echo 'export PATH=$HOME/.local/bin:$PATH' >> /home/ubuntu/.bashrc \
    && chown -R ubuntu:ubuntu /home/ubuntu

USER ubuntu
