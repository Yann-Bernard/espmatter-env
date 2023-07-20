#!/bin/bash

echo "Installing esp-idf tools:";
cd /home/devuser;
mkdir -p tools;
cd tools;
git clone --recursive https://github.com/espressif/esp-idf.git -b v4.4.2 esp-idf;
cd esp-idf;
git submodule update --init;
./install.sh;