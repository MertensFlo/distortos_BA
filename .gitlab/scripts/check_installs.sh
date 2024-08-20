#!/bin/bash

FLAG_ARM=$1
FLAG_PYHTON=$2

echo "script check installs"
if [ $FLAG_ARM ]; then
    arm-none-eabi-gcc -v
else if [ $FLAG_PYTHON ]; then
    python3 --version
else
    echo "no installs checked"
fi