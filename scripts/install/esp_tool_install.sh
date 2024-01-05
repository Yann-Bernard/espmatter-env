#!/bin/bash

echo "Installing esp-idf tools:";
cd /home/devuser;
mkdir -p tools;
cd tools;
git clone --recursive https://github.com/espressif/esp-idf.git
cd esp-idf;
git checkout 6b1f40b9bf; 
git submodule update --init --recursive;
./install.sh;
cd /home/devuser;