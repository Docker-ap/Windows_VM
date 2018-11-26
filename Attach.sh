#!/bin/bash

if [ "$1" != "" ]; then
    CONTAINER_ID=$1
    # a - attach
    # i - interactive
    docker start -ai ${CONTAINER_ID}
else
    echo "Please specify the container ID to attach"
    echo "Run this command to get the contianer ID"
    echo "\"docker container ls -a\""
fi
