#!/bin/bash

cd rms
pwd
cd RMS-scripts
pwd
./update.sh
echo "Updated all"
cd ..
pwd
cd RMS-compose
pwd
echo "building docker compose"
docker compose -f docker-compose.dev.yml up -d --build
cd ~
pwd
