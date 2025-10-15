#!/bin/bash

# convenience script for building the vm
# you will need to change the path to run this on your own system

# this should be the directory you cloned into, i.e. it should contain the directories
# docs, historical, legal, objects... etc
# the vm will be located at build/vm/Self after the build is finished
# the path below is just an example
cd ~/stuff/self/sdl-demo/

CC="gcc -std=c99 -m32 -D_XOPEN_SOURCE=500" CXX="g++ -m32" \
    cmake -B build . -G Unix\ Makefiles -DCMAKE_POLICY_VERSION_MINIMUM=3.5 &&
    cmake --build build -j 6
