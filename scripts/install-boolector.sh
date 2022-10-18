#!/bin/bash

TOOLS_DIR=tools
BOOLECTOR_VERSION=3.2.0
BOOLECTOR_TAR_GZ=boolector-${BOOLECTOR_VERSION}.tar.gz
BOOLECTOR_DIR=boolector-${BOOLECTOR_VERSION}

sudo apt install -y build-essential cmake git
pushd ${TOOLS_DIR}
mkdir ${BOOLECTOR_DIR}
tar zxf ${BOOLECTOR_TAR_GZ} -C ${BOOLECTOR_DIR} --strip-components 1
pushd ${BOOLECTOR_DIR}
./contrib/setup-cadical.sh
./contrib/setup-btor2tools.sh
./configure.sh
cd build
make
sudo make install
cd ..
popd
popd
