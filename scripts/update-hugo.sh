#!/bin/bash

INSTALLDIR="$HOME/.local/bin"
BINARYPATH="$INSTALLDIR/hugo"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

curl --location --silent \
	"https://github.com/gohugoio/hugo/releases/download/v${VERSION}/hugo_extended_${VERSION}_linux-amd64.tar.gz" \
    -o hugo.tgz
if [ -f $BINARYPATH ]; then
    rm $BINARYPATH
fi
tar -C $INSTALLDIR -xf hugo.tgz hugo

rm hugo.tgz
$BINARYPATH version
