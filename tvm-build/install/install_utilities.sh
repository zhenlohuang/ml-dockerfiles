#!/bin/bash
set -e
set -u
set -o pipefail

apt-get update
apt-get install -y --no-install-recommends \
        vim \
        rsync