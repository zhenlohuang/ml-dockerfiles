#!/bin/bash

set -e
set -u
set -o pipefail

service ssh start
service ssh status

/scripts/start-jupyterlab.sh