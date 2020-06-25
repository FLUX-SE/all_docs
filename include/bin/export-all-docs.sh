#!/usr/bin/env bash

for d in `ls -d1 [a-z][a-z]_[A-Z][A-Z]/*`
do
    yarn run convert "$d"
done