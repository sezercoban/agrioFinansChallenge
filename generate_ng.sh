#!/bin/bash

export $(grep -v '^#' .env | xargs)
set -x

docker run --rm \
        -e LANGUAGE=yaver-client-ng13 \
        -e NPM_NAME=${NPM_NAME} \
        -e MODULE_PREFIX=${MODULE_PREFIX} \
        -e NPM_VERSION=0.0.1 \
        -v "${PWD}:/gen" \
        yaverdev/yaver-oas-codegen:${YAVER_VERSION}

docker run --rm \
        -v "${PWD}/out:/src" \
        yaverdev/yaver-client-packager:${YAVER_VERSION}-ng13
