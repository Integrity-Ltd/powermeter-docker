#!/bin/bash
cd ~/powermeter-timed-service
npx ts-node src/index.ts>log.txt 2>error.log.txt  &
cd ~/powermeter-api
npx ts-node src/app.ts>log.txt 2>error.log.txt &
cd ~/powermeter-admin
npx react-scripts start