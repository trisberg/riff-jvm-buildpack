#!/usr/bin/env bash
set -e

docker pull packsdev/v3:run

docker build -t projectriff/mvnfunv3:detect -f Dockerfile.detect .
docker build -t projectriff/mvnfunv3:build -f Dockerfile.build .

echo ./pack build [IMAGENAME] --detect-image projectriff/mvnfunv3:detect
