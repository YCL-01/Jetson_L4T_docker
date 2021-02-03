#!/bin/bash

apt-get update && apt-get install -y python3-pip vim git curl wget

pip3 install -U pip testresources setuptools==49.6.0 numpy==1.16.1 future==0.18.2 mock==3.0.5 h5py==2.10.0 keras_preprocessing==1.1.1 keras_applications==1.0.8 gast==0.2.2 futures protobuf pybind11

pip3 uninstall -y tensorflow

pip3 install --pre --extra-index-url https://developer.download.nvidia.com/compute/redist/jp/v45 tensorflow

pip3 install yolov4

mkdir /root/tensorflow_yolov4

cp -R /root/share/data /root/tensorflow_yolov4

