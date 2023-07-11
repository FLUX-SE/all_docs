#!/bin/bash

for d in "[a-z][a-z]_[A-Z][A-Z]/*/"
do
    echo "Rendering $d ..."
    quarto render "$d"
done