#!/bin/bash

FLAG_GIT=$1
FLAG_WGET=$2
FLAG_XZ_UTILS=$3
FLAG_ARM=$4
FLAG_BUILD_ESSENTIAL=$5
FLAG_NINJA=$6
FLAG_PYTHON=$7

echo "script install dependencies"
apt-get update
if [ $FLAG_GIT ]; then
    apt-get install -y git
fi

if [ $FLAG_WGET ]; then
    apt-get install -y wget
fi

if [ $FLAG_XZ_UTILS ]; then
    apt-get install -y xz-utils 
fi

if [ $FLAG_ARM ]; then
    apt-get install -y gcc-arm-none-eabi
fi

if [ $FLAG_BUILD_ESSENTIAL ]; then
    apt-get install -y build-essential
fi

if [ $FLAG_NINJA ]; then
    apt-get -y -qq install cmake ninja-build
    apt-get -y -qq install gcc-10  ninja-build
    apt-get -y -qq install g++-10 ninja-build
fi

if [ $FLAG_PYTHON ]; then
    apt-gat install python3.11
    python -m pip install --upgrade pip
    pip install jinja2 ruamel.yaml
fi