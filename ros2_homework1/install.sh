#!/bin/bash
set -e
set -x

NTURT_DOCKER_DIR=$(dirname $(realpath $0))
INSTALL_DIR=/usr/local/bin

# install python modules
sudo pacman -Sy python-argcomplete \
		python-docker \
		python-prettytable \
		python-yaml

# install nturt_docker
if [[ -s ${INSTALL_DIR}/nturt_docker ]]; then
    sudo rm ${INSTALL_DIR}/nturt_docker
fi
sudo ln -s ${NTURT_DOCKER_DIR}/nturt_docker.py ${INSTALL_DIR}/nturt_docker

echo "Installation complete"
