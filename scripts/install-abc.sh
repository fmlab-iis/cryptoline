#!/bin/bash

TOOLS_DIR=tools
ABC_NAME=abc
ABC_VERSION=a9237f50ea01efdd62f86d334a38ffbe80a3d141
ABC_FILE=${ABC_NAME}-${ABC_VERSION}.tar.gz
ABC_DIR=${ABC_NAME}-${ABC_VERSION}
ABC_URL=https://github.com/berkeley-abc/${ABC_NAME}/archive/${ABC_VERSION}.tar.gz

sudo apt install -y curl build-essential binutils cmake libreadline-dev
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
curl -L ${ABC_URL} -o ${ABC_FILE}
tar xvf ${ABC_FILE}
mv ${ABC_FILE/.tar.gz/} ${ABC_DIR}

pushd ${ABC_DIR}
make
mkdir -p /usr/local/bin/
install -m 755 -s abc /usr/local/bin/
popd

popd
