#!/bin/bash

# Tested on:
# - Ubuntu: 26.04

TOOLS_DIR=tools
BOOLECTOR_VERSION=3.2.4
BOOLECTOR_TAR_GZ=${BOOLECTOR_VERSION}.tar.gz
BOOLECTOR_DIR=boolector-${BOOLECTOR_VERSION}
BOOLECTOR_URL=https://github.com/Boolector/boolector/archive/refs/tags/${BOOLECTOR_VERSION}.tar.gz

sudo apt install -y curl build-essential binutils cmake git
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl -L ${BOOLECTOR_URL} -o ${BOOLECTOR_TAR_GZ}
tar xvf ${BOOLECTOR_TAR_GZ}
pushd ${BOOLECTOR_DIR}
./contrib/setup-cadical.sh
CMAKE_POLICY_VERSION_MINIMUM=3.5 ./contrib/setup-btor2tools.sh
CMAKE_POLICY_VERSION_MINIMUM=3.5 ./configure.sh
cd build
make -j `nproc`
sudo make install
cd ..
popd
popd
