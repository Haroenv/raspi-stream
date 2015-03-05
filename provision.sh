#!/bin/bash

# Install dependencies
echo "Installing / Updating packages"
echo "	>>> packages: python-pip libffi-dev librtmp-dev gcc python-dev"
sudo apt-get install -y python-pip libffi-dev librtmp-dev gcc python-dev > /dev/null 2>&1

# Download the livestreamer pip package
sudo pip install livestreamer

# Install desktop-stream (hi-def)
pip install cffi
pip install python-librtmp

# Enter the stream folder
cd stream
chmod +x stream.sh
./stream.sh
