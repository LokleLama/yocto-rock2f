#!/bin/bash

echo "############################################"
echo "#### Update and install required packages"
echo "############################################"
echo 

sudo apt-get update
sudo apt-get install -y \
     gawk wget git-core diffstat unzip texinfo gcc \
     build-essential chrpath socat cpio \
     python3 python3-pip python3-pexpect \
     python3-git python3-jinja2 python3.12-venv \
     xz-utils debianutils iputils-ping \
     libsdl1.2-dev xterm zstd lz4

echo "############################################"
echo "#### Update and install required packages"
echo "############################################"
echo 

python3 -m venv .venv
source .venv/bin/activate
pip3 install kas
kas --version

echo "############################################"
echo "#### Start the Build"
echo "############################################"
echo 

kas build kas.yml
