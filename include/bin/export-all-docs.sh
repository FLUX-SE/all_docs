#!/usr/bin/env bash

for d in `ls -d1 *_doc`
do
    yarn run convert "$d"
done