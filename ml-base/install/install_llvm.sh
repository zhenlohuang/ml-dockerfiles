#!/bin/bash

set -e
set -u
set -o pipefail

cp /install/repos/llvm.list /etc/apt/sources.list.d/llvm.list
wget -q -O - http://apt.llvm.org/llvm-snapshot.gpg.key| apt-key add -

apt-get update
apt-get install -y llvm-4.0 llvm-6.0 llvm-9 llvm-8 llvm-7 clang-9 clang-8 clang-7
