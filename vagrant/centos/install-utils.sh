#!/bin/bash

yum install -y -q git

yum install -y -q python3 python3-devel python3-pip

sudo alternatives --install /usr/bin/python python /usr/bin/python2 50
sudo alternatives --install /usr/bin/python python /usr/bin/python3 60

sudo ln -s /usr/bin/pip3 /usr/bin/pip
