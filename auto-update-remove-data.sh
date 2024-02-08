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

echo "compose down"
docker compose -f docker-compose.dev.yml down

echo "Removing data inside RMS-db"
rm -rf ../RMS-db/data/*

echo "building docker compose"
docker compose -f docker-compose.dev.yml up -d --build

cd ~
pwd