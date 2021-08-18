#!/bin/bash

INSTALLDIR="/usr/local"
GOROOT="$INSTALLDIR/go"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi
#URL="https://dl.google.com/go/go$VERSION.linux-arm64.tar.gz"
URL="https://golang.org/dl/go$VERSION.linux-arm64.tar.gz"

if [ "$EUID" -ne 0 ]; then
    echo "this script should be run as root"
    exit 1
fi

curl --location $URL -o go.tgz
if [ -d $GOROOT ]; then
    rm -rf $GOROOT
fi
tar -C $INSTALLDIR -xf go.tgz

rm go.tgz
$GOROOT/bin/go version
