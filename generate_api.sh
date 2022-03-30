#!/bin/bash

export $(grep -v '^#' .env | xargs)
set -x

docker run --rm \
  -e LANGUAGE=yaver-api-dotnet6 \
  -e PACKAGE_NAME=${API_NAME} \
  -e PACKAGE_VERSION=0.0.1 \
  -v "${PWD}:/gen" \
  yaverdev/yaver-oas-codegen:${YAVER_VERSION}

docker run --rm \
  -v "${PWD}/out:/src" \
  yaverdev/yaver-api-packager:${YAVER_VERSION}-dotnet6
