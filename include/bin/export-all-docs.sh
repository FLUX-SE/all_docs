#!/usr/bin/env bash

for d in `ls -d1 *_doc | grep -v spat_revolution`
do
    yarn run convert "$d"
done