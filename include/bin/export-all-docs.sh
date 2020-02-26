#!/usr/bin/env bash

(
pwd
for d in `ls -dl1 *_doc | grep -v analyser | grep -v spat_revolution`
do
    yarn run convert "$d"
done
)