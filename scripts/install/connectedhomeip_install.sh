#!/bin/bash
echo "Installing connectedhomeip tools:";
cd /home/devuser/tools/esp-idf;
# git clone https://github.com/project-chip/connectedhomeip.git connectedhomeip;
# cd connectedhomeip;
# git fetch origin v1.1-branch;
# git checkout FETCH_HEAD;
# git submodule update --init --recursive;
source ./export.sh
cd ..

git clone --recursive https://github.com/espressif/esp-matter.git
cd esp-matter
./install.sh
cd /home/devuser