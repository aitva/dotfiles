#!/bin/bash

INSTALLDIR="$HOME/.bin"
BINARYPATH="$INSTALLDIR/caddy"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

URL="https://github.com/caddyserver/caddy/releases/download"
URL+="/v${VERSION}/caddy_${VERSION}_linux_amd64.tar.gz"

curl --location --silent $URL -o caddy.tgz
if [ -f $BINARYPATH ]; then
    rm $BINARYPATH
fi
tar -C $INSTALLDIR -xf caddy.tgz caddy

rm caddy.tgz
$BINARYPATH version
