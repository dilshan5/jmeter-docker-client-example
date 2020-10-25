#!/bin/bash
#
# Run JMeter Docker image with options

#this should be same as jmeter-docker tags in https://hub.docker.com/r/dilshan7fdo/jmeter-docker/tags OR
#if you use ./build.sh ;then use the same JMeter version
JMeter_version="5.3"

NAME="jmeter"
IMAGE="dilshan7fdo/jmeter-docker:${JMeter_version}"

# Finally run
sudo docker stop ${NAME} > /dev/null 2>&1
sudo docker rm ${NAME} > /dev/null 2>&1
sudo docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
