#!/bin/bash

set -e
set -u
set -o pipefail

# Install apt repo
rm /etc/apt/sources.list.d/*.list

sed -i 's/archive.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list
sed -i 's/security.ubuntu.com/mirrors.aliyun.com/g' /etc/apt/sources.list

# Install pip repo
mkdir -p ~/.config/pip
echo "
[global]
index-url = http://mirrors.aliyun.com/pypi/simple/
trusted-host = mirrors.aliyun.com
" >> ~/.config/pip/pip.conf
