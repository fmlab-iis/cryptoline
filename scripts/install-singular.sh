#!/bin/bash

TOOLS_DIR=tools
SINGULAR_VERSION=4.3.0
SINGULAR_DIR=singular-${SINGULAR_VERSION}
SINGULAR_TAR_GZ=singular-${SINGULAR_VERSION}.tar.gz
SINGULAR_URL=ftp://jim.mathematik.uni-kl.de/pub/Math/Singular/SOURCES/${SINGULAR_VERSION//./-}/${SINGULAR_TAR_GZ}

apt install -y curl build-essential autoconf autogen libtool \
	libreadline6-dev libglpk-dev libgmp-dev libmpfr-dev libcdd-dev \
	libntl-dev libflint-dev 4ti2
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl ${SINGULAR_URL} -o ${SINGULAR_TAR_GZ}
tar zxf ${SINGULAR_TAR_GZ}
pushd ${SINGULAR_DIR}
./configure --enable-gfanlib
make
make install
sudo ldconfig
popd
popd
