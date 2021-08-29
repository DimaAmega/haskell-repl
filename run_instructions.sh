#!/bin/bash

set -e

if [ -f $1 ]; then
    cat $1 | ghci $2 | sed -e '1,3d' -e 's/*Main> //g' -e '$ d'
fi
