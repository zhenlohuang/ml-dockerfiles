#!/bin/bash

set -e
set -u
set -o pipefail

apt-get install -y --no-install-recommends \
        git \
        make \
        libgtest-dev \
        cmake \
        wget \
        unzip \
        libtinfo-dev \
        libz-dev \
        libcurl4-openssl-dev\
        libopenblas-dev \
        g++ \
        sudo \
        apt-transport-https