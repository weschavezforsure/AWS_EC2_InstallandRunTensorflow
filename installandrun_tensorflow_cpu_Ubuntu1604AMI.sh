#!/bin/bash

mkdir tensorflow
mkdir tensorflow/models

git clone https://github.com/tensorflow/models.git tensorflow/models

sudo apt-get update
sudo apt-get install python-pip python-virtualenv
virtualenv --system-site-packages tensorflow/
source ~/tensorflow/bin/activate
pip install --upgrade pip
pip install --upgrade tensorflow

python tensorflow/models/tutorials/image/cifar10/cifar10_train.py

