#!/bin/bash

git clone https://github.com/vselitsky/Fed-Size-Report-Tool.git
cd Fed-Size-Report-Tool/docker
sudo docker-compose up -d

cd ~
rm -rf Fed-Size-Report-Tool


