#!/bin/bash

EXAMPLE_TEST=$1
GITHUB_WORKSPACE=$2

echo build boards
if [ $EXAMPLE_TEST ]; then
    for yamlFile in $(/usr/bin/find -L "$GITHUB_WORKSPACE/source/board" -name '*.yaml')
    do
        $GITHUB_WORKSPACE/scripts/generateBoard.py ${yamlFile}
    done

    git add -N .
    git diff --exit-code
fi

echo "build RAW Boards"

for yamlFile in $(/usr/bin/find -L "$GITHUB_WORKSPACE/source/chip" -name '*.yaml')
do
    $GITHUB_WORKSPACE/scripts/generateBoard.py ${yamlFile} -o /tmp/$(basename ${yamlFile} .yaml)
done