#!/bin/bash
set -e


CURDIR=`/bin/pwd`
BASEDIR=$(dirname $0)

echo "CURDIR is $CURDIR"
echo "BASEDIR is $BASEDIR"

cd $1

if [ -f $2 ]; then
    cat $2 | ghci $3 -fno-show-loaded-modules | sed \
    -e '/Ok, [A-Za-z0-9]* module\(s*\) loaded./,$!d' \
    -e '/Ok, [A-Za-z0-9]* module\(s*\) loaded./d' \
    -e 's/*[A-Z][A-Za-z0-9]*> *//' \
    -e '$ d'
    exit 0
fi

echo "no such file $2"
exit 1
