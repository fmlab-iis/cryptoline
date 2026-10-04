#!/bin/bash

TOOLS_DIR=tools
ABC_NAME=abc
ABC_URL=https://github.com/berkeley-abc/abc.git

if [ "$(uname)" == "Darwin" ]; then
    brew install curl cmake
    export PATH="/usr/local/opt/curl/bin:$PATH"
elif [ "$(uname)" == "Linux" ]; then
    sudo apt install -y curl build-essential binutils cmake libreadline-dev
else
    exit
fi
mkdir -p ${TOOLS_DIR}
pushd ${TOOLS_DIR}
git clone ${ABC_URL} ${ABC_NAME}

pushd ${ABC_NAME}
make -j `nproc`
sudo mkdir -p /usr/local/bin/
sudo install -m 755 -s abc /usr/local/bin/
popd

popd
