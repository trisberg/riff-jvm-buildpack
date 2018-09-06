#!/usr/bin/env bash
set -e

docker push projectriff/jvmfunv3:detect
docker push projectriff/jvmfunv3:build
docker push projectriff/jvmfunv3:run
