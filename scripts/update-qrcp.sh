#!/bin/bash

INSTALLDIR="$HOME/.bin"
BINARYPATH="$INSTALLDIR/qrcp"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

URL="https://github.com/claudiodangelis/qrcp/releases/download"
URL+="/${VERSION}/qrcp_${VERSION}_linux_x86_64.tar.gz"

curl --location --silent $URL -o qrcp.tgz
if [ -f $BINARYPATH ]; then
    rm $BINARYPATH
fi
tar -C $INSTALLDIR -xf qrcp.tgz qrcp

rm qrcp.tgz
$BINARYPATH version
