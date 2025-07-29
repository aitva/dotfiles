#!/bin/bash
INSTALLDIR="/usr/local/bin"
TMPFILE=`mktemp`
DSTFILE="$INSTALLDIR/restic"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

if [ "$EUID" -ne 0 ]; then
    echo "this script should be run as root"
    exit 1
fi


curl --location --silent "https://github.com/restic/restic/releases/download/v${VERSION}/restic_${VERSION}_linux_amd64.bz2" -o $TMPFILE
bzip2 --stdout --decompress $TMPFILE > $DSTFILE
chmod +x $DSTFILE
rm $TMPFILE
$DSTFILE version
