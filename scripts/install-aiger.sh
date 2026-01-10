#!/bin/bash

TOOLS_DIR=tools
AIGER_NAME=aiger
AIGER_VERSION=1.9.9
AIGER_FILE=${AIGER_NAME}-${AIGER_VERSION}.tar.gz
AIGER_DIR=${AIGER_NAME}-${AIGER_VERSION}
AIGER_URL=http://fmv.jku.at/aiger/${AIGER_NAME}-${AIGER_VERSION}.tar.gz
LINGELING_NAME=lingeling
LINGELING_VERSION=72d2b13eea5fbd95557a3d0d199cd98dfbdc76ee
LINGELING_FILE=${LINGELING_NAME}-${LINGELING_VERSION}.tar.gz
LINGELING_DIR=${LINGELING_NAME}
LINGELING_URL=https://github.com/arminbiere/${LINGELING_NAME}/archive/${LINGELING_VERSION}.tar.gz
PICOSAT_NAME=picosat
PICOSAT_VERSION=965
PICOSAT_FILE=${PICOSAT_NAME}-${PICOSAT_VERSION}.tar.gz
PICOSAT_DIR=${PICOSAT_NAME}
PICOSAT_URL=http://fmv.jku.at/picosat/picosat-965.tar.gz

if [ "$(uname)" == "Darwin" ]; then
    brew install curl
    export PATH="/usr/local/opt/curl/bin:$PATH"
elif [ "$(uname)" == "Linux" ]; then
    sudo apt install -y curl build-essential binutils
else
    exit
fi

mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl -L ${AIGER_URL} -o ${AIGER_FILE}
curl -L ${LINGELING_URL} -o ${LINGELING_FILE}
curl -L ${PICOSAT_URL} -o ${PICOSAT_FILE}
tar xvf ${AIGER_FILE}
tar xvf ${LINGELING_FILE}
tar xvf ${PICOSAT_FILE}
mv ${LINGELING_FILE/.tar.gz/} ${LINGELING_DIR}
mv ${PICOSAT_FILE/.tar.gz/} ${PICOSAT_DIR}

pushd ${LINGELING_DIR}
./configure.sh
make
popd

pushd ${PICOSAT_DIR}
./configure.sh
make
popd

pushd ${AIGER_DIR}
if [ "$(uname)" == "Darwin" ]; then
    sed -i "29i#include <unistd.h>" aigunconstraint.c
fi
./configure.sh
make
sudo mkdir -p /usr/local/bin
sudo mkdir -p /usr/local/lib
sudo mkdir -p /usr/local/include
sudo install -m 755 -s aigand aigbmc aigdd aigflip aigfuzz aiginfo aigjoin aigmiter aigmove aignm aigor aigreset aigsim aigsplit aigstrip aigtoaig aigtoblif aigtocnf aigtodot aigtosmv aigunconstraint aigunroll andtoaig bliftoaig smvtoaig soltostim wrapstim /usr/local/bin/
ar rcs libaiger.a `ls *.o`
sudo install -m 644 libaiger.a /usr/local/lib/
sudo install -m 644 aiger.h aigfuzz.h simpaig.h /usr/local/include/
popd

popd
