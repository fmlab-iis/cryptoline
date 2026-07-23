FROM ubuntu:24.04

ENV SCIPOPTDIR=/home/ubuntu/.local/scipopt
SHELL ["/bin/bash", "-l", "-c"]

# Install Ubuntu packages
RUN apt update && apt upgrade -y && \
    apt install -y build-essential curl git bc nano cmake gdb python3 sudo \
                   libgmp-dev libmpfr-dev libppl-dev libglpk-dev libflint-dev \
                   libreadline-dev pkg-config opam python3-pip python3-venv \
                   vim tmux libtbb-dev libboost-all-dev libmpc-dev

# Install OCaml packages
WORKDIR /home/ubuntu
RUN opam init -a --disable-sandboxing --root=/home/ubuntu/.opam && \
    eval $(opam env --root=/home/ubuntu/.opam) && \
    opam switch create 4.14.2 4.14.2 --root=/home/ubuntu/.opam && \
    eval $(opam env --root=/home/ubuntu/.opam) && \
    opam install -y --root=/home/ubuntu/.opam \
         ocamlfind dune zarith lwt lwt_ppx ppx_optcomp apron && \
    opam clean --root=/home/ubuntu/.opam && \
# Install scipopt
    curl -O https://www.scipopt.org/download/release/scipoptsuite-9.2.1.tgz && \
    tar zxf scipoptsuite-9.2.1.tgz && \
    pushd scipoptsuite-9.2.1 && \
    mkdir build && \
    pushd build && \
    cmake -DCMAKE_INSTALL_PREFIX=${SCIPOPTDIR} -DAUTOBUILD=on .. && \
    make && \
    make install && \
    popd && \
    popd && \
    rm -rf scipoptsuite-9.2.1.tgz scipoptsuite-9.2.1 && \
# Install islpy, pyscipopt, and pplpy
    python3 -m venv /home/ubuntu/.local && \
    export PATH=/home/ubuntu/.local/bin:$PATH && \
    export SCIPOPTDIR=${SCIPOPTDIR} && \
    pip3 install islpy pyscipopt pplpy pyparsing && \
# Set up user account
    passwd -d ubuntu && mkdir -p /home/ubuntu/.local/bin && \
    echo 'export PATH=$HOME/.local/bin:$HOME/abc:$PATH' >> .bashrc && \
    echo 'eval $(opam env)' >> .bashrc

# Install CryptoLine, Boolector, Singular, and abc
WORKDIR /home/ubuntu
RUN git clone https://github.com/fmlab-iis/cryptoline.git cryptoline && \
    pushd cryptoline && dune build && dune install && dune clean && \
    ./scripts/install-boolector.sh && ./scripts/install-singular.sh && \
    rm -rf ./tools/* && popd && \
    git clone https://github.com/berkeley-abc/abc.git abc && \
    pushd abc && make && \
    cp abc abc.rc /home/ubuntu/.local/bin && \
    popd && rm -rf abc && \
    chown -R ubuntu.ubuntu cryptoline .opam .local .bash* .profile

USER ubuntu
