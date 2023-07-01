#!/bin/bash

cd /home/devuser/tools;
git clone --recurse-submodules https://github.com/project-chip/connectedhomeip.git connectedhomeip;
cd connectedhomeip;
# git fetch origin v1.0-branch;
# git checkout FETCH_HEAD;
git submodule update --init --recursive;
# ./scripts/bootstrap.sh;
