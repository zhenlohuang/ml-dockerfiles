#!/bin/bash
set -e
set -u
set -o pipefail

apt-get install -y --no-install-recommends \
        vim