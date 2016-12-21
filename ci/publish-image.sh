#!/bin/bash

######################################
# Publish the seafile server image (e.g. seafileorg/server:6.0.7) to docker
# registry. This script should only be called during a travis build trigger by a tag.
######################################

set -o pipefail
set -e -x

## Always use the base image we build manually to reduce the download size of the end user.
docker pull seafileorg/base:16.04

(
    cd image
    make server push-server
)