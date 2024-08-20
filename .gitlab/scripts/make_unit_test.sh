#!/bin/bash

UNIT_TEST=$1
WORKSPACE=$2

if [ $UNIT_TEST ]; then
    cmake -E make_directory $WORKSPACE/output
    cd output
    cmake -G Ninja ./unit-test
    cmake --build . --target all
    cmake --build . --target run
fi