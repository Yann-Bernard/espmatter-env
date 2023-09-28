#!/bin/bash

echo "Sourcing envs:";
cd /home/devuser/tools/esp-idf; 
source ./export.sh; 
cd /home/devuser/tools
cd esp-matter; 
source ./export.sh; 
cd /home/devuser/;