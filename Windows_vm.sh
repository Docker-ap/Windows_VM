#!/bin/bash
#set -x
#set -e

HOSTNAME=my_windows_vm

Windows_PATH="//C/Users/panchatcharama/Documents/Windows_vm"

#                 username     /image    :TAG
windows_VM_IMAGE=dockertchchen/windows_vm:latest

# -v Host_dir:Target_dir - bind Mounts

# source repos
ARGS="-v //C/Users/panchatcharama/source/repos/:/home/panchatcharama"

# Bashrc
ARGS="${ARGS} -v ${Windows_PATH}/.bashrc:/home/panchatcharama/.bashrc"

# SSH config
ARGS="${ARGS} -v ${Windows_PATH}/.ssh/:/home/panchatcharama/.ssh"

# Gitconfig
ARGS="${ARGS} -v ${Windows_PATH}/.gitconfig:/home/panchatcharama/.gitconfig"

# Toolchains
ARGS="${ARGS} -v ${Windows_PATH}/Toolchains/:/opt/toolchains"

# Set hostname
ARGS="${ARGS} --hostname ${HOSTNAME}"

#echo $ARGS

# i -interactive
# t --tyy Allocate a pseudo-TTY
# rm -- Automatically remove the container when it exits
# -d - detach
docker run -it -d ${ARGS} ${windows_VM_IMAGE}