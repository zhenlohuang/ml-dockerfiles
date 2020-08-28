#!/bin/bash

set -e
set -u
set -o pipefail

# install python and pip
apt-get install -y software-properties-common
apt-get install -y python3-dev python3-setuptools

# Install pip
cd /tmp && wget -q https://bootstrap.pypa.io/get-pip.py && python3 get-pip.py

# Pin pip version
pip3 install pip==19.3.1