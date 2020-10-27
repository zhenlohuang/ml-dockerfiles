#!/bin/bash

set -e
set -u
set -o pipefail

# install libraries for python package on ubuntu
pip3 install \
 pylint==1.9.4 \
 six \
 numpy \
 pytest \
 cython \
 decorator \
 scipy \
 tornado \
 typed_ast \
 pytest \
 mypy \
 orderedset \
 antlr4-python3-runtime \
 attrs \
 requests \
 Pillow \
 packaging \
 matplotlib
