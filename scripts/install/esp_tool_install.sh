#!/bin/bash

echo "Installing esp-idf tools:";
cd /home/devuser;
mkdir -p tools;
cd tools;
git clone -b v4.4.4 https://github.com/espressif/esp-idf.git esp-idf;
cd esp-idf;
git checkout ea5e0ff;
git submodule update --init --recursive;
./install.sh;