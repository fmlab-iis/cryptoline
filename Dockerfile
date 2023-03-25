FROM ubuntu:23.04

RUN apt update && apt upgrade -y
RUN apt install -y build-essential ocaml ocaml-dune libzarith-ocaml-dev \
                   liblwt-ocaml-dev curl git bc nano cmake libreadline-dev \
                   sudo

WORKDIR /home

RUN git clone https://github.com/arminbiere/aiger.git aiger
RUN git clone https://github.com/berkeley-abc/abc.git abc
RUN git clone https://github.com/fmlab-iis/cryptoline.git cryptoline

WORKDIR /home/aiger

RUN ./configure.sh && make && make install \
    && ar rcs libaiger.a `ls *.o` \
    && install -m 644 libaiger.a /usr/local/lib/ \
    && install -m 644 aiger.h aigfuzz.h simpaig.h /usr/local/include/

WORKDIR /home/abc

RUN make && install -m 755 -s abc /usr/bin/

WORKDIR /home/cryptoline

RUN ./scripts/install-boolector.sh
RUN ./scripts/install-singular.sh
RUN dune build && dune install
