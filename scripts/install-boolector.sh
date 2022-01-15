#!/bin/bash

TOOLS_DIR=tools
BOOLECTOR_VERSION=3.2.0
BOOLECTOR_TAR_GZ=${BOOLECTOR_VERSION}.tar.gz
BOOLECTOR_DIR=boolector-${BOOLECTOR_VERSION}
BOOLECTOR_URL=https://github.com/Boolector/boolector/archive/refs/tags/3.2.0.tar.gz

sudo apt install -y build-essential cmake git
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl -L ${BOOLECTOR_URL} -o ${BOOLECTOR_TAR_GZ}
tar xvf ${BOOLECTOR_TAR_GZ}
pushd ${BOOLECTOR_DIR}
./contrib/setup-lingeling.sh
./contrib/setup-cadical.sh
./contrib/setup-btor2tools.sh
./configure.sh
cd build
make
sudo make install
cd ..
popd
popd