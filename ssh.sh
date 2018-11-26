#!/bin/bash

if [ "$1" != "" ]; then
    CONTAINER_ID=$1
    # t - pseudo tty
    # i - interactive
    docker exec -it ${CONTAINER_ID} bash
else
    echo "Please specify the container ID to SSH"
    echo "Run this command to get the contianer ID"
    echo "\"docker container ls -a\""
fi