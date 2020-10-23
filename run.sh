#!/bin/bash
#
# Run JMeter Docker image with options

NAME="jmeter"
JMeter_version="latest"
IMAGE="dilshan7fdo/jmeter-docker:${JMeter_version}"

# Finally run
sudo docker stop ${NAME} > /dev/null 2>&1
sudo docker rm ${NAME} > /dev/null 2>&1
sudo docker run --name ${NAME} -i -v ${PWD}:${PWD} -w ${PWD} ${IMAGE} $@
