#!/bin/bash

INSTALLDIR="/usr/local"
NODEROOT="$INSTALLDIR/node"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

if [ "$EUID" -ne 0 ]; then
    echo "this script should be run as root"
    exit 1
fi

curl --location --silent \
    "https://nodejs.org/dist/v${VERSION}/node-v${VERSION}-linux-x64.tar.xz" \
    -o node.tgz
if [ -d $NODEROOT ]; then
    rm -rf $NODEROOT
fi
tar -C $INSTALLDIR -xf node.tgz
mv $INSTALLDIR/node* $NODEROOT

rm node.tgz
echo "node version" `$NODEROOT/bin/node --version`
