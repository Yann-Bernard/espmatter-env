#!/bin/bash

echo "Installing connectedhomeip:";
cd /home/devuser;
mkdir -p tools;
cd tools;
git clone https://github.com/project-chip/connectedhomeip.git connectedhomeip;
cd connectedhomeip;
git fetch origin v1.1-branch;
git checkout FETCH_HEAD;
git submodule update --init --recursive;
# ./scripts/bootstrap.sh;
