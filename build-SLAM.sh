#!/bin/bash

BUILD_DIR=./SLAM/build
if [ -d "$BUILD_DIR" ]; then
  rm -r $BUILD_DIR
fi
mkdir $BUILD_DIR && cd $BUILD_DIR && cmake .. && make && cd ../..

if [ ! -L "run_slam" ]; then
	target_file="$BUILD_DIR/run_slam"
	ln -s $target_file
fi
echo "Symlink created: run_slam -> $target_file"

exit 0

