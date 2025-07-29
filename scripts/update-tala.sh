#!/bin/bash
INSTALLDIR="$HOME/.local"
TMPFILE="$(mktemp).tar.gz"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

curl --location --silent "https://github.com/terrastruct/TALA/releases/download/v${VERSION}/tala-v${VERSION}-linux-amd64.tar.gz" -o $TMPFILE

tar -C $INSTALLDIR -xf $TMPFILE 
rm $TMPFILE

DSTDIR="$INSTALLDIR/tala-v${VERSION}"
ln -s $DSTDIR/bin/d2plugin-tala $INSTALLDIR/bin/d2plugin-tala

$DSTDIR/bin/d2plugin-tala --version
