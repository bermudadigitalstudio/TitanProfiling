#!/usr/bin/env bash

set -exo pipefail

docker build -t swift-test -f Dockerfile ./
docker run -itP swift-test 
