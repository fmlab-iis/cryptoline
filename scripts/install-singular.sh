#!/bin/bash

# Tested on:
# - Ubuntu: 22.04

TOOLS_DIR=tools
SINGULAR_VERSION=4.4.0p6
SINGULAR_DIR=singular-${SINGULAR_VERSION}
SINGULAR_TAR_GZ=singular-${SINGULAR_VERSION}.tar.gz
SINGULAR_URL=https://github.com/Singular/Singular/archive/refs/tags/Release-${SINGULAR_VERSION//./-}.tar.gz

sudo apt install -y curl build-essential binutils autoconf autogen libtool \
	libreadline-dev libglpk-dev libgmp-dev libmpfr-dev libcdd-dev \
	libntl-dev libflint-dev 4ti2
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl -LJ ${SINGULAR_URL} -o ${SINGULAR_TAR_GZ}
mkdir -p ${SINGULAR_DIR}
tar zxf ${SINGULAR_TAR_GZ} --strip 1 -C ${SINGULAR_DIR}
pushd ${SINGULAR_DIR}
./autogen.sh
./configure --enable-gfanlib
make
sudo make install
sudo ldconfig
popd
popd
