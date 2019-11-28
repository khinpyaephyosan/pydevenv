#!/bin/bash

yum install epel-release -y
yum install python python-pip -y 
pip install --upgrade pip

if ! command -v docker > /dev/null; then
    yum install -y yum-utils device-mapper-persistent-data lvm2 vim wget
    yum-config-manager --add-repo https://download.docker.com/linux/centos/docker-ce.repo
    yum install docker-ce -y
    pip install docker-compose 
fi

if command -v docker > /dev/null; then
    usermod -aG docker $(whoami)
    systemctl enable docker.service
    systemctl start docker.service

    docker pull python:2
    docker pull python:3

    echo "docker container run -it --rm --name my-python -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:2" > /opt/runme_py2.sh
    echo "docker container run -it --rm --name my-python -v "$PWD":/usr/src/myapp -w /usr/src/myapp python:3" > /opt/runme_py3.sh
fi

if ! command -v python3 > /dev/null; then
    echo "start to install python3"
    yum install python3 python3-pip -y 
fi

if command -v python3; then
    python3 -m venv /opt/py3venv
fi

if command -v python2; then
    sudo pip2.7 install virtualenv 
    virtualenv --python=/usr/bin/python2.7 /opt/py2env
fi













