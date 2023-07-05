#!/bin/bash

echo "Sourcing envs:";
python3 -m pip install esptool;
export IDF_PATH=/home/devuser/tools/esp-idf;
source /home/devuser/tools/connectedhomeip/scripts/bootstrap.sh;
source /home/devuser/tools/esp-idf/export.sh;