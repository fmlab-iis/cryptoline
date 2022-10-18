#!/bin/bash

TOOLS_DIR=tools
SINGULAR_VERSION=4.1.3p2
SINGULAR_DIR=singular-${SINGULAR_VERSION}
SINGULAR_TAR_GZ=singular-${SINGULAR_VERSION}.tar.gz

sudo apt install -y curl build-essential autoconf autogen libtool \
	libreadline6-dev libglpk-dev libgmp-dev libmpfr-dev libcdd-dev \
	libntl-dev libflint-dev 4ti2
pushd ${TOOLS_DIR}
mkdir ${SINGULAR_DIR}
tar zxf ${SINGULAR_TAR_GZ} -C ${SINGULAR_DIR} --strip-components 1
pushd ${SINGULAR_DIR}
./configure --enable-gfanlib
make
sudo make install
sudo ldconfig
popd
popd
