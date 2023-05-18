FROM ubuntu:23.04

RUN apt update && apt upgrade -y
RUN apt install -y build-essential ocaml ocaml-dune libzarith-ocaml-dev \
                   liblwt-ocaml-dev curl git bc nano cmake libreadline-dev \
                   gdb python3 sudo

WORKDIR /home

RUN git clone https://github.com/berkeley-abc/abc.git abc
RUN git clone https://github.com/fmlab-iis/cryptoline.git cryptoline

WORKDIR /home/abc

RUN make && install -m 755 -s abc /usr/bin/

WORKDIR /home/cryptoline

RUN ./scripts/install-boolector.sh
RUN ./scripts/install-singular.sh
RUN dune build && dune install
