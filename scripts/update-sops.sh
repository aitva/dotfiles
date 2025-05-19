#!/bin/bash
set -e

INSTALLDIR="$HOME/.local/bin"

VERSION=$1
if [ -z $VERSION ]; then
    >&2 echo "usage: $0 VERSION"
    exit 1
fi

EXECUTABLE="sops-v${VERSION}.linux.amd64"
echo "downloading $EXECUTABLE..."
curl --location --silent \
	"https://github.com/getsops/sops/releases/download/v${VERSION}/${EXECUTABLE}" \
    -o $EXECUTABLE

CHECKSUM="sops-v${VERSION}.checksums.txt"
echo "downloading $CHECKSUM..."
curl --location --silent \
	"https://github.com/getsops/sops/releases/download/v${VERSION}/$CHECKSUM" \
	-o $CHECKSUM

echo "validating $EXECUTABLE..."
sha256sum -c "$CHECKSUM" --ignore-missing
rm $CHECKSUM

SOPS="$INSTALLDIR/sops"
echo "moving $EXECUTABLE to $SOPS..."
mv $EXECUTABLE $SOPS
chmod +x $SOPS

echo "checking $SOPS version..."
$SOPS --version --check-for-updates
