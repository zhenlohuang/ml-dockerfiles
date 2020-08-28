#!/bin/bash

set -e
set -u
set -o pipefail

mkdir -p /notebooks
jupyter lab --ip 0.0.0.0 --allow-root --notebook-dir /notebooks
