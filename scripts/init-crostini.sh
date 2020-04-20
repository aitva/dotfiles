#!/bin/bash
set -e

echo "generate SSH key..."
ssh-keygen -t ed25519

echo "add SSH key to Github..."
echo .ssh/id_ed25519.pub
read -p "press [enter] to continue"

echo "setup dotfiles..."
git init
git remote add origin git@github.com:aitva/dotfiles.git
git fetch
git checkout -f master

echo "install missing packages..."
sudo apt install tmux gcc xz-utils

echo "install Go compiler..."
echo -n "Go version: "
read version
sudo ./scripts/update-go-arm.sh $version

echo "install Node..."
echo -n "Node version: "
read version
sudo ./scripts/update-node-arm.sh $version
