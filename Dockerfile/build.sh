#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail

docker build -t mesosdockerized/mesos-slave:1.1.0 .
