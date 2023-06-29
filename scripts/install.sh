#!/bin/bash

echo "Installing esp-idf tools:";
cd /home/devuser;
mkdir -p tools;
cd tools;
git clone --recursive https://github.com/espressif/esp-idf.git -b ea5e0ff esp-idf;
cd esp-idf;
git submodule update --init;
./install.sh;

echo " ----------------------------------- ";
echo "Installing connectedhomeip tools";
echo " ----------------------------------- ";

cd /home/devuser/tools;
git git clone --recurse-submodules git@github.com:project-chip/connectedhomeip.git connectedhomeip;
cd connectedhomeip;
# git fetch origin v1.0-branch;
# git checkout FETCH_HEAD;
git submodule update --init --recursive;
