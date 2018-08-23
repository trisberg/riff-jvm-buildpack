#!/usr/bin/env bash
set -e

docker pull packsdev/v3:run

docker build -t trisberg/packsv3mvn:detect -f Dockerfile.detect .
docker build -t trisberg/packsv3mvn:build -f Dockerfile.build .
docker tag packsdev/v3:run trisberg/packsv3mvn:run

echo ./pack build [IMAGENAME] --detect-image trisberg/packsv3mvn:detect
