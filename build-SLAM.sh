#!/bin/bash

if [ -d "./SLAM/build" ]; then
  rm -r ./SLAM/build
fi
mkdir ./SLAM/build && cd ./SLAM/build && cmake .. && make
exit 0

