#!/bin/bash
echo "Installing connectedhomeip tools:";
cd /home/devuser/tools/esp-idf;
source ./export.sh
cd ..

git clone --recursive https://github.com/espressif/esp-matter.git
cd esp-matter
./install.sh
cd /home/devuser