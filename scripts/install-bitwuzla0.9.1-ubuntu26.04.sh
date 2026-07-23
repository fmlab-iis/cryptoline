 #!/bin/bash

# Tested on:
# - Ubuntu: 26.04

TOOLS_DIR=tools
BITWUZLA_VERSION=0.9.1
BITWUZLA_TAR_GZ=${BITWUZLA_VERSION}.tar.gz
BITWUZLA_DIR=bitwuzla-${BITWUZLA_VERSION}
BITWUZLA_URL=https://github.com/bitwuzla/bitwuzla/archive/refs/tags/${BITWUZLA_VERSION}.tar.gz

sudo apt install -y curl build-essential binutils cmake git pkg-config \
	libgmp-dev libmpfr-dev meson
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl -L ${BITWUZLA_URL} -o ${BITWUZLA_TAR_GZ}
tar xvf ${BITWUZLA_TAR_GZ}
pushd ${BITWUZLA_DIR}
./configure.py
cd build
ninja -j 4 install
cd ..
popd
popd
