#!/bin/bash

INSTALLDIR="/usr/local/caddy"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

if [ "$EUID" -ne 0 ]; then
    echo "this script should be run as root"
    exit 1
fi

URL="https://github.com/caddyserver/caddy/releases/download"
URL+="/v${VERSION}/caddy_${VERSION}_Linux_arm64.tar.gz"

curl --location --silent $URL -o caddy.tgz
if [ -d $INSTALLDIR ]; then
    rm -rf $INSTALLDIR
fi

mkdir $INSTALLDIR
tar -C $INSTALLDIR -xf caddy.tgz
rm caddy.tgz

$INSTALLDIR/caddy version
