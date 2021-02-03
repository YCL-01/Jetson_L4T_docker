#!/bin/bash

cd ~

apt-get update

apt-get install -y pkg-config libopencv* python-opencv python3-opencv git wget curl

git clone https://github.com/AlexeyAB/darknet.git

cp share/Makefile darknet/

cp share/*.weights darknet/

cd darknet
make

