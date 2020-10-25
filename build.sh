#!/bin/bash

########## Update the docker arguments #########################
JMETER_VERSION="5.3"
JMETER_PLUGINS="jpgc-ffw=2.0"
TZ="Europe/Amsterdam"
################################################################

IMAGE_NAME="dilshan7fdo/jmeter-docker:"
BUILD_CONTEXT="https://github.com/dilshan5/jmeter-docker-client.git"

# Build docker image
docker build  \
--build-arg JMETER_PLUGINS=${JMETER_PLUGINS} \
--build-arg TZ=${TZ} \
-t ${IMAGE_NAME}${JMETER_VERSION} \
${BUILD_CONTEXT}