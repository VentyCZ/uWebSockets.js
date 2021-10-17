#!/bin/bash

# Go to the source directory
cd /source

# Build!
export CPATH='/usr/include'
scl enable devtoolset-8 make
